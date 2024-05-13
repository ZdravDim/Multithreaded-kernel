#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    return mem_alloc(size);
}

void operator delete(void* p) noexcept {
    mem_free(p);
}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle = nullptr;
    this -> body = body;
    this -> arg = arg;
}

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

int Thread::start() {
    return thread_create(&myHandle, body, arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::Thread() {
    myHandle = nullptr;
    body = nullptr;
    arg = nullptr;
}

Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if (myHandle) sem_close(myHandle);
}

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    return -1;
}

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    return -1;
}

int Semaphore::timedWait(time_t time) {
    return sem_timedwait(myHandle, time);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

void PeriodicThread::terminate() {
    /// TODO terminate
}

PeriodicThread::PeriodicThread(time_t period) {
    this -> period = period;
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
