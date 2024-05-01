#ifndef syscall_c
#define syscall_c

#include "../lib/hw.h"
#include "tcb.hpp"
#include "memory_allocator.hpp"
#include "semaphore.hpp"

enum SYSCALL_CODES {
    MEM_ALLOC = 0x01,
    MEM_FREE  = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    THREAD_JOIN = 0x14,
    THREAD_START = 0x15,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    GETC = 0x41,
    PUTC = 0x42
};

void* mem_alloc (size_t size);

int mem_free (void* addr);

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit ();

void thread_dispatch ();

typedef Sem* sem_t;

int sem_open (sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

int sem_timedwait(sem_t id, time_t timeout);

int sem_trywait(sem_t id);

typedef unsigned long time_t;
int time_sleep (time_t);

const int EOF = -1;
char getc ();

void putc (char);

#endif
