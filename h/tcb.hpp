#ifndef c_thread
#define c_thread

#include "../lib/hw.h"

//typedef void (*void_function)(void*);

class TCB;
typedef TCB* thread_t;

struct Context {
    uint64 ra;
    uint64 sp;
};

class TCB {
public:
    TCB(void (*function_body)(void*), void *arg, void *stack_space, Context context);
    static int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space);
    static void wrapper_function();
    static void thread_exit();
    static void dispatch();
    static void yield(TCB* old_running, TCB* new_running);
    static void context_switch(Context* old_context, Context* new_context); // link to context_switch.S

private:
    enum Status { RUNNABLE, SLEEPING, BLOCKED, JOINED, FINISHED };

    static TCB* running;
    static int cnt;
    int id;
    Context context;
    Status status;
    void (*function_body)(void*);
    void* arg;
    void* stack;
    time_t time_slice;
};

#endif
