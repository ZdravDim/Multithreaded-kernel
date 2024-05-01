#ifndef semaphore
#define semaphore

#include "../lib/hw.h"
#include "../h/thread_list.hpp"
#include "../h/scheduler.hpp"

class Sem {
public:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    virtual ~Sem ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
    void block();
    void unblock();

private:
    ThreadList blocked_threads;
    int value;
    bool closed;
};

#endif
