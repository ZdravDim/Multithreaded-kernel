#ifndef scheduler
#define scheduler

#include "../h/tcb.hpp"

class Scheduler {
public:
    static void initialize();
    static void put(TCB* thread);
    static TCB* get();
    static bool isEmpty();

private:
    Scheduler() = default;
    Scheduler(Scheduler &) = delete;
};

#endif
