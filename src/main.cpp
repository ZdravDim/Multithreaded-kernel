#include "../lib/console.h"
#include "../h/memoryAllocator.h"

int main() {
    __putc('?');
    __putc('\n');
    MemoryAllocator::getInstance();
    MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    MemoryAllocator::mem_free((void*)(1 * MEM_BLOCK_SIZE + sizeof(MemoryAllocator::MemSeg) + (char*)HEAP_START_ADDR));
    MemoryAllocator::print();
    return 0;
}