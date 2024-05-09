#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    size = MemoryAllocator::get_number_of_blocks(size);
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    return (void*) addr;
}

int mem_free (void* addr) {
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    return success;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    void* stack_space = nullptr;
    /// main thread alredy has it's stack
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int thread_exit () {
    int volatile status;
    syscall(THREAD_EXIT);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

void thread_dispatch () {
    syscall(THREAD_DISPATCH);
}

int sem_open (sem_t* handle, unsigned init) {
    int volatile status;
    syscall(SEM_OPEN, (uint64) handle, (uint64) init);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int sem_close (sem_t handle) {
    int volatile status;
    syscall(SEM_CLOSE, (uint64) handle);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int sem_wait (sem_t id) {
    int volatile status;
    syscall(SEM_WAIT, (uint64) id);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int sem_signal (sem_t id) {
    int volatile status;
    syscall(SEM_SIGNAL, (uint64) id);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int sem_timedwait(sem_t id, time_t timeout) {
    int volatile status;
    syscall(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int sem_trywait(sem_t id) {
    int volatile status;
    syscall(SEM_TRYWAIT, (uint64) id);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

int time_sleep (time_t time) {
    int volatile status;
    syscall(TIME_SLEEP, (uint64) time);
    __asm__ volatile("mv %0, a0" : "=r"(status));
    return status;
}

char getc () {
    char volatile c;
    syscall(GETC);
    __asm__ volatile("mv %0, a0" : "=r"(c));
    return c;
}

void putc (char c) {
    syscall(PUTC, c);
}