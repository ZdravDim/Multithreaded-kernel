#include "../h/risc-v.hpp"

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    return scause;
}

inline void RiscV::w_scause(uint64 val) {
    __asm__ volatile ("csrw scause, %0" : : "r"(val));
}

inline uint64 RiscV::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %0 sepc" : "=r"(sepc));
    return sepc;
}

inline void RiscV::w_sepc(uint64 val) {
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
}

inline uint64 RiscV::r_stvec() {
    uint64 volatile stvec;
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::w_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
}

inline uint64 RiscV::r_stval() {
    uint64 volatile stval;
    __asm__ volatile ("csrr %0, stval" : "=r"(stval));
    return stval;
}

inline void RiscV::w_stval(uint64 val) {
    __asm__ volatile ("csrw stval, %0" : : "r"(val));
}

inline void RiscV::ms_sip(uint64 mask) {
    __asm__ volatile ("csrs sip, %0" : : "r"(mask));
}

inline void RiscV::mc_sip(uint64 mask) {
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
}

inline uint64 RiscV::r_sip() {
    uint64 volatile sip;
    __asm__ volatile ("csrr %0 sip" : "=r"(sip));
    return sip;
}

inline void RiscV::w_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
}