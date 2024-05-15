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
    }
}

void userMain();
void userMainWrapper(void *args) {
    userMain();
}

void workerA(void*) {
    for (int i = 0; i < 4; ++i) {
        printNumber(i);
        __putc('(');
        __putc('A');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
        }
    }
}

void workerB(void*) {
    for (int i = 0; i < 16; ++i) {
        printNumber(i);
        __putc('(');
        __putc('B');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
        }
    }
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