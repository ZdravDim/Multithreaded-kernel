#include "../h/semaphore.hpp"

Sem::~Sem() {
    blocked_threads.free();
}

int Sem::wait() {
    if (closed) return -1;
    if (--value < 0) {
        block();
        if (closed) return -2; /// thread released because Semaphore is closed
    }
    return 0;
}

int Sem::signal() {
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    TCB* old = TCB::running;
    blocked_threads.push_back(old);
    TCB::running = Scheduler::get();
    TCB::yield(old, TCB::running);
}

void Sem::unblock() {
    TCB* thread = blocked_threads.get_first();
    Scheduler::put(thread);
}

int Sem::timedWait(time_t time) {
    return 0;
}

int Sem::tryWait() {
    return 0;
}
