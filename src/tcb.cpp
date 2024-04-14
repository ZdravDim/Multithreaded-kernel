#include "../h/tcb.hpp"
#include "../h/memory_allocator.hpp"
#include "../h/scheduler.hpp"
#include "../h/risc-v.hpp"

int TCB::cnt = 0;
TCB* TCB::running = nullptr;

int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space) {
    Context context = {
            (uint64) wrapper_function,
            (uint64) stack_space + DEFAULT_STACK_SIZE - 1
    };
    *handle = new TCB(start_routine, arg, stack_space, context);
//    if (start_routine) Scheduler::put(this);
    return (*handle) -> id;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack_space, Context context) {
    id = cnt++;
    status = RUNNABLE;
    this -> context = context;
    this -> function_body = function_body;
    this -> arg = arg;
    stack = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    time_slice = DEFAULT_TIME_SLICE;
    next_ready = nullptr;
    time_to_sleep = 0;
    next_sleeping = nullptr;
    if (function_body) Scheduler::put(this);
}

void TCB::thread_exit() {
    running -> set_status(Status::FINISHED);
    //...
    dispatch();
}

void TCB::wrapper_function() {
    //...
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    RiscV::push_registers();
    context_switch(old_running -> context, new_running -> context);
    RiscV::pop_registers();
}

void TCB::dispatch() {
    TCB* old = running;
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    running = Scheduler::get();
    context_switch(&old -> context, &running -> context);
}

void TCB::set_next_ready(TCB *next) {
    next_ready = next;
}

void TCB::set_next_sleeping(TCB *next) {
    next_sleeping = next;
}

TCB* TCB::get_next_sleeping() {
    return next_sleeping;
}

void TCB::set_time_to_sleep(time_t time) {
    time_to_sleep = time;
}

time_t TCB::get_time_to_sleep() {
    return time_to_sleep;
}

void TCB::set_status(TCB::Status status) {
    this -> status = status;
}

void TCB::start() {
    Scheduler::put(this);
    if (!running) running = this;
}

void *TCB::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void TCB::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
