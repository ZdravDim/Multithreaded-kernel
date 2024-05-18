#include "../h/scheduler.hpp"
#include "../h/thread.hpp"

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    if (tail_ready) {
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
}

TCB* Scheduler::get() {
    if (!head_ready) return nullptr;
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    if (!head_ready) tail_ready = nullptr;
    tmp -> set_next_ready(nullptr);
    return tmp;
}

/// put thread to sleeping list
int Scheduler::put_to_sleep(time_t time) {
    if (!time) return -1;
    TCB* thread = TCB::running;
    /// empty list case
    if (!head_sleeping) {
        head_sleeping = thread;
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        change_thread();
        return 0;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    /// increase value as you iterate
    time_t current_time = 0;
    /// iterate list to find where to insert
    while (tmp) {
        current_time += tmp -> get_time_to_sleep();
        if (current_time > time) {
            /// found a place to insert (before tmp)
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
            thread -> set_time_to_sleep(new_time);
            thread -> set_next_sleeping(tmp);
            if (prev) prev -> set_next_sleeping(thread);
            else head_sleeping = thread;
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
            change_thread();
            return 0;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    }
    /// insert at the end
    thread -> set_time_to_sleep(time - current_time);
    prev -> set_next_sleeping(thread);
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    if (!thread) return -1;
    TCB *prev = nullptr, *tmp = head_sleeping;
    while (tmp && tmp != thread) {
        prev = tmp;
        tmp = tmp -> next_sleeping;
    }
    if (!tmp) return -2;
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    tmp -> next_sleeping = nullptr;
    return 0;
}

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    TCB* old = TCB::running;
    old -> set_status(TCB::SLEEPING);
    if (!old-> timed_wait) {
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}

