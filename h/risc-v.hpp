#ifndef riscv
#define riscv

#include "../lib/hw.h"

extern "C" void interruptHandler();

class RiscV {
public:
    static uint64 read_scause();
    static void write_scause(uint64 val);
    static uint64 read_sepc();
    static void write_sepc(uint64 val);
    static uint64 read_stvec();
    static void write_stvec(uint64 val);
    static uint64 read_stval();
    static void write_stval(uint64 val);

    enum BitMaskSipSie {
        SIP_SSIE = (1 << 1),
        SIP_SEIE = (1 << 9),
    };

    static uint64 read_sip();
    static void write_sip(uint64 val);

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);

    enum BitMaskSstatus {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    static uint64 read_sstatus();
    static void write_sstatus(uint64 val);

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);

};

inline uint64 RiscV::read_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    return scause;
}

inline void RiscV::write_scause(uint64 val) {
    __asm__ volatile ("csrw scause, %0" : : "r"(val));
}

inline uint64 RiscV::read_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %0 sepc" : "=r"(sepc));
    return sepc;
}

inline void RiscV::write_sepc(uint64 val) {
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
}

inline uint64 RiscV::read_stvec() {
    uint64 volatile stvec;
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
}

inline uint64 RiscV::read_stval() {
    uint64 volatile stval;
    __asm__ volatile ("csrr %0, stval" : "=r"(stval));
    return stval;
}

inline void RiscV::write_stval(uint64 val) {
    __asm__ volatile ("csrw stval, %0" : : "r"(val));
}

inline void RiscV::ms_sip(uint64 mask) {
    __asm__ volatile ("csrs sip, %0" : : "r"(mask));
}

inline void RiscV::mc_sip(uint64 mask) {
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sip() {
    uint64 volatile sip;
    __asm__ volatile ("csrr %0 sip" : "=r"(sip));
    return sip;
}

inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
}

#endif
