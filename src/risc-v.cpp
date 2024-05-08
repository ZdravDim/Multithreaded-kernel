#include "../h/risc-v.hpp"

extern "C" void printNumber(uint64 num);

/// scause register values
enum Interrupts {
    SOFTWARE_INTERRUPT   = 0x8000000000000001UL,
    HARDWARE_INTERRUPT   = 0x8000000000000009UL,
    INVALID_INTERRUPT    = 0x0000000000000002UL,
    USER_INTERRUPT       = 0x0000000000000008UL,
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
//        ++TCB::time_slice_counter;
//        if (TCB::time_slice_counter >= TCB::running -> get_time_slice()) {
//            uint64 sepc = read_sepc();
//            uint64 sstatus = read_sstatus();
//            TCB::time_slice_counter = 0;
//            TCB::dispatch();
//            write_sstatus(sstatus);
//            write_sepc(sepc);
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {

        uint64 sepc = read_sepc() + 4;
        uint64 sstatus = read_sstatus();

        switch(syscall_code) {
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t) a1);
                break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *) a1);
                break;
            case THREAD_CREATE:
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
                break;
            case THREAD_EXIT:
                TCB::thread_exit();
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
                break;
//            case THREAD_JOIN:
//            TCB::_thread_join((thread_t) arg1);
                break;
            case SEM_OPEN:
                Sem::open((sem_t *) a1, a2);
                break;
            case SEM_CLOSE:
                ((sem_t) a1) -> close();
                break;
            case SEM_WAIT:
                ((sem_t) a1) -> wait();
                break;
            case SEM_SIGNAL:
                ((sem_t) a1) -> signal();
                break;
            case SEM_TIMEDWAIT:
                ((sem_t) a1) -> timedWait((time_t) a2);
                break;
            case SEM_TRYWAIT:
                ((sem_t) a1) -> tryWait();
                break;
            case TIME_SLEEP:
                //...
                break;
            case GETC:
                Con::getc();
                break;
            case PUTC:
                Con::putc(a1);
                break;
            default:
                break;
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
}