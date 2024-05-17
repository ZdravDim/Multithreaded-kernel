#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

/// helper function
void printNumber(uint64 num) {
    __putc('\n');
    __putc('N');
    __putc(':');
    __putc(' ');
    if (!num) __putc('0');
    uint64 num2 = 0, zero_count = 0;
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    }
    while (num2) {
        __putc(num2 % 10 + '0');
        num2 /= 10;
    }
    while (zero_count--) __putc('0');
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

int main() {
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    /// Initialization
    MemoryAllocator::initialize();
    Con::initialize();

    thread_t threads[4];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr);

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    while (true) thread_dispatch();

    return 0;
}