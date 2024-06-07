.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
	sd sp, 1 * 8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    ld sp, 1 * 8(a1)

	ret