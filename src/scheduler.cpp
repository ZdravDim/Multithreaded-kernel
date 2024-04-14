#include "../h/scheduler.hpp"

ThreadList* Scheduler::ready_threads = nullptr;

void Scheduler::put(TCB *thread) {
    ready_threads -> push_back(nullptr);
}

TCB* Scheduler::get() {
    return nullptr;
}

void Scheduler::initialize() {
    ready_threads = new ThreadList();
}

void *Scheduler::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void Scheduler::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
