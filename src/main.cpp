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
    uint64 num2 = 0;
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        num /= 10;
    }
    while (num2) {
        __putc(num2 % 10 + '0');
        num2 /= 10;
    }
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
void testMemory() {
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
    auto* t1 = new Thread(workerA, nullptr);
    t1 -> start();

    thread_t t2;
    thread_create(&t2, workerA, nullptr);
}
void userMain();

int main() {
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    uint64 volatile num = RiscV::read_stvec();
    printNumber(num);
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    /// Test Memory Allocation
    testMemoryAllocator();
    testMemory();
    /// Test Threads
//    testThreads();
    /// Test Everything
//    userMain();
    return 0;
}