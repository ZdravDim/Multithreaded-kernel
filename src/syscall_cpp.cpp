#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    return mem_alloc(size);
}

void operator delete(void* p) noexcept {
    mem_free(p);
}

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    myHandle -> set_status(TCB::FINISHED);
    delete myHandle;
}

int Thread::start() {
    myHandle -> start();
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    time_sleep(time);
    return 0;
}

Thread::Thread() : myHandle(nullptr) {
//    thread_create(&myHandle, TCB::wrapper_function, (void*)this);
}

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
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

int Semaphore::timedWait(time_t) {
    return 0;
}

int Semaphore::tryWait() {
    return 0;
}

void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
