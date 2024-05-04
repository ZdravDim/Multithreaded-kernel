#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"

extern "C" void printNumber(uint64 num) {
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

void testMemoryAllocator() {
    MemoryAllocator::print();
    void *address = MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    int s1 = MemoryAllocator::mem_free(address);
    MemoryAllocator::print();

    int s2 = MemoryAllocator::mem_free(address);
    MemoryAllocator::print();

    __putc('\n');
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    if (s2 == -3) __putc('G'); /// same
}
void testMemoryC() {
    MemoryAllocator::print();
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    for (int i = 0; i < 10; ++i) __putc('A');
}
void workerB(void *args) {
    for (int i = 0; i < 10; ++i) __putc('B');
}
void testThreads() {
    static thread_t threads[3];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1], workerA, nullptr);
    thread_create(&threads[2], workerB, nullptr);

    while (!threads[1] -> is_finished() || !threads[2] -> is_finished()) thread_dispatch();
}

void userMain();
void initialize() {
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
}
void test() {
    /// Test Memory Allocation
    testMemoryAllocator();
    testMemoryC();
    /// Test Threads
    testThreads();
    /// Test Everything
//    userMain();
}


int main() {
    initialize();
    test();
    __putc('\n');
    return 0;
}