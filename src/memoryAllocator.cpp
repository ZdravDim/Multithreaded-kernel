#include "../h/memoryAllocator.hpp"
#include "../lib/hw.h"

MemoryAllocator* MemoryAllocator::instance = nullptr;

/// initialize free memory segment
MemoryAllocator *MemoryAllocator::getInstance() {
    if (!instance) {
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
        freeSegHead -> prev = nullptr;
        freeSegHead -> next = nullptr;
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc((sizeof(MemoryAllocator) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
        return instance;
    }
    return instance;
}

/// helper function for removing element from linked list
void removeNode(MemSeg *toRemove, MemSeg *nextSeg, size_t newIsCreated) {
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
}

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    if (size <= 0) return nullptr;
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    MemSeg *tmp = freeSegHead;
    while (tmp) {
        if (tmp -> size < bytesToAllocate) {
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, 0);
        else {
            MemSeg* newSegment = (MemSeg*) ((char*) tmp + bytesToAllocate);
            newSegment -> prev = tmp -> prev;
            newSegment -> next = tmp -> next;
            newSegment -> size = remaining;
            removeNode(tmp, newSegment, 1);
        }

        /// update taken memory list
        tmp = nullptr;

    }
    return nullptr;
}

int MemoryAllocator::mem_free(void *addr) {
    return 0;
}
