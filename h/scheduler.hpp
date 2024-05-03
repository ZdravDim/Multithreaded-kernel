#ifndef scheduler
#define scheduler

#include "tcb.hpp"
#include "thread_list.hpp"

class Scheduler {
public:
    static void put(TCB* thread);
    static void put_to_sleep(TCB* thread, time_t time);
    static TCB* get();

    Scheduler(Scheduler &) = delete;
    Scheduler() = delete;

private:

    static TCB* head_ready, *tail_ready;
    static TCB* head_sleeping;
};

#endif
