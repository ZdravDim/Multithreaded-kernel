#ifndef define_scheduler
#define define_scheduler

#include "../lib/hw.h"

class TCB;

class Scheduler {

    friend class RiscV;

public:
    static void put(TCB* thread);
    static TCB* get();
    static int put_to_sleep(time_t time);
    static int remove_from_sleep(TCB* thread);

    Scheduler(Scheduler &) = delete;
    Scheduler() = delete;

private:
    static void change_thread();
    static TCB* head_ready, *tail_ready;
    static TCB* head_sleeping;
};

#endif
