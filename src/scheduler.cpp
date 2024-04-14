#include "../h/scheduler.hpp"

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    if (tail_ready) {
        tail_ready->set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
}

TCB* Scheduler::get() {
    return head_ready;
}

void *Scheduler::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void Scheduler::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    thread -> set_status(TCB::Status::SLEEPING);
    if (!head_sleeping) {
        head_sleeping = thread;
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    while (tmp) {
        current_time += tmp -> get_time_to_sleep();
        if (current_time > time) {
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
            thread -> set_time_to_sleep(new_time);
            thread -> set_next_sleeping(tmp);
            if (prev) prev -> set_next_sleeping(thread);
            else head_sleeping = thread;
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    }
}
