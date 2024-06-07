#include "../h/memory_allocator.hpp"
#include "../h/console.hpp"

void printNumber(uint64 num);

typedef MemoryAllocator::MemSeg MemSeg;

MemoryAllocator* MemoryAllocator::instance = nullptr;
MemSeg* MemoryAllocator::freeSegHead = nullptr;
MemSeg* MemoryAllocator::usedSegHead = nullptr;

/// initialize free memory segment
void MemoryAllocator::initialize() {
    if (!instance) {
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
        freeSegHead -> prev = nullptr;
        freeSegHead -> next = nullptr;
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
}

/// allocate `size` blocks
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
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
        else {
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
            newFree -> prev = tmp -> prev;
            newFree -> next = tmp -> next;
            newFree -> size = remaining;
            removeNode(tmp, newFree, true, true);
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
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
    removeNode(segToFree, segToFree -> next, false, false);
    /// update free memory list
    /// increase size (used segment size = free segment size - header size)
    segToFree -> size += sizeof(MemSeg);
    /// empty list case
    if (!freeSegHead) {
        freeSegHead = segToFree;
        segToFree -> prev = segToFree -> next = nullptr;
    }
    /// freed segment shold be places first
    else if ((char*) addr < (char*) freeSegHead) {
        segToFree -> prev = nullptr;
        segToFree -> next = freeSegHead;
        freeSegHead -> prev = segToFree;
        freeSegHead = segToFree;
        tryToJoin(segToFree);
    }
    /// iterate list to find where to insert (after tmp)
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

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}

void MemoryAllocator::print() {
//    putc('\n');
//    putc('M');
//    putc(':');
//    putc(' ');
//    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
//        printNumber(tmp -> size);
//        putc(' ');
//        putc('f');
//    }
//    putc('\t');
//    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
//        printNumber(tmp -> size);
//        putc(' ');
//        putc('u');
//    }
}

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
}
