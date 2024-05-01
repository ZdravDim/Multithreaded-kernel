#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"

void testMemoryAllocator() {
    MemoryAllocator::print();
    void *address = MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    int s1 = MemoryAllocator::mem_free(address);
    MemoryAllocator::print();

    int s2 = MemoryAllocator::mem_free(address);
    MemoryAllocator::print();

    if (s1 == 0) __putc('1');
    if (s2 == -3) __putc('2');
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
    putc('1');
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_supervisor_trap);
    putc('2');
    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    putc('3');
    /// Initialize Memory Allocator
//    MemoryAllocator::initialize();
    putc('4');
    /// Test Memory Allocation
//    testMemoryAllocator();
//    testMemory();
    /// Test Threads
//    testThreads();
    /// Test Everything
//    userMain();
    return 0;
}