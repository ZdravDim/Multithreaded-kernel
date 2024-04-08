#ifndef riscv
#define riscv

#include "../lib/hw.h"

extern "C" void interruptHandler();

class RiscV {
public:
    static uint64 r_scause();
    static void w_scause(uint64 val);
    static uint64 r_sepc();
    static void w_sepc(uint64 val);
    static uint64 r_stvec();
    static void w_stvec(uint64 val);
    static uint64 r_stval();
    static void w_stval(uint64 val);

    enum BitMaskSipSie {
        SIP_SSIE = (1 << 1),
        SIP_SEIE = (1 << 9),
    };

    static uint64 r_sip();
    static void w_sip(uint64 val);

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);

    enum BitMaskSstatus {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    static uint64 r_sstatus();
    static void w_sstatus(uint64 val);

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);

};

#endif
