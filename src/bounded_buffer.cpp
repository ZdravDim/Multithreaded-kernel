#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    Sem::open(&item_available, 0);
    Sem::open(&space_available, CAPACITY);
}

BoundedBuffer::~BoundedBuffer() {
    item_available -> close();
    space_available -> close();
}

void *BoundedBuffer::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void BoundedBuffer::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

void BoundedBuffer::putc(char c) {
    space_available -> wait();
    array[tail] = c;
    tail = (tail + 1) % capacity;
    item_available -> signal();
}

char BoundedBuffer::getc() {
    item_available -> wait();
    char c = array[head];
    head = (head + 1) % capacity;
    space_available -> signal();
    return c;
}
