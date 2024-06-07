#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            char c = Con::getc_output();
            *(char *) CONSOLE_TX_DATA = c;
        }
        /// if there isn't ready data, dispatch in order not to occupy CPU for the DEFAULT_TIME_SLICE
        thread_dispatch();
    }
}

void userMain();
void userWrapper(void *args) {
    userMain();
}

sem_t sem;

void worker(void*) {
    int i = 3;
    while (i > 0) {
        int id = get_thread_id();
        int status = sem_timedwait(sem, id);
        if (status == 0) {
            printString("\nUSAO ");
            printInt(id);
            time_sleep(id);
            printString("\nIZASAO ");
            printInt(id);
            sem_signal(sem);
            --i;
        }
        else if (status == -2) {
            printString("\nCEKAO ");
            printInt(id);
        }
        thread_dispatch();
    }
}

thread_t threads[12];

int main() {
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);

    /// Initialization
    MemoryAllocator::initialize();
    Con::initialize();

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);

    sem_open(&sem, 1);
    for (int i = 2; i < 5; ++i) thread_create(&threads[i], worker, nullptr);

    while (true) thread_dispatch();

    return 0;
}