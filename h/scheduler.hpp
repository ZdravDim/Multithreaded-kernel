#ifndef scheduler
#define scheduler

#include "thread.hpp"
#include "thread_list.hpp"

class Scheduler {

    friend class RiscV;

public:
    static void put(TCB* thread);
    static TCB* get();
    static int put_to_sleep(time_t time);

    Scheduler(Scheduler &) = delete;
    Scheduler() = delete;

private:
    static void change_thread();
    static TCB* head_ready, *tail_ready;
    static TCB* head_sleeping;
};

#endif
