#ifndef semaphore
#define semaphore

#include "../lib/hw.h"
#include "thread_list.hpp"
#include "scheduler.hpp"

void printNumber(uint64 num);

class Sem {
public:
    static int open(Sem **handle, unsigned init = 1);
    static int close(Sem* handle);

    static int wait (Sem *handle);
    static int signal (Sem *handle);
    static int timedWait (Sem *handle, time_t);
    static int tryWait(Sem *handle);

    void block();
    void unblock();

    void* operator new(size_t size);
    void operator delete(void* addr);

    virtual ~Sem ();

private:
    explicit Sem(unsigned init = 1) : value((int) init) {}
    ThreadList blocked_threads;
    int value;
};

#endif
