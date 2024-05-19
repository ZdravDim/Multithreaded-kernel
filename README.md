# Multithreaded kernel

## Short description

- The goal of this project is the realization of a small but fully functional kernel of an operating system that supports threads (multithreaded operating system) with time-sharing.

- The memory allocator and thread management is implemented within this project. Kernel should provide the concept of thread, semaphore and time-sharing, as well as asynchronous change of context and preemption upon interruption of timer and from the keyboard.

- The kernel is implemented for the RISC-V processor architecture.

- The kernel and the user application are ran within the educational operating system xv6 as a system host. This xv6 system has been significantly modified for this occasion by removing the many functionalities (context switching and process scheduling, memory management, file subsystem, disk management, etc.). The only role host system has is the role of starting itself and initializing the target hardware. It creates only one process with a virtual address space which occupies the entire available physical memory, loads the code of the programs that make it realized kernel and its associated application and then start its execution in that context the only process.

## Kernel interface

- The kernel should provide three types of interfaces to the user program, layered organized as in the following picture. Some layer A, which is shown in the picture above another layer B, uses the services of that second layer B to fulfill its responsibilities

![image](https://github.com/ZdravDim/Multithreaded-kernel/assets/72796409/42e612bc-5c02-43bc-872d-9297d6f3eae8)


- The ABI (application binary interface) is a system call interface that is performed using a software interrupt of the target processor. This layer ensures the passing of system call's arguments through processor registers, switching to the processor's privileged operating mode and moving to kernel code.

- C API (application programming interface) is classic, procedural system call programming interface implemented as a set of functions.

| C API interface |
| ----------------------------------------------------------------------------- |
| void* mem_alloc (size_t size); |
| int mem_free (void* addr);                                                    |
| int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg); |
| int thread_exit ();                                                           |
| void thread_dispatch ();                                                      |
| int sem_open (sem_t* handle, unsigned init);                                  |
| int sem_close (sem_t handle);                                                 |
| int sem_wait (sem_t id);                                                      |
| int sem_signal (sem_t id);                                                    |
| int sem_timedwait(sem_t id, time_t timeout);                                  |
| int sem_trywait(sem_t id);                                                    |
| int time_sleep (time_t);                                                      |
| char getc ();                                                                 |
| void putc (char);                                                             |

- The C++ API is an object-oriented API that provides an object-oriented view of the concepts supported by the kernel. It is implemented as a simple object-oriented wrapper around functions from the C API layer.

```
void* operator new (size_t);
void operator delete (void *) noexcept;
```
```
class Thread {
    public:
        Thread (void (*body)(void *), void* arg);
        virtual ~Thread ();
        int start ();
        static void dispatch ();
        static int sleep (time_t);
    protected:
        Thread ();
        virtual void run () {}
    private:
        thread_t myHandle;
        void (*body)(void*);
        void* arg;
    };
}
```
```
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};
```
```
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};
```
```
class Console {
public:
    static char getc ();
    static void putc (char);
};
```
