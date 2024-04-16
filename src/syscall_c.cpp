#include "../h/syscall_c.hpp"
#include "../h/memory_allocator.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    size = (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
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