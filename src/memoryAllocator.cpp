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
void removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
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
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
        else {
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
            newFree -> prev = tmp -> prev;
            newFree -> next = tmp -> next;
            newFree -> size = remaining;
            removeNode(tmp, newFree, true);
        }

        /// update used memory list
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next)); tmp2 = tmp2 -> next);
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
        newUsed -> prev = tmp2;
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
        if (tmp2) tmp2 -> next = newUsed;
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
        return (void*) ((char*)tmp + sizeof(MemSeg));
    }
    return nullptr;
}

int MemoryAllocator::mem_free(void *addr) {
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    if (!usedSegHead) return -2;
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    /// update used memory list
    bool found = false;
    MemSeg* segToFree = (MemSeg*) addr;
    /// check if addr points to valid used address
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
        if (tmp == segToFree) {
            found = true;
            break;
        }
    if (!found) return -3;
    removeNode(segToFree, segToFree -> next, false);
    /// update free memory list
    if (!freeSegHead) {
        freeSegHead = segToFree;
        segToFree -> prev = segToFree -> next = nullptr;
    }
    else if ((char*) addr < (char*) freeSegHead) {
        segToFree -> prev = nullptr;
        segToFree -> next = freeSegHead;
        freeSegHead -> prev = segToFree;
        freeSegHead = segToFree;
        tryToJoin(segToFree);
    }
    else {
        MemSeg *tmp;
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
        segToFree -> prev = tmp;
        segToFree -> next = tmp -> next;
        tmp -> next = segToFree;
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
        tryToJoin(segToFree);
        tryToJoin(tmp);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(MemoryAllocator::MemSeg *seg) {
    if (seg -> next && (char*) seg + sizeof(MemSeg) + seg -> size == (char*) seg -> next) {
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
