#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"

/// Singleton class for memory allocation
class MemoryAllocator {
public:
    struct MemSeg {
        size_t size;
        MemSeg* prev;
        MemSeg* next;
    };

    static MemoryAllocator* getInstance();
    MemoryAllocator(const MemoryAllocator& obj) = delete;
    void operator=(const MemoryAllocator &) = delete;

    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static void print();
private:
    MemoryAllocator() {}
    static void removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated);
    static void tryToJoin(MemSeg *seg);
    static MemoryAllocator* instance;
    static MemSeg* freeSegHead;
    static MemSeg* usedSegHead;
};

#endif
