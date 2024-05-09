#include "../h/scheduler.hpp"

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    if (tail_ready) {
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
}

TCB* Scheduler::get() {
    if (!head_ready) return nullptr;
    TCB *head = head_ready;
    TCB *tmp = head;
    head_ready = head_ready -> get_next_ready();
    tmp -> set_next_ready(nullptr);
    return head;
}

int Scheduler::put_to_sleep(time_t time) {
    TCB* thread = TCB::running;
    thread -> set_status(TCB::Status::SLEEPING);
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
            /// found a place to insert
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
            thread -> set_time_to_sleep(new_time);
            thread -> set_next_sleeping(tmp);
            if (prev) prev -> set_next_sleeping(thread);
            else head_sleeping = thread;
            for (TCB* curr = tmp; curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
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

void Scheduler::change_thread() {
    TCB* old = TCB::running;
    TCB::running = Scheduler::get();
    if (old != TCB::running) TCB::yield(old, TCB::running);
}

void Scheduler::print_sleeping() {
    for (TCB* tmp = head_sleeping; tmp; tmp = tmp -> get_next_sleeping()) printNumber(tmp -> get_time_to_sleep());
    __putc('\n');
}
