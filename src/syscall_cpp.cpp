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

Thread::Thread() {
    myHandle = nullptr;
    body = nullptr;
    arg = nullptr;
}

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    else thread -> body(thread -> arg);
}

int Thread::start() {
    return thread_create(&myHandle, start_helper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
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
    thread_exit();
}

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    if (period <= 0) this -> period = DEFAULT_TIME_SLICE;
    else this -> period = period;
}

[[noreturn]] void PeriodicThread::run() {
    while (true) {
        periodicActivation();
        time_sleep(period);
    }
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
