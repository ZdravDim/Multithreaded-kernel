#include "../h/tcb.hpp"
#include "../h/memory_allocator.hpp"

int TCB::cnt = 0;

int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_space) {
    Context context = {
            (uint64) wrapper_function,
            (uint64) stack_space + DEFAULT_STACK_SIZE - 1
    };
    *handle = new TCB(start_routine, arg, stack_space, context);
//    if (start_routine)
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
}

void TCB::thread_exit() {
    //...
}

void TCB::wrapper_function() {
    //...
}
