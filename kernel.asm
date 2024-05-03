
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7e013103          	ld	sp,2016(sp) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2b8060ef          	jal	ra,800062d4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV16handle_interruptEv>:
.global _ZN5RiscV16handle_interruptEv
.type _ZN5RiscV16handle_interruptEv, @function
_ZN5RiscV16handle_interruptEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00213823          	sd	sp,16(sp)
    80001008:	00313c23          	sd	gp,24(sp)
    8000100c:	02413023          	sd	tp,32(sp)
    80001010:	02513423          	sd	t0,40(sp)
    80001014:	02613823          	sd	t1,48(sp)
    80001018:	02713c23          	sd	t2,56(sp)
    8000101c:	04813023          	sd	s0,64(sp)
    80001020:	04913423          	sd	s1,72(sp)
    80001024:	04a13823          	sd	a0,80(sp)
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
    80001088:	0b9010ef          	jal	ra,80002940 <_ZN5RiscV22handle_supervisor_trapEv>

    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05013503          	ld	a0,80(sp)
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
    addi sp, sp, 256
    80001104:	10010113          	addi	sp,sp,256
    80001108:	10200073          	sret

000000008000110c <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    8000110c:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001110:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001114:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001118:	0085b103          	ld	sp,8(a1)

    8000111c:	00008067          	ret

0000000080001120 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001120:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001124:	00b29a63          	bne	t0,a1,80001138 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001128:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000112c:	fe029ae3          	bnez	t0,80001120 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001130:	00000513          	li	a0,0
    jr ra                  # Return.
    80001134:	00008067          	ret

0000000080001138 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001138:	00100513          	li	a0,1
    8000113c:	00008067          	ret

0000000080001140 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001140:	ff010113          	addi	sp,sp,-16
    80001144:	00813423          	sd	s0,8(sp)
    80001148:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    8000114c:	00000073          	ecall
}
    80001150:	00813403          	ld	s0,8(sp)
    80001154:	01010113          	addi	sp,sp,16
    80001158:	00008067          	ret

000000008000115c <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    8000115c:	04050663          	beqz	a0,800011a8 <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    80001160:	ff010113          	addi	sp,sp,-16
    80001164:	00113423          	sd	ra,8(sp)
    80001168:	00813023          	sd	s0,0(sp)
    8000116c:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    80001170:	00001097          	auipc	ra,0x1
    80001174:	52c080e7          	jalr	1324(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001178:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    8000117c:	00000713          	li	a4,0
    80001180:	00000693          	li	a3,0
    80001184:	00000613          	li	a2,0
    80001188:	00100513          	li	a0,1
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	fb4080e7          	jalr	-76(ra) # 80001140 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001194:	00050513          	mv	a0,a0
    return (void*) addr;
}
    80001198:	00813083          	ld	ra,8(sp)
    8000119c:	00013403          	ld	s0,0(sp)
    800011a0:	01010113          	addi	sp,sp,16
    800011a4:	00008067          	ret
    if (size == 0) return nullptr;
    800011a8:	00000513          	li	a0,0
}
    800011ac:	00008067          	ret

00000000800011b0 <_Z8mem_freePv>:

int mem_free (void* addr) {
    800011b0:	fe010113          	addi	sp,sp,-32
    800011b4:	00113c23          	sd	ra,24(sp)
    800011b8:	00813823          	sd	s0,16(sp)
    800011bc:	02010413          	addi	s0,sp,32
    800011c0:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800011c4:	00000713          	li	a4,0
    800011c8:	00000693          	li	a3,0
    800011cc:	00000613          	li	a2,0
    800011d0:	00200513          	li	a0,2
    800011d4:	00000097          	auipc	ra,0x0
    800011d8:	f6c080e7          	jalr	-148(ra) # 80001140 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800011dc:	00050793          	mv	a5,a0
    800011e0:	fef42623          	sw	a5,-20(s0)
    return success;
    800011e4:	fec42503          	lw	a0,-20(s0)
}
    800011e8:	0005051b          	sext.w	a0,a0
    800011ec:	01813083          	ld	ra,24(sp)
    800011f0:	01013403          	ld	s0,16(sp)
    800011f4:	02010113          	addi	sp,sp,32
    800011f8:	00008067          	ret

00000000800011fc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800011fc:	fc010113          	addi	sp,sp,-64
    80001200:	02113c23          	sd	ra,56(sp)
    80001204:	02813823          	sd	s0,48(sp)
    80001208:	02913423          	sd	s1,40(sp)
    8000120c:	03213023          	sd	s2,32(sp)
    80001210:	01313c23          	sd	s3,24(sp)
    80001214:	04010413          	addi	s0,sp,64
    80001218:	00050913          	mv	s2,a0
    8000121c:	00058493          	mv	s1,a1
    80001220:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001224:	04058c63          	beqz	a1,8000127c <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001228:	00001537          	lui	a0,0x1
    8000122c:	00000097          	auipc	ra,0x0
    80001230:	f30080e7          	jalr	-208(ra) # 8000115c <_Z9mem_allocm>
    80001234:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001238:	00098693          	mv	a3,s3
    8000123c:	00048613          	mv	a2,s1
    80001240:	00090593          	mv	a1,s2
    80001244:	01100513          	li	a0,17
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	ef8080e7          	jalr	-264(ra) # 80001140 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001250:	00050793          	mv	a5,a0
    80001254:	fcf42623          	sw	a5,-52(s0)
    return status;
    80001258:	fcc42503          	lw	a0,-52(s0)
}
    8000125c:	0005051b          	sext.w	a0,a0
    80001260:	03813083          	ld	ra,56(sp)
    80001264:	03013403          	ld	s0,48(sp)
    80001268:	02813483          	ld	s1,40(sp)
    8000126c:	02013903          	ld	s2,32(sp)
    80001270:	01813983          	ld	s3,24(sp)
    80001274:	04010113          	addi	sp,sp,64
    80001278:	00008067          	ret
    void* stack_space = nullptr;
    8000127c:	00000713          	li	a4,0
    80001280:	fb9ff06f          	j	80001238 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001284 <_Z11thread_exitv>:

int thread_exit () {
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001294:	00000713          	li	a4,0
    80001298:	00000693          	li	a3,0
    8000129c:	00000613          	li	a2,0
    800012a0:	00000593          	li	a1,0
    800012a4:	01200513          	li	a0,18
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	e98080e7          	jalr	-360(ra) # 80001140 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800012b0:	00050793          	mv	a5,a0
    800012b4:	fef42623          	sw	a5,-20(s0)
    return status;
    800012b8:	fec42503          	lw	a0,-20(s0)
}
    800012bc:	0005051b          	sext.w	a0,a0
    800012c0:	01813083          	ld	ra,24(sp)
    800012c4:	01013403          	ld	s0,16(sp)
    800012c8:	02010113          	addi	sp,sp,32
    800012cc:	00008067          	ret

00000000800012d0 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800012e0:	00000713          	li	a4,0
    800012e4:	00000693          	li	a3,0
    800012e8:	00000613          	li	a2,0
    800012ec:	00000593          	li	a1,0
    800012f0:	01300513          	li	a0,19
    800012f4:	00000097          	auipc	ra,0x0
    800012f8:	e4c080e7          	jalr	-436(ra) # 80001140 <_Z7syscallmmmmm>
}
    800012fc:	00813083          	ld	ra,8(sp)
    80001300:	00013403          	ld	s0,0(sp)
    80001304:	01010113          	addi	sp,sp,16
    80001308:	00008067          	ret

000000008000130c <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init) { return 0; }
    8000130c:	ff010113          	addi	sp,sp,-16
    80001310:	00813423          	sd	s0,8(sp)
    80001314:	01010413          	addi	s0,sp,16
    80001318:	00000513          	li	a0,0
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) { return 0; }
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    80001334:	00000513          	li	a0,0
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) { return 0; }
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    80001350:	00000513          	li	a0,0
    80001354:	00813403          	ld	s0,8(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) { return 0; }
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    8000136c:	00000513          	li	a0,0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    80001388:	00000513          	li	a0,0
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) { return 0; }
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    800013a4:	00000513          	li	a0,0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    800013c0:	00000513          	li	a0,0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z4getcv>:

char getc () {
    800013d0:	fe010113          	addi	sp,sp,-32
    800013d4:	00113c23          	sd	ra,24(sp)
    800013d8:	00813823          	sd	s0,16(sp)
    800013dc:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    800013e0:	00000713          	li	a4,0
    800013e4:	00000693          	li	a3,0
    800013e8:	00000613          	li	a2,0
    800013ec:	00000593          	li	a1,0
    800013f0:	04100513          	li	a0,65
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	d4c080e7          	jalr	-692(ra) # 80001140 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    800013fc:	00050793          	mv	a5,a0
    80001400:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001404:	fef44503          	lbu	a0,-17(s0)
}
    80001408:	0ff57513          	andi	a0,a0,255
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	02010113          	addi	sp,sp,32
    80001418:	00008067          	ret

000000008000141c <_Z4putcc>:

void putc (char c) {
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00113423          	sd	ra,8(sp)
    80001424:	00813023          	sd	s0,0(sp)
    80001428:	01010413          	addi	s0,sp,16
    8000142c:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001430:	00000713          	li	a4,0
    80001434:	00000693          	li	a3,0
    80001438:	00000613          	li	a2,0
    8000143c:	04200513          	li	a0,66
    80001440:	00000097          	auipc	ra,0x0
    80001444:	d00080e7          	jalr	-768(ra) # 80001140 <_Z7syscallmmmmm>
    80001448:	00813083          	ld	ra,8(sp)
    8000144c:	00013403          	ld	s0,0(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_ZN3SemD1Ev>:
#include "../h/semaphore.hpp"

Sem::~Sem() {
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00113423          	sd	ra,8(sp)
    80001460:	00813023          	sd	s0,0(sp)
    80001464:	01010413          	addi	s0,sp,16
    80001468:	0000a797          	auipc	a5,0xa
    8000146c:	12878793          	addi	a5,a5,296 # 8000b590 <_ZTV3Sem+0x10>
    80001470:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001474:	00850513          	addi	a0,a0,8
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	7c4080e7          	jalr	1988(ra) # 80002c3c <_ZN10ThreadList4freeEv>
}
    80001480:	00813083          	ld	ra,8(sp)
    80001484:	00013403          	ld	s0,0(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001490:	fe010113          	addi	sp,sp,-32
    80001494:	00113c23          	sd	ra,24(sp)
    80001498:	00813823          	sd	s0,16(sp)
    8000149c:	00913423          	sd	s1,8(sp)
    800014a0:	02010413          	addi	s0,sp,32
    800014a4:	00050493          	mv	s1,a0
}
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	fb0080e7          	jalr	-80(ra) # 80001458 <_ZN3SemD1Ev>
    800014b0:	00048513          	mv	a0,s1
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	9dc080e7          	jalr	-1572(ra) # 80001e90 <_ZdlPv>
    800014bc:	01813083          	ld	ra,24(sp)
    800014c0:	01013403          	ld	s0,16(sp)
    800014c4:	00813483          	ld	s1,8(sp)
    800014c8:	02010113          	addi	sp,sp,32
    800014cc:	00008067          	ret

00000000800014d0 <_ZN3Sem5blockEv>:
    if (closed) return -1;
    if (++value <= 0) unblock();
    return 0;
}

void Sem::block() {
    800014d0:	fe010113          	addi	sp,sp,-32
    800014d4:	00113c23          	sd	ra,24(sp)
    800014d8:	00813823          	sd	s0,16(sp)
    800014dc:	00913423          	sd	s1,8(sp)
    800014e0:	01213023          	sd	s2,0(sp)
    800014e4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800014e8:	0000a917          	auipc	s2,0xa
    800014ec:	30093903          	ld	s2,768(s2) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014f0:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800014f4:	00048593          	mv	a1,s1
    800014f8:	00850513          	addi	a0,a0,8
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	600080e7          	jalr	1536(ra) # 80002afc <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001504:	00001097          	auipc	ra,0x1
    80001508:	218080e7          	jalr	536(ra) # 8000271c <_ZN9Scheduler3getEv>
    8000150c:	00050593          	mv	a1,a0
    80001510:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001514:	00048513          	mv	a0,s1
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	528080e7          	jalr	1320(ra) # 80001a40 <_ZN3TCB5yieldEPS_S0_>
}
    80001520:	01813083          	ld	ra,24(sp)
    80001524:	01013403          	ld	s0,16(sp)
    80001528:	00813483          	ld	s1,8(sp)
    8000152c:	00013903          	ld	s2,0(sp)
    80001530:	02010113          	addi	sp,sp,32
    80001534:	00008067          	ret

0000000080001538 <_ZN3Sem4waitEv>:
    if (closed) return -1;
    80001538:	01c54783          	lbu	a5,28(a0)
    8000153c:	06079063          	bnez	a5,8000159c <_ZN3Sem4waitEv+0x64>
int Sem::wait() {
    80001540:	fe010113          	addi	sp,sp,-32
    80001544:	00113c23          	sd	ra,24(sp)
    80001548:	00813823          	sd	s0,16(sp)
    8000154c:	00913423          	sd	s1,8(sp)
    80001550:	02010413          	addi	s0,sp,32
    80001554:	00050493          	mv	s1,a0
    if (--value < 0) {
    80001558:	01852783          	lw	a5,24(a0)
    8000155c:	fff7879b          	addiw	a5,a5,-1
    80001560:	00f52c23          	sw	a5,24(a0)
    80001564:	02079713          	slli	a4,a5,0x20
    80001568:	00074e63          	bltz	a4,80001584 <_ZN3Sem4waitEv+0x4c>
    return 0;
    8000156c:	00000513          	li	a0,0
}
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	00813483          	ld	s1,8(sp)
    8000157c:	02010113          	addi	sp,sp,32
    80001580:	00008067          	ret
        block();
    80001584:	00000097          	auipc	ra,0x0
    80001588:	f4c080e7          	jalr	-180(ra) # 800014d0 <_ZN3Sem5blockEv>
        if (closed) return -2; /// thread released because Semaphore is closed
    8000158c:	01c4c783          	lbu	a5,28(s1)
    80001590:	00079a63          	bnez	a5,800015a4 <_ZN3Sem4waitEv+0x6c>
    return 0;
    80001594:	00000513          	li	a0,0
    80001598:	fd9ff06f          	j	80001570 <_ZN3Sem4waitEv+0x38>
    if (closed) return -1;
    8000159c:	fff00513          	li	a0,-1
}
    800015a0:	00008067          	ret
        if (closed) return -2; /// thread released because Semaphore is closed
    800015a4:	ffe00513          	li	a0,-2
    800015a8:	fc9ff06f          	j	80001570 <_ZN3Sem4waitEv+0x38>

00000000800015ac <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	00813023          	sd	s0,0(sp)
    800015b8:	01010413          	addi	s0,sp,16
    TCB* thread = blocked_threads.get_first();
    800015bc:	00850513          	addi	a0,a0,8
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	4e8080e7          	jalr	1256(ra) # 80002aa8 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	0f4080e7          	jalr	244(ra) # 800026bc <_ZN9Scheduler3putEP3TCB>
}
    800015d0:	00813083          	ld	ra,8(sp)
    800015d4:	00013403          	ld	s0,0(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <_ZN3Sem6signalEv>:
    if (closed) return -1;
    800015e0:	01c54783          	lbu	a5,28(a0)
    800015e4:	04079663          	bnez	a5,80001630 <_ZN3Sem6signalEv+0x50>
    if (++value <= 0) unblock();
    800015e8:	01852783          	lw	a5,24(a0)
    800015ec:	0017879b          	addiw	a5,a5,1
    800015f0:	0007871b          	sext.w	a4,a5
    800015f4:	00f52c23          	sw	a5,24(a0)
    800015f8:	00e05663          	blez	a4,80001604 <_ZN3Sem6signalEv+0x24>
    return 0;
    800015fc:	00000513          	li	a0,0
}
    80001600:	00008067          	ret
int Sem::signal() {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
    if (++value <= 0) unblock();
    80001614:	00000097          	auipc	ra,0x0
    80001618:	f98080e7          	jalr	-104(ra) # 800015ac <_ZN3Sem7unblockEv>
    return 0;
    8000161c:	00000513          	li	a0,0
}
    80001620:	00813083          	ld	ra,8(sp)
    80001624:	00013403          	ld	s0,0(sp)
    80001628:	01010113          	addi	sp,sp,16
    8000162c:	00008067          	ret
    if (closed) return -1;
    80001630:	fff00513          	li	a0,-1
    80001634:	00008067          	ret

0000000080001638 <_ZN3Sem9timedWaitEm>:

int Sem::timedWait(time_t time) {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00813423          	sd	s0,8(sp)
    80001640:	01010413          	addi	s0,sp,16
    return 0;
}
    80001644:	00000513          	li	a0,0
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001660:	00000513          	li	a0,0
    80001664:	00813403          	ld	s0,8(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret

0000000080001670 <_Z7workerAPv>:
    void* address = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(address);
    MemoryAllocator::print();
}
void workerA(void *args) {
    80001670:	fe010113          	addi	sp,sp,-32
    80001674:	00113c23          	sd	ra,24(sp)
    80001678:	00813823          	sd	s0,16(sp)
    8000167c:	00913423          	sd	s1,8(sp)
    80001680:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('A');
    80001684:	00000493          	li	s1,0
    80001688:	00900793          	li	a5,9
    8000168c:	0097cc63          	blt	a5,s1,800016a4 <_Z7workerAPv+0x34>
    80001690:	04100513          	li	a0,65
    80001694:	00007097          	auipc	ra,0x7
    80001698:	d08080e7          	jalr	-760(ra) # 8000839c <__putc>
    8000169c:	0014849b          	addiw	s1,s1,1
    800016a0:	fe9ff06f          	j	80001688 <_Z7workerAPv+0x18>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <printNumber>:
extern "C" void printNumber(uint64 num) {
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    800016d0:	00050913          	mv	s2,a0
    __putc('\n');
    800016d4:	00a00513          	li	a0,10
    800016d8:	00007097          	auipc	ra,0x7
    800016dc:	cc4080e7          	jalr	-828(ra) # 8000839c <__putc>
    __putc('N');
    800016e0:	04e00513          	li	a0,78
    800016e4:	00007097          	auipc	ra,0x7
    800016e8:	cb8080e7          	jalr	-840(ra) # 8000839c <__putc>
    __putc(':');
    800016ec:	03a00513          	li	a0,58
    800016f0:	00007097          	auipc	ra,0x7
    800016f4:	cac080e7          	jalr	-852(ra) # 8000839c <__putc>
    __putc(' ');
    800016f8:	02000513          	li	a0,32
    800016fc:	00007097          	auipc	ra,0x7
    80001700:	ca0080e7          	jalr	-864(ra) # 8000839c <__putc>
    if (!num) __putc('0');
    80001704:	02090663          	beqz	s2,80001730 <printNumber+0x78>
    uint64 num2 = 0;
    80001708:	00000493          	li	s1,0
    while (num) {
    8000170c:	02090a63          	beqz	s2,80001740 <printNumber+0x88>
        num2 *= 10;
    80001710:	00249793          	slli	a5,s1,0x2
    80001714:	009784b3          	add	s1,a5,s1
    80001718:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    8000171c:	00a00713          	li	a4,10
    80001720:	02e974b3          	remu	s1,s2,a4
    80001724:	00f484b3          	add	s1,s1,a5
        num /= 10;
    80001728:	02e95933          	divu	s2,s2,a4
    while (num) {
    8000172c:	fe1ff06f          	j	8000170c <printNumber+0x54>
    if (!num) __putc('0');
    80001730:	03000513          	li	a0,48
    80001734:	00007097          	auipc	ra,0x7
    80001738:	c68080e7          	jalr	-920(ra) # 8000839c <__putc>
    8000173c:	fcdff06f          	j	80001708 <printNumber+0x50>
    while (num2) {
    80001740:	02048063          	beqz	s1,80001760 <printNumber+0xa8>
        __putc(num2 % 10 + '0');
    80001744:	00a00913          	li	s2,10
    80001748:	0324f533          	remu	a0,s1,s2
    8000174c:	03050513          	addi	a0,a0,48
    80001750:	00007097          	auipc	ra,0x7
    80001754:	c4c080e7          	jalr	-948(ra) # 8000839c <__putc>
        num2 /= 10;
    80001758:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    8000175c:	fe5ff06f          	j	80001740 <printNumber+0x88>
}
    80001760:	01813083          	ld	ra,24(sp)
    80001764:	01013403          	ld	s0,16(sp)
    80001768:	00813483          	ld	s1,8(sp)
    8000176c:	00013903          	ld	s2,0(sp)
    80001770:	02010113          	addi	sp,sp,32
    80001774:	00008067          	ret

0000000080001778 <_Z19testMemoryAllocatorv>:
void testMemoryAllocator() {
    80001778:	fe010113          	addi	sp,sp,-32
    8000177c:	00113c23          	sd	ra,24(sp)
    80001780:	00813823          	sd	s0,16(sp)
    80001784:	00913423          	sd	s1,8(sp)
    80001788:	01213023          	sd	s2,0(sp)
    8000178c:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	e68080e7          	jalr	-408(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001798:	00100513          	li	a0,1
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	b04080e7          	jalr	-1276(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
    800017a4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	e50080e7          	jalr	-432(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    800017b0:	00048513          	mv	a0,s1
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	cd8080e7          	jalr	-808(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
    800017bc:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	e38080e7          	jalr	-456(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	cc0080e7          	jalr	-832(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
    800017d4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	e20080e7          	jalr	-480(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    800017e0:	00a00513          	li	a0,10
    800017e4:	00007097          	auipc	ra,0x7
    800017e8:	bb8080e7          	jalr	-1096(ra) # 8000839c <__putc>
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    800017ec:	02090263          	beqz	s2,80001810 <_Z19testMemoryAllocatorv+0x98>
    if (s2 == -3) __putc('G'); /// same
    800017f0:	ffd00793          	li	a5,-3
    800017f4:	02f48663          	beq	s1,a5,80001820 <_Z19testMemoryAllocatorv+0xa8>
}
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	00013903          	ld	s2,0(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret
    if (s1 == 0) __putc('G'); /// G means Good (passed)
    80001810:	04700513          	li	a0,71
    80001814:	00007097          	auipc	ra,0x7
    80001818:	b88080e7          	jalr	-1144(ra) # 8000839c <__putc>
    8000181c:	fd5ff06f          	j	800017f0 <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    80001820:	04700513          	li	a0,71
    80001824:	00007097          	auipc	ra,0x7
    80001828:	b78080e7          	jalr	-1160(ra) # 8000839c <__putc>
}
    8000182c:	fcdff06f          	j	800017f8 <_Z19testMemoryAllocatorv+0x80>

0000000080001830 <_Z10testMemoryv>:
void testMemory() {
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    80001844:	00001097          	auipc	ra,0x1
    80001848:	db4080e7          	jalr	-588(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    8000184c:	03200513          	li	a0,50
    80001850:	00000097          	auipc	ra,0x0
    80001854:	90c080e7          	jalr	-1780(ra) # 8000115c <_Z9mem_allocm>
    80001858:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	d9c080e7          	jalr	-612(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    80001864:	00048513          	mv	a0,s1
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	948080e7          	jalr	-1720(ra) # 800011b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001870:	00001097          	auipc	ra,0x1
    80001874:	d88080e7          	jalr	-632(ra) # 800025f8 <_ZN15MemoryAllocator5printEv>
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret

000000008000188c <_Z7workerBPv>:
void workerB(void *args) {
    8000188c:	fe010113          	addi	sp,sp,-32
    80001890:	00113c23          	sd	ra,24(sp)
    80001894:	00813823          	sd	s0,16(sp)
    80001898:	00913423          	sd	s1,8(sp)
    8000189c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 10; ++i) __putc('B');
    800018a0:	00000493          	li	s1,0
    800018a4:	00900793          	li	a5,9
    800018a8:	0097cc63          	blt	a5,s1,800018c0 <_Z7workerBPv+0x34>
    800018ac:	04200513          	li	a0,66
    800018b0:	00007097          	auipc	ra,0x7
    800018b4:	aec080e7          	jalr	-1300(ra) # 8000839c <__putc>
    800018b8:	0014849b          	addiw	s1,s1,1
    800018bc:	fe9ff06f          	j	800018a4 <_Z7workerBPv+0x18>
}
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret

00000000800018d4 <_Z11testThreadsv>:
void testThreads() {
    800018d4:	fd010113          	addi	sp,sp,-48
    800018d8:	02113423          	sd	ra,40(sp)
    800018dc:	02813023          	sd	s0,32(sp)
    800018e0:	00913c23          	sd	s1,24(sp)
    800018e4:	01213823          	sd	s2,16(sp)
    800018e8:	03010413          	addi	s0,sp,48
    auto* t1 = new Thread(workerA, nullptr);
    800018ec:	02000513          	li	a0,32
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	578080e7          	jalr	1400(ra) # 80001e68 <_Znwm>
    800018f8:	00050493          	mv	s1,a0
    800018fc:	00000613          	li	a2,0
    80001900:	00000597          	auipc	a1,0x0
    80001904:	d7058593          	addi	a1,a1,-656 # 80001670 <_Z7workerAPv>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	630080e7          	jalr	1584(ra) # 80001f38 <_ZN6ThreadC1EPFvPvES0_>
    t1 -> start();
    80001910:	00048513          	mv	a0,s1
    80001914:	00000097          	auipc	ra,0x0
    80001918:	660080e7          	jalr	1632(ra) # 80001f74 <_ZN6Thread5startEv>

    thread_t t2;
    thread_create(&t2, workerA, nullptr);
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	d5058593          	addi	a1,a1,-688 # 80001670 <_Z7workerAPv>
    80001928:	fd840513          	addi	a0,s0,-40
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	8d0080e7          	jalr	-1840(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001934:	02813083          	ld	ra,40(sp)
    80001938:	02013403          	ld	s0,32(sp)
    8000193c:	01813483          	ld	s1,24(sp)
    80001940:	01013903          	ld	s2,16(sp)
    80001944:	03010113          	addi	sp,sp,48
    80001948:	00008067          	ret
    8000194c:	00050913          	mv	s2,a0
    auto* t1 = new Thread(workerA, nullptr);
    80001950:	00048513          	mv	a0,s1
    80001954:	00000097          	auipc	ra,0x0
    80001958:	53c080e7          	jalr	1340(ra) # 80001e90 <_ZdlPv>
    8000195c:	00090513          	mv	a0,s2
    80001960:	0000b097          	auipc	ra,0xb
    80001964:	048080e7          	jalr	72(ra) # 8000c9a8 <_Unwind_Resume>

0000000080001968 <main>:
void userMain();

int main() {
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	02010413          	addi	s0,sp,32
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001978:	0000a797          	auipc	a5,0xa
    8000197c:	e607b783          	ld	a5,-416(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001980:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    80001984:	105027f3          	csrr	a5,stvec
    80001988:	fef43023          	sd	a5,-32(s0)
    return stvec;
    8000198c:	fe043783          	ld	a5,-32(s0)
    uint64 volatile num = RiscV::read_stvec();
    80001990:	fef43423          	sd	a5,-24(s0)
    printNumber(num);
    80001994:	fe843503          	ld	a0,-24(s0)
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	d20080e7          	jalr	-736(ra) # 800016b8 <printNumber>
    /// Enable software interrupts
//    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// Initialize Memory Allocator
    MemoryAllocator::initialize();
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	a1c080e7          	jalr	-1508(ra) # 800023bc <_ZN15MemoryAllocator10initializeEv>
    /// Test Memory Allocation
    testMemoryAllocator();
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	dd0080e7          	jalr	-560(ra) # 80001778 <_Z19testMemoryAllocatorv>
    testMemory();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	e80080e7          	jalr	-384(ra) # 80001830 <_Z10testMemoryv>
    /// Test Threads
//    testThreads();
    /// Test Everything
//    userMain();
    return 0;
    800019b8:	00000513          	li	a0,0
    800019bc:	01813083          	ld	ra,24(sp)
    800019c0:	01013403          	ld	s0,16(sp)
    800019c4:	02010113          	addi	sp,sp,32
    800019c8:	00008067          	ret

00000000800019cc <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    800019cc:	00e53423          	sd	a4,8(a0)
    800019d0:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    800019d4:	0000a717          	auipc	a4,0xa
    800019d8:	e6c70713          	addi	a4,a4,-404 # 8000b840 <_ZN3TCB3cntE>
    800019dc:	00072783          	lw	a5,0(a4)
    800019e0:	0017881b          	addiw	a6,a5,1
    800019e4:	01072023          	sw	a6,0(a4)
    800019e8:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    800019ec:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    800019f0:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    800019f4:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    800019f8:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    800019fc:	00200793          	li	a5,2
    80001a00:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001a04:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001a08:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001a0c:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001a10:	02058663          	beqz	a1,80001a3c <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	c98080e7          	jalr	-872(ra) # 800026bc <_ZN9Scheduler3putEP3TCB>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN3TCB5yieldEPS_S0_>:
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
//    RiscV::push_registers();
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001a40:	02b50a63          	beq	a0,a1,80001a74 <_ZN3TCB5yieldEPS_S0_+0x34>
void TCB::yield(TCB *old_running, TCB *new_running) {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001a54:	00858593          	addi	a1,a1,8
    80001a58:	00850513          	addi	a0,a0,8
    80001a5c:	fffff097          	auipc	ra,0xfffff
    80001a60:	6b0080e7          	jalr	1712(ra) # 8000110c <_ZN3TCB14context_switchEPNS_7ContextES1_>
//    RiscV::pop_registers();
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret
    80001a74:	00008067          	ret

0000000080001a78 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001a78:	fe010113          	addi	sp,sp,-32
    80001a7c:	00113c23          	sd	ra,24(sp)
    80001a80:	00813823          	sd	s0,16(sp)
    80001a84:	00913423          	sd	s1,8(sp)
    80001a88:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001a8c:	0000a497          	auipc	s1,0xa
    80001a90:	dbc4b483          	ld	s1,-580(s1) # 8000b848 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001a94:	0184a783          	lw	a5,24(s1)
    80001a98:	00400713          	li	a4,4
    80001a9c:	00e78663          	beq	a5,a4,80001aa8 <_ZN3TCB8dispatchEv+0x30>
    80001aa0:	00200713          	li	a4,2
    80001aa4:	02e79e63          	bne	a5,a4,80001ae0 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	c74080e7          	jalr	-908(ra) # 8000271c <_ZN9Scheduler3getEv>
    80001ab0:	0000a797          	auipc	a5,0xa
    80001ab4:	d8a7bc23          	sd	a0,-616(a5) # 8000b848 <_ZN3TCB7runningE>
    if (old != running) context_switch(&old -> context, &running -> context);
    80001ab8:	00a48a63          	beq	s1,a0,80001acc <_ZN3TCB8dispatchEv+0x54>
    80001abc:	00850593          	addi	a1,a0,8
    80001ac0:	00848513          	addi	a0,s1,8
    80001ac4:	fffff097          	auipc	ra,0xfffff
    80001ac8:	648080e7          	jalr	1608(ra) # 8000110c <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	02010113          	addi	sp,sp,32
    80001adc:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	bd8080e7          	jalr	-1064(ra) # 800026bc <_ZN9Scheduler3putEP3TCB>
    80001aec:	fbdff06f          	j	80001aa8 <_ZN3TCB8dispatchEv+0x30>

0000000080001af0 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813423          	sd	s0,8(sp)
    80001af8:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001afc:	04053503          	ld	a0,64(a0)
    80001b00:	00813403          	ld	s0,8(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001b18:	04b53023          	sd	a1,64(a0)
}
    80001b1c:	00813403          	ld	s0,8(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00813423          	sd	s0,8(sp)
    80001b30:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001b34:	04b53823          	sd	a1,80(a0)
}
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00813423          	sd	s0,8(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001b50:	05053503          	ld	a0,80(a0)
    80001b54:	00813403          	ld	s0,8(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001b6c:	04b53423          	sd	a1,72(a0)
}
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001b7c:	ff010113          	addi	sp,sp,-16
    80001b80:	00813423          	sd	s0,8(sp)
    80001b84:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001b88:	04853503          	ld	a0,72(a0)
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    this -> status = status;
    80001ba4:	00b52c23          	sw	a1,24(a0)
}
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00113423          	sd	ra,8(sp)
    80001bbc:	00813023          	sd	s0,0(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001bc4:	00400593          	li	a1,4
    80001bc8:	0000a517          	auipc	a0,0xa
    80001bcc:	c8053503          	ld	a0,-896(a0) # 8000b848 <_ZN3TCB7runningE>
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	fc8080e7          	jalr	-56(ra) # 80001b98 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	ea0080e7          	jalr	-352(ra) # 80001a78 <_ZN3TCB8dispatchEv>
}
    80001be0:	00813083          	ld	ra,8(sp)
    80001be4:	00013403          	ld	s0,0(sp)
    80001be8:	01010113          	addi	sp,sp,16
    80001bec:	00008067          	ret

0000000080001bf0 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	00813023          	sd	s0,0(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	d20080e7          	jalr	-736(ra) # 80002920 <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001c08:	0000a797          	auipc	a5,0xa
    80001c0c:	c407b783          	ld	a5,-960(a5) # 8000b848 <_ZN3TCB7runningE>
    80001c10:	0207b703          	ld	a4,32(a5)
    80001c14:	0287b503          	ld	a0,40(a5)
    80001c18:	000700e7          	jalr	a4
    thread_exit();
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	f98080e7          	jalr	-104(ra) # 80001bb4 <_ZN3TCB11thread_exitEv>
}
    80001c24:	00813083          	ld	ra,8(sp)
    80001c28:	00013403          	ld	s0,0(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN3TCB5startEv>:

void TCB::start() {
    80001c34:	fe010113          	addi	sp,sp,-32
    80001c38:	00113c23          	sd	ra,24(sp)
    80001c3c:	00813823          	sd	s0,16(sp)
    80001c40:	00913423          	sd	s1,8(sp)
    80001c44:	02010413          	addi	s0,sp,32
    80001c48:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	a70080e7          	jalr	-1424(ra) # 800026bc <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001c54:	0000a797          	auipc	a5,0xa
    80001c58:	bf47b783          	ld	a5,-1036(a5) # 8000b848 <_ZN3TCB7runningE>
    80001c5c:	00078c63          	beqz	a5,80001c74 <_ZN3TCB5startEv+0x40>
}
    80001c60:	01813083          	ld	ra,24(sp)
    80001c64:	01013403          	ld	s0,16(sp)
    80001c68:	00813483          	ld	s1,8(sp)
    80001c6c:	02010113          	addi	sp,sp,32
    80001c70:	00008067          	ret
    if (!running) running = this;
    80001c74:	0000a797          	auipc	a5,0xa
    80001c78:	bc97ba23          	sd	s1,-1068(a5) # 8000b848 <_ZN3TCB7runningE>
}
    80001c7c:	fe5ff06f          	j	80001c60 <_ZN3TCB5startEv+0x2c>

0000000080001c80 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	a0c080e7          	jalr	-1524(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	608080e7          	jalr	1544(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	7cc080e7          	jalr	1996(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001cd8:	fa010113          	addi	sp,sp,-96
    80001cdc:	04113c23          	sd	ra,88(sp)
    80001ce0:	04813823          	sd	s0,80(sp)
    80001ce4:	04913423          	sd	s1,72(sp)
    80001ce8:	05213023          	sd	s2,64(sp)
    80001cec:	03313c23          	sd	s3,56(sp)
    80001cf0:	03413823          	sd	s4,48(sp)
    80001cf4:	03513423          	sd	s5,40(sp)
    80001cf8:	06010413          	addi	s0,sp,96
    80001cfc:	00050993          	mv	s3,a0
    80001d00:	00058a13          	mv	s4,a1
    80001d04:	00060a93          	mv	s5,a2
    80001d08:	00068493          	mv	s1,a3
    Context context = {
    80001d0c:	00000797          	auipc	a5,0x0
    80001d10:	ee478793          	addi	a5,a5,-284 # 80001bf0 <_ZN3TCB16wrapper_functionEv>
    80001d14:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001d18:	04068663          	beqz	a3,80001d64 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001d1c:	000017b7          	lui	a5,0x1
    80001d20:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001d24:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001d28:	fa043703          	ld	a4,-96(s0)
    80001d2c:	fae43823          	sd	a4,-80(s0)
    80001d30:	faf43c23          	sd	a5,-72(s0)
    80001d34:	05800513          	li	a0,88
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	f48080e7          	jalr	-184(ra) # 80001c80 <_ZN3TCBnwEm>
    80001d40:	00050913          	mv	s2,a0
    80001d44:	fb043703          	ld	a4,-80(s0)
    80001d48:	fb843783          	ld	a5,-72(s0)
    80001d4c:	00048693          	mv	a3,s1
    80001d50:	000a8613          	mv	a2,s5
    80001d54:	000a0593          	mv	a1,s4
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	c74080e7          	jalr	-908(ra) # 800019cc <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001d60:	0280006f          	j	80001d88 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001d64:	00000793          	li	a5,0
    80001d68:	fc1ff06f          	j	80001d28 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001d6c:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001d70:	00090513          	mv	a0,s2
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	f3c080e7          	jalr	-196(ra) # 80001cb0 <_ZN3TCBdlEPv>
    80001d7c:	00048513          	mv	a0,s1
    80001d80:	0000b097          	auipc	ra,0xb
    80001d84:	c28080e7          	jalr	-984(ra) # 8000c9a8 <_Unwind_Resume>
    80001d88:	0129b023          	sd	s2,0(s3)
}
    80001d8c:	00000513          	li	a0,0
    80001d90:	05813083          	ld	ra,88(sp)
    80001d94:	05013403          	ld	s0,80(sp)
    80001d98:	04813483          	ld	s1,72(sp)
    80001d9c:	04013903          	ld	s2,64(sp)
    80001da0:	03813983          	ld	s3,56(sp)
    80001da4:	03013a03          	ld	s4,48(sp)
    80001da8:	02813a83          	ld	s5,40(sp)
    80001dac:	06010113          	addi	sp,sp,96
    80001db0:	00008067          	ret

0000000080001db4 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813423          	sd	s0,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001dc0:	03853503          	ld	a0,56(a0)
    80001dc4:	00813403          	ld	s0,8(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret

0000000080001dd0 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	02010413          	addi	s0,sp,32
    80001de4:	00050493          	mv	s1,a0
    80001de8:	0000a797          	auipc	a5,0xa
    80001dec:	80078793          	addi	a5,a5,-2048 # 8000b5e8 <_ZTV6Thread+0x10>
    80001df0:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001df4:	00400593          	li	a1,4
    80001df8:	00853503          	ld	a0,8(a0)
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	d9c080e7          	jalr	-612(ra) # 80001b98 <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001e04:	0084b503          	ld	a0,8(s1)
    80001e08:	00050663          	beqz	a0,80001e14 <_ZN6ThreadD1Ev+0x44>
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	ea4080e7          	jalr	-348(ra) # 80001cb0 <_ZN3TCBdlEPv>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001e28:	00009797          	auipc	a5,0x9
    80001e2c:	7e878793          	addi	a5,a5,2024 # 8000b610 <_ZTV9Semaphore+0x10>
    80001e30:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001e34:	00853503          	ld	a0,8(a0)
    80001e38:	02050663          	beqz	a0,80001e64 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	4dc080e7          	jalr	1244(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret
    80001e64:	00008067          	ret

0000000080001e68 <_Znwm>:
void* operator new(size_t size){
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e78:	fffff097          	auipc	ra,0xfffff
    80001e7c:	2e4080e7          	jalr	740(ra) # 8000115c <_Z9mem_allocm>
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00113423          	sd	ra,8(sp)
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	310080e7          	jalr	784(ra) # 800011b0 <_Z8mem_freePv>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001eb8:	fe010113          	addi	sp,sp,-32
    80001ebc:	00113c23          	sd	ra,24(sp)
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    80001ecc:	00050493          	mv	s1,a0
}
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	f00080e7          	jalr	-256(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	fb4080e7          	jalr	-76(ra) # 80001e90 <_ZdlPv>
    80001ee4:	01813083          	ld	ra,24(sp)
    80001ee8:	01013403          	ld	s0,16(sp)
    80001eec:	00813483          	ld	s1,8(sp)
    80001ef0:	02010113          	addi	sp,sp,32
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    80001f0c:	00050493          	mv	s1,a0
}
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	f18080e7          	jalr	-232(ra) # 80001e28 <_ZN9SemaphoreD1Ev>
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	f74080e7          	jalr	-140(ra) # 80001e90 <_ZdlPv>
    80001f24:	01813083          	ld	ra,24(sp)
    80001f28:	01013403          	ld	s0,16(sp)
    80001f2c:	00813483          	ld	s1,8(sp)
    80001f30:	02010113          	addi	sp,sp,32
    80001f34:	00008067          	ret

0000000080001f38 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00113423          	sd	ra,8(sp)
    80001f40:	00813023          	sd	s0,0(sp)
    80001f44:	01010413          	addi	s0,sp,16
    80001f48:	00009797          	auipc	a5,0x9
    80001f4c:	6a078793          	addi	a5,a5,1696 # 8000b5e8 <_ZTV6Thread+0x10>
    80001f50:	00f53023          	sd	a5,0(a0)
    80001f54:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80001f58:	00850513          	addi	a0,a0,8
    80001f5c:	fffff097          	auipc	ra,0xfffff
    80001f60:	2a0080e7          	jalr	672(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN6Thread5startEv>:
int Thread::start() {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80001f84:	00853503          	ld	a0,8(a0)
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	cac080e7          	jalr	-852(ra) # 80001c34 <_ZN3TCB5startEv>
}
    80001f90:	00000513          	li	a0,0
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	31c080e7          	jalr	796(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00113423          	sd	ra,8(sp)
    80001fd4:	00813023          	sd	s0,0(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	3d8080e7          	jalr	984(ra) # 800013b4 <_Z10time_sleepm>
}
    80001fe4:	00000513          	li	a0,0
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	00009797          	auipc	a5,0x9
    80002008:	5e478793          	addi	a5,a5,1508 # 8000b5e8 <_ZTV6Thread+0x10>
    8000200c:	00f53023          	sd	a5,0(a0)
    80002010:	00053423          	sd	zero,8(a0)
}
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00113423          	sd	ra,8(sp)
    80002028:	00813023          	sd	s0,0(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	00009797          	auipc	a5,0x9
    80002034:	5e078793          	addi	a5,a5,1504 # 8000b610 <_ZTV9Semaphore+0x10>
    80002038:	00f53023          	sd	a5,0(a0)
    8000203c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002040:	00850513          	addi	a0,a0,8
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	2c8080e7          	jalr	712(ra) # 8000130c <_Z8sem_openPP3Semj>
}
    8000204c:	00813083          	ld	ra,8(sp)
    80002050:	00013403          	ld	s0,0(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    8000205c:	00853503          	ld	a0,8(a0)
    80002060:	02050663          	beqz	a0,8000208c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002064:	ff010113          	addi	sp,sp,-16
    80002068:	00113423          	sd	ra,8(sp)
    8000206c:	00813023          	sd	s0,0(sp)
    80002070:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	2d0080e7          	jalr	720(ra) # 80001344 <_Z8sem_waitP3Sem>
    return -1;
}
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret
    return -1;
    8000208c:	fff00513          	li	a0,-1
}
    80002090:	00008067          	ret

0000000080002094 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002094:	00853503          	ld	a0,8(a0)
    80002098:	02050663          	beqz	a0,800020c4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	2b4080e7          	jalr	692(ra) # 80001360 <_Z10sem_signalP3Sem>
    return -1;
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret
    return -1;
    800020c4:	fff00513          	li	a0,-1
}
    800020c8:	00008067          	ret

00000000800020cc <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    return 0;
}
    800020d8:	00000513          	li	a0,0
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00813423          	sd	s0,8(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return 0;
}
    800020f4:	00000513          	li	a0,0
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret

0000000080002104 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00813423          	sd	s0,8(sp)
    8000210c:	01010413          	addi	s0,sp,16

}
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000211c:	fe010113          	addi	sp,sp,-32
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00813823          	sd	s0,16(sp)
    80002128:	00913423          	sd	s1,8(sp)
    8000212c:	02010413          	addi	s0,sp,32
    80002130:	00050493          	mv	s1,a0
    80002134:	00000097          	auipc	ra,0x0
    80002138:	ec4080e7          	jalr	-316(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    8000213c:	00009797          	auipc	a5,0x9
    80002140:	47c78793          	addi	a5,a5,1148 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    80002144:	00f4b023          	sd	a5,0(s1)

}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret

000000008000215c <_ZN7Console4getcEv>:

char Console::getc() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    return ::getc();
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	264080e7          	jalr	612(ra) # 800013d0 <_Z4getcv>
}
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	288080e7          	jalr	648(ra) # 8000141c <_Z4putcc>
}
    8000219c:	00813083          	ld	ra,8(sp)
    800021a0:	00013403          	ld	s0,0(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00813423          	sd	s0,8(sp)
    800021b4:	01010413          	addi	s0,sp,16
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00813423          	sd	s0,8(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	00813403          	ld	s0,8(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    800021ec:	00009797          	auipc	a5,0x9
    800021f0:	3cc78793          	addi	a5,a5,972 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    800021f4:	00f53023          	sd	a5,0(a0)
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	bd8080e7          	jalr	-1064(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80002200:	00813083          	ld	ra,8(sp)
    80002204:	00013403          	ld	s0,0(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <_ZN14PeriodicThreadD0Ev>:
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00113c23          	sd	ra,24(sp)
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	02010413          	addi	s0,sp,32
    80002224:	00050493          	mv	s1,a0
    80002228:	00009797          	auipc	a5,0x9
    8000222c:	39078793          	addi	a5,a5,912 # 8000b5b8 <_ZTV14PeriodicThread+0x10>
    80002230:	00f53023          	sd	a5,0(a0)
    80002234:	00000097          	auipc	ra,0x0
    80002238:	b9c080e7          	jalr	-1124(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000223c:	00048513          	mv	a0,s1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	c50080e7          	jalr	-944(ra) # 80001e90 <_ZdlPv>
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00008067          	ret

000000008000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002268:	00853783          	ld	a5,8(a0)
    8000226c:	02078463          	beqz	a5,80002294 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002270:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002274:	01053783          	ld	a5,16(a0)
    80002278:	00078863          	beqz	a5,80002288 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    8000227c:	00060463          	beqz	a2,80002284 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002280:	00853583          	ld	a1,8(a0)
    80002284:	00b7b423          	sd	a1,8(a5)
}
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret
    else freeSegHead = nextSeg;
    80002294:	00009797          	auipc	a5,0x9
    80002298:	5cb7b223          	sd	a1,1476(a5) # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    8000229c:	fd9ff06f          	j	80002274 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800022a0 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    800022a0:	fe010113          	addi	sp,sp,-32
    800022a4:	00113c23          	sd	ra,24(sp)
    800022a8:	00813823          	sd	s0,16(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	01213023          	sd	s2,0(sp)
    800022b4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800022b8:	0e050e63          	beqz	a0,800023b4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800022bc:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800022c0:	00009497          	auipc	s1,0x9
    800022c4:	5984b483          	ld	s1,1432(s1) # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800022c8:	0a048e63          	beqz	s1,80002384 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800022cc:	0004b783          	ld	a5,0(s1)
    800022d0:	0527e463          	bltu	a5,s2,80002318 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800022d4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800022d8:	01700713          	li	a4,23
    800022dc:	04f76263          	bltu	a4,a5,80002320 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800022e0:	00000613          	li	a2,0
    800022e4:	0104b583          	ld	a1,16(s1)
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	f70080e7          	jalr	-144(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800022f4:	00009797          	auipc	a5,0x9
    800022f8:	56c7b783          	ld	a5,1388(a5) # 8000b860 <_ZN15MemoryAllocator11usedSegHeadE>
    800022fc:	04078863          	beqz	a5,8000234c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002300:	0497fa63          	bgeu	a5,s1,80002354 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002304:	00078713          	mv	a4,a5
    80002308:	0107b783          	ld	a5,16(a5)
    8000230c:	04078663          	beqz	a5,80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002310:	fe97eae3          	bltu	a5,s1,80002304 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002314:	0440006f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002318:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000231c:	fadff06f          	j	800022c8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002320:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002324:	0084b703          	ld	a4,8(s1)
    80002328:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    8000232c:	0104b703          	ld	a4,16(s1)
    80002330:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002334:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002338:	00100613          	li	a2,1
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	f1c080e7          	jalr	-228(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002348:	fadff06f          	j	800022f4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    8000234c:	00078713          	mv	a4,a5
    80002350:	0080006f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002354:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002358:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000235c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002360:	04070063          	beqz	a4,800023a0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002364:	01073783          	ld	a5,16(a4)
    80002368:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000236c:	02070e63          	beqz	a4,800023a8 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002370:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002374:	0104b783          	ld	a5,16(s1)
    80002378:	00078463          	beqz	a5,80002380 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    8000237c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002380:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002384:	00048513          	mv	a0,s1
    80002388:	01813083          	ld	ra,24(sp)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	00813483          	ld	s1,8(sp)
    80002394:	00013903          	ld	s2,0(sp)
    80002398:	02010113          	addi	sp,sp,32
    8000239c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800023a0:	00070793          	mv	a5,a4
    800023a4:	fc5ff06f          	j	80002368 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800023a8:	00009797          	auipc	a5,0x9
    800023ac:	4a97bc23          	sd	s1,1208(a5) # 8000b860 <_ZN15MemoryAllocator11usedSegHeadE>
    800023b0:	fc5ff06f          	j	80002374 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800023b4:	00000493          	li	s1,0
    800023b8:	fcdff06f          	j	80002384 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800023bc <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800023bc:	00009797          	auipc	a5,0x9
    800023c0:	4ac7b783          	ld	a5,1196(a5) # 8000b868 <_ZN15MemoryAllocator8instanceE>
    800023c4:	00078463          	beqz	a5,800023cc <_ZN15MemoryAllocator10initializeEv+0x10>
    800023c8:	00008067          	ret
void MemoryAllocator::initialize() {
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	3f07b783          	ld	a5,1008(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023e8:	0007b783          	ld	a5,0(a5)
    800023ec:	00009497          	auipc	s1,0x9
    800023f0:	46c48493          	addi	s1,s1,1132 # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    800023f4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800023f8:	00009717          	auipc	a4,0x9
    800023fc:	3f873703          	ld	a4,1016(a4) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002400:	00073703          	ld	a4,0(a4)
    80002404:	40f70733          	sub	a4,a4,a5
    80002408:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000240c:	0004b783          	ld	a5,0(s1)
    80002410:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002414:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80002418:	00100513          	li	a0,1
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	e84080e7          	jalr	-380(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
    80002424:	00a4b823          	sd	a0,16(s1)
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002448:	01053783          	ld	a5,16(a0)
    8000244c:	00078863          	beqz	a5,8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002450:	00053703          	ld	a4,0(a0)
    80002454:	00e506b3          	add	a3,a0,a4
    80002458:	00d78863          	beq	a5,a3,80002468 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002468:	0007b683          	ld	a3,0(a5)
    8000246c:	00d70733          	add	a4,a4,a3
    80002470:	01870713          	addi	a4,a4,24
    80002474:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002478:	0107b783          	ld	a5,16(a5)
    8000247c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002480:	fc078ee3          	beqz	a5,8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002484:	00a7b423          	sd	a0,8(a5)
}
    80002488:	fd5ff06f          	j	8000245c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

000000008000248c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000248c:	14050263          	beqz	a0,800025d0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80002490:	fd010113          	addi	sp,sp,-48
    80002494:	02113423          	sd	ra,40(sp)
    80002498:	02813023          	sd	s0,32(sp)
    8000249c:	00913c23          	sd	s1,24(sp)
    800024a0:	01213823          	sd	s2,16(sp)
    800024a4:	01313423          	sd	s3,8(sp)
    800024a8:	03010413          	addi	s0,sp,48
    800024ac:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800024b0:	00009797          	auipc	a5,0x9
    800024b4:	3207b783          	ld	a5,800(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024b8:	0007b783          	ld	a5,0(a5)
    800024bc:	10f56e63          	bltu	a0,a5,800025d8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800024c0:	00009797          	auipc	a5,0x9
    800024c4:	3307b783          	ld	a5,816(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024c8:	0007b783          	ld	a5,0(a5)
    800024cc:	10a7ea63          	bltu	a5,a0,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	3907b783          	ld	a5,912(a5) # 8000b860 <_ZN15MemoryAllocator11usedSegHeadE>
    800024d8:	10078863          	beqz	a5,800025e8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800024dc:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024e0:	00078863          	beqz	a5,800024f0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800024e4:	08978e63          	beq	a5,s1,80002580 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024e8:	0107b783          	ld	a5,16(a5)
    800024ec:	ff5ff06f          	j	800024e0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800024f0:	00000793          	li	a5,0
    if (!found) return -3;
    800024f4:	0e078e63          	beqz	a5,800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    800024f8:	00000613          	li	a2,0
    800024fc:	ff893583          	ld	a1,-8(s2)
    80002500:	00048513          	mv	a0,s1
    80002504:	00000097          	auipc	ra,0x0
    80002508:	d58080e7          	jalr	-680(ra) # 8000225c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    8000250c:	00009797          	auipc	a5,0x9
    80002510:	34c7b783          	ld	a5,844(a5) # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    80002514:	06078a63          	beqz	a5,80002588 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80002518:	08f4e463          	bltu	s1,a5,800025a0 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000251c:	00078993          	mv	s3,a5
    80002520:	0107b783          	ld	a5,16(a5)
    80002524:	00078463          	beqz	a5,8000252c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002528:	fe97eae3          	bltu	a5,s1,8000251c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    8000252c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002530:	0109b783          	ld	a5,16(s3)
    80002534:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002538:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000253c:	ff893783          	ld	a5,-8(s2)
    80002540:	00078463          	beqz	a5,80002548 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002544:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002548:	00048513          	mv	a0,s1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	ef0080e7          	jalr	-272(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002554:	00098513          	mv	a0,s3
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	ee4080e7          	jalr	-284(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002560:	00000513          	li	a0,0
}
    80002564:	02813083          	ld	ra,40(sp)
    80002568:	02013403          	ld	s0,32(sp)
    8000256c:	01813483          	ld	s1,24(sp)
    80002570:	01013903          	ld	s2,16(sp)
    80002574:	00813983          	ld	s3,8(sp)
    80002578:	03010113          	addi	sp,sp,48
    8000257c:	00008067          	ret
            found = true;
    80002580:	00100793          	li	a5,1
    80002584:	f71ff06f          	j	800024f4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002588:	00009797          	auipc	a5,0x9
    8000258c:	2c97b823          	sd	s1,720(a5) # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002590:	fe093c23          	sd	zero,-8(s2)
    80002594:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002598:	00000513          	li	a0,0
    8000259c:	fc9ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800025a0:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800025a4:	00009797          	auipc	a5,0x9
    800025a8:	2b478793          	addi	a5,a5,692 # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    800025ac:	0007b703          	ld	a4,0(a5)
    800025b0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800025b4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800025b8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	e7c080e7          	jalr	-388(ra) # 8000243c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025c8:	00000513          	li	a0,0
    800025cc:	f99ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d0:	fff00513          	li	a0,-1
}
    800025d4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025d8:	fff00513          	li	a0,-1
    800025dc:	f89ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800025e0:	fff00513          	li	a0,-1
    800025e4:	f81ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800025e8:	ffe00513          	li	a0,-2
    800025ec:	f79ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    800025f0:	ffd00513          	li	a0,-3
    800025f4:	f71ff06f          	j	80002564 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

00000000800025f8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00913423          	sd	s1,8(sp)
    80002608:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000260c:	00a00513          	li	a0,10
    80002610:	00006097          	auipc	ra,0x6
    80002614:	d8c080e7          	jalr	-628(ra) # 8000839c <__putc>
    __putc('M');
    80002618:	04d00513          	li	a0,77
    8000261c:	00006097          	auipc	ra,0x6
    80002620:	d80080e7          	jalr	-640(ra) # 8000839c <__putc>
    __putc(':');
    80002624:	03a00513          	li	a0,58
    80002628:	00006097          	auipc	ra,0x6
    8000262c:	d74080e7          	jalr	-652(ra) # 8000839c <__putc>
    __putc(' ');
    80002630:	02000513          	li	a0,32
    80002634:	00006097          	auipc	ra,0x6
    80002638:	d68080e7          	jalr	-664(ra) # 8000839c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    8000263c:	00009497          	auipc	s1,0x9
    80002640:	21c4b483          	ld	s1,540(s1) # 8000b858 <_ZN15MemoryAllocator11freeSegHeadE>
    80002644:	00048c63          	beqz	s1,8000265c <_ZN15MemoryAllocator5printEv+0x64>
    80002648:	06600513          	li	a0,102
    8000264c:	00006097          	auipc	ra,0x6
    80002650:	d50080e7          	jalr	-688(ra) # 8000839c <__putc>
    80002654:	0104b483          	ld	s1,16(s1)
    80002658:	fedff06f          	j	80002644 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    8000265c:	00900513          	li	a0,9
    80002660:	00006097          	auipc	ra,0x6
    80002664:	d3c080e7          	jalr	-708(ra) # 8000839c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002668:	00009497          	auipc	s1,0x9
    8000266c:	1f84b483          	ld	s1,504(s1) # 8000b860 <_ZN15MemoryAllocator11usedSegHeadE>
    80002670:	00048c63          	beqz	s1,80002688 <_ZN15MemoryAllocator5printEv+0x90>
    80002674:	07500513          	li	a0,117
    80002678:	00006097          	auipc	ra,0x6
    8000267c:	d24080e7          	jalr	-732(ra) # 8000839c <__putc>
    80002680:	0104b483          	ld	s1,16(s1)
    80002684:	fedff06f          	j	80002670 <_ZN15MemoryAllocator5printEv+0x78>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

uint64 MemoryAllocator::get_number_of_blocks(size_t size) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800026a8:	05750513          	addi	a0,a0,87
}
    800026ac:	00655513          	srli	a0,a0,0x6
    800026b0:	00813403          	ld	s0,8(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00113c23          	sd	ra,24(sp)
    800026c4:	00813823          	sd	s0,16(sp)
    800026c8:	00913423          	sd	s1,8(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	00050493          	mv	s1,a0
    if (tail_ready) {
    800026d4:	00009517          	auipc	a0,0x9
    800026d8:	19c53503          	ld	a0,412(a0) # 8000b870 <_ZN9Scheduler10tail_readyE>
    800026dc:	02051463          	bnez	a0,80002704 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800026e0:	00009797          	auipc	a5,0x9
    800026e4:	19078793          	addi	a5,a5,400 # 8000b870 <_ZN9Scheduler10tail_readyE>
    800026e8:	0097b023          	sd	s1,0(a5)
    800026ec:	0097b423          	sd	s1,8(a5)
}
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002704:	00048593          	mv	a1,s1
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	404080e7          	jalr	1028(ra) # 80001b0c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002710:	00009797          	auipc	a5,0x9
    80002714:	1697b023          	sd	s1,352(a5) # 8000b870 <_ZN9Scheduler10tail_readyE>
        return;
    80002718:	fd9ff06f          	j	800026f0 <_ZN9Scheduler3putEP3TCB+0x34>

000000008000271c <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    8000271c:	fe010113          	addi	sp,sp,-32
    80002720:	00113c23          	sd	ra,24(sp)
    80002724:	00813823          	sd	s0,16(sp)
    80002728:	00913423          	sd	s1,8(sp)
    8000272c:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002730:	00009497          	auipc	s1,0x9
    80002734:	1484b483          	ld	s1,328(s1) # 8000b878 <_ZN9Scheduler10head_readyE>
    80002738:	00048c63          	beqz	s1,80002750 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    8000273c:	00048513          	mv	a0,s1
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	3b0080e7          	jalr	944(ra) # 80001af0 <_ZNK3TCB14get_next_readyEv>
    80002748:	00009797          	auipc	a5,0x9
    8000274c:	12a7b823          	sd	a0,304(a5) # 8000b878 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002750:	00048513          	mv	a0,s1
    80002754:	01813083          	ld	ra,24(sp)
    80002758:	01013403          	ld	s0,16(sp)
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	02010113          	addi	sp,sp,32
    80002764:	00008067          	ret

0000000080002768 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00113423          	sd	ra,8(sp)
    80002770:	00813023          	sd	s0,0(sp)
    80002774:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	f24080e7          	jalr	-220(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002780:	00000097          	auipc	ra,0x0
    80002784:	b20080e7          	jalr	-1248(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002788:	00813083          	ld	ra,8(sp)
    8000278c:	00013403          	ld	s0,0(sp)
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret

0000000080002798 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	00813023          	sd	s0,0(sp)
    800027a4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	ce4080e7          	jalr	-796(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret

00000000800027c0 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    800027c0:	fc010113          	addi	sp,sp,-64
    800027c4:	02113c23          	sd	ra,56(sp)
    800027c8:	02813823          	sd	s0,48(sp)
    800027cc:	02913423          	sd	s1,40(sp)
    800027d0:	03213023          	sd	s2,32(sp)
    800027d4:	01313c23          	sd	s3,24(sp)
    800027d8:	01413823          	sd	s4,16(sp)
    800027dc:	01513423          	sd	s5,8(sp)
    800027e0:	04010413          	addi	s0,sp,64
    800027e4:	00050a93          	mv	s5,a0
    800027e8:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    800027ec:	00100593          	li	a1,1
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	3a8080e7          	jalr	936(ra) # 80001b98 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800027f8:	00009497          	auipc	s1,0x9
    800027fc:	0884b483          	ld	s1,136(s1) # 8000b880 <_ZN9Scheduler13head_sleepingE>
    80002800:	02048e63          	beqz	s1,8000283c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80002804:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002808:	00000a13          	li	s4,0
    while (tmp) {
    8000280c:	04048c63          	beqz	s1,80002864 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    80002810:	00048513          	mv	a0,s1
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	368080e7          	jalr	872(ra) # 80001b7c <_ZNK3TCB17get_time_to_sleepEv>
    8000281c:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002820:	0729e463          	bltu	s3,s2,80002888 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80002824:	00048513          	mv	a0,s1
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	31c080e7          	jalr	796(ra) # 80001b44 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002830:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002834:	00050493          	mv	s1,a0
    while (tmp) {
    80002838:	fd5ff06f          	j	8000280c <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    8000283c:	00009797          	auipc	a5,0x9
    80002840:	0557b223          	sd	s5,68(a5) # 8000b880 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002844:	00000593          	li	a1,0
    80002848:	000a8513          	mv	a0,s5
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	2dc080e7          	jalr	732(ra) # 80001b28 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002854:	00098593          	mv	a1,s3
    80002858:	000a8513          	mv	a0,s5
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	304080e7          	jalr	772(ra) # 80001b60 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002864:	03813083          	ld	ra,56(sp)
    80002868:	03013403          	ld	s0,48(sp)
    8000286c:	02813483          	ld	s1,40(sp)
    80002870:	02013903          	ld	s2,32(sp)
    80002874:	01813983          	ld	s3,24(sp)
    80002878:	01013a03          	ld	s4,16(sp)
    8000287c:	00813a83          	ld	s5,8(sp)
    80002880:	04010113          	addi	sp,sp,64
    80002884:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002888:	000a0a63          	beqz	s4,8000289c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    8000288c:	000a0513          	mv	a0,s4
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	2ec080e7          	jalr	748(ra) # 80001b7c <_ZNK3TCB17get_time_to_sleepEv>
    80002898:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    8000289c:	00098593          	mv	a1,s3
    800028a0:	000a8513          	mv	a0,s5
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	2bc080e7          	jalr	700(ra) # 80001b60 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    800028ac:	00048593          	mv	a1,s1
    800028b0:	000a8513          	mv	a0,s5
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	274080e7          	jalr	628(ra) # 80001b28 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    800028bc:	040a0c63          	beqz	s4,80002914 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    800028c0:	000a8593          	mv	a1,s5
    800028c4:	000a0513          	mv	a0,s4
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	260080e7          	jalr	608(ra) # 80001b28 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    800028d0:	00048513          	mv	a0,s1
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	270080e7          	jalr	624(ra) # 80001b44 <_ZNK3TCB17get_next_sleepingEv>
    800028dc:	00050493          	mv	s1,a0
    800028e0:	f80482e3          	beqz	s1,80002864 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    800028e4:	00048513          	mv	a0,s1
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	294080e7          	jalr	660(ra) # 80001b7c <_ZNK3TCB17get_time_to_sleepEv>
    800028f0:	413505b3          	sub	a1,a0,s3
    800028f4:	00048513          	mv	a0,s1
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	268080e7          	jalr	616(ra) # 80001b60 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002900:	00048513          	mv	a0,s1
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	240080e7          	jalr	576(ra) # 80001b44 <_ZNK3TCB17get_next_sleepingEv>
    8000290c:	00050493          	mv	s1,a0
    80002910:	fd1ff06f          	j	800028e0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002914:	00009797          	auipc	a5,0x9
    80002918:	f757b623          	sd	s5,-148(a5) # 8000b880 <_ZN9Scheduler13head_sleepingE>
    8000291c:	fb5ff06f          	j	800028d0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002920 <_ZN5RiscV10popSppSpieEv>:
    USER_INTERRUPT       = 0x0000000000000008UL,
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// returns to user mode from supervisor mode
void RiscV::popSppSpie() {
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813423          	sd	s0,8(sp)
    80002928:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000292c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002930:	10200073          	sret
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret

0000000080002940 <_ZN5RiscV22handle_supervisor_trapEv>:

void RiscV::handle_supervisor_trap() {
    80002940:	fb010113          	addi	sp,sp,-80
    80002944:	04113423          	sd	ra,72(sp)
    80002948:	04813023          	sd	s0,64(sp)
    8000294c:	02913c23          	sd	s1,56(sp)
    80002950:	03213823          	sd	s2,48(sp)
    80002954:	03313423          	sd	s3,40(sp)
    80002958:	03413023          	sd	s4,32(sp)
    8000295c:	01513c23          	sd	s5,24(sp)
    80002960:	05010413          	addi	s0,sp,80
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002964:	00050493          	mv	s1,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002968:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    8000296c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002970:	00068a13          	mv	s4,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002974:	00070a93          	mv	s5,a4

    printNumber(syscall_code);
    80002978:	00048513          	mv	a0,s1
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	d3c080e7          	jalr	-708(ra) # 800016b8 <printNumber>
    printNumber(a1);
    80002984:	00090513          	mv	a0,s2
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	d30080e7          	jalr	-720(ra) # 800016b8 <printNumber>
    printNumber(a2);
    80002990:	00098513          	mv	a0,s3
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	d24080e7          	jalr	-732(ra) # 800016b8 <printNumber>
    printNumber(a3);
    8000299c:	000a0513          	mv	a0,s4
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	d18080e7          	jalr	-744(ra) # 800016b8 <printNumber>
    printNumber(a4);
    800029a8:	000a8513          	mv	a0,s5
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	d0c080e7          	jalr	-756(ra) # 800016b8 <printNumber>
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    800029b4:	142027f3          	csrr	a5,scause
    800029b8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800029bc:	fb843703          	ld	a4,-72(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    800029c0:	fff00793          	li	a5,-1
    800029c4:	03f79793          	slli	a5,a5,0x3f
    800029c8:	00178793          	addi	a5,a5,1
    800029cc:	02f70463          	beq	a4,a5,800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    800029d0:	fff00793          	li	a5,-1
    800029d4:	03f79793          	slli	a5,a5,0x3f
    800029d8:	00978793          	addi	a5,a5,9
    800029dc:	02f70e63          	beq	a4,a5,80002a18 <_ZN5RiscV22handle_supervisor_trapEv+0xd8>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    800029e0:	00200793          	li	a5,2
    800029e4:	04f70063          	beq	a4,a5,80002a24 <_ZN5RiscV22handle_supervisor_trapEv+0xe4>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    800029e8:	ff870713          	addi	a4,a4,-8
    800029ec:	00100793          	li	a5,1
    800029f0:	04e7f063          	bgeu	a5,a4,80002a30 <_ZN5RiscV22handle_supervisor_trapEv+0xf0>
                break;
            default:
                break;
        }
    }
    800029f4:	04813083          	ld	ra,72(sp)
    800029f8:	04013403          	ld	s0,64(sp)
    800029fc:	03813483          	ld	s1,56(sp)
    80002a00:	03013903          	ld	s2,48(sp)
    80002a04:	02813983          	ld	s3,40(sp)
    80002a08:	02013a03          	ld	s4,32(sp)
    80002a0c:	01813a83          	ld	s5,24(sp)
    80002a10:	05010113          	addi	sp,sp,80
    80002a14:	00008067          	ret
        console_handler();
    80002a18:	00006097          	auipc	ra,0x6
    80002a1c:	9f8080e7          	jalr	-1544(ra) # 80008410 <console_handler>
    80002a20:	fd5ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002a24:	00100793          	li	a5,1
    80002a28:	00078513          	mv	a0,a5
        return;
    80002a2c:	fc9ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
        switch(syscall_code) {
    80002a30:	01300793          	li	a5,19
    80002a34:	fc97e0e3          	bltu	a5,s1,800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
    80002a38:	00249493          	slli	s1,s1,0x2
    80002a3c:	00006717          	auipc	a4,0x6
    80002a40:	5e470713          	addi	a4,a4,1508 # 80009020 <CONSOLE_STATUS+0x10>
    80002a44:	00e484b3          	add	s1,s1,a4
    80002a48:	0004a783          	lw	a5,0(s1)
    80002a4c:	00e787b3          	add	a5,a5,a4
    80002a50:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002a54:	00090513          	mv	a0,s2
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	848080e7          	jalr	-1976(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
                break;
    80002a60:	f95ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
                MemoryAllocator::mem_free((void *) a1);
    80002a64:	00090513          	mv	a0,s2
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	a24080e7          	jalr	-1500(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002a70:	f85ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002a74:	000a8693          	mv	a3,s5
    80002a78:	000a0613          	mv	a2,s4
    80002a7c:	00098593          	mv	a1,s3
    80002a80:	00090513          	mv	a0,s2
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	254080e7          	jalr	596(ra) # 80001cd8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002a8c:	f69ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
                TCB::thread_exit();
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	124080e7          	jalr	292(ra) # 80001bb4 <_ZN3TCB11thread_exitEv>
                break;
    80002a98:	f5dff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>
                TCB::dispatch();
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	fdc080e7          	jalr	-36(ra) # 80001a78 <_ZN3TCB8dispatchEv>
                break;
    80002aa4:	f51ff06f          	j	800029f4 <_ZN5RiscV22handle_supervisor_trapEv+0xb4>

0000000080002aa8 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00813423          	sd	s0,8(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002ab4:	00053503          	ld	a0,0(a0)
    80002ab8:	00050463          	beqz	a0,80002ac0 <_ZN10ThreadList9get_firstEv+0x18>
    80002abc:	00053503          	ld	a0,0(a0)
}
    80002ac0:	00813403          	ld	s0,8(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	bc0080e7          	jalr	-1088(ra) # 8000269c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	7bc080e7          	jalr	1980(ra) # 800022a0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002aec:	00813083          	ld	ra,8(sp)
    80002af0:	00013403          	ld	s0,0(sp)
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret

0000000080002afc <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	01213023          	sd	s2,0(sp)
    80002b10:	02010413          	addi	s0,sp,32
    80002b14:	00050493          	mv	s1,a0
    80002b18:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002b1c:	01000513          	li	a0,16
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	fac080e7          	jalr	-84(ra) # 80002acc <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80002b28:	01253023          	sd	s2,0(a0)
    80002b2c:	00053423          	sd	zero,8(a0)
    80002b30:	0004b783          	ld	a5,0(s1)
    80002b34:	02078263          	beqz	a5,80002b58 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002b38:	00a4b023          	sd	a0,0(s1)
    80002b3c:	00a4b423          	sd	a0,8(s1)
}
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	00013903          	ld	s2,0(sp)
    80002b50:	02010113          	addi	sp,sp,32
    80002b54:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002b58:	0084b783          	ld	a5,8(s1)
    80002b5c:	00a7b423          	sd	a0,8(a5)
    80002b60:	fddff06f          	j	80002b3c <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002b64 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002b64:	fe010113          	addi	sp,sp,-32
    80002b68:	00113c23          	sd	ra,24(sp)
    80002b6c:	00813823          	sd	s0,16(sp)
    80002b70:	00913423          	sd	s1,8(sp)
    80002b74:	01213023          	sd	s2,0(sp)
    80002b78:	02010413          	addi	s0,sp,32
    80002b7c:	00050493          	mv	s1,a0
    80002b80:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002b84:	01000513          	li	a0,16
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	f44080e7          	jalr	-188(ra) # 80002acc <_ZN10ThreadList4NodenwEm>
    80002b90:	01253023          	sd	s2,0(a0)
    80002b94:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002b98:	0004b783          	ld	a5,0(s1)
    80002b9c:	00f53423          	sd	a5,8(a0)
    head = node;
    80002ba0:	00a4b023          	sd	a0,0(s1)
}
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	00013903          	ld	s2,0(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret

0000000080002bbc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	00813023          	sd	s0,0(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	8c0080e7          	jalr	-1856(ra) # 8000248c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    80002bf8:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002bfc:	00053503          	ld	a0,0(a0)
    80002c00:	02050a63          	beqz	a0,80002c34 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002c04:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002c08:	00853703          	ld	a4,8(a0)
    80002c0c:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002c10:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	fa8080e7          	jalr	-88(ra) # 80002bbc <_ZN10ThreadList4NodedlEPv>
}
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret
    if (!head) return nullptr;
    80002c34:	00050493          	mv	s1,a0
    80002c38:	fe5ff06f          	j	80002c1c <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002c3c <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00113c23          	sd	ra,24(sp)
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	02010413          	addi	s0,sp,32
    80002c50:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002c54:	00048513          	mv	a0,s1
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	e50080e7          	jalr	-432(ra) # 80002aa8 <_ZN10ThreadList9get_firstEv>
    80002c60:	00050a63          	beqz	a0,80002c74 <_ZN10ThreadList4freeEv+0x38>
    80002c64:	00048513          	mv	a0,s1
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	f7c080e7          	jalr	-132(ra) # 80002be4 <_ZN10ThreadList12remove_firstEv>
    80002c70:	fe5ff06f          	j	80002c54 <_ZN10ThreadList4freeEv+0x18>
}
    80002c74:	01813083          	ld	ra,24(sp)
    80002c78:	01013403          	ld	s0,16(sp)
    80002c7c:	00813483          	ld	s1,8(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret

0000000080002c88 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	01213023          	sd	s2,0(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ca4:	00000913          	li	s2,0
    80002ca8:	00c0006f          	j	80002cb4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002cac:	ffffe097          	auipc	ra,0xffffe
    80002cb0:	624080e7          	jalr	1572(ra) # 800012d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002cb4:	ffffe097          	auipc	ra,0xffffe
    80002cb8:	71c080e7          	jalr	1820(ra) # 800013d0 <_Z4getcv>
    80002cbc:	0005059b          	sext.w	a1,a0
    80002cc0:	01b00793          	li	a5,27
    80002cc4:	02f58a63          	beq	a1,a5,80002cf8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002cc8:	0084b503          	ld	a0,8(s1)
    80002ccc:	00003097          	auipc	ra,0x3
    80002cd0:	384080e7          	jalr	900(ra) # 80006050 <_ZN6Buffer3putEi>
        i++;
    80002cd4:	0019071b          	addiw	a4,s2,1
    80002cd8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002cdc:	0004a683          	lw	a3,0(s1)
    80002ce0:	0026979b          	slliw	a5,a3,0x2
    80002ce4:	00d787bb          	addw	a5,a5,a3
    80002ce8:	0017979b          	slliw	a5,a5,0x1
    80002cec:	02f767bb          	remw	a5,a4,a5
    80002cf0:	fc0792e3          	bnez	a5,80002cb4 <_ZL16producerKeyboardPv+0x2c>
    80002cf4:	fb9ff06f          	j	80002cac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002cf8:	00100793          	li	a5,1
    80002cfc:	00009717          	auipc	a4,0x9
    80002d00:	b8f72623          	sw	a5,-1140(a4) # 8000b888 <_ZL9threadEnd>
    data->buffer->put('!');
    80002d04:	02100593          	li	a1,33
    80002d08:	0084b503          	ld	a0,8(s1)
    80002d0c:	00003097          	auipc	ra,0x3
    80002d10:	344080e7          	jalr	836(ra) # 80006050 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002d14:	0104b503          	ld	a0,16(s1)
    80002d18:	ffffe097          	auipc	ra,0xffffe
    80002d1c:	648080e7          	jalr	1608(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002d20:	01813083          	ld	ra,24(sp)
    80002d24:	01013403          	ld	s0,16(sp)
    80002d28:	00813483          	ld	s1,8(sp)
    80002d2c:	00013903          	ld	s2,0(sp)
    80002d30:	02010113          	addi	sp,sp,32
    80002d34:	00008067          	ret

0000000080002d38 <_ZL8producerPv>:

static void producer(void *arg) {
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	01213023          	sd	s2,0(sp)
    80002d4c:	02010413          	addi	s0,sp,32
    80002d50:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d54:	00000913          	li	s2,0
    80002d58:	00c0006f          	j	80002d64 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d5c:	ffffe097          	auipc	ra,0xffffe
    80002d60:	574080e7          	jalr	1396(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002d64:	00009797          	auipc	a5,0x9
    80002d68:	b247a783          	lw	a5,-1244(a5) # 8000b888 <_ZL9threadEnd>
    80002d6c:	02079e63          	bnez	a5,80002da8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002d70:	0004a583          	lw	a1,0(s1)
    80002d74:	0305859b          	addiw	a1,a1,48
    80002d78:	0084b503          	ld	a0,8(s1)
    80002d7c:	00003097          	auipc	ra,0x3
    80002d80:	2d4080e7          	jalr	724(ra) # 80006050 <_ZN6Buffer3putEi>
        i++;
    80002d84:	0019071b          	addiw	a4,s2,1
    80002d88:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d8c:	0004a683          	lw	a3,0(s1)
    80002d90:	0026979b          	slliw	a5,a3,0x2
    80002d94:	00d787bb          	addw	a5,a5,a3
    80002d98:	0017979b          	slliw	a5,a5,0x1
    80002d9c:	02f767bb          	remw	a5,a4,a5
    80002da0:	fc0792e3          	bnez	a5,80002d64 <_ZL8producerPv+0x2c>
    80002da4:	fb9ff06f          	j	80002d5c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002da8:	0104b503          	ld	a0,16(s1)
    80002dac:	ffffe097          	auipc	ra,0xffffe
    80002db0:	5b4080e7          	jalr	1460(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	00013903          	ld	s2,0(sp)
    80002dc4:	02010113          	addi	sp,sp,32
    80002dc8:	00008067          	ret

0000000080002dcc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002dcc:	fd010113          	addi	sp,sp,-48
    80002dd0:	02113423          	sd	ra,40(sp)
    80002dd4:	02813023          	sd	s0,32(sp)
    80002dd8:	00913c23          	sd	s1,24(sp)
    80002ddc:	01213823          	sd	s2,16(sp)
    80002de0:	01313423          	sd	s3,8(sp)
    80002de4:	03010413          	addi	s0,sp,48
    80002de8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002dec:	00000993          	li	s3,0
    80002df0:	01c0006f          	j	80002e0c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002df4:	ffffe097          	auipc	ra,0xffffe
    80002df8:	4dc080e7          	jalr	1244(ra) # 800012d0 <_Z15thread_dispatchv>
    80002dfc:	0500006f          	j	80002e4c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002e00:	00a00513          	li	a0,10
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	618080e7          	jalr	1560(ra) # 8000141c <_Z4putcc>
    while (!threadEnd) {
    80002e0c:	00009797          	auipc	a5,0x9
    80002e10:	a7c7a783          	lw	a5,-1412(a5) # 8000b888 <_ZL9threadEnd>
    80002e14:	06079063          	bnez	a5,80002e74 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002e18:	00893503          	ld	a0,8(s2)
    80002e1c:	00003097          	auipc	ra,0x3
    80002e20:	2c4080e7          	jalr	708(ra) # 800060e0 <_ZN6Buffer3getEv>
        i++;
    80002e24:	0019849b          	addiw	s1,s3,1
    80002e28:	0004899b          	sext.w	s3,s1
        putc(key);
    80002e2c:	0ff57513          	andi	a0,a0,255
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	5ec080e7          	jalr	1516(ra) # 8000141c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002e38:	00092703          	lw	a4,0(s2)
    80002e3c:	0027179b          	slliw	a5,a4,0x2
    80002e40:	00e787bb          	addw	a5,a5,a4
    80002e44:	02f4e7bb          	remw	a5,s1,a5
    80002e48:	fa0786e3          	beqz	a5,80002df4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002e4c:	05000793          	li	a5,80
    80002e50:	02f4e4bb          	remw	s1,s1,a5
    80002e54:	fa049ce3          	bnez	s1,80002e0c <_ZL8consumerPv+0x40>
    80002e58:	fa9ff06f          	j	80002e00 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002e5c:	00893503          	ld	a0,8(s2)
    80002e60:	00003097          	auipc	ra,0x3
    80002e64:	280080e7          	jalr	640(ra) # 800060e0 <_ZN6Buffer3getEv>
        putc(key);
    80002e68:	0ff57513          	andi	a0,a0,255
    80002e6c:	ffffe097          	auipc	ra,0xffffe
    80002e70:	5b0080e7          	jalr	1456(ra) # 8000141c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002e74:	00893503          	ld	a0,8(s2)
    80002e78:	00003097          	auipc	ra,0x3
    80002e7c:	2f4080e7          	jalr	756(ra) # 8000616c <_ZN6Buffer6getCntEv>
    80002e80:	fca04ee3          	bgtz	a0,80002e5c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002e84:	01093503          	ld	a0,16(s2)
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	4d8080e7          	jalr	1240(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002e90:	02813083          	ld	ra,40(sp)
    80002e94:	02013403          	ld	s0,32(sp)
    80002e98:	01813483          	ld	s1,24(sp)
    80002e9c:	01013903          	ld	s2,16(sp)
    80002ea0:	00813983          	ld	s3,8(sp)
    80002ea4:	03010113          	addi	sp,sp,48
    80002ea8:	00008067          	ret

0000000080002eac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002eac:	f9010113          	addi	sp,sp,-112
    80002eb0:	06113423          	sd	ra,104(sp)
    80002eb4:	06813023          	sd	s0,96(sp)
    80002eb8:	04913c23          	sd	s1,88(sp)
    80002ebc:	05213823          	sd	s2,80(sp)
    80002ec0:	05313423          	sd	s3,72(sp)
    80002ec4:	05413023          	sd	s4,64(sp)
    80002ec8:	03513c23          	sd	s5,56(sp)
    80002ecc:	03613823          	sd	s6,48(sp)
    80002ed0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002ed4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002ed8:	00006517          	auipc	a0,0x6
    80002edc:	19850513          	addi	a0,a0,408 # 80009070 <CONSOLE_STATUS+0x60>
    80002ee0:	00002097          	auipc	ra,0x2
    80002ee4:	220080e7          	jalr	544(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80002ee8:	01e00593          	li	a1,30
    80002eec:	fa040493          	addi	s1,s0,-96
    80002ef0:	00048513          	mv	a0,s1
    80002ef4:	00002097          	auipc	ra,0x2
    80002ef8:	294080e7          	jalr	660(ra) # 80005188 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00002097          	auipc	ra,0x2
    80002f04:	360080e7          	jalr	864(ra) # 80005260 <_Z11stringToIntPKc>
    80002f08:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002f0c:	00006517          	auipc	a0,0x6
    80002f10:	18450513          	addi	a0,a0,388 # 80009090 <CONSOLE_STATUS+0x80>
    80002f14:	00002097          	auipc	ra,0x2
    80002f18:	1ec080e7          	jalr	492(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80002f1c:	01e00593          	li	a1,30
    80002f20:	00048513          	mv	a0,s1
    80002f24:	00002097          	auipc	ra,0x2
    80002f28:	264080e7          	jalr	612(ra) # 80005188 <_Z9getStringPci>
    n = stringToInt(input);
    80002f2c:	00048513          	mv	a0,s1
    80002f30:	00002097          	auipc	ra,0x2
    80002f34:	330080e7          	jalr	816(ra) # 80005260 <_Z11stringToIntPKc>
    80002f38:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002f3c:	00006517          	auipc	a0,0x6
    80002f40:	17450513          	addi	a0,a0,372 # 800090b0 <CONSOLE_STATUS+0xa0>
    80002f44:	00002097          	auipc	ra,0x2
    80002f48:	1bc080e7          	jalr	444(ra) # 80005100 <_Z11printStringPKc>
    80002f4c:	00000613          	li	a2,0
    80002f50:	00a00593          	li	a1,10
    80002f54:	00090513          	mv	a0,s2
    80002f58:	00002097          	auipc	ra,0x2
    80002f5c:	358080e7          	jalr	856(ra) # 800052b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002f60:	00006517          	auipc	a0,0x6
    80002f64:	16850513          	addi	a0,a0,360 # 800090c8 <CONSOLE_STATUS+0xb8>
    80002f68:	00002097          	auipc	ra,0x2
    80002f6c:	198080e7          	jalr	408(ra) # 80005100 <_Z11printStringPKc>
    80002f70:	00000613          	li	a2,0
    80002f74:	00a00593          	li	a1,10
    80002f78:	00048513          	mv	a0,s1
    80002f7c:	00002097          	auipc	ra,0x2
    80002f80:	334080e7          	jalr	820(ra) # 800052b0 <_Z8printIntiii>
    printString(".\n");
    80002f84:	00006517          	auipc	a0,0x6
    80002f88:	15c50513          	addi	a0,a0,348 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002f8c:	00002097          	auipc	ra,0x2
    80002f90:	174080e7          	jalr	372(ra) # 80005100 <_Z11printStringPKc>
    if(threadNum > n) {
    80002f94:	0324c463          	blt	s1,s2,80002fbc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002f98:	03205c63          	blez	s2,80002fd0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002f9c:	03800513          	li	a0,56
    80002fa0:	fffff097          	auipc	ra,0xfffff
    80002fa4:	ec8080e7          	jalr	-312(ra) # 80001e68 <_Znwm>
    80002fa8:	00050a13          	mv	s4,a0
    80002fac:	00048593          	mv	a1,s1
    80002fb0:	00003097          	auipc	ra,0x3
    80002fb4:	004080e7          	jalr	4(ra) # 80005fb4 <_ZN6BufferC1Ei>
    80002fb8:	0300006f          	j	80002fe8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002fbc:	00006517          	auipc	a0,0x6
    80002fc0:	12c50513          	addi	a0,a0,300 # 800090e8 <CONSOLE_STATUS+0xd8>
    80002fc4:	00002097          	auipc	ra,0x2
    80002fc8:	13c080e7          	jalr	316(ra) # 80005100 <_Z11printStringPKc>
        return;
    80002fcc:	0140006f          	j	80002fe0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002fd0:	00006517          	auipc	a0,0x6
    80002fd4:	15850513          	addi	a0,a0,344 # 80009128 <CONSOLE_STATUS+0x118>
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	128080e7          	jalr	296(ra) # 80005100 <_Z11printStringPKc>
        return;
    80002fe0:	000b0113          	mv	sp,s6
    80002fe4:	1500006f          	j	80003134 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002fe8:	00000593          	li	a1,0
    80002fec:	00009517          	auipc	a0,0x9
    80002ff0:	8a450513          	addi	a0,a0,-1884 # 8000b890 <_ZL10waitForAll>
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	318080e7          	jalr	792(ra) # 8000130c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002ffc:	00391793          	slli	a5,s2,0x3
    80003000:	00f78793          	addi	a5,a5,15
    80003004:	ff07f793          	andi	a5,a5,-16
    80003008:	40f10133          	sub	sp,sp,a5
    8000300c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003010:	0019071b          	addiw	a4,s2,1
    80003014:	00171793          	slli	a5,a4,0x1
    80003018:	00e787b3          	add	a5,a5,a4
    8000301c:	00379793          	slli	a5,a5,0x3
    80003020:	00f78793          	addi	a5,a5,15
    80003024:	ff07f793          	andi	a5,a5,-16
    80003028:	40f10133          	sub	sp,sp,a5
    8000302c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003030:	00191613          	slli	a2,s2,0x1
    80003034:	012607b3          	add	a5,a2,s2
    80003038:	00379793          	slli	a5,a5,0x3
    8000303c:	00f987b3          	add	a5,s3,a5
    80003040:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003044:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003048:	00009717          	auipc	a4,0x9
    8000304c:	84873703          	ld	a4,-1976(a4) # 8000b890 <_ZL10waitForAll>
    80003050:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003054:	00078613          	mv	a2,a5
    80003058:	00000597          	auipc	a1,0x0
    8000305c:	d7458593          	addi	a1,a1,-652 # 80002dcc <_ZL8consumerPv>
    80003060:	f9840513          	addi	a0,s0,-104
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	198080e7          	jalr	408(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000306c:	00000493          	li	s1,0
    80003070:	0280006f          	j	80003098 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003074:	00000597          	auipc	a1,0x0
    80003078:	c1458593          	addi	a1,a1,-1004 # 80002c88 <_ZL16producerKeyboardPv>
                      data + i);
    8000307c:	00179613          	slli	a2,a5,0x1
    80003080:	00f60633          	add	a2,a2,a5
    80003084:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003088:	00c98633          	add	a2,s3,a2
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	170080e7          	jalr	368(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003094:	0014849b          	addiw	s1,s1,1
    80003098:	0524d263          	bge	s1,s2,800030dc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000309c:	00149793          	slli	a5,s1,0x1
    800030a0:	009787b3          	add	a5,a5,s1
    800030a4:	00379793          	slli	a5,a5,0x3
    800030a8:	00f987b3          	add	a5,s3,a5
    800030ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800030b0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800030b4:	00008717          	auipc	a4,0x8
    800030b8:	7dc73703          	ld	a4,2012(a4) # 8000b890 <_ZL10waitForAll>
    800030bc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800030c0:	00048793          	mv	a5,s1
    800030c4:	00349513          	slli	a0,s1,0x3
    800030c8:	00aa8533          	add	a0,s5,a0
    800030cc:	fa9054e3          	blez	s1,80003074 <_Z22producerConsumer_C_APIv+0x1c8>
    800030d0:	00000597          	auipc	a1,0x0
    800030d4:	c6858593          	addi	a1,a1,-920 # 80002d38 <_ZL8producerPv>
    800030d8:	fa5ff06f          	j	8000307c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	1f4080e7          	jalr	500(ra) # 800012d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800030e4:	00000493          	li	s1,0
    800030e8:	00994e63          	blt	s2,s1,80003104 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800030ec:	00008517          	auipc	a0,0x8
    800030f0:	7a453503          	ld	a0,1956(a0) # 8000b890 <_ZL10waitForAll>
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	250080e7          	jalr	592(ra) # 80001344 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800030fc:	0014849b          	addiw	s1,s1,1
    80003100:	fe9ff06f          	j	800030e8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003104:	00008517          	auipc	a0,0x8
    80003108:	78c53503          	ld	a0,1932(a0) # 8000b890 <_ZL10waitForAll>
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	21c080e7          	jalr	540(ra) # 80001328 <_Z9sem_closeP3Sem>
    delete buffer;
    80003114:	000a0e63          	beqz	s4,80003130 <_Z22producerConsumer_C_APIv+0x284>
    80003118:	000a0513          	mv	a0,s4
    8000311c:	00003097          	auipc	ra,0x3
    80003120:	0d8080e7          	jalr	216(ra) # 800061f4 <_ZN6BufferD1Ev>
    80003124:	000a0513          	mv	a0,s4
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	d68080e7          	jalr	-664(ra) # 80001e90 <_ZdlPv>
    80003130:	000b0113          	mv	sp,s6

}
    80003134:	f9040113          	addi	sp,s0,-112
    80003138:	06813083          	ld	ra,104(sp)
    8000313c:	06013403          	ld	s0,96(sp)
    80003140:	05813483          	ld	s1,88(sp)
    80003144:	05013903          	ld	s2,80(sp)
    80003148:	04813983          	ld	s3,72(sp)
    8000314c:	04013a03          	ld	s4,64(sp)
    80003150:	03813a83          	ld	s5,56(sp)
    80003154:	03013b03          	ld	s6,48(sp)
    80003158:	07010113          	addi	sp,sp,112
    8000315c:	00008067          	ret
    80003160:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003164:	000a0513          	mv	a0,s4
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	d28080e7          	jalr	-728(ra) # 80001e90 <_ZdlPv>
    80003170:	00048513          	mv	a0,s1
    80003174:	0000a097          	auipc	ra,0xa
    80003178:	834080e7          	jalr	-1996(ra) # 8000c9a8 <_Unwind_Resume>

000000008000317c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000317c:	fe010113          	addi	sp,sp,-32
    80003180:	00113c23          	sd	ra,24(sp)
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00913423          	sd	s1,8(sp)
    8000318c:	01213023          	sd	s2,0(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003198:	00100793          	li	a5,1
    8000319c:	02a7f863          	bgeu	a5,a0,800031cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800031a0:	00a00793          	li	a5,10
    800031a4:	02f577b3          	remu	a5,a0,a5
    800031a8:	02078e63          	beqz	a5,800031e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800031ac:	fff48513          	addi	a0,s1,-1
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	fcc080e7          	jalr	-52(ra) # 8000317c <_ZL9fibonaccim>
    800031b8:	00050913          	mv	s2,a0
    800031bc:	ffe48513          	addi	a0,s1,-2
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	fbc080e7          	jalr	-68(ra) # 8000317c <_ZL9fibonaccim>
    800031c8:	00a90533          	add	a0,s2,a0
}
    800031cc:	01813083          	ld	ra,24(sp)
    800031d0:	01013403          	ld	s0,16(sp)
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	00013903          	ld	s2,0(sp)
    800031dc:	02010113          	addi	sp,sp,32
    800031e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800031e4:	ffffe097          	auipc	ra,0xffffe
    800031e8:	0ec080e7          	jalr	236(ra) # 800012d0 <_Z15thread_dispatchv>
    800031ec:	fc1ff06f          	j	800031ac <_ZL9fibonaccim+0x30>

00000000800031f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	01213023          	sd	s2,0(sp)
    80003204:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003208:	00000913          	li	s2,0
    8000320c:	0380006f          	j	80003244 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	0c0080e7          	jalr	192(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003218:	00148493          	addi	s1,s1,1
    8000321c:	000027b7          	lui	a5,0x2
    80003220:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003224:	0097ee63          	bltu	a5,s1,80003240 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003228:	00000713          	li	a4,0
    8000322c:	000077b7          	lui	a5,0x7
    80003230:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003234:	fce7eee3          	bltu	a5,a4,80003210 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003238:	00170713          	addi	a4,a4,1
    8000323c:	ff1ff06f          	j	8000322c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003240:	00190913          	addi	s2,s2,1
    80003244:	00900793          	li	a5,9
    80003248:	0527e063          	bltu	a5,s2,80003288 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000324c:	00006517          	auipc	a0,0x6
    80003250:	f0c50513          	addi	a0,a0,-244 # 80009158 <CONSOLE_STATUS+0x148>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	eac080e7          	jalr	-340(ra) # 80005100 <_Z11printStringPKc>
    8000325c:	00000613          	li	a2,0
    80003260:	00a00593          	li	a1,10
    80003264:	0009051b          	sext.w	a0,s2
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	048080e7          	jalr	72(ra) # 800052b0 <_Z8printIntiii>
    80003270:	00006517          	auipc	a0,0x6
    80003274:	e3850513          	addi	a0,a0,-456 # 800090a8 <CONSOLE_STATUS+0x98>
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	e88080e7          	jalr	-376(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003280:	00000493          	li	s1,0
    80003284:	f99ff06f          	j	8000321c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003288:	00006517          	auipc	a0,0x6
    8000328c:	ed850513          	addi	a0,a0,-296 # 80009160 <CONSOLE_STATUS+0x150>
    80003290:	00002097          	auipc	ra,0x2
    80003294:	e70080e7          	jalr	-400(ra) # 80005100 <_Z11printStringPKc>
    finishedA = true;
    80003298:	00100793          	li	a5,1
    8000329c:	00008717          	auipc	a4,0x8
    800032a0:	5ef70e23          	sb	a5,1532(a4) # 8000b898 <_ZL9finishedA>
}
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	00013903          	ld	s2,0(sp)
    800032b4:	02010113          	addi	sp,sp,32
    800032b8:	00008067          	ret

00000000800032bc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00113c23          	sd	ra,24(sp)
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	01213023          	sd	s2,0(sp)
    800032d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800032d4:	00000913          	li	s2,0
    800032d8:	0380006f          	j	80003310 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	ff4080e7          	jalr	-12(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032e4:	00148493          	addi	s1,s1,1
    800032e8:	000027b7          	lui	a5,0x2
    800032ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032f0:	0097ee63          	bltu	a5,s1,8000330c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032f4:	00000713          	li	a4,0
    800032f8:	000077b7          	lui	a5,0x7
    800032fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003300:	fce7eee3          	bltu	a5,a4,800032dc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003304:	00170713          	addi	a4,a4,1
    80003308:	ff1ff06f          	j	800032f8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000330c:	00190913          	addi	s2,s2,1
    80003310:	00f00793          	li	a5,15
    80003314:	0527e063          	bltu	a5,s2,80003354 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003318:	00006517          	auipc	a0,0x6
    8000331c:	e5850513          	addi	a0,a0,-424 # 80009170 <CONSOLE_STATUS+0x160>
    80003320:	00002097          	auipc	ra,0x2
    80003324:	de0080e7          	jalr	-544(ra) # 80005100 <_Z11printStringPKc>
    80003328:	00000613          	li	a2,0
    8000332c:	00a00593          	li	a1,10
    80003330:	0009051b          	sext.w	a0,s2
    80003334:	00002097          	auipc	ra,0x2
    80003338:	f7c080e7          	jalr	-132(ra) # 800052b0 <_Z8printIntiii>
    8000333c:	00006517          	auipc	a0,0x6
    80003340:	d6c50513          	addi	a0,a0,-660 # 800090a8 <CONSOLE_STATUS+0x98>
    80003344:	00002097          	auipc	ra,0x2
    80003348:	dbc080e7          	jalr	-580(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000334c:	00000493          	li	s1,0
    80003350:	f99ff06f          	j	800032e8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003354:	00006517          	auipc	a0,0x6
    80003358:	e2450513          	addi	a0,a0,-476 # 80009178 <CONSOLE_STATUS+0x168>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	da4080e7          	jalr	-604(ra) # 80005100 <_Z11printStringPKc>
    finishedB = true;
    80003364:	00100793          	li	a5,1
    80003368:	00008717          	auipc	a4,0x8
    8000336c:	52f708a3          	sb	a5,1329(a4) # 8000b899 <_ZL9finishedB>
    thread_dispatch();
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	f60080e7          	jalr	-160(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80003378:	01813083          	ld	ra,24(sp)
    8000337c:	01013403          	ld	s0,16(sp)
    80003380:	00813483          	ld	s1,8(sp)
    80003384:	00013903          	ld	s2,0(sp)
    80003388:	02010113          	addi	sp,sp,32
    8000338c:	00008067          	ret

0000000080003390 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003390:	fe010113          	addi	sp,sp,-32
    80003394:	00113c23          	sd	ra,24(sp)
    80003398:	00813823          	sd	s0,16(sp)
    8000339c:	00913423          	sd	s1,8(sp)
    800033a0:	01213023          	sd	s2,0(sp)
    800033a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800033a8:	00000493          	li	s1,0
    800033ac:	0400006f          	j	800033ec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800033b0:	00006517          	auipc	a0,0x6
    800033b4:	dd850513          	addi	a0,a0,-552 # 80009188 <CONSOLE_STATUS+0x178>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	d48080e7          	jalr	-696(ra) # 80005100 <_Z11printStringPKc>
    800033c0:	00000613          	li	a2,0
    800033c4:	00a00593          	li	a1,10
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	ee4080e7          	jalr	-284(ra) # 800052b0 <_Z8printIntiii>
    800033d4:	00006517          	auipc	a0,0x6
    800033d8:	cd450513          	addi	a0,a0,-812 # 800090a8 <CONSOLE_STATUS+0x98>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	d24080e7          	jalr	-732(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800033e4:	0014849b          	addiw	s1,s1,1
    800033e8:	0ff4f493          	andi	s1,s1,255
    800033ec:	00200793          	li	a5,2
    800033f0:	fc97f0e3          	bgeu	a5,s1,800033b0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800033f4:	00006517          	auipc	a0,0x6
    800033f8:	d9c50513          	addi	a0,a0,-612 # 80009190 <CONSOLE_STATUS+0x180>
    800033fc:	00002097          	auipc	ra,0x2
    80003400:	d04080e7          	jalr	-764(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003404:	00700313          	li	t1,7
    thread_dispatch();
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	ec8080e7          	jalr	-312(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003410:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003414:	00006517          	auipc	a0,0x6
    80003418:	d8c50513          	addi	a0,a0,-628 # 800091a0 <CONSOLE_STATUS+0x190>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	ce4080e7          	jalr	-796(ra) # 80005100 <_Z11printStringPKc>
    80003424:	00000613          	li	a2,0
    80003428:	00a00593          	li	a1,10
    8000342c:	0009051b          	sext.w	a0,s2
    80003430:	00002097          	auipc	ra,0x2
    80003434:	e80080e7          	jalr	-384(ra) # 800052b0 <_Z8printIntiii>
    80003438:	00006517          	auipc	a0,0x6
    8000343c:	c7050513          	addi	a0,a0,-912 # 800090a8 <CONSOLE_STATUS+0x98>
    80003440:	00002097          	auipc	ra,0x2
    80003444:	cc0080e7          	jalr	-832(ra) # 80005100 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003448:	00c00513          	li	a0,12
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	d30080e7          	jalr	-720(ra) # 8000317c <_ZL9fibonaccim>
    80003454:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003458:	00006517          	auipc	a0,0x6
    8000345c:	d5050513          	addi	a0,a0,-688 # 800091a8 <CONSOLE_STATUS+0x198>
    80003460:	00002097          	auipc	ra,0x2
    80003464:	ca0080e7          	jalr	-864(ra) # 80005100 <_Z11printStringPKc>
    80003468:	00000613          	li	a2,0
    8000346c:	00a00593          	li	a1,10
    80003470:	0009051b          	sext.w	a0,s2
    80003474:	00002097          	auipc	ra,0x2
    80003478:	e3c080e7          	jalr	-452(ra) # 800052b0 <_Z8printIntiii>
    8000347c:	00006517          	auipc	a0,0x6
    80003480:	c2c50513          	addi	a0,a0,-980 # 800090a8 <CONSOLE_STATUS+0x98>
    80003484:	00002097          	auipc	ra,0x2
    80003488:	c7c080e7          	jalr	-900(ra) # 80005100 <_Z11printStringPKc>
    8000348c:	0400006f          	j	800034cc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003490:	00006517          	auipc	a0,0x6
    80003494:	cf850513          	addi	a0,a0,-776 # 80009188 <CONSOLE_STATUS+0x178>
    80003498:	00002097          	auipc	ra,0x2
    8000349c:	c68080e7          	jalr	-920(ra) # 80005100 <_Z11printStringPKc>
    800034a0:	00000613          	li	a2,0
    800034a4:	00a00593          	li	a1,10
    800034a8:	00048513          	mv	a0,s1
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	e04080e7          	jalr	-508(ra) # 800052b0 <_Z8printIntiii>
    800034b4:	00006517          	auipc	a0,0x6
    800034b8:	bf450513          	addi	a0,a0,-1036 # 800090a8 <CONSOLE_STATUS+0x98>
    800034bc:	00002097          	auipc	ra,0x2
    800034c0:	c44080e7          	jalr	-956(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800034c4:	0014849b          	addiw	s1,s1,1
    800034c8:	0ff4f493          	andi	s1,s1,255
    800034cc:	00500793          	li	a5,5
    800034d0:	fc97f0e3          	bgeu	a5,s1,80003490 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	c8c50513          	addi	a0,a0,-884 # 80009160 <CONSOLE_STATUS+0x150>
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	c24080e7          	jalr	-988(ra) # 80005100 <_Z11printStringPKc>
    finishedC = true;
    800034e4:	00100793          	li	a5,1
    800034e8:	00008717          	auipc	a4,0x8
    800034ec:	3af70923          	sb	a5,946(a4) # 8000b89a <_ZL9finishedC>
    thread_dispatch();
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	de0080e7          	jalr	-544(ra) # 800012d0 <_Z15thread_dispatchv>
}
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	00013903          	ld	s2,0(sp)
    80003508:	02010113          	addi	sp,sp,32
    8000350c:	00008067          	ret

0000000080003510 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	01213023          	sd	s2,0(sp)
    80003524:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003528:	00a00493          	li	s1,10
    8000352c:	0400006f          	j	8000356c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	c8850513          	addi	a0,a0,-888 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	bc8080e7          	jalr	-1080(ra) # 80005100 <_Z11printStringPKc>
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	00048513          	mv	a0,s1
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	d64080e7          	jalr	-668(ra) # 800052b0 <_Z8printIntiii>
    80003554:	00006517          	auipc	a0,0x6
    80003558:	b5450513          	addi	a0,a0,-1196 # 800090a8 <CONSOLE_STATUS+0x98>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	ba4080e7          	jalr	-1116(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003564:	0014849b          	addiw	s1,s1,1
    80003568:	0ff4f493          	andi	s1,s1,255
    8000356c:	00c00793          	li	a5,12
    80003570:	fc97f0e3          	bgeu	a5,s1,80003530 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	c4c50513          	addi	a0,a0,-948 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	b84080e7          	jalr	-1148(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003584:	00500313          	li	t1,5
    thread_dispatch();
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	d48080e7          	jalr	-696(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003590:	01000513          	li	a0,16
    80003594:	00000097          	auipc	ra,0x0
    80003598:	be8080e7          	jalr	-1048(ra) # 8000317c <_ZL9fibonaccim>
    8000359c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	c3050513          	addi	a0,a0,-976 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	b58080e7          	jalr	-1192(ra) # 80005100 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	0009051b          	sext.w	a0,s2
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	cf4080e7          	jalr	-780(ra) # 800052b0 <_Z8printIntiii>
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	ae450513          	addi	a0,a0,-1308 # 800090a8 <CONSOLE_STATUS+0x98>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	b34080e7          	jalr	-1228(ra) # 80005100 <_Z11printStringPKc>
    800035d4:	0400006f          	j	80003614 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035d8:	00006517          	auipc	a0,0x6
    800035dc:	be050513          	addi	a0,a0,-1056 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800035e0:	00002097          	auipc	ra,0x2
    800035e4:	b20080e7          	jalr	-1248(ra) # 80005100 <_Z11printStringPKc>
    800035e8:	00000613          	li	a2,0
    800035ec:	00a00593          	li	a1,10
    800035f0:	00048513          	mv	a0,s1
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	cbc080e7          	jalr	-836(ra) # 800052b0 <_Z8printIntiii>
    800035fc:	00006517          	auipc	a0,0x6
    80003600:	aac50513          	addi	a0,a0,-1364 # 800090a8 <CONSOLE_STATUS+0x98>
    80003604:	00002097          	auipc	ra,0x2
    80003608:	afc080e7          	jalr	-1284(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000360c:	0014849b          	addiw	s1,s1,1
    80003610:	0ff4f493          	andi	s1,s1,255
    80003614:	00f00793          	li	a5,15
    80003618:	fc97f0e3          	bgeu	a5,s1,800035d8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	bc450513          	addi	a0,a0,-1084 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	adc080e7          	jalr	-1316(ra) # 80005100 <_Z11printStringPKc>
    finishedD = true;
    8000362c:	00100793          	li	a5,1
    80003630:	00008717          	auipc	a4,0x8
    80003634:	26f705a3          	sb	a5,619(a4) # 8000b89b <_ZL9finishedD>
    thread_dispatch();
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	c98080e7          	jalr	-872(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003658:	fc010113          	addi	sp,sp,-64
    8000365c:	02113c23          	sd	ra,56(sp)
    80003660:	02813823          	sd	s0,48(sp)
    80003664:	02913423          	sd	s1,40(sp)
    80003668:	03213023          	sd	s2,32(sp)
    8000366c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003670:	02000513          	li	a0,32
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	7f4080e7          	jalr	2036(ra) # 80001e68 <_Znwm>
    8000367c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003680:	fffff097          	auipc	ra,0xfffff
    80003684:	978080e7          	jalr	-1672(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003688:	00008797          	auipc	a5,0x8
    8000368c:	fa878793          	addi	a5,a5,-88 # 8000b630 <_ZTV7WorkerA+0x10>
    80003690:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003694:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003698:	00006517          	auipc	a0,0x6
    8000369c:	b5850513          	addi	a0,a0,-1192 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	a60080e7          	jalr	-1440(ra) # 80005100 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800036a8:	02000513          	li	a0,32
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	7bc080e7          	jalr	1980(ra) # 80001e68 <_Znwm>
    800036b4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	940080e7          	jalr	-1728(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    800036c0:	00008797          	auipc	a5,0x8
    800036c4:	f9878793          	addi	a5,a5,-104 # 8000b658 <_ZTV7WorkerB+0x10>
    800036c8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800036cc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800036d0:	00006517          	auipc	a0,0x6
    800036d4:	b3850513          	addi	a0,a0,-1224 # 80009208 <CONSOLE_STATUS+0x1f8>
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	a28080e7          	jalr	-1496(ra) # 80005100 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800036e0:	02000513          	li	a0,32
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	784080e7          	jalr	1924(ra) # 80001e68 <_Znwm>
    800036ec:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	908080e7          	jalr	-1784(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    800036f8:	00008797          	auipc	a5,0x8
    800036fc:	f8878793          	addi	a5,a5,-120 # 8000b680 <_ZTV7WorkerC+0x10>
    80003700:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003704:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003708:	00006517          	auipc	a0,0x6
    8000370c:	b1850513          	addi	a0,a0,-1256 # 80009220 <CONSOLE_STATUS+0x210>
    80003710:	00002097          	auipc	ra,0x2
    80003714:	9f0080e7          	jalr	-1552(ra) # 80005100 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003718:	02000513          	li	a0,32
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	74c080e7          	jalr	1868(ra) # 80001e68 <_Znwm>
    80003724:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	8d0080e7          	jalr	-1840(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003730:	00008797          	auipc	a5,0x8
    80003734:	f7878793          	addi	a5,a5,-136 # 8000b6a8 <_ZTV7WorkerD+0x10>
    80003738:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000373c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003740:	00006517          	auipc	a0,0x6
    80003744:	af850513          	addi	a0,a0,-1288 # 80009238 <CONSOLE_STATUS+0x228>
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	9b8080e7          	jalr	-1608(ra) # 80005100 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003750:	00000493          	li	s1,0
    80003754:	00300793          	li	a5,3
    80003758:	0297c663          	blt	a5,s1,80003784 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000375c:	00349793          	slli	a5,s1,0x3
    80003760:	fe040713          	addi	a4,s0,-32
    80003764:	00f707b3          	add	a5,a4,a5
    80003768:	fe07b503          	ld	a0,-32(a5)
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	808080e7          	jalr	-2040(ra) # 80001f74 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003774:	0014849b          	addiw	s1,s1,1
    80003778:	fddff06f          	j	80003754 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	828080e7          	jalr	-2008(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003784:	00008797          	auipc	a5,0x8
    80003788:	1147c783          	lbu	a5,276(a5) # 8000b898 <_ZL9finishedA>
    8000378c:	fe0788e3          	beqz	a5,8000377c <_Z20Threads_CPP_API_testv+0x124>
    80003790:	00008797          	auipc	a5,0x8
    80003794:	1097c783          	lbu	a5,265(a5) # 8000b899 <_ZL9finishedB>
    80003798:	fe0782e3          	beqz	a5,8000377c <_Z20Threads_CPP_API_testv+0x124>
    8000379c:	00008797          	auipc	a5,0x8
    800037a0:	0fe7c783          	lbu	a5,254(a5) # 8000b89a <_ZL9finishedC>
    800037a4:	fc078ce3          	beqz	a5,8000377c <_Z20Threads_CPP_API_testv+0x124>
    800037a8:	00008797          	auipc	a5,0x8
    800037ac:	0f37c783          	lbu	a5,243(a5) # 8000b89b <_ZL9finishedD>
    800037b0:	fc0786e3          	beqz	a5,8000377c <_Z20Threads_CPP_API_testv+0x124>
    800037b4:	fc040493          	addi	s1,s0,-64
    800037b8:	0080006f          	j	800037c0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800037bc:	00848493          	addi	s1,s1,8
    800037c0:	fe040793          	addi	a5,s0,-32
    800037c4:	08f48663          	beq	s1,a5,80003850 <_Z20Threads_CPP_API_testv+0x1f8>
    800037c8:	0004b503          	ld	a0,0(s1)
    800037cc:	fe0508e3          	beqz	a0,800037bc <_Z20Threads_CPP_API_testv+0x164>
    800037d0:	00053783          	ld	a5,0(a0)
    800037d4:	0087b783          	ld	a5,8(a5)
    800037d8:	000780e7          	jalr	a5
    800037dc:	fe1ff06f          	j	800037bc <_Z20Threads_CPP_API_testv+0x164>
    800037e0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800037e4:	00048513          	mv	a0,s1
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	6a8080e7          	jalr	1704(ra) # 80001e90 <_ZdlPv>
    800037f0:	00090513          	mv	a0,s2
    800037f4:	00009097          	auipc	ra,0x9
    800037f8:	1b4080e7          	jalr	436(ra) # 8000c9a8 <_Unwind_Resume>
    800037fc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003800:	00048513          	mv	a0,s1
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	68c080e7          	jalr	1676(ra) # 80001e90 <_ZdlPv>
    8000380c:	00090513          	mv	a0,s2
    80003810:	00009097          	auipc	ra,0x9
    80003814:	198080e7          	jalr	408(ra) # 8000c9a8 <_Unwind_Resume>
    80003818:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000381c:	00048513          	mv	a0,s1
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	670080e7          	jalr	1648(ra) # 80001e90 <_ZdlPv>
    80003828:	00090513          	mv	a0,s2
    8000382c:	00009097          	auipc	ra,0x9
    80003830:	17c080e7          	jalr	380(ra) # 8000c9a8 <_Unwind_Resume>
    80003834:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003838:	00048513          	mv	a0,s1
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	654080e7          	jalr	1620(ra) # 80001e90 <_ZdlPv>
    80003844:	00090513          	mv	a0,s2
    80003848:	00009097          	auipc	ra,0x9
    8000384c:	160080e7          	jalr	352(ra) # 8000c9a8 <_Unwind_Resume>
}
    80003850:	03813083          	ld	ra,56(sp)
    80003854:	03013403          	ld	s0,48(sp)
    80003858:	02813483          	ld	s1,40(sp)
    8000385c:	02013903          	ld	s2,32(sp)
    80003860:	04010113          	addi	sp,sp,64
    80003864:	00008067          	ret

0000000080003868 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00113423          	sd	ra,8(sp)
    80003870:	00813023          	sd	s0,0(sp)
    80003874:	01010413          	addi	s0,sp,16
    80003878:	00008797          	auipc	a5,0x8
    8000387c:	db878793          	addi	a5,a5,-584 # 8000b630 <_ZTV7WorkerA+0x10>
    80003880:	00f53023          	sd	a5,0(a0)
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	54c080e7          	jalr	1356(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000388c:	00813083          	ld	ra,8(sp)
    80003890:	00013403          	ld	s0,0(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret

000000008000389c <_ZN7WorkerAD0Ev>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00113c23          	sd	ra,24(sp)
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	00050493          	mv	s1,a0
    800038b4:	00008797          	auipc	a5,0x8
    800038b8:	d7c78793          	addi	a5,a5,-644 # 8000b630 <_ZTV7WorkerA+0x10>
    800038bc:	00f53023          	sd	a5,0(a0)
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	510080e7          	jalr	1296(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800038c8:	00048513          	mv	a0,s1
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	5c4080e7          	jalr	1476(ra) # 80001e90 <_ZdlPv>
    800038d4:	01813083          	ld	ra,24(sp)
    800038d8:	01013403          	ld	s0,16(sp)
    800038dc:	00813483          	ld	s1,8(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret

00000000800038e8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00113423          	sd	ra,8(sp)
    800038f0:	00813023          	sd	s0,0(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00008797          	auipc	a5,0x8
    800038fc:	d6078793          	addi	a5,a5,-672 # 8000b658 <_ZTV7WorkerB+0x10>
    80003900:	00f53023          	sd	a5,0(a0)
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	4cc080e7          	jalr	1228(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000390c:	00813083          	ld	ra,8(sp)
    80003910:	00013403          	ld	s0,0(sp)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <_ZN7WorkerBD0Ev>:
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	00050493          	mv	s1,a0
    80003934:	00008797          	auipc	a5,0x8
    80003938:	d2478793          	addi	a5,a5,-732 # 8000b658 <_ZTV7WorkerB+0x10>
    8000393c:	00f53023          	sd	a5,0(a0)
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	490080e7          	jalr	1168(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80003948:	00048513          	mv	a0,s1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	544080e7          	jalr	1348(ra) # 80001e90 <_ZdlPv>
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret

0000000080003968 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00113423          	sd	ra,8(sp)
    80003970:	00813023          	sd	s0,0(sp)
    80003974:	01010413          	addi	s0,sp,16
    80003978:	00008797          	auipc	a5,0x8
    8000397c:	d0878793          	addi	a5,a5,-760 # 8000b680 <_ZTV7WorkerC+0x10>
    80003980:	00f53023          	sd	a5,0(a0)
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	44c080e7          	jalr	1100(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_ZN7WorkerCD0Ev>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00113c23          	sd	ra,24(sp)
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	02010413          	addi	s0,sp,32
    800039b0:	00050493          	mv	s1,a0
    800039b4:	00008797          	auipc	a5,0x8
    800039b8:	ccc78793          	addi	a5,a5,-820 # 8000b680 <_ZTV7WorkerC+0x10>
    800039bc:	00f53023          	sd	a5,0(a0)
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	410080e7          	jalr	1040(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	4c4080e7          	jalr	1220(ra) # 80001e90 <_ZdlPv>
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
    800039f8:	00008797          	auipc	a5,0x8
    800039fc:	cb078793          	addi	a5,a5,-848 # 8000b6a8 <_ZTV7WorkerD+0x10>
    80003a00:	00f53023          	sd	a5,0(a0)
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	3cc080e7          	jalr	972(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerDD0Ev>:
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	00050493          	mv	s1,a0
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	c7478793          	addi	a5,a5,-908 # 8000b6a8 <_ZTV7WorkerD+0x10>
    80003a3c:	00f53023          	sd	a5,0(a0)
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	390080e7          	jalr	912(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80003a48:	00048513          	mv	a0,s1
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	444080e7          	jalr	1092(ra) # 80001e90 <_ZdlPv>
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_ZN7WorkerA3runEv>:
    void run() override {
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00113423          	sd	ra,8(sp)
    80003a70:	00813023          	sd	s0,0(sp)
    80003a74:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003a78:	00000593          	li	a1,0
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	774080e7          	jalr	1908(ra) # 800031f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003a84:	00813083          	ld	ra,8(sp)
    80003a88:	00013403          	ld	s0,0(sp)
    80003a8c:	01010113          	addi	sp,sp,16
    80003a90:	00008067          	ret

0000000080003a94 <_ZN7WorkerB3runEv>:
    void run() override {
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00113423          	sd	ra,8(sp)
    80003a9c:	00813023          	sd	s0,0(sp)
    80003aa0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003aa4:	00000593          	li	a1,0
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	814080e7          	jalr	-2028(ra) # 800032bc <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ab0:	00813083          	ld	ra,8(sp)
    80003ab4:	00013403          	ld	s0,0(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret

0000000080003ac0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00113423          	sd	ra,8(sp)
    80003ac8:	00813023          	sd	s0,0(sp)
    80003acc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003ad0:	00000593          	li	a1,0
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	8bc080e7          	jalr	-1860(ra) # 80003390 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003adc:	00813083          	ld	ra,8(sp)
    80003ae0:	00013403          	ld	s0,0(sp)
    80003ae4:	01010113          	addi	sp,sp,16
    80003ae8:	00008067          	ret

0000000080003aec <_ZN7WorkerD3runEv>:
    void run() override {
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00113423          	sd	ra,8(sp)
    80003af4:	00813023          	sd	s0,0(sp)
    80003af8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003afc:	00000593          	li	a1,0
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	a10080e7          	jalr	-1520(ra) # 80003510 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003b08:	00813083          	ld	ra,8(sp)
    80003b0c:	00013403          	ld	s0,0(sp)
    80003b10:	01010113          	addi	sp,sp,16
    80003b14:	00008067          	ret

0000000080003b18 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003b18:	f8010113          	addi	sp,sp,-128
    80003b1c:	06113c23          	sd	ra,120(sp)
    80003b20:	06813823          	sd	s0,112(sp)
    80003b24:	06913423          	sd	s1,104(sp)
    80003b28:	07213023          	sd	s2,96(sp)
    80003b2c:	05313c23          	sd	s3,88(sp)
    80003b30:	05413823          	sd	s4,80(sp)
    80003b34:	05513423          	sd	s5,72(sp)
    80003b38:	05613023          	sd	s6,64(sp)
    80003b3c:	03713c23          	sd	s7,56(sp)
    80003b40:	03813823          	sd	s8,48(sp)
    80003b44:	03913423          	sd	s9,40(sp)
    80003b48:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003b4c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	52050513          	addi	a0,a0,1312 # 80009070 <CONSOLE_STATUS+0x60>
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	5a8080e7          	jalr	1448(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80003b60:	01e00593          	li	a1,30
    80003b64:	f8040493          	addi	s1,s0,-128
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	61c080e7          	jalr	1564(ra) # 80005188 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b74:	00048513          	mv	a0,s1
    80003b78:	00001097          	auipc	ra,0x1
    80003b7c:	6e8080e7          	jalr	1768(ra) # 80005260 <_Z11stringToIntPKc>
    80003b80:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003b84:	00005517          	auipc	a0,0x5
    80003b88:	50c50513          	addi	a0,a0,1292 # 80009090 <CONSOLE_STATUS+0x80>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	574080e7          	jalr	1396(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80003b94:	01e00593          	li	a1,30
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	5ec080e7          	jalr	1516(ra) # 80005188 <_Z9getStringPci>
    n = stringToInt(input);
    80003ba4:	00048513          	mv	a0,s1
    80003ba8:	00001097          	auipc	ra,0x1
    80003bac:	6b8080e7          	jalr	1720(ra) # 80005260 <_Z11stringToIntPKc>
    80003bb0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	4fc50513          	addi	a0,a0,1276 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003bbc:	00001097          	auipc	ra,0x1
    80003bc0:	544080e7          	jalr	1348(ra) # 80005100 <_Z11printStringPKc>
    printInt(threadNum);
    80003bc4:	00000613          	li	a2,0
    80003bc8:	00a00593          	li	a1,10
    80003bcc:	00098513          	mv	a0,s3
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	6e0080e7          	jalr	1760(ra) # 800052b0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003bd8:	00005517          	auipc	a0,0x5
    80003bdc:	4f050513          	addi	a0,a0,1264 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	520080e7          	jalr	1312(ra) # 80005100 <_Z11printStringPKc>
    printInt(n);
    80003be8:	00000613          	li	a2,0
    80003bec:	00a00593          	li	a1,10
    80003bf0:	00048513          	mv	a0,s1
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	6bc080e7          	jalr	1724(ra) # 800052b0 <_Z8printIntiii>
    printString(".\n");
    80003bfc:	00005517          	auipc	a0,0x5
    80003c00:	4e450513          	addi	a0,a0,1252 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	4fc080e7          	jalr	1276(ra) # 80005100 <_Z11printStringPKc>
    if (threadNum > n) {
    80003c0c:	0334c463          	blt	s1,s3,80003c34 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003c10:	03305c63          	blez	s3,80003c48 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003c14:	03800513          	li	a0,56
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	250080e7          	jalr	592(ra) # 80001e68 <_Znwm>
    80003c20:	00050a93          	mv	s5,a0
    80003c24:	00048593          	mv	a1,s1
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	7a8080e7          	jalr	1960(ra) # 800053d0 <_ZN9BufferCPPC1Ei>
    80003c30:	0300006f          	j	80003c60 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c34:	00005517          	auipc	a0,0x5
    80003c38:	4b450513          	addi	a0,a0,1204 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	4c4080e7          	jalr	1220(ra) # 80005100 <_Z11printStringPKc>
        return;
    80003c44:	0140006f          	j	80003c58 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	4e050513          	addi	a0,a0,1248 # 80009128 <CONSOLE_STATUS+0x118>
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	4b0080e7          	jalr	1200(ra) # 80005100 <_Z11printStringPKc>
        return;
    80003c58:	000c0113          	mv	sp,s8
    80003c5c:	2140006f          	j	80003e70 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003c60:	01000513          	li	a0,16
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	204080e7          	jalr	516(ra) # 80001e68 <_Znwm>
    80003c6c:	00050913          	mv	s2,a0
    80003c70:	00000593          	li	a1,0
    80003c74:	ffffe097          	auipc	ra,0xffffe
    80003c78:	3ac080e7          	jalr	940(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80003c7c:	00008797          	auipc	a5,0x8
    80003c80:	c327b623          	sd	s2,-980(a5) # 8000b8a8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003c84:	00399793          	slli	a5,s3,0x3
    80003c88:	00f78793          	addi	a5,a5,15
    80003c8c:	ff07f793          	andi	a5,a5,-16
    80003c90:	40f10133          	sub	sp,sp,a5
    80003c94:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003c98:	0019871b          	addiw	a4,s3,1
    80003c9c:	00171793          	slli	a5,a4,0x1
    80003ca0:	00e787b3          	add	a5,a5,a4
    80003ca4:	00379793          	slli	a5,a5,0x3
    80003ca8:	00f78793          	addi	a5,a5,15
    80003cac:	ff07f793          	andi	a5,a5,-16
    80003cb0:	40f10133          	sub	sp,sp,a5
    80003cb4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003cb8:	00199493          	slli	s1,s3,0x1
    80003cbc:	013484b3          	add	s1,s1,s3
    80003cc0:	00349493          	slli	s1,s1,0x3
    80003cc4:	009b04b3          	add	s1,s6,s1
    80003cc8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ccc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003cd0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003cd4:	02800513          	li	a0,40
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	190080e7          	jalr	400(ra) # 80001e68 <_Znwm>
    80003ce0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	314080e7          	jalr	788(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	a3478793          	addi	a5,a5,-1484 # 8000b720 <_ZTV8Consumer+0x10>
    80003cf4:	00fbb023          	sd	a5,0(s7)
    80003cf8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003cfc:	000b8513          	mv	a0,s7
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	274080e7          	jalr	628(ra) # 80001f74 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003d08:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003d0c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003d10:	00008797          	auipc	a5,0x8
    80003d14:	b987b783          	ld	a5,-1128(a5) # 8000b8a8 <_ZL10waitForAll>
    80003d18:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003d1c:	02800513          	li	a0,40
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	148080e7          	jalr	328(ra) # 80001e68 <_Znwm>
    80003d28:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	2cc080e7          	jalr	716(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003d34:	00008797          	auipc	a5,0x8
    80003d38:	99c78793          	addi	a5,a5,-1636 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    80003d3c:	00f4b023          	sd	a5,0(s1)
    80003d40:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003d44:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	228080e7          	jalr	552(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d54:	00100913          	li	s2,1
    80003d58:	0300006f          	j	80003d88 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d5c:	00008797          	auipc	a5,0x8
    80003d60:	99c78793          	addi	a5,a5,-1636 # 8000b6f8 <_ZTV8Producer+0x10>
    80003d64:	00fcb023          	sd	a5,0(s9)
    80003d68:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003d6c:	00391793          	slli	a5,s2,0x3
    80003d70:	00fa07b3          	add	a5,s4,a5
    80003d74:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003d78:	000c8513          	mv	a0,s9
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	1f8080e7          	jalr	504(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d84:	0019091b          	addiw	s2,s2,1
    80003d88:	05395263          	bge	s2,s3,80003dcc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003d8c:	00191493          	slli	s1,s2,0x1
    80003d90:	012484b3          	add	s1,s1,s2
    80003d94:	00349493          	slli	s1,s1,0x3
    80003d98:	009b04b3          	add	s1,s6,s1
    80003d9c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003da0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003da4:	00008797          	auipc	a5,0x8
    80003da8:	b047b783          	ld	a5,-1276(a5) # 8000b8a8 <_ZL10waitForAll>
    80003dac:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003db0:	02800513          	li	a0,40
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	0b4080e7          	jalr	180(ra) # 80001e68 <_Znwm>
    80003dbc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	238080e7          	jalr	568(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80003dc8:	f95ff06f          	j	80003d5c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	1d8080e7          	jalr	472(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003dd4:	00000493          	li	s1,0
    80003dd8:	0099ce63          	blt	s3,s1,80003df4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ddc:	00008517          	auipc	a0,0x8
    80003de0:	acc53503          	ld	a0,-1332(a0) # 8000b8a8 <_ZL10waitForAll>
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	278080e7          	jalr	632(ra) # 8000205c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003dec:	0014849b          	addiw	s1,s1,1
    80003df0:	fe9ff06f          	j	80003dd8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003df4:	00008517          	auipc	a0,0x8
    80003df8:	ab453503          	ld	a0,-1356(a0) # 8000b8a8 <_ZL10waitForAll>
    80003dfc:	00050863          	beqz	a0,80003e0c <_Z20testConsumerProducerv+0x2f4>
    80003e00:	00053783          	ld	a5,0(a0)
    80003e04:	0087b783          	ld	a5,8(a5)
    80003e08:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003e0c:	00000493          	li	s1,0
    80003e10:	0080006f          	j	80003e18 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003e14:	0014849b          	addiw	s1,s1,1
    80003e18:	0334d263          	bge	s1,s3,80003e3c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003e1c:	00349793          	slli	a5,s1,0x3
    80003e20:	00fa07b3          	add	a5,s4,a5
    80003e24:	0007b503          	ld	a0,0(a5)
    80003e28:	fe0506e3          	beqz	a0,80003e14 <_Z20testConsumerProducerv+0x2fc>
    80003e2c:	00053783          	ld	a5,0(a0)
    80003e30:	0087b783          	ld	a5,8(a5)
    80003e34:	000780e7          	jalr	a5
    80003e38:	fddff06f          	j	80003e14 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003e3c:	000b8a63          	beqz	s7,80003e50 <_Z20testConsumerProducerv+0x338>
    80003e40:	000bb783          	ld	a5,0(s7)
    80003e44:	0087b783          	ld	a5,8(a5)
    80003e48:	000b8513          	mv	a0,s7
    80003e4c:	000780e7          	jalr	a5
    delete buffer;
    80003e50:	000a8e63          	beqz	s5,80003e6c <_Z20testConsumerProducerv+0x354>
    80003e54:	000a8513          	mv	a0,s5
    80003e58:	00002097          	auipc	ra,0x2
    80003e5c:	870080e7          	jalr	-1936(ra) # 800056c8 <_ZN9BufferCPPD1Ev>
    80003e60:	000a8513          	mv	a0,s5
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	02c080e7          	jalr	44(ra) # 80001e90 <_ZdlPv>
    80003e6c:	000c0113          	mv	sp,s8
}
    80003e70:	f8040113          	addi	sp,s0,-128
    80003e74:	07813083          	ld	ra,120(sp)
    80003e78:	07013403          	ld	s0,112(sp)
    80003e7c:	06813483          	ld	s1,104(sp)
    80003e80:	06013903          	ld	s2,96(sp)
    80003e84:	05813983          	ld	s3,88(sp)
    80003e88:	05013a03          	ld	s4,80(sp)
    80003e8c:	04813a83          	ld	s5,72(sp)
    80003e90:	04013b03          	ld	s6,64(sp)
    80003e94:	03813b83          	ld	s7,56(sp)
    80003e98:	03013c03          	ld	s8,48(sp)
    80003e9c:	02813c83          	ld	s9,40(sp)
    80003ea0:	08010113          	addi	sp,sp,128
    80003ea4:	00008067          	ret
    80003ea8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003eac:	000a8513          	mv	a0,s5
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	fe0080e7          	jalr	-32(ra) # 80001e90 <_ZdlPv>
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	00009097          	auipc	ra,0x9
    80003ec0:	aec080e7          	jalr	-1300(ra) # 8000c9a8 <_Unwind_Resume>
    80003ec4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003ec8:	00090513          	mv	a0,s2
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	fc4080e7          	jalr	-60(ra) # 80001e90 <_ZdlPv>
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	00009097          	auipc	ra,0x9
    80003edc:	ad0080e7          	jalr	-1328(ra) # 8000c9a8 <_Unwind_Resume>
    80003ee0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ee4:	000b8513          	mv	a0,s7
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	fa8080e7          	jalr	-88(ra) # 80001e90 <_ZdlPv>
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00009097          	auipc	ra,0x9
    80003ef8:	ab4080e7          	jalr	-1356(ra) # 8000c9a8 <_Unwind_Resume>
    80003efc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f00:	00048513          	mv	a0,s1
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	f8c080e7          	jalr	-116(ra) # 80001e90 <_ZdlPv>
    80003f0c:	00090513          	mv	a0,s2
    80003f10:	00009097          	auipc	ra,0x9
    80003f14:	a98080e7          	jalr	-1384(ra) # 8000c9a8 <_Unwind_Resume>
    80003f18:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003f1c:	000c8513          	mv	a0,s9
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	f70080e7          	jalr	-144(ra) # 80001e90 <_ZdlPv>
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	00009097          	auipc	ra,0x9
    80003f30:	a7c080e7          	jalr	-1412(ra) # 8000c9a8 <_Unwind_Resume>

0000000080003f34 <_ZN8Consumer3runEv>:
    void run() override {
    80003f34:	fd010113          	addi	sp,sp,-48
    80003f38:	02113423          	sd	ra,40(sp)
    80003f3c:	02813023          	sd	s0,32(sp)
    80003f40:	00913c23          	sd	s1,24(sp)
    80003f44:	01213823          	sd	s2,16(sp)
    80003f48:	01313423          	sd	s3,8(sp)
    80003f4c:	03010413          	addi	s0,sp,48
    80003f50:	00050913          	mv	s2,a0
        int i = 0;
    80003f54:	00000993          	li	s3,0
    80003f58:	0100006f          	j	80003f68 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003f5c:	00a00513          	li	a0,10
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	224080e7          	jalr	548(ra) # 80002184 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003f68:	00008797          	auipc	a5,0x8
    80003f6c:	9387a783          	lw	a5,-1736(a5) # 8000b8a0 <_ZL9threadEnd>
    80003f70:	04079a63          	bnez	a5,80003fc4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003f74:	02093783          	ld	a5,32(s2)
    80003f78:	0087b503          	ld	a0,8(a5)
    80003f7c:	00001097          	auipc	ra,0x1
    80003f80:	638080e7          	jalr	1592(ra) # 800055b4 <_ZN9BufferCPP3getEv>
            i++;
    80003f84:	0019849b          	addiw	s1,s3,1
    80003f88:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003f8c:	0ff57513          	andi	a0,a0,255
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	1f4080e7          	jalr	500(ra) # 80002184 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003f98:	05000793          	li	a5,80
    80003f9c:	02f4e4bb          	remw	s1,s1,a5
    80003fa0:	fc0494e3          	bnez	s1,80003f68 <_ZN8Consumer3runEv+0x34>
    80003fa4:	fb9ff06f          	j	80003f5c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003fa8:	02093783          	ld	a5,32(s2)
    80003fac:	0087b503          	ld	a0,8(a5)
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	604080e7          	jalr	1540(ra) # 800055b4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003fb8:	0ff57513          	andi	a0,a0,255
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	1c8080e7          	jalr	456(ra) # 80002184 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003fc4:	02093783          	ld	a5,32(s2)
    80003fc8:	0087b503          	ld	a0,8(a5)
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	674080e7          	jalr	1652(ra) # 80005640 <_ZN9BufferCPP6getCntEv>
    80003fd4:	fca04ae3          	bgtz	a0,80003fa8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003fd8:	02093783          	ld	a5,32(s2)
    80003fdc:	0107b503          	ld	a0,16(a5)
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	0b4080e7          	jalr	180(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    80003fe8:	02813083          	ld	ra,40(sp)
    80003fec:	02013403          	ld	s0,32(sp)
    80003ff0:	01813483          	ld	s1,24(sp)
    80003ff4:	01013903          	ld	s2,16(sp)
    80003ff8:	00813983          	ld	s3,8(sp)
    80003ffc:	03010113          	addi	sp,sp,48
    80004000:	00008067          	ret

0000000080004004 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00113423          	sd	ra,8(sp)
    8000400c:	00813023          	sd	s0,0(sp)
    80004010:	01010413          	addi	s0,sp,16
    80004014:	00007797          	auipc	a5,0x7
    80004018:	70c78793          	addi	a5,a5,1804 # 8000b720 <_ZTV8Consumer+0x10>
    8000401c:	00f53023          	sd	a5,0(a0)
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	db0080e7          	jalr	-592(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004028:	00813083          	ld	ra,8(sp)
    8000402c:	00013403          	ld	s0,0(sp)
    80004030:	01010113          	addi	sp,sp,16
    80004034:	00008067          	ret

0000000080004038 <_ZN8ConsumerD0Ev>:
    80004038:	fe010113          	addi	sp,sp,-32
    8000403c:	00113c23          	sd	ra,24(sp)
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00913423          	sd	s1,8(sp)
    80004048:	02010413          	addi	s0,sp,32
    8000404c:	00050493          	mv	s1,a0
    80004050:	00007797          	auipc	a5,0x7
    80004054:	6d078793          	addi	a5,a5,1744 # 8000b720 <_ZTV8Consumer+0x10>
    80004058:	00f53023          	sd	a5,0(a0)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	d74080e7          	jalr	-652(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004064:	00048513          	mv	a0,s1
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	e28080e7          	jalr	-472(ra) # 80001e90 <_ZdlPv>
    80004070:	01813083          	ld	ra,24(sp)
    80004074:	01013403          	ld	s0,16(sp)
    80004078:	00813483          	ld	s1,8(sp)
    8000407c:	02010113          	addi	sp,sp,32
    80004080:	00008067          	ret

0000000080004084 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	01010413          	addi	s0,sp,16
    80004094:	00007797          	auipc	a5,0x7
    80004098:	63c78793          	addi	a5,a5,1596 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    8000409c:	00f53023          	sd	a5,0(a0)
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	d30080e7          	jalr	-720(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <_ZN16ProducerKeyboradD0Ev>:
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	02010413          	addi	s0,sp,32
    800040cc:	00050493          	mv	s1,a0
    800040d0:	00007797          	auipc	a5,0x7
    800040d4:	60078793          	addi	a5,a5,1536 # 8000b6d0 <_ZTV16ProducerKeyborad+0x10>
    800040d8:	00f53023          	sd	a5,0(a0)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	cf4080e7          	jalr	-780(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    800040e4:	00048513          	mv	a0,s1
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	da8080e7          	jalr	-600(ra) # 80001e90 <_ZdlPv>
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00813483          	ld	s1,8(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret

0000000080004104 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00113423          	sd	ra,8(sp)
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	00007797          	auipc	a5,0x7
    80004118:	5e478793          	addi	a5,a5,1508 # 8000b6f8 <_ZTV8Producer+0x10>
    8000411c:	00f53023          	sd	a5,0(a0)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	cb0080e7          	jalr	-848(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN8ProducerD0Ev>:
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	02010413          	addi	s0,sp,32
    8000414c:	00050493          	mv	s1,a0
    80004150:	00007797          	auipc	a5,0x7
    80004154:	5a878793          	addi	a5,a5,1448 # 8000b6f8 <_ZTV8Producer+0x10>
    80004158:	00f53023          	sd	a5,0(a0)
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	c74080e7          	jalr	-908(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004164:	00048513          	mv	a0,s1
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	d28080e7          	jalr	-728(ra) # 80001e90 <_ZdlPv>
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	01013403          	ld	s0,16(sp)
    80004178:	00813483          	ld	s1,8(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004184:	fe010113          	addi	sp,sp,-32
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	00813823          	sd	s0,16(sp)
    80004190:	00913423          	sd	s1,8(sp)
    80004194:	02010413          	addi	s0,sp,32
    80004198:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000419c:	ffffd097          	auipc	ra,0xffffd
    800041a0:	234080e7          	jalr	564(ra) # 800013d0 <_Z4getcv>
    800041a4:	0005059b          	sext.w	a1,a0
    800041a8:	01b00793          	li	a5,27
    800041ac:	00f58c63          	beq	a1,a5,800041c4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800041b0:	0204b783          	ld	a5,32(s1)
    800041b4:	0087b503          	ld	a0,8(a5)
    800041b8:	00001097          	auipc	ra,0x1
    800041bc:	36c080e7          	jalr	876(ra) # 80005524 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800041c0:	fddff06f          	j	8000419c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800041c4:	00100793          	li	a5,1
    800041c8:	00007717          	auipc	a4,0x7
    800041cc:	6cf72c23          	sw	a5,1752(a4) # 8000b8a0 <_ZL9threadEnd>
        td->buffer->put('!');
    800041d0:	0204b783          	ld	a5,32(s1)
    800041d4:	02100593          	li	a1,33
    800041d8:	0087b503          	ld	a0,8(a5)
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	348080e7          	jalr	840(ra) # 80005524 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800041e4:	0204b783          	ld	a5,32(s1)
    800041e8:	0107b503          	ld	a0,16(a5)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	ea8080e7          	jalr	-344(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    800041f4:	01813083          	ld	ra,24(sp)
    800041f8:	01013403          	ld	s0,16(sp)
    800041fc:	00813483          	ld	s1,8(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret

0000000080004208 <_ZN8Producer3runEv>:
    void run() override {
    80004208:	fe010113          	addi	sp,sp,-32
    8000420c:	00113c23          	sd	ra,24(sp)
    80004210:	00813823          	sd	s0,16(sp)
    80004214:	00913423          	sd	s1,8(sp)
    80004218:	01213023          	sd	s2,0(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00050493          	mv	s1,a0
        int i = 0;
    80004224:	00000913          	li	s2,0
        while (!threadEnd) {
    80004228:	00007797          	auipc	a5,0x7
    8000422c:	6787a783          	lw	a5,1656(a5) # 8000b8a0 <_ZL9threadEnd>
    80004230:	04079263          	bnez	a5,80004274 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004234:	0204b783          	ld	a5,32(s1)
    80004238:	0007a583          	lw	a1,0(a5)
    8000423c:	0305859b          	addiw	a1,a1,48
    80004240:	0087b503          	ld	a0,8(a5)
    80004244:	00001097          	auipc	ra,0x1
    80004248:	2e0080e7          	jalr	736(ra) # 80005524 <_ZN9BufferCPP3putEi>
            i++;
    8000424c:	0019071b          	addiw	a4,s2,1
    80004250:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004254:	0204b783          	ld	a5,32(s1)
    80004258:	0007a783          	lw	a5,0(a5)
    8000425c:	00e787bb          	addw	a5,a5,a4
    80004260:	00500513          	li	a0,5
    80004264:	02a7e53b          	remw	a0,a5,a0
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	d64080e7          	jalr	-668(ra) # 80001fcc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004270:	fb9ff06f          	j	80004228 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004274:	0204b783          	ld	a5,32(s1)
    80004278:	0107b503          	ld	a0,16(a5)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	e18080e7          	jalr	-488(ra) # 80002094 <_ZN9Semaphore6signalEv>
    }
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	00013903          	ld	s2,0(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret

000000008000429c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000429c:	fe010113          	addi	sp,sp,-32
    800042a0:	00113c23          	sd	ra,24(sp)
    800042a4:	00813823          	sd	s0,16(sp)
    800042a8:	00913423          	sd	s1,8(sp)
    800042ac:	01213023          	sd	s2,0(sp)
    800042b0:	02010413          	addi	s0,sp,32
    800042b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800042b8:	00100793          	li	a5,1
    800042bc:	02a7f863          	bgeu	a5,a0,800042ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800042c0:	00a00793          	li	a5,10
    800042c4:	02f577b3          	remu	a5,a0,a5
    800042c8:	02078e63          	beqz	a5,80004304 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800042cc:	fff48513          	addi	a0,s1,-1
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	fcc080e7          	jalr	-52(ra) # 8000429c <_ZL9fibonaccim>
    800042d8:	00050913          	mv	s2,a0
    800042dc:	ffe48513          	addi	a0,s1,-2
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	fbc080e7          	jalr	-68(ra) # 8000429c <_ZL9fibonaccim>
    800042e8:	00a90533          	add	a0,s2,a0
}
    800042ec:	01813083          	ld	ra,24(sp)
    800042f0:	01013403          	ld	s0,16(sp)
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	00013903          	ld	s2,0(sp)
    800042fc:	02010113          	addi	sp,sp,32
    80004300:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004304:	ffffd097          	auipc	ra,0xffffd
    80004308:	fcc080e7          	jalr	-52(ra) # 800012d0 <_Z15thread_dispatchv>
    8000430c:	fc1ff06f          	j	800042cc <_ZL9fibonaccim+0x30>

0000000080004310 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004310:	fe010113          	addi	sp,sp,-32
    80004314:	00113c23          	sd	ra,24(sp)
    80004318:	00813823          	sd	s0,16(sp)
    8000431c:	00913423          	sd	s1,8(sp)
    80004320:	01213023          	sd	s2,0(sp)
    80004324:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004328:	00a00493          	li	s1,10
    8000432c:	0400006f          	j	8000436c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004330:	00005517          	auipc	a0,0x5
    80004334:	e8850513          	addi	a0,a0,-376 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	dc8080e7          	jalr	-568(ra) # 80005100 <_Z11printStringPKc>
    80004340:	00000613          	li	a2,0
    80004344:	00a00593          	li	a1,10
    80004348:	00048513          	mv	a0,s1
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	f64080e7          	jalr	-156(ra) # 800052b0 <_Z8printIntiii>
    80004354:	00005517          	auipc	a0,0x5
    80004358:	d5450513          	addi	a0,a0,-684 # 800090a8 <CONSOLE_STATUS+0x98>
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	da4080e7          	jalr	-604(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004364:	0014849b          	addiw	s1,s1,1
    80004368:	0ff4f493          	andi	s1,s1,255
    8000436c:	00c00793          	li	a5,12
    80004370:	fc97f0e3          	bgeu	a5,s1,80004330 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004374:	00005517          	auipc	a0,0x5
    80004378:	e4c50513          	addi	a0,a0,-436 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	d84080e7          	jalr	-636(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004384:	00500313          	li	t1,5
    thread_dispatch();
    80004388:	ffffd097          	auipc	ra,0xffffd
    8000438c:	f48080e7          	jalr	-184(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004390:	01000513          	li	a0,16
    80004394:	00000097          	auipc	ra,0x0
    80004398:	f08080e7          	jalr	-248(ra) # 8000429c <_ZL9fibonaccim>
    8000439c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800043a0:	00005517          	auipc	a0,0x5
    800043a4:	e3050513          	addi	a0,a0,-464 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800043a8:	00001097          	auipc	ra,0x1
    800043ac:	d58080e7          	jalr	-680(ra) # 80005100 <_Z11printStringPKc>
    800043b0:	00000613          	li	a2,0
    800043b4:	00a00593          	li	a1,10
    800043b8:	0009051b          	sext.w	a0,s2
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	ef4080e7          	jalr	-268(ra) # 800052b0 <_Z8printIntiii>
    800043c4:	00005517          	auipc	a0,0x5
    800043c8:	ce450513          	addi	a0,a0,-796 # 800090a8 <CONSOLE_STATUS+0x98>
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	d34080e7          	jalr	-716(ra) # 80005100 <_Z11printStringPKc>
    800043d4:	0400006f          	j	80004414 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043d8:	00005517          	auipc	a0,0x5
    800043dc:	de050513          	addi	a0,a0,-544 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800043e0:	00001097          	auipc	ra,0x1
    800043e4:	d20080e7          	jalr	-736(ra) # 80005100 <_Z11printStringPKc>
    800043e8:	00000613          	li	a2,0
    800043ec:	00a00593          	li	a1,10
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	ebc080e7          	jalr	-324(ra) # 800052b0 <_Z8printIntiii>
    800043fc:	00005517          	auipc	a0,0x5
    80004400:	cac50513          	addi	a0,a0,-852 # 800090a8 <CONSOLE_STATUS+0x98>
    80004404:	00001097          	auipc	ra,0x1
    80004408:	cfc080e7          	jalr	-772(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000440c:	0014849b          	addiw	s1,s1,1
    80004410:	0ff4f493          	andi	s1,s1,255
    80004414:	00f00793          	li	a5,15
    80004418:	fc97f0e3          	bgeu	a5,s1,800043d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000441c:	00005517          	auipc	a0,0x5
    80004420:	dc450513          	addi	a0,a0,-572 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004424:	00001097          	auipc	ra,0x1
    80004428:	cdc080e7          	jalr	-804(ra) # 80005100 <_Z11printStringPKc>
    finishedD = true;
    8000442c:	00100793          	li	a5,1
    80004430:	00007717          	auipc	a4,0x7
    80004434:	48f70023          	sb	a5,1152(a4) # 8000b8b0 <_ZL9finishedD>
    thread_dispatch();
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	e98080e7          	jalr	-360(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	00813483          	ld	s1,8(sp)
    8000444c:	00013903          	ld	s2,0(sp)
    80004450:	02010113          	addi	sp,sp,32
    80004454:	00008067          	ret

0000000080004458 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004470:	00000493          	li	s1,0
    80004474:	0400006f          	j	800044b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	d1050513          	addi	a0,a0,-752 # 80009188 <CONSOLE_STATUS+0x178>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	c80080e7          	jalr	-896(ra) # 80005100 <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	00048513          	mv	a0,s1
    80004494:	00001097          	auipc	ra,0x1
    80004498:	e1c080e7          	jalr	-484(ra) # 800052b0 <_Z8printIntiii>
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	c0c50513          	addi	a0,a0,-1012 # 800090a8 <CONSOLE_STATUS+0x98>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	c5c080e7          	jalr	-932(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	0ff4f493          	andi	s1,s1,255
    800044b4:	00200793          	li	a5,2
    800044b8:	fc97f0e3          	bgeu	a5,s1,80004478 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	cd450513          	addi	a0,a0,-812 # 80009190 <CONSOLE_STATUS+0x180>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	c3c080e7          	jalr	-964(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044cc:	00700313          	li	t1,7
    thread_dispatch();
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	e00080e7          	jalr	-512(ra) # 800012d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	cc450513          	addi	a0,a0,-828 # 800091a0 <CONSOLE_STATUS+0x190>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	c1c080e7          	jalr	-996(ra) # 80005100 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	0009051b          	sext.w	a0,s2
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	db8080e7          	jalr	-584(ra) # 800052b0 <_Z8printIntiii>
    80004500:	00005517          	auipc	a0,0x5
    80004504:	ba850513          	addi	a0,a0,-1112 # 800090a8 <CONSOLE_STATUS+0x98>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	bf8080e7          	jalr	-1032(ra) # 80005100 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004510:	00c00513          	li	a0,12
    80004514:	00000097          	auipc	ra,0x0
    80004518:	d88080e7          	jalr	-632(ra) # 8000429c <_ZL9fibonaccim>
    8000451c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004520:	00005517          	auipc	a0,0x5
    80004524:	c8850513          	addi	a0,a0,-888 # 800091a8 <CONSOLE_STATUS+0x198>
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	bd8080e7          	jalr	-1064(ra) # 80005100 <_Z11printStringPKc>
    80004530:	00000613          	li	a2,0
    80004534:	00a00593          	li	a1,10
    80004538:	0009051b          	sext.w	a0,s2
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	d74080e7          	jalr	-652(ra) # 800052b0 <_Z8printIntiii>
    80004544:	00005517          	auipc	a0,0x5
    80004548:	b6450513          	addi	a0,a0,-1180 # 800090a8 <CONSOLE_STATUS+0x98>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	bb4080e7          	jalr	-1100(ra) # 80005100 <_Z11printStringPKc>
    80004554:	0400006f          	j	80004594 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004558:	00005517          	auipc	a0,0x5
    8000455c:	c3050513          	addi	a0,a0,-976 # 80009188 <CONSOLE_STATUS+0x178>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	ba0080e7          	jalr	-1120(ra) # 80005100 <_Z11printStringPKc>
    80004568:	00000613          	li	a2,0
    8000456c:	00a00593          	li	a1,10
    80004570:	00048513          	mv	a0,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	d3c080e7          	jalr	-708(ra) # 800052b0 <_Z8printIntiii>
    8000457c:	00005517          	auipc	a0,0x5
    80004580:	b2c50513          	addi	a0,a0,-1236 # 800090a8 <CONSOLE_STATUS+0x98>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	b7c080e7          	jalr	-1156(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000458c:	0014849b          	addiw	s1,s1,1
    80004590:	0ff4f493          	andi	s1,s1,255
    80004594:	00500793          	li	a5,5
    80004598:	fc97f0e3          	bgeu	a5,s1,80004558 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	bc450513          	addi	a0,a0,-1084 # 80009160 <CONSOLE_STATUS+0x150>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	b5c080e7          	jalr	-1188(ra) # 80005100 <_Z11printStringPKc>
    finishedC = true;
    800045ac:	00100793          	li	a5,1
    800045b0:	00007717          	auipc	a4,0x7
    800045b4:	30f700a3          	sb	a5,769(a4) # 8000b8b1 <_ZL9finishedC>
    thread_dispatch();
    800045b8:	ffffd097          	auipc	ra,0xffffd
    800045bc:	d18080e7          	jalr	-744(ra) # 800012d0 <_Z15thread_dispatchv>
}
    800045c0:	01813083          	ld	ra,24(sp)
    800045c4:	01013403          	ld	s0,16(sp)
    800045c8:	00813483          	ld	s1,8(sp)
    800045cc:	00013903          	ld	s2,0(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00113c23          	sd	ra,24(sp)
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	01213023          	sd	s2,0(sp)
    800045ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800045f0:	00000913          	li	s2,0
    800045f4:	0380006f          	j	8000462c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800045f8:	ffffd097          	auipc	ra,0xffffd
    800045fc:	cd8080e7          	jalr	-808(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004600:	00148493          	addi	s1,s1,1
    80004604:	000027b7          	lui	a5,0x2
    80004608:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000460c:	0097ee63          	bltu	a5,s1,80004628 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004610:	00000713          	li	a4,0
    80004614:	000077b7          	lui	a5,0x7
    80004618:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000461c:	fce7eee3          	bltu	a5,a4,800045f8 <_ZL11workerBodyBPv+0x20>
    80004620:	00170713          	addi	a4,a4,1
    80004624:	ff1ff06f          	j	80004614 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004628:	00190913          	addi	s2,s2,1
    8000462c:	00f00793          	li	a5,15
    80004630:	0527e063          	bltu	a5,s2,80004670 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004634:	00005517          	auipc	a0,0x5
    80004638:	b3c50513          	addi	a0,a0,-1220 # 80009170 <CONSOLE_STATUS+0x160>
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	ac4080e7          	jalr	-1340(ra) # 80005100 <_Z11printStringPKc>
    80004644:	00000613          	li	a2,0
    80004648:	00a00593          	li	a1,10
    8000464c:	0009051b          	sext.w	a0,s2
    80004650:	00001097          	auipc	ra,0x1
    80004654:	c60080e7          	jalr	-928(ra) # 800052b0 <_Z8printIntiii>
    80004658:	00005517          	auipc	a0,0x5
    8000465c:	a5050513          	addi	a0,a0,-1456 # 800090a8 <CONSOLE_STATUS+0x98>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	aa0080e7          	jalr	-1376(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004668:	00000493          	li	s1,0
    8000466c:	f99ff06f          	j	80004604 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004670:	00005517          	auipc	a0,0x5
    80004674:	b0850513          	addi	a0,a0,-1272 # 80009178 <CONSOLE_STATUS+0x168>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	a88080e7          	jalr	-1400(ra) # 80005100 <_Z11printStringPKc>
    finishedB = true;
    80004680:	00100793          	li	a5,1
    80004684:	00007717          	auipc	a4,0x7
    80004688:	22f70723          	sb	a5,558(a4) # 8000b8b2 <_ZL9finishedB>
    thread_dispatch();
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	c44080e7          	jalr	-956(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80004694:	01813083          	ld	ra,24(sp)
    80004698:	01013403          	ld	s0,16(sp)
    8000469c:	00813483          	ld	s1,8(sp)
    800046a0:	00013903          	ld	s2,0(sp)
    800046a4:	02010113          	addi	sp,sp,32
    800046a8:	00008067          	ret

00000000800046ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800046ac:	fe010113          	addi	sp,sp,-32
    800046b0:	00113c23          	sd	ra,24(sp)
    800046b4:	00813823          	sd	s0,16(sp)
    800046b8:	00913423          	sd	s1,8(sp)
    800046bc:	01213023          	sd	s2,0(sp)
    800046c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800046c4:	00000913          	li	s2,0
    800046c8:	0380006f          	j	80004700 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	c04080e7          	jalr	-1020(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046d4:	00148493          	addi	s1,s1,1
    800046d8:	000027b7          	lui	a5,0x2
    800046dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046e0:	0097ee63          	bltu	a5,s1,800046fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046e4:	00000713          	li	a4,0
    800046e8:	000077b7          	lui	a5,0x7
    800046ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046f0:	fce7eee3          	bltu	a5,a4,800046cc <_ZL11workerBodyAPv+0x20>
    800046f4:	00170713          	addi	a4,a4,1
    800046f8:	ff1ff06f          	j	800046e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800046fc:	00190913          	addi	s2,s2,1
    80004700:	00900793          	li	a5,9
    80004704:	0527e063          	bltu	a5,s2,80004744 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004708:	00005517          	auipc	a0,0x5
    8000470c:	a5050513          	addi	a0,a0,-1456 # 80009158 <CONSOLE_STATUS+0x148>
    80004710:	00001097          	auipc	ra,0x1
    80004714:	9f0080e7          	jalr	-1552(ra) # 80005100 <_Z11printStringPKc>
    80004718:	00000613          	li	a2,0
    8000471c:	00a00593          	li	a1,10
    80004720:	0009051b          	sext.w	a0,s2
    80004724:	00001097          	auipc	ra,0x1
    80004728:	b8c080e7          	jalr	-1140(ra) # 800052b0 <_Z8printIntiii>
    8000472c:	00005517          	auipc	a0,0x5
    80004730:	97c50513          	addi	a0,a0,-1668 # 800090a8 <CONSOLE_STATUS+0x98>
    80004734:	00001097          	auipc	ra,0x1
    80004738:	9cc080e7          	jalr	-1588(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000473c:	00000493          	li	s1,0
    80004740:	f99ff06f          	j	800046d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004744:	00005517          	auipc	a0,0x5
    80004748:	a1c50513          	addi	a0,a0,-1508 # 80009160 <CONSOLE_STATUS+0x150>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	9b4080e7          	jalr	-1612(ra) # 80005100 <_Z11printStringPKc>
    finishedA = true;
    80004754:	00100793          	li	a5,1
    80004758:	00007717          	auipc	a4,0x7
    8000475c:	14f70da3          	sb	a5,347(a4) # 8000b8b3 <_ZL9finishedA>
}
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	00013903          	ld	s2,0(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret

0000000080004778 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004778:	fd010113          	addi	sp,sp,-48
    8000477c:	02113423          	sd	ra,40(sp)
    80004780:	02813023          	sd	s0,32(sp)
    80004784:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004788:	00000613          	li	a2,0
    8000478c:	00000597          	auipc	a1,0x0
    80004790:	f2058593          	addi	a1,a1,-224 # 800046ac <_ZL11workerBodyAPv>
    80004794:	fd040513          	addi	a0,s0,-48
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	a64080e7          	jalr	-1436(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800047a0:	00005517          	auipc	a0,0x5
    800047a4:	a5050513          	addi	a0,a0,-1456 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	958080e7          	jalr	-1704(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800047b0:	00000613          	li	a2,0
    800047b4:	00000597          	auipc	a1,0x0
    800047b8:	e2458593          	addi	a1,a1,-476 # 800045d8 <_ZL11workerBodyBPv>
    800047bc:	fd840513          	addi	a0,s0,-40
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	a3c080e7          	jalr	-1476(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	a4050513          	addi	a0,a0,-1472 # 80009208 <CONSOLE_STATUS+0x1f8>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	930080e7          	jalr	-1744(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800047d8:	00000613          	li	a2,0
    800047dc:	00000597          	auipc	a1,0x0
    800047e0:	c7c58593          	addi	a1,a1,-900 # 80004458 <_ZL11workerBodyCPv>
    800047e4:	fe040513          	addi	a0,s0,-32
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	a14080e7          	jalr	-1516(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800047f0:	00005517          	auipc	a0,0x5
    800047f4:	a3050513          	addi	a0,a0,-1488 # 80009220 <CONSOLE_STATUS+0x210>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	908080e7          	jalr	-1784(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004800:	00000613          	li	a2,0
    80004804:	00000597          	auipc	a1,0x0
    80004808:	b0c58593          	addi	a1,a1,-1268 # 80004310 <_ZL11workerBodyDPv>
    8000480c:	fe840513          	addi	a0,s0,-24
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	9ec080e7          	jalr	-1556(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	a2050513          	addi	a0,a0,-1504 # 80009238 <CONSOLE_STATUS+0x228>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	8e0080e7          	jalr	-1824(ra) # 80005100 <_Z11printStringPKc>
    80004828:	00c0006f          	j	80004834 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	aa4080e7          	jalr	-1372(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004834:	00007797          	auipc	a5,0x7
    80004838:	07f7c783          	lbu	a5,127(a5) # 8000b8b3 <_ZL9finishedA>
    8000483c:	fe0788e3          	beqz	a5,8000482c <_Z18Threads_C_API_testv+0xb4>
    80004840:	00007797          	auipc	a5,0x7
    80004844:	0727c783          	lbu	a5,114(a5) # 8000b8b2 <_ZL9finishedB>
    80004848:	fe0782e3          	beqz	a5,8000482c <_Z18Threads_C_API_testv+0xb4>
    8000484c:	00007797          	auipc	a5,0x7
    80004850:	0657c783          	lbu	a5,101(a5) # 8000b8b1 <_ZL9finishedC>
    80004854:	fc078ce3          	beqz	a5,8000482c <_Z18Threads_C_API_testv+0xb4>
    80004858:	00007797          	auipc	a5,0x7
    8000485c:	0587c783          	lbu	a5,88(a5) # 8000b8b0 <_ZL9finishedD>
    80004860:	fc0786e3          	beqz	a5,8000482c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004864:	02813083          	ld	ra,40(sp)
    80004868:	02013403          	ld	s0,32(sp)
    8000486c:	03010113          	addi	sp,sp,48
    80004870:	00008067          	ret

0000000080004874 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004874:	fd010113          	addi	sp,sp,-48
    80004878:	02113423          	sd	ra,40(sp)
    8000487c:	02813023          	sd	s0,32(sp)
    80004880:	00913c23          	sd	s1,24(sp)
    80004884:	01213823          	sd	s2,16(sp)
    80004888:	01313423          	sd	s3,8(sp)
    8000488c:	03010413          	addi	s0,sp,48
    80004890:	00050993          	mv	s3,a0
    80004894:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004898:	00000913          	li	s2,0
    8000489c:	00c0006f          	j	800048a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	704080e7          	jalr	1796(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	b28080e7          	jalr	-1240(ra) # 800013d0 <_Z4getcv>
    800048b0:	0005059b          	sext.w	a1,a0
    800048b4:	01b00793          	li	a5,27
    800048b8:	02f58a63          	beq	a1,a5,800048ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800048bc:	0084b503          	ld	a0,8(s1)
    800048c0:	00001097          	auipc	ra,0x1
    800048c4:	c64080e7          	jalr	-924(ra) # 80005524 <_ZN9BufferCPP3putEi>
        i++;
    800048c8:	0019071b          	addiw	a4,s2,1
    800048cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800048d0:	0004a683          	lw	a3,0(s1)
    800048d4:	0026979b          	slliw	a5,a3,0x2
    800048d8:	00d787bb          	addw	a5,a5,a3
    800048dc:	0017979b          	slliw	a5,a5,0x1
    800048e0:	02f767bb          	remw	a5,a4,a5
    800048e4:	fc0792e3          	bnez	a5,800048a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800048e8:	fb9ff06f          	j	800048a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800048ec:	00100793          	li	a5,1
    800048f0:	00007717          	auipc	a4,0x7
    800048f4:	fcf72423          	sw	a5,-56(a4) # 8000b8b8 <_ZL9threadEnd>
    td->buffer->put('!');
    800048f8:	0209b783          	ld	a5,32(s3)
    800048fc:	02100593          	li	a1,33
    80004900:	0087b503          	ld	a0,8(a5)
    80004904:	00001097          	auipc	ra,0x1
    80004908:	c20080e7          	jalr	-992(ra) # 80005524 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000490c:	0104b503          	ld	a0,16(s1)
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	784080e7          	jalr	1924(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    80004918:	02813083          	ld	ra,40(sp)
    8000491c:	02013403          	ld	s0,32(sp)
    80004920:	01813483          	ld	s1,24(sp)
    80004924:	01013903          	ld	s2,16(sp)
    80004928:	00813983          	ld	s3,8(sp)
    8000492c:	03010113          	addi	sp,sp,48
    80004930:	00008067          	ret

0000000080004934 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004934:	fe010113          	addi	sp,sp,-32
    80004938:	00113c23          	sd	ra,24(sp)
    8000493c:	00813823          	sd	s0,16(sp)
    80004940:	00913423          	sd	s1,8(sp)
    80004944:	01213023          	sd	s2,0(sp)
    80004948:	02010413          	addi	s0,sp,32
    8000494c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004950:	00000913          	li	s2,0
    80004954:	00c0006f          	j	80004960 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	64c080e7          	jalr	1612(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004960:	00007797          	auipc	a5,0x7
    80004964:	f587a783          	lw	a5,-168(a5) # 8000b8b8 <_ZL9threadEnd>
    80004968:	02079e63          	bnez	a5,800049a4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000496c:	0004a583          	lw	a1,0(s1)
    80004970:	0305859b          	addiw	a1,a1,48
    80004974:	0084b503          	ld	a0,8(s1)
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	bac080e7          	jalr	-1108(ra) # 80005524 <_ZN9BufferCPP3putEi>
        i++;
    80004980:	0019071b          	addiw	a4,s2,1
    80004984:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004988:	0004a683          	lw	a3,0(s1)
    8000498c:	0026979b          	slliw	a5,a3,0x2
    80004990:	00d787bb          	addw	a5,a5,a3
    80004994:	0017979b          	slliw	a5,a5,0x1
    80004998:	02f767bb          	remw	a5,a4,a5
    8000499c:	fc0792e3          	bnez	a5,80004960 <_ZN12ProducerSync8producerEPv+0x2c>
    800049a0:	fb9ff06f          	j	80004958 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800049a4:	0104b503          	ld	a0,16(s1)
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	6ec080e7          	jalr	1772(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    800049b0:	01813083          	ld	ra,24(sp)
    800049b4:	01013403          	ld	s0,16(sp)
    800049b8:	00813483          	ld	s1,8(sp)
    800049bc:	00013903          	ld	s2,0(sp)
    800049c0:	02010113          	addi	sp,sp,32
    800049c4:	00008067          	ret

00000000800049c8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800049c8:	fd010113          	addi	sp,sp,-48
    800049cc:	02113423          	sd	ra,40(sp)
    800049d0:	02813023          	sd	s0,32(sp)
    800049d4:	00913c23          	sd	s1,24(sp)
    800049d8:	01213823          	sd	s2,16(sp)
    800049dc:	01313423          	sd	s3,8(sp)
    800049e0:	01413023          	sd	s4,0(sp)
    800049e4:	03010413          	addi	s0,sp,48
    800049e8:	00050993          	mv	s3,a0
    800049ec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049f0:	00000a13          	li	s4,0
    800049f4:	01c0006f          	j	80004a10 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	5ac080e7          	jalr	1452(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    80004a00:	0500006f          	j	80004a50 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a04:	00a00513          	li	a0,10
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	a14080e7          	jalr	-1516(ra) # 8000141c <_Z4putcc>
    while (!threadEnd) {
    80004a10:	00007797          	auipc	a5,0x7
    80004a14:	ea87a783          	lw	a5,-344(a5) # 8000b8b8 <_ZL9threadEnd>
    80004a18:	06079263          	bnez	a5,80004a7c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004a1c:	00893503          	ld	a0,8(s2)
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	b94080e7          	jalr	-1132(ra) # 800055b4 <_ZN9BufferCPP3getEv>
        i++;
    80004a28:	001a049b          	addiw	s1,s4,1
    80004a2c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004a30:	0ff57513          	andi	a0,a0,255
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	9e8080e7          	jalr	-1560(ra) # 8000141c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004a3c:	00092703          	lw	a4,0(s2)
    80004a40:	0027179b          	slliw	a5,a4,0x2
    80004a44:	00e787bb          	addw	a5,a5,a4
    80004a48:	02f4e7bb          	remw	a5,s1,a5
    80004a4c:	fa0786e3          	beqz	a5,800049f8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004a50:	05000793          	li	a5,80
    80004a54:	02f4e4bb          	remw	s1,s1,a5
    80004a58:	fa049ce3          	bnez	s1,80004a10 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004a5c:	fa9ff06f          	j	80004a04 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004a60:	0209b783          	ld	a5,32(s3)
    80004a64:	0087b503          	ld	a0,8(a5)
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	b4c080e7          	jalr	-1204(ra) # 800055b4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004a70:	0ff57513          	andi	a0,a0,255
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	710080e7          	jalr	1808(ra) # 80002184 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004a7c:	0209b783          	ld	a5,32(s3)
    80004a80:	0087b503          	ld	a0,8(a5)
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	bbc080e7          	jalr	-1092(ra) # 80005640 <_ZN9BufferCPP6getCntEv>
    80004a8c:	fca04ae3          	bgtz	a0,80004a60 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004a90:	01093503          	ld	a0,16(s2)
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	600080e7          	jalr	1536(ra) # 80002094 <_ZN9Semaphore6signalEv>
}
    80004a9c:	02813083          	ld	ra,40(sp)
    80004aa0:	02013403          	ld	s0,32(sp)
    80004aa4:	01813483          	ld	s1,24(sp)
    80004aa8:	01013903          	ld	s2,16(sp)
    80004aac:	00813983          	ld	s3,8(sp)
    80004ab0:	00013a03          	ld	s4,0(sp)
    80004ab4:	03010113          	addi	sp,sp,48
    80004ab8:	00008067          	ret

0000000080004abc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004abc:	f8010113          	addi	sp,sp,-128
    80004ac0:	06113c23          	sd	ra,120(sp)
    80004ac4:	06813823          	sd	s0,112(sp)
    80004ac8:	06913423          	sd	s1,104(sp)
    80004acc:	07213023          	sd	s2,96(sp)
    80004ad0:	05313c23          	sd	s3,88(sp)
    80004ad4:	05413823          	sd	s4,80(sp)
    80004ad8:	05513423          	sd	s5,72(sp)
    80004adc:	05613023          	sd	s6,64(sp)
    80004ae0:	03713c23          	sd	s7,56(sp)
    80004ae4:	03813823          	sd	s8,48(sp)
    80004ae8:	03913423          	sd	s9,40(sp)
    80004aec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004af0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004af4:	00004517          	auipc	a0,0x4
    80004af8:	57c50513          	addi	a0,a0,1404 # 80009070 <CONSOLE_STATUS+0x60>
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	604080e7          	jalr	1540(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80004b04:	01e00593          	li	a1,30
    80004b08:	f8040493          	addi	s1,s0,-128
    80004b0c:	00048513          	mv	a0,s1
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	678080e7          	jalr	1656(ra) # 80005188 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	744080e7          	jalr	1860(ra) # 80005260 <_Z11stringToIntPKc>
    80004b24:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004b28:	00004517          	auipc	a0,0x4
    80004b2c:	56850513          	addi	a0,a0,1384 # 80009090 <CONSOLE_STATUS+0x80>
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	5d0080e7          	jalr	1488(ra) # 80005100 <_Z11printStringPKc>
    getString(input, 30);
    80004b38:	01e00593          	li	a1,30
    80004b3c:	00048513          	mv	a0,s1
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	648080e7          	jalr	1608(ra) # 80005188 <_Z9getStringPci>
    n = stringToInt(input);
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	714080e7          	jalr	1812(ra) # 80005260 <_Z11stringToIntPKc>
    80004b54:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b58:	00004517          	auipc	a0,0x4
    80004b5c:	55850513          	addi	a0,a0,1368 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	5a0080e7          	jalr	1440(ra) # 80005100 <_Z11printStringPKc>
    80004b68:	00000613          	li	a2,0
    80004b6c:	00a00593          	li	a1,10
    80004b70:	00090513          	mv	a0,s2
    80004b74:	00000097          	auipc	ra,0x0
    80004b78:	73c080e7          	jalr	1852(ra) # 800052b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b7c:	00004517          	auipc	a0,0x4
    80004b80:	54c50513          	addi	a0,a0,1356 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	57c080e7          	jalr	1404(ra) # 80005100 <_Z11printStringPKc>
    80004b8c:	00000613          	li	a2,0
    80004b90:	00a00593          	li	a1,10
    80004b94:	00048513          	mv	a0,s1
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	718080e7          	jalr	1816(ra) # 800052b0 <_Z8printIntiii>
    printString(".\n");
    80004ba0:	00004517          	auipc	a0,0x4
    80004ba4:	54050513          	addi	a0,a0,1344 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	558080e7          	jalr	1368(ra) # 80005100 <_Z11printStringPKc>
    if(threadNum > n) {
    80004bb0:	0324c463          	blt	s1,s2,80004bd8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004bb4:	03205c63          	blez	s2,80004bec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004bb8:	03800513          	li	a0,56
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	2ac080e7          	jalr	684(ra) # 80001e68 <_Znwm>
    80004bc4:	00050a93          	mv	s5,a0
    80004bc8:	00048593          	mv	a1,s1
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	804080e7          	jalr	-2044(ra) # 800053d0 <_ZN9BufferCPPC1Ei>
    80004bd4:	0300006f          	j	80004c04 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004bd8:	00004517          	auipc	a0,0x4
    80004bdc:	51050513          	addi	a0,a0,1296 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	520080e7          	jalr	1312(ra) # 80005100 <_Z11printStringPKc>
        return;
    80004be8:	0140006f          	j	80004bfc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004bec:	00004517          	auipc	a0,0x4
    80004bf0:	53c50513          	addi	a0,a0,1340 # 80009128 <CONSOLE_STATUS+0x118>
    80004bf4:	00000097          	auipc	ra,0x0
    80004bf8:	50c080e7          	jalr	1292(ra) # 80005100 <_Z11printStringPKc>
        return;
    80004bfc:	000b8113          	mv	sp,s7
    80004c00:	2380006f          	j	80004e38 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004c04:	01000513          	li	a0,16
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	260080e7          	jalr	608(ra) # 80001e68 <_Znwm>
    80004c10:	00050493          	mv	s1,a0
    80004c14:	00000593          	li	a1,0
    80004c18:	ffffd097          	auipc	ra,0xffffd
    80004c1c:	408080e7          	jalr	1032(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80004c20:	00007797          	auipc	a5,0x7
    80004c24:	ca97b023          	sd	s1,-864(a5) # 8000b8c0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004c28:	00391793          	slli	a5,s2,0x3
    80004c2c:	00f78793          	addi	a5,a5,15
    80004c30:	ff07f793          	andi	a5,a5,-16
    80004c34:	40f10133          	sub	sp,sp,a5
    80004c38:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004c3c:	0019071b          	addiw	a4,s2,1
    80004c40:	00171793          	slli	a5,a4,0x1
    80004c44:	00e787b3          	add	a5,a5,a4
    80004c48:	00379793          	slli	a5,a5,0x3
    80004c4c:	00f78793          	addi	a5,a5,15
    80004c50:	ff07f793          	andi	a5,a5,-16
    80004c54:	40f10133          	sub	sp,sp,a5
    80004c58:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004c5c:	00191c13          	slli	s8,s2,0x1
    80004c60:	012c07b3          	add	a5,s8,s2
    80004c64:	00379793          	slli	a5,a5,0x3
    80004c68:	00fa07b3          	add	a5,s4,a5
    80004c6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c70:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004c74:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004c78:	02800513          	li	a0,40
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	1ec080e7          	jalr	492(ra) # 80001e68 <_Znwm>
    80004c84:	00050b13          	mv	s6,a0
    80004c88:	012c0c33          	add	s8,s8,s2
    80004c8c:	003c1c13          	slli	s8,s8,0x3
    80004c90:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	364080e7          	jalr	868(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80004c9c:	00007797          	auipc	a5,0x7
    80004ca0:	afc78793          	addi	a5,a5,-1284 # 8000b798 <_ZTV12ConsumerSync+0x10>
    80004ca4:	00fb3023          	sd	a5,0(s6)
    80004ca8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004cac:	000b0513          	mv	a0,s6
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	2c4080e7          	jalr	708(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004cb8:	00000493          	li	s1,0
    80004cbc:	0380006f          	j	80004cf4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	ab078793          	addi	a5,a5,-1360 # 8000b770 <_ZTV12ProducerSync+0x10>
    80004cc8:	00fcb023          	sd	a5,0(s9)
    80004ccc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004cd0:	00349793          	slli	a5,s1,0x3
    80004cd4:	00f987b3          	add	a5,s3,a5
    80004cd8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004cdc:	00349793          	slli	a5,s1,0x3
    80004ce0:	00f987b3          	add	a5,s3,a5
    80004ce4:	0007b503          	ld	a0,0(a5)
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	28c080e7          	jalr	652(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004cf0:	0014849b          	addiw	s1,s1,1
    80004cf4:	0b24d063          	bge	s1,s2,80004d94 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004cf8:	00149793          	slli	a5,s1,0x1
    80004cfc:	009787b3          	add	a5,a5,s1
    80004d00:	00379793          	slli	a5,a5,0x3
    80004d04:	00fa07b3          	add	a5,s4,a5
    80004d08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004d0c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004d10:	00007717          	auipc	a4,0x7
    80004d14:	bb073703          	ld	a4,-1104(a4) # 8000b8c0 <_ZL10waitForAll>
    80004d18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004d1c:	02905863          	blez	s1,80004d4c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004d20:	02800513          	li	a0,40
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	144080e7          	jalr	324(ra) # 80001e68 <_Znwm>
    80004d2c:	00050c93          	mv	s9,a0
    80004d30:	00149c13          	slli	s8,s1,0x1
    80004d34:	009c0c33          	add	s8,s8,s1
    80004d38:	003c1c13          	slli	s8,s8,0x3
    80004d3c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	2b8080e7          	jalr	696(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80004d48:	f79ff06f          	j	80004cc0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004d4c:	02800513          	li	a0,40
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	118080e7          	jalr	280(ra) # 80001e68 <_Znwm>
    80004d58:	00050c93          	mv	s9,a0
    80004d5c:	00149c13          	slli	s8,s1,0x1
    80004d60:	009c0c33          	add	s8,s8,s1
    80004d64:	003c1c13          	slli	s8,s8,0x3
    80004d68:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	28c080e7          	jalr	652(ra) # 80001ff8 <_ZN6ThreadC1Ev>
    80004d74:	00007797          	auipc	a5,0x7
    80004d78:	9d478793          	addi	a5,a5,-1580 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    80004d7c:	00fcb023          	sd	a5,0(s9)
    80004d80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004d84:	00349793          	slli	a5,s1,0x3
    80004d88:	00f987b3          	add	a5,s3,a5
    80004d8c:	0197b023          	sd	s9,0(a5)
    80004d90:	f4dff06f          	j	80004cdc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	210080e7          	jalr	528(ra) # 80001fa4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d9c:	00000493          	li	s1,0
    80004da0:	00994e63          	blt	s2,s1,80004dbc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004da4:	00007517          	auipc	a0,0x7
    80004da8:	b1c53503          	ld	a0,-1252(a0) # 8000b8c0 <_ZL10waitForAll>
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	2b0080e7          	jalr	688(ra) # 8000205c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004db4:	0014849b          	addiw	s1,s1,1
    80004db8:	fe9ff06f          	j	80004da0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004dbc:	00000493          	li	s1,0
    80004dc0:	0080006f          	j	80004dc8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004dc4:	0014849b          	addiw	s1,s1,1
    80004dc8:	0324d263          	bge	s1,s2,80004dec <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004dcc:	00349793          	slli	a5,s1,0x3
    80004dd0:	00f987b3          	add	a5,s3,a5
    80004dd4:	0007b503          	ld	a0,0(a5)
    80004dd8:	fe0506e3          	beqz	a0,80004dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ddc:	00053783          	ld	a5,0(a0)
    80004de0:	0087b783          	ld	a5,8(a5)
    80004de4:	000780e7          	jalr	a5
    80004de8:	fddff06f          	j	80004dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004dec:	000b0a63          	beqz	s6,80004e00 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004df0:	000b3783          	ld	a5,0(s6)
    80004df4:	0087b783          	ld	a5,8(a5)
    80004df8:	000b0513          	mv	a0,s6
    80004dfc:	000780e7          	jalr	a5
    delete waitForAll;
    80004e00:	00007517          	auipc	a0,0x7
    80004e04:	ac053503          	ld	a0,-1344(a0) # 8000b8c0 <_ZL10waitForAll>
    80004e08:	00050863          	beqz	a0,80004e18 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004e0c:	00053783          	ld	a5,0(a0)
    80004e10:	0087b783          	ld	a5,8(a5)
    80004e14:	000780e7          	jalr	a5
    delete buffer;
    80004e18:	000a8e63          	beqz	s5,80004e34 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004e1c:	000a8513          	mv	a0,s5
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	8a8080e7          	jalr	-1880(ra) # 800056c8 <_ZN9BufferCPPD1Ev>
    80004e28:	000a8513          	mv	a0,s5
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	064080e7          	jalr	100(ra) # 80001e90 <_ZdlPv>
    80004e34:	000b8113          	mv	sp,s7

}
    80004e38:	f8040113          	addi	sp,s0,-128
    80004e3c:	07813083          	ld	ra,120(sp)
    80004e40:	07013403          	ld	s0,112(sp)
    80004e44:	06813483          	ld	s1,104(sp)
    80004e48:	06013903          	ld	s2,96(sp)
    80004e4c:	05813983          	ld	s3,88(sp)
    80004e50:	05013a03          	ld	s4,80(sp)
    80004e54:	04813a83          	ld	s5,72(sp)
    80004e58:	04013b03          	ld	s6,64(sp)
    80004e5c:	03813b83          	ld	s7,56(sp)
    80004e60:	03013c03          	ld	s8,48(sp)
    80004e64:	02813c83          	ld	s9,40(sp)
    80004e68:	08010113          	addi	sp,sp,128
    80004e6c:	00008067          	ret
    80004e70:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004e74:	000a8513          	mv	a0,s5
    80004e78:	ffffd097          	auipc	ra,0xffffd
    80004e7c:	018080e7          	jalr	24(ra) # 80001e90 <_ZdlPv>
    80004e80:	00048513          	mv	a0,s1
    80004e84:	00008097          	auipc	ra,0x8
    80004e88:	b24080e7          	jalr	-1244(ra) # 8000c9a8 <_Unwind_Resume>
    80004e8c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004e90:	00048513          	mv	a0,s1
    80004e94:	ffffd097          	auipc	ra,0xffffd
    80004e98:	ffc080e7          	jalr	-4(ra) # 80001e90 <_ZdlPv>
    80004e9c:	00090513          	mv	a0,s2
    80004ea0:	00008097          	auipc	ra,0x8
    80004ea4:	b08080e7          	jalr	-1272(ra) # 8000c9a8 <_Unwind_Resume>
    80004ea8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004eac:	000b0513          	mv	a0,s6
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	fe0080e7          	jalr	-32(ra) # 80001e90 <_ZdlPv>
    80004eb8:	00048513          	mv	a0,s1
    80004ebc:	00008097          	auipc	ra,0x8
    80004ec0:	aec080e7          	jalr	-1300(ra) # 8000c9a8 <_Unwind_Resume>
    80004ec4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004ec8:	000c8513          	mv	a0,s9
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	fc4080e7          	jalr	-60(ra) # 80001e90 <_ZdlPv>
    80004ed4:	00048513          	mv	a0,s1
    80004ed8:	00008097          	auipc	ra,0x8
    80004edc:	ad0080e7          	jalr	-1328(ra) # 8000c9a8 <_Unwind_Resume>
    80004ee0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004ee4:	000c8513          	mv	a0,s9
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	fa8080e7          	jalr	-88(ra) # 80001e90 <_ZdlPv>
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00008097          	auipc	ra,0x8
    80004ef8:	ab4080e7          	jalr	-1356(ra) # 8000c9a8 <_Unwind_Resume>

0000000080004efc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004efc:	ff010113          	addi	sp,sp,-16
    80004f00:	00113423          	sd	ra,8(sp)
    80004f04:	00813023          	sd	s0,0(sp)
    80004f08:	01010413          	addi	s0,sp,16
    80004f0c:	00007797          	auipc	a5,0x7
    80004f10:	88c78793          	addi	a5,a5,-1908 # 8000b798 <_ZTV12ConsumerSync+0x10>
    80004f14:	00f53023          	sd	a5,0(a0)
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	eb8080e7          	jalr	-328(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004f20:	00813083          	ld	ra,8(sp)
    80004f24:	00013403          	ld	s0,0(sp)
    80004f28:	01010113          	addi	sp,sp,16
    80004f2c:	00008067          	ret

0000000080004f30 <_ZN12ConsumerSyncD0Ev>:
    80004f30:	fe010113          	addi	sp,sp,-32
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	00813823          	sd	s0,16(sp)
    80004f3c:	00913423          	sd	s1,8(sp)
    80004f40:	02010413          	addi	s0,sp,32
    80004f44:	00050493          	mv	s1,a0
    80004f48:	00007797          	auipc	a5,0x7
    80004f4c:	85078793          	addi	a5,a5,-1968 # 8000b798 <_ZTV12ConsumerSync+0x10>
    80004f50:	00f53023          	sd	a5,0(a0)
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	e7c080e7          	jalr	-388(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004f5c:	00048513          	mv	a0,s1
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	f30080e7          	jalr	-208(ra) # 80001e90 <_ZdlPv>
    80004f68:	01813083          	ld	ra,24(sp)
    80004f6c:	01013403          	ld	s0,16(sp)
    80004f70:	00813483          	ld	s1,8(sp)
    80004f74:	02010113          	addi	sp,sp,32
    80004f78:	00008067          	ret

0000000080004f7c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004f7c:	ff010113          	addi	sp,sp,-16
    80004f80:	00113423          	sd	ra,8(sp)
    80004f84:	00813023          	sd	s0,0(sp)
    80004f88:	01010413          	addi	s0,sp,16
    80004f8c:	00006797          	auipc	a5,0x6
    80004f90:	7e478793          	addi	a5,a5,2020 # 8000b770 <_ZTV12ProducerSync+0x10>
    80004f94:	00f53023          	sd	a5,0(a0)
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	e38080e7          	jalr	-456(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004fa0:	00813083          	ld	ra,8(sp)
    80004fa4:	00013403          	ld	s0,0(sp)
    80004fa8:	01010113          	addi	sp,sp,16
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN12ProducerSyncD0Ev>:
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00113c23          	sd	ra,24(sp)
    80004fb8:	00813823          	sd	s0,16(sp)
    80004fbc:	00913423          	sd	s1,8(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00050493          	mv	s1,a0
    80004fc8:	00006797          	auipc	a5,0x6
    80004fcc:	7a878793          	addi	a5,a5,1960 # 8000b770 <_ZTV12ProducerSync+0x10>
    80004fd0:	00f53023          	sd	a5,0(a0)
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	dfc080e7          	jalr	-516(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80004fdc:	00048513          	mv	a0,s1
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	eb0080e7          	jalr	-336(ra) # 80001e90 <_ZdlPv>
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	02010113          	addi	sp,sp,32
    80004ff8:	00008067          	ret

0000000080004ffc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004ffc:	ff010113          	addi	sp,sp,-16
    80005000:	00113423          	sd	ra,8(sp)
    80005004:	00813023          	sd	s0,0(sp)
    80005008:	01010413          	addi	s0,sp,16
    8000500c:	00006797          	auipc	a5,0x6
    80005010:	73c78793          	addi	a5,a5,1852 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    80005014:	00f53023          	sd	a5,0(a0)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	db8080e7          	jalr	-584(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    80005020:	00813083          	ld	ra,8(sp)
    80005024:	00013403          	ld	s0,0(sp)
    80005028:	01010113          	addi	sp,sp,16
    8000502c:	00008067          	ret

0000000080005030 <_ZN16ProducerKeyboardD0Ev>:
    80005030:	fe010113          	addi	sp,sp,-32
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00813823          	sd	s0,16(sp)
    8000503c:	00913423          	sd	s1,8(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    80005048:	00006797          	auipc	a5,0x6
    8000504c:	70078793          	addi	a5,a5,1792 # 8000b748 <_ZTV16ProducerKeyboard+0x10>
    80005050:	00f53023          	sd	a5,0(a0)
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	d7c080e7          	jalr	-644(ra) # 80001dd0 <_ZN6ThreadD1Ev>
    8000505c:	00048513          	mv	a0,s1
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	e30080e7          	jalr	-464(ra) # 80001e90 <_ZdlPv>
    80005068:	01813083          	ld	ra,24(sp)
    8000506c:	01013403          	ld	s0,16(sp)
    80005070:	00813483          	ld	s1,8(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret

000000008000507c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00113423          	sd	ra,8(sp)
    80005084:	00813023          	sd	s0,0(sp)
    80005088:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000508c:	02053583          	ld	a1,32(a0)
    80005090:	fffff097          	auipc	ra,0xfffff
    80005094:	7e4080e7          	jalr	2020(ra) # 80004874 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005098:	00813083          	ld	ra,8(sp)
    8000509c:	00013403          	ld	s0,0(sp)
    800050a0:	01010113          	addi	sp,sp,16
    800050a4:	00008067          	ret

00000000800050a8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00113423          	sd	ra,8(sp)
    800050b0:	00813023          	sd	s0,0(sp)
    800050b4:	01010413          	addi	s0,sp,16
        producer(td);
    800050b8:	02053583          	ld	a1,32(a0)
    800050bc:	00000097          	auipc	ra,0x0
    800050c0:	878080e7          	jalr	-1928(ra) # 80004934 <_ZN12ProducerSync8producerEPv>
    }
    800050c4:	00813083          	ld	ra,8(sp)
    800050c8:	00013403          	ld	s0,0(sp)
    800050cc:	01010113          	addi	sp,sp,16
    800050d0:	00008067          	ret

00000000800050d4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800050d4:	ff010113          	addi	sp,sp,-16
    800050d8:	00113423          	sd	ra,8(sp)
    800050dc:	00813023          	sd	s0,0(sp)
    800050e0:	01010413          	addi	s0,sp,16
        consumer(td);
    800050e4:	02053583          	ld	a1,32(a0)
    800050e8:	00000097          	auipc	ra,0x0
    800050ec:	8e0080e7          	jalr	-1824(ra) # 800049c8 <_ZN12ConsumerSync8consumerEPv>
    }
    800050f0:	00813083          	ld	ra,8(sp)
    800050f4:	00013403          	ld	s0,0(sp)
    800050f8:	01010113          	addi	sp,sp,16
    800050fc:	00008067          	ret

0000000080005100 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005100:	fe010113          	addi	sp,sp,-32
    80005104:	00113c23          	sd	ra,24(sp)
    80005108:	00813823          	sd	s0,16(sp)
    8000510c:	00913423          	sd	s1,8(sp)
    80005110:	02010413          	addi	s0,sp,32
    80005114:	00050493          	mv	s1,a0
    LOCK();
    80005118:	00100613          	li	a2,1
    8000511c:	00000593          	li	a1,0
    80005120:	00006517          	auipc	a0,0x6
    80005124:	7a850513          	addi	a0,a0,1960 # 8000b8c8 <lockPrint>
    80005128:	ffffc097          	auipc	ra,0xffffc
    8000512c:	ff8080e7          	jalr	-8(ra) # 80001120 <copy_and_swap>
    80005130:	00050863          	beqz	a0,80005140 <_Z11printStringPKc+0x40>
    80005134:	ffffc097          	auipc	ra,0xffffc
    80005138:	19c080e7          	jalr	412(ra) # 800012d0 <_Z15thread_dispatchv>
    8000513c:	fddff06f          	j	80005118 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005140:	0004c503          	lbu	a0,0(s1)
    80005144:	00050a63          	beqz	a0,80005158 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005148:	ffffc097          	auipc	ra,0xffffc
    8000514c:	2d4080e7          	jalr	724(ra) # 8000141c <_Z4putcc>
        string++;
    80005150:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005154:	fedff06f          	j	80005140 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005158:	00000613          	li	a2,0
    8000515c:	00100593          	li	a1,1
    80005160:	00006517          	auipc	a0,0x6
    80005164:	76850513          	addi	a0,a0,1896 # 8000b8c8 <lockPrint>
    80005168:	ffffc097          	auipc	ra,0xffffc
    8000516c:	fb8080e7          	jalr	-72(ra) # 80001120 <copy_and_swap>
    80005170:	fe0514e3          	bnez	a0,80005158 <_Z11printStringPKc+0x58>
}
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005188:	fd010113          	addi	sp,sp,-48
    8000518c:	02113423          	sd	ra,40(sp)
    80005190:	02813023          	sd	s0,32(sp)
    80005194:	00913c23          	sd	s1,24(sp)
    80005198:	01213823          	sd	s2,16(sp)
    8000519c:	01313423          	sd	s3,8(sp)
    800051a0:	01413023          	sd	s4,0(sp)
    800051a4:	03010413          	addi	s0,sp,48
    800051a8:	00050993          	mv	s3,a0
    800051ac:	00058a13          	mv	s4,a1
    LOCK();
    800051b0:	00100613          	li	a2,1
    800051b4:	00000593          	li	a1,0
    800051b8:	00006517          	auipc	a0,0x6
    800051bc:	71050513          	addi	a0,a0,1808 # 8000b8c8 <lockPrint>
    800051c0:	ffffc097          	auipc	ra,0xffffc
    800051c4:	f60080e7          	jalr	-160(ra) # 80001120 <copy_and_swap>
    800051c8:	00050863          	beqz	a0,800051d8 <_Z9getStringPci+0x50>
    800051cc:	ffffc097          	auipc	ra,0xffffc
    800051d0:	104080e7          	jalr	260(ra) # 800012d0 <_Z15thread_dispatchv>
    800051d4:	fddff06f          	j	800051b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800051d8:	00000913          	li	s2,0
    800051dc:	00090493          	mv	s1,s2
    800051e0:	0019091b          	addiw	s2,s2,1
    800051e4:	03495a63          	bge	s2,s4,80005218 <_Z9getStringPci+0x90>
        cc = getc();
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	1e8080e7          	jalr	488(ra) # 800013d0 <_Z4getcv>
        if(cc < 1)
    800051f0:	02050463          	beqz	a0,80005218 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800051f4:	009984b3          	add	s1,s3,s1
    800051f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800051fc:	00a00793          	li	a5,10
    80005200:	00f50a63          	beq	a0,a5,80005214 <_Z9getStringPci+0x8c>
    80005204:	00d00793          	li	a5,13
    80005208:	fcf51ae3          	bne	a0,a5,800051dc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000520c:	00090493          	mv	s1,s2
    80005210:	0080006f          	j	80005218 <_Z9getStringPci+0x90>
    80005214:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005218:	009984b3          	add	s1,s3,s1
    8000521c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005220:	00000613          	li	a2,0
    80005224:	00100593          	li	a1,1
    80005228:	00006517          	auipc	a0,0x6
    8000522c:	6a050513          	addi	a0,a0,1696 # 8000b8c8 <lockPrint>
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	ef0080e7          	jalr	-272(ra) # 80001120 <copy_and_swap>
    80005238:	fe0514e3          	bnez	a0,80005220 <_Z9getStringPci+0x98>
    return buf;
}
    8000523c:	00098513          	mv	a0,s3
    80005240:	02813083          	ld	ra,40(sp)
    80005244:	02013403          	ld	s0,32(sp)
    80005248:	01813483          	ld	s1,24(sp)
    8000524c:	01013903          	ld	s2,16(sp)
    80005250:	00813983          	ld	s3,8(sp)
    80005254:	00013a03          	ld	s4,0(sp)
    80005258:	03010113          	addi	sp,sp,48
    8000525c:	00008067          	ret

0000000080005260 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005260:	ff010113          	addi	sp,sp,-16
    80005264:	00813423          	sd	s0,8(sp)
    80005268:	01010413          	addi	s0,sp,16
    8000526c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005270:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005274:	0006c603          	lbu	a2,0(a3)
    80005278:	fd06071b          	addiw	a4,a2,-48
    8000527c:	0ff77713          	andi	a4,a4,255
    80005280:	00900793          	li	a5,9
    80005284:	02e7e063          	bltu	a5,a4,800052a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005288:	0025179b          	slliw	a5,a0,0x2
    8000528c:	00a787bb          	addw	a5,a5,a0
    80005290:	0017979b          	slliw	a5,a5,0x1
    80005294:	00168693          	addi	a3,a3,1
    80005298:	00c787bb          	addw	a5,a5,a2
    8000529c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800052a0:	fd5ff06f          	j	80005274 <_Z11stringToIntPKc+0x14>
    return n;
}
    800052a4:	00813403          	ld	s0,8(sp)
    800052a8:	01010113          	addi	sp,sp,16
    800052ac:	00008067          	ret

00000000800052b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800052b0:	fc010113          	addi	sp,sp,-64
    800052b4:	02113c23          	sd	ra,56(sp)
    800052b8:	02813823          	sd	s0,48(sp)
    800052bc:	02913423          	sd	s1,40(sp)
    800052c0:	03213023          	sd	s2,32(sp)
    800052c4:	01313c23          	sd	s3,24(sp)
    800052c8:	04010413          	addi	s0,sp,64
    800052cc:	00050493          	mv	s1,a0
    800052d0:	00058913          	mv	s2,a1
    800052d4:	00060993          	mv	s3,a2
    LOCK();
    800052d8:	00100613          	li	a2,1
    800052dc:	00000593          	li	a1,0
    800052e0:	00006517          	auipc	a0,0x6
    800052e4:	5e850513          	addi	a0,a0,1512 # 8000b8c8 <lockPrint>
    800052e8:	ffffc097          	auipc	ra,0xffffc
    800052ec:	e38080e7          	jalr	-456(ra) # 80001120 <copy_and_swap>
    800052f0:	00050863          	beqz	a0,80005300 <_Z8printIntiii+0x50>
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	fdc080e7          	jalr	-36(ra) # 800012d0 <_Z15thread_dispatchv>
    800052fc:	fddff06f          	j	800052d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005300:	00098463          	beqz	s3,80005308 <_Z8printIntiii+0x58>
    80005304:	0804c463          	bltz	s1,8000538c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005308:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000530c:	00000593          	li	a1,0
    }

    i = 0;
    80005310:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005314:	0009079b          	sext.w	a5,s2
    80005318:	0325773b          	remuw	a4,a0,s2
    8000531c:	00048613          	mv	a2,s1
    80005320:	0014849b          	addiw	s1,s1,1
    80005324:	02071693          	slli	a3,a4,0x20
    80005328:	0206d693          	srli	a3,a3,0x20
    8000532c:	00006717          	auipc	a4,0x6
    80005330:	48470713          	addi	a4,a4,1156 # 8000b7b0 <digits>
    80005334:	00d70733          	add	a4,a4,a3
    80005338:	00074683          	lbu	a3,0(a4)
    8000533c:	fd040713          	addi	a4,s0,-48
    80005340:	00c70733          	add	a4,a4,a2
    80005344:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005348:	0005071b          	sext.w	a4,a0
    8000534c:	0325553b          	divuw	a0,a0,s2
    80005350:	fcf772e3          	bgeu	a4,a5,80005314 <_Z8printIntiii+0x64>
    if(neg)
    80005354:	00058c63          	beqz	a1,8000536c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005358:	fd040793          	addi	a5,s0,-48
    8000535c:	009784b3          	add	s1,a5,s1
    80005360:	02d00793          	li	a5,45
    80005364:	fef48823          	sb	a5,-16(s1)
    80005368:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000536c:	fff4849b          	addiw	s1,s1,-1
    80005370:	0204c463          	bltz	s1,80005398 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005374:	fd040793          	addi	a5,s0,-48
    80005378:	009787b3          	add	a5,a5,s1
    8000537c:	ff07c503          	lbu	a0,-16(a5)
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	09c080e7          	jalr	156(ra) # 8000141c <_Z4putcc>
    80005388:	fe5ff06f          	j	8000536c <_Z8printIntiii+0xbc>
        x = -xx;
    8000538c:	4090053b          	negw	a0,s1
        neg = 1;
    80005390:	00100593          	li	a1,1
        x = -xx;
    80005394:	f7dff06f          	j	80005310 <_Z8printIntiii+0x60>

    UNLOCK();
    80005398:	00000613          	li	a2,0
    8000539c:	00100593          	li	a1,1
    800053a0:	00006517          	auipc	a0,0x6
    800053a4:	52850513          	addi	a0,a0,1320 # 8000b8c8 <lockPrint>
    800053a8:	ffffc097          	auipc	ra,0xffffc
    800053ac:	d78080e7          	jalr	-648(ra) # 80001120 <copy_and_swap>
    800053b0:	fe0514e3          	bnez	a0,80005398 <_Z8printIntiii+0xe8>
    800053b4:	03813083          	ld	ra,56(sp)
    800053b8:	03013403          	ld	s0,48(sp)
    800053bc:	02813483          	ld	s1,40(sp)
    800053c0:	02013903          	ld	s2,32(sp)
    800053c4:	01813983          	ld	s3,24(sp)
    800053c8:	04010113          	addi	sp,sp,64
    800053cc:	00008067          	ret

00000000800053d0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800053d0:	fd010113          	addi	sp,sp,-48
    800053d4:	02113423          	sd	ra,40(sp)
    800053d8:	02813023          	sd	s0,32(sp)
    800053dc:	00913c23          	sd	s1,24(sp)
    800053e0:	01213823          	sd	s2,16(sp)
    800053e4:	01313423          	sd	s3,8(sp)
    800053e8:	03010413          	addi	s0,sp,48
    800053ec:	00050493          	mv	s1,a0
    800053f0:	00058913          	mv	s2,a1
    800053f4:	0015879b          	addiw	a5,a1,1
    800053f8:	0007851b          	sext.w	a0,a5
    800053fc:	00f4a023          	sw	a5,0(s1)
    80005400:	0004a823          	sw	zero,16(s1)
    80005404:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005408:	00251513          	slli	a0,a0,0x2
    8000540c:	ffffc097          	auipc	ra,0xffffc
    80005410:	d50080e7          	jalr	-688(ra) # 8000115c <_Z9mem_allocm>
    80005414:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005418:	01000513          	li	a0,16
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	a4c080e7          	jalr	-1460(ra) # 80001e68 <_Znwm>
    80005424:	00050993          	mv	s3,a0
    80005428:	00000593          	li	a1,0
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	bf4080e7          	jalr	-1036(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005434:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005438:	01000513          	li	a0,16
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	a2c080e7          	jalr	-1492(ra) # 80001e68 <_Znwm>
    80005444:	00050993          	mv	s3,a0
    80005448:	00090593          	mv	a1,s2
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	bd4080e7          	jalr	-1068(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005454:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005458:	01000513          	li	a0,16
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	a0c080e7          	jalr	-1524(ra) # 80001e68 <_Znwm>
    80005464:	00050913          	mv	s2,a0
    80005468:	00100593          	li	a1,1
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	bb4080e7          	jalr	-1100(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005474:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005478:	01000513          	li	a0,16
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	9ec080e7          	jalr	-1556(ra) # 80001e68 <_Znwm>
    80005484:	00050913          	mv	s2,a0
    80005488:	00100593          	li	a1,1
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	b94080e7          	jalr	-1132(ra) # 80002020 <_ZN9SemaphoreC1Ej>
    80005494:	0324b823          	sd	s2,48(s1)
}
    80005498:	02813083          	ld	ra,40(sp)
    8000549c:	02013403          	ld	s0,32(sp)
    800054a0:	01813483          	ld	s1,24(sp)
    800054a4:	01013903          	ld	s2,16(sp)
    800054a8:	00813983          	ld	s3,8(sp)
    800054ac:	03010113          	addi	sp,sp,48
    800054b0:	00008067          	ret
    800054b4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800054b8:	00098513          	mv	a0,s3
    800054bc:	ffffd097          	auipc	ra,0xffffd
    800054c0:	9d4080e7          	jalr	-1580(ra) # 80001e90 <_ZdlPv>
    800054c4:	00048513          	mv	a0,s1
    800054c8:	00007097          	auipc	ra,0x7
    800054cc:	4e0080e7          	jalr	1248(ra) # 8000c9a8 <_Unwind_Resume>
    800054d0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800054d4:	00098513          	mv	a0,s3
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	9b8080e7          	jalr	-1608(ra) # 80001e90 <_ZdlPv>
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00007097          	auipc	ra,0x7
    800054e8:	4c4080e7          	jalr	1220(ra) # 8000c9a8 <_Unwind_Resume>
    800054ec:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800054f0:	00090513          	mv	a0,s2
    800054f4:	ffffd097          	auipc	ra,0xffffd
    800054f8:	99c080e7          	jalr	-1636(ra) # 80001e90 <_ZdlPv>
    800054fc:	00048513          	mv	a0,s1
    80005500:	00007097          	auipc	ra,0x7
    80005504:	4a8080e7          	jalr	1192(ra) # 8000c9a8 <_Unwind_Resume>
    80005508:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000550c:	00090513          	mv	a0,s2
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	980080e7          	jalr	-1664(ra) # 80001e90 <_ZdlPv>
    80005518:	00048513          	mv	a0,s1
    8000551c:	00007097          	auipc	ra,0x7
    80005520:	48c080e7          	jalr	1164(ra) # 8000c9a8 <_Unwind_Resume>

0000000080005524 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005524:	fe010113          	addi	sp,sp,-32
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00813823          	sd	s0,16(sp)
    80005530:	00913423          	sd	s1,8(sp)
    80005534:	01213023          	sd	s2,0(sp)
    80005538:	02010413          	addi	s0,sp,32
    8000553c:	00050493          	mv	s1,a0
    80005540:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005544:	01853503          	ld	a0,24(a0)
    80005548:	ffffd097          	auipc	ra,0xffffd
    8000554c:	b14080e7          	jalr	-1260(ra) # 8000205c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005550:	0304b503          	ld	a0,48(s1)
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	b08080e7          	jalr	-1272(ra) # 8000205c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000555c:	0084b783          	ld	a5,8(s1)
    80005560:	0144a703          	lw	a4,20(s1)
    80005564:	00271713          	slli	a4,a4,0x2
    80005568:	00e787b3          	add	a5,a5,a4
    8000556c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005570:	0144a783          	lw	a5,20(s1)
    80005574:	0017879b          	addiw	a5,a5,1
    80005578:	0004a703          	lw	a4,0(s1)
    8000557c:	02e7e7bb          	remw	a5,a5,a4
    80005580:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005584:	0304b503          	ld	a0,48(s1)
    80005588:	ffffd097          	auipc	ra,0xffffd
    8000558c:	b0c080e7          	jalr	-1268(ra) # 80002094 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005590:	0204b503          	ld	a0,32(s1)
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	b00080e7          	jalr	-1280(ra) # 80002094 <_ZN9Semaphore6signalEv>

}
    8000559c:	01813083          	ld	ra,24(sp)
    800055a0:	01013403          	ld	s0,16(sp)
    800055a4:	00813483          	ld	s1,8(sp)
    800055a8:	00013903          	ld	s2,0(sp)
    800055ac:	02010113          	addi	sp,sp,32
    800055b0:	00008067          	ret

00000000800055b4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800055b4:	fe010113          	addi	sp,sp,-32
    800055b8:	00113c23          	sd	ra,24(sp)
    800055bc:	00813823          	sd	s0,16(sp)
    800055c0:	00913423          	sd	s1,8(sp)
    800055c4:	01213023          	sd	s2,0(sp)
    800055c8:	02010413          	addi	s0,sp,32
    800055cc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800055d0:	02053503          	ld	a0,32(a0)
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	a88080e7          	jalr	-1400(ra) # 8000205c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800055dc:	0284b503          	ld	a0,40(s1)
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	a7c080e7          	jalr	-1412(ra) # 8000205c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800055e8:	0084b703          	ld	a4,8(s1)
    800055ec:	0104a783          	lw	a5,16(s1)
    800055f0:	00279693          	slli	a3,a5,0x2
    800055f4:	00d70733          	add	a4,a4,a3
    800055f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800055fc:	0017879b          	addiw	a5,a5,1
    80005600:	0004a703          	lw	a4,0(s1)
    80005604:	02e7e7bb          	remw	a5,a5,a4
    80005608:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000560c:	0284b503          	ld	a0,40(s1)
    80005610:	ffffd097          	auipc	ra,0xffffd
    80005614:	a84080e7          	jalr	-1404(ra) # 80002094 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005618:	0184b503          	ld	a0,24(s1)
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	a78080e7          	jalr	-1416(ra) # 80002094 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005624:	00090513          	mv	a0,s2
    80005628:	01813083          	ld	ra,24(sp)
    8000562c:	01013403          	ld	s0,16(sp)
    80005630:	00813483          	ld	s1,8(sp)
    80005634:	00013903          	ld	s2,0(sp)
    80005638:	02010113          	addi	sp,sp,32
    8000563c:	00008067          	ret

0000000080005640 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005640:	fe010113          	addi	sp,sp,-32
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	00813823          	sd	s0,16(sp)
    8000564c:	00913423          	sd	s1,8(sp)
    80005650:	01213023          	sd	s2,0(sp)
    80005654:	02010413          	addi	s0,sp,32
    80005658:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000565c:	02853503          	ld	a0,40(a0)
    80005660:	ffffd097          	auipc	ra,0xffffd
    80005664:	9fc080e7          	jalr	-1540(ra) # 8000205c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005668:	0304b503          	ld	a0,48(s1)
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	9f0080e7          	jalr	-1552(ra) # 8000205c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005674:	0144a783          	lw	a5,20(s1)
    80005678:	0104a903          	lw	s2,16(s1)
    8000567c:	0327ce63          	blt	a5,s2,800056b8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005680:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005684:	0304b503          	ld	a0,48(s1)
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	a0c080e7          	jalr	-1524(ra) # 80002094 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005690:	0284b503          	ld	a0,40(s1)
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	a00080e7          	jalr	-1536(ra) # 80002094 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000569c:	00090513          	mv	a0,s2
    800056a0:	01813083          	ld	ra,24(sp)
    800056a4:	01013403          	ld	s0,16(sp)
    800056a8:	00813483          	ld	s1,8(sp)
    800056ac:	00013903          	ld	s2,0(sp)
    800056b0:	02010113          	addi	sp,sp,32
    800056b4:	00008067          	ret
        ret = cap - head + tail;
    800056b8:	0004a703          	lw	a4,0(s1)
    800056bc:	4127093b          	subw	s2,a4,s2
    800056c0:	00f9093b          	addw	s2,s2,a5
    800056c4:	fc1ff06f          	j	80005684 <_ZN9BufferCPP6getCntEv+0x44>

00000000800056c8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800056c8:	fe010113          	addi	sp,sp,-32
    800056cc:	00113c23          	sd	ra,24(sp)
    800056d0:	00813823          	sd	s0,16(sp)
    800056d4:	00913423          	sd	s1,8(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800056e0:	00a00513          	li	a0,10
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	aa0080e7          	jalr	-1376(ra) # 80002184 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	b6450513          	addi	a0,a0,-1180 # 80009250 <CONSOLE_STATUS+0x240>
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	a0c080e7          	jalr	-1524(ra) # 80005100 <_Z11printStringPKc>
    while (getCnt()) {
    800056fc:	00048513          	mv	a0,s1
    80005700:	00000097          	auipc	ra,0x0
    80005704:	f40080e7          	jalr	-192(ra) # 80005640 <_ZN9BufferCPP6getCntEv>
    80005708:	02050c63          	beqz	a0,80005740 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000570c:	0084b783          	ld	a5,8(s1)
    80005710:	0104a703          	lw	a4,16(s1)
    80005714:	00271713          	slli	a4,a4,0x2
    80005718:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000571c:	0007c503          	lbu	a0,0(a5)
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	a64080e7          	jalr	-1436(ra) # 80002184 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005728:	0104a783          	lw	a5,16(s1)
    8000572c:	0017879b          	addiw	a5,a5,1
    80005730:	0004a703          	lw	a4,0(s1)
    80005734:	02e7e7bb          	remw	a5,a5,a4
    80005738:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000573c:	fc1ff06f          	j	800056fc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005740:	02100513          	li	a0,33
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	a40080e7          	jalr	-1472(ra) # 80002184 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000574c:	00a00513          	li	a0,10
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	a34080e7          	jalr	-1484(ra) # 80002184 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005758:	0084b503          	ld	a0,8(s1)
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	a54080e7          	jalr	-1452(ra) # 800011b0 <_Z8mem_freePv>
    delete itemAvailable;
    80005764:	0204b503          	ld	a0,32(s1)
    80005768:	00050863          	beqz	a0,80005778 <_ZN9BufferCPPD1Ev+0xb0>
    8000576c:	00053783          	ld	a5,0(a0)
    80005770:	0087b783          	ld	a5,8(a5)
    80005774:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005778:	0184b503          	ld	a0,24(s1)
    8000577c:	00050863          	beqz	a0,8000578c <_ZN9BufferCPPD1Ev+0xc4>
    80005780:	00053783          	ld	a5,0(a0)
    80005784:	0087b783          	ld	a5,8(a5)
    80005788:	000780e7          	jalr	a5
    delete mutexTail;
    8000578c:	0304b503          	ld	a0,48(s1)
    80005790:	00050863          	beqz	a0,800057a0 <_ZN9BufferCPPD1Ev+0xd8>
    80005794:	00053783          	ld	a5,0(a0)
    80005798:	0087b783          	ld	a5,8(a5)
    8000579c:	000780e7          	jalr	a5
    delete mutexHead;
    800057a0:	0284b503          	ld	a0,40(s1)
    800057a4:	00050863          	beqz	a0,800057b4 <_ZN9BufferCPPD1Ev+0xec>
    800057a8:	00053783          	ld	a5,0(a0)
    800057ac:	0087b783          	ld	a5,8(a5)
    800057b0:	000780e7          	jalr	a5
}
    800057b4:	01813083          	ld	ra,24(sp)
    800057b8:	01013403          	ld	s0,16(sp)
    800057bc:	00813483          	ld	s1,8(sp)
    800057c0:	02010113          	addi	sp,sp,32
    800057c4:	00008067          	ret

00000000800057c8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	01213023          	sd	s2,0(sp)
    800057dc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800057e0:	00004517          	auipc	a0,0x4
    800057e4:	a8850513          	addi	a0,a0,-1400 # 80009268 <CONSOLE_STATUS+0x258>
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	918080e7          	jalr	-1768(ra) # 80005100 <_Z11printStringPKc>
    int test = getc() - '0';
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	be0080e7          	jalr	-1056(ra) # 800013d0 <_Z4getcv>
    800057f8:	0005091b          	sext.w	s2,a0
    800057fc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	bd0080e7          	jalr	-1072(ra) # 800013d0 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005808:	fcf9071b          	addiw	a4,s2,-49
    8000580c:	00100793          	li	a5,1
    80005810:	04e7f063          	bgeu	a5,a4,80005850 <_Z8userMainv+0x88>
    80005814:	00700793          	li	a5,7
    80005818:	02f48c63          	beq	s1,a5,80005850 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    8000581c:	fcd9079b          	addiw	a5,s2,-51
    80005820:	00100693          	li	a3,1
    80005824:	04f6fa63          	bgeu	a3,a5,80005878 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005828:	fcb9091b          	addiw	s2,s2,-53
    8000582c:	00100793          	li	a5,1
    80005830:	0527fe63          	bgeu	a5,s2,8000588c <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005834:	00600793          	li	a5,6
    80005838:	02e7f463          	bgeu	a5,a4,80005860 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    8000583c:	00004517          	auipc	a0,0x4
    80005840:	adc50513          	addi	a0,a0,-1316 # 80009318 <CONSOLE_STATUS+0x308>
    80005844:	00000097          	auipc	ra,0x0
    80005848:	8bc080e7          	jalr	-1860(ra) # 80005100 <_Z11printStringPKc>
    8000584c:	0140006f          	j	80005860 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005850:	00004517          	auipc	a0,0x4
    80005854:	a3850513          	addi	a0,a0,-1480 # 80009288 <CONSOLE_STATUS+0x278>
    80005858:	00000097          	auipc	ra,0x0
    8000585c:	8a8080e7          	jalr	-1880(ra) # 80005100 <_Z11printStringPKc>
    }
    80005860:	01813083          	ld	ra,24(sp)
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	00813483          	ld	s1,8(sp)
    8000586c:	00013903          	ld	s2,0(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	a4050513          	addi	a0,a0,-1472 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005880:	00000097          	auipc	ra,0x0
    80005884:	880080e7          	jalr	-1920(ra) # 80005100 <_Z11printStringPKc>
            return;
    80005888:	fd9ff06f          	j	80005860 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	a5c50513          	addi	a0,a0,-1444 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	86c080e7          	jalr	-1940(ra) # 80005100 <_Z11printStringPKc>
            return;
    8000589c:	fc5ff06f          	j	80005860 <_Z8userMainv+0x98>

00000000800058a0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800058a0:	fe010113          	addi	sp,sp,-32
    800058a4:	00113c23          	sd	ra,24(sp)
    800058a8:	00813823          	sd	s0,16(sp)
    800058ac:	00913423          	sd	s1,8(sp)
    800058b0:	01213023          	sd	s2,0(sp)
    800058b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800058b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800058bc:	00600493          	li	s1,6
    while (--i > 0) {
    800058c0:	fff4849b          	addiw	s1,s1,-1
    800058c4:	04905463          	blez	s1,8000590c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800058c8:	00004517          	auipc	a0,0x4
    800058cc:	a7850513          	addi	a0,a0,-1416 # 80009340 <CONSOLE_STATUS+0x330>
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	830080e7          	jalr	-2000(ra) # 80005100 <_Z11printStringPKc>
        printInt(sleep_time);
    800058d8:	00000613          	li	a2,0
    800058dc:	00a00593          	li	a1,10
    800058e0:	0009051b          	sext.w	a0,s2
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	9cc080e7          	jalr	-1588(ra) # 800052b0 <_Z8printIntiii>
        printString(" !\n");
    800058ec:	00004517          	auipc	a0,0x4
    800058f0:	a5c50513          	addi	a0,a0,-1444 # 80009348 <CONSOLE_STATUS+0x338>
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	80c080e7          	jalr	-2036(ra) # 80005100 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800058fc:	00090513          	mv	a0,s2
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	ab4080e7          	jalr	-1356(ra) # 800013b4 <_Z10time_sleepm>
    while (--i > 0) {
    80005908:	fb9ff06f          	j	800058c0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000590c:	00a00793          	li	a5,10
    80005910:	02f95933          	divu	s2,s2,a5
    80005914:	fff90913          	addi	s2,s2,-1
    80005918:	00006797          	auipc	a5,0x6
    8000591c:	fb878793          	addi	a5,a5,-72 # 8000b8d0 <_ZL8finished>
    80005920:	01278933          	add	s2,a5,s2
    80005924:	00100793          	li	a5,1
    80005928:	00f90023          	sb	a5,0(s2)
}
    8000592c:	01813083          	ld	ra,24(sp)
    80005930:	01013403          	ld	s0,16(sp)
    80005934:	00813483          	ld	s1,8(sp)
    80005938:	00013903          	ld	s2,0(sp)
    8000593c:	02010113          	addi	sp,sp,32
    80005940:	00008067          	ret

0000000080005944 <_Z12testSleepingv>:

void testSleeping() {
    80005944:	fc010113          	addi	sp,sp,-64
    80005948:	02113c23          	sd	ra,56(sp)
    8000594c:	02813823          	sd	s0,48(sp)
    80005950:	02913423          	sd	s1,40(sp)
    80005954:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005958:	00a00793          	li	a5,10
    8000595c:	fcf43823          	sd	a5,-48(s0)
    80005960:	01400793          	li	a5,20
    80005964:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005968:	00000493          	li	s1,0
    8000596c:	02c0006f          	j	80005998 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005970:	00349793          	slli	a5,s1,0x3
    80005974:	fd040613          	addi	a2,s0,-48
    80005978:	00f60633          	add	a2,a2,a5
    8000597c:	00000597          	auipc	a1,0x0
    80005980:	f2458593          	addi	a1,a1,-220 # 800058a0 <_ZL9sleepyRunPv>
    80005984:	fc040513          	addi	a0,s0,-64
    80005988:	00f50533          	add	a0,a0,a5
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	870080e7          	jalr	-1936(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005994:	0014849b          	addiw	s1,s1,1
    80005998:	00100793          	li	a5,1
    8000599c:	fc97dae3          	bge	a5,s1,80005970 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800059a0:	00006797          	auipc	a5,0x6
    800059a4:	f307c783          	lbu	a5,-208(a5) # 8000b8d0 <_ZL8finished>
    800059a8:	fe078ce3          	beqz	a5,800059a0 <_Z12testSleepingv+0x5c>
    800059ac:	00006797          	auipc	a5,0x6
    800059b0:	f257c783          	lbu	a5,-219(a5) # 8000b8d1 <_ZL8finished+0x1>
    800059b4:	fe0786e3          	beqz	a5,800059a0 <_Z12testSleepingv+0x5c>
}
    800059b8:	03813083          	ld	ra,56(sp)
    800059bc:	03013403          	ld	s0,48(sp)
    800059c0:	02813483          	ld	s1,40(sp)
    800059c4:	04010113          	addi	sp,sp,64
    800059c8:	00008067          	ret

00000000800059cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	00813823          	sd	s0,16(sp)
    800059d8:	00913423          	sd	s1,8(sp)
    800059dc:	01213023          	sd	s2,0(sp)
    800059e0:	02010413          	addi	s0,sp,32
    800059e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800059e8:	00100793          	li	a5,1
    800059ec:	02a7f863          	bgeu	a5,a0,80005a1c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800059f0:	00a00793          	li	a5,10
    800059f4:	02f577b3          	remu	a5,a0,a5
    800059f8:	02078e63          	beqz	a5,80005a34 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800059fc:	fff48513          	addi	a0,s1,-1
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	fcc080e7          	jalr	-52(ra) # 800059cc <_ZL9fibonaccim>
    80005a08:	00050913          	mv	s2,a0
    80005a0c:	ffe48513          	addi	a0,s1,-2
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	fbc080e7          	jalr	-68(ra) # 800059cc <_ZL9fibonaccim>
    80005a18:	00a90533          	add	a0,s2,a0
}
    80005a1c:	01813083          	ld	ra,24(sp)
    80005a20:	01013403          	ld	s0,16(sp)
    80005a24:	00813483          	ld	s1,8(sp)
    80005a28:	00013903          	ld	s2,0(sp)
    80005a2c:	02010113          	addi	sp,sp,32
    80005a30:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	89c080e7          	jalr	-1892(ra) # 800012d0 <_Z15thread_dispatchv>
    80005a3c:	fc1ff06f          	j	800059fc <_ZL9fibonaccim+0x30>

0000000080005a40 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005a40:	fe010113          	addi	sp,sp,-32
    80005a44:	00113c23          	sd	ra,24(sp)
    80005a48:	00813823          	sd	s0,16(sp)
    80005a4c:	00913423          	sd	s1,8(sp)
    80005a50:	01213023          	sd	s2,0(sp)
    80005a54:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a58:	00a00493          	li	s1,10
    80005a5c:	0400006f          	j	80005a9c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a60:	00003517          	auipc	a0,0x3
    80005a64:	75850513          	addi	a0,a0,1880 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005a68:	fffff097          	auipc	ra,0xfffff
    80005a6c:	698080e7          	jalr	1688(ra) # 80005100 <_Z11printStringPKc>
    80005a70:	00000613          	li	a2,0
    80005a74:	00a00593          	li	a1,10
    80005a78:	00048513          	mv	a0,s1
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	834080e7          	jalr	-1996(ra) # 800052b0 <_Z8printIntiii>
    80005a84:	00003517          	auipc	a0,0x3
    80005a88:	62450513          	addi	a0,a0,1572 # 800090a8 <CONSOLE_STATUS+0x98>
    80005a8c:	fffff097          	auipc	ra,0xfffff
    80005a90:	674080e7          	jalr	1652(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a94:	0014849b          	addiw	s1,s1,1
    80005a98:	0ff4f493          	andi	s1,s1,255
    80005a9c:	00c00793          	li	a5,12
    80005aa0:	fc97f0e3          	bgeu	a5,s1,80005a60 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005aa4:	00003517          	auipc	a0,0x3
    80005aa8:	71c50513          	addi	a0,a0,1820 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005aac:	fffff097          	auipc	ra,0xfffff
    80005ab0:	654080e7          	jalr	1620(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005ab4:	00500313          	li	t1,5
    thread_dispatch();
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	818080e7          	jalr	-2024(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005ac0:	01000513          	li	a0,16
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	f08080e7          	jalr	-248(ra) # 800059cc <_ZL9fibonaccim>
    80005acc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005ad0:	00003517          	auipc	a0,0x3
    80005ad4:	70050513          	addi	a0,a0,1792 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005ad8:	fffff097          	auipc	ra,0xfffff
    80005adc:	628080e7          	jalr	1576(ra) # 80005100 <_Z11printStringPKc>
    80005ae0:	00000613          	li	a2,0
    80005ae4:	00a00593          	li	a1,10
    80005ae8:	0009051b          	sext.w	a0,s2
    80005aec:	fffff097          	auipc	ra,0xfffff
    80005af0:	7c4080e7          	jalr	1988(ra) # 800052b0 <_Z8printIntiii>
    80005af4:	00003517          	auipc	a0,0x3
    80005af8:	5b450513          	addi	a0,a0,1460 # 800090a8 <CONSOLE_STATUS+0x98>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	604080e7          	jalr	1540(ra) # 80005100 <_Z11printStringPKc>
    80005b04:	0400006f          	j	80005b44 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b08:	00003517          	auipc	a0,0x3
    80005b0c:	6b050513          	addi	a0,a0,1712 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	5f0080e7          	jalr	1520(ra) # 80005100 <_Z11printStringPKc>
    80005b18:	00000613          	li	a2,0
    80005b1c:	00a00593          	li	a1,10
    80005b20:	00048513          	mv	a0,s1
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	78c080e7          	jalr	1932(ra) # 800052b0 <_Z8printIntiii>
    80005b2c:	00003517          	auipc	a0,0x3
    80005b30:	57c50513          	addi	a0,a0,1404 # 800090a8 <CONSOLE_STATUS+0x98>
    80005b34:	fffff097          	auipc	ra,0xfffff
    80005b38:	5cc080e7          	jalr	1484(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b3c:	0014849b          	addiw	s1,s1,1
    80005b40:	0ff4f493          	andi	s1,s1,255
    80005b44:	00f00793          	li	a5,15
    80005b48:	fc97f0e3          	bgeu	a5,s1,80005b08 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005b4c:	00003517          	auipc	a0,0x3
    80005b50:	69450513          	addi	a0,a0,1684 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005b54:	fffff097          	auipc	ra,0xfffff
    80005b58:	5ac080e7          	jalr	1452(ra) # 80005100 <_Z11printStringPKc>
    finishedD = true;
    80005b5c:	00100793          	li	a5,1
    80005b60:	00006717          	auipc	a4,0x6
    80005b64:	d6f70923          	sb	a5,-654(a4) # 8000b8d2 <_ZL9finishedD>
    thread_dispatch();
    80005b68:	ffffb097          	auipc	ra,0xffffb
    80005b6c:	768080e7          	jalr	1896(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005b70:	01813083          	ld	ra,24(sp)
    80005b74:	01013403          	ld	s0,16(sp)
    80005b78:	00813483          	ld	s1,8(sp)
    80005b7c:	00013903          	ld	s2,0(sp)
    80005b80:	02010113          	addi	sp,sp,32
    80005b84:	00008067          	ret

0000000080005b88 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b88:	fe010113          	addi	sp,sp,-32
    80005b8c:	00113c23          	sd	ra,24(sp)
    80005b90:	00813823          	sd	s0,16(sp)
    80005b94:	00913423          	sd	s1,8(sp)
    80005b98:	01213023          	sd	s2,0(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005ba0:	00000493          	li	s1,0
    80005ba4:	0400006f          	j	80005be4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005ba8:	00003517          	auipc	a0,0x3
    80005bac:	5e050513          	addi	a0,a0,1504 # 80009188 <CONSOLE_STATUS+0x178>
    80005bb0:	fffff097          	auipc	ra,0xfffff
    80005bb4:	550080e7          	jalr	1360(ra) # 80005100 <_Z11printStringPKc>
    80005bb8:	00000613          	li	a2,0
    80005bbc:	00a00593          	li	a1,10
    80005bc0:	00048513          	mv	a0,s1
    80005bc4:	fffff097          	auipc	ra,0xfffff
    80005bc8:	6ec080e7          	jalr	1772(ra) # 800052b0 <_Z8printIntiii>
    80005bcc:	00003517          	auipc	a0,0x3
    80005bd0:	4dc50513          	addi	a0,a0,1244 # 800090a8 <CONSOLE_STATUS+0x98>
    80005bd4:	fffff097          	auipc	ra,0xfffff
    80005bd8:	52c080e7          	jalr	1324(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005bdc:	0014849b          	addiw	s1,s1,1
    80005be0:	0ff4f493          	andi	s1,s1,255
    80005be4:	00200793          	li	a5,2
    80005be8:	fc97f0e3          	bgeu	a5,s1,80005ba8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	5a450513          	addi	a0,a0,1444 # 80009190 <CONSOLE_STATUS+0x180>
    80005bf4:	fffff097          	auipc	ra,0xfffff
    80005bf8:	50c080e7          	jalr	1292(ra) # 80005100 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bfc:	00700313          	li	t1,7
    thread_dispatch();
    80005c00:	ffffb097          	auipc	ra,0xffffb
    80005c04:	6d0080e7          	jalr	1744(ra) # 800012d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005c08:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005c0c:	00003517          	auipc	a0,0x3
    80005c10:	59450513          	addi	a0,a0,1428 # 800091a0 <CONSOLE_STATUS+0x190>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	4ec080e7          	jalr	1260(ra) # 80005100 <_Z11printStringPKc>
    80005c1c:	00000613          	li	a2,0
    80005c20:	00a00593          	li	a1,10
    80005c24:	0009051b          	sext.w	a0,s2
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	688080e7          	jalr	1672(ra) # 800052b0 <_Z8printIntiii>
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	47850513          	addi	a0,a0,1144 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	4c8080e7          	jalr	1224(ra) # 80005100 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005c40:	00c00513          	li	a0,12
    80005c44:	00000097          	auipc	ra,0x0
    80005c48:	d88080e7          	jalr	-632(ra) # 800059cc <_ZL9fibonaccim>
    80005c4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c50:	00003517          	auipc	a0,0x3
    80005c54:	55850513          	addi	a0,a0,1368 # 800091a8 <CONSOLE_STATUS+0x198>
    80005c58:	fffff097          	auipc	ra,0xfffff
    80005c5c:	4a8080e7          	jalr	1192(ra) # 80005100 <_Z11printStringPKc>
    80005c60:	00000613          	li	a2,0
    80005c64:	00a00593          	li	a1,10
    80005c68:	0009051b          	sext.w	a0,s2
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	644080e7          	jalr	1604(ra) # 800052b0 <_Z8printIntiii>
    80005c74:	00003517          	auipc	a0,0x3
    80005c78:	43450513          	addi	a0,a0,1076 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c7c:	fffff097          	auipc	ra,0xfffff
    80005c80:	484080e7          	jalr	1156(ra) # 80005100 <_Z11printStringPKc>
    80005c84:	0400006f          	j	80005cc4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c88:	00003517          	auipc	a0,0x3
    80005c8c:	50050513          	addi	a0,a0,1280 # 80009188 <CONSOLE_STATUS+0x178>
    80005c90:	fffff097          	auipc	ra,0xfffff
    80005c94:	470080e7          	jalr	1136(ra) # 80005100 <_Z11printStringPKc>
    80005c98:	00000613          	li	a2,0
    80005c9c:	00a00593          	li	a1,10
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	60c080e7          	jalr	1548(ra) # 800052b0 <_Z8printIntiii>
    80005cac:	00003517          	auipc	a0,0x3
    80005cb0:	3fc50513          	addi	a0,a0,1020 # 800090a8 <CONSOLE_STATUS+0x98>
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	44c080e7          	jalr	1100(ra) # 80005100 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005cbc:	0014849b          	addiw	s1,s1,1
    80005cc0:	0ff4f493          	andi	s1,s1,255
    80005cc4:	00500793          	li	a5,5
    80005cc8:	fc97f0e3          	bgeu	a5,s1,80005c88 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005ccc:	00003517          	auipc	a0,0x3
    80005cd0:	49450513          	addi	a0,a0,1172 # 80009160 <CONSOLE_STATUS+0x150>
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	42c080e7          	jalr	1068(ra) # 80005100 <_Z11printStringPKc>
    finishedC = true;
    80005cdc:	00100793          	li	a5,1
    80005ce0:	00006717          	auipc	a4,0x6
    80005ce4:	bef709a3          	sb	a5,-1037(a4) # 8000b8d3 <_ZL9finishedC>
    thread_dispatch();
    80005ce8:	ffffb097          	auipc	ra,0xffffb
    80005cec:	5e8080e7          	jalr	1512(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005cf0:	01813083          	ld	ra,24(sp)
    80005cf4:	01013403          	ld	s0,16(sp)
    80005cf8:	00813483          	ld	s1,8(sp)
    80005cfc:	00013903          	ld	s2,0(sp)
    80005d00:	02010113          	addi	sp,sp,32
    80005d04:	00008067          	ret

0000000080005d08 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00113c23          	sd	ra,24(sp)
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	01213023          	sd	s2,0(sp)
    80005d1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005d20:	00000913          	li	s2,0
    80005d24:	0400006f          	j	80005d64 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	5a8080e7          	jalr	1448(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005d30:	00148493          	addi	s1,s1,1
    80005d34:	000027b7          	lui	a5,0x2
    80005d38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d3c:	0097ee63          	bltu	a5,s1,80005d58 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d40:	00000713          	li	a4,0
    80005d44:	000077b7          	lui	a5,0x7
    80005d48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d4c:	fce7eee3          	bltu	a5,a4,80005d28 <_ZL11workerBodyBPv+0x20>
    80005d50:	00170713          	addi	a4,a4,1
    80005d54:	ff1ff06f          	j	80005d44 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005d58:	00a00793          	li	a5,10
    80005d5c:	04f90663          	beq	s2,a5,80005da8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005d60:	00190913          	addi	s2,s2,1
    80005d64:	00f00793          	li	a5,15
    80005d68:	0527e463          	bltu	a5,s2,80005db0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	40450513          	addi	a0,a0,1028 # 80009170 <CONSOLE_STATUS+0x160>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	38c080e7          	jalr	908(ra) # 80005100 <_Z11printStringPKc>
    80005d7c:	00000613          	li	a2,0
    80005d80:	00a00593          	li	a1,10
    80005d84:	0009051b          	sext.w	a0,s2
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	528080e7          	jalr	1320(ra) # 800052b0 <_Z8printIntiii>
    80005d90:	00003517          	auipc	a0,0x3
    80005d94:	31850513          	addi	a0,a0,792 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	368080e7          	jalr	872(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005da0:	00000493          	li	s1,0
    80005da4:	f91ff06f          	j	80005d34 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005da8:	14102ff3          	csrr	t6,sepc
    80005dac:	fb5ff06f          	j	80005d60 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005db0:	00003517          	auipc	a0,0x3
    80005db4:	3c850513          	addi	a0,a0,968 # 80009178 <CONSOLE_STATUS+0x168>
    80005db8:	fffff097          	auipc	ra,0xfffff
    80005dbc:	348080e7          	jalr	840(ra) # 80005100 <_Z11printStringPKc>
    finishedB = true;
    80005dc0:	00100793          	li	a5,1
    80005dc4:	00006717          	auipc	a4,0x6
    80005dc8:	b0f70823          	sb	a5,-1264(a4) # 8000b8d4 <_ZL9finishedB>
    thread_dispatch();
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	504080e7          	jalr	1284(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005dd4:	01813083          	ld	ra,24(sp)
    80005dd8:	01013403          	ld	s0,16(sp)
    80005ddc:	00813483          	ld	s1,8(sp)
    80005de0:	00013903          	ld	s2,0(sp)
    80005de4:	02010113          	addi	sp,sp,32
    80005de8:	00008067          	ret

0000000080005dec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005dec:	fe010113          	addi	sp,sp,-32
    80005df0:	00113c23          	sd	ra,24(sp)
    80005df4:	00813823          	sd	s0,16(sp)
    80005df8:	00913423          	sd	s1,8(sp)
    80005dfc:	01213023          	sd	s2,0(sp)
    80005e00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005e04:	00000913          	li	s2,0
    80005e08:	0380006f          	j	80005e40 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	4c4080e7          	jalr	1220(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e14:	00148493          	addi	s1,s1,1
    80005e18:	000027b7          	lui	a5,0x2
    80005e1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e20:	0097ee63          	bltu	a5,s1,80005e3c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e24:	00000713          	li	a4,0
    80005e28:	000077b7          	lui	a5,0x7
    80005e2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e30:	fce7eee3          	bltu	a5,a4,80005e0c <_ZL11workerBodyAPv+0x20>
    80005e34:	00170713          	addi	a4,a4,1
    80005e38:	ff1ff06f          	j	80005e28 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005e3c:	00190913          	addi	s2,s2,1
    80005e40:	00900793          	li	a5,9
    80005e44:	0527e063          	bltu	a5,s2,80005e84 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005e48:	00003517          	auipc	a0,0x3
    80005e4c:	31050513          	addi	a0,a0,784 # 80009158 <CONSOLE_STATUS+0x148>
    80005e50:	fffff097          	auipc	ra,0xfffff
    80005e54:	2b0080e7          	jalr	688(ra) # 80005100 <_Z11printStringPKc>
    80005e58:	00000613          	li	a2,0
    80005e5c:	00a00593          	li	a1,10
    80005e60:	0009051b          	sext.w	a0,s2
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	44c080e7          	jalr	1100(ra) # 800052b0 <_Z8printIntiii>
    80005e6c:	00003517          	auipc	a0,0x3
    80005e70:	23c50513          	addi	a0,a0,572 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e74:	fffff097          	auipc	ra,0xfffff
    80005e78:	28c080e7          	jalr	652(ra) # 80005100 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e7c:	00000493          	li	s1,0
    80005e80:	f99ff06f          	j	80005e18 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e84:	00003517          	auipc	a0,0x3
    80005e88:	2dc50513          	addi	a0,a0,732 # 80009160 <CONSOLE_STATUS+0x150>
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	274080e7          	jalr	628(ra) # 80005100 <_Z11printStringPKc>
    finishedA = true;
    80005e94:	00100793          	li	a5,1
    80005e98:	00006717          	auipc	a4,0x6
    80005e9c:	a2f70ea3          	sb	a5,-1475(a4) # 8000b8d5 <_ZL9finishedA>
}
    80005ea0:	01813083          	ld	ra,24(sp)
    80005ea4:	01013403          	ld	s0,16(sp)
    80005ea8:	00813483          	ld	s1,8(sp)
    80005eac:	00013903          	ld	s2,0(sp)
    80005eb0:	02010113          	addi	sp,sp,32
    80005eb4:	00008067          	ret

0000000080005eb8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005eb8:	fd010113          	addi	sp,sp,-48
    80005ebc:	02113423          	sd	ra,40(sp)
    80005ec0:	02813023          	sd	s0,32(sp)
    80005ec4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005ec8:	00000613          	li	a2,0
    80005ecc:	00000597          	auipc	a1,0x0
    80005ed0:	f2058593          	addi	a1,a1,-224 # 80005dec <_ZL11workerBodyAPv>
    80005ed4:	fd040513          	addi	a0,s0,-48
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	324080e7          	jalr	804(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005ee0:	00003517          	auipc	a0,0x3
    80005ee4:	31050513          	addi	a0,a0,784 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	218080e7          	jalr	536(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005ef0:	00000613          	li	a2,0
    80005ef4:	00000597          	auipc	a1,0x0
    80005ef8:	e1458593          	addi	a1,a1,-492 # 80005d08 <_ZL11workerBodyBPv>
    80005efc:	fd840513          	addi	a0,s0,-40
    80005f00:	ffffb097          	auipc	ra,0xffffb
    80005f04:	2fc080e7          	jalr	764(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	30050513          	addi	a0,a0,768 # 80009208 <CONSOLE_STATUS+0x1f8>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	1f0080e7          	jalr	496(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005f18:	00000613          	li	a2,0
    80005f1c:	00000597          	auipc	a1,0x0
    80005f20:	c6c58593          	addi	a1,a1,-916 # 80005b88 <_ZL11workerBodyCPv>
    80005f24:	fe040513          	addi	a0,s0,-32
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	2d4080e7          	jalr	724(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	2f050513          	addi	a0,a0,752 # 80009220 <CONSOLE_STATUS+0x210>
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	1c8080e7          	jalr	456(ra) # 80005100 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005f40:	00000613          	li	a2,0
    80005f44:	00000597          	auipc	a1,0x0
    80005f48:	afc58593          	addi	a1,a1,-1284 # 80005a40 <_ZL11workerBodyDPv>
    80005f4c:	fe840513          	addi	a0,s0,-24
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	2ac080e7          	jalr	684(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005f58:	00003517          	auipc	a0,0x3
    80005f5c:	2e050513          	addi	a0,a0,736 # 80009238 <CONSOLE_STATUS+0x228>
    80005f60:	fffff097          	auipc	ra,0xfffff
    80005f64:	1a0080e7          	jalr	416(ra) # 80005100 <_Z11printStringPKc>
    80005f68:	00c0006f          	j	80005f74 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f6c:	ffffb097          	auipc	ra,0xffffb
    80005f70:	364080e7          	jalr	868(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f74:	00006797          	auipc	a5,0x6
    80005f78:	9617c783          	lbu	a5,-1695(a5) # 8000b8d5 <_ZL9finishedA>
    80005f7c:	fe0788e3          	beqz	a5,80005f6c <_Z16System_Mode_testv+0xb4>
    80005f80:	00006797          	auipc	a5,0x6
    80005f84:	9547c783          	lbu	a5,-1708(a5) # 8000b8d4 <_ZL9finishedB>
    80005f88:	fe0782e3          	beqz	a5,80005f6c <_Z16System_Mode_testv+0xb4>
    80005f8c:	00006797          	auipc	a5,0x6
    80005f90:	9477c783          	lbu	a5,-1721(a5) # 8000b8d3 <_ZL9finishedC>
    80005f94:	fc078ce3          	beqz	a5,80005f6c <_Z16System_Mode_testv+0xb4>
    80005f98:	00006797          	auipc	a5,0x6
    80005f9c:	93a7c783          	lbu	a5,-1734(a5) # 8000b8d2 <_ZL9finishedD>
    80005fa0:	fc0786e3          	beqz	a5,80005f6c <_Z16System_Mode_testv+0xb4>
    }

}
    80005fa4:	02813083          	ld	ra,40(sp)
    80005fa8:	02013403          	ld	s0,32(sp)
    80005fac:	03010113          	addi	sp,sp,48
    80005fb0:	00008067          	ret

0000000080005fb4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	01213023          	sd	s2,0(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    80005fcc:	00050493          	mv	s1,a0
    80005fd0:	00058913          	mv	s2,a1
    80005fd4:	0015879b          	addiw	a5,a1,1
    80005fd8:	0007851b          	sext.w	a0,a5
    80005fdc:	00f4a023          	sw	a5,0(s1)
    80005fe0:	0004a823          	sw	zero,16(s1)
    80005fe4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fe8:	00251513          	slli	a0,a0,0x2
    80005fec:	ffffb097          	auipc	ra,0xffffb
    80005ff0:	170080e7          	jalr	368(ra) # 8000115c <_Z9mem_allocm>
    80005ff4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005ff8:	00000593          	li	a1,0
    80005ffc:	02048513          	addi	a0,s1,32
    80006000:	ffffb097          	auipc	ra,0xffffb
    80006004:	30c080e7          	jalr	780(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006008:	00090593          	mv	a1,s2
    8000600c:	01848513          	addi	a0,s1,24
    80006010:	ffffb097          	auipc	ra,0xffffb
    80006014:	2fc080e7          	jalr	764(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006018:	00100593          	li	a1,1
    8000601c:	02848513          	addi	a0,s1,40
    80006020:	ffffb097          	auipc	ra,0xffffb
    80006024:	2ec080e7          	jalr	748(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006028:	00100593          	li	a1,1
    8000602c:	03048513          	addi	a0,s1,48
    80006030:	ffffb097          	auipc	ra,0xffffb
    80006034:	2dc080e7          	jalr	732(ra) # 8000130c <_Z8sem_openPP3Semj>
}
    80006038:	01813083          	ld	ra,24(sp)
    8000603c:	01013403          	ld	s0,16(sp)
    80006040:	00813483          	ld	s1,8(sp)
    80006044:	00013903          	ld	s2,0(sp)
    80006048:	02010113          	addi	sp,sp,32
    8000604c:	00008067          	ret

0000000080006050 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006050:	fe010113          	addi	sp,sp,-32
    80006054:	00113c23          	sd	ra,24(sp)
    80006058:	00813823          	sd	s0,16(sp)
    8000605c:	00913423          	sd	s1,8(sp)
    80006060:	01213023          	sd	s2,0(sp)
    80006064:	02010413          	addi	s0,sp,32
    80006068:	00050493          	mv	s1,a0
    8000606c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006070:	01853503          	ld	a0,24(a0)
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	2d0080e7          	jalr	720(ra) # 80001344 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    8000607c:	0304b503          	ld	a0,48(s1)
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	2c4080e7          	jalr	708(ra) # 80001344 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006088:	0084b783          	ld	a5,8(s1)
    8000608c:	0144a703          	lw	a4,20(s1)
    80006090:	00271713          	slli	a4,a4,0x2
    80006094:	00e787b3          	add	a5,a5,a4
    80006098:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000609c:	0144a783          	lw	a5,20(s1)
    800060a0:	0017879b          	addiw	a5,a5,1
    800060a4:	0004a703          	lw	a4,0(s1)
    800060a8:	02e7e7bb          	remw	a5,a5,a4
    800060ac:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800060b0:	0304b503          	ld	a0,48(s1)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	2ac080e7          	jalr	684(ra) # 80001360 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800060bc:	0204b503          	ld	a0,32(s1)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	2a0080e7          	jalr	672(ra) # 80001360 <_Z10sem_signalP3Sem>

}
    800060c8:	01813083          	ld	ra,24(sp)
    800060cc:	01013403          	ld	s0,16(sp)
    800060d0:	00813483          	ld	s1,8(sp)
    800060d4:	00013903          	ld	s2,0(sp)
    800060d8:	02010113          	addi	sp,sp,32
    800060dc:	00008067          	ret

00000000800060e0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800060e0:	fe010113          	addi	sp,sp,-32
    800060e4:	00113c23          	sd	ra,24(sp)
    800060e8:	00813823          	sd	s0,16(sp)
    800060ec:	00913423          	sd	s1,8(sp)
    800060f0:	01213023          	sd	s2,0(sp)
    800060f4:	02010413          	addi	s0,sp,32
    800060f8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060fc:	02053503          	ld	a0,32(a0)
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	244080e7          	jalr	580(ra) # 80001344 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006108:	0284b503          	ld	a0,40(s1)
    8000610c:	ffffb097          	auipc	ra,0xffffb
    80006110:	238080e7          	jalr	568(ra) # 80001344 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006114:	0084b703          	ld	a4,8(s1)
    80006118:	0104a783          	lw	a5,16(s1)
    8000611c:	00279693          	slli	a3,a5,0x2
    80006120:	00d70733          	add	a4,a4,a3
    80006124:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006128:	0017879b          	addiw	a5,a5,1
    8000612c:	0004a703          	lw	a4,0(s1)
    80006130:	02e7e7bb          	remw	a5,a5,a4
    80006134:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006138:	0284b503          	ld	a0,40(s1)
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	224080e7          	jalr	548(ra) # 80001360 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006144:	0184b503          	ld	a0,24(s1)
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	218080e7          	jalr	536(ra) # 80001360 <_Z10sem_signalP3Sem>

    return ret;
}
    80006150:	00090513          	mv	a0,s2
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	01013403          	ld	s0,16(sp)
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	00013903          	ld	s2,0(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	01213023          	sd	s2,0(sp)
    80006180:	02010413          	addi	s0,sp,32
    80006184:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006188:	02853503          	ld	a0,40(a0)
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	1b8080e7          	jalr	440(ra) # 80001344 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006194:	0304b503          	ld	a0,48(s1)
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	1ac080e7          	jalr	428(ra) # 80001344 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800061a0:	0144a783          	lw	a5,20(s1)
    800061a4:	0104a903          	lw	s2,16(s1)
    800061a8:	0327ce63          	blt	a5,s2,800061e4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800061ac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800061b0:	0304b503          	ld	a0,48(s1)
    800061b4:	ffffb097          	auipc	ra,0xffffb
    800061b8:	1ac080e7          	jalr	428(ra) # 80001360 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800061bc:	0284b503          	ld	a0,40(s1)
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	1a0080e7          	jalr	416(ra) # 80001360 <_Z10sem_signalP3Sem>

    return ret;
}
    800061c8:	00090513          	mv	a0,s2
    800061cc:	01813083          	ld	ra,24(sp)
    800061d0:	01013403          	ld	s0,16(sp)
    800061d4:	00813483          	ld	s1,8(sp)
    800061d8:	00013903          	ld	s2,0(sp)
    800061dc:	02010113          	addi	sp,sp,32
    800061e0:	00008067          	ret
        ret = cap - head + tail;
    800061e4:	0004a703          	lw	a4,0(s1)
    800061e8:	4127093b          	subw	s2,a4,s2
    800061ec:	00f9093b          	addw	s2,s2,a5
    800061f0:	fc1ff06f          	j	800061b0 <_ZN6Buffer6getCntEv+0x44>

00000000800061f4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800061f4:	fe010113          	addi	sp,sp,-32
    800061f8:	00113c23          	sd	ra,24(sp)
    800061fc:	00813823          	sd	s0,16(sp)
    80006200:	00913423          	sd	s1,8(sp)
    80006204:	02010413          	addi	s0,sp,32
    80006208:	00050493          	mv	s1,a0
    putc('\n');
    8000620c:	00a00513          	li	a0,10
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	20c080e7          	jalr	524(ra) # 8000141c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	03850513          	addi	a0,a0,56 # 80009250 <CONSOLE_STATUS+0x240>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	ee0080e7          	jalr	-288(ra) # 80005100 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006228:	00048513          	mv	a0,s1
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	f40080e7          	jalr	-192(ra) # 8000616c <_ZN6Buffer6getCntEv>
    80006234:	02a05c63          	blez	a0,8000626c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006238:	0084b783          	ld	a5,8(s1)
    8000623c:	0104a703          	lw	a4,16(s1)
    80006240:	00271713          	slli	a4,a4,0x2
    80006244:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006248:	0007c503          	lbu	a0,0(a5)
    8000624c:	ffffb097          	auipc	ra,0xffffb
    80006250:	1d0080e7          	jalr	464(ra) # 8000141c <_Z4putcc>
        head = (head + 1) % cap;
    80006254:	0104a783          	lw	a5,16(s1)
    80006258:	0017879b          	addiw	a5,a5,1
    8000625c:	0004a703          	lw	a4,0(s1)
    80006260:	02e7e7bb          	remw	a5,a5,a4
    80006264:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006268:	fc1ff06f          	j	80006228 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000626c:	02100513          	li	a0,33
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	1ac080e7          	jalr	428(ra) # 8000141c <_Z4putcc>
    putc('\n');
    80006278:	00a00513          	li	a0,10
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	1a0080e7          	jalr	416(ra) # 8000141c <_Z4putcc>
    mem_free(buffer);
    80006284:	0084b503          	ld	a0,8(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	f28080e7          	jalr	-216(ra) # 800011b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006290:	0204b503          	ld	a0,32(s1)
    80006294:	ffffb097          	auipc	ra,0xffffb
    80006298:	094080e7          	jalr	148(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    8000629c:	0184b503          	ld	a0,24(s1)
    800062a0:	ffffb097          	auipc	ra,0xffffb
    800062a4:	088080e7          	jalr	136(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800062a8:	0304b503          	ld	a0,48(s1)
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	07c080e7          	jalr	124(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800062b4:	0284b503          	ld	a0,40(s1)
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	070080e7          	jalr	112(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    800062c0:	01813083          	ld	ra,24(sp)
    800062c4:	01013403          	ld	s0,16(sp)
    800062c8:	00813483          	ld	s1,8(sp)
    800062cc:	02010113          	addi	sp,sp,32
    800062d0:	00008067          	ret

00000000800062d4 <start>:
    800062d4:	ff010113          	addi	sp,sp,-16
    800062d8:	00813423          	sd	s0,8(sp)
    800062dc:	01010413          	addi	s0,sp,16
    800062e0:	300027f3          	csrr	a5,mstatus
    800062e4:	ffffe737          	lui	a4,0xffffe
    800062e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cbf>
    800062ec:	00e7f7b3          	and	a5,a5,a4
    800062f0:	00001737          	lui	a4,0x1
    800062f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062f8:	00e7e7b3          	or	a5,a5,a4
    800062fc:	30079073          	csrw	mstatus,a5
    80006300:	00000797          	auipc	a5,0x0
    80006304:	16078793          	addi	a5,a5,352 # 80006460 <system_main>
    80006308:	34179073          	csrw	mepc,a5
    8000630c:	00000793          	li	a5,0
    80006310:	18079073          	csrw	satp,a5
    80006314:	000107b7          	lui	a5,0x10
    80006318:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000631c:	30279073          	csrw	medeleg,a5
    80006320:	30379073          	csrw	mideleg,a5
    80006324:	104027f3          	csrr	a5,sie
    80006328:	2227e793          	ori	a5,a5,546
    8000632c:	10479073          	csrw	sie,a5
    80006330:	fff00793          	li	a5,-1
    80006334:	00a7d793          	srli	a5,a5,0xa
    80006338:	3b079073          	csrw	pmpaddr0,a5
    8000633c:	00f00793          	li	a5,15
    80006340:	3a079073          	csrw	pmpcfg0,a5
    80006344:	f14027f3          	csrr	a5,mhartid
    80006348:	0200c737          	lui	a4,0x200c
    8000634c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006350:	0007869b          	sext.w	a3,a5
    80006354:	00269713          	slli	a4,a3,0x2
    80006358:	000f4637          	lui	a2,0xf4
    8000635c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006360:	00d70733          	add	a4,a4,a3
    80006364:	0037979b          	slliw	a5,a5,0x3
    80006368:	020046b7          	lui	a3,0x2004
    8000636c:	00d787b3          	add	a5,a5,a3
    80006370:	00c585b3          	add	a1,a1,a2
    80006374:	00371693          	slli	a3,a4,0x3
    80006378:	00005717          	auipc	a4,0x5
    8000637c:	56870713          	addi	a4,a4,1384 # 8000b8e0 <timer_scratch>
    80006380:	00b7b023          	sd	a1,0(a5)
    80006384:	00d70733          	add	a4,a4,a3
    80006388:	00f73c23          	sd	a5,24(a4)
    8000638c:	02c73023          	sd	a2,32(a4)
    80006390:	34071073          	csrw	mscratch,a4
    80006394:	00000797          	auipc	a5,0x0
    80006398:	6ec78793          	addi	a5,a5,1772 # 80006a80 <timervec>
    8000639c:	30579073          	csrw	mtvec,a5
    800063a0:	300027f3          	csrr	a5,mstatus
    800063a4:	0087e793          	ori	a5,a5,8
    800063a8:	30079073          	csrw	mstatus,a5
    800063ac:	304027f3          	csrr	a5,mie
    800063b0:	0807e793          	ori	a5,a5,128
    800063b4:	30479073          	csrw	mie,a5
    800063b8:	f14027f3          	csrr	a5,mhartid
    800063bc:	0007879b          	sext.w	a5,a5
    800063c0:	00078213          	mv	tp,a5
    800063c4:	30200073          	mret
    800063c8:	00813403          	ld	s0,8(sp)
    800063cc:	01010113          	addi	sp,sp,16
    800063d0:	00008067          	ret

00000000800063d4 <timerinit>:
    800063d4:	ff010113          	addi	sp,sp,-16
    800063d8:	00813423          	sd	s0,8(sp)
    800063dc:	01010413          	addi	s0,sp,16
    800063e0:	f14027f3          	csrr	a5,mhartid
    800063e4:	0200c737          	lui	a4,0x200c
    800063e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800063ec:	0007869b          	sext.w	a3,a5
    800063f0:	00269713          	slli	a4,a3,0x2
    800063f4:	000f4637          	lui	a2,0xf4
    800063f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063fc:	00d70733          	add	a4,a4,a3
    80006400:	0037979b          	slliw	a5,a5,0x3
    80006404:	020046b7          	lui	a3,0x2004
    80006408:	00d787b3          	add	a5,a5,a3
    8000640c:	00c585b3          	add	a1,a1,a2
    80006410:	00371693          	slli	a3,a4,0x3
    80006414:	00005717          	auipc	a4,0x5
    80006418:	4cc70713          	addi	a4,a4,1228 # 8000b8e0 <timer_scratch>
    8000641c:	00b7b023          	sd	a1,0(a5)
    80006420:	00d70733          	add	a4,a4,a3
    80006424:	00f73c23          	sd	a5,24(a4)
    80006428:	02c73023          	sd	a2,32(a4)
    8000642c:	34071073          	csrw	mscratch,a4
    80006430:	00000797          	auipc	a5,0x0
    80006434:	65078793          	addi	a5,a5,1616 # 80006a80 <timervec>
    80006438:	30579073          	csrw	mtvec,a5
    8000643c:	300027f3          	csrr	a5,mstatus
    80006440:	0087e793          	ori	a5,a5,8
    80006444:	30079073          	csrw	mstatus,a5
    80006448:	304027f3          	csrr	a5,mie
    8000644c:	0807e793          	ori	a5,a5,128
    80006450:	30479073          	csrw	mie,a5
    80006454:	00813403          	ld	s0,8(sp)
    80006458:	01010113          	addi	sp,sp,16
    8000645c:	00008067          	ret

0000000080006460 <system_main>:
    80006460:	fe010113          	addi	sp,sp,-32
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00913423          	sd	s1,8(sp)
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	02010413          	addi	s0,sp,32
    80006474:	00000097          	auipc	ra,0x0
    80006478:	0c4080e7          	jalr	196(ra) # 80006538 <cpuid>
    8000647c:	00005497          	auipc	s1,0x5
    80006480:	39448493          	addi	s1,s1,916 # 8000b810 <started>
    80006484:	02050263          	beqz	a0,800064a8 <system_main+0x48>
    80006488:	0004a783          	lw	a5,0(s1)
    8000648c:	0007879b          	sext.w	a5,a5
    80006490:	fe078ce3          	beqz	a5,80006488 <system_main+0x28>
    80006494:	0ff0000f          	fence
    80006498:	00003517          	auipc	a0,0x3
    8000649c:	ee850513          	addi	a0,a0,-280 # 80009380 <CONSOLE_STATUS+0x370>
    800064a0:	00001097          	auipc	ra,0x1
    800064a4:	a7c080e7          	jalr	-1412(ra) # 80006f1c <panic>
    800064a8:	00001097          	auipc	ra,0x1
    800064ac:	9d0080e7          	jalr	-1584(ra) # 80006e78 <consoleinit>
    800064b0:	00001097          	auipc	ra,0x1
    800064b4:	15c080e7          	jalr	348(ra) # 8000760c <printfinit>
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	bf050513          	addi	a0,a0,-1040 # 800090a8 <CONSOLE_STATUS+0x98>
    800064c0:	00001097          	auipc	ra,0x1
    800064c4:	ab8080e7          	jalr	-1352(ra) # 80006f78 <__printf>
    800064c8:	00003517          	auipc	a0,0x3
    800064cc:	e8850513          	addi	a0,a0,-376 # 80009350 <CONSOLE_STATUS+0x340>
    800064d0:	00001097          	auipc	ra,0x1
    800064d4:	aa8080e7          	jalr	-1368(ra) # 80006f78 <__printf>
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	bd050513          	addi	a0,a0,-1072 # 800090a8 <CONSOLE_STATUS+0x98>
    800064e0:	00001097          	auipc	ra,0x1
    800064e4:	a98080e7          	jalr	-1384(ra) # 80006f78 <__printf>
    800064e8:	00001097          	auipc	ra,0x1
    800064ec:	4b0080e7          	jalr	1200(ra) # 80007998 <kinit>
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	148080e7          	jalr	328(ra) # 80006638 <trapinit>
    800064f8:	00000097          	auipc	ra,0x0
    800064fc:	16c080e7          	jalr	364(ra) # 80006664 <trapinithart>
    80006500:	00000097          	auipc	ra,0x0
    80006504:	5c0080e7          	jalr	1472(ra) # 80006ac0 <plicinit>
    80006508:	00000097          	auipc	ra,0x0
    8000650c:	5e0080e7          	jalr	1504(ra) # 80006ae8 <plicinithart>
    80006510:	00000097          	auipc	ra,0x0
    80006514:	078080e7          	jalr	120(ra) # 80006588 <userinit>
    80006518:	0ff0000f          	fence
    8000651c:	00100793          	li	a5,1
    80006520:	00003517          	auipc	a0,0x3
    80006524:	e4850513          	addi	a0,a0,-440 # 80009368 <CONSOLE_STATUS+0x358>
    80006528:	00f4a023          	sw	a5,0(s1)
    8000652c:	00001097          	auipc	ra,0x1
    80006530:	a4c080e7          	jalr	-1460(ra) # 80006f78 <__printf>
    80006534:	0000006f          	j	80006534 <system_main+0xd4>

0000000080006538 <cpuid>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00020513          	mv	a0,tp
    80006548:	00813403          	ld	s0,8(sp)
    8000654c:	0005051b          	sext.w	a0,a0
    80006550:	01010113          	addi	sp,sp,16
    80006554:	00008067          	ret

0000000080006558 <mycpu>:
    80006558:	ff010113          	addi	sp,sp,-16
    8000655c:	00813423          	sd	s0,8(sp)
    80006560:	01010413          	addi	s0,sp,16
    80006564:	00020793          	mv	a5,tp
    80006568:	00813403          	ld	s0,8(sp)
    8000656c:	0007879b          	sext.w	a5,a5
    80006570:	00779793          	slli	a5,a5,0x7
    80006574:	00006517          	auipc	a0,0x6
    80006578:	39c50513          	addi	a0,a0,924 # 8000c910 <cpus>
    8000657c:	00f50533          	add	a0,a0,a5
    80006580:	01010113          	addi	sp,sp,16
    80006584:	00008067          	ret

0000000080006588 <userinit>:
    80006588:	ff010113          	addi	sp,sp,-16
    8000658c:	00813423          	sd	s0,8(sp)
    80006590:	01010413          	addi	s0,sp,16
    80006594:	00813403          	ld	s0,8(sp)
    80006598:	01010113          	addi	sp,sp,16
    8000659c:	ffffb317          	auipc	t1,0xffffb
    800065a0:	3cc30067          	jr	972(t1) # 80001968 <main>

00000000800065a4 <either_copyout>:
    800065a4:	ff010113          	addi	sp,sp,-16
    800065a8:	00813023          	sd	s0,0(sp)
    800065ac:	00113423          	sd	ra,8(sp)
    800065b0:	01010413          	addi	s0,sp,16
    800065b4:	02051663          	bnez	a0,800065e0 <either_copyout+0x3c>
    800065b8:	00058513          	mv	a0,a1
    800065bc:	00060593          	mv	a1,a2
    800065c0:	0006861b          	sext.w	a2,a3
    800065c4:	00002097          	auipc	ra,0x2
    800065c8:	c60080e7          	jalr	-928(ra) # 80008224 <__memmove>
    800065cc:	00813083          	ld	ra,8(sp)
    800065d0:	00013403          	ld	s0,0(sp)
    800065d4:	00000513          	li	a0,0
    800065d8:	01010113          	addi	sp,sp,16
    800065dc:	00008067          	ret
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	dc850513          	addi	a0,a0,-568 # 800093a8 <CONSOLE_STATUS+0x398>
    800065e8:	00001097          	auipc	ra,0x1
    800065ec:	934080e7          	jalr	-1740(ra) # 80006f1c <panic>

00000000800065f0 <either_copyin>:
    800065f0:	ff010113          	addi	sp,sp,-16
    800065f4:	00813023          	sd	s0,0(sp)
    800065f8:	00113423          	sd	ra,8(sp)
    800065fc:	01010413          	addi	s0,sp,16
    80006600:	02059463          	bnez	a1,80006628 <either_copyin+0x38>
    80006604:	00060593          	mv	a1,a2
    80006608:	0006861b          	sext.w	a2,a3
    8000660c:	00002097          	auipc	ra,0x2
    80006610:	c18080e7          	jalr	-1000(ra) # 80008224 <__memmove>
    80006614:	00813083          	ld	ra,8(sp)
    80006618:	00013403          	ld	s0,0(sp)
    8000661c:	00000513          	li	a0,0
    80006620:	01010113          	addi	sp,sp,16
    80006624:	00008067          	ret
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	da850513          	addi	a0,a0,-600 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	8ec080e7          	jalr	-1812(ra) # 80006f1c <panic>

0000000080006638 <trapinit>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813423          	sd	s0,8(sp)
    80006640:	01010413          	addi	s0,sp,16
    80006644:	00813403          	ld	s0,8(sp)
    80006648:	00003597          	auipc	a1,0x3
    8000664c:	db058593          	addi	a1,a1,-592 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80006650:	00006517          	auipc	a0,0x6
    80006654:	34050513          	addi	a0,a0,832 # 8000c990 <tickslock>
    80006658:	01010113          	addi	sp,sp,16
    8000665c:	00001317          	auipc	t1,0x1
    80006660:	5cc30067          	jr	1484(t1) # 80007c28 <initlock>

0000000080006664 <trapinithart>:
    80006664:	ff010113          	addi	sp,sp,-16
    80006668:	00813423          	sd	s0,8(sp)
    8000666c:	01010413          	addi	s0,sp,16
    80006670:	00000797          	auipc	a5,0x0
    80006674:	30078793          	addi	a5,a5,768 # 80006970 <kernelvec>
    80006678:	10579073          	csrw	stvec,a5
    8000667c:	00813403          	ld	s0,8(sp)
    80006680:	01010113          	addi	sp,sp,16
    80006684:	00008067          	ret

0000000080006688 <usertrap>:
    80006688:	ff010113          	addi	sp,sp,-16
    8000668c:	00813423          	sd	s0,8(sp)
    80006690:	01010413          	addi	s0,sp,16
    80006694:	00813403          	ld	s0,8(sp)
    80006698:	01010113          	addi	sp,sp,16
    8000669c:	00008067          	ret

00000000800066a0 <usertrapret>:
    800066a0:	ff010113          	addi	sp,sp,-16
    800066a4:	00813423          	sd	s0,8(sp)
    800066a8:	01010413          	addi	s0,sp,16
    800066ac:	00813403          	ld	s0,8(sp)
    800066b0:	01010113          	addi	sp,sp,16
    800066b4:	00008067          	ret

00000000800066b8 <kerneltrap>:
    800066b8:	fe010113          	addi	sp,sp,-32
    800066bc:	00813823          	sd	s0,16(sp)
    800066c0:	00113c23          	sd	ra,24(sp)
    800066c4:	00913423          	sd	s1,8(sp)
    800066c8:	02010413          	addi	s0,sp,32
    800066cc:	142025f3          	csrr	a1,scause
    800066d0:	100027f3          	csrr	a5,sstatus
    800066d4:	0027f793          	andi	a5,a5,2
    800066d8:	10079c63          	bnez	a5,800067f0 <kerneltrap+0x138>
    800066dc:	142027f3          	csrr	a5,scause
    800066e0:	0207ce63          	bltz	a5,8000671c <kerneltrap+0x64>
    800066e4:	00003517          	auipc	a0,0x3
    800066e8:	d5c50513          	addi	a0,a0,-676 # 80009440 <CONSOLE_STATUS+0x430>
    800066ec:	00001097          	auipc	ra,0x1
    800066f0:	88c080e7          	jalr	-1908(ra) # 80006f78 <__printf>
    800066f4:	141025f3          	csrr	a1,sepc
    800066f8:	14302673          	csrr	a2,stval
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	d5450513          	addi	a0,a0,-684 # 80009450 <CONSOLE_STATUS+0x440>
    80006704:	00001097          	auipc	ra,0x1
    80006708:	874080e7          	jalr	-1932(ra) # 80006f78 <__printf>
    8000670c:	00003517          	auipc	a0,0x3
    80006710:	d5c50513          	addi	a0,a0,-676 # 80009468 <CONSOLE_STATUS+0x458>
    80006714:	00001097          	auipc	ra,0x1
    80006718:	808080e7          	jalr	-2040(ra) # 80006f1c <panic>
    8000671c:	0ff7f713          	andi	a4,a5,255
    80006720:	00900693          	li	a3,9
    80006724:	04d70063          	beq	a4,a3,80006764 <kerneltrap+0xac>
    80006728:	fff00713          	li	a4,-1
    8000672c:	03f71713          	slli	a4,a4,0x3f
    80006730:	00170713          	addi	a4,a4,1
    80006734:	fae798e3          	bne	a5,a4,800066e4 <kerneltrap+0x2c>
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	e00080e7          	jalr	-512(ra) # 80006538 <cpuid>
    80006740:	06050663          	beqz	a0,800067ac <kerneltrap+0xf4>
    80006744:	144027f3          	csrr	a5,sip
    80006748:	ffd7f793          	andi	a5,a5,-3
    8000674c:	14479073          	csrw	sip,a5
    80006750:	01813083          	ld	ra,24(sp)
    80006754:	01013403          	ld	s0,16(sp)
    80006758:	00813483          	ld	s1,8(sp)
    8000675c:	02010113          	addi	sp,sp,32
    80006760:	00008067          	ret
    80006764:	00000097          	auipc	ra,0x0
    80006768:	3d0080e7          	jalr	976(ra) # 80006b34 <plic_claim>
    8000676c:	00a00793          	li	a5,10
    80006770:	00050493          	mv	s1,a0
    80006774:	06f50863          	beq	a0,a5,800067e4 <kerneltrap+0x12c>
    80006778:	fc050ce3          	beqz	a0,80006750 <kerneltrap+0x98>
    8000677c:	00050593          	mv	a1,a0
    80006780:	00003517          	auipc	a0,0x3
    80006784:	ca050513          	addi	a0,a0,-864 # 80009420 <CONSOLE_STATUS+0x410>
    80006788:	00000097          	auipc	ra,0x0
    8000678c:	7f0080e7          	jalr	2032(ra) # 80006f78 <__printf>
    80006790:	01013403          	ld	s0,16(sp)
    80006794:	01813083          	ld	ra,24(sp)
    80006798:	00048513          	mv	a0,s1
    8000679c:	00813483          	ld	s1,8(sp)
    800067a0:	02010113          	addi	sp,sp,32
    800067a4:	00000317          	auipc	t1,0x0
    800067a8:	3c830067          	jr	968(t1) # 80006b6c <plic_complete>
    800067ac:	00006517          	auipc	a0,0x6
    800067b0:	1e450513          	addi	a0,a0,484 # 8000c990 <tickslock>
    800067b4:	00001097          	auipc	ra,0x1
    800067b8:	498080e7          	jalr	1176(ra) # 80007c4c <acquire>
    800067bc:	00005717          	auipc	a4,0x5
    800067c0:	05870713          	addi	a4,a4,88 # 8000b814 <ticks>
    800067c4:	00072783          	lw	a5,0(a4)
    800067c8:	00006517          	auipc	a0,0x6
    800067cc:	1c850513          	addi	a0,a0,456 # 8000c990 <tickslock>
    800067d0:	0017879b          	addiw	a5,a5,1
    800067d4:	00f72023          	sw	a5,0(a4)
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	540080e7          	jalr	1344(ra) # 80007d18 <release>
    800067e0:	f65ff06f          	j	80006744 <kerneltrap+0x8c>
    800067e4:	00001097          	auipc	ra,0x1
    800067e8:	09c080e7          	jalr	156(ra) # 80007880 <uartintr>
    800067ec:	fa5ff06f          	j	80006790 <kerneltrap+0xd8>
    800067f0:	00003517          	auipc	a0,0x3
    800067f4:	c1050513          	addi	a0,a0,-1008 # 80009400 <CONSOLE_STATUS+0x3f0>
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	724080e7          	jalr	1828(ra) # 80006f1c <panic>

0000000080006800 <clockintr>:
    80006800:	fe010113          	addi	sp,sp,-32
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	00113c23          	sd	ra,24(sp)
    80006810:	02010413          	addi	s0,sp,32
    80006814:	00006497          	auipc	s1,0x6
    80006818:	17c48493          	addi	s1,s1,380 # 8000c990 <tickslock>
    8000681c:	00048513          	mv	a0,s1
    80006820:	00001097          	auipc	ra,0x1
    80006824:	42c080e7          	jalr	1068(ra) # 80007c4c <acquire>
    80006828:	00005717          	auipc	a4,0x5
    8000682c:	fec70713          	addi	a4,a4,-20 # 8000b814 <ticks>
    80006830:	00072783          	lw	a5,0(a4)
    80006834:	01013403          	ld	s0,16(sp)
    80006838:	01813083          	ld	ra,24(sp)
    8000683c:	00048513          	mv	a0,s1
    80006840:	0017879b          	addiw	a5,a5,1
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	00f72023          	sw	a5,0(a4)
    8000684c:	02010113          	addi	sp,sp,32
    80006850:	00001317          	auipc	t1,0x1
    80006854:	4c830067          	jr	1224(t1) # 80007d18 <release>

0000000080006858 <devintr>:
    80006858:	142027f3          	csrr	a5,scause
    8000685c:	00000513          	li	a0,0
    80006860:	0007c463          	bltz	a5,80006868 <devintr+0x10>
    80006864:	00008067          	ret
    80006868:	fe010113          	addi	sp,sp,-32
    8000686c:	00813823          	sd	s0,16(sp)
    80006870:	00113c23          	sd	ra,24(sp)
    80006874:	00913423          	sd	s1,8(sp)
    80006878:	02010413          	addi	s0,sp,32
    8000687c:	0ff7f713          	andi	a4,a5,255
    80006880:	00900693          	li	a3,9
    80006884:	04d70c63          	beq	a4,a3,800068dc <devintr+0x84>
    80006888:	fff00713          	li	a4,-1
    8000688c:	03f71713          	slli	a4,a4,0x3f
    80006890:	00170713          	addi	a4,a4,1
    80006894:	00e78c63          	beq	a5,a4,800068ac <devintr+0x54>
    80006898:	01813083          	ld	ra,24(sp)
    8000689c:	01013403          	ld	s0,16(sp)
    800068a0:	00813483          	ld	s1,8(sp)
    800068a4:	02010113          	addi	sp,sp,32
    800068a8:	00008067          	ret
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	c8c080e7          	jalr	-884(ra) # 80006538 <cpuid>
    800068b4:	06050663          	beqz	a0,80006920 <devintr+0xc8>
    800068b8:	144027f3          	csrr	a5,sip
    800068bc:	ffd7f793          	andi	a5,a5,-3
    800068c0:	14479073          	csrw	sip,a5
    800068c4:	01813083          	ld	ra,24(sp)
    800068c8:	01013403          	ld	s0,16(sp)
    800068cc:	00813483          	ld	s1,8(sp)
    800068d0:	00200513          	li	a0,2
    800068d4:	02010113          	addi	sp,sp,32
    800068d8:	00008067          	ret
    800068dc:	00000097          	auipc	ra,0x0
    800068e0:	258080e7          	jalr	600(ra) # 80006b34 <plic_claim>
    800068e4:	00a00793          	li	a5,10
    800068e8:	00050493          	mv	s1,a0
    800068ec:	06f50663          	beq	a0,a5,80006958 <devintr+0x100>
    800068f0:	00100513          	li	a0,1
    800068f4:	fa0482e3          	beqz	s1,80006898 <devintr+0x40>
    800068f8:	00048593          	mv	a1,s1
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	b2450513          	addi	a0,a0,-1244 # 80009420 <CONSOLE_STATUS+0x410>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	674080e7          	jalr	1652(ra) # 80006f78 <__printf>
    8000690c:	00048513          	mv	a0,s1
    80006910:	00000097          	auipc	ra,0x0
    80006914:	25c080e7          	jalr	604(ra) # 80006b6c <plic_complete>
    80006918:	00100513          	li	a0,1
    8000691c:	f7dff06f          	j	80006898 <devintr+0x40>
    80006920:	00006517          	auipc	a0,0x6
    80006924:	07050513          	addi	a0,a0,112 # 8000c990 <tickslock>
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	324080e7          	jalr	804(ra) # 80007c4c <acquire>
    80006930:	00005717          	auipc	a4,0x5
    80006934:	ee470713          	addi	a4,a4,-284 # 8000b814 <ticks>
    80006938:	00072783          	lw	a5,0(a4)
    8000693c:	00006517          	auipc	a0,0x6
    80006940:	05450513          	addi	a0,a0,84 # 8000c990 <tickslock>
    80006944:	0017879b          	addiw	a5,a5,1
    80006948:	00f72023          	sw	a5,0(a4)
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	3cc080e7          	jalr	972(ra) # 80007d18 <release>
    80006954:	f65ff06f          	j	800068b8 <devintr+0x60>
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	f28080e7          	jalr	-216(ra) # 80007880 <uartintr>
    80006960:	fadff06f          	j	8000690c <devintr+0xb4>
	...

0000000080006970 <kernelvec>:
    80006970:	f0010113          	addi	sp,sp,-256
    80006974:	00113023          	sd	ra,0(sp)
    80006978:	00213423          	sd	sp,8(sp)
    8000697c:	00313823          	sd	gp,16(sp)
    80006980:	00413c23          	sd	tp,24(sp)
    80006984:	02513023          	sd	t0,32(sp)
    80006988:	02613423          	sd	t1,40(sp)
    8000698c:	02713823          	sd	t2,48(sp)
    80006990:	02813c23          	sd	s0,56(sp)
    80006994:	04913023          	sd	s1,64(sp)
    80006998:	04a13423          	sd	a0,72(sp)
    8000699c:	04b13823          	sd	a1,80(sp)
    800069a0:	04c13c23          	sd	a2,88(sp)
    800069a4:	06d13023          	sd	a3,96(sp)
    800069a8:	06e13423          	sd	a4,104(sp)
    800069ac:	06f13823          	sd	a5,112(sp)
    800069b0:	07013c23          	sd	a6,120(sp)
    800069b4:	09113023          	sd	a7,128(sp)
    800069b8:	09213423          	sd	s2,136(sp)
    800069bc:	09313823          	sd	s3,144(sp)
    800069c0:	09413c23          	sd	s4,152(sp)
    800069c4:	0b513023          	sd	s5,160(sp)
    800069c8:	0b613423          	sd	s6,168(sp)
    800069cc:	0b713823          	sd	s7,176(sp)
    800069d0:	0b813c23          	sd	s8,184(sp)
    800069d4:	0d913023          	sd	s9,192(sp)
    800069d8:	0da13423          	sd	s10,200(sp)
    800069dc:	0db13823          	sd	s11,208(sp)
    800069e0:	0dc13c23          	sd	t3,216(sp)
    800069e4:	0fd13023          	sd	t4,224(sp)
    800069e8:	0fe13423          	sd	t5,232(sp)
    800069ec:	0ff13823          	sd	t6,240(sp)
    800069f0:	cc9ff0ef          	jal	ra,800066b8 <kerneltrap>
    800069f4:	00013083          	ld	ra,0(sp)
    800069f8:	00813103          	ld	sp,8(sp)
    800069fc:	01013183          	ld	gp,16(sp)
    80006a00:	02013283          	ld	t0,32(sp)
    80006a04:	02813303          	ld	t1,40(sp)
    80006a08:	03013383          	ld	t2,48(sp)
    80006a0c:	03813403          	ld	s0,56(sp)
    80006a10:	04013483          	ld	s1,64(sp)
    80006a14:	04813503          	ld	a0,72(sp)
    80006a18:	05013583          	ld	a1,80(sp)
    80006a1c:	05813603          	ld	a2,88(sp)
    80006a20:	06013683          	ld	a3,96(sp)
    80006a24:	06813703          	ld	a4,104(sp)
    80006a28:	07013783          	ld	a5,112(sp)
    80006a2c:	07813803          	ld	a6,120(sp)
    80006a30:	08013883          	ld	a7,128(sp)
    80006a34:	08813903          	ld	s2,136(sp)
    80006a38:	09013983          	ld	s3,144(sp)
    80006a3c:	09813a03          	ld	s4,152(sp)
    80006a40:	0a013a83          	ld	s5,160(sp)
    80006a44:	0a813b03          	ld	s6,168(sp)
    80006a48:	0b013b83          	ld	s7,176(sp)
    80006a4c:	0b813c03          	ld	s8,184(sp)
    80006a50:	0c013c83          	ld	s9,192(sp)
    80006a54:	0c813d03          	ld	s10,200(sp)
    80006a58:	0d013d83          	ld	s11,208(sp)
    80006a5c:	0d813e03          	ld	t3,216(sp)
    80006a60:	0e013e83          	ld	t4,224(sp)
    80006a64:	0e813f03          	ld	t5,232(sp)
    80006a68:	0f013f83          	ld	t6,240(sp)
    80006a6c:	10010113          	addi	sp,sp,256
    80006a70:	10200073          	sret
    80006a74:	00000013          	nop
    80006a78:	00000013          	nop
    80006a7c:	00000013          	nop

0000000080006a80 <timervec>:
    80006a80:	34051573          	csrrw	a0,mscratch,a0
    80006a84:	00b53023          	sd	a1,0(a0)
    80006a88:	00c53423          	sd	a2,8(a0)
    80006a8c:	00d53823          	sd	a3,16(a0)
    80006a90:	01853583          	ld	a1,24(a0)
    80006a94:	02053603          	ld	a2,32(a0)
    80006a98:	0005b683          	ld	a3,0(a1)
    80006a9c:	00c686b3          	add	a3,a3,a2
    80006aa0:	00d5b023          	sd	a3,0(a1)
    80006aa4:	00200593          	li	a1,2
    80006aa8:	14459073          	csrw	sip,a1
    80006aac:	01053683          	ld	a3,16(a0)
    80006ab0:	00853603          	ld	a2,8(a0)
    80006ab4:	00053583          	ld	a1,0(a0)
    80006ab8:	34051573          	csrrw	a0,mscratch,a0
    80006abc:	30200073          	mret

0000000080006ac0 <plicinit>:
    80006ac0:	ff010113          	addi	sp,sp,-16
    80006ac4:	00813423          	sd	s0,8(sp)
    80006ac8:	01010413          	addi	s0,sp,16
    80006acc:	00813403          	ld	s0,8(sp)
    80006ad0:	0c0007b7          	lui	a5,0xc000
    80006ad4:	00100713          	li	a4,1
    80006ad8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006adc:	00e7a223          	sw	a4,4(a5)
    80006ae0:	01010113          	addi	sp,sp,16
    80006ae4:	00008067          	ret

0000000080006ae8 <plicinithart>:
    80006ae8:	ff010113          	addi	sp,sp,-16
    80006aec:	00813023          	sd	s0,0(sp)
    80006af0:	00113423          	sd	ra,8(sp)
    80006af4:	01010413          	addi	s0,sp,16
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	a40080e7          	jalr	-1472(ra) # 80006538 <cpuid>
    80006b00:	0085171b          	slliw	a4,a0,0x8
    80006b04:	0c0027b7          	lui	a5,0xc002
    80006b08:	00e787b3          	add	a5,a5,a4
    80006b0c:	40200713          	li	a4,1026
    80006b10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b14:	00813083          	ld	ra,8(sp)
    80006b18:	00013403          	ld	s0,0(sp)
    80006b1c:	00d5151b          	slliw	a0,a0,0xd
    80006b20:	0c2017b7          	lui	a5,0xc201
    80006b24:	00a78533          	add	a0,a5,a0
    80006b28:	00052023          	sw	zero,0(a0)
    80006b2c:	01010113          	addi	sp,sp,16
    80006b30:	00008067          	ret

0000000080006b34 <plic_claim>:
    80006b34:	ff010113          	addi	sp,sp,-16
    80006b38:	00813023          	sd	s0,0(sp)
    80006b3c:	00113423          	sd	ra,8(sp)
    80006b40:	01010413          	addi	s0,sp,16
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	9f4080e7          	jalr	-1548(ra) # 80006538 <cpuid>
    80006b4c:	00813083          	ld	ra,8(sp)
    80006b50:	00013403          	ld	s0,0(sp)
    80006b54:	00d5151b          	slliw	a0,a0,0xd
    80006b58:	0c2017b7          	lui	a5,0xc201
    80006b5c:	00a78533          	add	a0,a5,a0
    80006b60:	00452503          	lw	a0,4(a0)
    80006b64:	01010113          	addi	sp,sp,16
    80006b68:	00008067          	ret

0000000080006b6c <plic_complete>:
    80006b6c:	fe010113          	addi	sp,sp,-32
    80006b70:	00813823          	sd	s0,16(sp)
    80006b74:	00913423          	sd	s1,8(sp)
    80006b78:	00113c23          	sd	ra,24(sp)
    80006b7c:	02010413          	addi	s0,sp,32
    80006b80:	00050493          	mv	s1,a0
    80006b84:	00000097          	auipc	ra,0x0
    80006b88:	9b4080e7          	jalr	-1612(ra) # 80006538 <cpuid>
    80006b8c:	01813083          	ld	ra,24(sp)
    80006b90:	01013403          	ld	s0,16(sp)
    80006b94:	00d5179b          	slliw	a5,a0,0xd
    80006b98:	0c201737          	lui	a4,0xc201
    80006b9c:	00f707b3          	add	a5,a4,a5
    80006ba0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ba4:	00813483          	ld	s1,8(sp)
    80006ba8:	02010113          	addi	sp,sp,32
    80006bac:	00008067          	ret

0000000080006bb0 <consolewrite>:
    80006bb0:	fb010113          	addi	sp,sp,-80
    80006bb4:	04813023          	sd	s0,64(sp)
    80006bb8:	04113423          	sd	ra,72(sp)
    80006bbc:	02913c23          	sd	s1,56(sp)
    80006bc0:	03213823          	sd	s2,48(sp)
    80006bc4:	03313423          	sd	s3,40(sp)
    80006bc8:	03413023          	sd	s4,32(sp)
    80006bcc:	01513c23          	sd	s5,24(sp)
    80006bd0:	05010413          	addi	s0,sp,80
    80006bd4:	06c05c63          	blez	a2,80006c4c <consolewrite+0x9c>
    80006bd8:	00060993          	mv	s3,a2
    80006bdc:	00050a13          	mv	s4,a0
    80006be0:	00058493          	mv	s1,a1
    80006be4:	00000913          	li	s2,0
    80006be8:	fff00a93          	li	s5,-1
    80006bec:	01c0006f          	j	80006c08 <consolewrite+0x58>
    80006bf0:	fbf44503          	lbu	a0,-65(s0)
    80006bf4:	0019091b          	addiw	s2,s2,1
    80006bf8:	00148493          	addi	s1,s1,1
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	a9c080e7          	jalr	-1380(ra) # 80007698 <uartputc>
    80006c04:	03298063          	beq	s3,s2,80006c24 <consolewrite+0x74>
    80006c08:	00048613          	mv	a2,s1
    80006c0c:	00100693          	li	a3,1
    80006c10:	000a0593          	mv	a1,s4
    80006c14:	fbf40513          	addi	a0,s0,-65
    80006c18:	00000097          	auipc	ra,0x0
    80006c1c:	9d8080e7          	jalr	-1576(ra) # 800065f0 <either_copyin>
    80006c20:	fd5518e3          	bne	a0,s5,80006bf0 <consolewrite+0x40>
    80006c24:	04813083          	ld	ra,72(sp)
    80006c28:	04013403          	ld	s0,64(sp)
    80006c2c:	03813483          	ld	s1,56(sp)
    80006c30:	02813983          	ld	s3,40(sp)
    80006c34:	02013a03          	ld	s4,32(sp)
    80006c38:	01813a83          	ld	s5,24(sp)
    80006c3c:	00090513          	mv	a0,s2
    80006c40:	03013903          	ld	s2,48(sp)
    80006c44:	05010113          	addi	sp,sp,80
    80006c48:	00008067          	ret
    80006c4c:	00000913          	li	s2,0
    80006c50:	fd5ff06f          	j	80006c24 <consolewrite+0x74>

0000000080006c54 <consoleread>:
    80006c54:	f9010113          	addi	sp,sp,-112
    80006c58:	06813023          	sd	s0,96(sp)
    80006c5c:	04913c23          	sd	s1,88(sp)
    80006c60:	05213823          	sd	s2,80(sp)
    80006c64:	05313423          	sd	s3,72(sp)
    80006c68:	05413023          	sd	s4,64(sp)
    80006c6c:	03513c23          	sd	s5,56(sp)
    80006c70:	03613823          	sd	s6,48(sp)
    80006c74:	03713423          	sd	s7,40(sp)
    80006c78:	03813023          	sd	s8,32(sp)
    80006c7c:	06113423          	sd	ra,104(sp)
    80006c80:	01913c23          	sd	s9,24(sp)
    80006c84:	07010413          	addi	s0,sp,112
    80006c88:	00060b93          	mv	s7,a2
    80006c8c:	00050913          	mv	s2,a0
    80006c90:	00058c13          	mv	s8,a1
    80006c94:	00060b1b          	sext.w	s6,a2
    80006c98:	00006497          	auipc	s1,0x6
    80006c9c:	d2048493          	addi	s1,s1,-736 # 8000c9b8 <cons>
    80006ca0:	00400993          	li	s3,4
    80006ca4:	fff00a13          	li	s4,-1
    80006ca8:	00a00a93          	li	s5,10
    80006cac:	05705e63          	blez	s7,80006d08 <consoleread+0xb4>
    80006cb0:	09c4a703          	lw	a4,156(s1)
    80006cb4:	0984a783          	lw	a5,152(s1)
    80006cb8:	0007071b          	sext.w	a4,a4
    80006cbc:	08e78463          	beq	a5,a4,80006d44 <consoleread+0xf0>
    80006cc0:	07f7f713          	andi	a4,a5,127
    80006cc4:	00e48733          	add	a4,s1,a4
    80006cc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006ccc:	0017869b          	addiw	a3,a5,1
    80006cd0:	08d4ac23          	sw	a3,152(s1)
    80006cd4:	00070c9b          	sext.w	s9,a4
    80006cd8:	0b370663          	beq	a4,s3,80006d84 <consoleread+0x130>
    80006cdc:	00100693          	li	a3,1
    80006ce0:	f9f40613          	addi	a2,s0,-97
    80006ce4:	000c0593          	mv	a1,s8
    80006ce8:	00090513          	mv	a0,s2
    80006cec:	f8e40fa3          	sb	a4,-97(s0)
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	8b4080e7          	jalr	-1868(ra) # 800065a4 <either_copyout>
    80006cf8:	01450863          	beq	a0,s4,80006d08 <consoleread+0xb4>
    80006cfc:	001c0c13          	addi	s8,s8,1
    80006d00:	fffb8b9b          	addiw	s7,s7,-1
    80006d04:	fb5c94e3          	bne	s9,s5,80006cac <consoleread+0x58>
    80006d08:	000b851b          	sext.w	a0,s7
    80006d0c:	06813083          	ld	ra,104(sp)
    80006d10:	06013403          	ld	s0,96(sp)
    80006d14:	05813483          	ld	s1,88(sp)
    80006d18:	05013903          	ld	s2,80(sp)
    80006d1c:	04813983          	ld	s3,72(sp)
    80006d20:	04013a03          	ld	s4,64(sp)
    80006d24:	03813a83          	ld	s5,56(sp)
    80006d28:	02813b83          	ld	s7,40(sp)
    80006d2c:	02013c03          	ld	s8,32(sp)
    80006d30:	01813c83          	ld	s9,24(sp)
    80006d34:	40ab053b          	subw	a0,s6,a0
    80006d38:	03013b03          	ld	s6,48(sp)
    80006d3c:	07010113          	addi	sp,sp,112
    80006d40:	00008067          	ret
    80006d44:	00001097          	auipc	ra,0x1
    80006d48:	1d8080e7          	jalr	472(ra) # 80007f1c <push_on>
    80006d4c:	0984a703          	lw	a4,152(s1)
    80006d50:	09c4a783          	lw	a5,156(s1)
    80006d54:	0007879b          	sext.w	a5,a5
    80006d58:	fef70ce3          	beq	a4,a5,80006d50 <consoleread+0xfc>
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	234080e7          	jalr	564(ra) # 80007f90 <pop_on>
    80006d64:	0984a783          	lw	a5,152(s1)
    80006d68:	07f7f713          	andi	a4,a5,127
    80006d6c:	00e48733          	add	a4,s1,a4
    80006d70:	01874703          	lbu	a4,24(a4)
    80006d74:	0017869b          	addiw	a3,a5,1
    80006d78:	08d4ac23          	sw	a3,152(s1)
    80006d7c:	00070c9b          	sext.w	s9,a4
    80006d80:	f5371ee3          	bne	a4,s3,80006cdc <consoleread+0x88>
    80006d84:	000b851b          	sext.w	a0,s7
    80006d88:	f96bf2e3          	bgeu	s7,s6,80006d0c <consoleread+0xb8>
    80006d8c:	08f4ac23          	sw	a5,152(s1)
    80006d90:	f7dff06f          	j	80006d0c <consoleread+0xb8>

0000000080006d94 <consputc>:
    80006d94:	10000793          	li	a5,256
    80006d98:	00f50663          	beq	a0,a5,80006da4 <consputc+0x10>
    80006d9c:	00001317          	auipc	t1,0x1
    80006da0:	9f430067          	jr	-1548(t1) # 80007790 <uartputc_sync>
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00113423          	sd	ra,8(sp)
    80006dac:	00813023          	sd	s0,0(sp)
    80006db0:	01010413          	addi	s0,sp,16
    80006db4:	00800513          	li	a0,8
    80006db8:	00001097          	auipc	ra,0x1
    80006dbc:	9d8080e7          	jalr	-1576(ra) # 80007790 <uartputc_sync>
    80006dc0:	02000513          	li	a0,32
    80006dc4:	00001097          	auipc	ra,0x1
    80006dc8:	9cc080e7          	jalr	-1588(ra) # 80007790 <uartputc_sync>
    80006dcc:	00013403          	ld	s0,0(sp)
    80006dd0:	00813083          	ld	ra,8(sp)
    80006dd4:	00800513          	li	a0,8
    80006dd8:	01010113          	addi	sp,sp,16
    80006ddc:	00001317          	auipc	t1,0x1
    80006de0:	9b430067          	jr	-1612(t1) # 80007790 <uartputc_sync>

0000000080006de4 <consoleintr>:
    80006de4:	fe010113          	addi	sp,sp,-32
    80006de8:	00813823          	sd	s0,16(sp)
    80006dec:	00913423          	sd	s1,8(sp)
    80006df0:	01213023          	sd	s2,0(sp)
    80006df4:	00113c23          	sd	ra,24(sp)
    80006df8:	02010413          	addi	s0,sp,32
    80006dfc:	00006917          	auipc	s2,0x6
    80006e00:	bbc90913          	addi	s2,s2,-1092 # 8000c9b8 <cons>
    80006e04:	00050493          	mv	s1,a0
    80006e08:	00090513          	mv	a0,s2
    80006e0c:	00001097          	auipc	ra,0x1
    80006e10:	e40080e7          	jalr	-448(ra) # 80007c4c <acquire>
    80006e14:	02048c63          	beqz	s1,80006e4c <consoleintr+0x68>
    80006e18:	0a092783          	lw	a5,160(s2)
    80006e1c:	09892703          	lw	a4,152(s2)
    80006e20:	07f00693          	li	a3,127
    80006e24:	40e7873b          	subw	a4,a5,a4
    80006e28:	02e6e263          	bltu	a3,a4,80006e4c <consoleintr+0x68>
    80006e2c:	00d00713          	li	a4,13
    80006e30:	04e48063          	beq	s1,a4,80006e70 <consoleintr+0x8c>
    80006e34:	07f7f713          	andi	a4,a5,127
    80006e38:	00e90733          	add	a4,s2,a4
    80006e3c:	0017879b          	addiw	a5,a5,1
    80006e40:	0af92023          	sw	a5,160(s2)
    80006e44:	00970c23          	sb	s1,24(a4)
    80006e48:	08f92e23          	sw	a5,156(s2)
    80006e4c:	01013403          	ld	s0,16(sp)
    80006e50:	01813083          	ld	ra,24(sp)
    80006e54:	00813483          	ld	s1,8(sp)
    80006e58:	00013903          	ld	s2,0(sp)
    80006e5c:	00006517          	auipc	a0,0x6
    80006e60:	b5c50513          	addi	a0,a0,-1188 # 8000c9b8 <cons>
    80006e64:	02010113          	addi	sp,sp,32
    80006e68:	00001317          	auipc	t1,0x1
    80006e6c:	eb030067          	jr	-336(t1) # 80007d18 <release>
    80006e70:	00a00493          	li	s1,10
    80006e74:	fc1ff06f          	j	80006e34 <consoleintr+0x50>

0000000080006e78 <consoleinit>:
    80006e78:	fe010113          	addi	sp,sp,-32
    80006e7c:	00113c23          	sd	ra,24(sp)
    80006e80:	00813823          	sd	s0,16(sp)
    80006e84:	00913423          	sd	s1,8(sp)
    80006e88:	02010413          	addi	s0,sp,32
    80006e8c:	00006497          	auipc	s1,0x6
    80006e90:	b2c48493          	addi	s1,s1,-1236 # 8000c9b8 <cons>
    80006e94:	00048513          	mv	a0,s1
    80006e98:	00002597          	auipc	a1,0x2
    80006e9c:	5e058593          	addi	a1,a1,1504 # 80009478 <CONSOLE_STATUS+0x468>
    80006ea0:	00001097          	auipc	ra,0x1
    80006ea4:	d88080e7          	jalr	-632(ra) # 80007c28 <initlock>
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	7ac080e7          	jalr	1964(ra) # 80007654 <uartinit>
    80006eb0:	01813083          	ld	ra,24(sp)
    80006eb4:	01013403          	ld	s0,16(sp)
    80006eb8:	00000797          	auipc	a5,0x0
    80006ebc:	d9c78793          	addi	a5,a5,-612 # 80006c54 <consoleread>
    80006ec0:	0af4bc23          	sd	a5,184(s1)
    80006ec4:	00000797          	auipc	a5,0x0
    80006ec8:	cec78793          	addi	a5,a5,-788 # 80006bb0 <consolewrite>
    80006ecc:	0cf4b023          	sd	a5,192(s1)
    80006ed0:	00813483          	ld	s1,8(sp)
    80006ed4:	02010113          	addi	sp,sp,32
    80006ed8:	00008067          	ret

0000000080006edc <console_read>:
    80006edc:	ff010113          	addi	sp,sp,-16
    80006ee0:	00813423          	sd	s0,8(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    80006ee8:	00813403          	ld	s0,8(sp)
    80006eec:	00006317          	auipc	t1,0x6
    80006ef0:	b8433303          	ld	t1,-1148(t1) # 8000ca70 <devsw+0x10>
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00030067          	jr	t1

0000000080006efc <console_write>:
    80006efc:	ff010113          	addi	sp,sp,-16
    80006f00:	00813423          	sd	s0,8(sp)
    80006f04:	01010413          	addi	s0,sp,16
    80006f08:	00813403          	ld	s0,8(sp)
    80006f0c:	00006317          	auipc	t1,0x6
    80006f10:	b6c33303          	ld	t1,-1172(t1) # 8000ca78 <devsw+0x18>
    80006f14:	01010113          	addi	sp,sp,16
    80006f18:	00030067          	jr	t1

0000000080006f1c <panic>:
    80006f1c:	fe010113          	addi	sp,sp,-32
    80006f20:	00113c23          	sd	ra,24(sp)
    80006f24:	00813823          	sd	s0,16(sp)
    80006f28:	00913423          	sd	s1,8(sp)
    80006f2c:	02010413          	addi	s0,sp,32
    80006f30:	00050493          	mv	s1,a0
    80006f34:	00002517          	auipc	a0,0x2
    80006f38:	54c50513          	addi	a0,a0,1356 # 80009480 <CONSOLE_STATUS+0x470>
    80006f3c:	00006797          	auipc	a5,0x6
    80006f40:	bc07ae23          	sw	zero,-1060(a5) # 8000cb18 <pr+0x18>
    80006f44:	00000097          	auipc	ra,0x0
    80006f48:	034080e7          	jalr	52(ra) # 80006f78 <__printf>
    80006f4c:	00048513          	mv	a0,s1
    80006f50:	00000097          	auipc	ra,0x0
    80006f54:	028080e7          	jalr	40(ra) # 80006f78 <__printf>
    80006f58:	00002517          	auipc	a0,0x2
    80006f5c:	15050513          	addi	a0,a0,336 # 800090a8 <CONSOLE_STATUS+0x98>
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	018080e7          	jalr	24(ra) # 80006f78 <__printf>
    80006f68:	00100793          	li	a5,1
    80006f6c:	00005717          	auipc	a4,0x5
    80006f70:	8af72623          	sw	a5,-1876(a4) # 8000b818 <panicked>
    80006f74:	0000006f          	j	80006f74 <panic+0x58>

0000000080006f78 <__printf>:
    80006f78:	f3010113          	addi	sp,sp,-208
    80006f7c:	08813023          	sd	s0,128(sp)
    80006f80:	07313423          	sd	s3,104(sp)
    80006f84:	09010413          	addi	s0,sp,144
    80006f88:	05813023          	sd	s8,64(sp)
    80006f8c:	08113423          	sd	ra,136(sp)
    80006f90:	06913c23          	sd	s1,120(sp)
    80006f94:	07213823          	sd	s2,112(sp)
    80006f98:	07413023          	sd	s4,96(sp)
    80006f9c:	05513c23          	sd	s5,88(sp)
    80006fa0:	05613823          	sd	s6,80(sp)
    80006fa4:	05713423          	sd	s7,72(sp)
    80006fa8:	03913c23          	sd	s9,56(sp)
    80006fac:	03a13823          	sd	s10,48(sp)
    80006fb0:	03b13423          	sd	s11,40(sp)
    80006fb4:	00006317          	auipc	t1,0x6
    80006fb8:	b4c30313          	addi	t1,t1,-1204 # 8000cb00 <pr>
    80006fbc:	01832c03          	lw	s8,24(t1)
    80006fc0:	00b43423          	sd	a1,8(s0)
    80006fc4:	00c43823          	sd	a2,16(s0)
    80006fc8:	00d43c23          	sd	a3,24(s0)
    80006fcc:	02e43023          	sd	a4,32(s0)
    80006fd0:	02f43423          	sd	a5,40(s0)
    80006fd4:	03043823          	sd	a6,48(s0)
    80006fd8:	03143c23          	sd	a7,56(s0)
    80006fdc:	00050993          	mv	s3,a0
    80006fe0:	4a0c1663          	bnez	s8,8000748c <__printf+0x514>
    80006fe4:	60098c63          	beqz	s3,800075fc <__printf+0x684>
    80006fe8:	0009c503          	lbu	a0,0(s3)
    80006fec:	00840793          	addi	a5,s0,8
    80006ff0:	f6f43c23          	sd	a5,-136(s0)
    80006ff4:	00000493          	li	s1,0
    80006ff8:	22050063          	beqz	a0,80007218 <__printf+0x2a0>
    80006ffc:	00002a37          	lui	s4,0x2
    80007000:	00018ab7          	lui	s5,0x18
    80007004:	000f4b37          	lui	s6,0xf4
    80007008:	00989bb7          	lui	s7,0x989
    8000700c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007010:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007014:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007018:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000701c:	00148c9b          	addiw	s9,s1,1
    80007020:	02500793          	li	a5,37
    80007024:	01998933          	add	s2,s3,s9
    80007028:	38f51263          	bne	a0,a5,800073ac <__printf+0x434>
    8000702c:	00094783          	lbu	a5,0(s2)
    80007030:	00078c9b          	sext.w	s9,a5
    80007034:	1e078263          	beqz	a5,80007218 <__printf+0x2a0>
    80007038:	0024849b          	addiw	s1,s1,2
    8000703c:	07000713          	li	a4,112
    80007040:	00998933          	add	s2,s3,s1
    80007044:	38e78a63          	beq	a5,a4,800073d8 <__printf+0x460>
    80007048:	20f76863          	bltu	a4,a5,80007258 <__printf+0x2e0>
    8000704c:	42a78863          	beq	a5,a0,8000747c <__printf+0x504>
    80007050:	06400713          	li	a4,100
    80007054:	40e79663          	bne	a5,a4,80007460 <__printf+0x4e8>
    80007058:	f7843783          	ld	a5,-136(s0)
    8000705c:	0007a603          	lw	a2,0(a5)
    80007060:	00878793          	addi	a5,a5,8
    80007064:	f6f43c23          	sd	a5,-136(s0)
    80007068:	42064a63          	bltz	a2,8000749c <__printf+0x524>
    8000706c:	00a00713          	li	a4,10
    80007070:	02e677bb          	remuw	a5,a2,a4
    80007074:	00002d97          	auipc	s11,0x2
    80007078:	434d8d93          	addi	s11,s11,1076 # 800094a8 <digits>
    8000707c:	00900593          	li	a1,9
    80007080:	0006051b          	sext.w	a0,a2
    80007084:	00000c93          	li	s9,0
    80007088:	02079793          	slli	a5,a5,0x20
    8000708c:	0207d793          	srli	a5,a5,0x20
    80007090:	00fd87b3          	add	a5,s11,a5
    80007094:	0007c783          	lbu	a5,0(a5)
    80007098:	02e656bb          	divuw	a3,a2,a4
    8000709c:	f8f40023          	sb	a5,-128(s0)
    800070a0:	14c5d863          	bge	a1,a2,800071f0 <__printf+0x278>
    800070a4:	06300593          	li	a1,99
    800070a8:	00100c93          	li	s9,1
    800070ac:	02e6f7bb          	remuw	a5,a3,a4
    800070b0:	02079793          	slli	a5,a5,0x20
    800070b4:	0207d793          	srli	a5,a5,0x20
    800070b8:	00fd87b3          	add	a5,s11,a5
    800070bc:	0007c783          	lbu	a5,0(a5)
    800070c0:	02e6d73b          	divuw	a4,a3,a4
    800070c4:	f8f400a3          	sb	a5,-127(s0)
    800070c8:	12a5f463          	bgeu	a1,a0,800071f0 <__printf+0x278>
    800070cc:	00a00693          	li	a3,10
    800070d0:	00900593          	li	a1,9
    800070d4:	02d777bb          	remuw	a5,a4,a3
    800070d8:	02079793          	slli	a5,a5,0x20
    800070dc:	0207d793          	srli	a5,a5,0x20
    800070e0:	00fd87b3          	add	a5,s11,a5
    800070e4:	0007c503          	lbu	a0,0(a5)
    800070e8:	02d757bb          	divuw	a5,a4,a3
    800070ec:	f8a40123          	sb	a0,-126(s0)
    800070f0:	48e5f263          	bgeu	a1,a4,80007574 <__printf+0x5fc>
    800070f4:	06300513          	li	a0,99
    800070f8:	02d7f5bb          	remuw	a1,a5,a3
    800070fc:	02059593          	slli	a1,a1,0x20
    80007100:	0205d593          	srli	a1,a1,0x20
    80007104:	00bd85b3          	add	a1,s11,a1
    80007108:	0005c583          	lbu	a1,0(a1)
    8000710c:	02d7d7bb          	divuw	a5,a5,a3
    80007110:	f8b401a3          	sb	a1,-125(s0)
    80007114:	48e57263          	bgeu	a0,a4,80007598 <__printf+0x620>
    80007118:	3e700513          	li	a0,999
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b40223          	sb	a1,-124(s0)
    80007138:	46e57663          	bgeu	a0,a4,800075a4 <__printf+0x62c>
    8000713c:	02d7f5bb          	remuw	a1,a5,a3
    80007140:	02059593          	slli	a1,a1,0x20
    80007144:	0205d593          	srli	a1,a1,0x20
    80007148:	00bd85b3          	add	a1,s11,a1
    8000714c:	0005c583          	lbu	a1,0(a1)
    80007150:	02d7d7bb          	divuw	a5,a5,a3
    80007154:	f8b402a3          	sb	a1,-123(s0)
    80007158:	46ea7863          	bgeu	s4,a4,800075c8 <__printf+0x650>
    8000715c:	02d7f5bb          	remuw	a1,a5,a3
    80007160:	02059593          	slli	a1,a1,0x20
    80007164:	0205d593          	srli	a1,a1,0x20
    80007168:	00bd85b3          	add	a1,s11,a1
    8000716c:	0005c583          	lbu	a1,0(a1)
    80007170:	02d7d7bb          	divuw	a5,a5,a3
    80007174:	f8b40323          	sb	a1,-122(s0)
    80007178:	3eeaf863          	bgeu	s5,a4,80007568 <__printf+0x5f0>
    8000717c:	02d7f5bb          	remuw	a1,a5,a3
    80007180:	02059593          	slli	a1,a1,0x20
    80007184:	0205d593          	srli	a1,a1,0x20
    80007188:	00bd85b3          	add	a1,s11,a1
    8000718c:	0005c583          	lbu	a1,0(a1)
    80007190:	02d7d7bb          	divuw	a5,a5,a3
    80007194:	f8b403a3          	sb	a1,-121(s0)
    80007198:	42eb7e63          	bgeu	s6,a4,800075d4 <__printf+0x65c>
    8000719c:	02d7f5bb          	remuw	a1,a5,a3
    800071a0:	02059593          	slli	a1,a1,0x20
    800071a4:	0205d593          	srli	a1,a1,0x20
    800071a8:	00bd85b3          	add	a1,s11,a1
    800071ac:	0005c583          	lbu	a1,0(a1)
    800071b0:	02d7d7bb          	divuw	a5,a5,a3
    800071b4:	f8b40423          	sb	a1,-120(s0)
    800071b8:	42ebfc63          	bgeu	s7,a4,800075f0 <__printf+0x678>
    800071bc:	02079793          	slli	a5,a5,0x20
    800071c0:	0207d793          	srli	a5,a5,0x20
    800071c4:	00fd8db3          	add	s11,s11,a5
    800071c8:	000dc703          	lbu	a4,0(s11)
    800071cc:	00a00793          	li	a5,10
    800071d0:	00900c93          	li	s9,9
    800071d4:	f8e404a3          	sb	a4,-119(s0)
    800071d8:	00065c63          	bgez	a2,800071f0 <__printf+0x278>
    800071dc:	f9040713          	addi	a4,s0,-112
    800071e0:	00f70733          	add	a4,a4,a5
    800071e4:	02d00693          	li	a3,45
    800071e8:	fed70823          	sb	a3,-16(a4)
    800071ec:	00078c93          	mv	s9,a5
    800071f0:	f8040793          	addi	a5,s0,-128
    800071f4:	01978cb3          	add	s9,a5,s9
    800071f8:	f7f40d13          	addi	s10,s0,-129
    800071fc:	000cc503          	lbu	a0,0(s9)
    80007200:	fffc8c93          	addi	s9,s9,-1
    80007204:	00000097          	auipc	ra,0x0
    80007208:	b90080e7          	jalr	-1136(ra) # 80006d94 <consputc>
    8000720c:	ffac98e3          	bne	s9,s10,800071fc <__printf+0x284>
    80007210:	00094503          	lbu	a0,0(s2)
    80007214:	e00514e3          	bnez	a0,8000701c <__printf+0xa4>
    80007218:	1a0c1663          	bnez	s8,800073c4 <__printf+0x44c>
    8000721c:	08813083          	ld	ra,136(sp)
    80007220:	08013403          	ld	s0,128(sp)
    80007224:	07813483          	ld	s1,120(sp)
    80007228:	07013903          	ld	s2,112(sp)
    8000722c:	06813983          	ld	s3,104(sp)
    80007230:	06013a03          	ld	s4,96(sp)
    80007234:	05813a83          	ld	s5,88(sp)
    80007238:	05013b03          	ld	s6,80(sp)
    8000723c:	04813b83          	ld	s7,72(sp)
    80007240:	04013c03          	ld	s8,64(sp)
    80007244:	03813c83          	ld	s9,56(sp)
    80007248:	03013d03          	ld	s10,48(sp)
    8000724c:	02813d83          	ld	s11,40(sp)
    80007250:	0d010113          	addi	sp,sp,208
    80007254:	00008067          	ret
    80007258:	07300713          	li	a4,115
    8000725c:	1ce78a63          	beq	a5,a4,80007430 <__printf+0x4b8>
    80007260:	07800713          	li	a4,120
    80007264:	1ee79e63          	bne	a5,a4,80007460 <__printf+0x4e8>
    80007268:	f7843783          	ld	a5,-136(s0)
    8000726c:	0007a703          	lw	a4,0(a5)
    80007270:	00878793          	addi	a5,a5,8
    80007274:	f6f43c23          	sd	a5,-136(s0)
    80007278:	28074263          	bltz	a4,800074fc <__printf+0x584>
    8000727c:	00002d97          	auipc	s11,0x2
    80007280:	22cd8d93          	addi	s11,s11,556 # 800094a8 <digits>
    80007284:	00f77793          	andi	a5,a4,15
    80007288:	00fd87b3          	add	a5,s11,a5
    8000728c:	0007c683          	lbu	a3,0(a5)
    80007290:	00f00613          	li	a2,15
    80007294:	0007079b          	sext.w	a5,a4
    80007298:	f8d40023          	sb	a3,-128(s0)
    8000729c:	0047559b          	srliw	a1,a4,0x4
    800072a0:	0047569b          	srliw	a3,a4,0x4
    800072a4:	00000c93          	li	s9,0
    800072a8:	0ee65063          	bge	a2,a4,80007388 <__printf+0x410>
    800072ac:	00f6f693          	andi	a3,a3,15
    800072b0:	00dd86b3          	add	a3,s11,a3
    800072b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800072b8:	0087d79b          	srliw	a5,a5,0x8
    800072bc:	00100c93          	li	s9,1
    800072c0:	f8d400a3          	sb	a3,-127(s0)
    800072c4:	0cb67263          	bgeu	a2,a1,80007388 <__printf+0x410>
    800072c8:	00f7f693          	andi	a3,a5,15
    800072cc:	00dd86b3          	add	a3,s11,a3
    800072d0:	0006c583          	lbu	a1,0(a3)
    800072d4:	00f00613          	li	a2,15
    800072d8:	0047d69b          	srliw	a3,a5,0x4
    800072dc:	f8b40123          	sb	a1,-126(s0)
    800072e0:	0047d593          	srli	a1,a5,0x4
    800072e4:	28f67e63          	bgeu	a2,a5,80007580 <__printf+0x608>
    800072e8:	00f6f693          	andi	a3,a3,15
    800072ec:	00dd86b3          	add	a3,s11,a3
    800072f0:	0006c503          	lbu	a0,0(a3)
    800072f4:	0087d813          	srli	a6,a5,0x8
    800072f8:	0087d69b          	srliw	a3,a5,0x8
    800072fc:	f8a401a3          	sb	a0,-125(s0)
    80007300:	28b67663          	bgeu	a2,a1,8000758c <__printf+0x614>
    80007304:	00f6f693          	andi	a3,a3,15
    80007308:	00dd86b3          	add	a3,s11,a3
    8000730c:	0006c583          	lbu	a1,0(a3)
    80007310:	00c7d513          	srli	a0,a5,0xc
    80007314:	00c7d69b          	srliw	a3,a5,0xc
    80007318:	f8b40223          	sb	a1,-124(s0)
    8000731c:	29067a63          	bgeu	a2,a6,800075b0 <__printf+0x638>
    80007320:	00f6f693          	andi	a3,a3,15
    80007324:	00dd86b3          	add	a3,s11,a3
    80007328:	0006c583          	lbu	a1,0(a3)
    8000732c:	0107d813          	srli	a6,a5,0x10
    80007330:	0107d69b          	srliw	a3,a5,0x10
    80007334:	f8b402a3          	sb	a1,-123(s0)
    80007338:	28a67263          	bgeu	a2,a0,800075bc <__printf+0x644>
    8000733c:	00f6f693          	andi	a3,a3,15
    80007340:	00dd86b3          	add	a3,s11,a3
    80007344:	0006c683          	lbu	a3,0(a3)
    80007348:	0147d79b          	srliw	a5,a5,0x14
    8000734c:	f8d40323          	sb	a3,-122(s0)
    80007350:	21067663          	bgeu	a2,a6,8000755c <__printf+0x5e4>
    80007354:	02079793          	slli	a5,a5,0x20
    80007358:	0207d793          	srli	a5,a5,0x20
    8000735c:	00fd8db3          	add	s11,s11,a5
    80007360:	000dc683          	lbu	a3,0(s11)
    80007364:	00800793          	li	a5,8
    80007368:	00700c93          	li	s9,7
    8000736c:	f8d403a3          	sb	a3,-121(s0)
    80007370:	00075c63          	bgez	a4,80007388 <__printf+0x410>
    80007374:	f9040713          	addi	a4,s0,-112
    80007378:	00f70733          	add	a4,a4,a5
    8000737c:	02d00693          	li	a3,45
    80007380:	fed70823          	sb	a3,-16(a4)
    80007384:	00078c93          	mv	s9,a5
    80007388:	f8040793          	addi	a5,s0,-128
    8000738c:	01978cb3          	add	s9,a5,s9
    80007390:	f7f40d13          	addi	s10,s0,-129
    80007394:	000cc503          	lbu	a0,0(s9)
    80007398:	fffc8c93          	addi	s9,s9,-1
    8000739c:	00000097          	auipc	ra,0x0
    800073a0:	9f8080e7          	jalr	-1544(ra) # 80006d94 <consputc>
    800073a4:	ff9d18e3          	bne	s10,s9,80007394 <__printf+0x41c>
    800073a8:	0100006f          	j	800073b8 <__printf+0x440>
    800073ac:	00000097          	auipc	ra,0x0
    800073b0:	9e8080e7          	jalr	-1560(ra) # 80006d94 <consputc>
    800073b4:	000c8493          	mv	s1,s9
    800073b8:	00094503          	lbu	a0,0(s2)
    800073bc:	c60510e3          	bnez	a0,8000701c <__printf+0xa4>
    800073c0:	e40c0ee3          	beqz	s8,8000721c <__printf+0x2a4>
    800073c4:	00005517          	auipc	a0,0x5
    800073c8:	73c50513          	addi	a0,a0,1852 # 8000cb00 <pr>
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	94c080e7          	jalr	-1716(ra) # 80007d18 <release>
    800073d4:	e49ff06f          	j	8000721c <__printf+0x2a4>
    800073d8:	f7843783          	ld	a5,-136(s0)
    800073dc:	03000513          	li	a0,48
    800073e0:	01000d13          	li	s10,16
    800073e4:	00878713          	addi	a4,a5,8
    800073e8:	0007bc83          	ld	s9,0(a5)
    800073ec:	f6e43c23          	sd	a4,-136(s0)
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	9a4080e7          	jalr	-1628(ra) # 80006d94 <consputc>
    800073f8:	07800513          	li	a0,120
    800073fc:	00000097          	auipc	ra,0x0
    80007400:	998080e7          	jalr	-1640(ra) # 80006d94 <consputc>
    80007404:	00002d97          	auipc	s11,0x2
    80007408:	0a4d8d93          	addi	s11,s11,164 # 800094a8 <digits>
    8000740c:	03ccd793          	srli	a5,s9,0x3c
    80007410:	00fd87b3          	add	a5,s11,a5
    80007414:	0007c503          	lbu	a0,0(a5)
    80007418:	fffd0d1b          	addiw	s10,s10,-1
    8000741c:	004c9c93          	slli	s9,s9,0x4
    80007420:	00000097          	auipc	ra,0x0
    80007424:	974080e7          	jalr	-1676(ra) # 80006d94 <consputc>
    80007428:	fe0d12e3          	bnez	s10,8000740c <__printf+0x494>
    8000742c:	f8dff06f          	j	800073b8 <__printf+0x440>
    80007430:	f7843783          	ld	a5,-136(s0)
    80007434:	0007bc83          	ld	s9,0(a5)
    80007438:	00878793          	addi	a5,a5,8
    8000743c:	f6f43c23          	sd	a5,-136(s0)
    80007440:	000c9a63          	bnez	s9,80007454 <__printf+0x4dc>
    80007444:	1080006f          	j	8000754c <__printf+0x5d4>
    80007448:	001c8c93          	addi	s9,s9,1
    8000744c:	00000097          	auipc	ra,0x0
    80007450:	948080e7          	jalr	-1720(ra) # 80006d94 <consputc>
    80007454:	000cc503          	lbu	a0,0(s9)
    80007458:	fe0518e3          	bnez	a0,80007448 <__printf+0x4d0>
    8000745c:	f5dff06f          	j	800073b8 <__printf+0x440>
    80007460:	02500513          	li	a0,37
    80007464:	00000097          	auipc	ra,0x0
    80007468:	930080e7          	jalr	-1744(ra) # 80006d94 <consputc>
    8000746c:	000c8513          	mv	a0,s9
    80007470:	00000097          	auipc	ra,0x0
    80007474:	924080e7          	jalr	-1756(ra) # 80006d94 <consputc>
    80007478:	f41ff06f          	j	800073b8 <__printf+0x440>
    8000747c:	02500513          	li	a0,37
    80007480:	00000097          	auipc	ra,0x0
    80007484:	914080e7          	jalr	-1772(ra) # 80006d94 <consputc>
    80007488:	f31ff06f          	j	800073b8 <__printf+0x440>
    8000748c:	00030513          	mv	a0,t1
    80007490:	00000097          	auipc	ra,0x0
    80007494:	7bc080e7          	jalr	1980(ra) # 80007c4c <acquire>
    80007498:	b4dff06f          	j	80006fe4 <__printf+0x6c>
    8000749c:	40c0053b          	negw	a0,a2
    800074a0:	00a00713          	li	a4,10
    800074a4:	02e576bb          	remuw	a3,a0,a4
    800074a8:	00002d97          	auipc	s11,0x2
    800074ac:	000d8d93          	mv	s11,s11
    800074b0:	ff700593          	li	a1,-9
    800074b4:	02069693          	slli	a3,a3,0x20
    800074b8:	0206d693          	srli	a3,a3,0x20
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c683          	lbu	a3,0(a3)
    800074c4:	02e557bb          	divuw	a5,a0,a4
    800074c8:	f8d40023          	sb	a3,-128(s0)
    800074cc:	10b65e63          	bge	a2,a1,800075e8 <__printf+0x670>
    800074d0:	06300593          	li	a1,99
    800074d4:	02e7f6bb          	remuw	a3,a5,a4
    800074d8:	02069693          	slli	a3,a3,0x20
    800074dc:	0206d693          	srli	a3,a3,0x20
    800074e0:	00dd86b3          	add	a3,s11,a3
    800074e4:	0006c683          	lbu	a3,0(a3)
    800074e8:	02e7d73b          	divuw	a4,a5,a4
    800074ec:	00200793          	li	a5,2
    800074f0:	f8d400a3          	sb	a3,-127(s0)
    800074f4:	bca5ece3          	bltu	a1,a0,800070cc <__printf+0x154>
    800074f8:	ce5ff06f          	j	800071dc <__printf+0x264>
    800074fc:	40e007bb          	negw	a5,a4
    80007500:	00002d97          	auipc	s11,0x2
    80007504:	fa8d8d93          	addi	s11,s11,-88 # 800094a8 <digits>
    80007508:	00f7f693          	andi	a3,a5,15
    8000750c:	00dd86b3          	add	a3,s11,a3
    80007510:	0006c583          	lbu	a1,0(a3)
    80007514:	ff100613          	li	a2,-15
    80007518:	0047d69b          	srliw	a3,a5,0x4
    8000751c:	f8b40023          	sb	a1,-128(s0)
    80007520:	0047d59b          	srliw	a1,a5,0x4
    80007524:	0ac75e63          	bge	a4,a2,800075e0 <__printf+0x668>
    80007528:	00f6f693          	andi	a3,a3,15
    8000752c:	00dd86b3          	add	a3,s11,a3
    80007530:	0006c603          	lbu	a2,0(a3)
    80007534:	00f00693          	li	a3,15
    80007538:	0087d79b          	srliw	a5,a5,0x8
    8000753c:	f8c400a3          	sb	a2,-127(s0)
    80007540:	d8b6e4e3          	bltu	a3,a1,800072c8 <__printf+0x350>
    80007544:	00200793          	li	a5,2
    80007548:	e2dff06f          	j	80007374 <__printf+0x3fc>
    8000754c:	00002c97          	auipc	s9,0x2
    80007550:	f3cc8c93          	addi	s9,s9,-196 # 80009488 <CONSOLE_STATUS+0x478>
    80007554:	02800513          	li	a0,40
    80007558:	ef1ff06f          	j	80007448 <__printf+0x4d0>
    8000755c:	00700793          	li	a5,7
    80007560:	00600c93          	li	s9,6
    80007564:	e0dff06f          	j	80007370 <__printf+0x3f8>
    80007568:	00700793          	li	a5,7
    8000756c:	00600c93          	li	s9,6
    80007570:	c69ff06f          	j	800071d8 <__printf+0x260>
    80007574:	00300793          	li	a5,3
    80007578:	00200c93          	li	s9,2
    8000757c:	c5dff06f          	j	800071d8 <__printf+0x260>
    80007580:	00300793          	li	a5,3
    80007584:	00200c93          	li	s9,2
    80007588:	de9ff06f          	j	80007370 <__printf+0x3f8>
    8000758c:	00400793          	li	a5,4
    80007590:	00300c93          	li	s9,3
    80007594:	dddff06f          	j	80007370 <__printf+0x3f8>
    80007598:	00400793          	li	a5,4
    8000759c:	00300c93          	li	s9,3
    800075a0:	c39ff06f          	j	800071d8 <__printf+0x260>
    800075a4:	00500793          	li	a5,5
    800075a8:	00400c93          	li	s9,4
    800075ac:	c2dff06f          	j	800071d8 <__printf+0x260>
    800075b0:	00500793          	li	a5,5
    800075b4:	00400c93          	li	s9,4
    800075b8:	db9ff06f          	j	80007370 <__printf+0x3f8>
    800075bc:	00600793          	li	a5,6
    800075c0:	00500c93          	li	s9,5
    800075c4:	dadff06f          	j	80007370 <__printf+0x3f8>
    800075c8:	00600793          	li	a5,6
    800075cc:	00500c93          	li	s9,5
    800075d0:	c09ff06f          	j	800071d8 <__printf+0x260>
    800075d4:	00800793          	li	a5,8
    800075d8:	00700c93          	li	s9,7
    800075dc:	bfdff06f          	j	800071d8 <__printf+0x260>
    800075e0:	00100793          	li	a5,1
    800075e4:	d91ff06f          	j	80007374 <__printf+0x3fc>
    800075e8:	00100793          	li	a5,1
    800075ec:	bf1ff06f          	j	800071dc <__printf+0x264>
    800075f0:	00900793          	li	a5,9
    800075f4:	00800c93          	li	s9,8
    800075f8:	be1ff06f          	j	800071d8 <__printf+0x260>
    800075fc:	00002517          	auipc	a0,0x2
    80007600:	e9450513          	addi	a0,a0,-364 # 80009490 <CONSOLE_STATUS+0x480>
    80007604:	00000097          	auipc	ra,0x0
    80007608:	918080e7          	jalr	-1768(ra) # 80006f1c <panic>

000000008000760c <printfinit>:
    8000760c:	fe010113          	addi	sp,sp,-32
    80007610:	00813823          	sd	s0,16(sp)
    80007614:	00913423          	sd	s1,8(sp)
    80007618:	00113c23          	sd	ra,24(sp)
    8000761c:	02010413          	addi	s0,sp,32
    80007620:	00005497          	auipc	s1,0x5
    80007624:	4e048493          	addi	s1,s1,1248 # 8000cb00 <pr>
    80007628:	00048513          	mv	a0,s1
    8000762c:	00002597          	auipc	a1,0x2
    80007630:	e7458593          	addi	a1,a1,-396 # 800094a0 <CONSOLE_STATUS+0x490>
    80007634:	00000097          	auipc	ra,0x0
    80007638:	5f4080e7          	jalr	1524(ra) # 80007c28 <initlock>
    8000763c:	01813083          	ld	ra,24(sp)
    80007640:	01013403          	ld	s0,16(sp)
    80007644:	0004ac23          	sw	zero,24(s1)
    80007648:	00813483          	ld	s1,8(sp)
    8000764c:	02010113          	addi	sp,sp,32
    80007650:	00008067          	ret

0000000080007654 <uartinit>:
    80007654:	ff010113          	addi	sp,sp,-16
    80007658:	00813423          	sd	s0,8(sp)
    8000765c:	01010413          	addi	s0,sp,16
    80007660:	100007b7          	lui	a5,0x10000
    80007664:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007668:	f8000713          	li	a4,-128
    8000766c:	00e781a3          	sb	a4,3(a5)
    80007670:	00300713          	li	a4,3
    80007674:	00e78023          	sb	a4,0(a5)
    80007678:	000780a3          	sb	zero,1(a5)
    8000767c:	00e781a3          	sb	a4,3(a5)
    80007680:	00700693          	li	a3,7
    80007684:	00d78123          	sb	a3,2(a5)
    80007688:	00e780a3          	sb	a4,1(a5)
    8000768c:	00813403          	ld	s0,8(sp)
    80007690:	01010113          	addi	sp,sp,16
    80007694:	00008067          	ret

0000000080007698 <uartputc>:
    80007698:	00004797          	auipc	a5,0x4
    8000769c:	1807a783          	lw	a5,384(a5) # 8000b818 <panicked>
    800076a0:	00078463          	beqz	a5,800076a8 <uartputc+0x10>
    800076a4:	0000006f          	j	800076a4 <uartputc+0xc>
    800076a8:	fd010113          	addi	sp,sp,-48
    800076ac:	02813023          	sd	s0,32(sp)
    800076b0:	00913c23          	sd	s1,24(sp)
    800076b4:	01213823          	sd	s2,16(sp)
    800076b8:	01313423          	sd	s3,8(sp)
    800076bc:	02113423          	sd	ra,40(sp)
    800076c0:	03010413          	addi	s0,sp,48
    800076c4:	00004917          	auipc	s2,0x4
    800076c8:	15c90913          	addi	s2,s2,348 # 8000b820 <uart_tx_r>
    800076cc:	00093783          	ld	a5,0(s2)
    800076d0:	00004497          	auipc	s1,0x4
    800076d4:	15848493          	addi	s1,s1,344 # 8000b828 <uart_tx_w>
    800076d8:	0004b703          	ld	a4,0(s1)
    800076dc:	02078693          	addi	a3,a5,32
    800076e0:	00050993          	mv	s3,a0
    800076e4:	02e69c63          	bne	a3,a4,8000771c <uartputc+0x84>
    800076e8:	00001097          	auipc	ra,0x1
    800076ec:	834080e7          	jalr	-1996(ra) # 80007f1c <push_on>
    800076f0:	00093783          	ld	a5,0(s2)
    800076f4:	0004b703          	ld	a4,0(s1)
    800076f8:	02078793          	addi	a5,a5,32
    800076fc:	00e79463          	bne	a5,a4,80007704 <uartputc+0x6c>
    80007700:	0000006f          	j	80007700 <uartputc+0x68>
    80007704:	00001097          	auipc	ra,0x1
    80007708:	88c080e7          	jalr	-1908(ra) # 80007f90 <pop_on>
    8000770c:	00093783          	ld	a5,0(s2)
    80007710:	0004b703          	ld	a4,0(s1)
    80007714:	02078693          	addi	a3,a5,32
    80007718:	fce688e3          	beq	a3,a4,800076e8 <uartputc+0x50>
    8000771c:	01f77693          	andi	a3,a4,31
    80007720:	00005597          	auipc	a1,0x5
    80007724:	40058593          	addi	a1,a1,1024 # 8000cb20 <uart_tx_buf>
    80007728:	00d586b3          	add	a3,a1,a3
    8000772c:	00170713          	addi	a4,a4,1
    80007730:	01368023          	sb	s3,0(a3)
    80007734:	00e4b023          	sd	a4,0(s1)
    80007738:	10000637          	lui	a2,0x10000
    8000773c:	02f71063          	bne	a4,a5,8000775c <uartputc+0xc4>
    80007740:	0340006f          	j	80007774 <uartputc+0xdc>
    80007744:	00074703          	lbu	a4,0(a4)
    80007748:	00f93023          	sd	a5,0(s2)
    8000774c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007750:	00093783          	ld	a5,0(s2)
    80007754:	0004b703          	ld	a4,0(s1)
    80007758:	00f70e63          	beq	a4,a5,80007774 <uartputc+0xdc>
    8000775c:	00564683          	lbu	a3,5(a2)
    80007760:	01f7f713          	andi	a4,a5,31
    80007764:	00e58733          	add	a4,a1,a4
    80007768:	0206f693          	andi	a3,a3,32
    8000776c:	00178793          	addi	a5,a5,1
    80007770:	fc069ae3          	bnez	a3,80007744 <uartputc+0xac>
    80007774:	02813083          	ld	ra,40(sp)
    80007778:	02013403          	ld	s0,32(sp)
    8000777c:	01813483          	ld	s1,24(sp)
    80007780:	01013903          	ld	s2,16(sp)
    80007784:	00813983          	ld	s3,8(sp)
    80007788:	03010113          	addi	sp,sp,48
    8000778c:	00008067          	ret

0000000080007790 <uartputc_sync>:
    80007790:	ff010113          	addi	sp,sp,-16
    80007794:	00813423          	sd	s0,8(sp)
    80007798:	01010413          	addi	s0,sp,16
    8000779c:	00004717          	auipc	a4,0x4
    800077a0:	07c72703          	lw	a4,124(a4) # 8000b818 <panicked>
    800077a4:	02071663          	bnez	a4,800077d0 <uartputc_sync+0x40>
    800077a8:	00050793          	mv	a5,a0
    800077ac:	100006b7          	lui	a3,0x10000
    800077b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800077b4:	02077713          	andi	a4,a4,32
    800077b8:	fe070ce3          	beqz	a4,800077b0 <uartputc_sync+0x20>
    800077bc:	0ff7f793          	andi	a5,a5,255
    800077c0:	00f68023          	sb	a5,0(a3)
    800077c4:	00813403          	ld	s0,8(sp)
    800077c8:	01010113          	addi	sp,sp,16
    800077cc:	00008067          	ret
    800077d0:	0000006f          	j	800077d0 <uartputc_sync+0x40>

00000000800077d4 <uartstart>:
    800077d4:	ff010113          	addi	sp,sp,-16
    800077d8:	00813423          	sd	s0,8(sp)
    800077dc:	01010413          	addi	s0,sp,16
    800077e0:	00004617          	auipc	a2,0x4
    800077e4:	04060613          	addi	a2,a2,64 # 8000b820 <uart_tx_r>
    800077e8:	00004517          	auipc	a0,0x4
    800077ec:	04050513          	addi	a0,a0,64 # 8000b828 <uart_tx_w>
    800077f0:	00063783          	ld	a5,0(a2)
    800077f4:	00053703          	ld	a4,0(a0)
    800077f8:	04f70263          	beq	a4,a5,8000783c <uartstart+0x68>
    800077fc:	100005b7          	lui	a1,0x10000
    80007800:	00005817          	auipc	a6,0x5
    80007804:	32080813          	addi	a6,a6,800 # 8000cb20 <uart_tx_buf>
    80007808:	01c0006f          	j	80007824 <uartstart+0x50>
    8000780c:	0006c703          	lbu	a4,0(a3)
    80007810:	00f63023          	sd	a5,0(a2)
    80007814:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007818:	00063783          	ld	a5,0(a2)
    8000781c:	00053703          	ld	a4,0(a0)
    80007820:	00f70e63          	beq	a4,a5,8000783c <uartstart+0x68>
    80007824:	01f7f713          	andi	a4,a5,31
    80007828:	00e806b3          	add	a3,a6,a4
    8000782c:	0055c703          	lbu	a4,5(a1)
    80007830:	00178793          	addi	a5,a5,1
    80007834:	02077713          	andi	a4,a4,32
    80007838:	fc071ae3          	bnez	a4,8000780c <uartstart+0x38>
    8000783c:	00813403          	ld	s0,8(sp)
    80007840:	01010113          	addi	sp,sp,16
    80007844:	00008067          	ret

0000000080007848 <uartgetc>:
    80007848:	ff010113          	addi	sp,sp,-16
    8000784c:	00813423          	sd	s0,8(sp)
    80007850:	01010413          	addi	s0,sp,16
    80007854:	10000737          	lui	a4,0x10000
    80007858:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000785c:	0017f793          	andi	a5,a5,1
    80007860:	00078c63          	beqz	a5,80007878 <uartgetc+0x30>
    80007864:	00074503          	lbu	a0,0(a4)
    80007868:	0ff57513          	andi	a0,a0,255
    8000786c:	00813403          	ld	s0,8(sp)
    80007870:	01010113          	addi	sp,sp,16
    80007874:	00008067          	ret
    80007878:	fff00513          	li	a0,-1
    8000787c:	ff1ff06f          	j	8000786c <uartgetc+0x24>

0000000080007880 <uartintr>:
    80007880:	100007b7          	lui	a5,0x10000
    80007884:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007888:	0017f793          	andi	a5,a5,1
    8000788c:	0a078463          	beqz	a5,80007934 <uartintr+0xb4>
    80007890:	fe010113          	addi	sp,sp,-32
    80007894:	00813823          	sd	s0,16(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	00113c23          	sd	ra,24(sp)
    800078a0:	02010413          	addi	s0,sp,32
    800078a4:	100004b7          	lui	s1,0x10000
    800078a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800078ac:	0ff57513          	andi	a0,a0,255
    800078b0:	fffff097          	auipc	ra,0xfffff
    800078b4:	534080e7          	jalr	1332(ra) # 80006de4 <consoleintr>
    800078b8:	0054c783          	lbu	a5,5(s1)
    800078bc:	0017f793          	andi	a5,a5,1
    800078c0:	fe0794e3          	bnez	a5,800078a8 <uartintr+0x28>
    800078c4:	00004617          	auipc	a2,0x4
    800078c8:	f5c60613          	addi	a2,a2,-164 # 8000b820 <uart_tx_r>
    800078cc:	00004517          	auipc	a0,0x4
    800078d0:	f5c50513          	addi	a0,a0,-164 # 8000b828 <uart_tx_w>
    800078d4:	00063783          	ld	a5,0(a2)
    800078d8:	00053703          	ld	a4,0(a0)
    800078dc:	04f70263          	beq	a4,a5,80007920 <uartintr+0xa0>
    800078e0:	100005b7          	lui	a1,0x10000
    800078e4:	00005817          	auipc	a6,0x5
    800078e8:	23c80813          	addi	a6,a6,572 # 8000cb20 <uart_tx_buf>
    800078ec:	01c0006f          	j	80007908 <uartintr+0x88>
    800078f0:	0006c703          	lbu	a4,0(a3)
    800078f4:	00f63023          	sd	a5,0(a2)
    800078f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078fc:	00063783          	ld	a5,0(a2)
    80007900:	00053703          	ld	a4,0(a0)
    80007904:	00f70e63          	beq	a4,a5,80007920 <uartintr+0xa0>
    80007908:	01f7f713          	andi	a4,a5,31
    8000790c:	00e806b3          	add	a3,a6,a4
    80007910:	0055c703          	lbu	a4,5(a1)
    80007914:	00178793          	addi	a5,a5,1
    80007918:	02077713          	andi	a4,a4,32
    8000791c:	fc071ae3          	bnez	a4,800078f0 <uartintr+0x70>
    80007920:	01813083          	ld	ra,24(sp)
    80007924:	01013403          	ld	s0,16(sp)
    80007928:	00813483          	ld	s1,8(sp)
    8000792c:	02010113          	addi	sp,sp,32
    80007930:	00008067          	ret
    80007934:	00004617          	auipc	a2,0x4
    80007938:	eec60613          	addi	a2,a2,-276 # 8000b820 <uart_tx_r>
    8000793c:	00004517          	auipc	a0,0x4
    80007940:	eec50513          	addi	a0,a0,-276 # 8000b828 <uart_tx_w>
    80007944:	00063783          	ld	a5,0(a2)
    80007948:	00053703          	ld	a4,0(a0)
    8000794c:	04f70263          	beq	a4,a5,80007990 <uartintr+0x110>
    80007950:	100005b7          	lui	a1,0x10000
    80007954:	00005817          	auipc	a6,0x5
    80007958:	1cc80813          	addi	a6,a6,460 # 8000cb20 <uart_tx_buf>
    8000795c:	01c0006f          	j	80007978 <uartintr+0xf8>
    80007960:	0006c703          	lbu	a4,0(a3)
    80007964:	00f63023          	sd	a5,0(a2)
    80007968:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000796c:	00063783          	ld	a5,0(a2)
    80007970:	00053703          	ld	a4,0(a0)
    80007974:	02f70063          	beq	a4,a5,80007994 <uartintr+0x114>
    80007978:	01f7f713          	andi	a4,a5,31
    8000797c:	00e806b3          	add	a3,a6,a4
    80007980:	0055c703          	lbu	a4,5(a1)
    80007984:	00178793          	addi	a5,a5,1
    80007988:	02077713          	andi	a4,a4,32
    8000798c:	fc071ae3          	bnez	a4,80007960 <uartintr+0xe0>
    80007990:	00008067          	ret
    80007994:	00008067          	ret

0000000080007998 <kinit>:
    80007998:	fc010113          	addi	sp,sp,-64
    8000799c:	02913423          	sd	s1,40(sp)
    800079a0:	fffff7b7          	lui	a5,0xfffff
    800079a4:	00006497          	auipc	s1,0x6
    800079a8:	19b48493          	addi	s1,s1,411 # 8000db3f <end+0xfff>
    800079ac:	02813823          	sd	s0,48(sp)
    800079b0:	01313c23          	sd	s3,24(sp)
    800079b4:	00f4f4b3          	and	s1,s1,a5
    800079b8:	02113c23          	sd	ra,56(sp)
    800079bc:	03213023          	sd	s2,32(sp)
    800079c0:	01413823          	sd	s4,16(sp)
    800079c4:	01513423          	sd	s5,8(sp)
    800079c8:	04010413          	addi	s0,sp,64
    800079cc:	000017b7          	lui	a5,0x1
    800079d0:	01100993          	li	s3,17
    800079d4:	00f487b3          	add	a5,s1,a5
    800079d8:	01b99993          	slli	s3,s3,0x1b
    800079dc:	06f9e063          	bltu	s3,a5,80007a3c <kinit+0xa4>
    800079e0:	00005a97          	auipc	s5,0x5
    800079e4:	160a8a93          	addi	s5,s5,352 # 8000cb40 <end>
    800079e8:	0754ec63          	bltu	s1,s5,80007a60 <kinit+0xc8>
    800079ec:	0734fa63          	bgeu	s1,s3,80007a60 <kinit+0xc8>
    800079f0:	00088a37          	lui	s4,0x88
    800079f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079f8:	00004917          	auipc	s2,0x4
    800079fc:	e3890913          	addi	s2,s2,-456 # 8000b830 <kmem>
    80007a00:	00ca1a13          	slli	s4,s4,0xc
    80007a04:	0140006f          	j	80007a18 <kinit+0x80>
    80007a08:	000017b7          	lui	a5,0x1
    80007a0c:	00f484b3          	add	s1,s1,a5
    80007a10:	0554e863          	bltu	s1,s5,80007a60 <kinit+0xc8>
    80007a14:	0534f663          	bgeu	s1,s3,80007a60 <kinit+0xc8>
    80007a18:	00001637          	lui	a2,0x1
    80007a1c:	00100593          	li	a1,1
    80007a20:	00048513          	mv	a0,s1
    80007a24:	00000097          	auipc	ra,0x0
    80007a28:	5e4080e7          	jalr	1508(ra) # 80008008 <__memset>
    80007a2c:	00093783          	ld	a5,0(s2)
    80007a30:	00f4b023          	sd	a5,0(s1)
    80007a34:	00993023          	sd	s1,0(s2)
    80007a38:	fd4498e3          	bne	s1,s4,80007a08 <kinit+0x70>
    80007a3c:	03813083          	ld	ra,56(sp)
    80007a40:	03013403          	ld	s0,48(sp)
    80007a44:	02813483          	ld	s1,40(sp)
    80007a48:	02013903          	ld	s2,32(sp)
    80007a4c:	01813983          	ld	s3,24(sp)
    80007a50:	01013a03          	ld	s4,16(sp)
    80007a54:	00813a83          	ld	s5,8(sp)
    80007a58:	04010113          	addi	sp,sp,64
    80007a5c:	00008067          	ret
    80007a60:	00002517          	auipc	a0,0x2
    80007a64:	a6050513          	addi	a0,a0,-1440 # 800094c0 <digits+0x18>
    80007a68:	fffff097          	auipc	ra,0xfffff
    80007a6c:	4b4080e7          	jalr	1204(ra) # 80006f1c <panic>

0000000080007a70 <freerange>:
    80007a70:	fc010113          	addi	sp,sp,-64
    80007a74:	000017b7          	lui	a5,0x1
    80007a78:	02913423          	sd	s1,40(sp)
    80007a7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a80:	009504b3          	add	s1,a0,s1
    80007a84:	fffff537          	lui	a0,0xfffff
    80007a88:	02813823          	sd	s0,48(sp)
    80007a8c:	02113c23          	sd	ra,56(sp)
    80007a90:	03213023          	sd	s2,32(sp)
    80007a94:	01313c23          	sd	s3,24(sp)
    80007a98:	01413823          	sd	s4,16(sp)
    80007a9c:	01513423          	sd	s5,8(sp)
    80007aa0:	01613023          	sd	s6,0(sp)
    80007aa4:	04010413          	addi	s0,sp,64
    80007aa8:	00a4f4b3          	and	s1,s1,a0
    80007aac:	00f487b3          	add	a5,s1,a5
    80007ab0:	06f5e463          	bltu	a1,a5,80007b18 <freerange+0xa8>
    80007ab4:	00005a97          	auipc	s5,0x5
    80007ab8:	08ca8a93          	addi	s5,s5,140 # 8000cb40 <end>
    80007abc:	0954e263          	bltu	s1,s5,80007b40 <freerange+0xd0>
    80007ac0:	01100993          	li	s3,17
    80007ac4:	01b99993          	slli	s3,s3,0x1b
    80007ac8:	0734fc63          	bgeu	s1,s3,80007b40 <freerange+0xd0>
    80007acc:	00058a13          	mv	s4,a1
    80007ad0:	00004917          	auipc	s2,0x4
    80007ad4:	d6090913          	addi	s2,s2,-672 # 8000b830 <kmem>
    80007ad8:	00002b37          	lui	s6,0x2
    80007adc:	0140006f          	j	80007af0 <freerange+0x80>
    80007ae0:	000017b7          	lui	a5,0x1
    80007ae4:	00f484b3          	add	s1,s1,a5
    80007ae8:	0554ec63          	bltu	s1,s5,80007b40 <freerange+0xd0>
    80007aec:	0534fa63          	bgeu	s1,s3,80007b40 <freerange+0xd0>
    80007af0:	00001637          	lui	a2,0x1
    80007af4:	00100593          	li	a1,1
    80007af8:	00048513          	mv	a0,s1
    80007afc:	00000097          	auipc	ra,0x0
    80007b00:	50c080e7          	jalr	1292(ra) # 80008008 <__memset>
    80007b04:	00093703          	ld	a4,0(s2)
    80007b08:	016487b3          	add	a5,s1,s6
    80007b0c:	00e4b023          	sd	a4,0(s1)
    80007b10:	00993023          	sd	s1,0(s2)
    80007b14:	fcfa76e3          	bgeu	s4,a5,80007ae0 <freerange+0x70>
    80007b18:	03813083          	ld	ra,56(sp)
    80007b1c:	03013403          	ld	s0,48(sp)
    80007b20:	02813483          	ld	s1,40(sp)
    80007b24:	02013903          	ld	s2,32(sp)
    80007b28:	01813983          	ld	s3,24(sp)
    80007b2c:	01013a03          	ld	s4,16(sp)
    80007b30:	00813a83          	ld	s5,8(sp)
    80007b34:	00013b03          	ld	s6,0(sp)
    80007b38:	04010113          	addi	sp,sp,64
    80007b3c:	00008067          	ret
    80007b40:	00002517          	auipc	a0,0x2
    80007b44:	98050513          	addi	a0,a0,-1664 # 800094c0 <digits+0x18>
    80007b48:	fffff097          	auipc	ra,0xfffff
    80007b4c:	3d4080e7          	jalr	980(ra) # 80006f1c <panic>

0000000080007b50 <kfree>:
    80007b50:	fe010113          	addi	sp,sp,-32
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00113c23          	sd	ra,24(sp)
    80007b5c:	00913423          	sd	s1,8(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	03451793          	slli	a5,a0,0x34
    80007b68:	04079c63          	bnez	a5,80007bc0 <kfree+0x70>
    80007b6c:	00005797          	auipc	a5,0x5
    80007b70:	fd478793          	addi	a5,a5,-44 # 8000cb40 <end>
    80007b74:	00050493          	mv	s1,a0
    80007b78:	04f56463          	bltu	a0,a5,80007bc0 <kfree+0x70>
    80007b7c:	01100793          	li	a5,17
    80007b80:	01b79793          	slli	a5,a5,0x1b
    80007b84:	02f57e63          	bgeu	a0,a5,80007bc0 <kfree+0x70>
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00100593          	li	a1,1
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	478080e7          	jalr	1144(ra) # 80008008 <__memset>
    80007b98:	00004797          	auipc	a5,0x4
    80007b9c:	c9878793          	addi	a5,a5,-872 # 8000b830 <kmem>
    80007ba0:	0007b703          	ld	a4,0(a5)
    80007ba4:	01813083          	ld	ra,24(sp)
    80007ba8:	01013403          	ld	s0,16(sp)
    80007bac:	00e4b023          	sd	a4,0(s1)
    80007bb0:	0097b023          	sd	s1,0(a5)
    80007bb4:	00813483          	ld	s1,8(sp)
    80007bb8:	02010113          	addi	sp,sp,32
    80007bbc:	00008067          	ret
    80007bc0:	00002517          	auipc	a0,0x2
    80007bc4:	90050513          	addi	a0,a0,-1792 # 800094c0 <digits+0x18>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	354080e7          	jalr	852(ra) # 80006f1c <panic>

0000000080007bd0 <kalloc>:
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	00004797          	auipc	a5,0x4
    80007be8:	c4c78793          	addi	a5,a5,-948 # 8000b830 <kmem>
    80007bec:	0007b483          	ld	s1,0(a5)
    80007bf0:	02048063          	beqz	s1,80007c10 <kalloc+0x40>
    80007bf4:	0004b703          	ld	a4,0(s1)
    80007bf8:	00001637          	lui	a2,0x1
    80007bfc:	00500593          	li	a1,5
    80007c00:	00048513          	mv	a0,s1
    80007c04:	00e7b023          	sd	a4,0(a5)
    80007c08:	00000097          	auipc	ra,0x0
    80007c0c:	400080e7          	jalr	1024(ra) # 80008008 <__memset>
    80007c10:	01813083          	ld	ra,24(sp)
    80007c14:	01013403          	ld	s0,16(sp)
    80007c18:	00048513          	mv	a0,s1
    80007c1c:	00813483          	ld	s1,8(sp)
    80007c20:	02010113          	addi	sp,sp,32
    80007c24:	00008067          	ret

0000000080007c28 <initlock>:
    80007c28:	ff010113          	addi	sp,sp,-16
    80007c2c:	00813423          	sd	s0,8(sp)
    80007c30:	01010413          	addi	s0,sp,16
    80007c34:	00813403          	ld	s0,8(sp)
    80007c38:	00b53423          	sd	a1,8(a0)
    80007c3c:	00052023          	sw	zero,0(a0)
    80007c40:	00053823          	sd	zero,16(a0)
    80007c44:	01010113          	addi	sp,sp,16
    80007c48:	00008067          	ret

0000000080007c4c <acquire>:
    80007c4c:	fe010113          	addi	sp,sp,-32
    80007c50:	00813823          	sd	s0,16(sp)
    80007c54:	00913423          	sd	s1,8(sp)
    80007c58:	00113c23          	sd	ra,24(sp)
    80007c5c:	01213023          	sd	s2,0(sp)
    80007c60:	02010413          	addi	s0,sp,32
    80007c64:	00050493          	mv	s1,a0
    80007c68:	10002973          	csrr	s2,sstatus
    80007c6c:	100027f3          	csrr	a5,sstatus
    80007c70:	ffd7f793          	andi	a5,a5,-3
    80007c74:	10079073          	csrw	sstatus,a5
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	8e0080e7          	jalr	-1824(ra) # 80006558 <mycpu>
    80007c80:	07852783          	lw	a5,120(a0)
    80007c84:	06078e63          	beqz	a5,80007d00 <acquire+0xb4>
    80007c88:	fffff097          	auipc	ra,0xfffff
    80007c8c:	8d0080e7          	jalr	-1840(ra) # 80006558 <mycpu>
    80007c90:	07852783          	lw	a5,120(a0)
    80007c94:	0004a703          	lw	a4,0(s1)
    80007c98:	0017879b          	addiw	a5,a5,1
    80007c9c:	06f52c23          	sw	a5,120(a0)
    80007ca0:	04071063          	bnez	a4,80007ce0 <acquire+0x94>
    80007ca4:	00100713          	li	a4,1
    80007ca8:	00070793          	mv	a5,a4
    80007cac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007cb0:	0007879b          	sext.w	a5,a5
    80007cb4:	fe079ae3          	bnez	a5,80007ca8 <acquire+0x5c>
    80007cb8:	0ff0000f          	fence
    80007cbc:	fffff097          	auipc	ra,0xfffff
    80007cc0:	89c080e7          	jalr	-1892(ra) # 80006558 <mycpu>
    80007cc4:	01813083          	ld	ra,24(sp)
    80007cc8:	01013403          	ld	s0,16(sp)
    80007ccc:	00a4b823          	sd	a0,16(s1)
    80007cd0:	00013903          	ld	s2,0(sp)
    80007cd4:	00813483          	ld	s1,8(sp)
    80007cd8:	02010113          	addi	sp,sp,32
    80007cdc:	00008067          	ret
    80007ce0:	0104b903          	ld	s2,16(s1)
    80007ce4:	fffff097          	auipc	ra,0xfffff
    80007ce8:	874080e7          	jalr	-1932(ra) # 80006558 <mycpu>
    80007cec:	faa91ce3          	bne	s2,a0,80007ca4 <acquire+0x58>
    80007cf0:	00001517          	auipc	a0,0x1
    80007cf4:	7d850513          	addi	a0,a0,2008 # 800094c8 <digits+0x20>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	224080e7          	jalr	548(ra) # 80006f1c <panic>
    80007d00:	00195913          	srli	s2,s2,0x1
    80007d04:	fffff097          	auipc	ra,0xfffff
    80007d08:	854080e7          	jalr	-1964(ra) # 80006558 <mycpu>
    80007d0c:	00197913          	andi	s2,s2,1
    80007d10:	07252e23          	sw	s2,124(a0)
    80007d14:	f75ff06f          	j	80007c88 <acquire+0x3c>

0000000080007d18 <release>:
    80007d18:	fe010113          	addi	sp,sp,-32
    80007d1c:	00813823          	sd	s0,16(sp)
    80007d20:	00113c23          	sd	ra,24(sp)
    80007d24:	00913423          	sd	s1,8(sp)
    80007d28:	01213023          	sd	s2,0(sp)
    80007d2c:	02010413          	addi	s0,sp,32
    80007d30:	00052783          	lw	a5,0(a0)
    80007d34:	00079a63          	bnez	a5,80007d48 <release+0x30>
    80007d38:	00001517          	auipc	a0,0x1
    80007d3c:	79850513          	addi	a0,a0,1944 # 800094d0 <digits+0x28>
    80007d40:	fffff097          	auipc	ra,0xfffff
    80007d44:	1dc080e7          	jalr	476(ra) # 80006f1c <panic>
    80007d48:	01053903          	ld	s2,16(a0)
    80007d4c:	00050493          	mv	s1,a0
    80007d50:	fffff097          	auipc	ra,0xfffff
    80007d54:	808080e7          	jalr	-2040(ra) # 80006558 <mycpu>
    80007d58:	fea910e3          	bne	s2,a0,80007d38 <release+0x20>
    80007d5c:	0004b823          	sd	zero,16(s1)
    80007d60:	0ff0000f          	fence
    80007d64:	0f50000f          	fence	iorw,ow
    80007d68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d6c:	ffffe097          	auipc	ra,0xffffe
    80007d70:	7ec080e7          	jalr	2028(ra) # 80006558 <mycpu>
    80007d74:	100027f3          	csrr	a5,sstatus
    80007d78:	0027f793          	andi	a5,a5,2
    80007d7c:	04079a63          	bnez	a5,80007dd0 <release+0xb8>
    80007d80:	07852783          	lw	a5,120(a0)
    80007d84:	02f05e63          	blez	a5,80007dc0 <release+0xa8>
    80007d88:	fff7871b          	addiw	a4,a5,-1
    80007d8c:	06e52c23          	sw	a4,120(a0)
    80007d90:	00071c63          	bnez	a4,80007da8 <release+0x90>
    80007d94:	07c52783          	lw	a5,124(a0)
    80007d98:	00078863          	beqz	a5,80007da8 <release+0x90>
    80007d9c:	100027f3          	csrr	a5,sstatus
    80007da0:	0027e793          	ori	a5,a5,2
    80007da4:	10079073          	csrw	sstatus,a5
    80007da8:	01813083          	ld	ra,24(sp)
    80007dac:	01013403          	ld	s0,16(sp)
    80007db0:	00813483          	ld	s1,8(sp)
    80007db4:	00013903          	ld	s2,0(sp)
    80007db8:	02010113          	addi	sp,sp,32
    80007dbc:	00008067          	ret
    80007dc0:	00001517          	auipc	a0,0x1
    80007dc4:	73050513          	addi	a0,a0,1840 # 800094f0 <digits+0x48>
    80007dc8:	fffff097          	auipc	ra,0xfffff
    80007dcc:	154080e7          	jalr	340(ra) # 80006f1c <panic>
    80007dd0:	00001517          	auipc	a0,0x1
    80007dd4:	70850513          	addi	a0,a0,1800 # 800094d8 <digits+0x30>
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	144080e7          	jalr	324(ra) # 80006f1c <panic>

0000000080007de0 <holding>:
    80007de0:	00052783          	lw	a5,0(a0)
    80007de4:	00079663          	bnez	a5,80007df0 <holding+0x10>
    80007de8:	00000513          	li	a0,0
    80007dec:	00008067          	ret
    80007df0:	fe010113          	addi	sp,sp,-32
    80007df4:	00813823          	sd	s0,16(sp)
    80007df8:	00913423          	sd	s1,8(sp)
    80007dfc:	00113c23          	sd	ra,24(sp)
    80007e00:	02010413          	addi	s0,sp,32
    80007e04:	01053483          	ld	s1,16(a0)
    80007e08:	ffffe097          	auipc	ra,0xffffe
    80007e0c:	750080e7          	jalr	1872(ra) # 80006558 <mycpu>
    80007e10:	01813083          	ld	ra,24(sp)
    80007e14:	01013403          	ld	s0,16(sp)
    80007e18:	40a48533          	sub	a0,s1,a0
    80007e1c:	00153513          	seqz	a0,a0
    80007e20:	00813483          	ld	s1,8(sp)
    80007e24:	02010113          	addi	sp,sp,32
    80007e28:	00008067          	ret

0000000080007e2c <push_off>:
    80007e2c:	fe010113          	addi	sp,sp,-32
    80007e30:	00813823          	sd	s0,16(sp)
    80007e34:	00113c23          	sd	ra,24(sp)
    80007e38:	00913423          	sd	s1,8(sp)
    80007e3c:	02010413          	addi	s0,sp,32
    80007e40:	100024f3          	csrr	s1,sstatus
    80007e44:	100027f3          	csrr	a5,sstatus
    80007e48:	ffd7f793          	andi	a5,a5,-3
    80007e4c:	10079073          	csrw	sstatus,a5
    80007e50:	ffffe097          	auipc	ra,0xffffe
    80007e54:	708080e7          	jalr	1800(ra) # 80006558 <mycpu>
    80007e58:	07852783          	lw	a5,120(a0)
    80007e5c:	02078663          	beqz	a5,80007e88 <push_off+0x5c>
    80007e60:	ffffe097          	auipc	ra,0xffffe
    80007e64:	6f8080e7          	jalr	1784(ra) # 80006558 <mycpu>
    80007e68:	07852783          	lw	a5,120(a0)
    80007e6c:	01813083          	ld	ra,24(sp)
    80007e70:	01013403          	ld	s0,16(sp)
    80007e74:	0017879b          	addiw	a5,a5,1
    80007e78:	06f52c23          	sw	a5,120(a0)
    80007e7c:	00813483          	ld	s1,8(sp)
    80007e80:	02010113          	addi	sp,sp,32
    80007e84:	00008067          	ret
    80007e88:	0014d493          	srli	s1,s1,0x1
    80007e8c:	ffffe097          	auipc	ra,0xffffe
    80007e90:	6cc080e7          	jalr	1740(ra) # 80006558 <mycpu>
    80007e94:	0014f493          	andi	s1,s1,1
    80007e98:	06952e23          	sw	s1,124(a0)
    80007e9c:	fc5ff06f          	j	80007e60 <push_off+0x34>

0000000080007ea0 <pop_off>:
    80007ea0:	ff010113          	addi	sp,sp,-16
    80007ea4:	00813023          	sd	s0,0(sp)
    80007ea8:	00113423          	sd	ra,8(sp)
    80007eac:	01010413          	addi	s0,sp,16
    80007eb0:	ffffe097          	auipc	ra,0xffffe
    80007eb4:	6a8080e7          	jalr	1704(ra) # 80006558 <mycpu>
    80007eb8:	100027f3          	csrr	a5,sstatus
    80007ebc:	0027f793          	andi	a5,a5,2
    80007ec0:	04079663          	bnez	a5,80007f0c <pop_off+0x6c>
    80007ec4:	07852783          	lw	a5,120(a0)
    80007ec8:	02f05a63          	blez	a5,80007efc <pop_off+0x5c>
    80007ecc:	fff7871b          	addiw	a4,a5,-1
    80007ed0:	06e52c23          	sw	a4,120(a0)
    80007ed4:	00071c63          	bnez	a4,80007eec <pop_off+0x4c>
    80007ed8:	07c52783          	lw	a5,124(a0)
    80007edc:	00078863          	beqz	a5,80007eec <pop_off+0x4c>
    80007ee0:	100027f3          	csrr	a5,sstatus
    80007ee4:	0027e793          	ori	a5,a5,2
    80007ee8:	10079073          	csrw	sstatus,a5
    80007eec:	00813083          	ld	ra,8(sp)
    80007ef0:	00013403          	ld	s0,0(sp)
    80007ef4:	01010113          	addi	sp,sp,16
    80007ef8:	00008067          	ret
    80007efc:	00001517          	auipc	a0,0x1
    80007f00:	5f450513          	addi	a0,a0,1524 # 800094f0 <digits+0x48>
    80007f04:	fffff097          	auipc	ra,0xfffff
    80007f08:	018080e7          	jalr	24(ra) # 80006f1c <panic>
    80007f0c:	00001517          	auipc	a0,0x1
    80007f10:	5cc50513          	addi	a0,a0,1484 # 800094d8 <digits+0x30>
    80007f14:	fffff097          	auipc	ra,0xfffff
    80007f18:	008080e7          	jalr	8(ra) # 80006f1c <panic>

0000000080007f1c <push_on>:
    80007f1c:	fe010113          	addi	sp,sp,-32
    80007f20:	00813823          	sd	s0,16(sp)
    80007f24:	00113c23          	sd	ra,24(sp)
    80007f28:	00913423          	sd	s1,8(sp)
    80007f2c:	02010413          	addi	s0,sp,32
    80007f30:	100024f3          	csrr	s1,sstatus
    80007f34:	100027f3          	csrr	a5,sstatus
    80007f38:	0027e793          	ori	a5,a5,2
    80007f3c:	10079073          	csrw	sstatus,a5
    80007f40:	ffffe097          	auipc	ra,0xffffe
    80007f44:	618080e7          	jalr	1560(ra) # 80006558 <mycpu>
    80007f48:	07852783          	lw	a5,120(a0)
    80007f4c:	02078663          	beqz	a5,80007f78 <push_on+0x5c>
    80007f50:	ffffe097          	auipc	ra,0xffffe
    80007f54:	608080e7          	jalr	1544(ra) # 80006558 <mycpu>
    80007f58:	07852783          	lw	a5,120(a0)
    80007f5c:	01813083          	ld	ra,24(sp)
    80007f60:	01013403          	ld	s0,16(sp)
    80007f64:	0017879b          	addiw	a5,a5,1
    80007f68:	06f52c23          	sw	a5,120(a0)
    80007f6c:	00813483          	ld	s1,8(sp)
    80007f70:	02010113          	addi	sp,sp,32
    80007f74:	00008067          	ret
    80007f78:	0014d493          	srli	s1,s1,0x1
    80007f7c:	ffffe097          	auipc	ra,0xffffe
    80007f80:	5dc080e7          	jalr	1500(ra) # 80006558 <mycpu>
    80007f84:	0014f493          	andi	s1,s1,1
    80007f88:	06952e23          	sw	s1,124(a0)
    80007f8c:	fc5ff06f          	j	80007f50 <push_on+0x34>

0000000080007f90 <pop_on>:
    80007f90:	ff010113          	addi	sp,sp,-16
    80007f94:	00813023          	sd	s0,0(sp)
    80007f98:	00113423          	sd	ra,8(sp)
    80007f9c:	01010413          	addi	s0,sp,16
    80007fa0:	ffffe097          	auipc	ra,0xffffe
    80007fa4:	5b8080e7          	jalr	1464(ra) # 80006558 <mycpu>
    80007fa8:	100027f3          	csrr	a5,sstatus
    80007fac:	0027f793          	andi	a5,a5,2
    80007fb0:	04078463          	beqz	a5,80007ff8 <pop_on+0x68>
    80007fb4:	07852783          	lw	a5,120(a0)
    80007fb8:	02f05863          	blez	a5,80007fe8 <pop_on+0x58>
    80007fbc:	fff7879b          	addiw	a5,a5,-1
    80007fc0:	06f52c23          	sw	a5,120(a0)
    80007fc4:	07853783          	ld	a5,120(a0)
    80007fc8:	00079863          	bnez	a5,80007fd8 <pop_on+0x48>
    80007fcc:	100027f3          	csrr	a5,sstatus
    80007fd0:	ffd7f793          	andi	a5,a5,-3
    80007fd4:	10079073          	csrw	sstatus,a5
    80007fd8:	00813083          	ld	ra,8(sp)
    80007fdc:	00013403          	ld	s0,0(sp)
    80007fe0:	01010113          	addi	sp,sp,16
    80007fe4:	00008067          	ret
    80007fe8:	00001517          	auipc	a0,0x1
    80007fec:	53050513          	addi	a0,a0,1328 # 80009518 <digits+0x70>
    80007ff0:	fffff097          	auipc	ra,0xfffff
    80007ff4:	f2c080e7          	jalr	-212(ra) # 80006f1c <panic>
    80007ff8:	00001517          	auipc	a0,0x1
    80007ffc:	50050513          	addi	a0,a0,1280 # 800094f8 <digits+0x50>
    80008000:	fffff097          	auipc	ra,0xfffff
    80008004:	f1c080e7          	jalr	-228(ra) # 80006f1c <panic>

0000000080008008 <__memset>:
    80008008:	ff010113          	addi	sp,sp,-16
    8000800c:	00813423          	sd	s0,8(sp)
    80008010:	01010413          	addi	s0,sp,16
    80008014:	1a060e63          	beqz	a2,800081d0 <__memset+0x1c8>
    80008018:	40a007b3          	neg	a5,a0
    8000801c:	0077f793          	andi	a5,a5,7
    80008020:	00778693          	addi	a3,a5,7
    80008024:	00b00813          	li	a6,11
    80008028:	0ff5f593          	andi	a1,a1,255
    8000802c:	fff6071b          	addiw	a4,a2,-1
    80008030:	1b06e663          	bltu	a3,a6,800081dc <__memset+0x1d4>
    80008034:	1cd76463          	bltu	a4,a3,800081fc <__memset+0x1f4>
    80008038:	1a078e63          	beqz	a5,800081f4 <__memset+0x1ec>
    8000803c:	00b50023          	sb	a1,0(a0)
    80008040:	00100713          	li	a4,1
    80008044:	1ae78463          	beq	a5,a4,800081ec <__memset+0x1e4>
    80008048:	00b500a3          	sb	a1,1(a0)
    8000804c:	00200713          	li	a4,2
    80008050:	1ae78a63          	beq	a5,a4,80008204 <__memset+0x1fc>
    80008054:	00b50123          	sb	a1,2(a0)
    80008058:	00300713          	li	a4,3
    8000805c:	18e78463          	beq	a5,a4,800081e4 <__memset+0x1dc>
    80008060:	00b501a3          	sb	a1,3(a0)
    80008064:	00400713          	li	a4,4
    80008068:	1ae78263          	beq	a5,a4,8000820c <__memset+0x204>
    8000806c:	00b50223          	sb	a1,4(a0)
    80008070:	00500713          	li	a4,5
    80008074:	1ae78063          	beq	a5,a4,80008214 <__memset+0x20c>
    80008078:	00b502a3          	sb	a1,5(a0)
    8000807c:	00700713          	li	a4,7
    80008080:	18e79e63          	bne	a5,a4,8000821c <__memset+0x214>
    80008084:	00b50323          	sb	a1,6(a0)
    80008088:	00700e93          	li	t4,7
    8000808c:	00859713          	slli	a4,a1,0x8
    80008090:	00e5e733          	or	a4,a1,a4
    80008094:	01059e13          	slli	t3,a1,0x10
    80008098:	01c76e33          	or	t3,a4,t3
    8000809c:	01859313          	slli	t1,a1,0x18
    800080a0:	006e6333          	or	t1,t3,t1
    800080a4:	02059893          	slli	a7,a1,0x20
    800080a8:	40f60e3b          	subw	t3,a2,a5
    800080ac:	011368b3          	or	a7,t1,a7
    800080b0:	02859813          	slli	a6,a1,0x28
    800080b4:	0108e833          	or	a6,a7,a6
    800080b8:	03059693          	slli	a3,a1,0x30
    800080bc:	003e589b          	srliw	a7,t3,0x3
    800080c0:	00d866b3          	or	a3,a6,a3
    800080c4:	03859713          	slli	a4,a1,0x38
    800080c8:	00389813          	slli	a6,a7,0x3
    800080cc:	00f507b3          	add	a5,a0,a5
    800080d0:	00e6e733          	or	a4,a3,a4
    800080d4:	000e089b          	sext.w	a7,t3
    800080d8:	00f806b3          	add	a3,a6,a5
    800080dc:	00e7b023          	sd	a4,0(a5)
    800080e0:	00878793          	addi	a5,a5,8
    800080e4:	fed79ce3          	bne	a5,a3,800080dc <__memset+0xd4>
    800080e8:	ff8e7793          	andi	a5,t3,-8
    800080ec:	0007871b          	sext.w	a4,a5
    800080f0:	01d787bb          	addw	a5,a5,t4
    800080f4:	0ce88e63          	beq	a7,a4,800081d0 <__memset+0x1c8>
    800080f8:	00f50733          	add	a4,a0,a5
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0017871b          	addiw	a4,a5,1
    80008104:	0cc77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0027871b          	addiw	a4,a5,2
    80008114:	0ac77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0037871b          	addiw	a4,a5,3
    80008124:	0ac77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0047871b          	addiw	a4,a5,4
    80008134:	08c77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	0057871b          	addiw	a4,a5,5
    80008144:	08c77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	0067871b          	addiw	a4,a5,6
    80008154:	06c77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	0077871b          	addiw	a4,a5,7
    80008164:	06c77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	0087871b          	addiw	a4,a5,8
    80008174:	04c77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008178:	00e50733          	add	a4,a0,a4
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	0097871b          	addiw	a4,a5,9
    80008184:	04c77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	00a7871b          	addiw	a4,a5,10
    80008194:	02c77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	00b7871b          	addiw	a4,a5,11
    800081a4:	02c77663          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00b70023          	sb	a1,0(a4)
    800081b0:	00c7871b          	addiw	a4,a5,12
    800081b4:	00c77e63          	bgeu	a4,a2,800081d0 <__memset+0x1c8>
    800081b8:	00e50733          	add	a4,a0,a4
    800081bc:	00b70023          	sb	a1,0(a4)
    800081c0:	00d7879b          	addiw	a5,a5,13
    800081c4:	00c7f663          	bgeu	a5,a2,800081d0 <__memset+0x1c8>
    800081c8:	00f507b3          	add	a5,a0,a5
    800081cc:	00b78023          	sb	a1,0(a5)
    800081d0:	00813403          	ld	s0,8(sp)
    800081d4:	01010113          	addi	sp,sp,16
    800081d8:	00008067          	ret
    800081dc:	00b00693          	li	a3,11
    800081e0:	e55ff06f          	j	80008034 <__memset+0x2c>
    800081e4:	00300e93          	li	t4,3
    800081e8:	ea5ff06f          	j	8000808c <__memset+0x84>
    800081ec:	00100e93          	li	t4,1
    800081f0:	e9dff06f          	j	8000808c <__memset+0x84>
    800081f4:	00000e93          	li	t4,0
    800081f8:	e95ff06f          	j	8000808c <__memset+0x84>
    800081fc:	00000793          	li	a5,0
    80008200:	ef9ff06f          	j	800080f8 <__memset+0xf0>
    80008204:	00200e93          	li	t4,2
    80008208:	e85ff06f          	j	8000808c <__memset+0x84>
    8000820c:	00400e93          	li	t4,4
    80008210:	e7dff06f          	j	8000808c <__memset+0x84>
    80008214:	00500e93          	li	t4,5
    80008218:	e75ff06f          	j	8000808c <__memset+0x84>
    8000821c:	00600e93          	li	t4,6
    80008220:	e6dff06f          	j	8000808c <__memset+0x84>

0000000080008224 <__memmove>:
    80008224:	ff010113          	addi	sp,sp,-16
    80008228:	00813423          	sd	s0,8(sp)
    8000822c:	01010413          	addi	s0,sp,16
    80008230:	0e060863          	beqz	a2,80008320 <__memmove+0xfc>
    80008234:	fff6069b          	addiw	a3,a2,-1
    80008238:	0006881b          	sext.w	a6,a3
    8000823c:	0ea5e863          	bltu	a1,a0,8000832c <__memmove+0x108>
    80008240:	00758713          	addi	a4,a1,7
    80008244:	00a5e7b3          	or	a5,a1,a0
    80008248:	40a70733          	sub	a4,a4,a0
    8000824c:	0077f793          	andi	a5,a5,7
    80008250:	00f73713          	sltiu	a4,a4,15
    80008254:	00174713          	xori	a4,a4,1
    80008258:	0017b793          	seqz	a5,a5
    8000825c:	00e7f7b3          	and	a5,a5,a4
    80008260:	10078863          	beqz	a5,80008370 <__memmove+0x14c>
    80008264:	00900793          	li	a5,9
    80008268:	1107f463          	bgeu	a5,a6,80008370 <__memmove+0x14c>
    8000826c:	0036581b          	srliw	a6,a2,0x3
    80008270:	fff8081b          	addiw	a6,a6,-1
    80008274:	02081813          	slli	a6,a6,0x20
    80008278:	01d85893          	srli	a7,a6,0x1d
    8000827c:	00858813          	addi	a6,a1,8
    80008280:	00058793          	mv	a5,a1
    80008284:	00050713          	mv	a4,a0
    80008288:	01088833          	add	a6,a7,a6
    8000828c:	0007b883          	ld	a7,0(a5)
    80008290:	00878793          	addi	a5,a5,8
    80008294:	00870713          	addi	a4,a4,8
    80008298:	ff173c23          	sd	a7,-8(a4)
    8000829c:	ff0798e3          	bne	a5,a6,8000828c <__memmove+0x68>
    800082a0:	ff867713          	andi	a4,a2,-8
    800082a4:	02071793          	slli	a5,a4,0x20
    800082a8:	0207d793          	srli	a5,a5,0x20
    800082ac:	00f585b3          	add	a1,a1,a5
    800082b0:	40e686bb          	subw	a3,a3,a4
    800082b4:	00f507b3          	add	a5,a0,a5
    800082b8:	06e60463          	beq	a2,a4,80008320 <__memmove+0xfc>
    800082bc:	0005c703          	lbu	a4,0(a1)
    800082c0:	00e78023          	sb	a4,0(a5)
    800082c4:	04068e63          	beqz	a3,80008320 <__memmove+0xfc>
    800082c8:	0015c603          	lbu	a2,1(a1)
    800082cc:	00100713          	li	a4,1
    800082d0:	00c780a3          	sb	a2,1(a5)
    800082d4:	04e68663          	beq	a3,a4,80008320 <__memmove+0xfc>
    800082d8:	0025c603          	lbu	a2,2(a1)
    800082dc:	00200713          	li	a4,2
    800082e0:	00c78123          	sb	a2,2(a5)
    800082e4:	02e68e63          	beq	a3,a4,80008320 <__memmove+0xfc>
    800082e8:	0035c603          	lbu	a2,3(a1)
    800082ec:	00300713          	li	a4,3
    800082f0:	00c781a3          	sb	a2,3(a5)
    800082f4:	02e68663          	beq	a3,a4,80008320 <__memmove+0xfc>
    800082f8:	0045c603          	lbu	a2,4(a1)
    800082fc:	00400713          	li	a4,4
    80008300:	00c78223          	sb	a2,4(a5)
    80008304:	00e68e63          	beq	a3,a4,80008320 <__memmove+0xfc>
    80008308:	0055c603          	lbu	a2,5(a1)
    8000830c:	00500713          	li	a4,5
    80008310:	00c782a3          	sb	a2,5(a5)
    80008314:	00e68663          	beq	a3,a4,80008320 <__memmove+0xfc>
    80008318:	0065c703          	lbu	a4,6(a1)
    8000831c:	00e78323          	sb	a4,6(a5)
    80008320:	00813403          	ld	s0,8(sp)
    80008324:	01010113          	addi	sp,sp,16
    80008328:	00008067          	ret
    8000832c:	02061713          	slli	a4,a2,0x20
    80008330:	02075713          	srli	a4,a4,0x20
    80008334:	00e587b3          	add	a5,a1,a4
    80008338:	f0f574e3          	bgeu	a0,a5,80008240 <__memmove+0x1c>
    8000833c:	02069613          	slli	a2,a3,0x20
    80008340:	02065613          	srli	a2,a2,0x20
    80008344:	fff64613          	not	a2,a2
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00c78633          	add	a2,a5,a2
    80008350:	fff7c683          	lbu	a3,-1(a5)
    80008354:	fff78793          	addi	a5,a5,-1
    80008358:	fff70713          	addi	a4,a4,-1
    8000835c:	00d70023          	sb	a3,0(a4)
    80008360:	fec798e3          	bne	a5,a2,80008350 <__memmove+0x12c>
    80008364:	00813403          	ld	s0,8(sp)
    80008368:	01010113          	addi	sp,sp,16
    8000836c:	00008067          	ret
    80008370:	02069713          	slli	a4,a3,0x20
    80008374:	02075713          	srli	a4,a4,0x20
    80008378:	00170713          	addi	a4,a4,1
    8000837c:	00e50733          	add	a4,a0,a4
    80008380:	00050793          	mv	a5,a0
    80008384:	0005c683          	lbu	a3,0(a1)
    80008388:	00178793          	addi	a5,a5,1
    8000838c:	00158593          	addi	a1,a1,1
    80008390:	fed78fa3          	sb	a3,-1(a5)
    80008394:	fee798e3          	bne	a5,a4,80008384 <__memmove+0x160>
    80008398:	f89ff06f          	j	80008320 <__memmove+0xfc>

000000008000839c <__putc>:
    8000839c:	fe010113          	addi	sp,sp,-32
    800083a0:	00813823          	sd	s0,16(sp)
    800083a4:	00113c23          	sd	ra,24(sp)
    800083a8:	02010413          	addi	s0,sp,32
    800083ac:	00050793          	mv	a5,a0
    800083b0:	fef40593          	addi	a1,s0,-17
    800083b4:	00100613          	li	a2,1
    800083b8:	00000513          	li	a0,0
    800083bc:	fef407a3          	sb	a5,-17(s0)
    800083c0:	fffff097          	auipc	ra,0xfffff
    800083c4:	b3c080e7          	jalr	-1220(ra) # 80006efc <console_write>
    800083c8:	01813083          	ld	ra,24(sp)
    800083cc:	01013403          	ld	s0,16(sp)
    800083d0:	02010113          	addi	sp,sp,32
    800083d4:	00008067          	ret

00000000800083d8 <__getc>:
    800083d8:	fe010113          	addi	sp,sp,-32
    800083dc:	00813823          	sd	s0,16(sp)
    800083e0:	00113c23          	sd	ra,24(sp)
    800083e4:	02010413          	addi	s0,sp,32
    800083e8:	fe840593          	addi	a1,s0,-24
    800083ec:	00100613          	li	a2,1
    800083f0:	00000513          	li	a0,0
    800083f4:	fffff097          	auipc	ra,0xfffff
    800083f8:	ae8080e7          	jalr	-1304(ra) # 80006edc <console_read>
    800083fc:	fe844503          	lbu	a0,-24(s0)
    80008400:	01813083          	ld	ra,24(sp)
    80008404:	01013403          	ld	s0,16(sp)
    80008408:	02010113          	addi	sp,sp,32
    8000840c:	00008067          	ret

0000000080008410 <console_handler>:
    80008410:	fe010113          	addi	sp,sp,-32
    80008414:	00813823          	sd	s0,16(sp)
    80008418:	00113c23          	sd	ra,24(sp)
    8000841c:	00913423          	sd	s1,8(sp)
    80008420:	02010413          	addi	s0,sp,32
    80008424:	14202773          	csrr	a4,scause
    80008428:	100027f3          	csrr	a5,sstatus
    8000842c:	0027f793          	andi	a5,a5,2
    80008430:	06079e63          	bnez	a5,800084ac <console_handler+0x9c>
    80008434:	00074c63          	bltz	a4,8000844c <console_handler+0x3c>
    80008438:	01813083          	ld	ra,24(sp)
    8000843c:	01013403          	ld	s0,16(sp)
    80008440:	00813483          	ld	s1,8(sp)
    80008444:	02010113          	addi	sp,sp,32
    80008448:	00008067          	ret
    8000844c:	0ff77713          	andi	a4,a4,255
    80008450:	00900793          	li	a5,9
    80008454:	fef712e3          	bne	a4,a5,80008438 <console_handler+0x28>
    80008458:	ffffe097          	auipc	ra,0xffffe
    8000845c:	6dc080e7          	jalr	1756(ra) # 80006b34 <plic_claim>
    80008460:	00a00793          	li	a5,10
    80008464:	00050493          	mv	s1,a0
    80008468:	02f50c63          	beq	a0,a5,800084a0 <console_handler+0x90>
    8000846c:	fc0506e3          	beqz	a0,80008438 <console_handler+0x28>
    80008470:	00050593          	mv	a1,a0
    80008474:	00001517          	auipc	a0,0x1
    80008478:	fac50513          	addi	a0,a0,-84 # 80009420 <CONSOLE_STATUS+0x410>
    8000847c:	fffff097          	auipc	ra,0xfffff
    80008480:	afc080e7          	jalr	-1284(ra) # 80006f78 <__printf>
    80008484:	01013403          	ld	s0,16(sp)
    80008488:	01813083          	ld	ra,24(sp)
    8000848c:	00048513          	mv	a0,s1
    80008490:	00813483          	ld	s1,8(sp)
    80008494:	02010113          	addi	sp,sp,32
    80008498:	ffffe317          	auipc	t1,0xffffe
    8000849c:	6d430067          	jr	1748(t1) # 80006b6c <plic_complete>
    800084a0:	fffff097          	auipc	ra,0xfffff
    800084a4:	3e0080e7          	jalr	992(ra) # 80007880 <uartintr>
    800084a8:	fddff06f          	j	80008484 <console_handler+0x74>
    800084ac:	00001517          	auipc	a0,0x1
    800084b0:	07450513          	addi	a0,a0,116 # 80009520 <digits+0x78>
    800084b4:	fffff097          	auipc	ra,0xfffff
    800084b8:	a68080e7          	jalr	-1432(ra) # 80006f1c <panic>
	...
