#ifndef semaphore
#define semaphore

#include "../lib/hw.h"
#include "thread_list.hpp"
#include "scheduler.hpp"

class Sem {
public:
    static int open(Sem **handle, unsigned init = 1);
    void close();
    virtual ~Sem ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
    void block();
    void unblock();

private:
    explicit Sem(unsigned init = 1) : value((int) init), closed(false) {}
    ThreadList blocked_threads;
    int value;
    bool closed;
};

#endif
