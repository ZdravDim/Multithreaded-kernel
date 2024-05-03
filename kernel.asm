
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7d013103          	ld	sp,2000(sp) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3c8060ef          	jal	ra,800063e4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV16handle_interruptEv>:
.global _ZN5RiscV16handle_interruptEv
.type _ZN5RiscV16handle_interruptEv, @function
_ZN5RiscV16handle_interruptEv:

    addi sp, sp, -240
    80001000:	f1010113          	addi	sp,sp,-240
    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)

    csrr t0, sepc
    8000107c:	141022f3          	csrr	t0,sepc
    addi t0, t0, 4
    80001080:	00428293          	addi	t0,t0,4
    csrw sepc, t0
    80001084:	14129073          	csrw	sepc,t0

    call _ZN5RiscV22handle_supervisor_trapEv
    80001088:	245010ef          	jal	ra,80002acc <_ZN5RiscV22handle_supervisor_trapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000108c:	00013003          	ld	zero,0(sp)
    80001090:	00813083          	ld	ra,8(sp)
    80001094:	01013103          	ld	sp,16(sp)
    80001098:	01813183          	ld	gp,24(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 240
    80001104:	0f010113          	addi	sp,sp,240

    sret
    80001108:	10200073          	sret

000000008000110c <_ZN5RiscV14push_registersEv>:

.global _ZN5RiscV14push_registersEv
.type _ZN5RiscV14push_registersEv, @function
_ZN5RiscV14push_registersEv:

    addi sp, sp, -256
    8000110c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001110:	00013023          	sd	zero,0(sp)
    80001114:	00113423          	sd	ra,8(sp)
    80001118:	00213823          	sd	sp,16(sp)
    8000111c:	00313c23          	sd	gp,24(sp)
    80001120:	02413023          	sd	tp,32(sp)
    80001124:	02513423          	sd	t0,40(sp)
    80001128:	02613823          	sd	t1,48(sp)
    8000112c:	02713c23          	sd	t2,56(sp)
    80001130:	04813023          	sd	s0,64(sp)
    80001134:	04913423          	sd	s1,72(sp)
    80001138:	04a13823          	sd	a0,80(sp)
    8000113c:	04b13c23          	sd	a1,88(sp)
    80001140:	06c13023          	sd	a2,96(sp)
    80001144:	06d13423          	sd	a3,104(sp)
    80001148:	06e13823          	sd	a4,112(sp)
    8000114c:	06f13c23          	sd	a5,120(sp)
    80001150:	09013023          	sd	a6,128(sp)
    80001154:	09113423          	sd	a7,136(sp)
    80001158:	09213823          	sd	s2,144(sp)
    8000115c:	09313c23          	sd	s3,152(sp)
    80001160:	0b413023          	sd	s4,160(sp)
    80001164:	0b513423          	sd	s5,168(sp)
    80001168:	0b613823          	sd	s6,176(sp)
    8000116c:	0b713c23          	sd	s7,184(sp)
    80001170:	0d813023          	sd	s8,192(sp)
    80001174:	0d913423          	sd	s9,200(sp)
    80001178:	0da13823          	sd	s10,208(sp)
    8000117c:	0db13c23          	sd	s11,216(sp)
    80001180:	0fc13023          	sd	t3,224(sp)
    80001184:	0fd13423          	sd	t4,232(sp)
    80001188:	0fe13823          	sd	t5,240(sp)
    8000118c:	0ff13c23          	sd	t6,248(sp)

    sret
    80001190:	10200073          	sret

0000000080001194 <_ZN5RiscV13pop_registersEv>:
.type _ZN5RiscV13pop_registersEv, @function
_ZN5RiscV13pop_registersEv:

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001194:	00013003          	ld	zero,0(sp)
    80001198:	00813083          	ld	ra,8(sp)
    8000119c:	01013103          	ld	sp,16(sp)
    800011a0:	01813183          	ld	gp,24(sp)
    800011a4:	02013203          	ld	tp,32(sp)
    800011a8:	02813283          	ld	t0,40(sp)
    800011ac:	03013303          	ld	t1,48(sp)
    800011b0:	03813383          	ld	t2,56(sp)
    800011b4:	04013403          	ld	s0,64(sp)
    800011b8:	04813483          	ld	s1,72(sp)
    800011bc:	05013503          	ld	a0,80(sp)
    800011c0:	05813583          	ld	a1,88(sp)
    800011c4:	06013603          	ld	a2,96(sp)
    800011c8:	06813683          	ld	a3,104(sp)
    800011cc:	07013703          	ld	a4,112(sp)
    800011d0:	07813783          	ld	a5,120(sp)
    800011d4:	08013803          	ld	a6,128(sp)
    800011d8:	08813883          	ld	a7,136(sp)
    800011dc:	09013903          	ld	s2,144(sp)
    800011e0:	09813983          	ld	s3,152(sp)
    800011e4:	0a013a03          	ld	s4,160(sp)
    800011e8:	0a813a83          	ld	s5,168(sp)
    800011ec:	0b013b03          	ld	s6,176(sp)
    800011f0:	0b813b83          	ld	s7,184(sp)
    800011f4:	0c013c03          	ld	s8,192(sp)
    800011f8:	0c813c83          	ld	s9,200(sp)
    800011fc:	0d013d03          	ld	s10,208(sp)
    80001200:	0d813d83          	ld	s11,216(sp)
    80001204:	0e013e03          	ld	t3,224(sp)
    80001208:	0e813e83          	ld	t4,232(sp)
    8000120c:	0f013f03          	ld	t5,240(sp)
    80001210:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001214:	10010113          	addi	sp,sp,256

    80001218:	10200073          	sret

000000008000121c <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    8000121c:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001220:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001224:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001228:	0085b103          	ld	sp,8(a1)

    8000122c:	00008067          	ret

0000000080001230 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001230:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001234:	00b29a63          	bne	t0,a1,80001248 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001238:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000123c:	fe029ae3          	bnez	t0,80001230 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001240:	00000513          	li	a0,0
    jr ra                  # Return.
    80001244:	00008067          	ret

0000000080001248 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001248:	00100513          	li	a0,1
    8000124c:	00008067          	ret

0000000080001250 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001250:	ff010113          	addi	sp,sp,-16
    80001254:	00813423          	sd	s0,8(sp)
    80001258:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    8000126c:	04050663          	beqz	a0,800012b8 <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00113423          	sd	ra,8(sp)
    80001278:	00813023          	sd	s0,0(sp)
    8000127c:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    80001280:	00001097          	auipc	ra,0x1
    80001284:	600080e7          	jalr	1536(ra) # 80002880 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001288:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    8000128c:	00000713          	li	a4,0
    80001290:	00000693          	li	a3,0
    80001294:	00000613          	li	a2,0
    80001298:	00100513          	li	a0,1
    8000129c:	00000097          	auipc	ra,0x0
    800012a0:	fb4080e7          	jalr	-76(ra) # 80001250 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    800012a4:	00050513          	mv	a0,a0
    return (void*) addr;
}
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	00013403          	ld	s0,0(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret
    if (size == 0) return nullptr;
    800012b8:	00000513          	li	a0,0
}
    800012bc:	00008067          	ret

00000000800012c0 <_Z8mem_freePv>:

int mem_free (void* addr) {
    800012c0:	fe010113          	addi	sp,sp,-32
    800012c4:	00113c23          	sd	ra,24(sp)
    800012c8:	00813823          	sd	s0,16(sp)
    800012cc:	02010413          	addi	s0,sp,32
    800012d0:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800012d4:	00000713          	li	a4,0
    800012d8:	00000693          	li	a3,0
    800012dc:	00000613          	li	a2,0
    800012e0:	00200513          	li	a0,2
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	f6c080e7          	jalr	-148(ra) # 80001250 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800012ec:	00050793          	mv	a5,a0
    800012f0:	fef42623          	sw	a5,-20(s0)
    return success;
    800012f4:	fec42503          	lw	a0,-20(s0)
}
    800012f8:	0005051b          	sext.w	a0,a0
    800012fc:	01813083          	ld	ra,24(sp)
    80001300:	01013403          	ld	s0,16(sp)
    80001304:	02010113          	addi	sp,sp,32
    80001308:	00008067          	ret

000000008000130c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000130c:	fc010113          	addi	sp,sp,-64
    80001310:	02113c23          	sd	ra,56(sp)
    80001314:	02813823          	sd	s0,48(sp)
    80001318:	02913423          	sd	s1,40(sp)
    8000131c:	03213023          	sd	s2,32(sp)
    80001320:	01313c23          	sd	s3,24(sp)
    80001324:	04010413          	addi	s0,sp,64
    80001328:	00050913          	mv	s2,a0
    8000132c:	00058493          	mv	s1,a1
    80001330:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    /// main thread alredy has it's stack
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001334:	04058c63          	beqz	a1,8000138c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001338:	00001537          	lui	a0,0x1
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	f30080e7          	jalr	-208(ra) # 8000126c <_Z9mem_allocm>
    80001344:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001348:	00098693          	mv	a3,s3
    8000134c:	00048613          	mv	a2,s1
    80001350:	00090593          	mv	a1,s2
    80001354:	01100513          	li	a0,17
    80001358:	00000097          	auipc	ra,0x0
    8000135c:	ef8080e7          	jalr	-264(ra) # 80001250 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001360:	00050793          	mv	a5,a0
    80001364:	fcf42623          	sw	a5,-52(s0)
    return status;
    80001368:	fcc42503          	lw	a0,-52(s0)
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	03813083          	ld	ra,56(sp)
    80001374:	03013403          	ld	s0,48(sp)
    80001378:	02813483          	ld	s1,40(sp)
    8000137c:	02013903          	ld	s2,32(sp)
    80001380:	01813983          	ld	s3,24(sp)
    80001384:	04010113          	addi	sp,sp,64
    80001388:	00008067          	ret
    void* stack_space = nullptr;
    8000138c:	00000713          	li	a4,0
    80001390:	fb9ff06f          	j	80001348 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001394 <_Z11thread_exitv>:

int thread_exit () {
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00113c23          	sd	ra,24(sp)
    8000139c:	00813823          	sd	s0,16(sp)
    800013a0:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    800013a4:	00000713          	li	a4,0
    800013a8:	00000693          	li	a3,0
    800013ac:	00000613          	li	a2,0
    800013b0:	00000593          	li	a1,0
    800013b4:	01200513          	li	a0,18
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	e98080e7          	jalr	-360(ra) # 80001250 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800013c0:	00050793          	mv	a5,a0
    800013c4:	fef42623          	sw	a5,-20(s0)
    return status;
    800013c8:	fec42503          	lw	a0,-20(s0)
}
    800013cc:	0005051b          	sext.w	a0,a0
    800013d0:	01813083          	ld	ra,24(sp)
    800013d4:	01013403          	ld	s0,16(sp)
    800013d8:	02010113          	addi	sp,sp,32
    800013dc:	00008067          	ret

00000000800013e0 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00113423          	sd	ra,8(sp)
    800013e8:	00813023          	sd	s0,0(sp)
    800013ec:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800013f0:	00000713          	li	a4,0
    800013f4:	00000693          	li	a3,0
    800013f8:	00000613          	li	a2,0
    800013fc:	00000593          	li	a1,0
    80001400:	01300513          	li	a0,19
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e4c080e7          	jalr	-436(ra) # 80001250 <_Z7syscallmmmmm>
}
    8000140c:	00813083          	ld	ra,8(sp)
    80001410:	00013403          	ld	s0,0(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init) { return 0; }
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    80001428:	00000513          	li	a0,0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) { return 0; }
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    80001444:	00000513          	li	a0,0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) { return 0; }
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    80001460:	00000513          	li	a0,0
    80001464:	00813403          	ld	s0,8(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) { return 0; }
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    8000147c:	00000513          	li	a0,0
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00000513          	li	a0,0
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) { return 0; }
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    800014b4:	00000513          	li	a0,0
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    800014d0:	00000513          	li	a0,0
    800014d4:	00813403          	ld	s0,8(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z4getcv>:

char getc () {
    800014e0:	fe010113          	addi	sp,sp,-32
    800014e4:	00113c23          	sd	ra,24(sp)
    800014e8:	00813823          	sd	s0,16(sp)
    800014ec:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    800014f0:	00000713          	li	a4,0
    800014f4:	00000693          	li	a3,0
    800014f8:	00000613          	li	a2,0
    800014fc:	00000593          	li	a1,0
    80001500:	04100513          	li	a0,65
    80001504:	00000097          	auipc	ra,0x0
    80001508:	d4c080e7          	jalr	-692(ra) # 80001250 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    8000150c:	00050793          	mv	a5,a0
    80001510:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001514:	fef44503          	lbu	a0,-17(s0)
}
    80001518:	0ff57513          	andi	a0,a0,255
    8000151c:	01813083          	ld	ra,24(sp)
    80001520:	01013403          	ld	s0,16(sp)
    80001524:	02010113          	addi	sp,sp,32
    80001528:	00008067          	ret

000000008000152c <_Z4putcc>:

void putc (char c) {
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00113423          	sd	ra,8(sp)
    80001534:	00813023          	sd	s0,0(sp)
    80001538:	01010413          	addi	s0,sp,16
    8000153c:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001540:	00000713          	li	a4,0
    80001544:	00000693          	li	a3,0
    80001548:	00000613          	li	a2,0
    8000154c:	04200513          	li	a0,66
    80001550:	00000097          	auipc	ra,0x0
    80001554:	d00080e7          	jalr	-768(ra) # 80001250 <_Z7syscallmmmmm>
    80001558:	00813083          	ld	ra,8(sp)
    8000155c:	00013403          	ld	s0,0(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <_ZN3SemD1Ev>:
#include "../h/semaphore.hpp"

Sem::~Sem() {
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00113423          	sd	ra,8(sp)
    80001570:	00813023          	sd	s0,0(sp)
    80001574:	01010413          	addi	s0,sp,16
    80001578:	0000a797          	auipc	a5,0xa
    8000157c:	00878793          	addi	a5,a5,8 # 8000b580 <_ZTV3Sem+0x10>
    80001580:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001584:	00850513          	addi	a0,a0,8
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	7c4080e7          	jalr	1988(ra) # 80002d4c <_ZN10ThreadList4freeEv>
}
    80001590:	00813083          	ld	ra,8(sp)
    80001594:	00013403          	ld	s0,0(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800015a0:	fe010113          	addi	sp,sp,-32
    800015a4:	00113c23          	sd	ra,24(sp)
    800015a8:	00813823          	sd	s0,16(sp)
    800015ac:	00913423          	sd	s1,8(sp)
    800015b0:	02010413          	addi	s0,sp,32
    800015b4:	00050493          	mv	s1,a0
}
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	fb0080e7          	jalr	-80(ra) # 80001568 <_ZN3SemD1Ev>
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	ab0080e7          	jalr	-1360(ra) # 80002074 <_ZdlPv>
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	00813483          	ld	s1,8(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret

00000000800015e0 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800015e0:	fe010113          	addi	sp,sp,-32
    800015e4:	00113c23          	sd	ra,24(sp)
    800015e8:	00813823          	sd	s0,16(sp)
    800015ec:	00913423          	sd	s1,8(sp)
    800015f0:	01213023          	sd	s2,0(sp)
    800015f4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800015f8:	0000a917          	auipc	s2,0xa
    800015fc:	1e093903          	ld	s2,480(s2) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001600:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    80001604:	00048593          	mv	a1,s1
    80001608:	00850513          	addi	a0,a0,8
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	600080e7          	jalr	1536(ra) # 80002c0c <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001614:	00001097          	auipc	ra,0x1
    80001618:	2ec080e7          	jalr	748(ra) # 80002900 <_ZN9Scheduler3getEv>
    8000161c:	00050593          	mv	a1,a0
    80001620:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001624:	00048513          	mv	a0,s1
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	5b4080e7          	jalr	1460(ra) # 80001bdc <_ZN3TCB5yieldEPS_S0_>
}
    80001630:	01813083          	ld	ra,24(sp)
    80001634:	01013403          	ld	s0,16(sp)
    80001638:	00813483          	ld	s1,8(sp)
    8000163c:	00013903          	ld	s2,0(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret

0000000080001648 <_ZN3Sem4waitEv>:
    if (closed) return -1;
    80001648:	01c54783          	lbu	a5,28(a0)
    8000164c:	06079063          	bnez	a5,800016ac <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001650:	fe010113          	addi	sp,sp,-32
    80001654:	00113c23          	sd	ra,24(sp)
    80001658:	00813823          	sd	s0,16(sp)
    8000165c:	00913423          	sd	s1,8(sp)
    80001660:	02010413          	addi	s0,sp,32
    80001664:	00050493          	mv	s1,a0
    if (--value < 0) {
    80001668:	01852783          	lw	a5,24(a0)
    8000166c:	fff7879b          	addiw	a5,a5,-1
    80001670:	00f52c23          	sw	a5,24(a0)
    80001674:	02079713          	slli	a4,a5,0x20
    80001678:	00074e63          	bltz	a4,80001694 <_ZN3Sem4waitEv+0x4c>
    return 0;
    8000167c:	00000513          	li	a0,0
}
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	02010113          	addi	sp,sp,32
    80001690:	00008067          	ret
        block();
    80001694:	00000097          	auipc	ra,0x0
    80001698:	f4c080e7          	jalr	-180(ra) # 800015e0 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    8000169c:	01c4c783          	lbu	a5,28(s1)
    800016a0:	00079a63          	bnez	a5,800016b4 <_ZN3Sem4waitEv+0x6c>
    return 0;
    800016a4:	00000513          	li	a0,0
    800016a8:	fd9ff06f          	j	80001680 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    800016ac:	fff00513          	li	a0,-1
}
    800016b0:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    800016b4:	ffe00513          	li	a0,-2
    800016b8:	fc9ff06f          	j	80001680 <_ZN3Sem4waitEv+0x38>

00000000800016bc <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800016cc:	00850513          	addi	a0,a0,8
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	4e8080e7          	jalr	1256(ra) # 80002bb8 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	1c8080e7          	jalr	456(ra) # 800028a0 <_ZN9Scheduler3putEP3TCB>
}
    800016e0:	00813083          	ld	ra,8(sp)
    800016e4:	00013403          	ld	s0,0(sp)
    800016e8:	01010113          	addi	sp,sp,16
    800016ec:	00008067          	ret

00000000800016f0 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800016f0:	01c54783          	lbu	a5,28(a0)
    800016f4:	04079663          	bnez	a5,80001740 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800016f8:	01852783          	lw	a5,24(a0)
    800016fc:	0017879b          	addiw	a5,a5,1
    80001700:	0007871b          	sext.w	a4,a5
    80001704:	00f52c23          	sw	a5,24(a0)
    80001708:	00e05663          	blez	a4,80001714 <_ZN3Sem6signalEv+0x24>
    return 0;
    8000170c:	00000513          	li	a0,0
}
    80001710:	00008067          	ret
int Sem::signal() {
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00113423          	sd	ra,8(sp)
    8000171c:	00813023          	sd	s0,0(sp)
    80001720:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001724:	00000097          	auipc	ra,0x0
    80001728:	f98080e7          	jalr	-104(ra) # 800016bc <_ZN3Sem7unblockEv>
    return 0;
    8000172c:	00000513          	li	a0,0
}
    80001730:	00813083          	ld	ra,8(sp)
    80001734:	00013403          	ld	s0,0(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret
    if (closed) return -1;
    80001740:	fff00513          	li	a0,-1
    80001744:	00008067          	ret

0000000080001748 <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    return 0;
}
    80001754:	00000513          	li	a0,0
    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001770:	00000513          	li	a0,0
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('A');
    80001794:	00000493          	li	s1,0
    80001798:	00900793          	li	a5,9
    8000179c:	0097cc63          	blt	a5,s1,800017b4 <_Z7workerAPv+0x34>
    800017a0:	04100513          	li	a0,65
    800017a4:	00007097          	auipc	ra,0x7
    800017a8:	d08080e7          	jalr	-760(ra) # 800084ac <__putc>
    800017ac:	0014849b          	addiw	s1,s1,1
    800017b0:	fe9ff06f          	j	80001798 <_Z7workerAPv+0x18>
}
    800017b4:	01813083          	ld	ra,24(sp)
    800017b8:	01013403          	ld	s0,16(sp)
    800017bc:	00813483          	ld	s1,8(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_Z7workerBPv>:
void workerB(void *args) {
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('B');
    800017dc:	00000493          	li	s1,0
    800017e0:	00900793          	li	a5,9
    800017e4:	0097cc63          	blt	a5,s1,800017fc <_Z7workerBPv+0x34>
    800017e8:	04200513          	li	a0,66
    800017ec:	00007097          	auipc	ra,0x7
    800017f0:	cc0080e7          	jalr	-832(ra) # 800084ac <__putc>
    800017f4:	0014849b          	addiw	s1,s1,1
    800017f8:	fe9ff06f          	j	800017e0 <_Z7workerBPv+0x18>
}
    800017fc:	01813083          	ld	ra,24(sp)
    80001800:	01013403          	ld	s0,16(sp)
    80001804:	00813483          	ld	s1,8(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret

0000000080001810 <printNumber>:
extern "C" void printNumber(uint64 num) {
    80001810:	fd010113          	addi	sp,sp,-48
    80001814:	02113423          	sd	ra,40(sp)
    80001818:	02813023          	sd	s0,32(sp)
    8000181c:	00913c23          	sd	s1,24(sp)
    80001820:	01213823          	sd	s2,16(sp)
    80001824:	01313423          	sd	s3,8(sp)
    80001828:	03010413          	addi	s0,sp,48
    8000182c:	00050913          	mv	s2,a0
    __putc('\n');
    80001830:	00a00513          	li	a0,10
    80001834:	00007097          	auipc	ra,0x7
    80001838:	c78080e7          	jalr	-904(ra) # 800084ac <__putc>
    __putc('N');
    8000183c:	04e00513          	li	a0,78
    80001840:	00007097          	auipc	ra,0x7
    80001844:	c6c080e7          	jalr	-916(ra) # 800084ac <__putc>
    __putc(':');
    80001848:	03a00513          	li	a0,58
    8000184c:	00007097          	auipc	ra,0x7
    80001850:	c60080e7          	jalr	-928(ra) # 800084ac <__putc>
    __putc(' ');
    80001854:	02000513          	li	a0,32
    80001858:	00007097          	auipc	ra,0x7
    8000185c:	c54080e7          	jalr	-940(ra) # 800084ac <__putc>
    if (!num) __putc('0');
    80001860:	00090863          	beqz	s2,80001870 <printNumber+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001864:	00000993          	li	s3,0
    80001868:	00000493          	li	s1,0
    8000186c:	01c0006f          	j	80001888 <printNumber+0x78>
    if (!num) __putc('0');
    80001870:	03000513          	li	a0,48
    80001874:	00007097          	auipc	ra,0x7
    80001878:	c38080e7          	jalr	-968(ra) # 800084ac <__putc>
    8000187c:	fe9ff06f          	j	80001864 <printNumber+0x54>
        num /= 10;
    80001880:	00a00793          	li	a5,10
    80001884:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001888:	02090463          	beqz	s2,800018b0 <printNumber+0xa0>
        num2 *= 10;
    8000188c:	00249793          	slli	a5,s1,0x2
    80001890:	009784b3          	add	s1,a5,s1
    80001894:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001898:	00a00493          	li	s1,10
    8000189c:	029974b3          	remu	s1,s2,s1
    800018a0:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    800018a4:	fc049ee3          	bnez	s1,80001880 <printNumber+0x70>
    800018a8:	00198993          	addi	s3,s3,1
    800018ac:	fd5ff06f          	j	80001880 <printNumber+0x70>
    while (num2) {
    800018b0:	02048063          	beqz	s1,800018d0 <printNumber+0xc0>
        __putc(num2 % 10 + '0');
    800018b4:	00a00913          	li	s2,10
    800018b8:	0324f533          	remu	a0,s1,s2
    800018bc:	03050513          	addi	a0,a0,48
    800018c0:	00007097          	auipc	ra,0x7
    800018c4:	bec080e7          	jalr	-1044(ra) # 800084ac <__putc>
        num2 /= 10;
    800018c8:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    800018cc:	fe5ff06f          	j	800018b0 <printNumber+0xa0>
    while (zero_count--) __putc('0');
    800018d0:	fff98493          	addi	s1,s3,-1
    800018d4:	00098c63          	beqz	s3,800018ec <printNumber+0xdc>
    800018d8:	03000513          	li	a0,48
    800018dc:	00007097          	auipc	ra,0x7
    800018e0:	bd0080e7          	jalr	-1072(ra) # 800084ac <__putc>
    800018e4:	00048993          	mv	s3,s1
    800018e8:	fe9ff06f          	j	800018d0 <printNumber+0xc0>
}
    800018ec:	02813083          	ld	ra,40(sp)
    800018f0:	02013403          	ld	s0,32(sp)
    800018f4:	01813483          	ld	s1,24(sp)
    800018f8:	01013903          	ld	s2,16(sp)
    800018fc:	00813983          	ld	s3,8(sp)
    80001900:	03010113          	addi	sp,sp,48
    80001904:	00008067          	ret

0000000080001908 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001920:	00001097          	auipc	ra,0x1
    80001924:	ebc080e7          	jalr	-324(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001928:	00100513          	li	a0,1
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	b58080e7          	jalr	-1192(ra) # 80002484 <_ZN15MemoryAllocator9mem_allocEm>
    80001934:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	ea4080e7          	jalr	-348(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    80001940:	00048513          	mv	a0,s1
    80001944:	00001097          	auipc	ra,0x1
    80001948:	d2c080e7          	jalr	-724(ra) # 80002670 <_ZN15MemoryAllocator8mem_freeEPv>
    8000194c:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    80001950:	00001097          	auipc	ra,0x1
    80001954:	e8c080e7          	jalr	-372(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    80001958:	00048513          	mv	a0,s1
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	d14080e7          	jalr	-748(ra) # 80002670 <_ZN15MemoryAllocator8mem_freeEPv>
    80001964:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	e74080e7          	jalr	-396(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    80001970:	00a00513          	li	a0,10
    80001974:	00007097          	auipc	ra,0x7
    80001978:	b38080e7          	jalr	-1224(ra) # 800084ac <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    8000197c:	02090263          	beqz	s2,800019a0 <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    80001980:	ffd00793          	li	a5,-3
    80001984:	02f48663          	beq	s1,a5,800019b0 <_Z19testMemoryAllocatorv+0xa8>
}
    80001988:	01813083          	ld	ra,24(sp)
    8000198c:	01013403          	ld	s0,16(sp)
    80001990:	00813483          	ld	s1,8(sp)
    80001994:	00013903          	ld	s2,0(sp)
    80001998:	02010113          	addi	sp,sp,32
    8000199c:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    800019a0:	04700513          	li	a0,71
    800019a4:	00007097          	auipc	ra,0x7
    800019a8:	b08080e7          	jalr	-1272(ra) # 800084ac <__putc>
    800019ac:	fd5ff06f          	j	80001980 <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    800019b0:	04700513          	li	a0,71
    800019b4:	00007097          	auipc	ra,0x7
    800019b8:	af8080e7          	jalr	-1288(ra) # 800084ac <__putc>
}
    800019bc:	fcdff06f          	j	80001988 <_Z19testMemoryAllocatorv+0x80>

00000000800019c0 <_Z11testMemoryCv>:
void testMemoryC() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	e08080e7          	jalr	-504(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    800019dc:	03200513          	li	a0,50
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	88c080e7          	jalr	-1908(ra) # 8000126c <_Z9mem_allocm>
    800019e8:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	df0080e7          	jalr	-528(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	8c8080e7          	jalr	-1848(ra) # 800012c0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	ddc080e7          	jalr	-548(ra) # 800027dc <_ZN15MemoryAllocator5printEv>
}
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	00813483          	ld	s1,8(sp)
    80001a14:	02010113          	addi	sp,sp,32
    80001a18:	00008067          	ret

0000000080001a1c <_Z11testThreadsv>:
void testThreads() {
    80001a1c:	fd010113          	addi	sp,sp,-48
    80001a20:	02113423          	sd	ra,40(sp)
    80001a24:	02813023          	sd	s0,32(sp)
    80001a28:	03010413          	addi	s0,sp,48
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    80001a2c:	00000613          	li	a2,0
    80001a30:	00000593          	li	a1,0
    80001a34:	fe840513          	addi	a0,s0,-24
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	8d4080e7          	jalr	-1836(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80001a40:	0000a797          	auipc	a5,0xa
    80001a44:	d987b783          	ld	a5,-616(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a48:	fe843703          	ld	a4,-24(s0)
    80001a4c:	00e7b023          	sd	a4,0(a5)

    thread_t thread1;
    thread_create(&thread1, workerA, nullptr);
    80001a50:	00000613          	li	a2,0
    80001a54:	00000597          	auipc	a1,0x0
    80001a58:	d2c58593          	addi	a1,a1,-724 # 80001780 <_Z7workerAPv>
    80001a5c:	fe040513          	addi	a0,s0,-32
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	8ac080e7          	jalr	-1876(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>

    thread_t thread2;
    thread_create(&thread2, workerB, nullptr);
    80001a68:	00000613          	li	a2,0
    80001a6c:	00000597          	auipc	a1,0x0
    80001a70:	d5c58593          	addi	a1,a1,-676 # 800017c8 <_Z7workerBPv>
    80001a74:	fd840513          	addi	a0,s0,-40
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	894080e7          	jalr	-1900(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>

    while (!thread1 -> is_finished() && !thread2 -> is_finished()) thread_dispatch();
    80001a80:	fe043503          	ld	a0,-32(s0)
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	50c080e7          	jalr	1292(ra) # 80001f90 <_ZNK3TCB11is_finishedEv>
    80001a8c:	02051063          	bnez	a0,80001aac <_Z11testThreadsv+0x90>
    80001a90:	fd843503          	ld	a0,-40(s0)
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	4fc080e7          	jalr	1276(ra) # 80001f90 <_ZNK3TCB11is_finishedEv>
    80001a9c:	00051863          	bnez	a0,80001aac <_Z11testThreadsv+0x90>
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	940080e7          	jalr	-1728(ra) # 800013e0 <_Z15thread_dispatchv>
    80001aa8:	fd9ff06f          	j	80001a80 <_Z11testThreadsv+0x64>
}
    80001aac:	02813083          	ld	ra,40(sp)
    80001ab0:	02013403          	ld	s0,32(sp)
    80001ab4:	03010113          	addi	sp,sp,48
    80001ab8:	00008067          	ret

0000000080001abc <_Z10initializev>:

void userMain();
void initialize() {
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00113423          	sd	ra,8(sp)
    80001ac4:	00813023          	sd	s0,0(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001acc:	0000a797          	auipc	a5,0xa
    80001ad0:	cfc7b783          	ld	a5,-772(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001ad4:	10579073          	csrw	stvec,a5
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	ac8080e7          	jalr	-1336(ra) # 800025a0 <_ZN15MemoryAllocator10initializeEv>
}
    80001ae0:	00813083          	ld	ra,8(sp)
    80001ae4:	00013403          	ld	s0,0(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret

0000000080001af0 <_Z4testv>:
void test() {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00113423          	sd	ra,8(sp)
    80001af8:	00813023          	sd	s0,0(sp)
    80001afc:	01010413          	addi	s0,sp,16
    /// Test Memory Allocation
    testMemoryAllocator();
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	e08080e7          	jalr	-504(ra) # 80001908 <_Z19testMemoryAllocatorv>
    testMemoryC();
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	eb8080e7          	jalr	-328(ra) # 800019c0 <_Z11testMemoryCv>
    /// Test Threads
    testThreads();
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	f0c080e7          	jalr	-244(ra) # 80001a1c <_Z11testThreadsv>
    /// Test Everything
//    userMain();
}
    80001b18:	00813083          	ld	ra,8(sp)
    80001b1c:	00013403          	ld	s0,0(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <main>:


int main() {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00113423          	sd	ra,8(sp)
    80001b30:	00813023          	sd	s0,0(sp)
    80001b34:	01010413          	addi	s0,sp,16
    initialize();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	f84080e7          	jalr	-124(ra) # 80001abc <_Z10initializev>
    test();
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	fb0080e7          	jalr	-80(ra) # 80001af0 <_Z4testv>
    __putc('\n');
    80001b48:	00a00513          	li	a0,10
    80001b4c:	00007097          	auipc	ra,0x7
    80001b50:	960080e7          	jalr	-1696(ra) # 800084ac <__putc>
    return 0;
    80001b54:	00000513          	li	a0,0
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001b68:	00e53423          	sd	a4,8(a0)
    80001b6c:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    80001b70:	0000a717          	auipc	a4,0xa
    80001b74:	cc070713          	addi	a4,a4,-832 # 8000b830 <_ZN3TCB3cntE>
    80001b78:	00072783          	lw	a5,0(a4)
    80001b7c:	0017881b          	addiw	a6,a5,1
    80001b80:	01072023          	sw	a6,0(a4)
    80001b84:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001b88:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001b8c:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001b90:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001b94:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001b98:	00200793          	li	a5,2
    80001b9c:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001ba0:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001ba4:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001ba8:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001bac:	02058663          	beqz	a1,80001bd8 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001bb0:	fe010113          	addi	sp,sp,-32
    80001bb4:	00113c23          	sd	ra,24(sp)
    80001bb8:	00813823          	sd	s0,16(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	ce0080e7          	jalr	-800(ra) # 800028a0 <_ZN9Scheduler3putEP3TCB>
}
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	02010113          	addi	sp,sp,32
    80001bd4:	00008067          	ret
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	01213023          	sd	s2,0(sp)
    80001bf0:	02010413          	addi	s0,sp,32
    80001bf4:	00050493          	mv	s1,a0
    80001bf8:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80001bfc:	fffff097          	auipc	ra,0xfffff
    80001c00:	510080e7          	jalr	1296(ra) # 8000110c <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001c04:	01248a63          	beq	s1,s2,80001c18 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80001c08:	00890593          	addi	a1,s2,8
    80001c0c:	00848513          	addi	a0,s1,8
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	60c080e7          	jalr	1548(ra) # 8000121c <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	57c080e7          	jalr	1404(ra) # 80001194 <_ZN5RiscV13pop_registersEv>
}
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	01013403          	ld	s0,16(sp)
    80001c28:	00813483          	ld	s1,8(sp)
    80001c2c:	00013903          	ld	s2,0(sp)
    80001c30:	02010113          	addi	sp,sp,32
    80001c34:	00008067          	ret

0000000080001c38 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001c38:	fe010113          	addi	sp,sp,-32
    80001c3c:	00113c23          	sd	ra,24(sp)
    80001c40:	00813823          	sd	s0,16(sp)
    80001c44:	00913423          	sd	s1,8(sp)
    80001c48:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c4c:	0000a497          	auipc	s1,0xa
    80001c50:	bec4b483          	ld	s1,-1044(s1) # 8000b838 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001c54:	0184a783          	lw	a5,24(s1)
    80001c58:	00400713          	li	a4,4
    80001c5c:	00e78663          	beq	a5,a4,80001c68 <_ZN3TCB8dispatchEv+0x30>
    80001c60:	00200713          	li	a4,2
    80001c64:	02e79e63          	bne	a5,a4,80001ca0 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	c98080e7          	jalr	-872(ra) # 80002900 <_ZN9Scheduler3getEv>
    80001c70:	00050593          	mv	a1,a0
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	bca7b223          	sd	a0,-1084(a5) # 8000b838 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    80001c7c:	00a48863          	beq	s1,a0,80001c8c <_ZN3TCB8dispatchEv+0x54>
    80001c80:	00048513          	mv	a0,s1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	f58080e7          	jalr	-168(ra) # 80001bdc <_ZN3TCB5yieldEPS_S0_>
}
    80001c8c:	01813083          	ld	ra,24(sp)
    80001c90:	01013403          	ld	s0,16(sp)
    80001c94:	00813483          	ld	s1,8(sp)
    80001c98:	02010113          	addi	sp,sp,32
    80001c9c:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	bfc080e7          	jalr	-1028(ra) # 800028a0 <_ZN9Scheduler3putEP3TCB>
    80001cac:	fbdff06f          	j	80001c68 <_ZN3TCB8dispatchEv+0x30>

0000000080001cb0 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001cbc:	04053503          	ld	a0,64(a0)
    80001cc0:	00813403          	ld	s0,8(sp)
    80001cc4:	01010113          	addi	sp,sp,16
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00813423          	sd	s0,8(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001cd8:	04b53023          	sd	a1,64(a0)
}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001cf4:	04b53823          	sd	a1,80(a0)
}
    80001cf8:	00813403          	ld	s0,8(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001d10:	05053503          	ld	a0,80(a0)
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001d2c:	04b53423          	sd	a1,72(a0)
}
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001d48:	04853503          	ld	a0,72(a0)
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00813423          	sd	s0,8(sp)
    80001d60:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80001d64:	00b52c23          	sw	a1,24(a0)
}
    80001d68:	00813403          	ld	s0,8(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00113423          	sd	ra,8(sp)
    80001d7c:	00813023          	sd	s0,0(sp)
    80001d80:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001d84:	00400593          	li	a1,4
    80001d88:	0000a517          	auipc	a0,0xa
    80001d8c:	ab053503          	ld	a0,-1360(a0) # 8000b838 <_ZN3TCB7runningE>
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	fc8080e7          	jalr	-56(ra) # 80001d58 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	ea0080e7          	jalr	-352(ra) # 80001c38 <_ZN3TCB8dispatchEv>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	cec080e7          	jalr	-788(ra) # 80002aac <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001dc8:	0000a797          	auipc	a5,0xa
    80001dcc:	a707b783          	ld	a5,-1424(a5) # 8000b838 <_ZN3TCB7runningE>
    80001dd0:	0207b703          	ld	a4,32(a5)
    80001dd4:	0287b503          	ld	a0,40(a5)
    80001dd8:	000700e7          	jalr	a4
    thread_exit();
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	f98080e7          	jalr	-104(ra) # 80001d74 <_ZN3TCB11thread_exitEv>
}
    80001de4:	00813083          	ld	ra,8(sp)
    80001de8:	00013403          	ld	s0,0(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <_ZN3TCB5startEv>:

void TCB::start() {
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00113c23          	sd	ra,24(sp)
    80001dfc:	00813823          	sd	s0,16(sp)
    80001e00:	00913423          	sd	s1,8(sp)
    80001e04:	02010413          	addi	s0,sp,32
    80001e08:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	a94080e7          	jalr	-1388(ra) # 800028a0 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001e14:	0000a797          	auipc	a5,0xa
    80001e18:	a247b783          	ld	a5,-1500(a5) # 8000b838 <_ZN3TCB7runningE>
    80001e1c:	00078c63          	beqz	a5,80001e34 <_ZN3TCB5startEv+0x40>
}
    80001e20:	01813083          	ld	ra,24(sp)
    80001e24:	01013403          	ld	s0,16(sp)
    80001e28:	00813483          	ld	s1,8(sp)
    80001e2c:	02010113          	addi	sp,sp,32
    80001e30:	00008067          	ret
    if (!running) running = this;
    80001e34:	0000a797          	auipc	a5,0xa
    80001e38:	a097b223          	sd	s1,-1532(a5) # 8000b838 <_ZN3TCB7runningE>
}
    80001e3c:	fe5ff06f          	j	80001e20 <_ZN3TCB5startEv+0x2c>

0000000080001e40 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	a30080e7          	jalr	-1488(ra) # 80002880 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	62c080e7          	jalr	1580(ra) # 80002484 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e60:	00813083          	ld	ra,8(sp)
    80001e64:	00013403          	ld	s0,0(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	7f0080e7          	jalr	2032(ra) # 80002670 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001e98:	fa010113          	addi	sp,sp,-96
    80001e9c:	04113c23          	sd	ra,88(sp)
    80001ea0:	04813823          	sd	s0,80(sp)
    80001ea4:	04913423          	sd	s1,72(sp)
    80001ea8:	05213023          	sd	s2,64(sp)
    80001eac:	03313c23          	sd	s3,56(sp)
    80001eb0:	03413823          	sd	s4,48(sp)
    80001eb4:	03513423          	sd	s5,40(sp)
    80001eb8:	06010413          	addi	s0,sp,96
    80001ebc:	00050993          	mv	s3,a0
    80001ec0:	00058a13          	mv	s4,a1
    80001ec4:	00060a93          	mv	s5,a2
    80001ec8:	00068493          	mv	s1,a3
    Context context = {
    80001ecc:	00000797          	auipc	a5,0x0
    80001ed0:	ee478793          	addi	a5,a5,-284 # 80001db0 <_ZN3TCB16wrapper_functionEv>
    80001ed4:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001ed8:	04068663          	beqz	a3,80001f24 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001edc:	000017b7          	lui	a5,0x1
    80001ee0:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001ee4:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001ee8:	fa043703          	ld	a4,-96(s0)
    80001eec:	fae43823          	sd	a4,-80(s0)
    80001ef0:	faf43c23          	sd	a5,-72(s0)
    80001ef4:	05800513          	li	a0,88
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	f48080e7          	jalr	-184(ra) # 80001e40 <_ZN3TCBnwEm>
    80001f00:	00050913          	mv	s2,a0
    80001f04:	fb043703          	ld	a4,-80(s0)
    80001f08:	fb843783          	ld	a5,-72(s0)
    80001f0c:	00048693          	mv	a3,s1
    80001f10:	000a8613          	mv	a2,s5
    80001f14:	000a0593          	mv	a1,s4
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	c50080e7          	jalr	-944(ra) # 80001b68 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001f20:	0280006f          	j	80001f48 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0)
    80001f24:	00000793          	li	a5,0
    80001f28:	fc1ff06f          	j	80001ee8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001f2c:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001f30:	00090513          	mv	a0,s2
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	f3c080e7          	jalr	-196(ra) # 80001e70 <_ZN3TCBdlEPv>
    80001f3c:	00048513          	mv	a0,s1
    80001f40:	0000b097          	auipc	ra,0xb
    80001f44:	a58080e7          	jalr	-1448(ra) # 8000c998 <_Unwind_Resume>
    80001f48:	0129b023          	sd	s2,0(s3)
}
    80001f4c:	00000513          	li	a0,0
    80001f50:	05813083          	ld	ra,88(sp)
    80001f54:	05013403          	ld	s0,80(sp)
    80001f58:	04813483          	ld	s1,72(sp)
    80001f5c:	04013903          	ld	s2,64(sp)
    80001f60:	03813983          	ld	s3,56(sp)
    80001f64:	03013a03          	ld	s4,48(sp)
    80001f68:	02813a83          	ld	s5,40(sp)
    80001f6c:	06010113          	addi	sp,sp,96
    80001f70:	00008067          	ret

0000000080001f74 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00813423          	sd	s0,8(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001f80:	03853503          	ld	a0,56(a0)
    80001f84:	00813403          	ld	s0,8(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80001f9c:	01852503          	lw	a0,24(a0)
    80001fa0:	ffc50513          	addi	a0,a0,-4
}
    80001fa4:	00153513          	seqz	a0,a0
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
    80001fcc:	00009797          	auipc	a5,0x9
    80001fd0:	60c78793          	addi	a5,a5,1548 # 8000b5d8 <_ZTV6Thread+0x10>
    80001fd4:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001fd8:	00400593          	li	a1,4
    80001fdc:	00853503          	ld	a0,8(a0)
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	d78080e7          	jalr	-648(ra) # 80001d58 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001fe8:	0084b503          	ld	a0,8(s1)
    80001fec:	00050663          	beqz	a0,80001ff8 <_ZN6ThreadD1Ev+0x44>
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	e80080e7          	jalr	-384(ra) # 80001e70 <_ZN3TCBdlEPv>
}
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000200c:	00009797          	auipc	a5,0x9
    80002010:	5f478793          	addi	a5,a5,1524 # 8000b600 <_ZTV9Semaphore+0x10>
    80002014:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002018:	00853503          	ld	a0,8(a0)
    8000201c:	02050663          	beqz	a0,80002048 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	408080e7          	jalr	1032(ra) # 80001438 <_Z9sem_closeP3Sem>
}
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret
    80002048:	00008067          	ret

000000008000204c <_Znwm>:
void* operator new(size_t size){
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000205c:	fffff097          	auipc	ra,0xfffff
    80002060:	210080e7          	jalr	528(ra) # 8000126c <_Z9mem_allocm>
}
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	23c080e7          	jalr	572(ra) # 800012c0 <_Z8mem_freePv>
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000209c:	fe010113          	addi	sp,sp,-32
    800020a0:	00113c23          	sd	ra,24(sp)
    800020a4:	00813823          	sd	s0,16(sp)
    800020a8:	00913423          	sd	s1,8(sp)
    800020ac:	02010413          	addi	s0,sp,32
    800020b0:	00050493          	mv	s1,a0
}
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	f00080e7          	jalr	-256(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800020bc:	00048513          	mv	a0,s1
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	fb4080e7          	jalr	-76(ra) # 80002074 <_ZdlPv>
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	02010113          	addi	sp,sp,32
    800020d8:	00008067          	ret

00000000800020dc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00113c23          	sd	ra,24(sp)
    800020e4:	00813823          	sd	s0,16(sp)
    800020e8:	00913423          	sd	s1,8(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00050493          	mv	s1,a0
}
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	f18080e7          	jalr	-232(ra) # 8000200c <_ZN9SemaphoreD1Ev>
    800020fc:	00048513          	mv	a0,s1
    80002100:	00000097          	auipc	ra,0x0
    80002104:	f74080e7          	jalr	-140(ra) # 80002074 <_ZdlPv>
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret

000000008000211c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00113423          	sd	ra,8(sp)
    80002124:	00813023          	sd	s0,0(sp)
    80002128:	01010413          	addi	s0,sp,16
    8000212c:	00009797          	auipc	a5,0x9
    80002130:	4ac78793          	addi	a5,a5,1196 # 8000b5d8 <_ZTV6Thread+0x10>
    80002134:	00f53023          	sd	a5,0(a0)
    80002138:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    8000213c:	00850513          	addi	a0,a0,8
    80002140:	fffff097          	auipc	ra,0xfffff
    80002144:	1cc080e7          	jalr	460(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002148:	00813083          	ld	ra,8(sp)
    8000214c:	00013403          	ld	s0,0(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_ZN6Thread5startEv>:
int Thread::start() {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80002168:	00853503          	ld	a0,8(a0)
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	c88080e7          	jalr	-888(ra) # 80001df4 <_ZN3TCB5startEv>
}
    80002174:	00000513          	li	a0,0
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	248080e7          	jalr	584(ra) # 800013e0 <_Z15thread_dispatchv>
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	304080e7          	jalr	772(ra) # 800014c4 <_Z10time_sleepm>
}
    800021c8:	00000513          	li	a0,0
    800021cc:	00813083          	ld	ra,8(sp)
    800021d0:	00013403          	ld	s0,0(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00813423          	sd	s0,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    800021e8:	00009797          	auipc	a5,0x9
    800021ec:	3f078793          	addi	a5,a5,1008 # 8000b5d8 <_ZTV6Thread+0x10>
    800021f0:	00f53023          	sd	a5,0(a0)
    800021f4:	00053423          	sd	zero,8(a0)
}
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00113423          	sd	ra,8(sp)
    8000220c:	00813023          	sd	s0,0(sp)
    80002210:	01010413          	addi	s0,sp,16
    80002214:	00009797          	auipc	a5,0x9
    80002218:	3ec78793          	addi	a5,a5,1004 # 8000b600 <_ZTV9Semaphore+0x10>
    8000221c:	00f53023          	sd	a5,0(a0)
    80002220:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002224:	00850513          	addi	a0,a0,8
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	1f4080e7          	jalr	500(ra) # 8000141c <_Z8sem_openPP3Semj>
}
    80002230:	00813083          	ld	ra,8(sp)
    80002234:	00013403          	ld	s0,0(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret

0000000080002240 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002240:	00853503          	ld	a0,8(a0)
    80002244:	02050663          	beqz	a0,80002270 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00113423          	sd	ra,8(sp)
    80002250:	00813023          	sd	s0,0(sp)
    80002254:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	1fc080e7          	jalr	508(ra) # 80001454 <_Z8sem_waitP3Sem>
    return -1;
}
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret
    return -1;
    80002270:	fff00513          	li	a0,-1
}
    80002274:	00008067          	ret

0000000080002278 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002278:	00853503          	ld	a0,8(a0)
    8000227c:	02050663          	beqz	a0,800022a8 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00113423          	sd	ra,8(sp)
    80002288:	00813023          	sd	s0,0(sp)
    8000228c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	1e0080e7          	jalr	480(ra) # 80001470 <_Z10sem_signalP3Sem>
    return -1;
}
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret
    return -1;
    800022a8:	fff00513          	li	a0,-1
}
    800022ac:	00008067          	ret

00000000800022b0 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
    return 0;
}
    800022bc:	00000513          	li	a0,0
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    return 0;
}
    800022d8:	00000513          	li	a0,0
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16

}
    800022f4:	00813403          	ld	s0,8(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	02010413          	addi	s0,sp,32
    80002314:	00050493          	mv	s1,a0
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	ec4080e7          	jalr	-316(ra) # 800021dc <_ZN6ThreadC1Ev>
    80002320:	00009797          	auipc	a5,0x9
    80002324:	28878793          	addi	a5,a5,648 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002328:	00f4b023          	sd	a5,0(s1)

}
    8000232c:	01813083          	ld	ra,24(sp)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	00813483          	ld	s1,8(sp)
    80002338:	02010113          	addi	sp,sp,32
    8000233c:	00008067          	ret

0000000080002340 <_ZN7Console4getcEv>:

char Console::getc() {
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00113423          	sd	ra,8(sp)
    80002348:	00813023          	sd	s0,0(sp)
    8000234c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	190080e7          	jalr	400(ra) # 800014e0 <_Z4getcv>
}
    80002358:	00813083          	ld	ra,8(sp)
    8000235c:	00013403          	ld	s0,0(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	1b4080e7          	jalr	436(ra) # 8000152c <_Z4putcc>
}
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00813423          	sd	s0,8(sp)
    800023b0:	01010413          	addi	s0,sp,16
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00009797          	auipc	a5,0x9
    800023d4:	1d878793          	addi	a5,a5,472 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    800023d8:	00f53023          	sd	a5,0(a0)
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	bd8080e7          	jalr	-1064(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN14PeriodicThreadD0Ev>:
    800023f4:	fe010113          	addi	sp,sp,-32
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	00813823          	sd	s0,16(sp)
    80002400:	00913423          	sd	s1,8(sp)
    80002404:	02010413          	addi	s0,sp,32
    80002408:	00050493          	mv	s1,a0
    8000240c:	00009797          	auipc	a5,0x9
    80002410:	19c78793          	addi	a5,a5,412 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002414:	00f53023          	sd	a5,0(a0)
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	b9c080e7          	jalr	-1124(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	c50080e7          	jalr	-944(ra) # 80002074 <_ZdlPv>
    8000242c:	01813083          	ld	ra,24(sp)
    80002430:	01013403          	ld	s0,16(sp)
    80002434:	00813483          	ld	s1,8(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret

0000000080002440 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000244c:	00853783          	ld	a5,8(a0)
    80002450:	02078463          	beqz	a5,80002478 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002454:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002458:	01053783          	ld	a5,16(a0)
    8000245c:	00078863          	beqz	a5,8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002460:	00060463          	beqz	a2,80002468 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002464:	00853583          	ld	a1,8(a0)
    80002468:	00b7b423          	sd	a1,8(a5)
}
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret
    else freeSegHead = nextSeg;
    80002478:	00009797          	auipc	a5,0x9
    8000247c:	3cb7b823          	sd	a1,976(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002480:	fd9ff06f          	j	80002458 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080002484 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	01213023          	sd	s2,0(sp)
    80002498:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    8000249c:	0e050e63          	beqz	a0,80002598 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024a0:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024a4:	00009497          	auipc	s1,0x9
    800024a8:	3a44b483          	ld	s1,932(s1) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024ac:	0a048e63          	beqz	s1,80002568 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800024b0:	0004b783          	ld	a5,0(s1)
    800024b4:	0527e463          	bltu	a5,s2,800024fc <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024b8:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800024bc:	01700713          	li	a4,23
    800024c0:	04f76263          	bltu	a4,a5,80002504 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800024c4:	00000613          	li	a2,0
    800024c8:	0104b583          	ld	a1,16(s1)
    800024cc:	00048513          	mv	a0,s1
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	f70080e7          	jalr	-144(ra) # 80002440 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024d8:	00009797          	auipc	a5,0x9
    800024dc:	3787b783          	ld	a5,888(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    800024e0:	04078863          	beqz	a5,80002530 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    800024e4:	0497fa63          	bgeu	a5,s1,80002538 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024e8:	00078713          	mv	a4,a5
    800024ec:	0107b783          	ld	a5,16(a5)
    800024f0:	04078663          	beqz	a5,8000253c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800024f4:	fe97eae3          	bltu	a5,s1,800024e8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    800024f8:	0440006f          	j	8000253c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    800024fc:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002500:	fadff06f          	j	800024ac <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002504:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002508:	0084b703          	ld	a4,8(s1)
    8000250c:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002510:	0104b703          	ld	a4,16(s1)
    80002514:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002518:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    8000251c:	00100613          	li	a2,1
    80002520:	00048513          	mv	a0,s1
    80002524:	00000097          	auipc	ra,0x0
    80002528:	f1c080e7          	jalr	-228(ra) # 80002440 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    8000252c:	fadff06f          	j	800024d8 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80002530:	00078713          	mv	a4,a5
    80002534:	0080006f          	j	8000253c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002538:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    8000253c:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002540:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002544:	04070063          	beqz	a4,80002584 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002548:	01073783          	ld	a5,16(a4)
    8000254c:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002550:	02070e63          	beqz	a4,8000258c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002554:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002558:	0104b783          	ld	a5,16(s1)
    8000255c:	00078463          	beqz	a5,80002564 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002560:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002564:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002568:	00048513          	mv	a0,s1
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00813483          	ld	s1,8(sp)
    80002578:	00013903          	ld	s2,0(sp)
    8000257c:	02010113          	addi	sp,sp,32
    80002580:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002584:	00070793          	mv	a5,a4
    80002588:	fc5ff06f          	j	8000254c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    8000258c:	00009797          	auipc	a5,0x9
    80002590:	2c97b223          	sd	s1,708(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    80002594:	fc5ff06f          	j	80002558 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80002598:	00000493          	li	s1,0
    8000259c:	fcdff06f          	j	80002568 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800025a0 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800025a0:	00009797          	auipc	a5,0x9
    800025a4:	2b87b783          	ld	a5,696(a5) # 8000b858 <_ZN15MemoryAllocator8instanceE>
    800025a8:	00078463          	beqz	a5,800025b0 <_ZN15MemoryAllocator10initializeEv+0x10>
    800025ac:	00008067          	ret
void MemoryAllocator::initialize() {
    800025b0:	fe010113          	addi	sp,sp,-32
    800025b4:	00113c23          	sd	ra,24(sp)
    800025b8:	00813823          	sd	s0,16(sp)
    800025bc:	00913423          	sd	s1,8(sp)
    800025c0:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800025c4:	00009797          	auipc	a5,0x9
    800025c8:	1fc7b783          	ld	a5,508(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025cc:	0007b783          	ld	a5,0(a5)
    800025d0:	00009497          	auipc	s1,0x9
    800025d4:	27848493          	addi	s1,s1,632 # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    800025d8:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800025dc:	00009717          	auipc	a4,0x9
    800025e0:	20473703          	ld	a4,516(a4) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025e4:	00073703          	ld	a4,0(a4)
    800025e8:	40f70733          	sub	a4,a4,a5
    800025ec:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800025f0:	0004b783          	ld	a5,0(s1)
    800025f4:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800025f8:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    800025fc:	00100513          	li	a0,1
    80002600:	00000097          	auipc	ra,0x0
    80002604:	e84080e7          	jalr	-380(ra) # 80002484 <_ZN15MemoryAllocator9mem_allocEm>
    80002608:	00a4b823          	sd	a0,16(s1)
}
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    8000262c:	01053783          	ld	a5,16(a0)
    80002630:	00078863          	beqz	a5,80002640 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002634:	00053703          	ld	a4,0(a0)
    80002638:	00e506b3          	add	a3,a0,a4
    8000263c:	00d78863          	beq	a5,a3,8000264c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002640:	00813403          	ld	s0,8(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    8000264c:	0007b683          	ld	a3,0(a5)
    80002650:	00d70733          	add	a4,a4,a3
    80002654:	01870713          	addi	a4,a4,24
    80002658:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    8000265c:	0107b783          	ld	a5,16(a5)
    80002660:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002664:	fc078ee3          	beqz	a5,80002640 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002668:	00a7b423          	sd	a0,8(a5)
}
    8000266c:	fd5ff06f          	j	80002640 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002670 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002670:	14050263          	beqz	a0,800027b4 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002674:	fd010113          	addi	sp,sp,-48
    80002678:	02113423          	sd	ra,40(sp)
    8000267c:	02813023          	sd	s0,32(sp)
    80002680:	00913c23          	sd	s1,24(sp)
    80002684:	01213823          	sd	s2,16(sp)
    80002688:	01313423          	sd	s3,8(sp)
    8000268c:	03010413          	addi	s0,sp,48
    80002690:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002694:	00009797          	auipc	a5,0x9
    80002698:	12c7b783          	ld	a5,300(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000269c:	0007b783          	ld	a5,0(a5)
    800026a0:	10f56e63          	bltu	a0,a5,800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800026a4:	00009797          	auipc	a5,0x9
    800026a8:	13c7b783          	ld	a5,316(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026ac:	0007b783          	ld	a5,0(a5)
    800026b0:	10a7ea63          	bltu	a5,a0,800027c4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800026b4:	00009797          	auipc	a5,0x9
    800026b8:	19c7b783          	ld	a5,412(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    800026bc:	10078863          	beqz	a5,800027cc <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800026c0:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026c4:	00078863          	beqz	a5,800026d4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800026c8:	08978e63          	beq	a5,s1,80002764 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800026cc:	0107b783          	ld	a5,16(a5)
    800026d0:	ff5ff06f          	j	800026c4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800026d4:	00000793          	li	a5,0
    if (!found) return -3;
    800026d8:	0e078e63          	beqz	a5,800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800026dc:	00000613          	li	a2,0
    800026e0:	ff893583          	ld	a1,-8(s2)
    800026e4:	00048513          	mv	a0,s1
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	d58080e7          	jalr	-680(ra) # 80002440 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    800026f0:	00009797          	auipc	a5,0x9
    800026f4:	1587b783          	ld	a5,344(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    800026f8:	06078a63          	beqz	a5,8000276c <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800026fc:	08f4e463          	bltu	s1,a5,80002784 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002700:	00078993          	mv	s3,a5
    80002704:	0107b783          	ld	a5,16(a5)
    80002708:	00078463          	beqz	a5,80002710 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000270c:	fe97eae3          	bltu	a5,s1,80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002710:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002714:	0109b783          	ld	a5,16(s3)
    80002718:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    8000271c:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002720:	ff893783          	ld	a5,-8(s2)
    80002724:	00078463          	beqz	a5,8000272c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002728:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    8000272c:	00048513          	mv	a0,s1
    80002730:	00000097          	auipc	ra,0x0
    80002734:	ef0080e7          	jalr	-272(ra) # 80002620 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002738:	00098513          	mv	a0,s3
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	ee4080e7          	jalr	-284(ra) # 80002620 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002744:	00000513          	li	a0,0
}
    80002748:	02813083          	ld	ra,40(sp)
    8000274c:	02013403          	ld	s0,32(sp)
    80002750:	01813483          	ld	s1,24(sp)
    80002754:	01013903          	ld	s2,16(sp)
    80002758:	00813983          	ld	s3,8(sp)
    8000275c:	03010113          	addi	sp,sp,48
    80002760:	00008067          	ret
            found = true;
    80002764:	00100793          	li	a5,1
    80002768:	f71ff06f          	j	800026d8 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    8000276c:	00009797          	auipc	a5,0x9
    80002770:	0c97be23          	sd	s1,220(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002774:	fe093c23          	sd	zero,-8(s2)
    80002778:	fe093823          	sd	zero,-16(s2)
    return 0;
    8000277c:	00000513          	li	a0,0
    80002780:	fc9ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80002784:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002788:	00009797          	auipc	a5,0x9
    8000278c:	0c078793          	addi	a5,a5,192 # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002790:	0007b703          	ld	a4,0(a5)
    80002794:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002798:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    8000279c:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	e7c080e7          	jalr	-388(ra) # 80002620 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027ac:	00000513          	li	a0,0
    800027b0:	f99ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027b4:	fff00513          	li	a0,-1
}
    800027b8:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027bc:	fff00513          	li	a0,-1
    800027c0:	f89ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800027c4:	fff00513          	li	a0,-1
    800027c8:	f81ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800027cc:	ffe00513          	li	a0,-2
    800027d0:	f79ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800027d4:	ffd00513          	li	a0,-3
    800027d8:	f71ff06f          	j	80002748 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800027dc <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	02010413          	addi	s0,sp,32
    __putc('\n');
    800027f0:	00a00513          	li	a0,10
    800027f4:	00006097          	auipc	ra,0x6
    800027f8:	cb8080e7          	jalr	-840(ra) # 800084ac <__putc>
    __putc('M');
    800027fc:	04d00513          	li	a0,77
    80002800:	00006097          	auipc	ra,0x6
    80002804:	cac080e7          	jalr	-852(ra) # 800084ac <__putc>
    __putc(':');
    80002808:	03a00513          	li	a0,58
    8000280c:	00006097          	auipc	ra,0x6
    80002810:	ca0080e7          	jalr	-864(ra) # 800084ac <__putc>
    __putc(' ');
    80002814:	02000513          	li	a0,32
    80002818:	00006097          	auipc	ra,0x6
    8000281c:	c94080e7          	jalr	-876(ra) # 800084ac <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002820:	00009497          	auipc	s1,0x9
    80002824:	0284b483          	ld	s1,40(s1) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002828:	00048c63          	beqz	s1,80002840 <_ZN15MemoryAllocator5printEv+0x64>
    8000282c:	06600513          	li	a0,102
    80002830:	00006097          	auipc	ra,0x6
    80002834:	c7c080e7          	jalr	-900(ra) # 800084ac <__putc>
    80002838:	0104b483          	ld	s1,16(s1)
    8000283c:	fedff06f          	j	80002828 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002840:	00900513          	li	a0,9
    80002844:	00006097          	auipc	ra,0x6
    80002848:	c68080e7          	jalr	-920(ra) # 800084ac <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    8000284c:	00009497          	auipc	s1,0x9
    80002850:	0044b483          	ld	s1,4(s1) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    80002854:	00048c63          	beqz	s1,8000286c <_ZN15MemoryAllocator5printEv+0x90>
    80002858:	07500513          	li	a0,117
    8000285c:	00006097          	auipc	ra,0x6
    80002860:	c50080e7          	jalr	-944(ra) # 800084ac <__putc>
    80002864:	0104b483          	ld	s1,16(s1)
    80002868:	fedff06f          	j	80002854 <_ZN15MemoryAllocator5printEv+0x78>
}
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00813483          	ld	s1,8(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret

0000000080002880 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000288c:	05750513          	addi	a0,a0,87
}
    80002890:	00655513          	srli	a0,a0,0x6
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	02010413          	addi	s0,sp,32
    800028b4:	00050493          	mv	s1,a0
    if (tail_ready) {
    800028b8:	00009517          	auipc	a0,0x9
    800028bc:	fa853503          	ld	a0,-88(a0) # 8000b860 <_ZN9Scheduler10tail_readyE>
    800028c0:	02051463          	bnez	a0,800028e8 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	f9c78793          	addi	a5,a5,-100 # 8000b860 <_ZN9Scheduler10tail_readyE>
    800028cc:	0097b023          	sd	s1,0(a5)
    800028d0:	0097b423          	sd	s1,8(a5)
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	02010113          	addi	sp,sp,32
    800028e4:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800028e8:	00048593          	mv	a1,s1
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	3e0080e7          	jalr	992(ra) # 80001ccc <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	f697b623          	sd	s1,-148(a5) # 8000b860 <_ZN9Scheduler10tail_readyE>
        return;
    800028fc:	fd9ff06f          	j	800028d4 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080002900 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002914:	00009497          	auipc	s1,0x9
    80002918:	f544b483          	ld	s1,-172(s1) # 8000b868 <_ZN9Scheduler10head_readyE>
    8000291c:	00048c63          	beqz	s1,80002934 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002920:	00048513          	mv	a0,s1
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	38c080e7          	jalr	908(ra) # 80001cb0 <_ZNK3TCB14get_next_readyEv>
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	f2a7be23          	sd	a0,-196(a5) # 8000b868 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002934:	00048513          	mv	a0,s1
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    8000294c:	fc010113          	addi	sp,sp,-64
    80002950:	02113c23          	sd	ra,56(sp)
    80002954:	02813823          	sd	s0,48(sp)
    80002958:	02913423          	sd	s1,40(sp)
    8000295c:	03213023          	sd	s2,32(sp)
    80002960:	01313c23          	sd	s3,24(sp)
    80002964:	01413823          	sd	s4,16(sp)
    80002968:	01513423          	sd	s5,8(sp)
    8000296c:	04010413          	addi	s0,sp,64
    80002970:	00050a93          	mv	s5,a0
    80002974:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80002978:	00100593          	li	a1,1
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	3dc080e7          	jalr	988(ra) # 80001d58 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    80002984:	00009497          	auipc	s1,0x9
    80002988:	eec4b483          	ld	s1,-276(s1) # 8000b870 <_ZN9Scheduler13head_sleepingE>
    8000298c:	02048e63          	beqz	s1,800029c8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80002990:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002994:	00000a13          	li	s4,0
    while (tmp) {
    80002998:	04048c63          	beqz	s1,800029f0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    8000299c:	00048513          	mv	a0,s1
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	39c080e7          	jalr	924(ra) # 80001d3c <_ZNK3TCB17get_time_to_sleepEv>
    800029a8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800029ac:	0729e463          	bltu	s3,s2,80002a14 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    800029b0:	00048513          	mv	a0,s1
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	350080e7          	jalr	848(ra) # 80001d04 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    800029bc:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800029c0:	00050493          	mv	s1,a0
    while (tmp) {
    800029c4:	fd5ff06f          	j	80002998 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    800029c8:	00009797          	auipc	a5,0x9
    800029cc:	eb57b423          	sd	s5,-344(a5) # 8000b870 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    800029d0:	00000593          	li	a1,0
    800029d4:	000a8513          	mv	a0,s5
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	310080e7          	jalr	784(ra) # 80001ce8 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    800029e0:	00098593          	mv	a1,s3
    800029e4:	000a8513          	mv	a0,s5
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	338080e7          	jalr	824(ra) # 80001d20 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    800029f0:	03813083          	ld	ra,56(sp)
    800029f4:	03013403          	ld	s0,48(sp)
    800029f8:	02813483          	ld	s1,40(sp)
    800029fc:	02013903          	ld	s2,32(sp)
    80002a00:	01813983          	ld	s3,24(sp)
    80002a04:	01013a03          	ld	s4,16(sp)
    80002a08:	00813a83          	ld	s5,8(sp)
    80002a0c:	04010113          	addi	sp,sp,64
    80002a10:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002a14:	000a0a63          	beqz	s4,80002a28 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002a18:	000a0513          	mv	a0,s4
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	320080e7          	jalr	800(ra) # 80001d3c <_ZNK3TCB17get_time_to_sleepEv>
    80002a24:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002a28:	00098593          	mv	a1,s3
    80002a2c:	000a8513          	mv	a0,s5
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	2f0080e7          	jalr	752(ra) # 80001d20 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002a38:	00048593          	mv	a1,s1
    80002a3c:	000a8513          	mv	a0,s5
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	2a8080e7          	jalr	680(ra) # 80001ce8 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002a48:	040a0c63          	beqz	s4,80002aa0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002a4c:	000a8593          	mv	a1,s5
    80002a50:	000a0513          	mv	a0,s4
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	294080e7          	jalr	660(ra) # 80001ce8 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	2a4080e7          	jalr	676(ra) # 80001d04 <_ZNK3TCB17get_next_sleepingEv>
    80002a68:	00050493          	mv	s1,a0
    80002a6c:	f80482e3          	beqz	s1,800029f0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002a70:	00048513          	mv	a0,s1
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	2c8080e7          	jalr	712(ra) # 80001d3c <_ZNK3TCB17get_time_to_sleepEv>
    80002a7c:	413505b3          	sub	a1,a0,s3
    80002a80:	00048513          	mv	a0,s1
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	29c080e7          	jalr	668(ra) # 80001d20 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	274080e7          	jalr	628(ra) # 80001d04 <_ZNK3TCB17get_next_sleepingEv>
    80002a98:	00050493          	mv	s1,a0
    80002a9c:	fd1ff06f          	j	80002a6c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	dd57b823          	sd	s5,-560(a5) # 8000b870 <_ZN9Scheduler13head_sleepingE>
    80002aa8:	fb5ff06f          	j	80002a5c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002aac <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00813423          	sd	s0,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002ab8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002abc:	10200073          	sret
}
    80002ac0:	00813403          	ld	s0,8(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002acc:	fe010113          	addi	sp,sp,-32
    80002ad0:	00113c23          	sd	ra,24(sp)
    80002ad4:	00813823          	sd	s0,16(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002adc:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002ae0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ae4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ae8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002aec:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002af0:	14202773          	csrr	a4,scause
    80002af4:	fee43423          	sd	a4,-24(s0)
    return scause;
    80002af8:	fe843803          	ld	a6,-24(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002afc:	fff00713          	li	a4,-1
    80002b00:	03f71713          	slli	a4,a4,0x3f
    80002b04:	00170713          	addi	a4,a4,1
    80002b08:	02e80463          	beq	a6,a4,80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002b0c:	fff00713          	li	a4,-1
    80002b10:	03f71713          	slli	a4,a4,0x3f
    80002b14:	00970713          	addi	a4,a4,9
    80002b18:	02e80463          	beq	a6,a4,80002b40 <_ZN5RiscV22handle_supervisor_trapEv+0x74>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002b1c:	00200713          	li	a4,2
    80002b20:	02e80663          	beq	a6,a4,80002b4c <_ZN5RiscV22handle_supervisor_trapEv+0x80>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002b24:	ff880813          	addi	a6,a6,-8
    80002b28:	00100713          	li	a4,1
    80002b2c:	03077663          	bgeu	a4,a6,80002b58 <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
                break;
            default:
                break;
        }
    }
    80002b30:	01813083          	ld	ra,24(sp)
    80002b34:	01013403          	ld	s0,16(sp)
    80002b38:	02010113          	addi	sp,sp,32
    80002b3c:	00008067          	ret
        console_handler();
    80002b40:	00006097          	auipc	ra,0x6
    80002b44:	9e0080e7          	jalr	-1568(ra) # 80008520 <console_handler>
    80002b48:	fe9ff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002b4c:	00100793          	li	a5,1
    80002b50:	00078513          	mv	a0,a5
        return;
    80002b54:	fddff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
        switch(syscall_code) {
    80002b58:	01300713          	li	a4,19
    80002b5c:	fcf76ae3          	bltu	a4,a5,80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
    80002b60:	00279793          	slli	a5,a5,0x2
    80002b64:	00006717          	auipc	a4,0x6
    80002b68:	4bc70713          	addi	a4,a4,1212 # 80009020 <CONSOLE_STATUS+0x10>
    80002b6c:	00e787b3          	add	a5,a5,a4
    80002b70:	0007a783          	lw	a5,0(a5)
    80002b74:	00e787b3          	add	a5,a5,a4
    80002b78:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	908080e7          	jalr	-1784(ra) # 80002484 <_ZN15MemoryAllocator9mem_allocEm>
                break;
    80002b84:	fadff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                MemoryAllocator::mem_free((void *) a1);
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	ae8080e7          	jalr	-1304(ra) # 80002670 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002b90:	fa1ff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	304080e7          	jalr	772(ra) # 80001e98 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002b9c:	f95ff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_exit();
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	1d4080e7          	jalr	468(ra) # 80001d74 <_ZN3TCB11thread_exitEv>
                break;
    80002ba8:	f89ff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::dispatch();
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	08c080e7          	jalr	140(ra) # 80001c38 <_ZN3TCB8dispatchEv>
                break;
    80002bb4:	f7dff06f          	j	80002b30 <_ZN5RiscV22handle_supervisor_trapEv+0x64>

0000000080002bb8 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002bc4:	00053503          	ld	a0,0(a0)
    80002bc8:	00050463          	beqz	a0,80002bd0 <_ZN10ThreadList9get_firstEv+0x18>
    80002bcc:	00053503          	ld	a0,0(a0)
}
    80002bd0:	00813403          	ld	s0,8(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	00813023          	sd	s0,0(sp)
    80002be8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	c94080e7          	jalr	-876(ra) # 80002880 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	890080e7          	jalr	-1904(ra) # 80002484 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002bfc:	00813083          	ld	ra,8(sp)
    80002c00:	00013403          	ld	s0,0(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002c0c:	fe010113          	addi	sp,sp,-32
    80002c10:	00113c23          	sd	ra,24(sp)
    80002c14:	00813823          	sd	s0,16(sp)
    80002c18:	00913423          	sd	s1,8(sp)
    80002c1c:	01213023          	sd	s2,0(sp)
    80002c20:	02010413          	addi	s0,sp,32
    80002c24:	00050493          	mv	s1,a0
    80002c28:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c2c:	01000513          	li	a0,16
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	fac080e7          	jalr	-84(ra) # 80002bdc <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80002c38:	01253023          	sd	s2,0(a0)
    80002c3c:	00053423          	sd	zero,8(a0)
    80002c40:	0004b783          	ld	a5,0(s1)
    80002c44:	02078263          	beqz	a5,80002c68 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002c48:	00a4b023          	sd	a0,0(s1)
    80002c4c:	00a4b423          	sd	a0,8(s1)
}
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	00013903          	ld	s2,0(sp)
    80002c60:	02010113          	addi	sp,sp,32
    80002c64:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002c68:	0084b783          	ld	a5,8(s1)
    80002c6c:	00a7b423          	sd	a0,8(a5)
    80002c70:	fddff06f          	j	80002c4c <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002c74 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002c74:	fe010113          	addi	sp,sp,-32
    80002c78:	00113c23          	sd	ra,24(sp)
    80002c7c:	00813823          	sd	s0,16(sp)
    80002c80:	00913423          	sd	s1,8(sp)
    80002c84:	01213023          	sd	s2,0(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00050493          	mv	s1,a0
    80002c90:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002c94:	01000513          	li	a0,16
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	f44080e7          	jalr	-188(ra) # 80002bdc <_ZN10ThreadList4NodenwEm>
    80002ca0:	01253023          	sd	s2,0(a0)
    80002ca4:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002ca8:	0004b783          	ld	a5,0(s1)
    80002cac:	00f53423          	sd	a5,8(a0)
    head = node;
    80002cb0:	00a4b023          	sd	a0,0(s1)
}
    80002cb4:	01813083          	ld	ra,24(sp)
    80002cb8:	01013403          	ld	s0,16(sp)
    80002cbc:	00813483          	ld	s1,8(sp)
    80002cc0:	00013903          	ld	s2,0(sp)
    80002cc4:	02010113          	addi	sp,sp,32
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002ccc:	ff010113          	addi	sp,sp,-16
    80002cd0:	00113423          	sd	ra,8(sp)
    80002cd4:	00813023          	sd	s0,0(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	994080e7          	jalr	-1644(ra) # 80002670 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002ce4:	00813083          	ld	ra,8(sp)
    80002ce8:	00013403          	ld	s0,0(sp)
    80002cec:	01010113          	addi	sp,sp,16
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00113c23          	sd	ra,24(sp)
    80002cfc:	00813823          	sd	s0,16(sp)
    80002d00:	00913423          	sd	s1,8(sp)
    80002d04:	02010413          	addi	s0,sp,32
    80002d08:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002d0c:	00053503          	ld	a0,0(a0)
    80002d10:	02050a63          	beqz	a0,80002d44 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002d14:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002d18:	00853703          	ld	a4,8(a0)
    80002d1c:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002d20:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002d24:	00000097          	auipc	ra,0x0
    80002d28:	fa8080e7          	jalr	-88(ra) # 80002ccc <_ZN10ThreadList4NodedlEPv>
}
    80002d2c:	00048513          	mv	a0,s1
    80002d30:	01813083          	ld	ra,24(sp)
    80002d34:	01013403          	ld	s0,16(sp)
    80002d38:	00813483          	ld	s1,8(sp)
    80002d3c:	02010113          	addi	sp,sp,32
    80002d40:	00008067          	ret
    if (!head) return nullptr;
    80002d44:	00050493          	mv	s1,a0
    80002d48:	fe5ff06f          	j	80002d2c <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002d4c <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00113c23          	sd	ra,24(sp)
    80002d54:	00813823          	sd	s0,16(sp)
    80002d58:	00913423          	sd	s1,8(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    80002d60:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002d64:	00048513          	mv	a0,s1
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	e50080e7          	jalr	-432(ra) # 80002bb8 <_ZN10ThreadList9get_firstEv>
    80002d70:	00050a63          	beqz	a0,80002d84 <_ZN10ThreadList4freeEv+0x38>
    80002d74:	00048513          	mv	a0,s1
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	f7c080e7          	jalr	-132(ra) # 80002cf4 <_ZN10ThreadList12remove_firstEv>
    80002d80:	fe5ff06f          	j	80002d64 <_ZN10ThreadList4freeEv+0x18>
}
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	02010113          	addi	sp,sp,32
    80002d94:	00008067          	ret

0000000080002d98 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	01213023          	sd	s2,0(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002db4:	00000913          	li	s2,0
    80002db8:	00c0006f          	j	80002dc4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	624080e7          	jalr	1572(ra) # 800013e0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	71c080e7          	jalr	1820(ra) # 800014e0 <_Z4getcv>
    80002dcc:	0005059b          	sext.w	a1,a0
    80002dd0:	01b00793          	li	a5,27
    80002dd4:	02f58a63          	beq	a1,a5,80002e08 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002dd8:	0084b503          	ld	a0,8(s1)
    80002ddc:	00003097          	auipc	ra,0x3
    80002de0:	384080e7          	jalr	900(ra) # 80006160 <_ZN6Buffer3putEi>
        i++;
    80002de4:	0019071b          	addiw	a4,s2,1
    80002de8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002dec:	0004a683          	lw	a3,0(s1)
    80002df0:	0026979b          	slliw	a5,a3,0x2
    80002df4:	00d787bb          	addw	a5,a5,a3
    80002df8:	0017979b          	slliw	a5,a5,0x1
    80002dfc:	02f767bb          	remw	a5,a4,a5
    80002e00:	fc0792e3          	bnez	a5,80002dc4 <_ZL16producerKeyboardPv+0x2c>
    80002e04:	fb9ff06f          	j	80002dbc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e08:	00100793          	li	a5,1
    80002e0c:	00009717          	auipc	a4,0x9
    80002e10:	a6f72623          	sw	a5,-1428(a4) # 8000b878 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e14:	02100593          	li	a1,33
    80002e18:	0084b503          	ld	a0,8(s1)
    80002e1c:	00003097          	auipc	ra,0x3
    80002e20:	344080e7          	jalr	836(ra) # 80006160 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e24:	0104b503          	ld	a0,16(s1)
    80002e28:	ffffe097          	auipc	ra,0xffffe
    80002e2c:	648080e7          	jalr	1608(ra) # 80001470 <_Z10sem_signalP3Sem>
}
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	00013903          	ld	s2,0(sp)
    80002e40:	02010113          	addi	sp,sp,32
    80002e44:	00008067          	ret

0000000080002e48 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e48:	fe010113          	addi	sp,sp,-32
    80002e4c:	00113c23          	sd	ra,24(sp)
    80002e50:	00813823          	sd	s0,16(sp)
    80002e54:	00913423          	sd	s1,8(sp)
    80002e58:	01213023          	sd	s2,0(sp)
    80002e5c:	02010413          	addi	s0,sp,32
    80002e60:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e64:	00000913          	li	s2,0
    80002e68:	00c0006f          	j	80002e74 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	574080e7          	jalr	1396(ra) # 800013e0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e74:	00009797          	auipc	a5,0x9
    80002e78:	a047a783          	lw	a5,-1532(a5) # 8000b878 <_ZL9threadEnd>
    80002e7c:	02079e63          	bnez	a5,80002eb8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e80:	0004a583          	lw	a1,0(s1)
    80002e84:	0305859b          	addiw	a1,a1,48
    80002e88:	0084b503          	ld	a0,8(s1)
    80002e8c:	00003097          	auipc	ra,0x3
    80002e90:	2d4080e7          	jalr	724(ra) # 80006160 <_ZN6Buffer3putEi>
        i++;
    80002e94:	0019071b          	addiw	a4,s2,1
    80002e98:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e9c:	0004a683          	lw	a3,0(s1)
    80002ea0:	0026979b          	slliw	a5,a3,0x2
    80002ea4:	00d787bb          	addw	a5,a5,a3
    80002ea8:	0017979b          	slliw	a5,a5,0x1
    80002eac:	02f767bb          	remw	a5,a4,a5
    80002eb0:	fc0792e3          	bnez	a5,80002e74 <_ZL8producerPv+0x2c>
    80002eb4:	fb9ff06f          	j	80002e6c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002eb8:	0104b503          	ld	a0,16(s1)
    80002ebc:	ffffe097          	auipc	ra,0xffffe
    80002ec0:	5b4080e7          	jalr	1460(ra) # 80001470 <_Z10sem_signalP3Sem>
}
    80002ec4:	01813083          	ld	ra,24(sp)
    80002ec8:	01013403          	ld	s0,16(sp)
    80002ecc:	00813483          	ld	s1,8(sp)
    80002ed0:	00013903          	ld	s2,0(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret

0000000080002edc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002edc:	fd010113          	addi	sp,sp,-48
    80002ee0:	02113423          	sd	ra,40(sp)
    80002ee4:	02813023          	sd	s0,32(sp)
    80002ee8:	00913c23          	sd	s1,24(sp)
    80002eec:	01213823          	sd	s2,16(sp)
    80002ef0:	01313423          	sd	s3,8(sp)
    80002ef4:	03010413          	addi	s0,sp,48
    80002ef8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002efc:	00000993          	li	s3,0
    80002f00:	01c0006f          	j	80002f1c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f04:	ffffe097          	auipc	ra,0xffffe
    80002f08:	4dc080e7          	jalr	1244(ra) # 800013e0 <_Z15thread_dispatchv>
    80002f0c:	0500006f          	j	80002f5c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f10:	00a00513          	li	a0,10
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	618080e7          	jalr	1560(ra) # 8000152c <_Z4putcc>
    while (!threadEnd) {
    80002f1c:	00009797          	auipc	a5,0x9
    80002f20:	95c7a783          	lw	a5,-1700(a5) # 8000b878 <_ZL9threadEnd>
    80002f24:	06079063          	bnez	a5,80002f84 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f28:	00893503          	ld	a0,8(s2)
    80002f2c:	00003097          	auipc	ra,0x3
    80002f30:	2c4080e7          	jalr	708(ra) # 800061f0 <_ZN6Buffer3getEv>
        i++;
    80002f34:	0019849b          	addiw	s1,s3,1
    80002f38:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f3c:	0ff57513          	andi	a0,a0,255
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	5ec080e7          	jalr	1516(ra) # 8000152c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f48:	00092703          	lw	a4,0(s2)
    80002f4c:	0027179b          	slliw	a5,a4,0x2
    80002f50:	00e787bb          	addw	a5,a5,a4
    80002f54:	02f4e7bb          	remw	a5,s1,a5
    80002f58:	fa0786e3          	beqz	a5,80002f04 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f5c:	05000793          	li	a5,80
    80002f60:	02f4e4bb          	remw	s1,s1,a5
    80002f64:	fa049ce3          	bnez	s1,80002f1c <_ZL8consumerPv+0x40>
    80002f68:	fa9ff06f          	j	80002f10 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f6c:	00893503          	ld	a0,8(s2)
    80002f70:	00003097          	auipc	ra,0x3
    80002f74:	280080e7          	jalr	640(ra) # 800061f0 <_ZN6Buffer3getEv>
        putc(key);
    80002f78:	0ff57513          	andi	a0,a0,255
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	5b0080e7          	jalr	1456(ra) # 8000152c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f84:	00893503          	ld	a0,8(s2)
    80002f88:	00003097          	auipc	ra,0x3
    80002f8c:	2f4080e7          	jalr	756(ra) # 8000627c <_ZN6Buffer6getCntEv>
    80002f90:	fca04ee3          	bgtz	a0,80002f6c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f94:	01093503          	ld	a0,16(s2)
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	4d8080e7          	jalr	1240(ra) # 80001470 <_Z10sem_signalP3Sem>
}
    80002fa0:	02813083          	ld	ra,40(sp)
    80002fa4:	02013403          	ld	s0,32(sp)
    80002fa8:	01813483          	ld	s1,24(sp)
    80002fac:	01013903          	ld	s2,16(sp)
    80002fb0:	00813983          	ld	s3,8(sp)
    80002fb4:	03010113          	addi	sp,sp,48
    80002fb8:	00008067          	ret

0000000080002fbc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002fbc:	f9010113          	addi	sp,sp,-112
    80002fc0:	06113423          	sd	ra,104(sp)
    80002fc4:	06813023          	sd	s0,96(sp)
    80002fc8:	04913c23          	sd	s1,88(sp)
    80002fcc:	05213823          	sd	s2,80(sp)
    80002fd0:	05313423          	sd	s3,72(sp)
    80002fd4:	05413023          	sd	s4,64(sp)
    80002fd8:	03513c23          	sd	s5,56(sp)
    80002fdc:	03613823          	sd	s6,48(sp)
    80002fe0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002fe4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fe8:	00006517          	auipc	a0,0x6
    80002fec:	08850513          	addi	a0,a0,136 # 80009070 <CONSOLE_STATUS+0x60>
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	220080e7          	jalr	544(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80002ff8:	01e00593          	li	a1,30
    80002ffc:	fa040493          	addi	s1,s0,-96
    80003000:	00048513          	mv	a0,s1
    80003004:	00002097          	auipc	ra,0x2
    80003008:	294080e7          	jalr	660(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000300c:	00048513          	mv	a0,s1
    80003010:	00002097          	auipc	ra,0x2
    80003014:	360080e7          	jalr	864(ra) # 80005370 <_Z11stringToIntPKc>
    80003018:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	07450513          	addi	a0,a0,116 # 80009090 <CONSOLE_STATUS+0x80>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	1ec080e7          	jalr	492(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    8000302c:	01e00593          	li	a1,30
    80003030:	00048513          	mv	a0,s1
    80003034:	00002097          	auipc	ra,0x2
    80003038:	264080e7          	jalr	612(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    8000303c:	00048513          	mv	a0,s1
    80003040:	00002097          	auipc	ra,0x2
    80003044:	330080e7          	jalr	816(ra) # 80005370 <_Z11stringToIntPKc>
    80003048:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	06450513          	addi	a0,a0,100 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	1bc080e7          	jalr	444(ra) # 80005210 <_Z11printStringPKc>
    8000305c:	00000613          	li	a2,0
    80003060:	00a00593          	li	a1,10
    80003064:	00090513          	mv	a0,s2
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	358080e7          	jalr	856(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003070:	00006517          	auipc	a0,0x6
    80003074:	05850513          	addi	a0,a0,88 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	198080e7          	jalr	408(ra) # 80005210 <_Z11printStringPKc>
    80003080:	00000613          	li	a2,0
    80003084:	00a00593          	li	a1,10
    80003088:	00048513          	mv	a0,s1
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	334080e7          	jalr	820(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80003094:	00006517          	auipc	a0,0x6
    80003098:	04c50513          	addi	a0,a0,76 # 800090e0 <CONSOLE_STATUS+0xd0>
    8000309c:	00002097          	auipc	ra,0x2
    800030a0:	174080e7          	jalr	372(ra) # 80005210 <_Z11printStringPKc>
    if(threadNum > n) {
    800030a4:	0324c463          	blt	s1,s2,800030cc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030a8:	03205c63          	blez	s2,800030e0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030ac:	03800513          	li	a0,56
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	f9c080e7          	jalr	-100(ra) # 8000204c <_Znwm>
    800030b8:	00050a13          	mv	s4,a0
    800030bc:	00048593          	mv	a1,s1
    800030c0:	00003097          	auipc	ra,0x3
    800030c4:	004080e7          	jalr	4(ra) # 800060c4 <_ZN6BufferC1Ei>
    800030c8:	0300006f          	j	800030f8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	01c50513          	addi	a0,a0,28 # 800090e8 <CONSOLE_STATUS+0xd8>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	13c080e7          	jalr	316(ra) # 80005210 <_Z11printStringPKc>
        return;
    800030dc:	0140006f          	j	800030f0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030e0:	00006517          	auipc	a0,0x6
    800030e4:	04850513          	addi	a0,a0,72 # 80009128 <CONSOLE_STATUS+0x118>
    800030e8:	00002097          	auipc	ra,0x2
    800030ec:	128080e7          	jalr	296(ra) # 80005210 <_Z11printStringPKc>
        return;
    800030f0:	000b0113          	mv	sp,s6
    800030f4:	1500006f          	j	80003244 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800030f8:	00000593          	li	a1,0
    800030fc:	00008517          	auipc	a0,0x8
    80003100:	78450513          	addi	a0,a0,1924 # 8000b880 <_ZL10waitForAll>
    80003104:	ffffe097          	auipc	ra,0xffffe
    80003108:	318080e7          	jalr	792(ra) # 8000141c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000310c:	00391793          	slli	a5,s2,0x3
    80003110:	00f78793          	addi	a5,a5,15
    80003114:	ff07f793          	andi	a5,a5,-16
    80003118:	40f10133          	sub	sp,sp,a5
    8000311c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003120:	0019071b          	addiw	a4,s2,1
    80003124:	00171793          	slli	a5,a4,0x1
    80003128:	00e787b3          	add	a5,a5,a4
    8000312c:	00379793          	slli	a5,a5,0x3
    80003130:	00f78793          	addi	a5,a5,15
    80003134:	ff07f793          	andi	a5,a5,-16
    80003138:	40f10133          	sub	sp,sp,a5
    8000313c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003140:	00191613          	slli	a2,s2,0x1
    80003144:	012607b3          	add	a5,a2,s2
    80003148:	00379793          	slli	a5,a5,0x3
    8000314c:	00f987b3          	add	a5,s3,a5
    80003150:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003154:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003158:	00008717          	auipc	a4,0x8
    8000315c:	72873703          	ld	a4,1832(a4) # 8000b880 <_ZL10waitForAll>
    80003160:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003164:	00078613          	mv	a2,a5
    80003168:	00000597          	auipc	a1,0x0
    8000316c:	d7458593          	addi	a1,a1,-652 # 80002edc <_ZL8consumerPv>
    80003170:	f9840513          	addi	a0,s0,-104
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	198080e7          	jalr	408(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000317c:	00000493          	li	s1,0
    80003180:	0280006f          	j	800031a8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003184:	00000597          	auipc	a1,0x0
    80003188:	c1458593          	addi	a1,a1,-1004 # 80002d98 <_ZL16producerKeyboardPv>
                      data + i);
    8000318c:	00179613          	slli	a2,a5,0x1
    80003190:	00f60633          	add	a2,a2,a5
    80003194:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003198:	00c98633          	add	a2,s3,a2
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	170080e7          	jalr	368(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031a4:	0014849b          	addiw	s1,s1,1
    800031a8:	0524d263          	bge	s1,s2,800031ec <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031ac:	00149793          	slli	a5,s1,0x1
    800031b0:	009787b3          	add	a5,a5,s1
    800031b4:	00379793          	slli	a5,a5,0x3
    800031b8:	00f987b3          	add	a5,s3,a5
    800031bc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031c0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031c4:	00008717          	auipc	a4,0x8
    800031c8:	6bc73703          	ld	a4,1724(a4) # 8000b880 <_ZL10waitForAll>
    800031cc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031d0:	00048793          	mv	a5,s1
    800031d4:	00349513          	slli	a0,s1,0x3
    800031d8:	00aa8533          	add	a0,s5,a0
    800031dc:	fa9054e3          	blez	s1,80003184 <_Z22producerConsumer_C_APIv+0x1c8>
    800031e0:	00000597          	auipc	a1,0x0
    800031e4:	c6858593          	addi	a1,a1,-920 # 80002e48 <_ZL8producerPv>
    800031e8:	fa5ff06f          	j	8000318c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	1f4080e7          	jalr	500(ra) # 800013e0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800031f4:	00000493          	li	s1,0
    800031f8:	00994e63          	blt	s2,s1,80003214 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031fc:	00008517          	auipc	a0,0x8
    80003200:	68453503          	ld	a0,1668(a0) # 8000b880 <_ZL10waitForAll>
    80003204:	ffffe097          	auipc	ra,0xffffe
    80003208:	250080e7          	jalr	592(ra) # 80001454 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000320c:	0014849b          	addiw	s1,s1,1
    80003210:	fe9ff06f          	j	800031f8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003214:	00008517          	auipc	a0,0x8
    80003218:	66c53503          	ld	a0,1644(a0) # 8000b880 <_ZL10waitForAll>
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	21c080e7          	jalr	540(ra) # 80001438 <_Z9sem_closeP3Sem>
    delete buffer;
    80003224:	000a0e63          	beqz	s4,80003240 <_Z22producerConsumer_C_APIv+0x284>
    80003228:	000a0513          	mv	a0,s4
    8000322c:	00003097          	auipc	ra,0x3
    80003230:	0d8080e7          	jalr	216(ra) # 80006304 <_ZN6BufferD1Ev>
    80003234:	000a0513          	mv	a0,s4
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	e3c080e7          	jalr	-452(ra) # 80002074 <_ZdlPv>
    80003240:	000b0113          	mv	sp,s6

}
    80003244:	f9040113          	addi	sp,s0,-112
    80003248:	06813083          	ld	ra,104(sp)
    8000324c:	06013403          	ld	s0,96(sp)
    80003250:	05813483          	ld	s1,88(sp)
    80003254:	05013903          	ld	s2,80(sp)
    80003258:	04813983          	ld	s3,72(sp)
    8000325c:	04013a03          	ld	s4,64(sp)
    80003260:	03813a83          	ld	s5,56(sp)
    80003264:	03013b03          	ld	s6,48(sp)
    80003268:	07010113          	addi	sp,sp,112
    8000326c:	00008067          	ret
    80003270:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003274:	000a0513          	mv	a0,s4
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	dfc080e7          	jalr	-516(ra) # 80002074 <_ZdlPv>
    80003280:	00048513          	mv	a0,s1
    80003284:	00009097          	auipc	ra,0x9
    80003288:	714080e7          	jalr	1812(ra) # 8000c998 <_Unwind_Resume>

000000008000328c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032a8:	00100793          	li	a5,1
    800032ac:	02a7f863          	bgeu	a5,a0,800032dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032b0:	00a00793          	li	a5,10
    800032b4:	02f577b3          	remu	a5,a0,a5
    800032b8:	02078e63          	beqz	a5,800032f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032bc:	fff48513          	addi	a0,s1,-1
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	fcc080e7          	jalr	-52(ra) # 8000328c <_ZL9fibonaccim>
    800032c8:	00050913          	mv	s2,a0
    800032cc:	ffe48513          	addi	a0,s1,-2
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	fbc080e7          	jalr	-68(ra) # 8000328c <_ZL9fibonaccim>
    800032d8:	00a90533          	add	a0,s2,a0
}
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	00013903          	ld	s2,0(sp)
    800032ec:	02010113          	addi	sp,sp,32
    800032f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	0ec080e7          	jalr	236(ra) # 800013e0 <_Z15thread_dispatchv>
    800032fc:	fc1ff06f          	j	800032bc <_ZL9fibonaccim+0x30>

0000000080003300 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00113c23          	sd	ra,24(sp)
    80003308:	00813823          	sd	s0,16(sp)
    8000330c:	00913423          	sd	s1,8(sp)
    80003310:	01213023          	sd	s2,0(sp)
    80003314:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003318:	00000913          	li	s2,0
    8000331c:	0380006f          	j	80003354 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	0c0080e7          	jalr	192(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003328:	00148493          	addi	s1,s1,1
    8000332c:	000027b7          	lui	a5,0x2
    80003330:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003334:	0097ee63          	bltu	a5,s1,80003350 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003338:	00000713          	li	a4,0
    8000333c:	000077b7          	lui	a5,0x7
    80003340:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003344:	fce7eee3          	bltu	a5,a4,80003320 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003348:	00170713          	addi	a4,a4,1
    8000334c:	ff1ff06f          	j	8000333c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003350:	00190913          	addi	s2,s2,1
    80003354:	00900793          	li	a5,9
    80003358:	0527e063          	bltu	a5,s2,80003398 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	dfc50513          	addi	a0,a0,-516 # 80009158 <CONSOLE_STATUS+0x148>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	eac080e7          	jalr	-340(ra) # 80005210 <_Z11printStringPKc>
    8000336c:	00000613          	li	a2,0
    80003370:	00a00593          	li	a1,10
    80003374:	0009051b          	sext.w	a0,s2
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	048080e7          	jalr	72(ra) # 800053c0 <_Z8printIntiii>
    80003380:	00006517          	auipc	a0,0x6
    80003384:	d2850513          	addi	a0,a0,-728 # 800090a8 <CONSOLE_STATUS+0x98>
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	e88080e7          	jalr	-376(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003390:	00000493          	li	s1,0
    80003394:	f99ff06f          	j	8000332c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	dc850513          	addi	a0,a0,-568 # 80009160 <CONSOLE_STATUS+0x150>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	e70080e7          	jalr	-400(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    800033a8:	00100793          	li	a5,1
    800033ac:	00008717          	auipc	a4,0x8
    800033b0:	4cf70e23          	sb	a5,1244(a4) # 8000b888 <_ZL9finishedA>
}
    800033b4:	01813083          	ld	ra,24(sp)
    800033b8:	01013403          	ld	s0,16(sp)
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	00013903          	ld	s2,0(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret

00000000800033cc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00113c23          	sd	ra,24(sp)
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	01213023          	sd	s2,0(sp)
    800033e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033e4:	00000913          	li	s2,0
    800033e8:	0380006f          	j	80003420 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	ff4080e7          	jalr	-12(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033f4:	00148493          	addi	s1,s1,1
    800033f8:	000027b7          	lui	a5,0x2
    800033fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003400:	0097ee63          	bltu	a5,s1,8000341c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003404:	00000713          	li	a4,0
    80003408:	000077b7          	lui	a5,0x7
    8000340c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003410:	fce7eee3          	bltu	a5,a4,800033ec <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003414:	00170713          	addi	a4,a4,1
    80003418:	ff1ff06f          	j	80003408 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000341c:	00190913          	addi	s2,s2,1
    80003420:	00f00793          	li	a5,15
    80003424:	0527e063          	bltu	a5,s2,80003464 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	d4850513          	addi	a0,a0,-696 # 80009170 <CONSOLE_STATUS+0x160>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	de0080e7          	jalr	-544(ra) # 80005210 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	0009051b          	sext.w	a0,s2
    80003444:	00002097          	auipc	ra,0x2
    80003448:	f7c080e7          	jalr	-132(ra) # 800053c0 <_Z8printIntiii>
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	c5c50513          	addi	a0,a0,-932 # 800090a8 <CONSOLE_STATUS+0x98>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	dbc080e7          	jalr	-580(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000345c:	00000493          	li	s1,0
    80003460:	f99ff06f          	j	800033f8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003464:	00006517          	auipc	a0,0x6
    80003468:	d1450513          	addi	a0,a0,-748 # 80009178 <CONSOLE_STATUS+0x168>
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	da4080e7          	jalr	-604(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80003474:	00100793          	li	a5,1
    80003478:	00008717          	auipc	a4,0x8
    8000347c:	40f708a3          	sb	a5,1041(a4) # 8000b889 <_ZL9finishedB>
    thread_dispatch();
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	f60080e7          	jalr	-160(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80003488:	01813083          	ld	ra,24(sp)
    8000348c:	01013403          	ld	s0,16(sp)
    80003490:	00813483          	ld	s1,8(sp)
    80003494:	00013903          	ld	s2,0(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret

00000000800034a0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00813823          	sd	s0,16(sp)
    800034ac:	00913423          	sd	s1,8(sp)
    800034b0:	01213023          	sd	s2,0(sp)
    800034b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034b8:	00000493          	li	s1,0
    800034bc:	0400006f          	j	800034fc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	cc850513          	addi	a0,a0,-824 # 80009188 <CONSOLE_STATUS+0x178>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	d48080e7          	jalr	-696(ra) # 80005210 <_Z11printStringPKc>
    800034d0:	00000613          	li	a2,0
    800034d4:	00a00593          	li	a1,10
    800034d8:	00048513          	mv	a0,s1
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	ee4080e7          	jalr	-284(ra) # 800053c0 <_Z8printIntiii>
    800034e4:	00006517          	auipc	a0,0x6
    800034e8:	bc450513          	addi	a0,a0,-1084 # 800090a8 <CONSOLE_STATUS+0x98>
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	d24080e7          	jalr	-732(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034f4:	0014849b          	addiw	s1,s1,1
    800034f8:	0ff4f493          	andi	s1,s1,255
    800034fc:	00200793          	li	a5,2
    80003500:	fc97f0e3          	bgeu	a5,s1,800034c0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003504:	00006517          	auipc	a0,0x6
    80003508:	c8c50513          	addi	a0,a0,-884 # 80009190 <CONSOLE_STATUS+0x180>
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	d04080e7          	jalr	-764(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003514:	00700313          	li	t1,7
    thread_dispatch();
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	ec8080e7          	jalr	-312(ra) # 800013e0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003520:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	c7c50513          	addi	a0,a0,-900 # 800091a0 <CONSOLE_STATUS+0x190>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	ce4080e7          	jalr	-796(ra) # 80005210 <_Z11printStringPKc>
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0009051b          	sext.w	a0,s2
    80003540:	00002097          	auipc	ra,0x2
    80003544:	e80080e7          	jalr	-384(ra) # 800053c0 <_Z8printIntiii>
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	b6050513          	addi	a0,a0,-1184 # 800090a8 <CONSOLE_STATUS+0x98>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	cc0080e7          	jalr	-832(ra) # 80005210 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003558:	00c00513          	li	a0,12
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	d30080e7          	jalr	-720(ra) # 8000328c <_ZL9fibonaccim>
    80003564:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	c4050513          	addi	a0,a0,-960 # 800091a8 <CONSOLE_STATUS+0x198>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	ca0080e7          	jalr	-864(ra) # 80005210 <_Z11printStringPKc>
    80003578:	00000613          	li	a2,0
    8000357c:	00a00593          	li	a1,10
    80003580:	0009051b          	sext.w	a0,s2
    80003584:	00002097          	auipc	ra,0x2
    80003588:	e3c080e7          	jalr	-452(ra) # 800053c0 <_Z8printIntiii>
    8000358c:	00006517          	auipc	a0,0x6
    80003590:	b1c50513          	addi	a0,a0,-1252 # 800090a8 <CONSOLE_STATUS+0x98>
    80003594:	00002097          	auipc	ra,0x2
    80003598:	c7c080e7          	jalr	-900(ra) # 80005210 <_Z11printStringPKc>
    8000359c:	0400006f          	j	800035dc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	be850513          	addi	a0,a0,-1048 # 80009188 <CONSOLE_STATUS+0x178>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	c68080e7          	jalr	-920(ra) # 80005210 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	e04080e7          	jalr	-508(ra) # 800053c0 <_Z8printIntiii>
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	ae450513          	addi	a0,a0,-1308 # 800090a8 <CONSOLE_STATUS+0x98>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	c44080e7          	jalr	-956(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035d4:	0014849b          	addiw	s1,s1,1
    800035d8:	0ff4f493          	andi	s1,s1,255
    800035dc:	00500793          	li	a5,5
    800035e0:	fc97f0e3          	bgeu	a5,s1,800035a0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800035e4:	00006517          	auipc	a0,0x6
    800035e8:	b7c50513          	addi	a0,a0,-1156 # 80009160 <CONSOLE_STATUS+0x150>
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	c24080e7          	jalr	-988(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    800035f4:	00100793          	li	a5,1
    800035f8:	00008717          	auipc	a4,0x8
    800035fc:	28f70923          	sb	a5,658(a4) # 8000b88a <_ZL9finishedC>
    thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	de0080e7          	jalr	-544(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	00013903          	ld	s2,0(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret

0000000080003620 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	00813823          	sd	s0,16(sp)
    8000362c:	00913423          	sd	s1,8(sp)
    80003630:	01213023          	sd	s2,0(sp)
    80003634:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003638:	00a00493          	li	s1,10
    8000363c:	0400006f          	j	8000367c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003640:	00006517          	auipc	a0,0x6
    80003644:	b7850513          	addi	a0,a0,-1160 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	bc8080e7          	jalr	-1080(ra) # 80005210 <_Z11printStringPKc>
    80003650:	00000613          	li	a2,0
    80003654:	00a00593          	li	a1,10
    80003658:	00048513          	mv	a0,s1
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	d64080e7          	jalr	-668(ra) # 800053c0 <_Z8printIntiii>
    80003664:	00006517          	auipc	a0,0x6
    80003668:	a4450513          	addi	a0,a0,-1468 # 800090a8 <CONSOLE_STATUS+0x98>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	ba4080e7          	jalr	-1116(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003674:	0014849b          	addiw	s1,s1,1
    80003678:	0ff4f493          	andi	s1,s1,255
    8000367c:	00c00793          	li	a5,12
    80003680:	fc97f0e3          	bgeu	a5,s1,80003640 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	b3c50513          	addi	a0,a0,-1220 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	b84080e7          	jalr	-1148(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003694:	00500313          	li	t1,5
    thread_dispatch();
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	d48080e7          	jalr	-696(ra) # 800013e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036a0:	01000513          	li	a0,16
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	be8080e7          	jalr	-1048(ra) # 8000328c <_ZL9fibonaccim>
    800036ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	b2050513          	addi	a0,a0,-1248 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	b58080e7          	jalr	-1192(ra) # 80005210 <_Z11printStringPKc>
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	0009051b          	sext.w	a0,s2
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	cf4080e7          	jalr	-780(ra) # 800053c0 <_Z8printIntiii>
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	9d450513          	addi	a0,a0,-1580 # 800090a8 <CONSOLE_STATUS+0x98>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	b34080e7          	jalr	-1228(ra) # 80005210 <_Z11printStringPKc>
    800036e4:	0400006f          	j	80003724 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036e8:	00006517          	auipc	a0,0x6
    800036ec:	ad050513          	addi	a0,a0,-1328 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	b20080e7          	jalr	-1248(ra) # 80005210 <_Z11printStringPKc>
    800036f8:	00000613          	li	a2,0
    800036fc:	00a00593          	li	a1,10
    80003700:	00048513          	mv	a0,s1
    80003704:	00002097          	auipc	ra,0x2
    80003708:	cbc080e7          	jalr	-836(ra) # 800053c0 <_Z8printIntiii>
    8000370c:	00006517          	auipc	a0,0x6
    80003710:	99c50513          	addi	a0,a0,-1636 # 800090a8 <CONSOLE_STATUS+0x98>
    80003714:	00002097          	auipc	ra,0x2
    80003718:	afc080e7          	jalr	-1284(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000371c:	0014849b          	addiw	s1,s1,1
    80003720:	0ff4f493          	andi	s1,s1,255
    80003724:	00f00793          	li	a5,15
    80003728:	fc97f0e3          	bgeu	a5,s1,800036e8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	ab450513          	addi	a0,a0,-1356 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	adc080e7          	jalr	-1316(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    8000373c:	00100793          	li	a5,1
    80003740:	00008717          	auipc	a4,0x8
    80003744:	14f705a3          	sb	a5,331(a4) # 8000b88b <_ZL9finishedD>
    thread_dispatch();
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	c98080e7          	jalr	-872(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	01013403          	ld	s0,16(sp)
    80003758:	00813483          	ld	s1,8(sp)
    8000375c:	00013903          	ld	s2,0(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret

0000000080003768 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003768:	fc010113          	addi	sp,sp,-64
    8000376c:	02113c23          	sd	ra,56(sp)
    80003770:	02813823          	sd	s0,48(sp)
    80003774:	02913423          	sd	s1,40(sp)
    80003778:	03213023          	sd	s2,32(sp)
    8000377c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003780:	02000513          	li	a0,32
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	8c8080e7          	jalr	-1848(ra) # 8000204c <_Znwm>
    8000378c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	a4c080e7          	jalr	-1460(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003798:	00008797          	auipc	a5,0x8
    8000379c:	e8878793          	addi	a5,a5,-376 # 8000b620 <_ZTV7WorkerA+0x10>
    800037a0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037a4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037a8:	00006517          	auipc	a0,0x6
    800037ac:	a4850513          	addi	a0,a0,-1464 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800037b0:	00002097          	auipc	ra,0x2
    800037b4:	a60080e7          	jalr	-1440(ra) # 80005210 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800037b8:	02000513          	li	a0,32
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	890080e7          	jalr	-1904(ra) # 8000204c <_Znwm>
    800037c4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	a14080e7          	jalr	-1516(ra) # 800021dc <_ZN6ThreadC1Ev>
    800037d0:	00008797          	auipc	a5,0x8
    800037d4:	e7878793          	addi	a5,a5,-392 # 8000b648 <_ZTV7WorkerB+0x10>
    800037d8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037dc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037e0:	00006517          	auipc	a0,0x6
    800037e4:	a2850513          	addi	a0,a0,-1496 # 80009208 <CONSOLE_STATUS+0x1f8>
    800037e8:	00002097          	auipc	ra,0x2
    800037ec:	a28080e7          	jalr	-1496(ra) # 80005210 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037f0:	02000513          	li	a0,32
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	858080e7          	jalr	-1960(ra) # 8000204c <_Znwm>
    800037fc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	9dc080e7          	jalr	-1572(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003808:	00008797          	auipc	a5,0x8
    8000380c:	e6878793          	addi	a5,a5,-408 # 8000b670 <_ZTV7WorkerC+0x10>
    80003810:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003814:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003818:	00006517          	auipc	a0,0x6
    8000381c:	a0850513          	addi	a0,a0,-1528 # 80009220 <CONSOLE_STATUS+0x210>
    80003820:	00002097          	auipc	ra,0x2
    80003824:	9f0080e7          	jalr	-1552(ra) # 80005210 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003828:	02000513          	li	a0,32
    8000382c:	fffff097          	auipc	ra,0xfffff
    80003830:	820080e7          	jalr	-2016(ra) # 8000204c <_Znwm>
    80003834:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	9a4080e7          	jalr	-1628(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003840:	00008797          	auipc	a5,0x8
    80003844:	e5878793          	addi	a5,a5,-424 # 8000b698 <_ZTV7WorkerD+0x10>
    80003848:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000384c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003850:	00006517          	auipc	a0,0x6
    80003854:	9e850513          	addi	a0,a0,-1560 # 80009238 <CONSOLE_STATUS+0x228>
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	9b8080e7          	jalr	-1608(ra) # 80005210 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003860:	00000493          	li	s1,0
    80003864:	00300793          	li	a5,3
    80003868:	0297c663          	blt	a5,s1,80003894 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000386c:	00349793          	slli	a5,s1,0x3
    80003870:	fe040713          	addi	a4,s0,-32
    80003874:	00f707b3          	add	a5,a4,a5
    80003878:	fe07b503          	ld	a0,-32(a5)
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	8dc080e7          	jalr	-1828(ra) # 80002158 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003884:	0014849b          	addiw	s1,s1,1
    80003888:	fddff06f          	j	80003864 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	8fc080e7          	jalr	-1796(ra) # 80002188 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003894:	00008797          	auipc	a5,0x8
    80003898:	ff47c783          	lbu	a5,-12(a5) # 8000b888 <_ZL9finishedA>
    8000389c:	fe0788e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	fe97c783          	lbu	a5,-23(a5) # 8000b889 <_ZL9finishedB>
    800038a8:	fe0782e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038ac:	00008797          	auipc	a5,0x8
    800038b0:	fde7c783          	lbu	a5,-34(a5) # 8000b88a <_ZL9finishedC>
    800038b4:	fc078ce3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038b8:	00008797          	auipc	a5,0x8
    800038bc:	fd37c783          	lbu	a5,-45(a5) # 8000b88b <_ZL9finishedD>
    800038c0:	fc0786e3          	beqz	a5,8000388c <_Z20Threads_CPP_API_testv+0x124>
    800038c4:	fc040493          	addi	s1,s0,-64
    800038c8:	0080006f          	j	800038d0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800038cc:	00848493          	addi	s1,s1,8
    800038d0:	fe040793          	addi	a5,s0,-32
    800038d4:	08f48663          	beq	s1,a5,80003960 <_Z20Threads_CPP_API_testv+0x1f8>
    800038d8:	0004b503          	ld	a0,0(s1)
    800038dc:	fe0508e3          	beqz	a0,800038cc <_Z20Threads_CPP_API_testv+0x164>
    800038e0:	00053783          	ld	a5,0(a0)
    800038e4:	0087b783          	ld	a5,8(a5)
    800038e8:	000780e7          	jalr	a5
    800038ec:	fe1ff06f          	j	800038cc <_Z20Threads_CPP_API_testv+0x164>
    800038f0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800038f4:	00048513          	mv	a0,s1
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	77c080e7          	jalr	1916(ra) # 80002074 <_ZdlPv>
    80003900:	00090513          	mv	a0,s2
    80003904:	00009097          	auipc	ra,0x9
    80003908:	094080e7          	jalr	148(ra) # 8000c998 <_Unwind_Resume>
    8000390c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003910:	00048513          	mv	a0,s1
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	760080e7          	jalr	1888(ra) # 80002074 <_ZdlPv>
    8000391c:	00090513          	mv	a0,s2
    80003920:	00009097          	auipc	ra,0x9
    80003924:	078080e7          	jalr	120(ra) # 8000c998 <_Unwind_Resume>
    80003928:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000392c:	00048513          	mv	a0,s1
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	744080e7          	jalr	1860(ra) # 80002074 <_ZdlPv>
    80003938:	00090513          	mv	a0,s2
    8000393c:	00009097          	auipc	ra,0x9
    80003940:	05c080e7          	jalr	92(ra) # 8000c998 <_Unwind_Resume>
    80003944:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003948:	00048513          	mv	a0,s1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	728080e7          	jalr	1832(ra) # 80002074 <_ZdlPv>
    80003954:	00090513          	mv	a0,s2
    80003958:	00009097          	auipc	ra,0x9
    8000395c:	040080e7          	jalr	64(ra) # 8000c998 <_Unwind_Resume>
}
    80003960:	03813083          	ld	ra,56(sp)
    80003964:	03013403          	ld	s0,48(sp)
    80003968:	02813483          	ld	s1,40(sp)
    8000396c:	02013903          	ld	s2,32(sp)
    80003970:	04010113          	addi	sp,sp,64
    80003974:	00008067          	ret

0000000080003978 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00113423          	sd	ra,8(sp)
    80003980:	00813023          	sd	s0,0(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	00008797          	auipc	a5,0x8
    8000398c:	c9878793          	addi	a5,a5,-872 # 8000b620 <_ZTV7WorkerA+0x10>
    80003990:	00f53023          	sd	a5,0(a0)
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	620080e7          	jalr	1568(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    8000399c:	00813083          	ld	ra,8(sp)
    800039a0:	00013403          	ld	s0,0(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret

00000000800039ac <_ZN7WorkerAD0Ev>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00113c23          	sd	ra,24(sp)
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00050493          	mv	s1,a0
    800039c4:	00008797          	auipc	a5,0x8
    800039c8:	c5c78793          	addi	a5,a5,-932 # 8000b620 <_ZTV7WorkerA+0x10>
    800039cc:	00f53023          	sd	a5,0(a0)
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	5e4080e7          	jalr	1508(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800039d8:	00048513          	mv	a0,s1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	698080e7          	jalr	1688(ra) # 80002074 <_ZdlPv>
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	02010113          	addi	sp,sp,32
    800039f4:	00008067          	ret

00000000800039f8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800039f8:	ff010113          	addi	sp,sp,-16
    800039fc:	00113423          	sd	ra,8(sp)
    80003a00:	00813023          	sd	s0,0(sp)
    80003a04:	01010413          	addi	s0,sp,16
    80003a08:	00008797          	auipc	a5,0x8
    80003a0c:	c4078793          	addi	a5,a5,-960 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a10:	00f53023          	sd	a5,0(a0)
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	5a0080e7          	jalr	1440(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003a1c:	00813083          	ld	ra,8(sp)
    80003a20:	00013403          	ld	s0,0(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret

0000000080003a2c <_ZN7WorkerBD0Ev>:
    80003a2c:	fe010113          	addi	sp,sp,-32
    80003a30:	00113c23          	sd	ra,24(sp)
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    80003a44:	00008797          	auipc	a5,0x8
    80003a48:	c0478793          	addi	a5,a5,-1020 # 8000b648 <_ZTV7WorkerB+0x10>
    80003a4c:	00f53023          	sd	a5,0(a0)
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	564080e7          	jalr	1380(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	618080e7          	jalr	1560(ra) # 80002074 <_ZdlPv>
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00813483          	ld	s1,8(sp)
    80003a70:	02010113          	addi	sp,sp,32
    80003a74:	00008067          	ret

0000000080003a78 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00113423          	sd	ra,8(sp)
    80003a80:	00813023          	sd	s0,0(sp)
    80003a84:	01010413          	addi	s0,sp,16
    80003a88:	00008797          	auipc	a5,0x8
    80003a8c:	be878793          	addi	a5,a5,-1048 # 8000b670 <_ZTV7WorkerC+0x10>
    80003a90:	00f53023          	sd	a5,0(a0)
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	520080e7          	jalr	1312(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret

0000000080003aac <_ZN7WorkerCD0Ev>:
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	00050493          	mv	s1,a0
    80003ac4:	00008797          	auipc	a5,0x8
    80003ac8:	bac78793          	addi	a5,a5,-1108 # 8000b670 <_ZTV7WorkerC+0x10>
    80003acc:	00f53023          	sd	a5,0(a0)
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	4e4080e7          	jalr	1252(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	598080e7          	jalr	1432(ra) # 80002074 <_ZdlPv>
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00813483          	ld	s1,8(sp)
    80003af0:	02010113          	addi	sp,sp,32
    80003af4:	00008067          	ret

0000000080003af8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	00813023          	sd	s0,0(sp)
    80003b04:	01010413          	addi	s0,sp,16
    80003b08:	00008797          	auipc	a5,0x8
    80003b0c:	b9078793          	addi	a5,a5,-1136 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b10:	00f53023          	sd	a5,0(a0)
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	4a0080e7          	jalr	1184(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003b1c:	00813083          	ld	ra,8(sp)
    80003b20:	00013403          	ld	s0,0(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret

0000000080003b2c <_ZN7WorkerDD0Ev>:
    80003b2c:	fe010113          	addi	sp,sp,-32
    80003b30:	00113c23          	sd	ra,24(sp)
    80003b34:	00813823          	sd	s0,16(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	02010413          	addi	s0,sp,32
    80003b40:	00050493          	mv	s1,a0
    80003b44:	00008797          	auipc	a5,0x8
    80003b48:	b5478793          	addi	a5,a5,-1196 # 8000b698 <_ZTV7WorkerD+0x10>
    80003b4c:	00f53023          	sd	a5,0(a0)
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	464080e7          	jalr	1124(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80003b58:	00048513          	mv	a0,s1
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	518080e7          	jalr	1304(ra) # 80002074 <_ZdlPv>
    80003b64:	01813083          	ld	ra,24(sp)
    80003b68:	01013403          	ld	s0,16(sp)
    80003b6c:	00813483          	ld	s1,8(sp)
    80003b70:	02010113          	addi	sp,sp,32
    80003b74:	00008067          	ret

0000000080003b78 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00113423          	sd	ra,8(sp)
    80003b80:	00813023          	sd	s0,0(sp)
    80003b84:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b88:	00000593          	li	a1,0
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	774080e7          	jalr	1908(ra) # 80003300 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b94:	00813083          	ld	ra,8(sp)
    80003b98:	00013403          	ld	s0,0(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	00008067          	ret

0000000080003ba4 <_ZN7WorkerB3runEv>:
    void run() override {
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003bb4:	00000593          	li	a1,0
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	814080e7          	jalr	-2028(ra) # 800033cc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003bc0:	00813083          	ld	ra,8(sp)
    80003bc4:	00013403          	ld	s0,0(sp)
    80003bc8:	01010113          	addi	sp,sp,16
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00113423          	sd	ra,8(sp)
    80003bd8:	00813023          	sd	s0,0(sp)
    80003bdc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003be0:	00000593          	li	a1,0
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	8bc080e7          	jalr	-1860(ra) # 800034a0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bec:	00813083          	ld	ra,8(sp)
    80003bf0:	00013403          	ld	s0,0(sp)
    80003bf4:	01010113          	addi	sp,sp,16
    80003bf8:	00008067          	ret

0000000080003bfc <_ZN7WorkerD3runEv>:
    void run() override {
    80003bfc:	ff010113          	addi	sp,sp,-16
    80003c00:	00113423          	sd	ra,8(sp)
    80003c04:	00813023          	sd	s0,0(sp)
    80003c08:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c0c:	00000593          	li	a1,0
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	a10080e7          	jalr	-1520(ra) # 80003620 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c28:	f8010113          	addi	sp,sp,-128
    80003c2c:	06113c23          	sd	ra,120(sp)
    80003c30:	06813823          	sd	s0,112(sp)
    80003c34:	06913423          	sd	s1,104(sp)
    80003c38:	07213023          	sd	s2,96(sp)
    80003c3c:	05313c23          	sd	s3,88(sp)
    80003c40:	05413823          	sd	s4,80(sp)
    80003c44:	05513423          	sd	s5,72(sp)
    80003c48:	05613023          	sd	s6,64(sp)
    80003c4c:	03713c23          	sd	s7,56(sp)
    80003c50:	03813823          	sd	s8,48(sp)
    80003c54:	03913423          	sd	s9,40(sp)
    80003c58:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c5c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c60:	00005517          	auipc	a0,0x5
    80003c64:	41050513          	addi	a0,a0,1040 # 80009070 <CONSOLE_STATUS+0x60>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	5a8080e7          	jalr	1448(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80003c70:	01e00593          	li	a1,30
    80003c74:	f8040493          	addi	s1,s0,-128
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	61c080e7          	jalr	1564(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	6e8080e7          	jalr	1768(ra) # 80005370 <_Z11stringToIntPKc>
    80003c90:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c94:	00005517          	auipc	a0,0x5
    80003c98:	3fc50513          	addi	a0,a0,1020 # 80009090 <CONSOLE_STATUS+0x80>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	574080e7          	jalr	1396(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80003ca4:	01e00593          	li	a1,30
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	5ec080e7          	jalr	1516(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	6b8080e7          	jalr	1720(ra) # 80005370 <_Z11stringToIntPKc>
    80003cc0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003cc4:	00005517          	auipc	a0,0x5
    80003cc8:	3ec50513          	addi	a0,a0,1004 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	544080e7          	jalr	1348(ra) # 80005210 <_Z11printStringPKc>
    printInt(threadNum);
    80003cd4:	00000613          	li	a2,0
    80003cd8:	00a00593          	li	a1,10
    80003cdc:	00098513          	mv	a0,s3
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	6e0080e7          	jalr	1760(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	3e050513          	addi	a0,a0,992 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	520080e7          	jalr	1312(ra) # 80005210 <_Z11printStringPKc>
    printInt(n);
    80003cf8:	00000613          	li	a2,0
    80003cfc:	00a00593          	li	a1,10
    80003d00:	00048513          	mv	a0,s1
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	6bc080e7          	jalr	1724(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	3d450513          	addi	a0,a0,980 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	4fc080e7          	jalr	1276(ra) # 80005210 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d1c:	0334c463          	blt	s1,s3,80003d44 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d20:	03305c63          	blez	s3,80003d58 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d24:	03800513          	li	a0,56
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	324080e7          	jalr	804(ra) # 8000204c <_Znwm>
    80003d30:	00050a93          	mv	s5,a0
    80003d34:	00048593          	mv	a1,s1
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	7a8080e7          	jalr	1960(ra) # 800054e0 <_ZN9BufferCPPC1Ei>
    80003d40:	0300006f          	j	80003d70 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d44:	00005517          	auipc	a0,0x5
    80003d48:	3a450513          	addi	a0,a0,932 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	4c4080e7          	jalr	1220(ra) # 80005210 <_Z11printStringPKc>
        return;
    80003d54:	0140006f          	j	80003d68 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d58:	00005517          	auipc	a0,0x5
    80003d5c:	3d050513          	addi	a0,a0,976 # 80009128 <CONSOLE_STATUS+0x118>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	4b0080e7          	jalr	1200(ra) # 80005210 <_Z11printStringPKc>
        return;
    80003d68:	000c0113          	mv	sp,s8
    80003d6c:	2140006f          	j	80003f80 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d70:	01000513          	li	a0,16
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	2d8080e7          	jalr	728(ra) # 8000204c <_Znwm>
    80003d7c:	00050913          	mv	s2,a0
    80003d80:	00000593          	li	a1,0
    80003d84:	ffffe097          	auipc	ra,0xffffe
    80003d88:	480080e7          	jalr	1152(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	b127b623          	sd	s2,-1268(a5) # 8000b898 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d94:	00399793          	slli	a5,s3,0x3
    80003d98:	00f78793          	addi	a5,a5,15
    80003d9c:	ff07f793          	andi	a5,a5,-16
    80003da0:	40f10133          	sub	sp,sp,a5
    80003da4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003da8:	0019871b          	addiw	a4,s3,1
    80003dac:	00171793          	slli	a5,a4,0x1
    80003db0:	00e787b3          	add	a5,a5,a4
    80003db4:	00379793          	slli	a5,a5,0x3
    80003db8:	00f78793          	addi	a5,a5,15
    80003dbc:	ff07f793          	andi	a5,a5,-16
    80003dc0:	40f10133          	sub	sp,sp,a5
    80003dc4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003dc8:	00199493          	slli	s1,s3,0x1
    80003dcc:	013484b3          	add	s1,s1,s3
    80003dd0:	00349493          	slli	s1,s1,0x3
    80003dd4:	009b04b3          	add	s1,s6,s1
    80003dd8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ddc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003de0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003de4:	02800513          	li	a0,40
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	264080e7          	jalr	612(ra) # 8000204c <_Znwm>
    80003df0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	3e8080e7          	jalr	1000(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003dfc:	00008797          	auipc	a5,0x8
    80003e00:	91478793          	addi	a5,a5,-1772 # 8000b710 <_ZTV8Consumer+0x10>
    80003e04:	00fbb023          	sd	a5,0(s7)
    80003e08:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e0c:	000b8513          	mv	a0,s7
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	348080e7          	jalr	840(ra) # 80002158 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e18:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e1c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e20:	00008797          	auipc	a5,0x8
    80003e24:	a787b783          	ld	a5,-1416(a5) # 8000b898 <_ZL10waitForAll>
    80003e28:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e2c:	02800513          	li	a0,40
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	21c080e7          	jalr	540(ra) # 8000204c <_Znwm>
    80003e38:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e3c:	ffffe097          	auipc	ra,0xffffe
    80003e40:	3a0080e7          	jalr	928(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003e44:	00008797          	auipc	a5,0x8
    80003e48:	87c78793          	addi	a5,a5,-1924 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80003e4c:	00f4b023          	sd	a5,0(s1)
    80003e50:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e54:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	2fc080e7          	jalr	764(ra) # 80002158 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e64:	00100913          	li	s2,1
    80003e68:	0300006f          	j	80003e98 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e6c:	00008797          	auipc	a5,0x8
    80003e70:	87c78793          	addi	a5,a5,-1924 # 8000b6e8 <_ZTV8Producer+0x10>
    80003e74:	00fcb023          	sd	a5,0(s9)
    80003e78:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e7c:	00391793          	slli	a5,s2,0x3
    80003e80:	00fa07b3          	add	a5,s4,a5
    80003e84:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e88:	000c8513          	mv	a0,s9
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	2cc080e7          	jalr	716(ra) # 80002158 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e94:	0019091b          	addiw	s2,s2,1
    80003e98:	05395263          	bge	s2,s3,80003edc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e9c:	00191493          	slli	s1,s2,0x1
    80003ea0:	012484b3          	add	s1,s1,s2
    80003ea4:	00349493          	slli	s1,s1,0x3
    80003ea8:	009b04b3          	add	s1,s6,s1
    80003eac:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003eb0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003eb4:	00008797          	auipc	a5,0x8
    80003eb8:	9e47b783          	ld	a5,-1564(a5) # 8000b898 <_ZL10waitForAll>
    80003ebc:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ec0:	02800513          	li	a0,40
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	188080e7          	jalr	392(ra) # 8000204c <_Znwm>
    80003ecc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	30c080e7          	jalr	780(ra) # 800021dc <_ZN6ThreadC1Ev>
    80003ed8:	f95ff06f          	j	80003e6c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	2ac080e7          	jalr	684(ra) # 80002188 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ee4:	00000493          	li	s1,0
    80003ee8:	0099ce63          	blt	s3,s1,80003f04 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003eec:	00008517          	auipc	a0,0x8
    80003ef0:	9ac53503          	ld	a0,-1620(a0) # 8000b898 <_ZL10waitForAll>
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	34c080e7          	jalr	844(ra) # 80002240 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003efc:	0014849b          	addiw	s1,s1,1
    80003f00:	fe9ff06f          	j	80003ee8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f04:	00008517          	auipc	a0,0x8
    80003f08:	99453503          	ld	a0,-1644(a0) # 8000b898 <_ZL10waitForAll>
    80003f0c:	00050863          	beqz	a0,80003f1c <_Z20testConsumerProducerv+0x2f4>
    80003f10:	00053783          	ld	a5,0(a0)
    80003f14:	0087b783          	ld	a5,8(a5)
    80003f18:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f1c:	00000493          	li	s1,0
    80003f20:	0080006f          	j	80003f28 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f24:	0014849b          	addiw	s1,s1,1
    80003f28:	0334d263          	bge	s1,s3,80003f4c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f2c:	00349793          	slli	a5,s1,0x3
    80003f30:	00fa07b3          	add	a5,s4,a5
    80003f34:	0007b503          	ld	a0,0(a5)
    80003f38:	fe0506e3          	beqz	a0,80003f24 <_Z20testConsumerProducerv+0x2fc>
    80003f3c:	00053783          	ld	a5,0(a0)
    80003f40:	0087b783          	ld	a5,8(a5)
    80003f44:	000780e7          	jalr	a5
    80003f48:	fddff06f          	j	80003f24 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f4c:	000b8a63          	beqz	s7,80003f60 <_Z20testConsumerProducerv+0x338>
    80003f50:	000bb783          	ld	a5,0(s7)
    80003f54:	0087b783          	ld	a5,8(a5)
    80003f58:	000b8513          	mv	a0,s7
    80003f5c:	000780e7          	jalr	a5
    delete buffer;
    80003f60:	000a8e63          	beqz	s5,80003f7c <_Z20testConsumerProducerv+0x354>
    80003f64:	000a8513          	mv	a0,s5
    80003f68:	00002097          	auipc	ra,0x2
    80003f6c:	870080e7          	jalr	-1936(ra) # 800057d8 <_ZN9BufferCPPD1Ev>
    80003f70:	000a8513          	mv	a0,s5
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	100080e7          	jalr	256(ra) # 80002074 <_ZdlPv>
    80003f7c:	000c0113          	mv	sp,s8
}
    80003f80:	f8040113          	addi	sp,s0,-128
    80003f84:	07813083          	ld	ra,120(sp)
    80003f88:	07013403          	ld	s0,112(sp)
    80003f8c:	06813483          	ld	s1,104(sp)
    80003f90:	06013903          	ld	s2,96(sp)
    80003f94:	05813983          	ld	s3,88(sp)
    80003f98:	05013a03          	ld	s4,80(sp)
    80003f9c:	04813a83          	ld	s5,72(sp)
    80003fa0:	04013b03          	ld	s6,64(sp)
    80003fa4:	03813b83          	ld	s7,56(sp)
    80003fa8:	03013c03          	ld	s8,48(sp)
    80003fac:	02813c83          	ld	s9,40(sp)
    80003fb0:	08010113          	addi	sp,sp,128
    80003fb4:	00008067          	ret
    80003fb8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003fbc:	000a8513          	mv	a0,s5
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	0b4080e7          	jalr	180(ra) # 80002074 <_ZdlPv>
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00009097          	auipc	ra,0x9
    80003fd0:	9cc080e7          	jalr	-1588(ra) # 8000c998 <_Unwind_Resume>
    80003fd4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fd8:	00090513          	mv	a0,s2
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	098080e7          	jalr	152(ra) # 80002074 <_ZdlPv>
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	00009097          	auipc	ra,0x9
    80003fec:	9b0080e7          	jalr	-1616(ra) # 8000c998 <_Unwind_Resume>
    80003ff0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ff4:	000b8513          	mv	a0,s7
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	07c080e7          	jalr	124(ra) # 80002074 <_ZdlPv>
    80004000:	00048513          	mv	a0,s1
    80004004:	00009097          	auipc	ra,0x9
    80004008:	994080e7          	jalr	-1644(ra) # 8000c998 <_Unwind_Resume>
    8000400c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004010:	00048513          	mv	a0,s1
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	060080e7          	jalr	96(ra) # 80002074 <_ZdlPv>
    8000401c:	00090513          	mv	a0,s2
    80004020:	00009097          	auipc	ra,0x9
    80004024:	978080e7          	jalr	-1672(ra) # 8000c998 <_Unwind_Resume>
    80004028:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000402c:	000c8513          	mv	a0,s9
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	044080e7          	jalr	68(ra) # 80002074 <_ZdlPv>
    80004038:	00048513          	mv	a0,s1
    8000403c:	00009097          	auipc	ra,0x9
    80004040:	95c080e7          	jalr	-1700(ra) # 8000c998 <_Unwind_Resume>

0000000080004044 <_ZN8Consumer3runEv>:
    void run() override {
    80004044:	fd010113          	addi	sp,sp,-48
    80004048:	02113423          	sd	ra,40(sp)
    8000404c:	02813023          	sd	s0,32(sp)
    80004050:	00913c23          	sd	s1,24(sp)
    80004054:	01213823          	sd	s2,16(sp)
    80004058:	01313423          	sd	s3,8(sp)
    8000405c:	03010413          	addi	s0,sp,48
    80004060:	00050913          	mv	s2,a0
        int i = 0;
    80004064:	00000993          	li	s3,0
    80004068:	0100006f          	j	80004078 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000406c:	00a00513          	li	a0,10
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	2f8080e7          	jalr	760(ra) # 80002368 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004078:	00008797          	auipc	a5,0x8
    8000407c:	8187a783          	lw	a5,-2024(a5) # 8000b890 <_ZL9threadEnd>
    80004080:	04079a63          	bnez	a5,800040d4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004084:	02093783          	ld	a5,32(s2)
    80004088:	0087b503          	ld	a0,8(a5)
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	638080e7          	jalr	1592(ra) # 800056c4 <_ZN9BufferCPP3getEv>
            i++;
    80004094:	0019849b          	addiw	s1,s3,1
    80004098:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000409c:	0ff57513          	andi	a0,a0,255
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	2c8080e7          	jalr	712(ra) # 80002368 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800040a8:	05000793          	li	a5,80
    800040ac:	02f4e4bb          	remw	s1,s1,a5
    800040b0:	fc0494e3          	bnez	s1,80004078 <_ZN8Consumer3runEv+0x34>
    800040b4:	fb9ff06f          	j	8000406c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800040b8:	02093783          	ld	a5,32(s2)
    800040bc:	0087b503          	ld	a0,8(a5)
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	604080e7          	jalr	1540(ra) # 800056c4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800040c8:	0ff57513          	andi	a0,a0,255
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	29c080e7          	jalr	668(ra) # 80002368 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040d4:	02093783          	ld	a5,32(s2)
    800040d8:	0087b503          	ld	a0,8(a5)
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	674080e7          	jalr	1652(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    800040e4:	fca04ae3          	bgtz	a0,800040b8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040e8:	02093783          	ld	a5,32(s2)
    800040ec:	0107b503          	ld	a0,16(a5)
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	188080e7          	jalr	392(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    800040f8:	02813083          	ld	ra,40(sp)
    800040fc:	02013403          	ld	s0,32(sp)
    80004100:	01813483          	ld	s1,24(sp)
    80004104:	01013903          	ld	s2,16(sp)
    80004108:	00813983          	ld	s3,8(sp)
    8000410c:	03010113          	addi	sp,sp,48
    80004110:	00008067          	ret

0000000080004114 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00113423          	sd	ra,8(sp)
    8000411c:	00813023          	sd	s0,0(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00007797          	auipc	a5,0x7
    80004128:	5ec78793          	addi	a5,a5,1516 # 8000b710 <_ZTV8Consumer+0x10>
    8000412c:	00f53023          	sd	a5,0(a0)
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	e84080e7          	jalr	-380(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004138:	00813083          	ld	ra,8(sp)
    8000413c:	00013403          	ld	s0,0(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret

0000000080004148 <_ZN8ConsumerD0Ev>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	00050493          	mv	s1,a0
    80004160:	00007797          	auipc	a5,0x7
    80004164:	5b078793          	addi	a5,a5,1456 # 8000b710 <_ZTV8Consumer+0x10>
    80004168:	00f53023          	sd	a5,0(a0)
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	e48080e7          	jalr	-440(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004174:	00048513          	mv	a0,s1
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	efc080e7          	jalr	-260(ra) # 80002074 <_ZdlPv>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret

0000000080004194 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	00813023          	sd	s0,0(sp)
    800041a0:	01010413          	addi	s0,sp,16
    800041a4:	00007797          	auipc	a5,0x7
    800041a8:	51c78793          	addi	a5,a5,1308 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    800041ac:	00f53023          	sd	a5,0(a0)
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	e04080e7          	jalr	-508(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800041b8:	00813083          	ld	ra,8(sp)
    800041bc:	00013403          	ld	s0,0(sp)
    800041c0:	01010113          	addi	sp,sp,16
    800041c4:	00008067          	ret

00000000800041c8 <_ZN16ProducerKeyboradD0Ev>:
    800041c8:	fe010113          	addi	sp,sp,-32
    800041cc:	00113c23          	sd	ra,24(sp)
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00913423          	sd	s1,8(sp)
    800041d8:	02010413          	addi	s0,sp,32
    800041dc:	00050493          	mv	s1,a0
    800041e0:	00007797          	auipc	a5,0x7
    800041e4:	4e078793          	addi	a5,a5,1248 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    800041e8:	00f53023          	sd	a5,0(a0)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	dc8080e7          	jalr	-568(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800041f4:	00048513          	mv	a0,s1
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	e7c080e7          	jalr	-388(ra) # 80002074 <_ZdlPv>
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret

0000000080004214 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004214:	ff010113          	addi	sp,sp,-16
    80004218:	00113423          	sd	ra,8(sp)
    8000421c:	00813023          	sd	s0,0(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00007797          	auipc	a5,0x7
    80004228:	4c478793          	addi	a5,a5,1220 # 8000b6e8 <_ZTV8Producer+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    80004230:	ffffe097          	auipc	ra,0xffffe
    80004234:	d84080e7          	jalr	-636(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004238:	00813083          	ld	ra,8(sp)
    8000423c:	00013403          	ld	s0,0(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <_ZN8ProducerD0Ev>:
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    80004260:	00007797          	auipc	a5,0x7
    80004264:	48878793          	addi	a5,a5,1160 # 8000b6e8 <_ZTV8Producer+0x10>
    80004268:	00f53023          	sd	a5,0(a0)
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	d48080e7          	jalr	-696(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80004274:	00048513          	mv	a0,s1
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	dfc080e7          	jalr	-516(ra) # 80002074 <_ZdlPv>
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	234080e7          	jalr	564(ra) # 800014e0 <_Z4getcv>
    800042b4:	0005059b          	sext.w	a1,a0
    800042b8:	01b00793          	li	a5,27
    800042bc:	00f58c63          	beq	a1,a5,800042d4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800042c0:	0204b783          	ld	a5,32(s1)
    800042c4:	0087b503          	ld	a0,8(a5)
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	36c080e7          	jalr	876(ra) # 80005634 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042d0:	fddff06f          	j	800042ac <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042d4:	00100793          	li	a5,1
    800042d8:	00007717          	auipc	a4,0x7
    800042dc:	5af72c23          	sw	a5,1464(a4) # 8000b890 <_ZL9threadEnd>
        td->buffer->put('!');
    800042e0:	0204b783          	ld	a5,32(s1)
    800042e4:	02100593          	li	a1,33
    800042e8:	0087b503          	ld	a0,8(a5)
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	348080e7          	jalr	840(ra) # 80005634 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800042f4:	0204b783          	ld	a5,32(s1)
    800042f8:	0107b503          	ld	a0,16(a5)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	f7c080e7          	jalr	-132(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    80004304:	01813083          	ld	ra,24(sp)
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <_ZN8Producer3runEv>:
    void run() override {
    80004318:	fe010113          	addi	sp,sp,-32
    8000431c:	00113c23          	sd	ra,24(sp)
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00913423          	sd	s1,8(sp)
    80004328:	01213023          	sd	s2,0(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	00050493          	mv	s1,a0
        int i = 0;
    80004334:	00000913          	li	s2,0
        while (!threadEnd) {
    80004338:	00007797          	auipc	a5,0x7
    8000433c:	5587a783          	lw	a5,1368(a5) # 8000b890 <_ZL9threadEnd>
    80004340:	04079263          	bnez	a5,80004384 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004344:	0204b783          	ld	a5,32(s1)
    80004348:	0007a583          	lw	a1,0(a5)
    8000434c:	0305859b          	addiw	a1,a1,48
    80004350:	0087b503          	ld	a0,8(a5)
    80004354:	00001097          	auipc	ra,0x1
    80004358:	2e0080e7          	jalr	736(ra) # 80005634 <_ZN9BufferCPP3putEi>
            i++;
    8000435c:	0019071b          	addiw	a4,s2,1
    80004360:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004364:	0204b783          	ld	a5,32(s1)
    80004368:	0007a783          	lw	a5,0(a5)
    8000436c:	00e787bb          	addw	a5,a5,a4
    80004370:	00500513          	li	a0,5
    80004374:	02a7e53b          	remw	a0,a5,a0
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	e38080e7          	jalr	-456(ra) # 800021b0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004380:	fb9ff06f          	j	80004338 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004384:	0204b783          	ld	a5,32(s1)
    80004388:	0107b503          	ld	a0,16(a5)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	eec080e7          	jalr	-276(ra) # 80002278 <_ZN9Semaphore6signalEv>
    }
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	00013903          	ld	s2,0(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	00008067          	ret

00000000800043ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00113c23          	sd	ra,24(sp)
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00913423          	sd	s1,8(sp)
    800043bc:	01213023          	sd	s2,0(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043c8:	00100793          	li	a5,1
    800043cc:	02a7f863          	bgeu	a5,a0,800043fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043d0:	00a00793          	li	a5,10
    800043d4:	02f577b3          	remu	a5,a0,a5
    800043d8:	02078e63          	beqz	a5,80004414 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043dc:	fff48513          	addi	a0,s1,-1
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	fcc080e7          	jalr	-52(ra) # 800043ac <_ZL9fibonaccim>
    800043e8:	00050913          	mv	s2,a0
    800043ec:	ffe48513          	addi	a0,s1,-2
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	fbc080e7          	jalr	-68(ra) # 800043ac <_ZL9fibonaccim>
    800043f8:	00a90533          	add	a0,s2,a0
}
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004414:	ffffd097          	auipc	ra,0xffffd
    80004418:	fcc080e7          	jalr	-52(ra) # 800013e0 <_Z15thread_dispatchv>
    8000441c:	fc1ff06f          	j	800043dc <_ZL9fibonaccim+0x30>

0000000080004420 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00113c23          	sd	ra,24(sp)
    80004428:	00813823          	sd	s0,16(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	01213023          	sd	s2,0(sp)
    80004434:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004438:	00a00493          	li	s1,10
    8000443c:	0400006f          	j	8000447c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	d7850513          	addi	a0,a0,-648 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	dc8080e7          	jalr	-568(ra) # 80005210 <_Z11printStringPKc>
    80004450:	00000613          	li	a2,0
    80004454:	00a00593          	li	a1,10
    80004458:	00048513          	mv	a0,s1
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	f64080e7          	jalr	-156(ra) # 800053c0 <_Z8printIntiii>
    80004464:	00005517          	auipc	a0,0x5
    80004468:	c4450513          	addi	a0,a0,-956 # 800090a8 <CONSOLE_STATUS+0x98>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	da4080e7          	jalr	-604(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004474:	0014849b          	addiw	s1,s1,1
    80004478:	0ff4f493          	andi	s1,s1,255
    8000447c:	00c00793          	li	a5,12
    80004480:	fc97f0e3          	bgeu	a5,s1,80004440 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	d3c50513          	addi	a0,a0,-708 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	d84080e7          	jalr	-636(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004494:	00500313          	li	t1,5
    thread_dispatch();
    80004498:	ffffd097          	auipc	ra,0xffffd
    8000449c:	f48080e7          	jalr	-184(ra) # 800013e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800044a0:	01000513          	li	a0,16
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	f08080e7          	jalr	-248(ra) # 800043ac <_ZL9fibonaccim>
    800044ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	d2050513          	addi	a0,a0,-736 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	d58080e7          	jalr	-680(ra) # 80005210 <_Z11printStringPKc>
    800044c0:	00000613          	li	a2,0
    800044c4:	00a00593          	li	a1,10
    800044c8:	0009051b          	sext.w	a0,s2
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	ef4080e7          	jalr	-268(ra) # 800053c0 <_Z8printIntiii>
    800044d4:	00005517          	auipc	a0,0x5
    800044d8:	bd450513          	addi	a0,a0,-1068 # 800090a8 <CONSOLE_STATUS+0x98>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	d34080e7          	jalr	-716(ra) # 80005210 <_Z11printStringPKc>
    800044e4:	0400006f          	j	80004524 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	cd050513          	addi	a0,a0,-816 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	d20080e7          	jalr	-736(ra) # 80005210 <_Z11printStringPKc>
    800044f8:	00000613          	li	a2,0
    800044fc:	00a00593          	li	a1,10
    80004500:	00048513          	mv	a0,s1
    80004504:	00001097          	auipc	ra,0x1
    80004508:	ebc080e7          	jalr	-324(ra) # 800053c0 <_Z8printIntiii>
    8000450c:	00005517          	auipc	a0,0x5
    80004510:	b9c50513          	addi	a0,a0,-1124 # 800090a8 <CONSOLE_STATUS+0x98>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	cfc080e7          	jalr	-772(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000451c:	0014849b          	addiw	s1,s1,1
    80004520:	0ff4f493          	andi	s1,s1,255
    80004524:	00f00793          	li	a5,15
    80004528:	fc97f0e3          	bgeu	a5,s1,800044e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	cb450513          	addi	a0,a0,-844 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	cdc080e7          	jalr	-804(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    8000453c:	00100793          	li	a5,1
    80004540:	00007717          	auipc	a4,0x7
    80004544:	36f70023          	sb	a5,864(a4) # 8000b8a0 <_ZL9finishedD>
    thread_dispatch();
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	e98080e7          	jalr	-360(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	00813483          	ld	s1,8(sp)
    8000455c:	00013903          	ld	s2,0(sp)
    80004560:	02010113          	addi	sp,sp,32
    80004564:	00008067          	ret

0000000080004568 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	01213023          	sd	s2,0(sp)
    8000457c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004580:	00000493          	li	s1,0
    80004584:	0400006f          	j	800045c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	c0050513          	addi	a0,a0,-1024 # 80009188 <CONSOLE_STATUS+0x178>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	c80080e7          	jalr	-896(ra) # 80005210 <_Z11printStringPKc>
    80004598:	00000613          	li	a2,0
    8000459c:	00a00593          	li	a1,10
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	e1c080e7          	jalr	-484(ra) # 800053c0 <_Z8printIntiii>
    800045ac:	00005517          	auipc	a0,0x5
    800045b0:	afc50513          	addi	a0,a0,-1284 # 800090a8 <CONSOLE_STATUS+0x98>
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	c5c080e7          	jalr	-932(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045bc:	0014849b          	addiw	s1,s1,1
    800045c0:	0ff4f493          	andi	s1,s1,255
    800045c4:	00200793          	li	a5,2
    800045c8:	fc97f0e3          	bgeu	a5,s1,80004588 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	bc450513          	addi	a0,a0,-1084 # 80009190 <CONSOLE_STATUS+0x180>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	c3c080e7          	jalr	-964(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045dc:	00700313          	li	t1,7
    thread_dispatch();
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	e00080e7          	jalr	-512(ra) # 800013e0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	bb450513          	addi	a0,a0,-1100 # 800091a0 <CONSOLE_STATUS+0x190>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	c1c080e7          	jalr	-996(ra) # 80005210 <_Z11printStringPKc>
    800045fc:	00000613          	li	a2,0
    80004600:	00a00593          	li	a1,10
    80004604:	0009051b          	sext.w	a0,s2
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	db8080e7          	jalr	-584(ra) # 800053c0 <_Z8printIntiii>
    80004610:	00005517          	auipc	a0,0x5
    80004614:	a9850513          	addi	a0,a0,-1384 # 800090a8 <CONSOLE_STATUS+0x98>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	bf8080e7          	jalr	-1032(ra) # 80005210 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004620:	00c00513          	li	a0,12
    80004624:	00000097          	auipc	ra,0x0
    80004628:	d88080e7          	jalr	-632(ra) # 800043ac <_ZL9fibonaccim>
    8000462c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004630:	00005517          	auipc	a0,0x5
    80004634:	b7850513          	addi	a0,a0,-1160 # 800091a8 <CONSOLE_STATUS+0x198>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	bd8080e7          	jalr	-1064(ra) # 80005210 <_Z11printStringPKc>
    80004640:	00000613          	li	a2,0
    80004644:	00a00593          	li	a1,10
    80004648:	0009051b          	sext.w	a0,s2
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	d74080e7          	jalr	-652(ra) # 800053c0 <_Z8printIntiii>
    80004654:	00005517          	auipc	a0,0x5
    80004658:	a5450513          	addi	a0,a0,-1452 # 800090a8 <CONSOLE_STATUS+0x98>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	bb4080e7          	jalr	-1100(ra) # 80005210 <_Z11printStringPKc>
    80004664:	0400006f          	j	800046a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	b2050513          	addi	a0,a0,-1248 # 80009188 <CONSOLE_STATUS+0x178>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	ba0080e7          	jalr	-1120(ra) # 80005210 <_Z11printStringPKc>
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	00048513          	mv	a0,s1
    80004684:	00001097          	auipc	ra,0x1
    80004688:	d3c080e7          	jalr	-708(ra) # 800053c0 <_Z8printIntiii>
    8000468c:	00005517          	auipc	a0,0x5
    80004690:	a1c50513          	addi	a0,a0,-1508 # 800090a8 <CONSOLE_STATUS+0x98>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	b7c080e7          	jalr	-1156(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	0ff4f493          	andi	s1,s1,255
    800046a4:	00500793          	li	a5,5
    800046a8:	fc97f0e3          	bgeu	a5,s1,80004668 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800046ac:	00005517          	auipc	a0,0x5
    800046b0:	ab450513          	addi	a0,a0,-1356 # 80009160 <CONSOLE_STATUS+0x150>
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	b5c080e7          	jalr	-1188(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    800046bc:	00100793          	li	a5,1
    800046c0:	00007717          	auipc	a4,0x7
    800046c4:	1ef700a3          	sb	a5,481(a4) # 8000b8a1 <_ZL9finishedC>
    thread_dispatch();
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	d18080e7          	jalr	-744(ra) # 800013e0 <_Z15thread_dispatchv>
}
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	00013903          	ld	s2,0(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret

00000000800046e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	01213023          	sd	s2,0(sp)
    800046fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004700:	00000913          	li	s2,0
    80004704:	0380006f          	j	8000473c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004708:	ffffd097          	auipc	ra,0xffffd
    8000470c:	cd8080e7          	jalr	-808(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004710:	00148493          	addi	s1,s1,1
    80004714:	000027b7          	lui	a5,0x2
    80004718:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000471c:	0097ee63          	bltu	a5,s1,80004738 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004720:	00000713          	li	a4,0
    80004724:	000077b7          	lui	a5,0x7
    80004728:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000472c:	fce7eee3          	bltu	a5,a4,80004708 <_ZL11workerBodyBPv+0x20>
    80004730:	00170713          	addi	a4,a4,1
    80004734:	ff1ff06f          	j	80004724 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004738:	00190913          	addi	s2,s2,1
    8000473c:	00f00793          	li	a5,15
    80004740:	0527e063          	bltu	a5,s2,80004780 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004744:	00005517          	auipc	a0,0x5
    80004748:	a2c50513          	addi	a0,a0,-1492 # 80009170 <CONSOLE_STATUS+0x160>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	ac4080e7          	jalr	-1340(ra) # 80005210 <_Z11printStringPKc>
    80004754:	00000613          	li	a2,0
    80004758:	00a00593          	li	a1,10
    8000475c:	0009051b          	sext.w	a0,s2
    80004760:	00001097          	auipc	ra,0x1
    80004764:	c60080e7          	jalr	-928(ra) # 800053c0 <_Z8printIntiii>
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	94050513          	addi	a0,a0,-1728 # 800090a8 <CONSOLE_STATUS+0x98>
    80004770:	00001097          	auipc	ra,0x1
    80004774:	aa0080e7          	jalr	-1376(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004778:	00000493          	li	s1,0
    8000477c:	f99ff06f          	j	80004714 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004780:	00005517          	auipc	a0,0x5
    80004784:	9f850513          	addi	a0,a0,-1544 # 80009178 <CONSOLE_STATUS+0x168>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	a88080e7          	jalr	-1400(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80004790:	00100793          	li	a5,1
    80004794:	00007717          	auipc	a4,0x7
    80004798:	10f70723          	sb	a5,270(a4) # 8000b8a2 <_ZL9finishedB>
    thread_dispatch();
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	c44080e7          	jalr	-956(ra) # 800013e0 <_Z15thread_dispatchv>
}
    800047a4:	01813083          	ld	ra,24(sp)
    800047a8:	01013403          	ld	s0,16(sp)
    800047ac:	00813483          	ld	s1,8(sp)
    800047b0:	00013903          	ld	s2,0(sp)
    800047b4:	02010113          	addi	sp,sp,32
    800047b8:	00008067          	ret

00000000800047bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800047bc:	fe010113          	addi	sp,sp,-32
    800047c0:	00113c23          	sd	ra,24(sp)
    800047c4:	00813823          	sd	s0,16(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	01213023          	sd	s2,0(sp)
    800047d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047d4:	00000913          	li	s2,0
    800047d8:	0380006f          	j	80004810 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	c04080e7          	jalr	-1020(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047e4:	00148493          	addi	s1,s1,1
    800047e8:	000027b7          	lui	a5,0x2
    800047ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047f0:	0097ee63          	bltu	a5,s1,8000480c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047f4:	00000713          	li	a4,0
    800047f8:	000077b7          	lui	a5,0x7
    800047fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004800:	fce7eee3          	bltu	a5,a4,800047dc <_ZL11workerBodyAPv+0x20>
    80004804:	00170713          	addi	a4,a4,1
    80004808:	ff1ff06f          	j	800047f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000480c:	00190913          	addi	s2,s2,1
    80004810:	00900793          	li	a5,9
    80004814:	0527e063          	bltu	a5,s2,80004854 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	94050513          	addi	a0,a0,-1728 # 80009158 <CONSOLE_STATUS+0x148>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	9f0080e7          	jalr	-1552(ra) # 80005210 <_Z11printStringPKc>
    80004828:	00000613          	li	a2,0
    8000482c:	00a00593          	li	a1,10
    80004830:	0009051b          	sext.w	a0,s2
    80004834:	00001097          	auipc	ra,0x1
    80004838:	b8c080e7          	jalr	-1140(ra) # 800053c0 <_Z8printIntiii>
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	86c50513          	addi	a0,a0,-1940 # 800090a8 <CONSOLE_STATUS+0x98>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	9cc080e7          	jalr	-1588(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000484c:	00000493          	li	s1,0
    80004850:	f99ff06f          	j	800047e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004854:	00005517          	auipc	a0,0x5
    80004858:	90c50513          	addi	a0,a0,-1780 # 80009160 <CONSOLE_STATUS+0x150>
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	9b4080e7          	jalr	-1612(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    80004864:	00100793          	li	a5,1
    80004868:	00007717          	auipc	a4,0x7
    8000486c:	02f70da3          	sb	a5,59(a4) # 8000b8a3 <_ZL9finishedA>
}
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	00013903          	ld	s2,0(sp)
    80004880:	02010113          	addi	sp,sp,32
    80004884:	00008067          	ret

0000000080004888 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004888:	fd010113          	addi	sp,sp,-48
    8000488c:	02113423          	sd	ra,40(sp)
    80004890:	02813023          	sd	s0,32(sp)
    80004894:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004898:	00000613          	li	a2,0
    8000489c:	00000597          	auipc	a1,0x0
    800048a0:	f2058593          	addi	a1,a1,-224 # 800047bc <_ZL11workerBodyAPv>
    800048a4:	fd040513          	addi	a0,s0,-48
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	a64080e7          	jalr	-1436(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	94050513          	addi	a0,a0,-1728 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	958080e7          	jalr	-1704(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800048c0:	00000613          	li	a2,0
    800048c4:	00000597          	auipc	a1,0x0
    800048c8:	e2458593          	addi	a1,a1,-476 # 800046e8 <_ZL11workerBodyBPv>
    800048cc:	fd840513          	addi	a0,s0,-40
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	a3c080e7          	jalr	-1476(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	93050513          	addi	a0,a0,-1744 # 80009208 <CONSOLE_STATUS+0x1f8>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	930080e7          	jalr	-1744(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048e8:	00000613          	li	a2,0
    800048ec:	00000597          	auipc	a1,0x0
    800048f0:	c7c58593          	addi	a1,a1,-900 # 80004568 <_ZL11workerBodyCPv>
    800048f4:	fe040513          	addi	a0,s0,-32
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	a14080e7          	jalr	-1516(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004900:	00005517          	auipc	a0,0x5
    80004904:	92050513          	addi	a0,a0,-1760 # 80009220 <CONSOLE_STATUS+0x210>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	908080e7          	jalr	-1784(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004910:	00000613          	li	a2,0
    80004914:	00000597          	auipc	a1,0x0
    80004918:	b0c58593          	addi	a1,a1,-1268 # 80004420 <_ZL11workerBodyDPv>
    8000491c:	fe840513          	addi	a0,s0,-24
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	9ec080e7          	jalr	-1556(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	91050513          	addi	a0,a0,-1776 # 80009238 <CONSOLE_STATUS+0x228>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	8e0080e7          	jalr	-1824(ra) # 80005210 <_Z11printStringPKc>
    80004938:	00c0006f          	j	80004944 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	aa4080e7          	jalr	-1372(ra) # 800013e0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004944:	00007797          	auipc	a5,0x7
    80004948:	f5f7c783          	lbu	a5,-161(a5) # 8000b8a3 <_ZL9finishedA>
    8000494c:	fe0788e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    80004950:	00007797          	auipc	a5,0x7
    80004954:	f527c783          	lbu	a5,-174(a5) # 8000b8a2 <_ZL9finishedB>
    80004958:	fe0782e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    8000495c:	00007797          	auipc	a5,0x7
    80004960:	f457c783          	lbu	a5,-187(a5) # 8000b8a1 <_ZL9finishedC>
    80004964:	fc078ce3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    80004968:	00007797          	auipc	a5,0x7
    8000496c:	f387c783          	lbu	a5,-200(a5) # 8000b8a0 <_ZL9finishedD>
    80004970:	fc0786e3          	beqz	a5,8000493c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004974:	02813083          	ld	ra,40(sp)
    80004978:	02013403          	ld	s0,32(sp)
    8000497c:	03010113          	addi	sp,sp,48
    80004980:	00008067          	ret

0000000080004984 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004984:	fd010113          	addi	sp,sp,-48
    80004988:	02113423          	sd	ra,40(sp)
    8000498c:	02813023          	sd	s0,32(sp)
    80004990:	00913c23          	sd	s1,24(sp)
    80004994:	01213823          	sd	s2,16(sp)
    80004998:	01313423          	sd	s3,8(sp)
    8000499c:	03010413          	addi	s0,sp,48
    800049a0:	00050993          	mv	s3,a0
    800049a4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800049a8:	00000913          	li	s2,0
    800049ac:	00c0006f          	j	800049b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	7d8080e7          	jalr	2008(ra) # 80002188 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	b28080e7          	jalr	-1240(ra) # 800014e0 <_Z4getcv>
    800049c0:	0005059b          	sext.w	a1,a0
    800049c4:	01b00793          	li	a5,27
    800049c8:	02f58a63          	beq	a1,a5,800049fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800049cc:	0084b503          	ld	a0,8(s1)
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	c64080e7          	jalr	-924(ra) # 80005634 <_ZN9BufferCPP3putEi>
        i++;
    800049d8:	0019071b          	addiw	a4,s2,1
    800049dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049e0:	0004a683          	lw	a3,0(s1)
    800049e4:	0026979b          	slliw	a5,a3,0x2
    800049e8:	00d787bb          	addw	a5,a5,a3
    800049ec:	0017979b          	slliw	a5,a5,0x1
    800049f0:	02f767bb          	remw	a5,a4,a5
    800049f4:	fc0792e3          	bnez	a5,800049b8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800049f8:	fb9ff06f          	j	800049b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049fc:	00100793          	li	a5,1
    80004a00:	00007717          	auipc	a4,0x7
    80004a04:	eaf72423          	sw	a5,-344(a4) # 8000b8a8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a08:	0209b783          	ld	a5,32(s3)
    80004a0c:	02100593          	li	a1,33
    80004a10:	0087b503          	ld	a0,8(a5)
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	c20080e7          	jalr	-992(ra) # 80005634 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a1c:	0104b503          	ld	a0,16(s1)
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	858080e7          	jalr	-1960(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    80004a28:	02813083          	ld	ra,40(sp)
    80004a2c:	02013403          	ld	s0,32(sp)
    80004a30:	01813483          	ld	s1,24(sp)
    80004a34:	01013903          	ld	s2,16(sp)
    80004a38:	00813983          	ld	s3,8(sp)
    80004a3c:	03010113          	addi	sp,sp,48
    80004a40:	00008067          	ret

0000000080004a44 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a44:	fe010113          	addi	sp,sp,-32
    80004a48:	00113c23          	sd	ra,24(sp)
    80004a4c:	00813823          	sd	s0,16(sp)
    80004a50:	00913423          	sd	s1,8(sp)
    80004a54:	01213023          	sd	s2,0(sp)
    80004a58:	02010413          	addi	s0,sp,32
    80004a5c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a60:	00000913          	li	s2,0
    80004a64:	00c0006f          	j	80004a70 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	720080e7          	jalr	1824(ra) # 80002188 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a70:	00007797          	auipc	a5,0x7
    80004a74:	e387a783          	lw	a5,-456(a5) # 8000b8a8 <_ZL9threadEnd>
    80004a78:	02079e63          	bnez	a5,80004ab4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a7c:	0004a583          	lw	a1,0(s1)
    80004a80:	0305859b          	addiw	a1,a1,48
    80004a84:	0084b503          	ld	a0,8(s1)
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	bac080e7          	jalr	-1108(ra) # 80005634 <_ZN9BufferCPP3putEi>
        i++;
    80004a90:	0019071b          	addiw	a4,s2,1
    80004a94:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a98:	0004a683          	lw	a3,0(s1)
    80004a9c:	0026979b          	slliw	a5,a3,0x2
    80004aa0:	00d787bb          	addw	a5,a5,a3
    80004aa4:	0017979b          	slliw	a5,a5,0x1
    80004aa8:	02f767bb          	remw	a5,a4,a5
    80004aac:	fc0792e3          	bnez	a5,80004a70 <_ZN12ProducerSync8producerEPv+0x2c>
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ab4:	0104b503          	ld	a0,16(s1)
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	7c0080e7          	jalr	1984(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ad8:	fd010113          	addi	sp,sp,-48
    80004adc:	02113423          	sd	ra,40(sp)
    80004ae0:	02813023          	sd	s0,32(sp)
    80004ae4:	00913c23          	sd	s1,24(sp)
    80004ae8:	01213823          	sd	s2,16(sp)
    80004aec:	01313423          	sd	s3,8(sp)
    80004af0:	01413023          	sd	s4,0(sp)
    80004af4:	03010413          	addi	s0,sp,48
    80004af8:	00050993          	mv	s3,a0
    80004afc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b00:	00000a13          	li	s4,0
    80004b04:	01c0006f          	j	80004b20 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	680080e7          	jalr	1664(ra) # 80002188 <_ZN6Thread8dispatchEv>
    80004b10:	0500006f          	j	80004b60 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b14:	00a00513          	li	a0,10
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	a14080e7          	jalr	-1516(ra) # 8000152c <_Z4putcc>
    while (!threadEnd) {
    80004b20:	00007797          	auipc	a5,0x7
    80004b24:	d887a783          	lw	a5,-632(a5) # 8000b8a8 <_ZL9threadEnd>
    80004b28:	06079263          	bnez	a5,80004b8c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b2c:	00893503          	ld	a0,8(s2)
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	b94080e7          	jalr	-1132(ra) # 800056c4 <_ZN9BufferCPP3getEv>
        i++;
    80004b38:	001a049b          	addiw	s1,s4,1
    80004b3c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b40:	0ff57513          	andi	a0,a0,255
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	9e8080e7          	jalr	-1560(ra) # 8000152c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b4c:	00092703          	lw	a4,0(s2)
    80004b50:	0027179b          	slliw	a5,a4,0x2
    80004b54:	00e787bb          	addw	a5,a5,a4
    80004b58:	02f4e7bb          	remw	a5,s1,a5
    80004b5c:	fa0786e3          	beqz	a5,80004b08 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b60:	05000793          	li	a5,80
    80004b64:	02f4e4bb          	remw	s1,s1,a5
    80004b68:	fa049ce3          	bnez	s1,80004b20 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b6c:	fa9ff06f          	j	80004b14 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b70:	0209b783          	ld	a5,32(s3)
    80004b74:	0087b503          	ld	a0,8(a5)
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	b4c080e7          	jalr	-1204(ra) # 800056c4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b80:	0ff57513          	andi	a0,a0,255
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	7e4080e7          	jalr	2020(ra) # 80002368 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b8c:	0209b783          	ld	a5,32(s3)
    80004b90:	0087b503          	ld	a0,8(a5)
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	bbc080e7          	jalr	-1092(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    80004b9c:	fca04ae3          	bgtz	a0,80004b70 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004ba0:	01093503          	ld	a0,16(s2)
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	6d4080e7          	jalr	1748(ra) # 80002278 <_ZN9Semaphore6signalEv>
}
    80004bac:	02813083          	ld	ra,40(sp)
    80004bb0:	02013403          	ld	s0,32(sp)
    80004bb4:	01813483          	ld	s1,24(sp)
    80004bb8:	01013903          	ld	s2,16(sp)
    80004bbc:	00813983          	ld	s3,8(sp)
    80004bc0:	00013a03          	ld	s4,0(sp)
    80004bc4:	03010113          	addi	sp,sp,48
    80004bc8:	00008067          	ret

0000000080004bcc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004bcc:	f8010113          	addi	sp,sp,-128
    80004bd0:	06113c23          	sd	ra,120(sp)
    80004bd4:	06813823          	sd	s0,112(sp)
    80004bd8:	06913423          	sd	s1,104(sp)
    80004bdc:	07213023          	sd	s2,96(sp)
    80004be0:	05313c23          	sd	s3,88(sp)
    80004be4:	05413823          	sd	s4,80(sp)
    80004be8:	05513423          	sd	s5,72(sp)
    80004bec:	05613023          	sd	s6,64(sp)
    80004bf0:	03713c23          	sd	s7,56(sp)
    80004bf4:	03813823          	sd	s8,48(sp)
    80004bf8:	03913423          	sd	s9,40(sp)
    80004bfc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c00:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	46c50513          	addi	a0,a0,1132 # 80009070 <CONSOLE_STATUS+0x60>
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	604080e7          	jalr	1540(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80004c14:	01e00593          	li	a1,30
    80004c18:	f8040493          	addi	s1,s0,-128
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	678080e7          	jalr	1656(ra) # 80005298 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	744080e7          	jalr	1860(ra) # 80005370 <_Z11stringToIntPKc>
    80004c34:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	45850513          	addi	a0,a0,1112 # 80009090 <CONSOLE_STATUS+0x80>
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	5d0080e7          	jalr	1488(ra) # 80005210 <_Z11printStringPKc>
    getString(input, 30);
    80004c48:	01e00593          	li	a1,30
    80004c4c:	00048513          	mv	a0,s1
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	648080e7          	jalr	1608(ra) # 80005298 <_Z9getStringPci>
    n = stringToInt(input);
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	714080e7          	jalr	1812(ra) # 80005370 <_Z11stringToIntPKc>
    80004c64:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c68:	00004517          	auipc	a0,0x4
    80004c6c:	44850513          	addi	a0,a0,1096 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	5a0080e7          	jalr	1440(ra) # 80005210 <_Z11printStringPKc>
    80004c78:	00000613          	li	a2,0
    80004c7c:	00a00593          	li	a1,10
    80004c80:	00090513          	mv	a0,s2
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	73c080e7          	jalr	1852(ra) # 800053c0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c8c:	00004517          	auipc	a0,0x4
    80004c90:	43c50513          	addi	a0,a0,1084 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	57c080e7          	jalr	1404(ra) # 80005210 <_Z11printStringPKc>
    80004c9c:	00000613          	li	a2,0
    80004ca0:	00a00593          	li	a1,10
    80004ca4:	00048513          	mv	a0,s1
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	718080e7          	jalr	1816(ra) # 800053c0 <_Z8printIntiii>
    printString(".\n");
    80004cb0:	00004517          	auipc	a0,0x4
    80004cb4:	43050513          	addi	a0,a0,1072 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004cb8:	00000097          	auipc	ra,0x0
    80004cbc:	558080e7          	jalr	1368(ra) # 80005210 <_Z11printStringPKc>
    if(threadNum > n) {
    80004cc0:	0324c463          	blt	s1,s2,80004ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004cc4:	03205c63          	blez	s2,80004cfc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004cc8:	03800513          	li	a0,56
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	380080e7          	jalr	896(ra) # 8000204c <_Znwm>
    80004cd4:	00050a93          	mv	s5,a0
    80004cd8:	00048593          	mv	a1,s1
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	804080e7          	jalr	-2044(ra) # 800054e0 <_ZN9BufferCPPC1Ei>
    80004ce4:	0300006f          	j	80004d14 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004ce8:	00004517          	auipc	a0,0x4
    80004cec:	40050513          	addi	a0,a0,1024 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004cf0:	00000097          	auipc	ra,0x0
    80004cf4:	520080e7          	jalr	1312(ra) # 80005210 <_Z11printStringPKc>
        return;
    80004cf8:	0140006f          	j	80004d0c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004cfc:	00004517          	auipc	a0,0x4
    80004d00:	42c50513          	addi	a0,a0,1068 # 80009128 <CONSOLE_STATUS+0x118>
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	50c080e7          	jalr	1292(ra) # 80005210 <_Z11printStringPKc>
        return;
    80004d0c:	000b8113          	mv	sp,s7
    80004d10:	2380006f          	j	80004f48 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d14:	01000513          	li	a0,16
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	334080e7          	jalr	820(ra) # 8000204c <_Znwm>
    80004d20:	00050493          	mv	s1,a0
    80004d24:	00000593          	li	a1,0
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	4dc080e7          	jalr	1244(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    80004d30:	00007797          	auipc	a5,0x7
    80004d34:	b897b023          	sd	s1,-1152(a5) # 8000b8b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d38:	00391793          	slli	a5,s2,0x3
    80004d3c:	00f78793          	addi	a5,a5,15
    80004d40:	ff07f793          	andi	a5,a5,-16
    80004d44:	40f10133          	sub	sp,sp,a5
    80004d48:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d4c:	0019071b          	addiw	a4,s2,1
    80004d50:	00171793          	slli	a5,a4,0x1
    80004d54:	00e787b3          	add	a5,a5,a4
    80004d58:	00379793          	slli	a5,a5,0x3
    80004d5c:	00f78793          	addi	a5,a5,15
    80004d60:	ff07f793          	andi	a5,a5,-16
    80004d64:	40f10133          	sub	sp,sp,a5
    80004d68:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d6c:	00191c13          	slli	s8,s2,0x1
    80004d70:	012c07b3          	add	a5,s8,s2
    80004d74:	00379793          	slli	a5,a5,0x3
    80004d78:	00fa07b3          	add	a5,s4,a5
    80004d7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d80:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d84:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d88:	02800513          	li	a0,40
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	2c0080e7          	jalr	704(ra) # 8000204c <_Znwm>
    80004d94:	00050b13          	mv	s6,a0
    80004d98:	012c0c33          	add	s8,s8,s2
    80004d9c:	003c1c13          	slli	s8,s8,0x3
    80004da0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	438080e7          	jalr	1080(ra) # 800021dc <_ZN6ThreadC1Ev>
    80004dac:	00007797          	auipc	a5,0x7
    80004db0:	9dc78793          	addi	a5,a5,-1572 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004db4:	00fb3023          	sd	a5,0(s6)
    80004db8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004dbc:	000b0513          	mv	a0,s6
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	398080e7          	jalr	920(ra) # 80002158 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004dc8:	00000493          	li	s1,0
    80004dcc:	0380006f          	j	80004e04 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dd0:	00007797          	auipc	a5,0x7
    80004dd4:	99078793          	addi	a5,a5,-1648 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004dd8:	00fcb023          	sd	a5,0(s9)
    80004ddc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004de0:	00349793          	slli	a5,s1,0x3
    80004de4:	00f987b3          	add	a5,s3,a5
    80004de8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004dec:	00349793          	slli	a5,s1,0x3
    80004df0:	00f987b3          	add	a5,s3,a5
    80004df4:	0007b503          	ld	a0,0(a5)
    80004df8:	ffffd097          	auipc	ra,0xffffd
    80004dfc:	360080e7          	jalr	864(ra) # 80002158 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e00:	0014849b          	addiw	s1,s1,1
    80004e04:	0b24d063          	bge	s1,s2,80004ea4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e08:	00149793          	slli	a5,s1,0x1
    80004e0c:	009787b3          	add	a5,a5,s1
    80004e10:	00379793          	slli	a5,a5,0x3
    80004e14:	00fa07b3          	add	a5,s4,a5
    80004e18:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e1c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e20:	00007717          	auipc	a4,0x7
    80004e24:	a9073703          	ld	a4,-1392(a4) # 8000b8b0 <_ZL10waitForAll>
    80004e28:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e2c:	02905863          	blez	s1,80004e5c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e30:	02800513          	li	a0,40
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	218080e7          	jalr	536(ra) # 8000204c <_Znwm>
    80004e3c:	00050c93          	mv	s9,a0
    80004e40:	00149c13          	slli	s8,s1,0x1
    80004e44:	009c0c33          	add	s8,s8,s1
    80004e48:	003c1c13          	slli	s8,s8,0x3
    80004e4c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	38c080e7          	jalr	908(ra) # 800021dc <_ZN6ThreadC1Ev>
    80004e58:	f79ff06f          	j	80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e5c:	02800513          	li	a0,40
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	1ec080e7          	jalr	492(ra) # 8000204c <_Znwm>
    80004e68:	00050c93          	mv	s9,a0
    80004e6c:	00149c13          	slli	s8,s1,0x1
    80004e70:	009c0c33          	add	s8,s8,s1
    80004e74:	003c1c13          	slli	s8,s8,0x3
    80004e78:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	360080e7          	jalr	864(ra) # 800021dc <_ZN6ThreadC1Ev>
    80004e84:	00007797          	auipc	a5,0x7
    80004e88:	8b478793          	addi	a5,a5,-1868 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004e8c:	00fcb023          	sd	a5,0(s9)
    80004e90:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e94:	00349793          	slli	a5,s1,0x3
    80004e98:	00f987b3          	add	a5,s3,a5
    80004e9c:	0197b023          	sd	s9,0(a5)
    80004ea0:	f4dff06f          	j	80004dec <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	2e4080e7          	jalr	740(ra) # 80002188 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004eac:	00000493          	li	s1,0
    80004eb0:	00994e63          	blt	s2,s1,80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004eb4:	00007517          	auipc	a0,0x7
    80004eb8:	9fc53503          	ld	a0,-1540(a0) # 8000b8b0 <_ZL10waitForAll>
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	384080e7          	jalr	900(ra) # 80002240 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ec4:	0014849b          	addiw	s1,s1,1
    80004ec8:	fe9ff06f          	j	80004eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ecc:	00000493          	li	s1,0
    80004ed0:	0080006f          	j	80004ed8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ed4:	0014849b          	addiw	s1,s1,1
    80004ed8:	0324d263          	bge	s1,s2,80004efc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004edc:	00349793          	slli	a5,s1,0x3
    80004ee0:	00f987b3          	add	a5,s3,a5
    80004ee4:	0007b503          	ld	a0,0(a5)
    80004ee8:	fe0506e3          	beqz	a0,80004ed4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004eec:	00053783          	ld	a5,0(a0)
    80004ef0:	0087b783          	ld	a5,8(a5)
    80004ef4:	000780e7          	jalr	a5
    80004ef8:	fddff06f          	j	80004ed4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004efc:	000b0a63          	beqz	s6,80004f10 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f00:	000b3783          	ld	a5,0(s6)
    80004f04:	0087b783          	ld	a5,8(a5)
    80004f08:	000b0513          	mv	a0,s6
    80004f0c:	000780e7          	jalr	a5
    delete waitForAll;
    80004f10:	00007517          	auipc	a0,0x7
    80004f14:	9a053503          	ld	a0,-1632(a0) # 8000b8b0 <_ZL10waitForAll>
    80004f18:	00050863          	beqz	a0,80004f28 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f1c:	00053783          	ld	a5,0(a0)
    80004f20:	0087b783          	ld	a5,8(a5)
    80004f24:	000780e7          	jalr	a5
    delete buffer;
    80004f28:	000a8e63          	beqz	s5,80004f44 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f2c:	000a8513          	mv	a0,s5
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	8a8080e7          	jalr	-1880(ra) # 800057d8 <_ZN9BufferCPPD1Ev>
    80004f38:	000a8513          	mv	a0,s5
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	138080e7          	jalr	312(ra) # 80002074 <_ZdlPv>
    80004f44:	000b8113          	mv	sp,s7

}
    80004f48:	f8040113          	addi	sp,s0,-128
    80004f4c:	07813083          	ld	ra,120(sp)
    80004f50:	07013403          	ld	s0,112(sp)
    80004f54:	06813483          	ld	s1,104(sp)
    80004f58:	06013903          	ld	s2,96(sp)
    80004f5c:	05813983          	ld	s3,88(sp)
    80004f60:	05013a03          	ld	s4,80(sp)
    80004f64:	04813a83          	ld	s5,72(sp)
    80004f68:	04013b03          	ld	s6,64(sp)
    80004f6c:	03813b83          	ld	s7,56(sp)
    80004f70:	03013c03          	ld	s8,48(sp)
    80004f74:	02813c83          	ld	s9,40(sp)
    80004f78:	08010113          	addi	sp,sp,128
    80004f7c:	00008067          	ret
    80004f80:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f84:	000a8513          	mv	a0,s5
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	0ec080e7          	jalr	236(ra) # 80002074 <_ZdlPv>
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00008097          	auipc	ra,0x8
    80004f98:	a04080e7          	jalr	-1532(ra) # 8000c998 <_Unwind_Resume>
    80004f9c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004fa0:	00048513          	mv	a0,s1
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	0d0080e7          	jalr	208(ra) # 80002074 <_ZdlPv>
    80004fac:	00090513          	mv	a0,s2
    80004fb0:	00008097          	auipc	ra,0x8
    80004fb4:	9e8080e7          	jalr	-1560(ra) # 8000c998 <_Unwind_Resume>
    80004fb8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004fbc:	000b0513          	mv	a0,s6
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	0b4080e7          	jalr	180(ra) # 80002074 <_ZdlPv>
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	00008097          	auipc	ra,0x8
    80004fd0:	9cc080e7          	jalr	-1588(ra) # 8000c998 <_Unwind_Resume>
    80004fd4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fd8:	000c8513          	mv	a0,s9
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	098080e7          	jalr	152(ra) # 80002074 <_ZdlPv>
    80004fe4:	00048513          	mv	a0,s1
    80004fe8:	00008097          	auipc	ra,0x8
    80004fec:	9b0080e7          	jalr	-1616(ra) # 8000c998 <_Unwind_Resume>
    80004ff0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004ff4:	000c8513          	mv	a0,s9
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	07c080e7          	jalr	124(ra) # 80002074 <_ZdlPv>
    80005000:	00048513          	mv	a0,s1
    80005004:	00008097          	auipc	ra,0x8
    80005008:	994080e7          	jalr	-1644(ra) # 8000c998 <_Unwind_Resume>

000000008000500c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000500c:	ff010113          	addi	sp,sp,-16
    80005010:	00113423          	sd	ra,8(sp)
    80005014:	00813023          	sd	s0,0(sp)
    80005018:	01010413          	addi	s0,sp,16
    8000501c:	00006797          	auipc	a5,0x6
    80005020:	76c78793          	addi	a5,a5,1900 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80005024:	00f53023          	sd	a5,0(a0)
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	f8c080e7          	jalr	-116(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret

0000000080005040 <_ZN12ConsumerSyncD0Ev>:
    80005040:	fe010113          	addi	sp,sp,-32
    80005044:	00113c23          	sd	ra,24(sp)
    80005048:	00813823          	sd	s0,16(sp)
    8000504c:	00913423          	sd	s1,8(sp)
    80005050:	02010413          	addi	s0,sp,32
    80005054:	00050493          	mv	s1,a0
    80005058:	00006797          	auipc	a5,0x6
    8000505c:	73078793          	addi	a5,a5,1840 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80005060:	00f53023          	sd	a5,0(a0)
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	f50080e7          	jalr	-176(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    8000506c:	00048513          	mv	a0,s1
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	004080e7          	jalr	4(ra) # 80002074 <_ZdlPv>
    80005078:	01813083          	ld	ra,24(sp)
    8000507c:	01013403          	ld	s0,16(sp)
    80005080:	00813483          	ld	s1,8(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret

000000008000508c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000508c:	ff010113          	addi	sp,sp,-16
    80005090:	00113423          	sd	ra,8(sp)
    80005094:	00813023          	sd	s0,0(sp)
    80005098:	01010413          	addi	s0,sp,16
    8000509c:	00006797          	auipc	a5,0x6
    800050a0:	6c478793          	addi	a5,a5,1732 # 8000b760 <_ZTV12ProducerSync+0x10>
    800050a4:	00f53023          	sd	a5,0(a0)
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	f0c080e7          	jalr	-244(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800050b0:	00813083          	ld	ra,8(sp)
    800050b4:	00013403          	ld	s0,0(sp)
    800050b8:	01010113          	addi	sp,sp,16
    800050bc:	00008067          	ret

00000000800050c0 <_ZN12ProducerSyncD0Ev>:
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	00050493          	mv	s1,a0
    800050d8:	00006797          	auipc	a5,0x6
    800050dc:	68878793          	addi	a5,a5,1672 # 8000b760 <_ZTV12ProducerSync+0x10>
    800050e0:	00f53023          	sd	a5,0(a0)
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	ed0080e7          	jalr	-304(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    800050ec:	00048513          	mv	a0,s1
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	f84080e7          	jalr	-124(ra) # 80002074 <_ZdlPv>
    800050f8:	01813083          	ld	ra,24(sp)
    800050fc:	01013403          	ld	s0,16(sp)
    80005100:	00813483          	ld	s1,8(sp)
    80005104:	02010113          	addi	sp,sp,32
    80005108:	00008067          	ret

000000008000510c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000510c:	ff010113          	addi	sp,sp,-16
    80005110:	00113423          	sd	ra,8(sp)
    80005114:	00813023          	sd	s0,0(sp)
    80005118:	01010413          	addi	s0,sp,16
    8000511c:	00006797          	auipc	a5,0x6
    80005120:	61c78793          	addi	a5,a5,1564 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80005124:	00f53023          	sd	a5,0(a0)
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	e8c080e7          	jalr	-372(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    80005130:	00813083          	ld	ra,8(sp)
    80005134:	00013403          	ld	s0,0(sp)
    80005138:	01010113          	addi	sp,sp,16
    8000513c:	00008067          	ret

0000000080005140 <_ZN16ProducerKeyboardD0Ev>:
    80005140:	fe010113          	addi	sp,sp,-32
    80005144:	00113c23          	sd	ra,24(sp)
    80005148:	00813823          	sd	s0,16(sp)
    8000514c:	00913423          	sd	s1,8(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	00050493          	mv	s1,a0
    80005158:	00006797          	auipc	a5,0x6
    8000515c:	5e078793          	addi	a5,a5,1504 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80005160:	00f53023          	sd	a5,0(a0)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	e50080e7          	jalr	-432(ra) # 80001fb4 <_ZN6ThreadD1Ev>
    8000516c:	00048513          	mv	a0,s1
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	f04080e7          	jalr	-252(ra) # 80002074 <_ZdlPv>
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	00813483          	ld	s1,8(sp)
    80005184:	02010113          	addi	sp,sp,32
    80005188:	00008067          	ret

000000008000518c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000518c:	ff010113          	addi	sp,sp,-16
    80005190:	00113423          	sd	ra,8(sp)
    80005194:	00813023          	sd	s0,0(sp)
    80005198:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000519c:	02053583          	ld	a1,32(a0)
    800051a0:	fffff097          	auipc	ra,0xfffff
    800051a4:	7e4080e7          	jalr	2020(ra) # 80004984 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800051a8:	00813083          	ld	ra,8(sp)
    800051ac:	00013403          	ld	s0,0(sp)
    800051b0:	01010113          	addi	sp,sp,16
    800051b4:	00008067          	ret

00000000800051b8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00113423          	sd	ra,8(sp)
    800051c0:	00813023          	sd	s0,0(sp)
    800051c4:	01010413          	addi	s0,sp,16
        producer(td);
    800051c8:	02053583          	ld	a1,32(a0)
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	878080e7          	jalr	-1928(ra) # 80004a44 <_ZN12ProducerSync8producerEPv>
    }
    800051d4:	00813083          	ld	ra,8(sp)
    800051d8:	00013403          	ld	s0,0(sp)
    800051dc:	01010113          	addi	sp,sp,16
    800051e0:	00008067          	ret

00000000800051e4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00113423          	sd	ra,8(sp)
    800051ec:	00813023          	sd	s0,0(sp)
    800051f0:	01010413          	addi	s0,sp,16
        consumer(td);
    800051f4:	02053583          	ld	a1,32(a0)
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	8e0080e7          	jalr	-1824(ra) # 80004ad8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005200:	00813083          	ld	ra,8(sp)
    80005204:	00013403          	ld	s0,0(sp)
    80005208:	01010113          	addi	sp,sp,16
    8000520c:	00008067          	ret

0000000080005210 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00813823          	sd	s0,16(sp)
    8000521c:	00913423          	sd	s1,8(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	00050493          	mv	s1,a0
    LOCK();
    80005228:	00100613          	li	a2,1
    8000522c:	00000593          	li	a1,0
    80005230:	00006517          	auipc	a0,0x6
    80005234:	68850513          	addi	a0,a0,1672 # 8000b8b8 <lockPrint>
    80005238:	ffffc097          	auipc	ra,0xffffc
    8000523c:	ff8080e7          	jalr	-8(ra) # 80001230 <copy_and_swap>
    80005240:	00050863          	beqz	a0,80005250 <_Z11printStringPKc+0x40>
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	19c080e7          	jalr	412(ra) # 800013e0 <_Z15thread_dispatchv>
    8000524c:	fddff06f          	j	80005228 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005250:	0004c503          	lbu	a0,0(s1)
    80005254:	00050a63          	beqz	a0,80005268 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005258:	ffffc097          	auipc	ra,0xffffc
    8000525c:	2d4080e7          	jalr	724(ra) # 8000152c <_Z4putcc>
        string++;
    80005260:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005264:	fedff06f          	j	80005250 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005268:	00000613          	li	a2,0
    8000526c:	00100593          	li	a1,1
    80005270:	00006517          	auipc	a0,0x6
    80005274:	64850513          	addi	a0,a0,1608 # 8000b8b8 <lockPrint>
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	fb8080e7          	jalr	-72(ra) # 80001230 <copy_and_swap>
    80005280:	fe0514e3          	bnez	a0,80005268 <_Z11printStringPKc+0x58>
}
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00813483          	ld	s1,8(sp)
    80005290:	02010113          	addi	sp,sp,32
    80005294:	00008067          	ret

0000000080005298 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005298:	fd010113          	addi	sp,sp,-48
    8000529c:	02113423          	sd	ra,40(sp)
    800052a0:	02813023          	sd	s0,32(sp)
    800052a4:	00913c23          	sd	s1,24(sp)
    800052a8:	01213823          	sd	s2,16(sp)
    800052ac:	01313423          	sd	s3,8(sp)
    800052b0:	01413023          	sd	s4,0(sp)
    800052b4:	03010413          	addi	s0,sp,48
    800052b8:	00050993          	mv	s3,a0
    800052bc:	00058a13          	mv	s4,a1
    LOCK();
    800052c0:	00100613          	li	a2,1
    800052c4:	00000593          	li	a1,0
    800052c8:	00006517          	auipc	a0,0x6
    800052cc:	5f050513          	addi	a0,a0,1520 # 8000b8b8 <lockPrint>
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	f60080e7          	jalr	-160(ra) # 80001230 <copy_and_swap>
    800052d8:	00050863          	beqz	a0,800052e8 <_Z9getStringPci+0x50>
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	104080e7          	jalr	260(ra) # 800013e0 <_Z15thread_dispatchv>
    800052e4:	fddff06f          	j	800052c0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052e8:	00000913          	li	s2,0
    800052ec:	00090493          	mv	s1,s2
    800052f0:	0019091b          	addiw	s2,s2,1
    800052f4:	03495a63          	bge	s2,s4,80005328 <_Z9getStringPci+0x90>
        cc = getc();
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	1e8080e7          	jalr	488(ra) # 800014e0 <_Z4getcv>
        if(cc < 1)
    80005300:	02050463          	beqz	a0,80005328 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005304:	009984b3          	add	s1,s3,s1
    80005308:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000530c:	00a00793          	li	a5,10
    80005310:	00f50a63          	beq	a0,a5,80005324 <_Z9getStringPci+0x8c>
    80005314:	00d00793          	li	a5,13
    80005318:	fcf51ae3          	bne	a0,a5,800052ec <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000531c:	00090493          	mv	s1,s2
    80005320:	0080006f          	j	80005328 <_Z9getStringPci+0x90>
    80005324:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005328:	009984b3          	add	s1,s3,s1
    8000532c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005330:	00000613          	li	a2,0
    80005334:	00100593          	li	a1,1
    80005338:	00006517          	auipc	a0,0x6
    8000533c:	58050513          	addi	a0,a0,1408 # 8000b8b8 <lockPrint>
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	ef0080e7          	jalr	-272(ra) # 80001230 <copy_and_swap>
    80005348:	fe0514e3          	bnez	a0,80005330 <_Z9getStringPci+0x98>
    return buf;
}
    8000534c:	00098513          	mv	a0,s3
    80005350:	02813083          	ld	ra,40(sp)
    80005354:	02013403          	ld	s0,32(sp)
    80005358:	01813483          	ld	s1,24(sp)
    8000535c:	01013903          	ld	s2,16(sp)
    80005360:	00813983          	ld	s3,8(sp)
    80005364:	00013a03          	ld	s4,0(sp)
    80005368:	03010113          	addi	sp,sp,48
    8000536c:	00008067          	ret

0000000080005370 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00813423          	sd	s0,8(sp)
    80005378:	01010413          	addi	s0,sp,16
    8000537c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005380:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005384:	0006c603          	lbu	a2,0(a3)
    80005388:	fd06071b          	addiw	a4,a2,-48
    8000538c:	0ff77713          	andi	a4,a4,255
    80005390:	00900793          	li	a5,9
    80005394:	02e7e063          	bltu	a5,a4,800053b4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005398:	0025179b          	slliw	a5,a0,0x2
    8000539c:	00a787bb          	addw	a5,a5,a0
    800053a0:	0017979b          	slliw	a5,a5,0x1
    800053a4:	00168693          	addi	a3,a3,1
    800053a8:	00c787bb          	addw	a5,a5,a2
    800053ac:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800053b0:	fd5ff06f          	j	80005384 <_Z11stringToIntPKc+0x14>
    return n;
}
    800053b4:	00813403          	ld	s0,8(sp)
    800053b8:	01010113          	addi	sp,sp,16
    800053bc:	00008067          	ret

00000000800053c0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800053c0:	fc010113          	addi	sp,sp,-64
    800053c4:	02113c23          	sd	ra,56(sp)
    800053c8:	02813823          	sd	s0,48(sp)
    800053cc:	02913423          	sd	s1,40(sp)
    800053d0:	03213023          	sd	s2,32(sp)
    800053d4:	01313c23          	sd	s3,24(sp)
    800053d8:	04010413          	addi	s0,sp,64
    800053dc:	00050493          	mv	s1,a0
    800053e0:	00058913          	mv	s2,a1
    800053e4:	00060993          	mv	s3,a2
    LOCK();
    800053e8:	00100613          	li	a2,1
    800053ec:	00000593          	li	a1,0
    800053f0:	00006517          	auipc	a0,0x6
    800053f4:	4c850513          	addi	a0,a0,1224 # 8000b8b8 <lockPrint>
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	e38080e7          	jalr	-456(ra) # 80001230 <copy_and_swap>
    80005400:	00050863          	beqz	a0,80005410 <_Z8printIntiii+0x50>
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	fdc080e7          	jalr	-36(ra) # 800013e0 <_Z15thread_dispatchv>
    8000540c:	fddff06f          	j	800053e8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005410:	00098463          	beqz	s3,80005418 <_Z8printIntiii+0x58>
    80005414:	0804c463          	bltz	s1,8000549c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005418:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000541c:	00000593          	li	a1,0
    }

    i = 0;
    80005420:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005424:	0009079b          	sext.w	a5,s2
    80005428:	0325773b          	remuw	a4,a0,s2
    8000542c:	00048613          	mv	a2,s1
    80005430:	0014849b          	addiw	s1,s1,1
    80005434:	02071693          	slli	a3,a4,0x20
    80005438:	0206d693          	srli	a3,a3,0x20
    8000543c:	00006717          	auipc	a4,0x6
    80005440:	36470713          	addi	a4,a4,868 # 8000b7a0 <digits>
    80005444:	00d70733          	add	a4,a4,a3
    80005448:	00074683          	lbu	a3,0(a4)
    8000544c:	fd040713          	addi	a4,s0,-48
    80005450:	00c70733          	add	a4,a4,a2
    80005454:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005458:	0005071b          	sext.w	a4,a0
    8000545c:	0325553b          	divuw	a0,a0,s2
    80005460:	fcf772e3          	bgeu	a4,a5,80005424 <_Z8printIntiii+0x64>
    if(neg)
    80005464:	00058c63          	beqz	a1,8000547c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005468:	fd040793          	addi	a5,s0,-48
    8000546c:	009784b3          	add	s1,a5,s1
    80005470:	02d00793          	li	a5,45
    80005474:	fef48823          	sb	a5,-16(s1)
    80005478:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000547c:	fff4849b          	addiw	s1,s1,-1
    80005480:	0204c463          	bltz	s1,800054a8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005484:	fd040793          	addi	a5,s0,-48
    80005488:	009787b3          	add	a5,a5,s1
    8000548c:	ff07c503          	lbu	a0,-16(a5)
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	09c080e7          	jalr	156(ra) # 8000152c <_Z4putcc>
    80005498:	fe5ff06f          	j	8000547c <_Z8printIntiii+0xbc>
        x = -xx;
    8000549c:	4090053b          	negw	a0,s1
        neg = 1;
    800054a0:	00100593          	li	a1,1
        x = -xx;
    800054a4:	f7dff06f          	j	80005420 <_Z8printIntiii+0x60>

    UNLOCK();
    800054a8:	00000613          	li	a2,0
    800054ac:	00100593          	li	a1,1
    800054b0:	00006517          	auipc	a0,0x6
    800054b4:	40850513          	addi	a0,a0,1032 # 8000b8b8 <lockPrint>
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	d78080e7          	jalr	-648(ra) # 80001230 <copy_and_swap>
    800054c0:	fe0514e3          	bnez	a0,800054a8 <_Z8printIntiii+0xe8>
    800054c4:	03813083          	ld	ra,56(sp)
    800054c8:	03013403          	ld	s0,48(sp)
    800054cc:	02813483          	ld	s1,40(sp)
    800054d0:	02013903          	ld	s2,32(sp)
    800054d4:	01813983          	ld	s3,24(sp)
    800054d8:	04010113          	addi	sp,sp,64
    800054dc:	00008067          	ret

00000000800054e0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054e0:	fd010113          	addi	sp,sp,-48
    800054e4:	02113423          	sd	ra,40(sp)
    800054e8:	02813023          	sd	s0,32(sp)
    800054ec:	00913c23          	sd	s1,24(sp)
    800054f0:	01213823          	sd	s2,16(sp)
    800054f4:	01313423          	sd	s3,8(sp)
    800054f8:	03010413          	addi	s0,sp,48
    800054fc:	00050493          	mv	s1,a0
    80005500:	00058913          	mv	s2,a1
    80005504:	0015879b          	addiw	a5,a1,1
    80005508:	0007851b          	sext.w	a0,a5
    8000550c:	00f4a023          	sw	a5,0(s1)
    80005510:	0004a823          	sw	zero,16(s1)
    80005514:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005518:	00251513          	slli	a0,a0,0x2
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	d50080e7          	jalr	-688(ra) # 8000126c <_Z9mem_allocm>
    80005524:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005528:	01000513          	li	a0,16
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	b20080e7          	jalr	-1248(ra) # 8000204c <_Znwm>
    80005534:	00050993          	mv	s3,a0
    80005538:	00000593          	li	a1,0
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	cc8080e7          	jalr	-824(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    80005544:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005548:	01000513          	li	a0,16
    8000554c:	ffffd097          	auipc	ra,0xffffd
    80005550:	b00080e7          	jalr	-1280(ra) # 8000204c <_Znwm>
    80005554:	00050993          	mv	s3,a0
    80005558:	00090593          	mv	a1,s2
    8000555c:	ffffd097          	auipc	ra,0xffffd
    80005560:	ca8080e7          	jalr	-856(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    80005564:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005568:	01000513          	li	a0,16
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	ae0080e7          	jalr	-1312(ra) # 8000204c <_Znwm>
    80005574:	00050913          	mv	s2,a0
    80005578:	00100593          	li	a1,1
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	c88080e7          	jalr	-888(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    80005584:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005588:	01000513          	li	a0,16
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	ac0080e7          	jalr	-1344(ra) # 8000204c <_Znwm>
    80005594:	00050913          	mv	s2,a0
    80005598:	00100593          	li	a1,1
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	c68080e7          	jalr	-920(ra) # 80002204 <_ZN9SemaphoreC1Ej>
    800055a4:	0324b823          	sd	s2,48(s1)
}
    800055a8:	02813083          	ld	ra,40(sp)
    800055ac:	02013403          	ld	s0,32(sp)
    800055b0:	01813483          	ld	s1,24(sp)
    800055b4:	01013903          	ld	s2,16(sp)
    800055b8:	00813983          	ld	s3,8(sp)
    800055bc:	03010113          	addi	sp,sp,48
    800055c0:	00008067          	ret
    800055c4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800055c8:	00098513          	mv	a0,s3
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	aa8080e7          	jalr	-1368(ra) # 80002074 <_ZdlPv>
    800055d4:	00048513          	mv	a0,s1
    800055d8:	00007097          	auipc	ra,0x7
    800055dc:	3c0080e7          	jalr	960(ra) # 8000c998 <_Unwind_Resume>
    800055e0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055e4:	00098513          	mv	a0,s3
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	a8c080e7          	jalr	-1396(ra) # 80002074 <_ZdlPv>
    800055f0:	00048513          	mv	a0,s1
    800055f4:	00007097          	auipc	ra,0x7
    800055f8:	3a4080e7          	jalr	932(ra) # 8000c998 <_Unwind_Resume>
    800055fc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005600:	00090513          	mv	a0,s2
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	a70080e7          	jalr	-1424(ra) # 80002074 <_ZdlPv>
    8000560c:	00048513          	mv	a0,s1
    80005610:	00007097          	auipc	ra,0x7
    80005614:	388080e7          	jalr	904(ra) # 8000c998 <_Unwind_Resume>
    80005618:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000561c:	00090513          	mv	a0,s2
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	a54080e7          	jalr	-1452(ra) # 80002074 <_ZdlPv>
    80005628:	00048513          	mv	a0,s1
    8000562c:	00007097          	auipc	ra,0x7
    80005630:	36c080e7          	jalr	876(ra) # 8000c998 <_Unwind_Resume>

0000000080005634 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005634:	fe010113          	addi	sp,sp,-32
    80005638:	00113c23          	sd	ra,24(sp)
    8000563c:	00813823          	sd	s0,16(sp)
    80005640:	00913423          	sd	s1,8(sp)
    80005644:	01213023          	sd	s2,0(sp)
    80005648:	02010413          	addi	s0,sp,32
    8000564c:	00050493          	mv	s1,a0
    80005650:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005654:	01853503          	ld	a0,24(a0)
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	be8080e7          	jalr	-1048(ra) # 80002240 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005660:	0304b503          	ld	a0,48(s1)
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	bdc080e7          	jalr	-1060(ra) # 80002240 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000566c:	0084b783          	ld	a5,8(s1)
    80005670:	0144a703          	lw	a4,20(s1)
    80005674:	00271713          	slli	a4,a4,0x2
    80005678:	00e787b3          	add	a5,a5,a4
    8000567c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005680:	0144a783          	lw	a5,20(s1)
    80005684:	0017879b          	addiw	a5,a5,1
    80005688:	0004a703          	lw	a4,0(s1)
    8000568c:	02e7e7bb          	remw	a5,a5,a4
    80005690:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005694:	0304b503          	ld	a0,48(s1)
    80005698:	ffffd097          	auipc	ra,0xffffd
    8000569c:	be0080e7          	jalr	-1056(ra) # 80002278 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800056a0:	0204b503          	ld	a0,32(s1)
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	bd4080e7          	jalr	-1068(ra) # 80002278 <_ZN9Semaphore6signalEv>

}
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	00813483          	ld	s1,8(sp)
    800056b8:	00013903          	ld	s2,0(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056e0:	02053503          	ld	a0,32(a0)
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	b5c080e7          	jalr	-1188(ra) # 80002240 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056ec:	0284b503          	ld	a0,40(s1)
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	b50080e7          	jalr	-1200(ra) # 80002240 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056f8:	0084b703          	ld	a4,8(s1)
    800056fc:	0104a783          	lw	a5,16(s1)
    80005700:	00279693          	slli	a3,a5,0x2
    80005704:	00d70733          	add	a4,a4,a3
    80005708:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000570c:	0017879b          	addiw	a5,a5,1
    80005710:	0004a703          	lw	a4,0(s1)
    80005714:	02e7e7bb          	remw	a5,a5,a4
    80005718:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000571c:	0284b503          	ld	a0,40(s1)
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	b58080e7          	jalr	-1192(ra) # 80002278 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005728:	0184b503          	ld	a0,24(s1)
    8000572c:	ffffd097          	auipc	ra,0xffffd
    80005730:	b4c080e7          	jalr	-1204(ra) # 80002278 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005734:	00090513          	mv	a0,s2
    80005738:	01813083          	ld	ra,24(sp)
    8000573c:	01013403          	ld	s0,16(sp)
    80005740:	00813483          	ld	s1,8(sp)
    80005744:	00013903          	ld	s2,0(sp)
    80005748:	02010113          	addi	sp,sp,32
    8000574c:	00008067          	ret

0000000080005750 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005750:	fe010113          	addi	sp,sp,-32
    80005754:	00113c23          	sd	ra,24(sp)
    80005758:	00813823          	sd	s0,16(sp)
    8000575c:	00913423          	sd	s1,8(sp)
    80005760:	01213023          	sd	s2,0(sp)
    80005764:	02010413          	addi	s0,sp,32
    80005768:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000576c:	02853503          	ld	a0,40(a0)
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	ad0080e7          	jalr	-1328(ra) # 80002240 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005778:	0304b503          	ld	a0,48(s1)
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	ac4080e7          	jalr	-1340(ra) # 80002240 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005784:	0144a783          	lw	a5,20(s1)
    80005788:	0104a903          	lw	s2,16(s1)
    8000578c:	0327ce63          	blt	a5,s2,800057c8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005790:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005794:	0304b503          	ld	a0,48(s1)
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	ae0080e7          	jalr	-1312(ra) # 80002278 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800057a0:	0284b503          	ld	a0,40(s1)
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	ad4080e7          	jalr	-1324(ra) # 80002278 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057ac:	00090513          	mv	a0,s2
    800057b0:	01813083          	ld	ra,24(sp)
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	00813483          	ld	s1,8(sp)
    800057bc:	00013903          	ld	s2,0(sp)
    800057c0:	02010113          	addi	sp,sp,32
    800057c4:	00008067          	ret
        ret = cap - head + tail;
    800057c8:	0004a703          	lw	a4,0(s1)
    800057cc:	4127093b          	subw	s2,a4,s2
    800057d0:	00f9093b          	addw	s2,s2,a5
    800057d4:	fc1ff06f          	j	80005794 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057d8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057d8:	fe010113          	addi	sp,sp,-32
    800057dc:	00113c23          	sd	ra,24(sp)
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	02010413          	addi	s0,sp,32
    800057ec:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057f0:	00a00513          	li	a0,10
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	b74080e7          	jalr	-1164(ra) # 80002368 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057fc:	00004517          	auipc	a0,0x4
    80005800:	a5450513          	addi	a0,a0,-1452 # 80009250 <CONSOLE_STATUS+0x240>
    80005804:	00000097          	auipc	ra,0x0
    80005808:	a0c080e7          	jalr	-1524(ra) # 80005210 <_Z11printStringPKc>
    while (getCnt()) {
    8000580c:	00048513          	mv	a0,s1
    80005810:	00000097          	auipc	ra,0x0
    80005814:	f40080e7          	jalr	-192(ra) # 80005750 <_ZN9BufferCPP6getCntEv>
    80005818:	02050c63          	beqz	a0,80005850 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000581c:	0084b783          	ld	a5,8(s1)
    80005820:	0104a703          	lw	a4,16(s1)
    80005824:	00271713          	slli	a4,a4,0x2
    80005828:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000582c:	0007c503          	lbu	a0,0(a5)
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	b38080e7          	jalr	-1224(ra) # 80002368 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005838:	0104a783          	lw	a5,16(s1)
    8000583c:	0017879b          	addiw	a5,a5,1
    80005840:	0004a703          	lw	a4,0(s1)
    80005844:	02e7e7bb          	remw	a5,a5,a4
    80005848:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000584c:	fc1ff06f          	j	8000580c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005850:	02100513          	li	a0,33
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	b14080e7          	jalr	-1260(ra) # 80002368 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000585c:	00a00513          	li	a0,10
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	b08080e7          	jalr	-1272(ra) # 80002368 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005868:	0084b503          	ld	a0,8(s1)
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	a54080e7          	jalr	-1452(ra) # 800012c0 <_Z8mem_freePv>
    delete itemAvailable;
    80005874:	0204b503          	ld	a0,32(s1)
    80005878:	00050863          	beqz	a0,80005888 <_ZN9BufferCPPD1Ev+0xb0>
    8000587c:	00053783          	ld	a5,0(a0)
    80005880:	0087b783          	ld	a5,8(a5)
    80005884:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005888:	0184b503          	ld	a0,24(s1)
    8000588c:	00050863          	beqz	a0,8000589c <_ZN9BufferCPPD1Ev+0xc4>
    80005890:	00053783          	ld	a5,0(a0)
    80005894:	0087b783          	ld	a5,8(a5)
    80005898:	000780e7          	jalr	a5
    delete mutexTail;
    8000589c:	0304b503          	ld	a0,48(s1)
    800058a0:	00050863          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0xd8>
    800058a4:	00053783          	ld	a5,0(a0)
    800058a8:	0087b783          	ld	a5,8(a5)
    800058ac:	000780e7          	jalr	a5
    delete mutexHead;
    800058b0:	0284b503          	ld	a0,40(s1)
    800058b4:	00050863          	beqz	a0,800058c4 <_ZN9BufferCPPD1Ev+0xec>
    800058b8:	00053783          	ld	a5,0(a0)
    800058bc:	0087b783          	ld	a5,8(a5)
    800058c0:	000780e7          	jalr	a5
}
    800058c4:	01813083          	ld	ra,24(sp)
    800058c8:	01013403          	ld	s0,16(sp)
    800058cc:	00813483          	ld	s1,8(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret

00000000800058d8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058d8:	fe010113          	addi	sp,sp,-32
    800058dc:	00113c23          	sd	ra,24(sp)
    800058e0:	00813823          	sd	s0,16(sp)
    800058e4:	00913423          	sd	s1,8(sp)
    800058e8:	01213023          	sd	s2,0(sp)
    800058ec:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058f0:	00004517          	auipc	a0,0x4
    800058f4:	97850513          	addi	a0,a0,-1672 # 80009268 <CONSOLE_STATUS+0x258>
    800058f8:	00000097          	auipc	ra,0x0
    800058fc:	918080e7          	jalr	-1768(ra) # 80005210 <_Z11printStringPKc>
    int test = getc() - '0';
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	be0080e7          	jalr	-1056(ra) # 800014e0 <_Z4getcv>
    80005908:	0005091b          	sext.w	s2,a0
    8000590c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	bd0080e7          	jalr	-1072(ra) # 800014e0 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005918:	fcf9071b          	addiw	a4,s2,-49
    8000591c:	00100793          	li	a5,1
    80005920:	04e7f063          	bgeu	a5,a4,80005960 <_Z8userMainv+0x88>
    80005924:	00700793          	li	a5,7
    80005928:	02f48c63          	beq	s1,a5,80005960 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    8000592c:	fcd9079b          	addiw	a5,s2,-51
    80005930:	00100693          	li	a3,1
    80005934:	04f6fa63          	bgeu	a3,a5,80005988 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005938:	fcb9091b          	addiw	s2,s2,-53
    8000593c:	00100793          	li	a5,1
    80005940:	0527fe63          	bgeu	a5,s2,8000599c <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005944:	00600793          	li	a5,6
    80005948:	02e7f463          	bgeu	a5,a4,80005970 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	9cc50513          	addi	a0,a0,-1588 # 80009318 <CONSOLE_STATUS+0x308>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	8bc080e7          	jalr	-1860(ra) # 80005210 <_Z11printStringPKc>
    8000595c:	0140006f          	j	80005970 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005960:	00004517          	auipc	a0,0x4
    80005964:	92850513          	addi	a0,a0,-1752 # 80009288 <CONSOLE_STATUS+0x278>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	8a8080e7          	jalr	-1880(ra) # 80005210 <_Z11printStringPKc>
    }
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	00813483          	ld	s1,8(sp)
    8000597c:	00013903          	ld	s2,0(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005988:	00004517          	auipc	a0,0x4
    8000598c:	93050513          	addi	a0,a0,-1744 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005990:	00000097          	auipc	ra,0x0
    80005994:	880080e7          	jalr	-1920(ra) # 80005210 <_Z11printStringPKc>
            return;
    80005998:	fd9ff06f          	j	80005970 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	94c50513          	addi	a0,a0,-1716 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	86c080e7          	jalr	-1940(ra) # 80005210 <_Z11printStringPKc>
            return;
    800059ac:	fc5ff06f          	j	80005970 <_Z8userMainv+0x98>

00000000800059b0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800059b0:	fe010113          	addi	sp,sp,-32
    800059b4:	00113c23          	sd	ra,24(sp)
    800059b8:	00813823          	sd	s0,16(sp)
    800059bc:	00913423          	sd	s1,8(sp)
    800059c0:	01213023          	sd	s2,0(sp)
    800059c4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800059c8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800059cc:	00600493          	li	s1,6
    while (--i > 0) {
    800059d0:	fff4849b          	addiw	s1,s1,-1
    800059d4:	04905463          	blez	s1,80005a1c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	96850513          	addi	a0,a0,-1688 # 80009340 <CONSOLE_STATUS+0x330>
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	830080e7          	jalr	-2000(ra) # 80005210 <_Z11printStringPKc>
        printInt(sleep_time);
    800059e8:	00000613          	li	a2,0
    800059ec:	00a00593          	li	a1,10
    800059f0:	0009051b          	sext.w	a0,s2
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	9cc080e7          	jalr	-1588(ra) # 800053c0 <_Z8printIntiii>
        printString(" !\n");
    800059fc:	00004517          	auipc	a0,0x4
    80005a00:	94c50513          	addi	a0,a0,-1716 # 80009348 <CONSOLE_STATUS+0x338>
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	80c080e7          	jalr	-2036(ra) # 80005210 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a0c:	00090513          	mv	a0,s2
    80005a10:	ffffc097          	auipc	ra,0xffffc
    80005a14:	ab4080e7          	jalr	-1356(ra) # 800014c4 <_Z10time_sleepm>
    while (--i > 0) {
    80005a18:	fb9ff06f          	j	800059d0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a1c:	00a00793          	li	a5,10
    80005a20:	02f95933          	divu	s2,s2,a5
    80005a24:	fff90913          	addi	s2,s2,-1
    80005a28:	00006797          	auipc	a5,0x6
    80005a2c:	e9878793          	addi	a5,a5,-360 # 8000b8c0 <_ZL8finished>
    80005a30:	01278933          	add	s2,a5,s2
    80005a34:	00100793          	li	a5,1
    80005a38:	00f90023          	sb	a5,0(s2)
}
    80005a3c:	01813083          	ld	ra,24(sp)
    80005a40:	01013403          	ld	s0,16(sp)
    80005a44:	00813483          	ld	s1,8(sp)
    80005a48:	00013903          	ld	s2,0(sp)
    80005a4c:	02010113          	addi	sp,sp,32
    80005a50:	00008067          	ret

0000000080005a54 <_Z12testSleepingv>:

void testSleeping() {
    80005a54:	fc010113          	addi	sp,sp,-64
    80005a58:	02113c23          	sd	ra,56(sp)
    80005a5c:	02813823          	sd	s0,48(sp)
    80005a60:	02913423          	sd	s1,40(sp)
    80005a64:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005a68:	00a00793          	li	a5,10
    80005a6c:	fcf43823          	sd	a5,-48(s0)
    80005a70:	01400793          	li	a5,20
    80005a74:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005a78:	00000493          	li	s1,0
    80005a7c:	02c0006f          	j	80005aa8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005a80:	00349793          	slli	a5,s1,0x3
    80005a84:	fd040613          	addi	a2,s0,-48
    80005a88:	00f60633          	add	a2,a2,a5
    80005a8c:	00000597          	auipc	a1,0x0
    80005a90:	f2458593          	addi	a1,a1,-220 # 800059b0 <_ZL9sleepyRunPv>
    80005a94:	fc040513          	addi	a0,s0,-64
    80005a98:	00f50533          	add	a0,a0,a5
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	870080e7          	jalr	-1936(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005aa4:	0014849b          	addiw	s1,s1,1
    80005aa8:	00100793          	li	a5,1
    80005aac:	fc97dae3          	bge	a5,s1,80005a80 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005ab0:	00006797          	auipc	a5,0x6
    80005ab4:	e107c783          	lbu	a5,-496(a5) # 8000b8c0 <_ZL8finished>
    80005ab8:	fe078ce3          	beqz	a5,80005ab0 <_Z12testSleepingv+0x5c>
    80005abc:	00006797          	auipc	a5,0x6
    80005ac0:	e057c783          	lbu	a5,-507(a5) # 8000b8c1 <_ZL8finished+0x1>
    80005ac4:	fe0786e3          	beqz	a5,80005ab0 <_Z12testSleepingv+0x5c>
}
    80005ac8:	03813083          	ld	ra,56(sp)
    80005acc:	03013403          	ld	s0,48(sp)
    80005ad0:	02813483          	ld	s1,40(sp)
    80005ad4:	04010113          	addi	sp,sp,64
    80005ad8:	00008067          	ret

0000000080005adc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005adc:	fe010113          	addi	sp,sp,-32
    80005ae0:	00113c23          	sd	ra,24(sp)
    80005ae4:	00813823          	sd	s0,16(sp)
    80005ae8:	00913423          	sd	s1,8(sp)
    80005aec:	01213023          	sd	s2,0(sp)
    80005af0:	02010413          	addi	s0,sp,32
    80005af4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005af8:	00100793          	li	a5,1
    80005afc:	02a7f863          	bgeu	a5,a0,80005b2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b00:	00a00793          	li	a5,10
    80005b04:	02f577b3          	remu	a5,a0,a5
    80005b08:	02078e63          	beqz	a5,80005b44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b0c:	fff48513          	addi	a0,s1,-1
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	fcc080e7          	jalr	-52(ra) # 80005adc <_ZL9fibonaccim>
    80005b18:	00050913          	mv	s2,a0
    80005b1c:	ffe48513          	addi	a0,s1,-2
    80005b20:	00000097          	auipc	ra,0x0
    80005b24:	fbc080e7          	jalr	-68(ra) # 80005adc <_ZL9fibonaccim>
    80005b28:	00a90533          	add	a0,s2,a0
}
    80005b2c:	01813083          	ld	ra,24(sp)
    80005b30:	01013403          	ld	s0,16(sp)
    80005b34:	00813483          	ld	s1,8(sp)
    80005b38:	00013903          	ld	s2,0(sp)
    80005b3c:	02010113          	addi	sp,sp,32
    80005b40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	89c080e7          	jalr	-1892(ra) # 800013e0 <_Z15thread_dispatchv>
    80005b4c:	fc1ff06f          	j	80005b0c <_ZL9fibonaccim+0x30>

0000000080005b50 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005b50:	fe010113          	addi	sp,sp,-32
    80005b54:	00113c23          	sd	ra,24(sp)
    80005b58:	00813823          	sd	s0,16(sp)
    80005b5c:	00913423          	sd	s1,8(sp)
    80005b60:	01213023          	sd	s2,0(sp)
    80005b64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005b68:	00a00493          	li	s1,10
    80005b6c:	0400006f          	j	80005bac <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b70:	00003517          	auipc	a0,0x3
    80005b74:	64850513          	addi	a0,a0,1608 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005b78:	fffff097          	auipc	ra,0xfffff
    80005b7c:	698080e7          	jalr	1688(ra) # 80005210 <_Z11printStringPKc>
    80005b80:	00000613          	li	a2,0
    80005b84:	00a00593          	li	a1,10
    80005b88:	00048513          	mv	a0,s1
    80005b8c:	00000097          	auipc	ra,0x0
    80005b90:	834080e7          	jalr	-1996(ra) # 800053c0 <_Z8printIntiii>
    80005b94:	00003517          	auipc	a0,0x3
    80005b98:	51450513          	addi	a0,a0,1300 # 800090a8 <CONSOLE_STATUS+0x98>
    80005b9c:	fffff097          	auipc	ra,0xfffff
    80005ba0:	674080e7          	jalr	1652(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005ba4:	0014849b          	addiw	s1,s1,1
    80005ba8:	0ff4f493          	andi	s1,s1,255
    80005bac:	00c00793          	li	a5,12
    80005bb0:	fc97f0e3          	bgeu	a5,s1,80005b70 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005bb4:	00003517          	auipc	a0,0x3
    80005bb8:	60c50513          	addi	a0,a0,1548 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005bbc:	fffff097          	auipc	ra,0xfffff
    80005bc0:	654080e7          	jalr	1620(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005bc4:	00500313          	li	t1,5
    thread_dispatch();
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	818080e7          	jalr	-2024(ra) # 800013e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005bd0:	01000513          	li	a0,16
    80005bd4:	00000097          	auipc	ra,0x0
    80005bd8:	f08080e7          	jalr	-248(ra) # 80005adc <_ZL9fibonaccim>
    80005bdc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	5f050513          	addi	a0,a0,1520 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005be8:	fffff097          	auipc	ra,0xfffff
    80005bec:	628080e7          	jalr	1576(ra) # 80005210 <_Z11printStringPKc>
    80005bf0:	00000613          	li	a2,0
    80005bf4:	00a00593          	li	a1,10
    80005bf8:	0009051b          	sext.w	a0,s2
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	7c4080e7          	jalr	1988(ra) # 800053c0 <_Z8printIntiii>
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	4a450513          	addi	a0,a0,1188 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c0c:	fffff097          	auipc	ra,0xfffff
    80005c10:	604080e7          	jalr	1540(ra) # 80005210 <_Z11printStringPKc>
    80005c14:	0400006f          	j	80005c54 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c18:	00003517          	auipc	a0,0x3
    80005c1c:	5a050513          	addi	a0,a0,1440 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005c20:	fffff097          	auipc	ra,0xfffff
    80005c24:	5f0080e7          	jalr	1520(ra) # 80005210 <_Z11printStringPKc>
    80005c28:	00000613          	li	a2,0
    80005c2c:	00a00593          	li	a1,10
    80005c30:	00048513          	mv	a0,s1
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	78c080e7          	jalr	1932(ra) # 800053c0 <_Z8printIntiii>
    80005c3c:	00003517          	auipc	a0,0x3
    80005c40:	46c50513          	addi	a0,a0,1132 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c44:	fffff097          	auipc	ra,0xfffff
    80005c48:	5cc080e7          	jalr	1484(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c4c:	0014849b          	addiw	s1,s1,1
    80005c50:	0ff4f493          	andi	s1,s1,255
    80005c54:	00f00793          	li	a5,15
    80005c58:	fc97f0e3          	bgeu	a5,s1,80005c18 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005c5c:	00003517          	auipc	a0,0x3
    80005c60:	58450513          	addi	a0,a0,1412 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	5ac080e7          	jalr	1452(ra) # 80005210 <_Z11printStringPKc>
    finishedD = true;
    80005c6c:	00100793          	li	a5,1
    80005c70:	00006717          	auipc	a4,0x6
    80005c74:	c4f70923          	sb	a5,-942(a4) # 8000b8c2 <_ZL9finishedD>
    thread_dispatch();
    80005c78:	ffffb097          	auipc	ra,0xffffb
    80005c7c:	768080e7          	jalr	1896(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80005c80:	01813083          	ld	ra,24(sp)
    80005c84:	01013403          	ld	s0,16(sp)
    80005c88:	00813483          	ld	s1,8(sp)
    80005c8c:	00013903          	ld	s2,0(sp)
    80005c90:	02010113          	addi	sp,sp,32
    80005c94:	00008067          	ret

0000000080005c98 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005c98:	fe010113          	addi	sp,sp,-32
    80005c9c:	00113c23          	sd	ra,24(sp)
    80005ca0:	00813823          	sd	s0,16(sp)
    80005ca4:	00913423          	sd	s1,8(sp)
    80005ca8:	01213023          	sd	s2,0(sp)
    80005cac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005cb0:	00000493          	li	s1,0
    80005cb4:	0400006f          	j	80005cf4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005cb8:	00003517          	auipc	a0,0x3
    80005cbc:	4d050513          	addi	a0,a0,1232 # 80009188 <CONSOLE_STATUS+0x178>
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	550080e7          	jalr	1360(ra) # 80005210 <_Z11printStringPKc>
    80005cc8:	00000613          	li	a2,0
    80005ccc:	00a00593          	li	a1,10
    80005cd0:	00048513          	mv	a0,s1
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	6ec080e7          	jalr	1772(ra) # 800053c0 <_Z8printIntiii>
    80005cdc:	00003517          	auipc	a0,0x3
    80005ce0:	3cc50513          	addi	a0,a0,972 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ce4:	fffff097          	auipc	ra,0xfffff
    80005ce8:	52c080e7          	jalr	1324(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005cec:	0014849b          	addiw	s1,s1,1
    80005cf0:	0ff4f493          	andi	s1,s1,255
    80005cf4:	00200793          	li	a5,2
    80005cf8:	fc97f0e3          	bgeu	a5,s1,80005cb8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005cfc:	00003517          	auipc	a0,0x3
    80005d00:	49450513          	addi	a0,a0,1172 # 80009190 <CONSOLE_STATUS+0x180>
    80005d04:	fffff097          	auipc	ra,0xfffff
    80005d08:	50c080e7          	jalr	1292(ra) # 80005210 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d0c:	00700313          	li	t1,7
    thread_dispatch();
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	6d0080e7          	jalr	1744(ra) # 800013e0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d18:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	48450513          	addi	a0,a0,1156 # 800091a0 <CONSOLE_STATUS+0x190>
    80005d24:	fffff097          	auipc	ra,0xfffff
    80005d28:	4ec080e7          	jalr	1260(ra) # 80005210 <_Z11printStringPKc>
    80005d2c:	00000613          	li	a2,0
    80005d30:	00a00593          	li	a1,10
    80005d34:	0009051b          	sext.w	a0,s2
    80005d38:	fffff097          	auipc	ra,0xfffff
    80005d3c:	688080e7          	jalr	1672(ra) # 800053c0 <_Z8printIntiii>
    80005d40:	00003517          	auipc	a0,0x3
    80005d44:	36850513          	addi	a0,a0,872 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d48:	fffff097          	auipc	ra,0xfffff
    80005d4c:	4c8080e7          	jalr	1224(ra) # 80005210 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005d50:	00c00513          	li	a0,12
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	d88080e7          	jalr	-632(ra) # 80005adc <_ZL9fibonaccim>
    80005d5c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005d60:	00003517          	auipc	a0,0x3
    80005d64:	44850513          	addi	a0,a0,1096 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	4a8080e7          	jalr	1192(ra) # 80005210 <_Z11printStringPKc>
    80005d70:	00000613          	li	a2,0
    80005d74:	00a00593          	li	a1,10
    80005d78:	0009051b          	sext.w	a0,s2
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	644080e7          	jalr	1604(ra) # 800053c0 <_Z8printIntiii>
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	32450513          	addi	a0,a0,804 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	484080e7          	jalr	1156(ra) # 80005210 <_Z11printStringPKc>
    80005d94:	0400006f          	j	80005dd4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005d98:	00003517          	auipc	a0,0x3
    80005d9c:	3f050513          	addi	a0,a0,1008 # 80009188 <CONSOLE_STATUS+0x178>
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	470080e7          	jalr	1136(ra) # 80005210 <_Z11printStringPKc>
    80005da8:	00000613          	li	a2,0
    80005dac:	00a00593          	li	a1,10
    80005db0:	00048513          	mv	a0,s1
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	60c080e7          	jalr	1548(ra) # 800053c0 <_Z8printIntiii>
    80005dbc:	00003517          	auipc	a0,0x3
    80005dc0:	2ec50513          	addi	a0,a0,748 # 800090a8 <CONSOLE_STATUS+0x98>
    80005dc4:	fffff097          	auipc	ra,0xfffff
    80005dc8:	44c080e7          	jalr	1100(ra) # 80005210 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005dcc:	0014849b          	addiw	s1,s1,1
    80005dd0:	0ff4f493          	andi	s1,s1,255
    80005dd4:	00500793          	li	a5,5
    80005dd8:	fc97f0e3          	bgeu	a5,s1,80005d98 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	38450513          	addi	a0,a0,900 # 80009160 <CONSOLE_STATUS+0x150>
    80005de4:	fffff097          	auipc	ra,0xfffff
    80005de8:	42c080e7          	jalr	1068(ra) # 80005210 <_Z11printStringPKc>
    finishedC = true;
    80005dec:	00100793          	li	a5,1
    80005df0:	00006717          	auipc	a4,0x6
    80005df4:	acf709a3          	sb	a5,-1325(a4) # 8000b8c3 <_ZL9finishedC>
    thread_dispatch();
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	5e8080e7          	jalr	1512(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80005e00:	01813083          	ld	ra,24(sp)
    80005e04:	01013403          	ld	s0,16(sp)
    80005e08:	00813483          	ld	s1,8(sp)
    80005e0c:	00013903          	ld	s2,0(sp)
    80005e10:	02010113          	addi	sp,sp,32
    80005e14:	00008067          	ret

0000000080005e18 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e18:	fe010113          	addi	sp,sp,-32
    80005e1c:	00113c23          	sd	ra,24(sp)
    80005e20:	00813823          	sd	s0,16(sp)
    80005e24:	00913423          	sd	s1,8(sp)
    80005e28:	01213023          	sd	s2,0(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e30:	00000913          	li	s2,0
    80005e34:	0400006f          	j	80005e74 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e38:	ffffb097          	auipc	ra,0xffffb
    80005e3c:	5a8080e7          	jalr	1448(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e40:	00148493          	addi	s1,s1,1
    80005e44:	000027b7          	lui	a5,0x2
    80005e48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e4c:	0097ee63          	bltu	a5,s1,80005e68 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e50:	00000713          	li	a4,0
    80005e54:	000077b7          	lui	a5,0x7
    80005e58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e5c:	fce7eee3          	bltu	a5,a4,80005e38 <_ZL11workerBodyBPv+0x20>
    80005e60:	00170713          	addi	a4,a4,1
    80005e64:	ff1ff06f          	j	80005e54 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005e68:	00a00793          	li	a5,10
    80005e6c:	04f90663          	beq	s2,a5,80005eb8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005e70:	00190913          	addi	s2,s2,1
    80005e74:	00f00793          	li	a5,15
    80005e78:	0527e463          	bltu	a5,s2,80005ec0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005e7c:	00003517          	auipc	a0,0x3
    80005e80:	2f450513          	addi	a0,a0,756 # 80009170 <CONSOLE_STATUS+0x160>
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	38c080e7          	jalr	908(ra) # 80005210 <_Z11printStringPKc>
    80005e8c:	00000613          	li	a2,0
    80005e90:	00a00593          	li	a1,10
    80005e94:	0009051b          	sext.w	a0,s2
    80005e98:	fffff097          	auipc	ra,0xfffff
    80005e9c:	528080e7          	jalr	1320(ra) # 800053c0 <_Z8printIntiii>
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	20850513          	addi	a0,a0,520 # 800090a8 <CONSOLE_STATUS+0x98>
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	368080e7          	jalr	872(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005eb0:	00000493          	li	s1,0
    80005eb4:	f91ff06f          	j	80005e44 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005eb8:	14102ff3          	csrr	t6,sepc
    80005ebc:	fb5ff06f          	j	80005e70 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005ec0:	00003517          	auipc	a0,0x3
    80005ec4:	2b850513          	addi	a0,a0,696 # 80009178 <CONSOLE_STATUS+0x168>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	348080e7          	jalr	840(ra) # 80005210 <_Z11printStringPKc>
    finishedB = true;
    80005ed0:	00100793          	li	a5,1
    80005ed4:	00006717          	auipc	a4,0x6
    80005ed8:	9ef70823          	sb	a5,-1552(a4) # 8000b8c4 <_ZL9finishedB>
    thread_dispatch();
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	504080e7          	jalr	1284(ra) # 800013e0 <_Z15thread_dispatchv>
}
    80005ee4:	01813083          	ld	ra,24(sp)
    80005ee8:	01013403          	ld	s0,16(sp)
    80005eec:	00813483          	ld	s1,8(sp)
    80005ef0:	00013903          	ld	s2,0(sp)
    80005ef4:	02010113          	addi	sp,sp,32
    80005ef8:	00008067          	ret

0000000080005efc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005efc:	fe010113          	addi	sp,sp,-32
    80005f00:	00113c23          	sd	ra,24(sp)
    80005f04:	00813823          	sd	s0,16(sp)
    80005f08:	00913423          	sd	s1,8(sp)
    80005f0c:	01213023          	sd	s2,0(sp)
    80005f10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f14:	00000913          	li	s2,0
    80005f18:	0380006f          	j	80005f50 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	4c4080e7          	jalr	1220(ra) # 800013e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f24:	00148493          	addi	s1,s1,1
    80005f28:	000027b7          	lui	a5,0x2
    80005f2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f30:	0097ee63          	bltu	a5,s1,80005f4c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f34:	00000713          	li	a4,0
    80005f38:	000077b7          	lui	a5,0x7
    80005f3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f40:	fce7eee3          	bltu	a5,a4,80005f1c <_ZL11workerBodyAPv+0x20>
    80005f44:	00170713          	addi	a4,a4,1
    80005f48:	ff1ff06f          	j	80005f38 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f4c:	00190913          	addi	s2,s2,1
    80005f50:	00900793          	li	a5,9
    80005f54:	0527e063          	bltu	a5,s2,80005f94 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f58:	00003517          	auipc	a0,0x3
    80005f5c:	20050513          	addi	a0,a0,512 # 80009158 <CONSOLE_STATUS+0x148>
    80005f60:	fffff097          	auipc	ra,0xfffff
    80005f64:	2b0080e7          	jalr	688(ra) # 80005210 <_Z11printStringPKc>
    80005f68:	00000613          	li	a2,0
    80005f6c:	00a00593          	li	a1,10
    80005f70:	0009051b          	sext.w	a0,s2
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	44c080e7          	jalr	1100(ra) # 800053c0 <_Z8printIntiii>
    80005f7c:	00003517          	auipc	a0,0x3
    80005f80:	12c50513          	addi	a0,a0,300 # 800090a8 <CONSOLE_STATUS+0x98>
    80005f84:	fffff097          	auipc	ra,0xfffff
    80005f88:	28c080e7          	jalr	652(ra) # 80005210 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f8c:	00000493          	li	s1,0
    80005f90:	f99ff06f          	j	80005f28 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005f94:	00003517          	auipc	a0,0x3
    80005f98:	1cc50513          	addi	a0,a0,460 # 80009160 <CONSOLE_STATUS+0x150>
    80005f9c:	fffff097          	auipc	ra,0xfffff
    80005fa0:	274080e7          	jalr	628(ra) # 80005210 <_Z11printStringPKc>
    finishedA = true;
    80005fa4:	00100793          	li	a5,1
    80005fa8:	00006717          	auipc	a4,0x6
    80005fac:	90f70ea3          	sb	a5,-1763(a4) # 8000b8c5 <_ZL9finishedA>
}
    80005fb0:	01813083          	ld	ra,24(sp)
    80005fb4:	01013403          	ld	s0,16(sp)
    80005fb8:	00813483          	ld	s1,8(sp)
    80005fbc:	00013903          	ld	s2,0(sp)
    80005fc0:	02010113          	addi	sp,sp,32
    80005fc4:	00008067          	ret

0000000080005fc8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005fc8:	fd010113          	addi	sp,sp,-48
    80005fcc:	02113423          	sd	ra,40(sp)
    80005fd0:	02813023          	sd	s0,32(sp)
    80005fd4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005fd8:	00000613          	li	a2,0
    80005fdc:	00000597          	auipc	a1,0x0
    80005fe0:	f2058593          	addi	a1,a1,-224 # 80005efc <_ZL11workerBodyAPv>
    80005fe4:	fd040513          	addi	a0,s0,-48
    80005fe8:	ffffb097          	auipc	ra,0xffffb
    80005fec:	324080e7          	jalr	804(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	20050513          	addi	a0,a0,512 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	218080e7          	jalr	536(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006000:	00000613          	li	a2,0
    80006004:	00000597          	auipc	a1,0x0
    80006008:	e1458593          	addi	a1,a1,-492 # 80005e18 <_ZL11workerBodyBPv>
    8000600c:	fd840513          	addi	a0,s0,-40
    80006010:	ffffb097          	auipc	ra,0xffffb
    80006014:	2fc080e7          	jalr	764(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	1f050513          	addi	a0,a0,496 # 80009208 <CONSOLE_STATUS+0x1f8>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	1f0080e7          	jalr	496(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006028:	00000613          	li	a2,0
    8000602c:	00000597          	auipc	a1,0x0
    80006030:	c6c58593          	addi	a1,a1,-916 # 80005c98 <_ZL11workerBodyCPv>
    80006034:	fe040513          	addi	a0,s0,-32
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	2d4080e7          	jalr	724(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	1e050513          	addi	a0,a0,480 # 80009220 <CONSOLE_STATUS+0x210>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	1c8080e7          	jalr	456(ra) # 80005210 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006050:	00000613          	li	a2,0
    80006054:	00000597          	auipc	a1,0x0
    80006058:	afc58593          	addi	a1,a1,-1284 # 80005b50 <_ZL11workerBodyDPv>
    8000605c:	fe840513          	addi	a0,s0,-24
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	2ac080e7          	jalr	684(ra) # 8000130c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006068:	00003517          	auipc	a0,0x3
    8000606c:	1d050513          	addi	a0,a0,464 # 80009238 <CONSOLE_STATUS+0x228>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	1a0080e7          	jalr	416(ra) # 80005210 <_Z11printStringPKc>
    80006078:	00c0006f          	j	80006084 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000607c:	ffffb097          	auipc	ra,0xffffb
    80006080:	364080e7          	jalr	868(ra) # 800013e0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006084:	00006797          	auipc	a5,0x6
    80006088:	8417c783          	lbu	a5,-1983(a5) # 8000b8c5 <_ZL9finishedA>
    8000608c:	fe0788e3          	beqz	a5,8000607c <_Z16System_Mode_testv+0xb4>
    80006090:	00006797          	auipc	a5,0x6
    80006094:	8347c783          	lbu	a5,-1996(a5) # 8000b8c4 <_ZL9finishedB>
    80006098:	fe0782e3          	beqz	a5,8000607c <_Z16System_Mode_testv+0xb4>
    8000609c:	00006797          	auipc	a5,0x6
    800060a0:	8277c783          	lbu	a5,-2009(a5) # 8000b8c3 <_ZL9finishedC>
    800060a4:	fc078ce3          	beqz	a5,8000607c <_Z16System_Mode_testv+0xb4>
    800060a8:	00006797          	auipc	a5,0x6
    800060ac:	81a7c783          	lbu	a5,-2022(a5) # 8000b8c2 <_ZL9finishedD>
    800060b0:	fc0786e3          	beqz	a5,8000607c <_Z16System_Mode_testv+0xb4>
    }

}
    800060b4:	02813083          	ld	ra,40(sp)
    800060b8:	02013403          	ld	s0,32(sp)
    800060bc:	03010113          	addi	sp,sp,48
    800060c0:	00008067          	ret

00000000800060c4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060c4:	fe010113          	addi	sp,sp,-32
    800060c8:	00113c23          	sd	ra,24(sp)
    800060cc:	00813823          	sd	s0,16(sp)
    800060d0:	00913423          	sd	s1,8(sp)
    800060d4:	01213023          	sd	s2,0(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	00050493          	mv	s1,a0
    800060e0:	00058913          	mv	s2,a1
    800060e4:	0015879b          	addiw	a5,a1,1
    800060e8:	0007851b          	sext.w	a0,a5
    800060ec:	00f4a023          	sw	a5,0(s1)
    800060f0:	0004a823          	sw	zero,16(s1)
    800060f4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800060f8:	00251513          	slli	a0,a0,0x2
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	170080e7          	jalr	368(ra) # 8000126c <_Z9mem_allocm>
    80006104:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006108:	00000593          	li	a1,0
    8000610c:	02048513          	addi	a0,s1,32
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	30c080e7          	jalr	780(ra) # 8000141c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006118:	00090593          	mv	a1,s2
    8000611c:	01848513          	addi	a0,s1,24
    80006120:	ffffb097          	auipc	ra,0xffffb
    80006124:	2fc080e7          	jalr	764(ra) # 8000141c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006128:	00100593          	li	a1,1
    8000612c:	02848513          	addi	a0,s1,40
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	2ec080e7          	jalr	748(ra) # 8000141c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006138:	00100593          	li	a1,1
    8000613c:	03048513          	addi	a0,s1,48
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2dc080e7          	jalr	732(ra) # 8000141c <_Z8sem_openPP3Semj>
}
    80006148:	01813083          	ld	ra,24(sp)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	00813483          	ld	s1,8(sp)
    80006154:	00013903          	ld	s2,0(sp)
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret

0000000080006160 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	01213023          	sd	s2,0(sp)
    80006174:	02010413          	addi	s0,sp,32
    80006178:	00050493          	mv	s1,a0
    8000617c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006180:	01853503          	ld	a0,24(a0)
    80006184:	ffffb097          	auipc	ra,0xffffb
    80006188:	2d0080e7          	jalr	720(ra) # 80001454 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    8000618c:	0304b503          	ld	a0,48(s1)
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	2c4080e7          	jalr	708(ra) # 80001454 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006198:	0084b783          	ld	a5,8(s1)
    8000619c:	0144a703          	lw	a4,20(s1)
    800061a0:	00271713          	slli	a4,a4,0x2
    800061a4:	00e787b3          	add	a5,a5,a4
    800061a8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061ac:	0144a783          	lw	a5,20(s1)
    800061b0:	0017879b          	addiw	a5,a5,1
    800061b4:	0004a703          	lw	a4,0(s1)
    800061b8:	02e7e7bb          	remw	a5,a5,a4
    800061bc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800061c0:	0304b503          	ld	a0,48(s1)
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	2ac080e7          	jalr	684(ra) # 80001470 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800061cc:	0204b503          	ld	a0,32(s1)
    800061d0:	ffffb097          	auipc	ra,0xffffb
    800061d4:	2a0080e7          	jalr	672(ra) # 80001470 <_Z10sem_signalP3Sem>

}
    800061d8:	01813083          	ld	ra,24(sp)
    800061dc:	01013403          	ld	s0,16(sp)
    800061e0:	00813483          	ld	s1,8(sp)
    800061e4:	00013903          	ld	s2,0(sp)
    800061e8:	02010113          	addi	sp,sp,32
    800061ec:	00008067          	ret

00000000800061f0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800061f0:	fe010113          	addi	sp,sp,-32
    800061f4:	00113c23          	sd	ra,24(sp)
    800061f8:	00813823          	sd	s0,16(sp)
    800061fc:	00913423          	sd	s1,8(sp)
    80006200:	01213023          	sd	s2,0(sp)
    80006204:	02010413          	addi	s0,sp,32
    80006208:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000620c:	02053503          	ld	a0,32(a0)
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	244080e7          	jalr	580(ra) # 80001454 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006218:	0284b503          	ld	a0,40(s1)
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	238080e7          	jalr	568(ra) # 80001454 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006224:	0084b703          	ld	a4,8(s1)
    80006228:	0104a783          	lw	a5,16(s1)
    8000622c:	00279693          	slli	a3,a5,0x2
    80006230:	00d70733          	add	a4,a4,a3
    80006234:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006238:	0017879b          	addiw	a5,a5,1
    8000623c:	0004a703          	lw	a4,0(s1)
    80006240:	02e7e7bb          	remw	a5,a5,a4
    80006244:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006248:	0284b503          	ld	a0,40(s1)
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	224080e7          	jalr	548(ra) # 80001470 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006254:	0184b503          	ld	a0,24(s1)
    80006258:	ffffb097          	auipc	ra,0xffffb
    8000625c:	218080e7          	jalr	536(ra) # 80001470 <_Z10sem_signalP3Sem>

    return ret;
}
    80006260:	00090513          	mv	a0,s2
    80006264:	01813083          	ld	ra,24(sp)
    80006268:	01013403          	ld	s0,16(sp)
    8000626c:	00813483          	ld	s1,8(sp)
    80006270:	00013903          	ld	s2,0(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret

000000008000627c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000627c:	fe010113          	addi	sp,sp,-32
    80006280:	00113c23          	sd	ra,24(sp)
    80006284:	00813823          	sd	s0,16(sp)
    80006288:	00913423          	sd	s1,8(sp)
    8000628c:	01213023          	sd	s2,0(sp)
    80006290:	02010413          	addi	s0,sp,32
    80006294:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006298:	02853503          	ld	a0,40(a0)
    8000629c:	ffffb097          	auipc	ra,0xffffb
    800062a0:	1b8080e7          	jalr	440(ra) # 80001454 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800062a4:	0304b503          	ld	a0,48(s1)
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	1ac080e7          	jalr	428(ra) # 80001454 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800062b0:	0144a783          	lw	a5,20(s1)
    800062b4:	0104a903          	lw	s2,16(s1)
    800062b8:	0327ce63          	blt	a5,s2,800062f4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800062bc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800062c0:	0304b503          	ld	a0,48(s1)
    800062c4:	ffffb097          	auipc	ra,0xffffb
    800062c8:	1ac080e7          	jalr	428(ra) # 80001470 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800062cc:	0284b503          	ld	a0,40(s1)
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	1a0080e7          	jalr	416(ra) # 80001470 <_Z10sem_signalP3Sem>

    return ret;
}
    800062d8:	00090513          	mv	a0,s2
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	01013403          	ld	s0,16(sp)
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	00013903          	ld	s2,0(sp)
    800062ec:	02010113          	addi	sp,sp,32
    800062f0:	00008067          	ret
        ret = cap - head + tail;
    800062f4:	0004a703          	lw	a4,0(s1)
    800062f8:	4127093b          	subw	s2,a4,s2
    800062fc:	00f9093b          	addw	s2,s2,a5
    80006300:	fc1ff06f          	j	800062c0 <_ZN6Buffer6getCntEv+0x44>

0000000080006304 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006304:	fe010113          	addi	sp,sp,-32
    80006308:	00113c23          	sd	ra,24(sp)
    8000630c:	00813823          	sd	s0,16(sp)
    80006310:	00913423          	sd	s1,8(sp)
    80006314:	02010413          	addi	s0,sp,32
    80006318:	00050493          	mv	s1,a0
    putc('\n');
    8000631c:	00a00513          	li	a0,10
    80006320:	ffffb097          	auipc	ra,0xffffb
    80006324:	20c080e7          	jalr	524(ra) # 8000152c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	f2850513          	addi	a0,a0,-216 # 80009250 <CONSOLE_STATUS+0x240>
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	ee0080e7          	jalr	-288(ra) # 80005210 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006338:	00048513          	mv	a0,s1
    8000633c:	00000097          	auipc	ra,0x0
    80006340:	f40080e7          	jalr	-192(ra) # 8000627c <_ZN6Buffer6getCntEv>
    80006344:	02a05c63          	blez	a0,8000637c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006348:	0084b783          	ld	a5,8(s1)
    8000634c:	0104a703          	lw	a4,16(s1)
    80006350:	00271713          	slli	a4,a4,0x2
    80006354:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006358:	0007c503          	lbu	a0,0(a5)
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	1d0080e7          	jalr	464(ra) # 8000152c <_Z4putcc>
        head = (head + 1) % cap;
    80006364:	0104a783          	lw	a5,16(s1)
    80006368:	0017879b          	addiw	a5,a5,1
    8000636c:	0004a703          	lw	a4,0(s1)
    80006370:	02e7e7bb          	remw	a5,a5,a4
    80006374:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006378:	fc1ff06f          	j	80006338 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000637c:	02100513          	li	a0,33
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	1ac080e7          	jalr	428(ra) # 8000152c <_Z4putcc>
    putc('\n');
    80006388:	00a00513          	li	a0,10
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	1a0080e7          	jalr	416(ra) # 8000152c <_Z4putcc>
    mem_free(buffer);
    80006394:	0084b503          	ld	a0,8(s1)
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	f28080e7          	jalr	-216(ra) # 800012c0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063a0:	0204b503          	ld	a0,32(s1)
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	094080e7          	jalr	148(ra) # 80001438 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800063ac:	0184b503          	ld	a0,24(s1)
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	088080e7          	jalr	136(ra) # 80001438 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800063b8:	0304b503          	ld	a0,48(s1)
    800063bc:	ffffb097          	auipc	ra,0xffffb
    800063c0:	07c080e7          	jalr	124(ra) # 80001438 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800063c4:	0284b503          	ld	a0,40(s1)
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	070080e7          	jalr	112(ra) # 80001438 <_Z9sem_closeP3Sem>
}
    800063d0:	01813083          	ld	ra,24(sp)
    800063d4:	01013403          	ld	s0,16(sp)
    800063d8:	00813483          	ld	s1,8(sp)
    800063dc:	02010113          	addi	sp,sp,32
    800063e0:	00008067          	ret

00000000800063e4 <start>:
    800063e4:	ff010113          	addi	sp,sp,-16
    800063e8:	00813423          	sd	s0,8(sp)
    800063ec:	01010413          	addi	s0,sp,16
    800063f0:	300027f3          	csrr	a5,mstatus
    800063f4:	ffffe737          	lui	a4,0xffffe
    800063f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1ccf>
    800063fc:	00e7f7b3          	and	a5,a5,a4
    80006400:	00001737          	lui	a4,0x1
    80006404:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006408:	00e7e7b3          	or	a5,a5,a4
    8000640c:	30079073          	csrw	mstatus,a5
    80006410:	00000797          	auipc	a5,0x0
    80006414:	16078793          	addi	a5,a5,352 # 80006570 <system_main>
    80006418:	34179073          	csrw	mepc,a5
    8000641c:	00000793          	li	a5,0
    80006420:	18079073          	csrw	satp,a5
    80006424:	000107b7          	lui	a5,0x10
    80006428:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000642c:	30279073          	csrw	medeleg,a5
    80006430:	30379073          	csrw	mideleg,a5
    80006434:	104027f3          	csrr	a5,sie
    80006438:	2227e793          	ori	a5,a5,546
    8000643c:	10479073          	csrw	sie,a5
    80006440:	fff00793          	li	a5,-1
    80006444:	00a7d793          	srli	a5,a5,0xa
    80006448:	3b079073          	csrw	pmpaddr0,a5
    8000644c:	00f00793          	li	a5,15
    80006450:	3a079073          	csrw	pmpcfg0,a5
    80006454:	f14027f3          	csrr	a5,mhartid
    80006458:	0200c737          	lui	a4,0x200c
    8000645c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006460:	0007869b          	sext.w	a3,a5
    80006464:	00269713          	slli	a4,a3,0x2
    80006468:	000f4637          	lui	a2,0xf4
    8000646c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006470:	00d70733          	add	a4,a4,a3
    80006474:	0037979b          	slliw	a5,a5,0x3
    80006478:	020046b7          	lui	a3,0x2004
    8000647c:	00d787b3          	add	a5,a5,a3
    80006480:	00c585b3          	add	a1,a1,a2
    80006484:	00371693          	slli	a3,a4,0x3
    80006488:	00005717          	auipc	a4,0x5
    8000648c:	44870713          	addi	a4,a4,1096 # 8000b8d0 <timer_scratch>
    80006490:	00b7b023          	sd	a1,0(a5)
    80006494:	00d70733          	add	a4,a4,a3
    80006498:	00f73c23          	sd	a5,24(a4)
    8000649c:	02c73023          	sd	a2,32(a4)
    800064a0:	34071073          	csrw	mscratch,a4
    800064a4:	00000797          	auipc	a5,0x0
    800064a8:	6ec78793          	addi	a5,a5,1772 # 80006b90 <timervec>
    800064ac:	30579073          	csrw	mtvec,a5
    800064b0:	300027f3          	csrr	a5,mstatus
    800064b4:	0087e793          	ori	a5,a5,8
    800064b8:	30079073          	csrw	mstatus,a5
    800064bc:	304027f3          	csrr	a5,mie
    800064c0:	0807e793          	ori	a5,a5,128
    800064c4:	30479073          	csrw	mie,a5
    800064c8:	f14027f3          	csrr	a5,mhartid
    800064cc:	0007879b          	sext.w	a5,a5
    800064d0:	00078213          	mv	tp,a5
    800064d4:	30200073          	mret
    800064d8:	00813403          	ld	s0,8(sp)
    800064dc:	01010113          	addi	sp,sp,16
    800064e0:	00008067          	ret

00000000800064e4 <timerinit>:
    800064e4:	ff010113          	addi	sp,sp,-16
    800064e8:	00813423          	sd	s0,8(sp)
    800064ec:	01010413          	addi	s0,sp,16
    800064f0:	f14027f3          	csrr	a5,mhartid
    800064f4:	0200c737          	lui	a4,0x200c
    800064f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064fc:	0007869b          	sext.w	a3,a5
    80006500:	00269713          	slli	a4,a3,0x2
    80006504:	000f4637          	lui	a2,0xf4
    80006508:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000650c:	00d70733          	add	a4,a4,a3
    80006510:	0037979b          	slliw	a5,a5,0x3
    80006514:	020046b7          	lui	a3,0x2004
    80006518:	00d787b3          	add	a5,a5,a3
    8000651c:	00c585b3          	add	a1,a1,a2
    80006520:	00371693          	slli	a3,a4,0x3
    80006524:	00005717          	auipc	a4,0x5
    80006528:	3ac70713          	addi	a4,a4,940 # 8000b8d0 <timer_scratch>
    8000652c:	00b7b023          	sd	a1,0(a5)
    80006530:	00d70733          	add	a4,a4,a3
    80006534:	00f73c23          	sd	a5,24(a4)
    80006538:	02c73023          	sd	a2,32(a4)
    8000653c:	34071073          	csrw	mscratch,a4
    80006540:	00000797          	auipc	a5,0x0
    80006544:	65078793          	addi	a5,a5,1616 # 80006b90 <timervec>
    80006548:	30579073          	csrw	mtvec,a5
    8000654c:	300027f3          	csrr	a5,mstatus
    80006550:	0087e793          	ori	a5,a5,8
    80006554:	30079073          	csrw	mstatus,a5
    80006558:	304027f3          	csrr	a5,mie
    8000655c:	0807e793          	ori	a5,a5,128
    80006560:	30479073          	csrw	mie,a5
    80006564:	00813403          	ld	s0,8(sp)
    80006568:	01010113          	addi	sp,sp,16
    8000656c:	00008067          	ret

0000000080006570 <system_main>:
    80006570:	fe010113          	addi	sp,sp,-32
    80006574:	00813823          	sd	s0,16(sp)
    80006578:	00913423          	sd	s1,8(sp)
    8000657c:	00113c23          	sd	ra,24(sp)
    80006580:	02010413          	addi	s0,sp,32
    80006584:	00000097          	auipc	ra,0x0
    80006588:	0c4080e7          	jalr	196(ra) # 80006648 <cpuid>
    8000658c:	00005497          	auipc	s1,0x5
    80006590:	27448493          	addi	s1,s1,628 # 8000b800 <started>
    80006594:	02050263          	beqz	a0,800065b8 <system_main+0x48>
    80006598:	0004a783          	lw	a5,0(s1)
    8000659c:	0007879b          	sext.w	a5,a5
    800065a0:	fe078ce3          	beqz	a5,80006598 <system_main+0x28>
    800065a4:	0ff0000f          	fence
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	dd850513          	addi	a0,a0,-552 # 80009380 <CONSOLE_STATUS+0x370>
    800065b0:	00001097          	auipc	ra,0x1
    800065b4:	a7c080e7          	jalr	-1412(ra) # 8000702c <panic>
    800065b8:	00001097          	auipc	ra,0x1
    800065bc:	9d0080e7          	jalr	-1584(ra) # 80006f88 <consoleinit>
    800065c0:	00001097          	auipc	ra,0x1
    800065c4:	15c080e7          	jalr	348(ra) # 8000771c <printfinit>
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	ae050513          	addi	a0,a0,-1312 # 800090a8 <CONSOLE_STATUS+0x98>
    800065d0:	00001097          	auipc	ra,0x1
    800065d4:	ab8080e7          	jalr	-1352(ra) # 80007088 <__printf>
    800065d8:	00003517          	auipc	a0,0x3
    800065dc:	d7850513          	addi	a0,a0,-648 # 80009350 <CONSOLE_STATUS+0x340>
    800065e0:	00001097          	auipc	ra,0x1
    800065e4:	aa8080e7          	jalr	-1368(ra) # 80007088 <__printf>
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	ac050513          	addi	a0,a0,-1344 # 800090a8 <CONSOLE_STATUS+0x98>
    800065f0:	00001097          	auipc	ra,0x1
    800065f4:	a98080e7          	jalr	-1384(ra) # 80007088 <__printf>
    800065f8:	00001097          	auipc	ra,0x1
    800065fc:	4b0080e7          	jalr	1200(ra) # 80007aa8 <kinit>
    80006600:	00000097          	auipc	ra,0x0
    80006604:	148080e7          	jalr	328(ra) # 80006748 <trapinit>
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	16c080e7          	jalr	364(ra) # 80006774 <trapinithart>
    80006610:	00000097          	auipc	ra,0x0
    80006614:	5c0080e7          	jalr	1472(ra) # 80006bd0 <plicinit>
    80006618:	00000097          	auipc	ra,0x0
    8000661c:	5e0080e7          	jalr	1504(ra) # 80006bf8 <plicinithart>
    80006620:	00000097          	auipc	ra,0x0
    80006624:	078080e7          	jalr	120(ra) # 80006698 <userinit>
    80006628:	0ff0000f          	fence
    8000662c:	00100793          	li	a5,1
    80006630:	00003517          	auipc	a0,0x3
    80006634:	d3850513          	addi	a0,a0,-712 # 80009368 <CONSOLE_STATUS+0x358>
    80006638:	00f4a023          	sw	a5,0(s1)
    8000663c:	00001097          	auipc	ra,0x1
    80006640:	a4c080e7          	jalr	-1460(ra) # 80007088 <__printf>
    80006644:	0000006f          	j	80006644 <system_main+0xd4>

0000000080006648 <cpuid>:
    80006648:	ff010113          	addi	sp,sp,-16
    8000664c:	00813423          	sd	s0,8(sp)
    80006650:	01010413          	addi	s0,sp,16
    80006654:	00020513          	mv	a0,tp
    80006658:	00813403          	ld	s0,8(sp)
    8000665c:	0005051b          	sext.w	a0,a0
    80006660:	01010113          	addi	sp,sp,16
    80006664:	00008067          	ret

0000000080006668 <mycpu>:
    80006668:	ff010113          	addi	sp,sp,-16
    8000666c:	00813423          	sd	s0,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	00020793          	mv	a5,tp
    80006678:	00813403          	ld	s0,8(sp)
    8000667c:	0007879b          	sext.w	a5,a5
    80006680:	00779793          	slli	a5,a5,0x7
    80006684:	00006517          	auipc	a0,0x6
    80006688:	27c50513          	addi	a0,a0,636 # 8000c900 <cpus>
    8000668c:	00f50533          	add	a0,a0,a5
    80006690:	01010113          	addi	sp,sp,16
    80006694:	00008067          	ret

0000000080006698 <userinit>:
    80006698:	ff010113          	addi	sp,sp,-16
    8000669c:	00813423          	sd	s0,8(sp)
    800066a0:	01010413          	addi	s0,sp,16
    800066a4:	00813403          	ld	s0,8(sp)
    800066a8:	01010113          	addi	sp,sp,16
    800066ac:	ffffb317          	auipc	t1,0xffffb
    800066b0:	47c30067          	jr	1148(t1) # 80001b28 <main>

00000000800066b4 <either_copyout>:
    800066b4:	ff010113          	addi	sp,sp,-16
    800066b8:	00813023          	sd	s0,0(sp)
    800066bc:	00113423          	sd	ra,8(sp)
    800066c0:	01010413          	addi	s0,sp,16
    800066c4:	02051663          	bnez	a0,800066f0 <either_copyout+0x3c>
    800066c8:	00058513          	mv	a0,a1
    800066cc:	00060593          	mv	a1,a2
    800066d0:	0006861b          	sext.w	a2,a3
    800066d4:	00002097          	auipc	ra,0x2
    800066d8:	c60080e7          	jalr	-928(ra) # 80008334 <__memmove>
    800066dc:	00813083          	ld	ra,8(sp)
    800066e0:	00013403          	ld	s0,0(sp)
    800066e4:	00000513          	li	a0,0
    800066e8:	01010113          	addi	sp,sp,16
    800066ec:	00008067          	ret
    800066f0:	00003517          	auipc	a0,0x3
    800066f4:	cb850513          	addi	a0,a0,-840 # 800093a8 <CONSOLE_STATUS+0x398>
    800066f8:	00001097          	auipc	ra,0x1
    800066fc:	934080e7          	jalr	-1740(ra) # 8000702c <panic>

0000000080006700 <either_copyin>:
    80006700:	ff010113          	addi	sp,sp,-16
    80006704:	00813023          	sd	s0,0(sp)
    80006708:	00113423          	sd	ra,8(sp)
    8000670c:	01010413          	addi	s0,sp,16
    80006710:	02059463          	bnez	a1,80006738 <either_copyin+0x38>
    80006714:	00060593          	mv	a1,a2
    80006718:	0006861b          	sext.w	a2,a3
    8000671c:	00002097          	auipc	ra,0x2
    80006720:	c18080e7          	jalr	-1000(ra) # 80008334 <__memmove>
    80006724:	00813083          	ld	ra,8(sp)
    80006728:	00013403          	ld	s0,0(sp)
    8000672c:	00000513          	li	a0,0
    80006730:	01010113          	addi	sp,sp,16
    80006734:	00008067          	ret
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	c9850513          	addi	a0,a0,-872 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80006740:	00001097          	auipc	ra,0x1
    80006744:	8ec080e7          	jalr	-1812(ra) # 8000702c <panic>

0000000080006748 <trapinit>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813423          	sd	s0,8(sp)
    80006750:	01010413          	addi	s0,sp,16
    80006754:	00813403          	ld	s0,8(sp)
    80006758:	00003597          	auipc	a1,0x3
    8000675c:	ca058593          	addi	a1,a1,-864 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80006760:	00006517          	auipc	a0,0x6
    80006764:	22050513          	addi	a0,a0,544 # 8000c980 <tickslock>
    80006768:	01010113          	addi	sp,sp,16
    8000676c:	00001317          	auipc	t1,0x1
    80006770:	5cc30067          	jr	1484(t1) # 80007d38 <initlock>

0000000080006774 <trapinithart>:
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00813423          	sd	s0,8(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	00000797          	auipc	a5,0x0
    80006784:	30078793          	addi	a5,a5,768 # 80006a80 <kernelvec>
    80006788:	10579073          	csrw	stvec,a5
    8000678c:	00813403          	ld	s0,8(sp)
    80006790:	01010113          	addi	sp,sp,16
    80006794:	00008067          	ret

0000000080006798 <usertrap>:
    80006798:	ff010113          	addi	sp,sp,-16
    8000679c:	00813423          	sd	s0,8(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	00813403          	ld	s0,8(sp)
    800067a8:	01010113          	addi	sp,sp,16
    800067ac:	00008067          	ret

00000000800067b0 <usertrapret>:
    800067b0:	ff010113          	addi	sp,sp,-16
    800067b4:	00813423          	sd	s0,8(sp)
    800067b8:	01010413          	addi	s0,sp,16
    800067bc:	00813403          	ld	s0,8(sp)
    800067c0:	01010113          	addi	sp,sp,16
    800067c4:	00008067          	ret

00000000800067c8 <kerneltrap>:
    800067c8:	fe010113          	addi	sp,sp,-32
    800067cc:	00813823          	sd	s0,16(sp)
    800067d0:	00113c23          	sd	ra,24(sp)
    800067d4:	00913423          	sd	s1,8(sp)
    800067d8:	02010413          	addi	s0,sp,32
    800067dc:	142025f3          	csrr	a1,scause
    800067e0:	100027f3          	csrr	a5,sstatus
    800067e4:	0027f793          	andi	a5,a5,2
    800067e8:	10079c63          	bnez	a5,80006900 <kerneltrap+0x138>
    800067ec:	142027f3          	csrr	a5,scause
    800067f0:	0207ce63          	bltz	a5,8000682c <kerneltrap+0x64>
    800067f4:	00003517          	auipc	a0,0x3
    800067f8:	c4c50513          	addi	a0,a0,-948 # 80009440 <CONSOLE_STATUS+0x430>
    800067fc:	00001097          	auipc	ra,0x1
    80006800:	88c080e7          	jalr	-1908(ra) # 80007088 <__printf>
    80006804:	141025f3          	csrr	a1,sepc
    80006808:	14302673          	csrr	a2,stval
    8000680c:	00003517          	auipc	a0,0x3
    80006810:	c4450513          	addi	a0,a0,-956 # 80009450 <CONSOLE_STATUS+0x440>
    80006814:	00001097          	auipc	ra,0x1
    80006818:	874080e7          	jalr	-1932(ra) # 80007088 <__printf>
    8000681c:	00003517          	auipc	a0,0x3
    80006820:	c4c50513          	addi	a0,a0,-948 # 80009468 <CONSOLE_STATUS+0x458>
    80006824:	00001097          	auipc	ra,0x1
    80006828:	808080e7          	jalr	-2040(ra) # 8000702c <panic>
    8000682c:	0ff7f713          	andi	a4,a5,255
    80006830:	00900693          	li	a3,9
    80006834:	04d70063          	beq	a4,a3,80006874 <kerneltrap+0xac>
    80006838:	fff00713          	li	a4,-1
    8000683c:	03f71713          	slli	a4,a4,0x3f
    80006840:	00170713          	addi	a4,a4,1
    80006844:	fae798e3          	bne	a5,a4,800067f4 <kerneltrap+0x2c>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	e00080e7          	jalr	-512(ra) # 80006648 <cpuid>
    80006850:	06050663          	beqz	a0,800068bc <kerneltrap+0xf4>
    80006854:	144027f3          	csrr	a5,sip
    80006858:	ffd7f793          	andi	a5,a5,-3
    8000685c:	14479073          	csrw	sip,a5
    80006860:	01813083          	ld	ra,24(sp)
    80006864:	01013403          	ld	s0,16(sp)
    80006868:	00813483          	ld	s1,8(sp)
    8000686c:	02010113          	addi	sp,sp,32
    80006870:	00008067          	ret
    80006874:	00000097          	auipc	ra,0x0
    80006878:	3d0080e7          	jalr	976(ra) # 80006c44 <plic_claim>
    8000687c:	00a00793          	li	a5,10
    80006880:	00050493          	mv	s1,a0
    80006884:	06f50863          	beq	a0,a5,800068f4 <kerneltrap+0x12c>
    80006888:	fc050ce3          	beqz	a0,80006860 <kerneltrap+0x98>
    8000688c:	00050593          	mv	a1,a0
    80006890:	00003517          	auipc	a0,0x3
    80006894:	b9050513          	addi	a0,a0,-1136 # 80009420 <CONSOLE_STATUS+0x410>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	7f0080e7          	jalr	2032(ra) # 80007088 <__printf>
    800068a0:	01013403          	ld	s0,16(sp)
    800068a4:	01813083          	ld	ra,24(sp)
    800068a8:	00048513          	mv	a0,s1
    800068ac:	00813483          	ld	s1,8(sp)
    800068b0:	02010113          	addi	sp,sp,32
    800068b4:	00000317          	auipc	t1,0x0
    800068b8:	3c830067          	jr	968(t1) # 80006c7c <plic_complete>
    800068bc:	00006517          	auipc	a0,0x6
    800068c0:	0c450513          	addi	a0,a0,196 # 8000c980 <tickslock>
    800068c4:	00001097          	auipc	ra,0x1
    800068c8:	498080e7          	jalr	1176(ra) # 80007d5c <acquire>
    800068cc:	00005717          	auipc	a4,0x5
    800068d0:	f3870713          	addi	a4,a4,-200 # 8000b804 <ticks>
    800068d4:	00072783          	lw	a5,0(a4)
    800068d8:	00006517          	auipc	a0,0x6
    800068dc:	0a850513          	addi	a0,a0,168 # 8000c980 <tickslock>
    800068e0:	0017879b          	addiw	a5,a5,1
    800068e4:	00f72023          	sw	a5,0(a4)
    800068e8:	00001097          	auipc	ra,0x1
    800068ec:	540080e7          	jalr	1344(ra) # 80007e28 <release>
    800068f0:	f65ff06f          	j	80006854 <kerneltrap+0x8c>
    800068f4:	00001097          	auipc	ra,0x1
    800068f8:	09c080e7          	jalr	156(ra) # 80007990 <uartintr>
    800068fc:	fa5ff06f          	j	800068a0 <kerneltrap+0xd8>
    80006900:	00003517          	auipc	a0,0x3
    80006904:	b0050513          	addi	a0,a0,-1280 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006908:	00000097          	auipc	ra,0x0
    8000690c:	724080e7          	jalr	1828(ra) # 8000702c <panic>

0000000080006910 <clockintr>:
    80006910:	fe010113          	addi	sp,sp,-32
    80006914:	00813823          	sd	s0,16(sp)
    80006918:	00913423          	sd	s1,8(sp)
    8000691c:	00113c23          	sd	ra,24(sp)
    80006920:	02010413          	addi	s0,sp,32
    80006924:	00006497          	auipc	s1,0x6
    80006928:	05c48493          	addi	s1,s1,92 # 8000c980 <tickslock>
    8000692c:	00048513          	mv	a0,s1
    80006930:	00001097          	auipc	ra,0x1
    80006934:	42c080e7          	jalr	1068(ra) # 80007d5c <acquire>
    80006938:	00005717          	auipc	a4,0x5
    8000693c:	ecc70713          	addi	a4,a4,-308 # 8000b804 <ticks>
    80006940:	00072783          	lw	a5,0(a4)
    80006944:	01013403          	ld	s0,16(sp)
    80006948:	01813083          	ld	ra,24(sp)
    8000694c:	00048513          	mv	a0,s1
    80006950:	0017879b          	addiw	a5,a5,1
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	00f72023          	sw	a5,0(a4)
    8000695c:	02010113          	addi	sp,sp,32
    80006960:	00001317          	auipc	t1,0x1
    80006964:	4c830067          	jr	1224(t1) # 80007e28 <release>

0000000080006968 <devintr>:
    80006968:	142027f3          	csrr	a5,scause
    8000696c:	00000513          	li	a0,0
    80006970:	0007c463          	bltz	a5,80006978 <devintr+0x10>
    80006974:	00008067          	ret
    80006978:	fe010113          	addi	sp,sp,-32
    8000697c:	00813823          	sd	s0,16(sp)
    80006980:	00113c23          	sd	ra,24(sp)
    80006984:	00913423          	sd	s1,8(sp)
    80006988:	02010413          	addi	s0,sp,32
    8000698c:	0ff7f713          	andi	a4,a5,255
    80006990:	00900693          	li	a3,9
    80006994:	04d70c63          	beq	a4,a3,800069ec <devintr+0x84>
    80006998:	fff00713          	li	a4,-1
    8000699c:	03f71713          	slli	a4,a4,0x3f
    800069a0:	00170713          	addi	a4,a4,1
    800069a4:	00e78c63          	beq	a5,a4,800069bc <devintr+0x54>
    800069a8:	01813083          	ld	ra,24(sp)
    800069ac:	01013403          	ld	s0,16(sp)
    800069b0:	00813483          	ld	s1,8(sp)
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00008067          	ret
    800069bc:	00000097          	auipc	ra,0x0
    800069c0:	c8c080e7          	jalr	-884(ra) # 80006648 <cpuid>
    800069c4:	06050663          	beqz	a0,80006a30 <devintr+0xc8>
    800069c8:	144027f3          	csrr	a5,sip
    800069cc:	ffd7f793          	andi	a5,a5,-3
    800069d0:	14479073          	csrw	sip,a5
    800069d4:	01813083          	ld	ra,24(sp)
    800069d8:	01013403          	ld	s0,16(sp)
    800069dc:	00813483          	ld	s1,8(sp)
    800069e0:	00200513          	li	a0,2
    800069e4:	02010113          	addi	sp,sp,32
    800069e8:	00008067          	ret
    800069ec:	00000097          	auipc	ra,0x0
    800069f0:	258080e7          	jalr	600(ra) # 80006c44 <plic_claim>
    800069f4:	00a00793          	li	a5,10
    800069f8:	00050493          	mv	s1,a0
    800069fc:	06f50663          	beq	a0,a5,80006a68 <devintr+0x100>
    80006a00:	00100513          	li	a0,1
    80006a04:	fa0482e3          	beqz	s1,800069a8 <devintr+0x40>
    80006a08:	00048593          	mv	a1,s1
    80006a0c:	00003517          	auipc	a0,0x3
    80006a10:	a1450513          	addi	a0,a0,-1516 # 80009420 <CONSOLE_STATUS+0x410>
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	674080e7          	jalr	1652(ra) # 80007088 <__printf>
    80006a1c:	00048513          	mv	a0,s1
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	25c080e7          	jalr	604(ra) # 80006c7c <plic_complete>
    80006a28:	00100513          	li	a0,1
    80006a2c:	f7dff06f          	j	800069a8 <devintr+0x40>
    80006a30:	00006517          	auipc	a0,0x6
    80006a34:	f5050513          	addi	a0,a0,-176 # 8000c980 <tickslock>
    80006a38:	00001097          	auipc	ra,0x1
    80006a3c:	324080e7          	jalr	804(ra) # 80007d5c <acquire>
    80006a40:	00005717          	auipc	a4,0x5
    80006a44:	dc470713          	addi	a4,a4,-572 # 8000b804 <ticks>
    80006a48:	00072783          	lw	a5,0(a4)
    80006a4c:	00006517          	auipc	a0,0x6
    80006a50:	f3450513          	addi	a0,a0,-204 # 8000c980 <tickslock>
    80006a54:	0017879b          	addiw	a5,a5,1
    80006a58:	00f72023          	sw	a5,0(a4)
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	3cc080e7          	jalr	972(ra) # 80007e28 <release>
    80006a64:	f65ff06f          	j	800069c8 <devintr+0x60>
    80006a68:	00001097          	auipc	ra,0x1
    80006a6c:	f28080e7          	jalr	-216(ra) # 80007990 <uartintr>
    80006a70:	fadff06f          	j	80006a1c <devintr+0xb4>
	...

0000000080006a80 <kernelvec>:
    80006a80:	f0010113          	addi	sp,sp,-256
    80006a84:	00113023          	sd	ra,0(sp)
    80006a88:	00213423          	sd	sp,8(sp)
    80006a8c:	00313823          	sd	gp,16(sp)
    80006a90:	00413c23          	sd	tp,24(sp)
    80006a94:	02513023          	sd	t0,32(sp)
    80006a98:	02613423          	sd	t1,40(sp)
    80006a9c:	02713823          	sd	t2,48(sp)
    80006aa0:	02813c23          	sd	s0,56(sp)
    80006aa4:	04913023          	sd	s1,64(sp)
    80006aa8:	04a13423          	sd	a0,72(sp)
    80006aac:	04b13823          	sd	a1,80(sp)
    80006ab0:	04c13c23          	sd	a2,88(sp)
    80006ab4:	06d13023          	sd	a3,96(sp)
    80006ab8:	06e13423          	sd	a4,104(sp)
    80006abc:	06f13823          	sd	a5,112(sp)
    80006ac0:	07013c23          	sd	a6,120(sp)
    80006ac4:	09113023          	sd	a7,128(sp)
    80006ac8:	09213423          	sd	s2,136(sp)
    80006acc:	09313823          	sd	s3,144(sp)
    80006ad0:	09413c23          	sd	s4,152(sp)
    80006ad4:	0b513023          	sd	s5,160(sp)
    80006ad8:	0b613423          	sd	s6,168(sp)
    80006adc:	0b713823          	sd	s7,176(sp)
    80006ae0:	0b813c23          	sd	s8,184(sp)
    80006ae4:	0d913023          	sd	s9,192(sp)
    80006ae8:	0da13423          	sd	s10,200(sp)
    80006aec:	0db13823          	sd	s11,208(sp)
    80006af0:	0dc13c23          	sd	t3,216(sp)
    80006af4:	0fd13023          	sd	t4,224(sp)
    80006af8:	0fe13423          	sd	t5,232(sp)
    80006afc:	0ff13823          	sd	t6,240(sp)
    80006b00:	cc9ff0ef          	jal	ra,800067c8 <kerneltrap>
    80006b04:	00013083          	ld	ra,0(sp)
    80006b08:	00813103          	ld	sp,8(sp)
    80006b0c:	01013183          	ld	gp,16(sp)
    80006b10:	02013283          	ld	t0,32(sp)
    80006b14:	02813303          	ld	t1,40(sp)
    80006b18:	03013383          	ld	t2,48(sp)
    80006b1c:	03813403          	ld	s0,56(sp)
    80006b20:	04013483          	ld	s1,64(sp)
    80006b24:	04813503          	ld	a0,72(sp)
    80006b28:	05013583          	ld	a1,80(sp)
    80006b2c:	05813603          	ld	a2,88(sp)
    80006b30:	06013683          	ld	a3,96(sp)
    80006b34:	06813703          	ld	a4,104(sp)
    80006b38:	07013783          	ld	a5,112(sp)
    80006b3c:	07813803          	ld	a6,120(sp)
    80006b40:	08013883          	ld	a7,128(sp)
    80006b44:	08813903          	ld	s2,136(sp)
    80006b48:	09013983          	ld	s3,144(sp)
    80006b4c:	09813a03          	ld	s4,152(sp)
    80006b50:	0a013a83          	ld	s5,160(sp)
    80006b54:	0a813b03          	ld	s6,168(sp)
    80006b58:	0b013b83          	ld	s7,176(sp)
    80006b5c:	0b813c03          	ld	s8,184(sp)
    80006b60:	0c013c83          	ld	s9,192(sp)
    80006b64:	0c813d03          	ld	s10,200(sp)
    80006b68:	0d013d83          	ld	s11,208(sp)
    80006b6c:	0d813e03          	ld	t3,216(sp)
    80006b70:	0e013e83          	ld	t4,224(sp)
    80006b74:	0e813f03          	ld	t5,232(sp)
    80006b78:	0f013f83          	ld	t6,240(sp)
    80006b7c:	10010113          	addi	sp,sp,256
    80006b80:	10200073          	sret
    80006b84:	00000013          	nop
    80006b88:	00000013          	nop
    80006b8c:	00000013          	nop

0000000080006b90 <timervec>:
    80006b90:	34051573          	csrrw	a0,mscratch,a0
    80006b94:	00b53023          	sd	a1,0(a0)
    80006b98:	00c53423          	sd	a2,8(a0)
    80006b9c:	00d53823          	sd	a3,16(a0)
    80006ba0:	01853583          	ld	a1,24(a0)
    80006ba4:	02053603          	ld	a2,32(a0)
    80006ba8:	0005b683          	ld	a3,0(a1)
    80006bac:	00c686b3          	add	a3,a3,a2
    80006bb0:	00d5b023          	sd	a3,0(a1)
    80006bb4:	00200593          	li	a1,2
    80006bb8:	14459073          	csrw	sip,a1
    80006bbc:	01053683          	ld	a3,16(a0)
    80006bc0:	00853603          	ld	a2,8(a0)
    80006bc4:	00053583          	ld	a1,0(a0)
    80006bc8:	34051573          	csrrw	a0,mscratch,a0
    80006bcc:	30200073          	mret

0000000080006bd0 <plicinit>:
    80006bd0:	ff010113          	addi	sp,sp,-16
    80006bd4:	00813423          	sd	s0,8(sp)
    80006bd8:	01010413          	addi	s0,sp,16
    80006bdc:	00813403          	ld	s0,8(sp)
    80006be0:	0c0007b7          	lui	a5,0xc000
    80006be4:	00100713          	li	a4,1
    80006be8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006bec:	00e7a223          	sw	a4,4(a5)
    80006bf0:	01010113          	addi	sp,sp,16
    80006bf4:	00008067          	ret

0000000080006bf8 <plicinithart>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813023          	sd	s0,0(sp)
    80006c00:	00113423          	sd	ra,8(sp)
    80006c04:	01010413          	addi	s0,sp,16
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	a40080e7          	jalr	-1472(ra) # 80006648 <cpuid>
    80006c10:	0085171b          	slliw	a4,a0,0x8
    80006c14:	0c0027b7          	lui	a5,0xc002
    80006c18:	00e787b3          	add	a5,a5,a4
    80006c1c:	40200713          	li	a4,1026
    80006c20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c24:	00813083          	ld	ra,8(sp)
    80006c28:	00013403          	ld	s0,0(sp)
    80006c2c:	00d5151b          	slliw	a0,a0,0xd
    80006c30:	0c2017b7          	lui	a5,0xc201
    80006c34:	00a78533          	add	a0,a5,a0
    80006c38:	00052023          	sw	zero,0(a0)
    80006c3c:	01010113          	addi	sp,sp,16
    80006c40:	00008067          	ret

0000000080006c44 <plic_claim>:
    80006c44:	ff010113          	addi	sp,sp,-16
    80006c48:	00813023          	sd	s0,0(sp)
    80006c4c:	00113423          	sd	ra,8(sp)
    80006c50:	01010413          	addi	s0,sp,16
    80006c54:	00000097          	auipc	ra,0x0
    80006c58:	9f4080e7          	jalr	-1548(ra) # 80006648 <cpuid>
    80006c5c:	00813083          	ld	ra,8(sp)
    80006c60:	00013403          	ld	s0,0(sp)
    80006c64:	00d5151b          	slliw	a0,a0,0xd
    80006c68:	0c2017b7          	lui	a5,0xc201
    80006c6c:	00a78533          	add	a0,a5,a0
    80006c70:	00452503          	lw	a0,4(a0)
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00008067          	ret

0000000080006c7c <plic_complete>:
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00813823          	sd	s0,16(sp)
    80006c84:	00913423          	sd	s1,8(sp)
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	02010413          	addi	s0,sp,32
    80006c90:	00050493          	mv	s1,a0
    80006c94:	00000097          	auipc	ra,0x0
    80006c98:	9b4080e7          	jalr	-1612(ra) # 80006648 <cpuid>
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	01013403          	ld	s0,16(sp)
    80006ca4:	00d5179b          	slliw	a5,a0,0xd
    80006ca8:	0c201737          	lui	a4,0xc201
    80006cac:	00f707b3          	add	a5,a4,a5
    80006cb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00008067          	ret

0000000080006cc0 <consolewrite>:
    80006cc0:	fb010113          	addi	sp,sp,-80
    80006cc4:	04813023          	sd	s0,64(sp)
    80006cc8:	04113423          	sd	ra,72(sp)
    80006ccc:	02913c23          	sd	s1,56(sp)
    80006cd0:	03213823          	sd	s2,48(sp)
    80006cd4:	03313423          	sd	s3,40(sp)
    80006cd8:	03413023          	sd	s4,32(sp)
    80006cdc:	01513c23          	sd	s5,24(sp)
    80006ce0:	05010413          	addi	s0,sp,80
    80006ce4:	06c05c63          	blez	a2,80006d5c <consolewrite+0x9c>
    80006ce8:	00060993          	mv	s3,a2
    80006cec:	00050a13          	mv	s4,a0
    80006cf0:	00058493          	mv	s1,a1
    80006cf4:	00000913          	li	s2,0
    80006cf8:	fff00a93          	li	s5,-1
    80006cfc:	01c0006f          	j	80006d18 <consolewrite+0x58>
    80006d00:	fbf44503          	lbu	a0,-65(s0)
    80006d04:	0019091b          	addiw	s2,s2,1
    80006d08:	00148493          	addi	s1,s1,1
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	a9c080e7          	jalr	-1380(ra) # 800077a8 <uartputc>
    80006d14:	03298063          	beq	s3,s2,80006d34 <consolewrite+0x74>
    80006d18:	00048613          	mv	a2,s1
    80006d1c:	00100693          	li	a3,1
    80006d20:	000a0593          	mv	a1,s4
    80006d24:	fbf40513          	addi	a0,s0,-65
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	9d8080e7          	jalr	-1576(ra) # 80006700 <either_copyin>
    80006d30:	fd5518e3          	bne	a0,s5,80006d00 <consolewrite+0x40>
    80006d34:	04813083          	ld	ra,72(sp)
    80006d38:	04013403          	ld	s0,64(sp)
    80006d3c:	03813483          	ld	s1,56(sp)
    80006d40:	02813983          	ld	s3,40(sp)
    80006d44:	02013a03          	ld	s4,32(sp)
    80006d48:	01813a83          	ld	s5,24(sp)
    80006d4c:	00090513          	mv	a0,s2
    80006d50:	03013903          	ld	s2,48(sp)
    80006d54:	05010113          	addi	sp,sp,80
    80006d58:	00008067          	ret
    80006d5c:	00000913          	li	s2,0
    80006d60:	fd5ff06f          	j	80006d34 <consolewrite+0x74>

0000000080006d64 <consoleread>:
    80006d64:	f9010113          	addi	sp,sp,-112
    80006d68:	06813023          	sd	s0,96(sp)
    80006d6c:	04913c23          	sd	s1,88(sp)
    80006d70:	05213823          	sd	s2,80(sp)
    80006d74:	05313423          	sd	s3,72(sp)
    80006d78:	05413023          	sd	s4,64(sp)
    80006d7c:	03513c23          	sd	s5,56(sp)
    80006d80:	03613823          	sd	s6,48(sp)
    80006d84:	03713423          	sd	s7,40(sp)
    80006d88:	03813023          	sd	s8,32(sp)
    80006d8c:	06113423          	sd	ra,104(sp)
    80006d90:	01913c23          	sd	s9,24(sp)
    80006d94:	07010413          	addi	s0,sp,112
    80006d98:	00060b93          	mv	s7,a2
    80006d9c:	00050913          	mv	s2,a0
    80006da0:	00058c13          	mv	s8,a1
    80006da4:	00060b1b          	sext.w	s6,a2
    80006da8:	00006497          	auipc	s1,0x6
    80006dac:	c0048493          	addi	s1,s1,-1024 # 8000c9a8 <cons>
    80006db0:	00400993          	li	s3,4
    80006db4:	fff00a13          	li	s4,-1
    80006db8:	00a00a93          	li	s5,10
    80006dbc:	05705e63          	blez	s7,80006e18 <consoleread+0xb4>
    80006dc0:	09c4a703          	lw	a4,156(s1)
    80006dc4:	0984a783          	lw	a5,152(s1)
    80006dc8:	0007071b          	sext.w	a4,a4
    80006dcc:	08e78463          	beq	a5,a4,80006e54 <consoleread+0xf0>
    80006dd0:	07f7f713          	andi	a4,a5,127
    80006dd4:	00e48733          	add	a4,s1,a4
    80006dd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006ddc:	0017869b          	addiw	a3,a5,1
    80006de0:	08d4ac23          	sw	a3,152(s1)
    80006de4:	00070c9b          	sext.w	s9,a4
    80006de8:	0b370663          	beq	a4,s3,80006e94 <consoleread+0x130>
    80006dec:	00100693          	li	a3,1
    80006df0:	f9f40613          	addi	a2,s0,-97
    80006df4:	000c0593          	mv	a1,s8
    80006df8:	00090513          	mv	a0,s2
    80006dfc:	f8e40fa3          	sb	a4,-97(s0)
    80006e00:	00000097          	auipc	ra,0x0
    80006e04:	8b4080e7          	jalr	-1868(ra) # 800066b4 <either_copyout>
    80006e08:	01450863          	beq	a0,s4,80006e18 <consoleread+0xb4>
    80006e0c:	001c0c13          	addi	s8,s8,1
    80006e10:	fffb8b9b          	addiw	s7,s7,-1
    80006e14:	fb5c94e3          	bne	s9,s5,80006dbc <consoleread+0x58>
    80006e18:	000b851b          	sext.w	a0,s7
    80006e1c:	06813083          	ld	ra,104(sp)
    80006e20:	06013403          	ld	s0,96(sp)
    80006e24:	05813483          	ld	s1,88(sp)
    80006e28:	05013903          	ld	s2,80(sp)
    80006e2c:	04813983          	ld	s3,72(sp)
    80006e30:	04013a03          	ld	s4,64(sp)
    80006e34:	03813a83          	ld	s5,56(sp)
    80006e38:	02813b83          	ld	s7,40(sp)
    80006e3c:	02013c03          	ld	s8,32(sp)
    80006e40:	01813c83          	ld	s9,24(sp)
    80006e44:	40ab053b          	subw	a0,s6,a0
    80006e48:	03013b03          	ld	s6,48(sp)
    80006e4c:	07010113          	addi	sp,sp,112
    80006e50:	00008067          	ret
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	1d8080e7          	jalr	472(ra) # 8000802c <push_on>
    80006e5c:	0984a703          	lw	a4,152(s1)
    80006e60:	09c4a783          	lw	a5,156(s1)
    80006e64:	0007879b          	sext.w	a5,a5
    80006e68:	fef70ce3          	beq	a4,a5,80006e60 <consoleread+0xfc>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	234080e7          	jalr	564(ra) # 800080a0 <pop_on>
    80006e74:	0984a783          	lw	a5,152(s1)
    80006e78:	07f7f713          	andi	a4,a5,127
    80006e7c:	00e48733          	add	a4,s1,a4
    80006e80:	01874703          	lbu	a4,24(a4)
    80006e84:	0017869b          	addiw	a3,a5,1
    80006e88:	08d4ac23          	sw	a3,152(s1)
    80006e8c:	00070c9b          	sext.w	s9,a4
    80006e90:	f5371ee3          	bne	a4,s3,80006dec <consoleread+0x88>
    80006e94:	000b851b          	sext.w	a0,s7
    80006e98:	f96bf2e3          	bgeu	s7,s6,80006e1c <consoleread+0xb8>
    80006e9c:	08f4ac23          	sw	a5,152(s1)
    80006ea0:	f7dff06f          	j	80006e1c <consoleread+0xb8>

0000000080006ea4 <consputc>:
    80006ea4:	10000793          	li	a5,256
    80006ea8:	00f50663          	beq	a0,a5,80006eb4 <consputc+0x10>
    80006eac:	00001317          	auipc	t1,0x1
    80006eb0:	9f430067          	jr	-1548(t1) # 800078a0 <uartputc_sync>
    80006eb4:	ff010113          	addi	sp,sp,-16
    80006eb8:	00113423          	sd	ra,8(sp)
    80006ebc:	00813023          	sd	s0,0(sp)
    80006ec0:	01010413          	addi	s0,sp,16
    80006ec4:	00800513          	li	a0,8
    80006ec8:	00001097          	auipc	ra,0x1
    80006ecc:	9d8080e7          	jalr	-1576(ra) # 800078a0 <uartputc_sync>
    80006ed0:	02000513          	li	a0,32
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	9cc080e7          	jalr	-1588(ra) # 800078a0 <uartputc_sync>
    80006edc:	00013403          	ld	s0,0(sp)
    80006ee0:	00813083          	ld	ra,8(sp)
    80006ee4:	00800513          	li	a0,8
    80006ee8:	01010113          	addi	sp,sp,16
    80006eec:	00001317          	auipc	t1,0x1
    80006ef0:	9b430067          	jr	-1612(t1) # 800078a0 <uartputc_sync>

0000000080006ef4 <consoleintr>:
    80006ef4:	fe010113          	addi	sp,sp,-32
    80006ef8:	00813823          	sd	s0,16(sp)
    80006efc:	00913423          	sd	s1,8(sp)
    80006f00:	01213023          	sd	s2,0(sp)
    80006f04:	00113c23          	sd	ra,24(sp)
    80006f08:	02010413          	addi	s0,sp,32
    80006f0c:	00006917          	auipc	s2,0x6
    80006f10:	a9c90913          	addi	s2,s2,-1380 # 8000c9a8 <cons>
    80006f14:	00050493          	mv	s1,a0
    80006f18:	00090513          	mv	a0,s2
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	e40080e7          	jalr	-448(ra) # 80007d5c <acquire>
    80006f24:	02048c63          	beqz	s1,80006f5c <consoleintr+0x68>
    80006f28:	0a092783          	lw	a5,160(s2)
    80006f2c:	09892703          	lw	a4,152(s2)
    80006f30:	07f00693          	li	a3,127
    80006f34:	40e7873b          	subw	a4,a5,a4
    80006f38:	02e6e263          	bltu	a3,a4,80006f5c <consoleintr+0x68>
    80006f3c:	00d00713          	li	a4,13
    80006f40:	04e48063          	beq	s1,a4,80006f80 <consoleintr+0x8c>
    80006f44:	07f7f713          	andi	a4,a5,127
    80006f48:	00e90733          	add	a4,s2,a4
    80006f4c:	0017879b          	addiw	a5,a5,1
    80006f50:	0af92023          	sw	a5,160(s2)
    80006f54:	00970c23          	sb	s1,24(a4)
    80006f58:	08f92e23          	sw	a5,156(s2)
    80006f5c:	01013403          	ld	s0,16(sp)
    80006f60:	01813083          	ld	ra,24(sp)
    80006f64:	00813483          	ld	s1,8(sp)
    80006f68:	00013903          	ld	s2,0(sp)
    80006f6c:	00006517          	auipc	a0,0x6
    80006f70:	a3c50513          	addi	a0,a0,-1476 # 8000c9a8 <cons>
    80006f74:	02010113          	addi	sp,sp,32
    80006f78:	00001317          	auipc	t1,0x1
    80006f7c:	eb030067          	jr	-336(t1) # 80007e28 <release>
    80006f80:	00a00493          	li	s1,10
    80006f84:	fc1ff06f          	j	80006f44 <consoleintr+0x50>

0000000080006f88 <consoleinit>:
    80006f88:	fe010113          	addi	sp,sp,-32
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00813823          	sd	s0,16(sp)
    80006f94:	00913423          	sd	s1,8(sp)
    80006f98:	02010413          	addi	s0,sp,32
    80006f9c:	00006497          	auipc	s1,0x6
    80006fa0:	a0c48493          	addi	s1,s1,-1524 # 8000c9a8 <cons>
    80006fa4:	00048513          	mv	a0,s1
    80006fa8:	00002597          	auipc	a1,0x2
    80006fac:	4d058593          	addi	a1,a1,1232 # 80009478 <CONSOLE_STATUS+0x468>
    80006fb0:	00001097          	auipc	ra,0x1
    80006fb4:	d88080e7          	jalr	-632(ra) # 80007d38 <initlock>
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	7ac080e7          	jalr	1964(ra) # 80007764 <uartinit>
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	01013403          	ld	s0,16(sp)
    80006fc8:	00000797          	auipc	a5,0x0
    80006fcc:	d9c78793          	addi	a5,a5,-612 # 80006d64 <consoleread>
    80006fd0:	0af4bc23          	sd	a5,184(s1)
    80006fd4:	00000797          	auipc	a5,0x0
    80006fd8:	cec78793          	addi	a5,a5,-788 # 80006cc0 <consolewrite>
    80006fdc:	0cf4b023          	sd	a5,192(s1)
    80006fe0:	00813483          	ld	s1,8(sp)
    80006fe4:	02010113          	addi	sp,sp,32
    80006fe8:	00008067          	ret

0000000080006fec <console_read>:
    80006fec:	ff010113          	addi	sp,sp,-16
    80006ff0:	00813423          	sd	s0,8(sp)
    80006ff4:	01010413          	addi	s0,sp,16
    80006ff8:	00813403          	ld	s0,8(sp)
    80006ffc:	00006317          	auipc	t1,0x6
    80007000:	a6433303          	ld	t1,-1436(t1) # 8000ca60 <devsw+0x10>
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00030067          	jr	t1

000000008000700c <console_write>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00813403          	ld	s0,8(sp)
    8000701c:	00006317          	auipc	t1,0x6
    80007020:	a4c33303          	ld	t1,-1460(t1) # 8000ca68 <devsw+0x18>
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00030067          	jr	t1

000000008000702c <panic>:
    8000702c:	fe010113          	addi	sp,sp,-32
    80007030:	00113c23          	sd	ra,24(sp)
    80007034:	00813823          	sd	s0,16(sp)
    80007038:	00913423          	sd	s1,8(sp)
    8000703c:	02010413          	addi	s0,sp,32
    80007040:	00050493          	mv	s1,a0
    80007044:	00002517          	auipc	a0,0x2
    80007048:	43c50513          	addi	a0,a0,1084 # 80009480 <CONSOLE_STATUS+0x470>
    8000704c:	00006797          	auipc	a5,0x6
    80007050:	aa07ae23          	sw	zero,-1348(a5) # 8000cb08 <pr+0x18>
    80007054:	00000097          	auipc	ra,0x0
    80007058:	034080e7          	jalr	52(ra) # 80007088 <__printf>
    8000705c:	00048513          	mv	a0,s1
    80007060:	00000097          	auipc	ra,0x0
    80007064:	028080e7          	jalr	40(ra) # 80007088 <__printf>
    80007068:	00002517          	auipc	a0,0x2
    8000706c:	04050513          	addi	a0,a0,64 # 800090a8 <CONSOLE_STATUS+0x98>
    80007070:	00000097          	auipc	ra,0x0
    80007074:	018080e7          	jalr	24(ra) # 80007088 <__printf>
    80007078:	00100793          	li	a5,1
    8000707c:	00004717          	auipc	a4,0x4
    80007080:	78f72623          	sw	a5,1932(a4) # 8000b808 <panicked>
    80007084:	0000006f          	j	80007084 <panic+0x58>

0000000080007088 <__printf>:
    80007088:	f3010113          	addi	sp,sp,-208
    8000708c:	08813023          	sd	s0,128(sp)
    80007090:	07313423          	sd	s3,104(sp)
    80007094:	09010413          	addi	s0,sp,144
    80007098:	05813023          	sd	s8,64(sp)
    8000709c:	08113423          	sd	ra,136(sp)
    800070a0:	06913c23          	sd	s1,120(sp)
    800070a4:	07213823          	sd	s2,112(sp)
    800070a8:	07413023          	sd	s4,96(sp)
    800070ac:	05513c23          	sd	s5,88(sp)
    800070b0:	05613823          	sd	s6,80(sp)
    800070b4:	05713423          	sd	s7,72(sp)
    800070b8:	03913c23          	sd	s9,56(sp)
    800070bc:	03a13823          	sd	s10,48(sp)
    800070c0:	03b13423          	sd	s11,40(sp)
    800070c4:	00006317          	auipc	t1,0x6
    800070c8:	a2c30313          	addi	t1,t1,-1492 # 8000caf0 <pr>
    800070cc:	01832c03          	lw	s8,24(t1)
    800070d0:	00b43423          	sd	a1,8(s0)
    800070d4:	00c43823          	sd	a2,16(s0)
    800070d8:	00d43c23          	sd	a3,24(s0)
    800070dc:	02e43023          	sd	a4,32(s0)
    800070e0:	02f43423          	sd	a5,40(s0)
    800070e4:	03043823          	sd	a6,48(s0)
    800070e8:	03143c23          	sd	a7,56(s0)
    800070ec:	00050993          	mv	s3,a0
    800070f0:	4a0c1663          	bnez	s8,8000759c <__printf+0x514>
    800070f4:	60098c63          	beqz	s3,8000770c <__printf+0x684>
    800070f8:	0009c503          	lbu	a0,0(s3)
    800070fc:	00840793          	addi	a5,s0,8
    80007100:	f6f43c23          	sd	a5,-136(s0)
    80007104:	00000493          	li	s1,0
    80007108:	22050063          	beqz	a0,80007328 <__printf+0x2a0>
    8000710c:	00002a37          	lui	s4,0x2
    80007110:	00018ab7          	lui	s5,0x18
    80007114:	000f4b37          	lui	s6,0xf4
    80007118:	00989bb7          	lui	s7,0x989
    8000711c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007120:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007124:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007128:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000712c:	00148c9b          	addiw	s9,s1,1
    80007130:	02500793          	li	a5,37
    80007134:	01998933          	add	s2,s3,s9
    80007138:	38f51263          	bne	a0,a5,800074bc <__printf+0x434>
    8000713c:	00094783          	lbu	a5,0(s2)
    80007140:	00078c9b          	sext.w	s9,a5
    80007144:	1e078263          	beqz	a5,80007328 <__printf+0x2a0>
    80007148:	0024849b          	addiw	s1,s1,2
    8000714c:	07000713          	li	a4,112
    80007150:	00998933          	add	s2,s3,s1
    80007154:	38e78a63          	beq	a5,a4,800074e8 <__printf+0x460>
    80007158:	20f76863          	bltu	a4,a5,80007368 <__printf+0x2e0>
    8000715c:	42a78863          	beq	a5,a0,8000758c <__printf+0x504>
    80007160:	06400713          	li	a4,100
    80007164:	40e79663          	bne	a5,a4,80007570 <__printf+0x4e8>
    80007168:	f7843783          	ld	a5,-136(s0)
    8000716c:	0007a603          	lw	a2,0(a5)
    80007170:	00878793          	addi	a5,a5,8
    80007174:	f6f43c23          	sd	a5,-136(s0)
    80007178:	42064a63          	bltz	a2,800075ac <__printf+0x524>
    8000717c:	00a00713          	li	a4,10
    80007180:	02e677bb          	remuw	a5,a2,a4
    80007184:	00002d97          	auipc	s11,0x2
    80007188:	324d8d93          	addi	s11,s11,804 # 800094a8 <digits>
    8000718c:	00900593          	li	a1,9
    80007190:	0006051b          	sext.w	a0,a2
    80007194:	00000c93          	li	s9,0
    80007198:	02079793          	slli	a5,a5,0x20
    8000719c:	0207d793          	srli	a5,a5,0x20
    800071a0:	00fd87b3          	add	a5,s11,a5
    800071a4:	0007c783          	lbu	a5,0(a5)
    800071a8:	02e656bb          	divuw	a3,a2,a4
    800071ac:	f8f40023          	sb	a5,-128(s0)
    800071b0:	14c5d863          	bge	a1,a2,80007300 <__printf+0x278>
    800071b4:	06300593          	li	a1,99
    800071b8:	00100c93          	li	s9,1
    800071bc:	02e6f7bb          	remuw	a5,a3,a4
    800071c0:	02079793          	slli	a5,a5,0x20
    800071c4:	0207d793          	srli	a5,a5,0x20
    800071c8:	00fd87b3          	add	a5,s11,a5
    800071cc:	0007c783          	lbu	a5,0(a5)
    800071d0:	02e6d73b          	divuw	a4,a3,a4
    800071d4:	f8f400a3          	sb	a5,-127(s0)
    800071d8:	12a5f463          	bgeu	a1,a0,80007300 <__printf+0x278>
    800071dc:	00a00693          	li	a3,10
    800071e0:	00900593          	li	a1,9
    800071e4:	02d777bb          	remuw	a5,a4,a3
    800071e8:	02079793          	slli	a5,a5,0x20
    800071ec:	0207d793          	srli	a5,a5,0x20
    800071f0:	00fd87b3          	add	a5,s11,a5
    800071f4:	0007c503          	lbu	a0,0(a5)
    800071f8:	02d757bb          	divuw	a5,a4,a3
    800071fc:	f8a40123          	sb	a0,-126(s0)
    80007200:	48e5f263          	bgeu	a1,a4,80007684 <__printf+0x5fc>
    80007204:	06300513          	li	a0,99
    80007208:	02d7f5bb          	remuw	a1,a5,a3
    8000720c:	02059593          	slli	a1,a1,0x20
    80007210:	0205d593          	srli	a1,a1,0x20
    80007214:	00bd85b3          	add	a1,s11,a1
    80007218:	0005c583          	lbu	a1,0(a1)
    8000721c:	02d7d7bb          	divuw	a5,a5,a3
    80007220:	f8b401a3          	sb	a1,-125(s0)
    80007224:	48e57263          	bgeu	a0,a4,800076a8 <__printf+0x620>
    80007228:	3e700513          	li	a0,999
    8000722c:	02d7f5bb          	remuw	a1,a5,a3
    80007230:	02059593          	slli	a1,a1,0x20
    80007234:	0205d593          	srli	a1,a1,0x20
    80007238:	00bd85b3          	add	a1,s11,a1
    8000723c:	0005c583          	lbu	a1,0(a1)
    80007240:	02d7d7bb          	divuw	a5,a5,a3
    80007244:	f8b40223          	sb	a1,-124(s0)
    80007248:	46e57663          	bgeu	a0,a4,800076b4 <__printf+0x62c>
    8000724c:	02d7f5bb          	remuw	a1,a5,a3
    80007250:	02059593          	slli	a1,a1,0x20
    80007254:	0205d593          	srli	a1,a1,0x20
    80007258:	00bd85b3          	add	a1,s11,a1
    8000725c:	0005c583          	lbu	a1,0(a1)
    80007260:	02d7d7bb          	divuw	a5,a5,a3
    80007264:	f8b402a3          	sb	a1,-123(s0)
    80007268:	46ea7863          	bgeu	s4,a4,800076d8 <__printf+0x650>
    8000726c:	02d7f5bb          	remuw	a1,a5,a3
    80007270:	02059593          	slli	a1,a1,0x20
    80007274:	0205d593          	srli	a1,a1,0x20
    80007278:	00bd85b3          	add	a1,s11,a1
    8000727c:	0005c583          	lbu	a1,0(a1)
    80007280:	02d7d7bb          	divuw	a5,a5,a3
    80007284:	f8b40323          	sb	a1,-122(s0)
    80007288:	3eeaf863          	bgeu	s5,a4,80007678 <__printf+0x5f0>
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b403a3          	sb	a1,-121(s0)
    800072a8:	42eb7e63          	bgeu	s6,a4,800076e4 <__printf+0x65c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b40423          	sb	a1,-120(s0)
    800072c8:	42ebfc63          	bgeu	s7,a4,80007700 <__printf+0x678>
    800072cc:	02079793          	slli	a5,a5,0x20
    800072d0:	0207d793          	srli	a5,a5,0x20
    800072d4:	00fd8db3          	add	s11,s11,a5
    800072d8:	000dc703          	lbu	a4,0(s11)
    800072dc:	00a00793          	li	a5,10
    800072e0:	00900c93          	li	s9,9
    800072e4:	f8e404a3          	sb	a4,-119(s0)
    800072e8:	00065c63          	bgez	a2,80007300 <__printf+0x278>
    800072ec:	f9040713          	addi	a4,s0,-112
    800072f0:	00f70733          	add	a4,a4,a5
    800072f4:	02d00693          	li	a3,45
    800072f8:	fed70823          	sb	a3,-16(a4)
    800072fc:	00078c93          	mv	s9,a5
    80007300:	f8040793          	addi	a5,s0,-128
    80007304:	01978cb3          	add	s9,a5,s9
    80007308:	f7f40d13          	addi	s10,s0,-129
    8000730c:	000cc503          	lbu	a0,0(s9)
    80007310:	fffc8c93          	addi	s9,s9,-1
    80007314:	00000097          	auipc	ra,0x0
    80007318:	b90080e7          	jalr	-1136(ra) # 80006ea4 <consputc>
    8000731c:	ffac98e3          	bne	s9,s10,8000730c <__printf+0x284>
    80007320:	00094503          	lbu	a0,0(s2)
    80007324:	e00514e3          	bnez	a0,8000712c <__printf+0xa4>
    80007328:	1a0c1663          	bnez	s8,800074d4 <__printf+0x44c>
    8000732c:	08813083          	ld	ra,136(sp)
    80007330:	08013403          	ld	s0,128(sp)
    80007334:	07813483          	ld	s1,120(sp)
    80007338:	07013903          	ld	s2,112(sp)
    8000733c:	06813983          	ld	s3,104(sp)
    80007340:	06013a03          	ld	s4,96(sp)
    80007344:	05813a83          	ld	s5,88(sp)
    80007348:	05013b03          	ld	s6,80(sp)
    8000734c:	04813b83          	ld	s7,72(sp)
    80007350:	04013c03          	ld	s8,64(sp)
    80007354:	03813c83          	ld	s9,56(sp)
    80007358:	03013d03          	ld	s10,48(sp)
    8000735c:	02813d83          	ld	s11,40(sp)
    80007360:	0d010113          	addi	sp,sp,208
    80007364:	00008067          	ret
    80007368:	07300713          	li	a4,115
    8000736c:	1ce78a63          	beq	a5,a4,80007540 <__printf+0x4b8>
    80007370:	07800713          	li	a4,120
    80007374:	1ee79e63          	bne	a5,a4,80007570 <__printf+0x4e8>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	0007a703          	lw	a4,0(a5)
    80007380:	00878793          	addi	a5,a5,8
    80007384:	f6f43c23          	sd	a5,-136(s0)
    80007388:	28074263          	bltz	a4,8000760c <__printf+0x584>
    8000738c:	00002d97          	auipc	s11,0x2
    80007390:	11cd8d93          	addi	s11,s11,284 # 800094a8 <digits>
    80007394:	00f77793          	andi	a5,a4,15
    80007398:	00fd87b3          	add	a5,s11,a5
    8000739c:	0007c683          	lbu	a3,0(a5)
    800073a0:	00f00613          	li	a2,15
    800073a4:	0007079b          	sext.w	a5,a4
    800073a8:	f8d40023          	sb	a3,-128(s0)
    800073ac:	0047559b          	srliw	a1,a4,0x4
    800073b0:	0047569b          	srliw	a3,a4,0x4
    800073b4:	00000c93          	li	s9,0
    800073b8:	0ee65063          	bge	a2,a4,80007498 <__printf+0x410>
    800073bc:	00f6f693          	andi	a3,a3,15
    800073c0:	00dd86b3          	add	a3,s11,a3
    800073c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800073c8:	0087d79b          	srliw	a5,a5,0x8
    800073cc:	00100c93          	li	s9,1
    800073d0:	f8d400a3          	sb	a3,-127(s0)
    800073d4:	0cb67263          	bgeu	a2,a1,80007498 <__printf+0x410>
    800073d8:	00f7f693          	andi	a3,a5,15
    800073dc:	00dd86b3          	add	a3,s11,a3
    800073e0:	0006c583          	lbu	a1,0(a3)
    800073e4:	00f00613          	li	a2,15
    800073e8:	0047d69b          	srliw	a3,a5,0x4
    800073ec:	f8b40123          	sb	a1,-126(s0)
    800073f0:	0047d593          	srli	a1,a5,0x4
    800073f4:	28f67e63          	bgeu	a2,a5,80007690 <__printf+0x608>
    800073f8:	00f6f693          	andi	a3,a3,15
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c503          	lbu	a0,0(a3)
    80007404:	0087d813          	srli	a6,a5,0x8
    80007408:	0087d69b          	srliw	a3,a5,0x8
    8000740c:	f8a401a3          	sb	a0,-125(s0)
    80007410:	28b67663          	bgeu	a2,a1,8000769c <__printf+0x614>
    80007414:	00f6f693          	andi	a3,a3,15
    80007418:	00dd86b3          	add	a3,s11,a3
    8000741c:	0006c583          	lbu	a1,0(a3)
    80007420:	00c7d513          	srli	a0,a5,0xc
    80007424:	00c7d69b          	srliw	a3,a5,0xc
    80007428:	f8b40223          	sb	a1,-124(s0)
    8000742c:	29067a63          	bgeu	a2,a6,800076c0 <__printf+0x638>
    80007430:	00f6f693          	andi	a3,a3,15
    80007434:	00dd86b3          	add	a3,s11,a3
    80007438:	0006c583          	lbu	a1,0(a3)
    8000743c:	0107d813          	srli	a6,a5,0x10
    80007440:	0107d69b          	srliw	a3,a5,0x10
    80007444:	f8b402a3          	sb	a1,-123(s0)
    80007448:	28a67263          	bgeu	a2,a0,800076cc <__printf+0x644>
    8000744c:	00f6f693          	andi	a3,a3,15
    80007450:	00dd86b3          	add	a3,s11,a3
    80007454:	0006c683          	lbu	a3,0(a3)
    80007458:	0147d79b          	srliw	a5,a5,0x14
    8000745c:	f8d40323          	sb	a3,-122(s0)
    80007460:	21067663          	bgeu	a2,a6,8000766c <__printf+0x5e4>
    80007464:	02079793          	slli	a5,a5,0x20
    80007468:	0207d793          	srli	a5,a5,0x20
    8000746c:	00fd8db3          	add	s11,s11,a5
    80007470:	000dc683          	lbu	a3,0(s11)
    80007474:	00800793          	li	a5,8
    80007478:	00700c93          	li	s9,7
    8000747c:	f8d403a3          	sb	a3,-121(s0)
    80007480:	00075c63          	bgez	a4,80007498 <__printf+0x410>
    80007484:	f9040713          	addi	a4,s0,-112
    80007488:	00f70733          	add	a4,a4,a5
    8000748c:	02d00693          	li	a3,45
    80007490:	fed70823          	sb	a3,-16(a4)
    80007494:	00078c93          	mv	s9,a5
    80007498:	f8040793          	addi	a5,s0,-128
    8000749c:	01978cb3          	add	s9,a5,s9
    800074a0:	f7f40d13          	addi	s10,s0,-129
    800074a4:	000cc503          	lbu	a0,0(s9)
    800074a8:	fffc8c93          	addi	s9,s9,-1
    800074ac:	00000097          	auipc	ra,0x0
    800074b0:	9f8080e7          	jalr	-1544(ra) # 80006ea4 <consputc>
    800074b4:	ff9d18e3          	bne	s10,s9,800074a4 <__printf+0x41c>
    800074b8:	0100006f          	j	800074c8 <__printf+0x440>
    800074bc:	00000097          	auipc	ra,0x0
    800074c0:	9e8080e7          	jalr	-1560(ra) # 80006ea4 <consputc>
    800074c4:	000c8493          	mv	s1,s9
    800074c8:	00094503          	lbu	a0,0(s2)
    800074cc:	c60510e3          	bnez	a0,8000712c <__printf+0xa4>
    800074d0:	e40c0ee3          	beqz	s8,8000732c <__printf+0x2a4>
    800074d4:	00005517          	auipc	a0,0x5
    800074d8:	61c50513          	addi	a0,a0,1564 # 8000caf0 <pr>
    800074dc:	00001097          	auipc	ra,0x1
    800074e0:	94c080e7          	jalr	-1716(ra) # 80007e28 <release>
    800074e4:	e49ff06f          	j	8000732c <__printf+0x2a4>
    800074e8:	f7843783          	ld	a5,-136(s0)
    800074ec:	03000513          	li	a0,48
    800074f0:	01000d13          	li	s10,16
    800074f4:	00878713          	addi	a4,a5,8
    800074f8:	0007bc83          	ld	s9,0(a5)
    800074fc:	f6e43c23          	sd	a4,-136(s0)
    80007500:	00000097          	auipc	ra,0x0
    80007504:	9a4080e7          	jalr	-1628(ra) # 80006ea4 <consputc>
    80007508:	07800513          	li	a0,120
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	998080e7          	jalr	-1640(ra) # 80006ea4 <consputc>
    80007514:	00002d97          	auipc	s11,0x2
    80007518:	f94d8d93          	addi	s11,s11,-108 # 800094a8 <digits>
    8000751c:	03ccd793          	srli	a5,s9,0x3c
    80007520:	00fd87b3          	add	a5,s11,a5
    80007524:	0007c503          	lbu	a0,0(a5)
    80007528:	fffd0d1b          	addiw	s10,s10,-1
    8000752c:	004c9c93          	slli	s9,s9,0x4
    80007530:	00000097          	auipc	ra,0x0
    80007534:	974080e7          	jalr	-1676(ra) # 80006ea4 <consputc>
    80007538:	fe0d12e3          	bnez	s10,8000751c <__printf+0x494>
    8000753c:	f8dff06f          	j	800074c8 <__printf+0x440>
    80007540:	f7843783          	ld	a5,-136(s0)
    80007544:	0007bc83          	ld	s9,0(a5)
    80007548:	00878793          	addi	a5,a5,8
    8000754c:	f6f43c23          	sd	a5,-136(s0)
    80007550:	000c9a63          	bnez	s9,80007564 <__printf+0x4dc>
    80007554:	1080006f          	j	8000765c <__printf+0x5d4>
    80007558:	001c8c93          	addi	s9,s9,1
    8000755c:	00000097          	auipc	ra,0x0
    80007560:	948080e7          	jalr	-1720(ra) # 80006ea4 <consputc>
    80007564:	000cc503          	lbu	a0,0(s9)
    80007568:	fe0518e3          	bnez	a0,80007558 <__printf+0x4d0>
    8000756c:	f5dff06f          	j	800074c8 <__printf+0x440>
    80007570:	02500513          	li	a0,37
    80007574:	00000097          	auipc	ra,0x0
    80007578:	930080e7          	jalr	-1744(ra) # 80006ea4 <consputc>
    8000757c:	000c8513          	mv	a0,s9
    80007580:	00000097          	auipc	ra,0x0
    80007584:	924080e7          	jalr	-1756(ra) # 80006ea4 <consputc>
    80007588:	f41ff06f          	j	800074c8 <__printf+0x440>
    8000758c:	02500513          	li	a0,37
    80007590:	00000097          	auipc	ra,0x0
    80007594:	914080e7          	jalr	-1772(ra) # 80006ea4 <consputc>
    80007598:	f31ff06f          	j	800074c8 <__printf+0x440>
    8000759c:	00030513          	mv	a0,t1
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	7bc080e7          	jalr	1980(ra) # 80007d5c <acquire>
    800075a8:	b4dff06f          	j	800070f4 <__printf+0x6c>
    800075ac:	40c0053b          	negw	a0,a2
    800075b0:	00a00713          	li	a4,10
    800075b4:	02e576bb          	remuw	a3,a0,a4
    800075b8:	00002d97          	auipc	s11,0x2
    800075bc:	ef0d8d93          	addi	s11,s11,-272 # 800094a8 <digits>
    800075c0:	ff700593          	li	a1,-9
    800075c4:	02069693          	slli	a3,a3,0x20
    800075c8:	0206d693          	srli	a3,a3,0x20
    800075cc:	00dd86b3          	add	a3,s11,a3
    800075d0:	0006c683          	lbu	a3,0(a3)
    800075d4:	02e557bb          	divuw	a5,a0,a4
    800075d8:	f8d40023          	sb	a3,-128(s0)
    800075dc:	10b65e63          	bge	a2,a1,800076f8 <__printf+0x670>
    800075e0:	06300593          	li	a1,99
    800075e4:	02e7f6bb          	remuw	a3,a5,a4
    800075e8:	02069693          	slli	a3,a3,0x20
    800075ec:	0206d693          	srli	a3,a3,0x20
    800075f0:	00dd86b3          	add	a3,s11,a3
    800075f4:	0006c683          	lbu	a3,0(a3)
    800075f8:	02e7d73b          	divuw	a4,a5,a4
    800075fc:	00200793          	li	a5,2
    80007600:	f8d400a3          	sb	a3,-127(s0)
    80007604:	bca5ece3          	bltu	a1,a0,800071dc <__printf+0x154>
    80007608:	ce5ff06f          	j	800072ec <__printf+0x264>
    8000760c:	40e007bb          	negw	a5,a4
    80007610:	00002d97          	auipc	s11,0x2
    80007614:	e98d8d93          	addi	s11,s11,-360 # 800094a8 <digits>
    80007618:	00f7f693          	andi	a3,a5,15
    8000761c:	00dd86b3          	add	a3,s11,a3
    80007620:	0006c583          	lbu	a1,0(a3)
    80007624:	ff100613          	li	a2,-15
    80007628:	0047d69b          	srliw	a3,a5,0x4
    8000762c:	f8b40023          	sb	a1,-128(s0)
    80007630:	0047d59b          	srliw	a1,a5,0x4
    80007634:	0ac75e63          	bge	a4,a2,800076f0 <__printf+0x668>
    80007638:	00f6f693          	andi	a3,a3,15
    8000763c:	00dd86b3          	add	a3,s11,a3
    80007640:	0006c603          	lbu	a2,0(a3)
    80007644:	00f00693          	li	a3,15
    80007648:	0087d79b          	srliw	a5,a5,0x8
    8000764c:	f8c400a3          	sb	a2,-127(s0)
    80007650:	d8b6e4e3          	bltu	a3,a1,800073d8 <__printf+0x350>
    80007654:	00200793          	li	a5,2
    80007658:	e2dff06f          	j	80007484 <__printf+0x3fc>
    8000765c:	00002c97          	auipc	s9,0x2
    80007660:	e2cc8c93          	addi	s9,s9,-468 # 80009488 <CONSOLE_STATUS+0x478>
    80007664:	02800513          	li	a0,40
    80007668:	ef1ff06f          	j	80007558 <__printf+0x4d0>
    8000766c:	00700793          	li	a5,7
    80007670:	00600c93          	li	s9,6
    80007674:	e0dff06f          	j	80007480 <__printf+0x3f8>
    80007678:	00700793          	li	a5,7
    8000767c:	00600c93          	li	s9,6
    80007680:	c69ff06f          	j	800072e8 <__printf+0x260>
    80007684:	00300793          	li	a5,3
    80007688:	00200c93          	li	s9,2
    8000768c:	c5dff06f          	j	800072e8 <__printf+0x260>
    80007690:	00300793          	li	a5,3
    80007694:	00200c93          	li	s9,2
    80007698:	de9ff06f          	j	80007480 <__printf+0x3f8>
    8000769c:	00400793          	li	a5,4
    800076a0:	00300c93          	li	s9,3
    800076a4:	dddff06f          	j	80007480 <__printf+0x3f8>
    800076a8:	00400793          	li	a5,4
    800076ac:	00300c93          	li	s9,3
    800076b0:	c39ff06f          	j	800072e8 <__printf+0x260>
    800076b4:	00500793          	li	a5,5
    800076b8:	00400c93          	li	s9,4
    800076bc:	c2dff06f          	j	800072e8 <__printf+0x260>
    800076c0:	00500793          	li	a5,5
    800076c4:	00400c93          	li	s9,4
    800076c8:	db9ff06f          	j	80007480 <__printf+0x3f8>
    800076cc:	00600793          	li	a5,6
    800076d0:	00500c93          	li	s9,5
    800076d4:	dadff06f          	j	80007480 <__printf+0x3f8>
    800076d8:	00600793          	li	a5,6
    800076dc:	00500c93          	li	s9,5
    800076e0:	c09ff06f          	j	800072e8 <__printf+0x260>
    800076e4:	00800793          	li	a5,8
    800076e8:	00700c93          	li	s9,7
    800076ec:	bfdff06f          	j	800072e8 <__printf+0x260>
    800076f0:	00100793          	li	a5,1
    800076f4:	d91ff06f          	j	80007484 <__printf+0x3fc>
    800076f8:	00100793          	li	a5,1
    800076fc:	bf1ff06f          	j	800072ec <__printf+0x264>
    80007700:	00900793          	li	a5,9
    80007704:	00800c93          	li	s9,8
    80007708:	be1ff06f          	j	800072e8 <__printf+0x260>
    8000770c:	00002517          	auipc	a0,0x2
    80007710:	d8450513          	addi	a0,a0,-636 # 80009490 <CONSOLE_STATUS+0x480>
    80007714:	00000097          	auipc	ra,0x0
    80007718:	918080e7          	jalr	-1768(ra) # 8000702c <panic>

000000008000771c <printfinit>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00813823          	sd	s0,16(sp)
    80007724:	00913423          	sd	s1,8(sp)
    80007728:	00113c23          	sd	ra,24(sp)
    8000772c:	02010413          	addi	s0,sp,32
    80007730:	00005497          	auipc	s1,0x5
    80007734:	3c048493          	addi	s1,s1,960 # 8000caf0 <pr>
    80007738:	00048513          	mv	a0,s1
    8000773c:	00002597          	auipc	a1,0x2
    80007740:	d6458593          	addi	a1,a1,-668 # 800094a0 <CONSOLE_STATUS+0x490>
    80007744:	00000097          	auipc	ra,0x0
    80007748:	5f4080e7          	jalr	1524(ra) # 80007d38 <initlock>
    8000774c:	01813083          	ld	ra,24(sp)
    80007750:	01013403          	ld	s0,16(sp)
    80007754:	0004ac23          	sw	zero,24(s1)
    80007758:	00813483          	ld	s1,8(sp)
    8000775c:	02010113          	addi	sp,sp,32
    80007760:	00008067          	ret

0000000080007764 <uartinit>:
    80007764:	ff010113          	addi	sp,sp,-16
    80007768:	00813423          	sd	s0,8(sp)
    8000776c:	01010413          	addi	s0,sp,16
    80007770:	100007b7          	lui	a5,0x10000
    80007774:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007778:	f8000713          	li	a4,-128
    8000777c:	00e781a3          	sb	a4,3(a5)
    80007780:	00300713          	li	a4,3
    80007784:	00e78023          	sb	a4,0(a5)
    80007788:	000780a3          	sb	zero,1(a5)
    8000778c:	00e781a3          	sb	a4,3(a5)
    80007790:	00700693          	li	a3,7
    80007794:	00d78123          	sb	a3,2(a5)
    80007798:	00e780a3          	sb	a4,1(a5)
    8000779c:	00813403          	ld	s0,8(sp)
    800077a0:	01010113          	addi	sp,sp,16
    800077a4:	00008067          	ret

00000000800077a8 <uartputc>:
    800077a8:	00004797          	auipc	a5,0x4
    800077ac:	0607a783          	lw	a5,96(a5) # 8000b808 <panicked>
    800077b0:	00078463          	beqz	a5,800077b8 <uartputc+0x10>
    800077b4:	0000006f          	j	800077b4 <uartputc+0xc>
    800077b8:	fd010113          	addi	sp,sp,-48
    800077bc:	02813023          	sd	s0,32(sp)
    800077c0:	00913c23          	sd	s1,24(sp)
    800077c4:	01213823          	sd	s2,16(sp)
    800077c8:	01313423          	sd	s3,8(sp)
    800077cc:	02113423          	sd	ra,40(sp)
    800077d0:	03010413          	addi	s0,sp,48
    800077d4:	00004917          	auipc	s2,0x4
    800077d8:	03c90913          	addi	s2,s2,60 # 8000b810 <uart_tx_r>
    800077dc:	00093783          	ld	a5,0(s2)
    800077e0:	00004497          	auipc	s1,0x4
    800077e4:	03848493          	addi	s1,s1,56 # 8000b818 <uart_tx_w>
    800077e8:	0004b703          	ld	a4,0(s1)
    800077ec:	02078693          	addi	a3,a5,32
    800077f0:	00050993          	mv	s3,a0
    800077f4:	02e69c63          	bne	a3,a4,8000782c <uartputc+0x84>
    800077f8:	00001097          	auipc	ra,0x1
    800077fc:	834080e7          	jalr	-1996(ra) # 8000802c <push_on>
    80007800:	00093783          	ld	a5,0(s2)
    80007804:	0004b703          	ld	a4,0(s1)
    80007808:	02078793          	addi	a5,a5,32
    8000780c:	00e79463          	bne	a5,a4,80007814 <uartputc+0x6c>
    80007810:	0000006f          	j	80007810 <uartputc+0x68>
    80007814:	00001097          	auipc	ra,0x1
    80007818:	88c080e7          	jalr	-1908(ra) # 800080a0 <pop_on>
    8000781c:	00093783          	ld	a5,0(s2)
    80007820:	0004b703          	ld	a4,0(s1)
    80007824:	02078693          	addi	a3,a5,32
    80007828:	fce688e3          	beq	a3,a4,800077f8 <uartputc+0x50>
    8000782c:	01f77693          	andi	a3,a4,31
    80007830:	00005597          	auipc	a1,0x5
    80007834:	2e058593          	addi	a1,a1,736 # 8000cb10 <uart_tx_buf>
    80007838:	00d586b3          	add	a3,a1,a3
    8000783c:	00170713          	addi	a4,a4,1
    80007840:	01368023          	sb	s3,0(a3)
    80007844:	00e4b023          	sd	a4,0(s1)
    80007848:	10000637          	lui	a2,0x10000
    8000784c:	02f71063          	bne	a4,a5,8000786c <uartputc+0xc4>
    80007850:	0340006f          	j	80007884 <uartputc+0xdc>
    80007854:	00074703          	lbu	a4,0(a4)
    80007858:	00f93023          	sd	a5,0(s2)
    8000785c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	00f70e63          	beq	a4,a5,80007884 <uartputc+0xdc>
    8000786c:	00564683          	lbu	a3,5(a2)
    80007870:	01f7f713          	andi	a4,a5,31
    80007874:	00e58733          	add	a4,a1,a4
    80007878:	0206f693          	andi	a3,a3,32
    8000787c:	00178793          	addi	a5,a5,1
    80007880:	fc069ae3          	bnez	a3,80007854 <uartputc+0xac>
    80007884:	02813083          	ld	ra,40(sp)
    80007888:	02013403          	ld	s0,32(sp)
    8000788c:	01813483          	ld	s1,24(sp)
    80007890:	01013903          	ld	s2,16(sp)
    80007894:	00813983          	ld	s3,8(sp)
    80007898:	03010113          	addi	sp,sp,48
    8000789c:	00008067          	ret

00000000800078a0 <uartputc_sync>:
    800078a0:	ff010113          	addi	sp,sp,-16
    800078a4:	00813423          	sd	s0,8(sp)
    800078a8:	01010413          	addi	s0,sp,16
    800078ac:	00004717          	auipc	a4,0x4
    800078b0:	f5c72703          	lw	a4,-164(a4) # 8000b808 <panicked>
    800078b4:	02071663          	bnez	a4,800078e0 <uartputc_sync+0x40>
    800078b8:	00050793          	mv	a5,a0
    800078bc:	100006b7          	lui	a3,0x10000
    800078c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800078c4:	02077713          	andi	a4,a4,32
    800078c8:	fe070ce3          	beqz	a4,800078c0 <uartputc_sync+0x20>
    800078cc:	0ff7f793          	andi	a5,a5,255
    800078d0:	00f68023          	sb	a5,0(a3)
    800078d4:	00813403          	ld	s0,8(sp)
    800078d8:	01010113          	addi	sp,sp,16
    800078dc:	00008067          	ret
    800078e0:	0000006f          	j	800078e0 <uartputc_sync+0x40>

00000000800078e4 <uartstart>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813423          	sd	s0,8(sp)
    800078ec:	01010413          	addi	s0,sp,16
    800078f0:	00004617          	auipc	a2,0x4
    800078f4:	f2060613          	addi	a2,a2,-224 # 8000b810 <uart_tx_r>
    800078f8:	00004517          	auipc	a0,0x4
    800078fc:	f2050513          	addi	a0,a0,-224 # 8000b818 <uart_tx_w>
    80007900:	00063783          	ld	a5,0(a2)
    80007904:	00053703          	ld	a4,0(a0)
    80007908:	04f70263          	beq	a4,a5,8000794c <uartstart+0x68>
    8000790c:	100005b7          	lui	a1,0x10000
    80007910:	00005817          	auipc	a6,0x5
    80007914:	20080813          	addi	a6,a6,512 # 8000cb10 <uart_tx_buf>
    80007918:	01c0006f          	j	80007934 <uartstart+0x50>
    8000791c:	0006c703          	lbu	a4,0(a3)
    80007920:	00f63023          	sd	a5,0(a2)
    80007924:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007928:	00063783          	ld	a5,0(a2)
    8000792c:	00053703          	ld	a4,0(a0)
    80007930:	00f70e63          	beq	a4,a5,8000794c <uartstart+0x68>
    80007934:	01f7f713          	andi	a4,a5,31
    80007938:	00e806b3          	add	a3,a6,a4
    8000793c:	0055c703          	lbu	a4,5(a1)
    80007940:	00178793          	addi	a5,a5,1
    80007944:	02077713          	andi	a4,a4,32
    80007948:	fc071ae3          	bnez	a4,8000791c <uartstart+0x38>
    8000794c:	00813403          	ld	s0,8(sp)
    80007950:	01010113          	addi	sp,sp,16
    80007954:	00008067          	ret

0000000080007958 <uartgetc>:
    80007958:	ff010113          	addi	sp,sp,-16
    8000795c:	00813423          	sd	s0,8(sp)
    80007960:	01010413          	addi	s0,sp,16
    80007964:	10000737          	lui	a4,0x10000
    80007968:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000796c:	0017f793          	andi	a5,a5,1
    80007970:	00078c63          	beqz	a5,80007988 <uartgetc+0x30>
    80007974:	00074503          	lbu	a0,0(a4)
    80007978:	0ff57513          	andi	a0,a0,255
    8000797c:	00813403          	ld	s0,8(sp)
    80007980:	01010113          	addi	sp,sp,16
    80007984:	00008067          	ret
    80007988:	fff00513          	li	a0,-1
    8000798c:	ff1ff06f          	j	8000797c <uartgetc+0x24>

0000000080007990 <uartintr>:
    80007990:	100007b7          	lui	a5,0x10000
    80007994:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007998:	0017f793          	andi	a5,a5,1
    8000799c:	0a078463          	beqz	a5,80007a44 <uartintr+0xb4>
    800079a0:	fe010113          	addi	sp,sp,-32
    800079a4:	00813823          	sd	s0,16(sp)
    800079a8:	00913423          	sd	s1,8(sp)
    800079ac:	00113c23          	sd	ra,24(sp)
    800079b0:	02010413          	addi	s0,sp,32
    800079b4:	100004b7          	lui	s1,0x10000
    800079b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800079bc:	0ff57513          	andi	a0,a0,255
    800079c0:	fffff097          	auipc	ra,0xfffff
    800079c4:	534080e7          	jalr	1332(ra) # 80006ef4 <consoleintr>
    800079c8:	0054c783          	lbu	a5,5(s1)
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	fe0794e3          	bnez	a5,800079b8 <uartintr+0x28>
    800079d4:	00004617          	auipc	a2,0x4
    800079d8:	e3c60613          	addi	a2,a2,-452 # 8000b810 <uart_tx_r>
    800079dc:	00004517          	auipc	a0,0x4
    800079e0:	e3c50513          	addi	a0,a0,-452 # 8000b818 <uart_tx_w>
    800079e4:	00063783          	ld	a5,0(a2)
    800079e8:	00053703          	ld	a4,0(a0)
    800079ec:	04f70263          	beq	a4,a5,80007a30 <uartintr+0xa0>
    800079f0:	100005b7          	lui	a1,0x10000
    800079f4:	00005817          	auipc	a6,0x5
    800079f8:	11c80813          	addi	a6,a6,284 # 8000cb10 <uart_tx_buf>
    800079fc:	01c0006f          	j	80007a18 <uartintr+0x88>
    80007a00:	0006c703          	lbu	a4,0(a3)
    80007a04:	00f63023          	sd	a5,0(a2)
    80007a08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a0c:	00063783          	ld	a5,0(a2)
    80007a10:	00053703          	ld	a4,0(a0)
    80007a14:	00f70e63          	beq	a4,a5,80007a30 <uartintr+0xa0>
    80007a18:	01f7f713          	andi	a4,a5,31
    80007a1c:	00e806b3          	add	a3,a6,a4
    80007a20:	0055c703          	lbu	a4,5(a1)
    80007a24:	00178793          	addi	a5,a5,1
    80007a28:	02077713          	andi	a4,a4,32
    80007a2c:	fc071ae3          	bnez	a4,80007a00 <uartintr+0x70>
    80007a30:	01813083          	ld	ra,24(sp)
    80007a34:	01013403          	ld	s0,16(sp)
    80007a38:	00813483          	ld	s1,8(sp)
    80007a3c:	02010113          	addi	sp,sp,32
    80007a40:	00008067          	ret
    80007a44:	00004617          	auipc	a2,0x4
    80007a48:	dcc60613          	addi	a2,a2,-564 # 8000b810 <uart_tx_r>
    80007a4c:	00004517          	auipc	a0,0x4
    80007a50:	dcc50513          	addi	a0,a0,-564 # 8000b818 <uart_tx_w>
    80007a54:	00063783          	ld	a5,0(a2)
    80007a58:	00053703          	ld	a4,0(a0)
    80007a5c:	04f70263          	beq	a4,a5,80007aa0 <uartintr+0x110>
    80007a60:	100005b7          	lui	a1,0x10000
    80007a64:	00005817          	auipc	a6,0x5
    80007a68:	0ac80813          	addi	a6,a6,172 # 8000cb10 <uart_tx_buf>
    80007a6c:	01c0006f          	j	80007a88 <uartintr+0xf8>
    80007a70:	0006c703          	lbu	a4,0(a3)
    80007a74:	00f63023          	sd	a5,0(a2)
    80007a78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a7c:	00063783          	ld	a5,0(a2)
    80007a80:	00053703          	ld	a4,0(a0)
    80007a84:	02f70063          	beq	a4,a5,80007aa4 <uartintr+0x114>
    80007a88:	01f7f713          	andi	a4,a5,31
    80007a8c:	00e806b3          	add	a3,a6,a4
    80007a90:	0055c703          	lbu	a4,5(a1)
    80007a94:	00178793          	addi	a5,a5,1
    80007a98:	02077713          	andi	a4,a4,32
    80007a9c:	fc071ae3          	bnez	a4,80007a70 <uartintr+0xe0>
    80007aa0:	00008067          	ret
    80007aa4:	00008067          	ret

0000000080007aa8 <kinit>:
    80007aa8:	fc010113          	addi	sp,sp,-64
    80007aac:	02913423          	sd	s1,40(sp)
    80007ab0:	fffff7b7          	lui	a5,0xfffff
    80007ab4:	00006497          	auipc	s1,0x6
    80007ab8:	07b48493          	addi	s1,s1,123 # 8000db2f <end+0xfff>
    80007abc:	02813823          	sd	s0,48(sp)
    80007ac0:	01313c23          	sd	s3,24(sp)
    80007ac4:	00f4f4b3          	and	s1,s1,a5
    80007ac8:	02113c23          	sd	ra,56(sp)
    80007acc:	03213023          	sd	s2,32(sp)
    80007ad0:	01413823          	sd	s4,16(sp)
    80007ad4:	01513423          	sd	s5,8(sp)
    80007ad8:	04010413          	addi	s0,sp,64
    80007adc:	000017b7          	lui	a5,0x1
    80007ae0:	01100993          	li	s3,17
    80007ae4:	00f487b3          	add	a5,s1,a5
    80007ae8:	01b99993          	slli	s3,s3,0x1b
    80007aec:	06f9e063          	bltu	s3,a5,80007b4c <kinit+0xa4>
    80007af0:	00005a97          	auipc	s5,0x5
    80007af4:	040a8a93          	addi	s5,s5,64 # 8000cb30 <end>
    80007af8:	0754ec63          	bltu	s1,s5,80007b70 <kinit+0xc8>
    80007afc:	0734fa63          	bgeu	s1,s3,80007b70 <kinit+0xc8>
    80007b00:	00088a37          	lui	s4,0x88
    80007b04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b08:	00004917          	auipc	s2,0x4
    80007b0c:	d1890913          	addi	s2,s2,-744 # 8000b820 <kmem>
    80007b10:	00ca1a13          	slli	s4,s4,0xc
    80007b14:	0140006f          	j	80007b28 <kinit+0x80>
    80007b18:	000017b7          	lui	a5,0x1
    80007b1c:	00f484b3          	add	s1,s1,a5
    80007b20:	0554e863          	bltu	s1,s5,80007b70 <kinit+0xc8>
    80007b24:	0534f663          	bgeu	s1,s3,80007b70 <kinit+0xc8>
    80007b28:	00001637          	lui	a2,0x1
    80007b2c:	00100593          	li	a1,1
    80007b30:	00048513          	mv	a0,s1
    80007b34:	00000097          	auipc	ra,0x0
    80007b38:	5e4080e7          	jalr	1508(ra) # 80008118 <__memset>
    80007b3c:	00093783          	ld	a5,0(s2)
    80007b40:	00f4b023          	sd	a5,0(s1)
    80007b44:	00993023          	sd	s1,0(s2)
    80007b48:	fd4498e3          	bne	s1,s4,80007b18 <kinit+0x70>
    80007b4c:	03813083          	ld	ra,56(sp)
    80007b50:	03013403          	ld	s0,48(sp)
    80007b54:	02813483          	ld	s1,40(sp)
    80007b58:	02013903          	ld	s2,32(sp)
    80007b5c:	01813983          	ld	s3,24(sp)
    80007b60:	01013a03          	ld	s4,16(sp)
    80007b64:	00813a83          	ld	s5,8(sp)
    80007b68:	04010113          	addi	sp,sp,64
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	95050513          	addi	a0,a0,-1712 # 800094c0 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	4b4080e7          	jalr	1204(ra) # 8000702c <panic>

0000000080007b80 <freerange>:
    80007b80:	fc010113          	addi	sp,sp,-64
    80007b84:	000017b7          	lui	a5,0x1
    80007b88:	02913423          	sd	s1,40(sp)
    80007b8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007b90:	009504b3          	add	s1,a0,s1
    80007b94:	fffff537          	lui	a0,0xfffff
    80007b98:	02813823          	sd	s0,48(sp)
    80007b9c:	02113c23          	sd	ra,56(sp)
    80007ba0:	03213023          	sd	s2,32(sp)
    80007ba4:	01313c23          	sd	s3,24(sp)
    80007ba8:	01413823          	sd	s4,16(sp)
    80007bac:	01513423          	sd	s5,8(sp)
    80007bb0:	01613023          	sd	s6,0(sp)
    80007bb4:	04010413          	addi	s0,sp,64
    80007bb8:	00a4f4b3          	and	s1,s1,a0
    80007bbc:	00f487b3          	add	a5,s1,a5
    80007bc0:	06f5e463          	bltu	a1,a5,80007c28 <freerange+0xa8>
    80007bc4:	00005a97          	auipc	s5,0x5
    80007bc8:	f6ca8a93          	addi	s5,s5,-148 # 8000cb30 <end>
    80007bcc:	0954e263          	bltu	s1,s5,80007c50 <freerange+0xd0>
    80007bd0:	01100993          	li	s3,17
    80007bd4:	01b99993          	slli	s3,s3,0x1b
    80007bd8:	0734fc63          	bgeu	s1,s3,80007c50 <freerange+0xd0>
    80007bdc:	00058a13          	mv	s4,a1
    80007be0:	00004917          	auipc	s2,0x4
    80007be4:	c4090913          	addi	s2,s2,-960 # 8000b820 <kmem>
    80007be8:	00002b37          	lui	s6,0x2
    80007bec:	0140006f          	j	80007c00 <freerange+0x80>
    80007bf0:	000017b7          	lui	a5,0x1
    80007bf4:	00f484b3          	add	s1,s1,a5
    80007bf8:	0554ec63          	bltu	s1,s5,80007c50 <freerange+0xd0>
    80007bfc:	0534fa63          	bgeu	s1,s3,80007c50 <freerange+0xd0>
    80007c00:	00001637          	lui	a2,0x1
    80007c04:	00100593          	li	a1,1
    80007c08:	00048513          	mv	a0,s1
    80007c0c:	00000097          	auipc	ra,0x0
    80007c10:	50c080e7          	jalr	1292(ra) # 80008118 <__memset>
    80007c14:	00093703          	ld	a4,0(s2)
    80007c18:	016487b3          	add	a5,s1,s6
    80007c1c:	00e4b023          	sd	a4,0(s1)
    80007c20:	00993023          	sd	s1,0(s2)
    80007c24:	fcfa76e3          	bgeu	s4,a5,80007bf0 <freerange+0x70>
    80007c28:	03813083          	ld	ra,56(sp)
    80007c2c:	03013403          	ld	s0,48(sp)
    80007c30:	02813483          	ld	s1,40(sp)
    80007c34:	02013903          	ld	s2,32(sp)
    80007c38:	01813983          	ld	s3,24(sp)
    80007c3c:	01013a03          	ld	s4,16(sp)
    80007c40:	00813a83          	ld	s5,8(sp)
    80007c44:	00013b03          	ld	s6,0(sp)
    80007c48:	04010113          	addi	sp,sp,64
    80007c4c:	00008067          	ret
    80007c50:	00002517          	auipc	a0,0x2
    80007c54:	87050513          	addi	a0,a0,-1936 # 800094c0 <digits+0x18>
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	3d4080e7          	jalr	980(ra) # 8000702c <panic>

0000000080007c60 <kfree>:
    80007c60:	fe010113          	addi	sp,sp,-32
    80007c64:	00813823          	sd	s0,16(sp)
    80007c68:	00113c23          	sd	ra,24(sp)
    80007c6c:	00913423          	sd	s1,8(sp)
    80007c70:	02010413          	addi	s0,sp,32
    80007c74:	03451793          	slli	a5,a0,0x34
    80007c78:	04079c63          	bnez	a5,80007cd0 <kfree+0x70>
    80007c7c:	00005797          	auipc	a5,0x5
    80007c80:	eb478793          	addi	a5,a5,-332 # 8000cb30 <end>
    80007c84:	00050493          	mv	s1,a0
    80007c88:	04f56463          	bltu	a0,a5,80007cd0 <kfree+0x70>
    80007c8c:	01100793          	li	a5,17
    80007c90:	01b79793          	slli	a5,a5,0x1b
    80007c94:	02f57e63          	bgeu	a0,a5,80007cd0 <kfree+0x70>
    80007c98:	00001637          	lui	a2,0x1
    80007c9c:	00100593          	li	a1,1
    80007ca0:	00000097          	auipc	ra,0x0
    80007ca4:	478080e7          	jalr	1144(ra) # 80008118 <__memset>
    80007ca8:	00004797          	auipc	a5,0x4
    80007cac:	b7878793          	addi	a5,a5,-1160 # 8000b820 <kmem>
    80007cb0:	0007b703          	ld	a4,0(a5)
    80007cb4:	01813083          	ld	ra,24(sp)
    80007cb8:	01013403          	ld	s0,16(sp)
    80007cbc:	00e4b023          	sd	a4,0(s1)
    80007cc0:	0097b023          	sd	s1,0(a5)
    80007cc4:	00813483          	ld	s1,8(sp)
    80007cc8:	02010113          	addi	sp,sp,32
    80007ccc:	00008067          	ret
    80007cd0:	00001517          	auipc	a0,0x1
    80007cd4:	7f050513          	addi	a0,a0,2032 # 800094c0 <digits+0x18>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	354080e7          	jalr	852(ra) # 8000702c <panic>

0000000080007ce0 <kalloc>:
    80007ce0:	fe010113          	addi	sp,sp,-32
    80007ce4:	00813823          	sd	s0,16(sp)
    80007ce8:	00913423          	sd	s1,8(sp)
    80007cec:	00113c23          	sd	ra,24(sp)
    80007cf0:	02010413          	addi	s0,sp,32
    80007cf4:	00004797          	auipc	a5,0x4
    80007cf8:	b2c78793          	addi	a5,a5,-1236 # 8000b820 <kmem>
    80007cfc:	0007b483          	ld	s1,0(a5)
    80007d00:	02048063          	beqz	s1,80007d20 <kalloc+0x40>
    80007d04:	0004b703          	ld	a4,0(s1)
    80007d08:	00001637          	lui	a2,0x1
    80007d0c:	00500593          	li	a1,5
    80007d10:	00048513          	mv	a0,s1
    80007d14:	00e7b023          	sd	a4,0(a5)
    80007d18:	00000097          	auipc	ra,0x0
    80007d1c:	400080e7          	jalr	1024(ra) # 80008118 <__memset>
    80007d20:	01813083          	ld	ra,24(sp)
    80007d24:	01013403          	ld	s0,16(sp)
    80007d28:	00048513          	mv	a0,s1
    80007d2c:	00813483          	ld	s1,8(sp)
    80007d30:	02010113          	addi	sp,sp,32
    80007d34:	00008067          	ret

0000000080007d38 <initlock>:
    80007d38:	ff010113          	addi	sp,sp,-16
    80007d3c:	00813423          	sd	s0,8(sp)
    80007d40:	01010413          	addi	s0,sp,16
    80007d44:	00813403          	ld	s0,8(sp)
    80007d48:	00b53423          	sd	a1,8(a0)
    80007d4c:	00052023          	sw	zero,0(a0)
    80007d50:	00053823          	sd	zero,16(a0)
    80007d54:	01010113          	addi	sp,sp,16
    80007d58:	00008067          	ret

0000000080007d5c <acquire>:
    80007d5c:	fe010113          	addi	sp,sp,-32
    80007d60:	00813823          	sd	s0,16(sp)
    80007d64:	00913423          	sd	s1,8(sp)
    80007d68:	00113c23          	sd	ra,24(sp)
    80007d6c:	01213023          	sd	s2,0(sp)
    80007d70:	02010413          	addi	s0,sp,32
    80007d74:	00050493          	mv	s1,a0
    80007d78:	10002973          	csrr	s2,sstatus
    80007d7c:	100027f3          	csrr	a5,sstatus
    80007d80:	ffd7f793          	andi	a5,a5,-3
    80007d84:	10079073          	csrw	sstatus,a5
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	8e0080e7          	jalr	-1824(ra) # 80006668 <mycpu>
    80007d90:	07852783          	lw	a5,120(a0)
    80007d94:	06078e63          	beqz	a5,80007e10 <acquire+0xb4>
    80007d98:	fffff097          	auipc	ra,0xfffff
    80007d9c:	8d0080e7          	jalr	-1840(ra) # 80006668 <mycpu>
    80007da0:	07852783          	lw	a5,120(a0)
    80007da4:	0004a703          	lw	a4,0(s1)
    80007da8:	0017879b          	addiw	a5,a5,1
    80007dac:	06f52c23          	sw	a5,120(a0)
    80007db0:	04071063          	bnez	a4,80007df0 <acquire+0x94>
    80007db4:	00100713          	li	a4,1
    80007db8:	00070793          	mv	a5,a4
    80007dbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007dc0:	0007879b          	sext.w	a5,a5
    80007dc4:	fe079ae3          	bnez	a5,80007db8 <acquire+0x5c>
    80007dc8:	0ff0000f          	fence
    80007dcc:	fffff097          	auipc	ra,0xfffff
    80007dd0:	89c080e7          	jalr	-1892(ra) # 80006668 <mycpu>
    80007dd4:	01813083          	ld	ra,24(sp)
    80007dd8:	01013403          	ld	s0,16(sp)
    80007ddc:	00a4b823          	sd	a0,16(s1)
    80007de0:	00013903          	ld	s2,0(sp)
    80007de4:	00813483          	ld	s1,8(sp)
    80007de8:	02010113          	addi	sp,sp,32
    80007dec:	00008067          	ret
    80007df0:	0104b903          	ld	s2,16(s1)
    80007df4:	fffff097          	auipc	ra,0xfffff
    80007df8:	874080e7          	jalr	-1932(ra) # 80006668 <mycpu>
    80007dfc:	faa91ce3          	bne	s2,a0,80007db4 <acquire+0x58>
    80007e00:	00001517          	auipc	a0,0x1
    80007e04:	6c850513          	addi	a0,a0,1736 # 800094c8 <digits+0x20>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	224080e7          	jalr	548(ra) # 8000702c <panic>
    80007e10:	00195913          	srli	s2,s2,0x1
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	854080e7          	jalr	-1964(ra) # 80006668 <mycpu>
    80007e1c:	00197913          	andi	s2,s2,1
    80007e20:	07252e23          	sw	s2,124(a0)
    80007e24:	f75ff06f          	j	80007d98 <acquire+0x3c>

0000000080007e28 <release>:
    80007e28:	fe010113          	addi	sp,sp,-32
    80007e2c:	00813823          	sd	s0,16(sp)
    80007e30:	00113c23          	sd	ra,24(sp)
    80007e34:	00913423          	sd	s1,8(sp)
    80007e38:	01213023          	sd	s2,0(sp)
    80007e3c:	02010413          	addi	s0,sp,32
    80007e40:	00052783          	lw	a5,0(a0)
    80007e44:	00079a63          	bnez	a5,80007e58 <release+0x30>
    80007e48:	00001517          	auipc	a0,0x1
    80007e4c:	68850513          	addi	a0,a0,1672 # 800094d0 <digits+0x28>
    80007e50:	fffff097          	auipc	ra,0xfffff
    80007e54:	1dc080e7          	jalr	476(ra) # 8000702c <panic>
    80007e58:	01053903          	ld	s2,16(a0)
    80007e5c:	00050493          	mv	s1,a0
    80007e60:	fffff097          	auipc	ra,0xfffff
    80007e64:	808080e7          	jalr	-2040(ra) # 80006668 <mycpu>
    80007e68:	fea910e3          	bne	s2,a0,80007e48 <release+0x20>
    80007e6c:	0004b823          	sd	zero,16(s1)
    80007e70:	0ff0000f          	fence
    80007e74:	0f50000f          	fence	iorw,ow
    80007e78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007e7c:	ffffe097          	auipc	ra,0xffffe
    80007e80:	7ec080e7          	jalr	2028(ra) # 80006668 <mycpu>
    80007e84:	100027f3          	csrr	a5,sstatus
    80007e88:	0027f793          	andi	a5,a5,2
    80007e8c:	04079a63          	bnez	a5,80007ee0 <release+0xb8>
    80007e90:	07852783          	lw	a5,120(a0)
    80007e94:	02f05e63          	blez	a5,80007ed0 <release+0xa8>
    80007e98:	fff7871b          	addiw	a4,a5,-1
    80007e9c:	06e52c23          	sw	a4,120(a0)
    80007ea0:	00071c63          	bnez	a4,80007eb8 <release+0x90>
    80007ea4:	07c52783          	lw	a5,124(a0)
    80007ea8:	00078863          	beqz	a5,80007eb8 <release+0x90>
    80007eac:	100027f3          	csrr	a5,sstatus
    80007eb0:	0027e793          	ori	a5,a5,2
    80007eb4:	10079073          	csrw	sstatus,a5
    80007eb8:	01813083          	ld	ra,24(sp)
    80007ebc:	01013403          	ld	s0,16(sp)
    80007ec0:	00813483          	ld	s1,8(sp)
    80007ec4:	00013903          	ld	s2,0(sp)
    80007ec8:	02010113          	addi	sp,sp,32
    80007ecc:	00008067          	ret
    80007ed0:	00001517          	auipc	a0,0x1
    80007ed4:	62050513          	addi	a0,a0,1568 # 800094f0 <digits+0x48>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	154080e7          	jalr	340(ra) # 8000702c <panic>
    80007ee0:	00001517          	auipc	a0,0x1
    80007ee4:	5f850513          	addi	a0,a0,1528 # 800094d8 <digits+0x30>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	144080e7          	jalr	324(ra) # 8000702c <panic>

0000000080007ef0 <holding>:
    80007ef0:	00052783          	lw	a5,0(a0)
    80007ef4:	00079663          	bnez	a5,80007f00 <holding+0x10>
    80007ef8:	00000513          	li	a0,0
    80007efc:	00008067          	ret
    80007f00:	fe010113          	addi	sp,sp,-32
    80007f04:	00813823          	sd	s0,16(sp)
    80007f08:	00913423          	sd	s1,8(sp)
    80007f0c:	00113c23          	sd	ra,24(sp)
    80007f10:	02010413          	addi	s0,sp,32
    80007f14:	01053483          	ld	s1,16(a0)
    80007f18:	ffffe097          	auipc	ra,0xffffe
    80007f1c:	750080e7          	jalr	1872(ra) # 80006668 <mycpu>
    80007f20:	01813083          	ld	ra,24(sp)
    80007f24:	01013403          	ld	s0,16(sp)
    80007f28:	40a48533          	sub	a0,s1,a0
    80007f2c:	00153513          	seqz	a0,a0
    80007f30:	00813483          	ld	s1,8(sp)
    80007f34:	02010113          	addi	sp,sp,32
    80007f38:	00008067          	ret

0000000080007f3c <push_off>:
    80007f3c:	fe010113          	addi	sp,sp,-32
    80007f40:	00813823          	sd	s0,16(sp)
    80007f44:	00113c23          	sd	ra,24(sp)
    80007f48:	00913423          	sd	s1,8(sp)
    80007f4c:	02010413          	addi	s0,sp,32
    80007f50:	100024f3          	csrr	s1,sstatus
    80007f54:	100027f3          	csrr	a5,sstatus
    80007f58:	ffd7f793          	andi	a5,a5,-3
    80007f5c:	10079073          	csrw	sstatus,a5
    80007f60:	ffffe097          	auipc	ra,0xffffe
    80007f64:	708080e7          	jalr	1800(ra) # 80006668 <mycpu>
    80007f68:	07852783          	lw	a5,120(a0)
    80007f6c:	02078663          	beqz	a5,80007f98 <push_off+0x5c>
    80007f70:	ffffe097          	auipc	ra,0xffffe
    80007f74:	6f8080e7          	jalr	1784(ra) # 80006668 <mycpu>
    80007f78:	07852783          	lw	a5,120(a0)
    80007f7c:	01813083          	ld	ra,24(sp)
    80007f80:	01013403          	ld	s0,16(sp)
    80007f84:	0017879b          	addiw	a5,a5,1
    80007f88:	06f52c23          	sw	a5,120(a0)
    80007f8c:	00813483          	ld	s1,8(sp)
    80007f90:	02010113          	addi	sp,sp,32
    80007f94:	00008067          	ret
    80007f98:	0014d493          	srli	s1,s1,0x1
    80007f9c:	ffffe097          	auipc	ra,0xffffe
    80007fa0:	6cc080e7          	jalr	1740(ra) # 80006668 <mycpu>
    80007fa4:	0014f493          	andi	s1,s1,1
    80007fa8:	06952e23          	sw	s1,124(a0)
    80007fac:	fc5ff06f          	j	80007f70 <push_off+0x34>

0000000080007fb0 <pop_off>:
    80007fb0:	ff010113          	addi	sp,sp,-16
    80007fb4:	00813023          	sd	s0,0(sp)
    80007fb8:	00113423          	sd	ra,8(sp)
    80007fbc:	01010413          	addi	s0,sp,16
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	6a8080e7          	jalr	1704(ra) # 80006668 <mycpu>
    80007fc8:	100027f3          	csrr	a5,sstatus
    80007fcc:	0027f793          	andi	a5,a5,2
    80007fd0:	04079663          	bnez	a5,8000801c <pop_off+0x6c>
    80007fd4:	07852783          	lw	a5,120(a0)
    80007fd8:	02f05a63          	blez	a5,8000800c <pop_off+0x5c>
    80007fdc:	fff7871b          	addiw	a4,a5,-1
    80007fe0:	06e52c23          	sw	a4,120(a0)
    80007fe4:	00071c63          	bnez	a4,80007ffc <pop_off+0x4c>
    80007fe8:	07c52783          	lw	a5,124(a0)
    80007fec:	00078863          	beqz	a5,80007ffc <pop_off+0x4c>
    80007ff0:	100027f3          	csrr	a5,sstatus
    80007ff4:	0027e793          	ori	a5,a5,2
    80007ff8:	10079073          	csrw	sstatus,a5
    80007ffc:	00813083          	ld	ra,8(sp)
    80008000:	00013403          	ld	s0,0(sp)
    80008004:	01010113          	addi	sp,sp,16
    80008008:	00008067          	ret
    8000800c:	00001517          	auipc	a0,0x1
    80008010:	4e450513          	addi	a0,a0,1252 # 800094f0 <digits+0x48>
    80008014:	fffff097          	auipc	ra,0xfffff
    80008018:	018080e7          	jalr	24(ra) # 8000702c <panic>
    8000801c:	00001517          	auipc	a0,0x1
    80008020:	4bc50513          	addi	a0,a0,1212 # 800094d8 <digits+0x30>
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	008080e7          	jalr	8(ra) # 8000702c <panic>

000000008000802c <push_on>:
    8000802c:	fe010113          	addi	sp,sp,-32
    80008030:	00813823          	sd	s0,16(sp)
    80008034:	00113c23          	sd	ra,24(sp)
    80008038:	00913423          	sd	s1,8(sp)
    8000803c:	02010413          	addi	s0,sp,32
    80008040:	100024f3          	csrr	s1,sstatus
    80008044:	100027f3          	csrr	a5,sstatus
    80008048:	0027e793          	ori	a5,a5,2
    8000804c:	10079073          	csrw	sstatus,a5
    80008050:	ffffe097          	auipc	ra,0xffffe
    80008054:	618080e7          	jalr	1560(ra) # 80006668 <mycpu>
    80008058:	07852783          	lw	a5,120(a0)
    8000805c:	02078663          	beqz	a5,80008088 <push_on+0x5c>
    80008060:	ffffe097          	auipc	ra,0xffffe
    80008064:	608080e7          	jalr	1544(ra) # 80006668 <mycpu>
    80008068:	07852783          	lw	a5,120(a0)
    8000806c:	01813083          	ld	ra,24(sp)
    80008070:	01013403          	ld	s0,16(sp)
    80008074:	0017879b          	addiw	a5,a5,1
    80008078:	06f52c23          	sw	a5,120(a0)
    8000807c:	00813483          	ld	s1,8(sp)
    80008080:	02010113          	addi	sp,sp,32
    80008084:	00008067          	ret
    80008088:	0014d493          	srli	s1,s1,0x1
    8000808c:	ffffe097          	auipc	ra,0xffffe
    80008090:	5dc080e7          	jalr	1500(ra) # 80006668 <mycpu>
    80008094:	0014f493          	andi	s1,s1,1
    80008098:	06952e23          	sw	s1,124(a0)
    8000809c:	fc5ff06f          	j	80008060 <push_on+0x34>

00000000800080a0 <pop_on>:
    800080a0:	ff010113          	addi	sp,sp,-16
    800080a4:	00813023          	sd	s0,0(sp)
    800080a8:	00113423          	sd	ra,8(sp)
    800080ac:	01010413          	addi	s0,sp,16
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	5b8080e7          	jalr	1464(ra) # 80006668 <mycpu>
    800080b8:	100027f3          	csrr	a5,sstatus
    800080bc:	0027f793          	andi	a5,a5,2
    800080c0:	04078463          	beqz	a5,80008108 <pop_on+0x68>
    800080c4:	07852783          	lw	a5,120(a0)
    800080c8:	02f05863          	blez	a5,800080f8 <pop_on+0x58>
    800080cc:	fff7879b          	addiw	a5,a5,-1
    800080d0:	06f52c23          	sw	a5,120(a0)
    800080d4:	07853783          	ld	a5,120(a0)
    800080d8:	00079863          	bnez	a5,800080e8 <pop_on+0x48>
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	ffd7f793          	andi	a5,a5,-3
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	00813083          	ld	ra,8(sp)
    800080ec:	00013403          	ld	s0,0(sp)
    800080f0:	01010113          	addi	sp,sp,16
    800080f4:	00008067          	ret
    800080f8:	00001517          	auipc	a0,0x1
    800080fc:	42050513          	addi	a0,a0,1056 # 80009518 <digits+0x70>
    80008100:	fffff097          	auipc	ra,0xfffff
    80008104:	f2c080e7          	jalr	-212(ra) # 8000702c <panic>
    80008108:	00001517          	auipc	a0,0x1
    8000810c:	3f050513          	addi	a0,a0,1008 # 800094f8 <digits+0x50>
    80008110:	fffff097          	auipc	ra,0xfffff
    80008114:	f1c080e7          	jalr	-228(ra) # 8000702c <panic>

0000000080008118 <__memset>:
    80008118:	ff010113          	addi	sp,sp,-16
    8000811c:	00813423          	sd	s0,8(sp)
    80008120:	01010413          	addi	s0,sp,16
    80008124:	1a060e63          	beqz	a2,800082e0 <__memset+0x1c8>
    80008128:	40a007b3          	neg	a5,a0
    8000812c:	0077f793          	andi	a5,a5,7
    80008130:	00778693          	addi	a3,a5,7
    80008134:	00b00813          	li	a6,11
    80008138:	0ff5f593          	andi	a1,a1,255
    8000813c:	fff6071b          	addiw	a4,a2,-1
    80008140:	1b06e663          	bltu	a3,a6,800082ec <__memset+0x1d4>
    80008144:	1cd76463          	bltu	a4,a3,8000830c <__memset+0x1f4>
    80008148:	1a078e63          	beqz	a5,80008304 <__memset+0x1ec>
    8000814c:	00b50023          	sb	a1,0(a0)
    80008150:	00100713          	li	a4,1
    80008154:	1ae78463          	beq	a5,a4,800082fc <__memset+0x1e4>
    80008158:	00b500a3          	sb	a1,1(a0)
    8000815c:	00200713          	li	a4,2
    80008160:	1ae78a63          	beq	a5,a4,80008314 <__memset+0x1fc>
    80008164:	00b50123          	sb	a1,2(a0)
    80008168:	00300713          	li	a4,3
    8000816c:	18e78463          	beq	a5,a4,800082f4 <__memset+0x1dc>
    80008170:	00b501a3          	sb	a1,3(a0)
    80008174:	00400713          	li	a4,4
    80008178:	1ae78263          	beq	a5,a4,8000831c <__memset+0x204>
    8000817c:	00b50223          	sb	a1,4(a0)
    80008180:	00500713          	li	a4,5
    80008184:	1ae78063          	beq	a5,a4,80008324 <__memset+0x20c>
    80008188:	00b502a3          	sb	a1,5(a0)
    8000818c:	00700713          	li	a4,7
    80008190:	18e79e63          	bne	a5,a4,8000832c <__memset+0x214>
    80008194:	00b50323          	sb	a1,6(a0)
    80008198:	00700e93          	li	t4,7
    8000819c:	00859713          	slli	a4,a1,0x8
    800081a0:	00e5e733          	or	a4,a1,a4
    800081a4:	01059e13          	slli	t3,a1,0x10
    800081a8:	01c76e33          	or	t3,a4,t3
    800081ac:	01859313          	slli	t1,a1,0x18
    800081b0:	006e6333          	or	t1,t3,t1
    800081b4:	02059893          	slli	a7,a1,0x20
    800081b8:	40f60e3b          	subw	t3,a2,a5
    800081bc:	011368b3          	or	a7,t1,a7
    800081c0:	02859813          	slli	a6,a1,0x28
    800081c4:	0108e833          	or	a6,a7,a6
    800081c8:	03059693          	slli	a3,a1,0x30
    800081cc:	003e589b          	srliw	a7,t3,0x3
    800081d0:	00d866b3          	or	a3,a6,a3
    800081d4:	03859713          	slli	a4,a1,0x38
    800081d8:	00389813          	slli	a6,a7,0x3
    800081dc:	00f507b3          	add	a5,a0,a5
    800081e0:	00e6e733          	or	a4,a3,a4
    800081e4:	000e089b          	sext.w	a7,t3
    800081e8:	00f806b3          	add	a3,a6,a5
    800081ec:	00e7b023          	sd	a4,0(a5)
    800081f0:	00878793          	addi	a5,a5,8
    800081f4:	fed79ce3          	bne	a5,a3,800081ec <__memset+0xd4>
    800081f8:	ff8e7793          	andi	a5,t3,-8
    800081fc:	0007871b          	sext.w	a4,a5
    80008200:	01d787bb          	addw	a5,a5,t4
    80008204:	0ce88e63          	beq	a7,a4,800082e0 <__memset+0x1c8>
    80008208:	00f50733          	add	a4,a0,a5
    8000820c:	00b70023          	sb	a1,0(a4)
    80008210:	0017871b          	addiw	a4,a5,1
    80008214:	0cc77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008218:	00e50733          	add	a4,a0,a4
    8000821c:	00b70023          	sb	a1,0(a4)
    80008220:	0027871b          	addiw	a4,a5,2
    80008224:	0ac77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008228:	00e50733          	add	a4,a0,a4
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	0037871b          	addiw	a4,a5,3
    80008234:	0ac77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	0047871b          	addiw	a4,a5,4
    80008244:	08c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	0057871b          	addiw	a4,a5,5
    80008254:	08c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0067871b          	addiw	a4,a5,6
    80008264:	06c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0077871b          	addiw	a4,a5,7
    80008274:	06c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0087871b          	addiw	a4,a5,8
    80008284:	04c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0097871b          	addiw	a4,a5,9
    80008294:	04c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	00a7871b          	addiw	a4,a5,10
    800082a4:	02c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	00b7871b          	addiw	a4,a5,11
    800082b4:	02c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	00c7871b          	addiw	a4,a5,12
    800082c4:	00c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	00d7879b          	addiw	a5,a5,13
    800082d4:	00c7f663          	bgeu	a5,a2,800082e0 <__memset+0x1c8>
    800082d8:	00f507b3          	add	a5,a0,a5
    800082dc:	00b78023          	sb	a1,0(a5)
    800082e0:	00813403          	ld	s0,8(sp)
    800082e4:	01010113          	addi	sp,sp,16
    800082e8:	00008067          	ret
    800082ec:	00b00693          	li	a3,11
    800082f0:	e55ff06f          	j	80008144 <__memset+0x2c>
    800082f4:	00300e93          	li	t4,3
    800082f8:	ea5ff06f          	j	8000819c <__memset+0x84>
    800082fc:	00100e93          	li	t4,1
    80008300:	e9dff06f          	j	8000819c <__memset+0x84>
    80008304:	00000e93          	li	t4,0
    80008308:	e95ff06f          	j	8000819c <__memset+0x84>
    8000830c:	00000793          	li	a5,0
    80008310:	ef9ff06f          	j	80008208 <__memset+0xf0>
    80008314:	00200e93          	li	t4,2
    80008318:	e85ff06f          	j	8000819c <__memset+0x84>
    8000831c:	00400e93          	li	t4,4
    80008320:	e7dff06f          	j	8000819c <__memset+0x84>
    80008324:	00500e93          	li	t4,5
    80008328:	e75ff06f          	j	8000819c <__memset+0x84>
    8000832c:	00600e93          	li	t4,6
    80008330:	e6dff06f          	j	8000819c <__memset+0x84>

0000000080008334 <__memmove>:
    80008334:	ff010113          	addi	sp,sp,-16
    80008338:	00813423          	sd	s0,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	0e060863          	beqz	a2,80008430 <__memmove+0xfc>
    80008344:	fff6069b          	addiw	a3,a2,-1
    80008348:	0006881b          	sext.w	a6,a3
    8000834c:	0ea5e863          	bltu	a1,a0,8000843c <__memmove+0x108>
    80008350:	00758713          	addi	a4,a1,7
    80008354:	00a5e7b3          	or	a5,a1,a0
    80008358:	40a70733          	sub	a4,a4,a0
    8000835c:	0077f793          	andi	a5,a5,7
    80008360:	00f73713          	sltiu	a4,a4,15
    80008364:	00174713          	xori	a4,a4,1
    80008368:	0017b793          	seqz	a5,a5
    8000836c:	00e7f7b3          	and	a5,a5,a4
    80008370:	10078863          	beqz	a5,80008480 <__memmove+0x14c>
    80008374:	00900793          	li	a5,9
    80008378:	1107f463          	bgeu	a5,a6,80008480 <__memmove+0x14c>
    8000837c:	0036581b          	srliw	a6,a2,0x3
    80008380:	fff8081b          	addiw	a6,a6,-1
    80008384:	02081813          	slli	a6,a6,0x20
    80008388:	01d85893          	srli	a7,a6,0x1d
    8000838c:	00858813          	addi	a6,a1,8
    80008390:	00058793          	mv	a5,a1
    80008394:	00050713          	mv	a4,a0
    80008398:	01088833          	add	a6,a7,a6
    8000839c:	0007b883          	ld	a7,0(a5)
    800083a0:	00878793          	addi	a5,a5,8
    800083a4:	00870713          	addi	a4,a4,8
    800083a8:	ff173c23          	sd	a7,-8(a4)
    800083ac:	ff0798e3          	bne	a5,a6,8000839c <__memmove+0x68>
    800083b0:	ff867713          	andi	a4,a2,-8
    800083b4:	02071793          	slli	a5,a4,0x20
    800083b8:	0207d793          	srli	a5,a5,0x20
    800083bc:	00f585b3          	add	a1,a1,a5
    800083c0:	40e686bb          	subw	a3,a3,a4
    800083c4:	00f507b3          	add	a5,a0,a5
    800083c8:	06e60463          	beq	a2,a4,80008430 <__memmove+0xfc>
    800083cc:	0005c703          	lbu	a4,0(a1)
    800083d0:	00e78023          	sb	a4,0(a5)
    800083d4:	04068e63          	beqz	a3,80008430 <__memmove+0xfc>
    800083d8:	0015c603          	lbu	a2,1(a1)
    800083dc:	00100713          	li	a4,1
    800083e0:	00c780a3          	sb	a2,1(a5)
    800083e4:	04e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    800083e8:	0025c603          	lbu	a2,2(a1)
    800083ec:	00200713          	li	a4,2
    800083f0:	00c78123          	sb	a2,2(a5)
    800083f4:	02e68e63          	beq	a3,a4,80008430 <__memmove+0xfc>
    800083f8:	0035c603          	lbu	a2,3(a1)
    800083fc:	00300713          	li	a4,3
    80008400:	00c781a3          	sb	a2,3(a5)
    80008404:	02e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008408:	0045c603          	lbu	a2,4(a1)
    8000840c:	00400713          	li	a4,4
    80008410:	00c78223          	sb	a2,4(a5)
    80008414:	00e68e63          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008418:	0055c603          	lbu	a2,5(a1)
    8000841c:	00500713          	li	a4,5
    80008420:	00c782a3          	sb	a2,5(a5)
    80008424:	00e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008428:	0065c703          	lbu	a4,6(a1)
    8000842c:	00e78323          	sb	a4,6(a5)
    80008430:	00813403          	ld	s0,8(sp)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret
    8000843c:	02061713          	slli	a4,a2,0x20
    80008440:	02075713          	srli	a4,a4,0x20
    80008444:	00e587b3          	add	a5,a1,a4
    80008448:	f0f574e3          	bgeu	a0,a5,80008350 <__memmove+0x1c>
    8000844c:	02069613          	slli	a2,a3,0x20
    80008450:	02065613          	srli	a2,a2,0x20
    80008454:	fff64613          	not	a2,a2
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00c78633          	add	a2,a5,a2
    80008460:	fff7c683          	lbu	a3,-1(a5)
    80008464:	fff78793          	addi	a5,a5,-1
    80008468:	fff70713          	addi	a4,a4,-1
    8000846c:	00d70023          	sb	a3,0(a4)
    80008470:	fec798e3          	bne	a5,a2,80008460 <__memmove+0x12c>
    80008474:	00813403          	ld	s0,8(sp)
    80008478:	01010113          	addi	sp,sp,16
    8000847c:	00008067          	ret
    80008480:	02069713          	slli	a4,a3,0x20
    80008484:	02075713          	srli	a4,a4,0x20
    80008488:	00170713          	addi	a4,a4,1
    8000848c:	00e50733          	add	a4,a0,a4
    80008490:	00050793          	mv	a5,a0
    80008494:	0005c683          	lbu	a3,0(a1)
    80008498:	00178793          	addi	a5,a5,1
    8000849c:	00158593          	addi	a1,a1,1
    800084a0:	fed78fa3          	sb	a3,-1(a5)
    800084a4:	fee798e3          	bne	a5,a4,80008494 <__memmove+0x160>
    800084a8:	f89ff06f          	j	80008430 <__memmove+0xfc>

00000000800084ac <__putc>:
    800084ac:	fe010113          	addi	sp,sp,-32
    800084b0:	00813823          	sd	s0,16(sp)
    800084b4:	00113c23          	sd	ra,24(sp)
    800084b8:	02010413          	addi	s0,sp,32
    800084bc:	00050793          	mv	a5,a0
    800084c0:	fef40593          	addi	a1,s0,-17
    800084c4:	00100613          	li	a2,1
    800084c8:	00000513          	li	a0,0
    800084cc:	fef407a3          	sb	a5,-17(s0)
    800084d0:	fffff097          	auipc	ra,0xfffff
    800084d4:	b3c080e7          	jalr	-1220(ra) # 8000700c <console_write>
    800084d8:	01813083          	ld	ra,24(sp)
    800084dc:	01013403          	ld	s0,16(sp)
    800084e0:	02010113          	addi	sp,sp,32
    800084e4:	00008067          	ret

00000000800084e8 <__getc>:
    800084e8:	fe010113          	addi	sp,sp,-32
    800084ec:	00813823          	sd	s0,16(sp)
    800084f0:	00113c23          	sd	ra,24(sp)
    800084f4:	02010413          	addi	s0,sp,32
    800084f8:	fe840593          	addi	a1,s0,-24
    800084fc:	00100613          	li	a2,1
    80008500:	00000513          	li	a0,0
    80008504:	fffff097          	auipc	ra,0xfffff
    80008508:	ae8080e7          	jalr	-1304(ra) # 80006fec <console_read>
    8000850c:	fe844503          	lbu	a0,-24(s0)
    80008510:	01813083          	ld	ra,24(sp)
    80008514:	01013403          	ld	s0,16(sp)
    80008518:	02010113          	addi	sp,sp,32
    8000851c:	00008067          	ret

0000000080008520 <console_handler>:
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	00913423          	sd	s1,8(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	14202773          	csrr	a4,scause
    80008538:	100027f3          	csrr	a5,sstatus
    8000853c:	0027f793          	andi	a5,a5,2
    80008540:	06079e63          	bnez	a5,800085bc <console_handler+0x9c>
    80008544:	00074c63          	bltz	a4,8000855c <console_handler+0x3c>
    80008548:	01813083          	ld	ra,24(sp)
    8000854c:	01013403          	ld	s0,16(sp)
    80008550:	00813483          	ld	s1,8(sp)
    80008554:	02010113          	addi	sp,sp,32
    80008558:	00008067          	ret
    8000855c:	0ff77713          	andi	a4,a4,255
    80008560:	00900793          	li	a5,9
    80008564:	fef712e3          	bne	a4,a5,80008548 <console_handler+0x28>
    80008568:	ffffe097          	auipc	ra,0xffffe
    8000856c:	6dc080e7          	jalr	1756(ra) # 80006c44 <plic_claim>
    80008570:	00a00793          	li	a5,10
    80008574:	00050493          	mv	s1,a0
    80008578:	02f50c63          	beq	a0,a5,800085b0 <console_handler+0x90>
    8000857c:	fc0506e3          	beqz	a0,80008548 <console_handler+0x28>
    80008580:	00050593          	mv	a1,a0
    80008584:	00001517          	auipc	a0,0x1
    80008588:	e9c50513          	addi	a0,a0,-356 # 80009420 <CONSOLE_STATUS+0x410>
    8000858c:	fffff097          	auipc	ra,0xfffff
    80008590:	afc080e7          	jalr	-1284(ra) # 80007088 <__printf>
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	01813083          	ld	ra,24(sp)
    8000859c:	00048513          	mv	a0,s1
    800085a0:	00813483          	ld	s1,8(sp)
    800085a4:	02010113          	addi	sp,sp,32
    800085a8:	ffffe317          	auipc	t1,0xffffe
    800085ac:	6d430067          	jr	1748(t1) # 80006c7c <plic_complete>
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	3e0080e7          	jalr	992(ra) # 80007990 <uartintr>
    800085b8:	fddff06f          	j	80008594 <console_handler+0x74>
    800085bc:	00001517          	auipc	a0,0x1
    800085c0:	f6450513          	addi	a0,a0,-156 # 80009520 <digits+0x78>
    800085c4:	fffff097          	auipc	ra,0xfffff
    800085c8:	a68080e7          	jalr	-1432(ra) # 8000702c <panic>
	...
