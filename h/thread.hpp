#ifndef c_thread
#define c_thread

#include "../lib/hw.h"
#include "../h/memory_allocator.hpp"

[[noreturn]] void kernelConsoleOutput(void *args);

class TCB;
typedef TCB* thread_t;

class TCB {

    friend class RiscV;

public:
    struct Context {
        uint64 ra;
        uint64 sp;
    };

    enum Status { RUNNABLE, SLEEPING, BLOCKED, FINISHED };

    static int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address);
    static void wrapper_function();
    static void thread_exit();
    static void dispatch();
    static void yield(TCB* old_running, TCB* new_running);
    static void context_switch(Context* old_context, Context* new_context);

    void* operator new(size_t size);
    void operator delete(void* addr);
    void* operator new[](size_t size);
    void operator delete[](void *ptr);

    bool is_finished() const;

    void set_status(Status status);
    time_t get_time_to_sleep() const;
    void set_time_to_sleep(time_t time);
    TCB* get_next_ready() const;
    void set_next_ready(TCB* next);
    TCB* get_next_sleeping() const;
    void set_next_sleeping(TCB* next);

    static TCB* running; /// running thread

private:
    TCB(void (*function_body)(void*), void *arg, void *stack);

    static int cnt; /// global thread counter
    int id; /// thread identification
    Context context; /// current thread context
    Status status; /// thread status
    void (*function_body)(void*); /// thread function to execute
    void* arg; /// function arguments
    void* stack; /// thread stack
    static time_t time_slice_counter; /// time spent on currently running thread
    time_t time_slice; /// time given for executing
    TCB* next_ready; /// Scheduler ready list
    time_t time_to_sleep; /// not actual time, but time to sleep when this TCB becomes first in the list
    TCB* next_sleeping; /// Scheduler sleeping list
};

#endif
