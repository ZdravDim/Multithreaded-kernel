#ifndef memoryAllocator
#define memoryAllocator

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

private:
    MemoryAllocator() {}
    static void tryToJoin(MemSeg *seg);
    static MemoryAllocator* instance;
    static MemSeg* freeSegHead = nullptr;
    static MemSeg* usedSegHead = nullptr;
};

#endif
