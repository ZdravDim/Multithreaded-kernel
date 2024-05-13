#include "../h/semaphore.hpp"

int Sem::open(Sem **handle, unsigned int init) {
    *handle = new Sem(init);
    if (!(*handle)) return -1;
    return 0;
}

int Sem::close(Sem *handle) {
    if (!handle) return -1;
    while (handle -> blocked_threads . get_first()) handle -> unblock();
    delete handle;
    return 0;
}

void Sem::block() {
    TCB* old = TCB::running;
    old -> set_status(TCB::BLOCKED);
    blocked_threads.push_back(old);
    TCB::running = Scheduler::get();
    TCB::yield(old, TCB::running);
}

void Sem::unblock() {
    TCB* thread = blocked_threads.remove_first();
    thread -> set_status(TCB::RUNNABLE);
    Scheduler::put(thread);
}

int Sem::wait(Sem *handle) {
    if (!handle) return -1;
    if (--handle -> value < 0) {
        handle -> block();
        if (!handle) return -2; /// thread released because Semaphore is closed
    }
    return 0;
}

int Sem::signal(Sem *handle) {
    if (!handle) return -1;
    if (++handle -> value <= 0) handle -> unblock();
    return 0;
}

int Sem::timedWait(Sem *handle, time_t) {
    return 0;
}

int Sem::tryWait(Sem *handle) {
    if (handle -> value > 0) return wait(handle);
    return 1;
}

Sem::~Sem() {
    blocked_threads.free();
}

void *Sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void Sem::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
