#ifndef define_bounded_buffer
#define define_bounded_buffer

#include "../lib/hw.h"
#include "memory_allocator.hpp"
#include "semaphore.hpp"
#include "syscall_c.hpp"

#define CAPACITY 500

class BoundedBuffer {
public:
    explicit BoundedBuffer();
    ~BoundedBuffer();

    void putc(char c);
    char getc();

    void* operator new (size_t size);
    void operator delete(void* addr);

private:
    int head = 0;
    int tail = 0;
    sem_t space_available;
    sem_t item_available;
    char array[CAPACITY];
};

#endif
