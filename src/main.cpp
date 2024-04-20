#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

void testMemoryAllocator() {
    MemoryAllocator::print();
    void *addr = MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    int s1 = MemoryAllocator::mem_free(addr);
    MemoryAllocator::print();

    int s2 = MemoryAllocator::mem_free(addr);
    MemoryAllocator::print();

    if (s1 == 0) __putc('1');
    if (s2 == -3) __putc('2');
}

void userMain();

int main() {
    /// set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_supervisor_trap);
    /// ???
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// initialize Memory Allocator
    MemoryAllocator::initialize();
    /// Test Memory Allocation
//    testMemoryAllocator();
    /// Test everything
//    userMain();
    return 0;
}