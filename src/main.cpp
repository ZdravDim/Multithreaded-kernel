#include "../lib/console.h"
#include "../h/memory_allocator.hpp"

extern "C" void interrupt_routine();

int main() {
    /// set interrupt routine handler
    __asm__ volatile("csrw stvec, %0": : "r"(&interrupt_routine));

    __putc('?');
    __putc('\n');
    MemoryAllocator::getInstance();
    MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    MemoryAllocator::print();
    return 0;
}