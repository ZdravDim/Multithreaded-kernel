#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"
#include "../lib/console.h"

/// Singleton class for memory allocation
class MemoryAllocator {
public:
    struct MemSeg {
        size_t size;
        MemSeg* prev;
        MemSeg* next;
    };

    static void initialize();
    MemoryAllocator(const MemoryAllocator& obj) = delete;
    void operator=(const MemoryAllocator &) = delete;

    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static int get_number_of_blocks(size_t size);
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
