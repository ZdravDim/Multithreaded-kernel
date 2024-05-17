#include "../h/thread.hpp"
#include "../h/scheduler.hpp"
#include "../h/risc-v.hpp"

int TCB::cnt = 0;
TCB* TCB::running = nullptr;
time_t TCB::time_slice_counter = 0;

int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    *handle = new TCB(start_routine, arg, stack_begin_address);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    };
    id = cnt++;
    time_slice = DEFAULT_TIME_SLICE;
    status = RUNNABLE;
    this -> function_body = function_body;
    this -> arg = arg;
    this -> stack = stack;
    timed_wait = false;
    time_to_sleep = 0;
    next_ready = nullptr;
    next_sleeping = nullptr;
    sem = nullptr;
    if (function_body) Scheduler::put(this);
}

int TCB::thread_exit() {
    if (!running) return -1;
    running -> set_status(Status::FINISHED);
    thread_dispatch();
    return 0;
}

void TCB::wrapper_function() {
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    RiscV::push_registers();
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    RiscV::pop_registers();
}

void TCB::dispatch() {
    TCB* old = running;
    if (old -> status == RUNNABLE) Scheduler::put(old);
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    running = Scheduler::get();
    time_slice_counter = 0;
    if (old != running) yield(old, running);
}

TCB *TCB::get_next_ready() const {
    return next_ready;
}

void TCB::set_next_ready(TCB *next) {
    next_ready = next;
}

void TCB::set_next_sleeping(TCB *next) {
    next_sleeping = next;
}

TCB* TCB::get_next_sleeping() const {
    return next_sleeping;
}

void TCB::set_time_to_sleep(time_t time) {
    time_to_sleep = time;
}

time_t TCB::get_time_to_sleep() const {
    return time_to_sleep;
}

void TCB::set_status(TCB::Status stat) {
    this -> status = stat;
}

void *TCB::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void TCB::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

void *TCB::operator new[](size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void TCB::operator delete[](void *addr) {
    MemoryAllocator::mem_free(addr);
}

bool TCB::is_finished() const {
    return status == FINISHED;
}

void TCB::clear_from_timed_wait(bool removed_from_timer) {
    if (removed_from_timer) {
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    sem = nullptr;
}
