#include "../h/risc-v.hpp"

void RiscV::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

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
    if (scause == 0x8000000000000001UL) {
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
    else if (scause == 0x8000000000000009UL) {
        console_handler();
    }

    /// illegal instruction
    else if (scause == 0x0000000000000002UL) {
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor mode
    if (scause == 0x0000000000000009UL) {
        uint64 sepc = read_sepc() + 4;
        uint64 sstatus = read_sstatus();
        TCB::time_slice_counter = 0;
        TCB::dispatch();
        write_sstatus(sstatus);
        write_sepc(sepc);
    }

    /// interrupt from user mode
    else if (scause == 0x0000000000000008UL) {
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
            case THREAD_JOIN:
//            TCB::_thread_join((thread_t) arg1);
                break;
//        case THREAD_JOIN_TIME:
////            TCB::_thread_join((thread_t) arg1, (time_t) arg2);
//            break;
//        case THREAD_FORK:
////            TCB::_fork();
//            break;
//        case THREAD_KILL:
////            TCB::_kill((thread_t) arg1);
//            break;
            case SEM_OPEN:
//            Sem::_sem_open((sem_t *) arg1, arg2);
                break;
            case SEM_CLOSE:
//            Sem::_sem_close((sem_t) arg1);
                break;
            case SEM_WAIT:
//            Sem::_sem_wait((sem_t) arg1);
                break;
            case SEM_SIGNAL:
//            Sem::_sem_signal((sem_t) arg1);
                break;
//        case TIME_SLEEP:
////            Cradle::_time_sleep((time_t) arg1);
//            break;
//        case THREAD_WAKE:
////            Cradle::_thread_wake((thread_t) arg1);
            case GETC:
//            IO::_getc();
                break;
            case PUTC:
//            IO::_putc((char) arg1);
                break;
            default:
                break;
        }
    }
}