#ifndef scheduler
#define scheduler

#include "tcb.hpp"
#include "thread_list.hpp"
#include "memory_allocator.hpp"

class Scheduler {
public:
    static void initialize();
    static void put(TCB* thread);
    static TCB* get();

    void* operator new(size_t size);
    void operator delete(void* addr);

private:
    Scheduler() = default;
    Scheduler(Scheduler &) = delete;

    static ThreadList* ready_threads;
};

#endif
