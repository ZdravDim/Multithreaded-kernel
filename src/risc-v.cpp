#include "../h/risc-v.hpp"

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
void RiscV::popSppSpie(bool return_to_user_mode) {
    if (return_to_user_mode) mc_sstatus(SSTATUS_SPP);
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

        /// set SSIE bit to 0 (interrupt finished)
        mc_sip(SIP_SSIE);

        /// wake up threads who slept
        TCB* first_waiting = Scheduler::head_sleeping;
        if (first_waiting) {
            --first_waiting -> time_to_sleep;
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
                Scheduler::put(first_waiting);
                first_waiting -> status = TCB::RUNNABLE;
                TCB* tmp = first_waiting;
                first_waiting = first_waiting -> next_sleeping;
                tmp -> next_sleeping = nullptr;
                Scheduler::head_sleeping = first_waiting;
            }
        }

        ++TCB::time_slice_counter;

        /// time slice ran out
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
            uint64 sepc = read_sepc();
            uint64 sstatus = read_sstatus();
            TCB::time_slice_counter = 0;
            TCB::dispatch();
            write_sstatus(sstatus);
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
        uint64 sepc = read_sepc();
        uint64 sstatus = read_sstatus();
        int irq = plic_claim();
        if (irq == CONSOLE_IRQ) {
            /// Maybe add constraint, limit nubmer of input chars to read
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
                char c = *(char *) CONSOLE_RX_DATA;
                Con::putc_input(c);
            }
        }
        plic_complete(irq);
        write_sepc(sepc);
        write_sstatus(sstatus);
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
                Scheduler::put_to_sleep((time_t) a1);
                break;
            case GETC:
                Con::getc_input();
                break;
            case PUTC:
                Con::putc_output((char) a1);
                break;
            default:
                break;
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
}