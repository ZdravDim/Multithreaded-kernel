#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    Sem::open(&item_available, 0);
    Sem::open(&space_available, CAPACITY);
}

BoundedBuffer::~BoundedBuffer() {
    Sem::close(item_available);
    Sem::close(space_available);
}

void *BoundedBuffer::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void BoundedBuffer::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

void BoundedBuffer::putc(char c) {
    Sem::wait(space_available);
    array[tail] = c;
    tail = (tail + 1) % capacity;
    Sem::signal(item_available);
}

char BoundedBuffer::getc() {
    Sem::wait(item_available);
    char c = array[head];
    head = (head + 1) % capacity;
    Sem::signal(space_available);
    return c;
}
