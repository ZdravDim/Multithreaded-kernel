#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uin64 a1 = 0, uin64 a2 = 0, uin64 a3 = 0, uin64 a4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    __asm__ volatile ("mv %0 a0" : "=r"(addr));
    return (void*) addr;
}

int mem_free (void* addr) {
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    return success;
}