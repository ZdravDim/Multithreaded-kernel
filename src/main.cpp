#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"

/// helper function
void printNumber(uint64 num) {
    putc('\n');
    putc('N');
    putc(':');
    putc(' ');
    if (!num) putc('0');
    uint64 num2 = 0, zero_count = 0;
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    }
    while (num2) {
        putc(num2 % 10 + '0');
        num2 /= 10;
    }
    while (zero_count--) putc('0');
}
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
void userMainWrapper(void *args) {
    userMain();
}

class PeriodicWorker : public PeriodicThread {
public:
    int value = 10;

    explicit PeriodicWorker() : PeriodicThread(4) {}

    void periodicActivation() override {
        printNumber(value--);
        if (value < 0) terminate();
    }
};

[[noreturn]] void tester(void*) {
    while (true) {
        char c1 = getc();
        char c2 = getc();
        char c3 = getc();
        putc(c1);
        putc(c2);
        putc(c3);
    }
}

int main() {
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);

    /// Initialization
    MemoryAllocator::initialize();
    Con::initialize();

    thread_t threads[3];

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);

    /// Test Periodic Thread
//    Thread *periodic = new PeriodicWorker();
//    periodic -> start();
//    thread_create(&threads[2], tester, nullptr);
    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    while (true) thread_dispatch();

    return 0;
}