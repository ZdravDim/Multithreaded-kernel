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

int sem_open (sem_t* handle, unsigned init) { return 0; }

int sem_close (sem_t handle) { return 0; }

int sem_wait (sem_t id) { return 0; }

int sem_signal (sem_t id) { return 0; }

int sem_timedwait(sem_t id, time_t timeout) { return 0; }

int sem_trywait(sem_t id) { return 0; }

int time_sleep (time_t) { return 0; }

char getc () { return __getc(); }

void putc (char c) { __putc(c); }