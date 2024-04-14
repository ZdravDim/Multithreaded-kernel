#ifndef scheduler
#define scheduler

#include "tcb.hpp"
#include "thread_list.hpp"
#include "memory_allocator.hpp"

class Scheduler {
public:
    static void put(TCB* thread);
    static void put_to_sleep(TCB* thread, time_t time);
    static TCB* get();

    void* operator new(size_t size);
    void operator delete(void* addr);

private:
    Scheduler() = default;
    Scheduler(Scheduler &) = delete;

    static TCB* head_ready, *tail_ready;
    static TCB* head_sleeping;
};

#endif
