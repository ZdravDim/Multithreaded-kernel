
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
    8000001c:	250060ef          	jal	ra,8000626c <start>

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
    80001088:	0cd010ef          	jal	ra,80002954 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001174:	540080e7          	jalr	1344(ra) # 800026b0 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    8000146c:	11878793          	addi	a5,a5,280 # 8000b580 <_ZTV3Sem+0x10>
    80001470:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    80001474:	00850513          	addi	a0,a0,8
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	75c080e7          	jalr	1884(ra) # 80002bd4 <_ZN10ThreadList4freeEv>
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
    800014b8:	9f0080e7          	jalr	-1552(ra) # 80001ea4 <_ZdlPv>
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
    800014ec:	2f093903          	ld	s2,752(s2) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014f0:	00093483          	ld	s1,0(s2)
    blocked_threads.push_back(old);
    800014f4:	00048593          	mv	a1,s1
    800014f8:	00850513          	addi	a0,a0,8
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	598080e7          	jalr	1432(ra) # 80002a94 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001504:	00001097          	auipc	ra,0x1
    80001508:	22c080e7          	jalr	556(ra) # 80002730 <_ZN9Scheduler3getEv>
    8000150c:	00050593          	mv	a1,a0
    80001510:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    80001514:	00048513          	mv	a0,s1
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	53c080e7          	jalr	1340(ra) # 80001a54 <_ZN3TCB5yieldEPS_S0_>
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
    800015c4:	480080e7          	jalr	1152(ra) # 80002a40 <_ZN10ThreadList9get_firstEv>
    Scheduler::put(thread);
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	108080e7          	jalr	264(ra) # 800026d0 <_ZN9Scheduler3putEP3TCB>
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
    80001698:	c98080e7          	jalr	-872(ra) # 8000832c <__putc>
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
    800016dc:	c54080e7          	jalr	-940(ra) # 8000832c <__putc>
    __putc('N');
    800016e0:	04e00513          	li	a0,78
    800016e4:	00007097          	auipc	ra,0x7
    800016e8:	c48080e7          	jalr	-952(ra) # 8000832c <__putc>
    __putc(':');
    800016ec:	03a00513          	li	a0,58
    800016f0:	00007097          	auipc	ra,0x7
    800016f4:	c3c080e7          	jalr	-964(ra) # 8000832c <__putc>
    __putc(' ');
    800016f8:	02000513          	li	a0,32
    800016fc:	00007097          	auipc	ra,0x7
    80001700:	c30080e7          	jalr	-976(ra) # 8000832c <__putc>
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
    80001738:	bf8080e7          	jalr	-1032(ra) # 8000832c <__putc>
    8000173c:	fcdff06f          	j	80001708 <printNumber+0x50>
    while (num2) {
    80001740:	02048063          	beqz	s1,80001760 <printNumber+0xa8>
        __putc(num2 % 10 + '0');
    80001744:	00a00913          	li	s2,10
    80001748:	0324f533          	remu	a0,s1,s2
    8000174c:	03050513          	addi	a0,a0,48
    80001750:	00007097          	auipc	ra,0x7
    80001754:	bdc080e7          	jalr	-1060(ra) # 8000832c <__putc>
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
    80001794:	e7c080e7          	jalr	-388(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    void *address = MemoryAllocator::mem_alloc(1);
    80001798:	00100513          	li	a0,1
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	b18080e7          	jalr	-1256(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
    800017a4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	e64080e7          	jalr	-412(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(address);
    800017b0:	00048513          	mv	a0,s1
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	cec080e7          	jalr	-788(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
    800017bc:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	e4c080e7          	jalr	-436(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    int s2 = MemoryAllocator::mem_free(address);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	cd4080e7          	jalr	-812(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
    800017d4:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	e34080e7          	jalr	-460(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    __putc('\n');
    800017e0:	00a00513          	li	a0,10
    800017e4:	00007097          	auipc	ra,0x7
    800017e8:	b48080e7          	jalr	-1208(ra) # 8000832c <__putc>
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
    80001818:	b18080e7          	jalr	-1256(ra) # 8000832c <__putc>
    8000181c:	fd5ff06f          	j	800017f0 <_Z19testMemoryAllocatorv+0x78>
    if (s2 == -3) __putc('G'); /// same
    80001820:	04700513          	li	a0,71
    80001824:	00007097          	auipc	ra,0x7
    80001828:	b08080e7          	jalr	-1272(ra) # 8000832c <__putc>
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
    80001848:	dc8080e7          	jalr	-568(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    void* address = mem_alloc(50);
    8000184c:	03200513          	li	a0,50
    80001850:	00000097          	auipc	ra,0x0
    80001854:	90c080e7          	jalr	-1780(ra) # 8000115c <_Z9mem_allocm>
    80001858:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	db0080e7          	jalr	-592(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
    mem_free(address);
    80001864:	00048513          	mv	a0,s1
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	948080e7          	jalr	-1720(ra) # 800011b0 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001870:	00001097          	auipc	ra,0x1
    80001874:	d9c080e7          	jalr	-612(ra) # 8000260c <_ZN15MemoryAllocator5printEv>
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
    800018b4:	a7c080e7          	jalr	-1412(ra) # 8000832c <__putc>
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
    800018f4:	58c080e7          	jalr	1420(ra) # 80001e7c <_Znwm>
    800018f8:	00050493          	mv	s1,a0
    800018fc:	00000613          	li	a2,0
    80001900:	00000597          	auipc	a1,0x0
    80001904:	d7058593          	addi	a1,a1,-656 # 80001670 <_Z7workerAPv>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	644080e7          	jalr	1604(ra) # 80001f4c <_ZN6ThreadC1EPFvPvES0_>
    t1 -> start();
    80001910:	00048513          	mv	a0,s1
    80001914:	00000097          	auipc	ra,0x0
    80001918:	674080e7          	jalr	1652(ra) # 80001f88 <_ZN6Thread5startEv>

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
    80001958:	550080e7          	jalr	1360(ra) # 80001ea4 <_ZdlPv>
    8000195c:	00090513          	mv	a0,s2
    80001960:	0000b097          	auipc	ra,0xb
    80001964:	038080e7          	jalr	56(ra) # 8000c998 <_Unwind_Resume>

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
    8000197c:	e507b783          	ld	a5,-432(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    800019a4:	a30080e7          	jalr	-1488(ra) # 800023d0 <_ZN15MemoryAllocator10initializeEv>
    /// Test Memory Allocation
    testMemoryAllocator();
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	dd0080e7          	jalr	-560(ra) # 80001778 <_Z19testMemoryAllocatorv>
    testMemory();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	e80080e7          	jalr	-384(ra) # 80001830 <_Z10testMemoryv>
    /// Test Threads
    testThreads();
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	f1c080e7          	jalr	-228(ra) # 800018d4 <_Z11testThreadsv>
    /// Test Everything
//    userMain();
    __putc('\n');
    800019c0:	00a00513          	li	a0,10
    800019c4:	00007097          	auipc	ra,0x7
    800019c8:	968080e7          	jalr	-1688(ra) # 8000832c <__putc>
    return 0;
    800019cc:	00000513          	li	a0,0
    800019d0:	01813083          	ld	ra,24(sp)
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret

00000000800019e0 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    };
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return 0;
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    800019e0:	00e53423          	sd	a4,8(a0)
    800019e4:	00f53823          	sd	a5,16(a0)
    id = cnt++;
    800019e8:	0000a717          	auipc	a4,0xa
    800019ec:	e4870713          	addi	a4,a4,-440 # 8000b830 <_ZN3TCB3cntE>
    800019f0:	00072783          	lw	a5,0(a4)
    800019f4:	0017881b          	addiw	a6,a5,1
    800019f8:	01072023          	sw	a6,0(a4)
    800019fc:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    80001a00:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80001a04:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001a08:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001a0c:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001a10:	00200793          	li	a5,2
    80001a14:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001a18:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001a1c:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001a20:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001a24:	02058663          	beqz	a1,80001a50 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) : context(context) {
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	c98080e7          	jalr	-872(ra) # 800026d0 <_ZN9Scheduler3putEP3TCB>
}
    80001a40:	01813083          	ld	ra,24(sp)
    80001a44:	01013403          	ld	s0,16(sp)
    80001a48:	02010113          	addi	sp,sp,32
    80001a4c:	00008067          	ret
    80001a50:	00008067          	ret

0000000080001a54 <_ZN3TCB5yieldEPS_S0_>:
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
//    RiscV::push_registers();
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001a54:	02b50a63          	beq	a0,a1,80001a88 <_ZN3TCB5yieldEPS_S0_+0x34>
void TCB::yield(TCB *old_running, TCB *new_running) {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80001a68:	00858593          	addi	a1,a1,8
    80001a6c:	00850513          	addi	a0,a0,8
    80001a70:	fffff097          	auipc	ra,0xfffff
    80001a74:	69c080e7          	jalr	1692(ra) # 8000110c <_ZN3TCB14context_switchEPNS_7ContextES1_>
//    RiscV::pop_registers();
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret
    80001a88:	00008067          	ret

0000000080001a8c <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	00913423          	sd	s1,8(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001aa0:	0000a497          	auipc	s1,0xa
    80001aa4:	d984b483          	ld	s1,-616(s1) # 8000b838 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001aa8:	0184a783          	lw	a5,24(s1)
    80001aac:	00400713          	li	a4,4
    80001ab0:	00e78663          	beq	a5,a4,80001abc <_ZN3TCB8dispatchEv+0x30>
    80001ab4:	00200713          	li	a4,2
    80001ab8:	02e79e63          	bne	a5,a4,80001af4 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	c74080e7          	jalr	-908(ra) # 80002730 <_ZN9Scheduler3getEv>
    80001ac4:	0000a797          	auipc	a5,0xa
    80001ac8:	d6a7ba23          	sd	a0,-652(a5) # 8000b838 <_ZN3TCB7runningE>
    if (old != running) context_switch(&old -> context, &running -> context);
    80001acc:	00a48a63          	beq	s1,a0,80001ae0 <_ZN3TCB8dispatchEv+0x54>
    80001ad0:	00850593          	addi	a1,a0,8
    80001ad4:	00848513          	addi	a0,s1,8
    80001ad8:	fffff097          	auipc	ra,0xfffff
    80001adc:	634080e7          	jalr	1588(ra) # 8000110c <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001af4:	00048513          	mv	a0,s1
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	bd8080e7          	jalr	-1064(ra) # 800026d0 <_ZN9Scheduler3putEP3TCB>
    80001b00:	fbdff06f          	j	80001abc <_ZN3TCB8dispatchEv+0x30>

0000000080001b04 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00813423          	sd	s0,8(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001b10:	04053503          	ld	a0,64(a0)
    80001b14:	00813403          	ld	s0,8(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00813423          	sd	s0,8(sp)
    80001b28:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001b2c:	04b53023          	sd	a1,64(a0)
}
    80001b30:	00813403          	ld	s0,8(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00813423          	sd	s0,8(sp)
    80001b44:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001b48:	04b53823          	sd	a1,80(a0)
}
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00813423          	sd	s0,8(sp)
    80001b60:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80001b64:	05053503          	ld	a0,80(a0)
    80001b68:	00813403          	ld	s0,8(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80001b80:	04b53423          	sd	a1,72(a0)
}
    80001b84:	00813403          	ld	s0,8(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00813423          	sd	s0,8(sp)
    80001b98:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80001b9c:	04853503          	ld	a0,72(a0)
    80001ba0:	00813403          	ld	s0,8(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813423          	sd	s0,8(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    this -> status = status;
    80001bb8:	00b52c23          	sw	a1,24(a0)
}
    80001bbc:	00813403          	ld	s0,8(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001bd8:	00400593          	li	a1,4
    80001bdc:	0000a517          	auipc	a0,0xa
    80001be0:	c5c53503          	ld	a0,-932(a0) # 8000b838 <_ZN3TCB7runningE>
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	fc8080e7          	jalr	-56(ra) # 80001bac <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	ea0080e7          	jalr	-352(ra) # 80001a8c <_ZN3TCB8dispatchEv>
}
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	d20080e7          	jalr	-736(ra) # 80002934 <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001c1c:	0000a797          	auipc	a5,0xa
    80001c20:	c1c7b783          	ld	a5,-996(a5) # 8000b838 <_ZN3TCB7runningE>
    80001c24:	0207b703          	ld	a4,32(a5)
    80001c28:	0287b503          	ld	a0,40(a5)
    80001c2c:	000700e7          	jalr	a4
    thread_exit();
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	f98080e7          	jalr	-104(ra) # 80001bc8 <_ZN3TCB11thread_exitEv>
}
    80001c38:	00813083          	ld	ra,8(sp)
    80001c3c:	00013403          	ld	s0,0(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret

0000000080001c48 <_ZN3TCB5startEv>:

void TCB::start() {
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	02010413          	addi	s0,sp,32
    80001c5c:	00050493          	mv	s1,a0
    Scheduler::put(this);
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	a70080e7          	jalr	-1424(ra) # 800026d0 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    80001c68:	0000a797          	auipc	a5,0xa
    80001c6c:	bd07b783          	ld	a5,-1072(a5) # 8000b838 <_ZN3TCB7runningE>
    80001c70:	00078c63          	beqz	a5,80001c88 <_ZN3TCB5startEv+0x40>
}
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
    if (!running) running = this;
    80001c88:	0000a797          	auipc	a5,0xa
    80001c8c:	ba97b823          	sd	s1,-1104(a5) # 8000b838 <_ZN3TCB7runningE>
}
    80001c90:	fe5ff06f          	j	80001c74 <_ZN3TCB5startEv+0x2c>

0000000080001c94 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	a0c080e7          	jalr	-1524(ra) # 800026b0 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	608080e7          	jalr	1544(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	7cc080e7          	jalr	1996(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001cec:	fa010113          	addi	sp,sp,-96
    80001cf0:	04113c23          	sd	ra,88(sp)
    80001cf4:	04813823          	sd	s0,80(sp)
    80001cf8:	04913423          	sd	s1,72(sp)
    80001cfc:	05213023          	sd	s2,64(sp)
    80001d00:	03313c23          	sd	s3,56(sp)
    80001d04:	03413823          	sd	s4,48(sp)
    80001d08:	03513423          	sd	s5,40(sp)
    80001d0c:	06010413          	addi	s0,sp,96
    80001d10:	00050993          	mv	s3,a0
    80001d14:	00058a13          	mv	s4,a1
    80001d18:	00060a93          	mv	s5,a2
    80001d1c:	00068493          	mv	s1,a3
    Context context = {
    80001d20:	00000797          	auipc	a5,0x0
    80001d24:	ee478793          	addi	a5,a5,-284 # 80001c04 <_ZN3TCB16wrapper_functionEv>
    80001d28:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001d2c:	04068663          	beqz	a3,80001d78 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x8c>
    80001d30:	000017b7          	lui	a5,0x1
    80001d34:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80001d38:	00f687b3          	add	a5,a3,a5
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001d3c:	fa043703          	ld	a4,-96(s0)
    80001d40:	fae43823          	sd	a4,-80(s0)
    80001d44:	faf43c23          	sd	a5,-72(s0)
    80001d48:	05800513          	li	a0,88
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	f48080e7          	jalr	-184(ra) # 80001c94 <_ZN3TCBnwEm>
    80001d54:	00050913          	mv	s2,a0
    80001d58:	fb043703          	ld	a4,-80(s0)
    80001d5c:	fb843783          	ld	a5,-72(s0)
    80001d60:	00048693          	mv	a3,s1
    80001d64:	000a8613          	mv	a2,s5
    80001d68:	000a0593          	mv	a1,s4
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	c74080e7          	jalr	-908(ra) # 800019e0 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    80001d74:	0280006f          	j	80001d9c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0xb0>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001d78:	00000793          	li	a5,0
    80001d7c:	fc1ff06f          	j	80001d3c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    80001d80:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001d84:	00090513          	mv	a0,s2
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	f3c080e7          	jalr	-196(ra) # 80001cc4 <_ZN3TCBdlEPv>
    80001d90:	00048513          	mv	a0,s1
    80001d94:	0000b097          	auipc	ra,0xb
    80001d98:	c04080e7          	jalr	-1020(ra) # 8000c998 <_Unwind_Resume>
    80001d9c:	0129b023          	sd	s2,0(s3)
}
    80001da0:	00000513          	li	a0,0
    80001da4:	05813083          	ld	ra,88(sp)
    80001da8:	05013403          	ld	s0,80(sp)
    80001dac:	04813483          	ld	s1,72(sp)
    80001db0:	04013903          	ld	s2,64(sp)
    80001db4:	03813983          	ld	s3,56(sp)
    80001db8:	03013a03          	ld	s4,48(sp)
    80001dbc:	02813a83          	ld	s5,40(sp)
    80001dc0:	06010113          	addi	sp,sp,96
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00813423          	sd	s0,8(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    return time_slice;
}
    80001dd4:	03853503          	ld	a0,56(a0)
    80001dd8:	00813403          	ld	s0,8(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001de4:	fe010113          	addi	sp,sp,-32
    80001de8:	00113c23          	sd	ra,24(sp)
    80001dec:	00813823          	sd	s0,16(sp)
    80001df0:	00913423          	sd	s1,8(sp)
    80001df4:	02010413          	addi	s0,sp,32
    80001df8:	00050493          	mv	s1,a0
    80001dfc:	00009797          	auipc	a5,0x9
    80001e00:	7dc78793          	addi	a5,a5,2012 # 8000b5d8 <_ZTV6Thread+0x10>
    80001e04:	00f53023          	sd	a5,0(a0)
    myHandle -> set_status(TCB::FINISHED);
    80001e08:	00400593          	li	a1,4
    80001e0c:	00853503          	ld	a0,8(a0)
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	d9c080e7          	jalr	-612(ra) # 80001bac <_ZN3TCB10set_statusENS_6StatusE>
    delete myHandle;
    80001e18:	0084b503          	ld	a0,8(s1)
    80001e1c:	00050663          	beqz	a0,80001e28 <_ZN6ThreadD1Ev+0x44>
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	ea4080e7          	jalr	-348(ra) # 80001cc4 <_ZN3TCBdlEPv>
}
    80001e28:	01813083          	ld	ra,24(sp)
    80001e2c:	01013403          	ld	s0,16(sp)
    80001e30:	00813483          	ld	s1,8(sp)
    80001e34:	02010113          	addi	sp,sp,32
    80001e38:	00008067          	ret

0000000080001e3c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001e3c:	00009797          	auipc	a5,0x9
    80001e40:	7c478793          	addi	a5,a5,1988 # 8000b600 <_ZTV9Semaphore+0x10>
    80001e44:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001e48:	00853503          	ld	a0,8(a0)
    80001e4c:	02050663          	beqz	a0,80001e78 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	4c8080e7          	jalr	1224(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret
    80001e78:	00008067          	ret

0000000080001e7c <_Znwm>:
void* operator new(size_t size){
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	2d0080e7          	jalr	720(ra) # 8000115c <_Z9mem_allocm>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	2fc080e7          	jalr	764(ra) # 800011b0 <_Z8mem_freePv>
}
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ecc:	fe010113          	addi	sp,sp,-32
    80001ed0:	00113c23          	sd	ra,24(sp)
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	02010413          	addi	s0,sp,32
    80001ee0:	00050493          	mv	s1,a0
}
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	f00080e7          	jalr	-256(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	fb4080e7          	jalr	-76(ra) # 80001ea4 <_ZdlPv>
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret

0000000080001f0c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f0c:	fe010113          	addi	sp,sp,-32
    80001f10:	00113c23          	sd	ra,24(sp)
    80001f14:	00813823          	sd	s0,16(sp)
    80001f18:	00913423          	sd	s1,8(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    80001f20:	00050493          	mv	s1,a0
}
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	f18080e7          	jalr	-232(ra) # 80001e3c <_ZN9SemaphoreD1Ev>
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	f74080e7          	jalr	-140(ra) # 80001ea4 <_ZdlPv>
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret

0000000080001f4c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    80001f5c:	00009797          	auipc	a5,0x9
    80001f60:	67c78793          	addi	a5,a5,1660 # 8000b5d8 <_ZTV6Thread+0x10>
    80001f64:	00f53023          	sd	a5,0(a0)
    80001f68:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80001f6c:	00850513          	addi	a0,a0,8
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	28c080e7          	jalr	652(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f78:	00813083          	ld	ra,8(sp)
    80001f7c:	00013403          	ld	s0,0(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <_ZN6Thread5startEv>:
int Thread::start() {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	00813023          	sd	s0,0(sp)
    80001f94:	01010413          	addi	s0,sp,16
    myHandle -> start();
    80001f98:	00853503          	ld	a0,8(a0)
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	cac080e7          	jalr	-852(ra) # 80001c48 <_ZN3TCB5startEv>
}
    80001fa4:	00000513          	li	a0,0
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	00813023          	sd	s0,0(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	308080e7          	jalr	776(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80001fd0:	00813083          	ld	ra,8(sp)
    80001fd4:	00013403          	ld	s0,0(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	3c4080e7          	jalr	964(ra) # 800013b4 <_Z10time_sleepm>
}
    80001ff8:	00000513          	li	a0,0
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr) {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    80002018:	00009797          	auipc	a5,0x9
    8000201c:	5c078793          	addi	a5,a5,1472 # 8000b5d8 <_ZTV6Thread+0x10>
    80002020:	00f53023          	sd	a5,0(a0)
    80002024:	00053423          	sd	zero,8(a0)
}
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
    80002044:	00009797          	auipc	a5,0x9
    80002048:	5bc78793          	addi	a5,a5,1468 # 8000b600 <_ZTV9Semaphore+0x10>
    8000204c:	00f53023          	sd	a5,0(a0)
    80002050:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002054:	00850513          	addi	a0,a0,8
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	2b4080e7          	jalr	692(ra) # 8000130c <_Z8sem_openPP3Semj>
}
    80002060:	00813083          	ld	ra,8(sp)
    80002064:	00013403          	ld	s0,0(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002070:	00853503          	ld	a0,8(a0)
    80002074:	02050663          	beqz	a0,800020a0 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	2bc080e7          	jalr	700(ra) # 80001344 <_Z8sem_waitP3Sem>
    return -1;
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret
    return -1;
    800020a0:	fff00513          	li	a0,-1
}
    800020a4:	00008067          	ret

00000000800020a8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    800020a8:	00853503          	ld	a0,8(a0)
    800020ac:	02050663          	beqz	a0,800020d8 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	2a0080e7          	jalr	672(ra) # 80001360 <_Z10sem_signalP3Sem>
    return -1;
}
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret
    return -1;
    800020d8:	fff00513          	li	a0,-1
}
    800020dc:	00008067          	ret

00000000800020e0 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    return 0;
}
    800020ec:	00000513          	li	a0,0
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
    return 0;
}
    80002108:	00000513          	li	a0,0
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16

}
    80002124:	00813403          	ld	s0,8(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002130:	fe010113          	addi	sp,sp,-32
    80002134:	00113c23          	sd	ra,24(sp)
    80002138:	00813823          	sd	s0,16(sp)
    8000213c:	00913423          	sd	s1,8(sp)
    80002140:	02010413          	addi	s0,sp,32
    80002144:	00050493          	mv	s1,a0
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	ec4080e7          	jalr	-316(ra) # 8000200c <_ZN6ThreadC1Ev>
    80002150:	00009797          	auipc	a5,0x9
    80002154:	45878793          	addi	a5,a5,1112 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002158:	00f4b023          	sd	a5,0(s1)

}
    8000215c:	01813083          	ld	ra,24(sp)
    80002160:	01013403          	ld	s0,16(sp)
    80002164:	00813483          	ld	s1,8(sp)
    80002168:	02010113          	addi	sp,sp,32
    8000216c:	00008067          	ret

0000000080002170 <_ZN7Console4getcEv>:

char Console::getc() {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	250080e7          	jalr	592(ra) # 800013d0 <_Z4getcv>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	274080e7          	jalr	628(ra) # 8000141c <_Z4putcc>
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    800021cc:	00813403          	ld	s0,8(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00813423          	sd	s0,8(sp)
    800021e0:	01010413          	addi	s0,sp,16
    800021e4:	00813403          	ld	s0,8(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00113423          	sd	ra,8(sp)
    800021f8:	00813023          	sd	s0,0(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00009797          	auipc	a5,0x9
    80002204:	3a878793          	addi	a5,a5,936 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002208:	00f53023          	sd	a5,0(a0)
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	bd8080e7          	jalr	-1064(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN14PeriodicThreadD0Ev>:
    80002224:	fe010113          	addi	sp,sp,-32
    80002228:	00113c23          	sd	ra,24(sp)
    8000222c:	00813823          	sd	s0,16(sp)
    80002230:	00913423          	sd	s1,8(sp)
    80002234:	02010413          	addi	s0,sp,32
    80002238:	00050493          	mv	s1,a0
    8000223c:	00009797          	auipc	a5,0x9
    80002240:	36c78793          	addi	a5,a5,876 # 8000b5a8 <_ZTV14PeriodicThread+0x10>
    80002244:	00f53023          	sd	a5,0(a0)
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	b9c080e7          	jalr	-1124(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80002250:	00048513          	mv	a0,s1
    80002254:	00000097          	auipc	ra,0x0
    80002258:	c50080e7          	jalr	-944(ra) # 80001ea4 <_ZdlPv>
    8000225c:	01813083          	ld	ra,24(sp)
    80002260:	01013403          	ld	s0,16(sp)
    80002264:	00813483          	ld	s1,8(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret

0000000080002270 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000227c:	00853783          	ld	a5,8(a0)
    80002280:	02078463          	beqz	a5,800022a8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80002284:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80002288:	01053783          	ld	a5,16(a0)
    8000228c:	00078863          	beqz	a5,8000229c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002290:	00060463          	beqz	a2,80002298 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80002294:	00853583          	ld	a1,8(a0)
    80002298:	00b7b423          	sd	a1,8(a5)
}
    8000229c:	00813403          	ld	s0,8(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret
    else freeSegHead = nextSeg;
    800022a8:	00009797          	auipc	a5,0x9
    800022ac:	5ab7b023          	sd	a1,1440(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    800022b0:	fd9ff06f          	j	80002288 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800022b4 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    800022b4:	fe010113          	addi	sp,sp,-32
    800022b8:	00113c23          	sd	ra,24(sp)
    800022bc:	00813823          	sd	s0,16(sp)
    800022c0:	00913423          	sd	s1,8(sp)
    800022c4:	01213023          	sd	s2,0(sp)
    800022c8:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800022cc:	0e050e63          	beqz	a0,800023c8 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800022d0:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800022d4:	00009497          	auipc	s1,0x9
    800022d8:	5744b483          	ld	s1,1396(s1) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800022dc:	0a048e63          	beqz	s1,80002398 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800022e0:	0004b783          	ld	a5,0(s1)
    800022e4:	0527e463          	bltu	a5,s2,8000232c <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800022e8:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800022ec:	01700713          	li	a4,23
    800022f0:	04f76263          	bltu	a4,a5,80002334 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800022f4:	00000613          	li	a2,0
    800022f8:	0104b583          	ld	a1,16(s1)
    800022fc:	00048513          	mv	a0,s1
    80002300:	00000097          	auipc	ra,0x0
    80002304:	f70080e7          	jalr	-144(ra) # 80002270 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80002308:	00009797          	auipc	a5,0x9
    8000230c:	5487b783          	ld	a5,1352(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    80002310:	04078863          	beqz	a5,80002360 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80002314:	0497fa63          	bgeu	a5,s1,80002368 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002318:	00078713          	mv	a4,a5
    8000231c:	0107b783          	ld	a5,16(a5)
    80002320:	04078663          	beqz	a5,8000236c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002324:	fe97eae3          	bltu	a5,s1,80002318 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002328:	0440006f          	j	8000236c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    8000232c:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002330:	fadff06f          	j	800022dc <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002334:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002338:	0084b703          	ld	a4,8(s1)
    8000233c:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002340:	0104b703          	ld	a4,16(s1)
    80002344:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002348:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    8000234c:	00100613          	li	a2,1
    80002350:	00048513          	mv	a0,s1
    80002354:	00000097          	auipc	ra,0x0
    80002358:	f1c080e7          	jalr	-228(ra) # 80002270 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    8000235c:	fadff06f          	j	80002308 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80002360:	00078713          	mv	a4,a5
    80002364:	0080006f          	j	8000236c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002368:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    8000236c:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002370:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002374:	04070063          	beqz	a4,800023b4 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002378:	01073783          	ld	a5,16(a4)
    8000237c:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002380:	02070e63          	beqz	a4,800023bc <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002384:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002388:	0104b783          	ld	a5,16(s1)
    8000238c:	00078463          	beqz	a5,80002394 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002390:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002394:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002398:	00048513          	mv	a0,s1
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	00813483          	ld	s1,8(sp)
    800023a8:	00013903          	ld	s2,0(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800023b4:	00070793          	mv	a5,a4
    800023b8:	fc5ff06f          	j	8000237c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800023bc:	00009797          	auipc	a5,0x9
    800023c0:	4897ba23          	sd	s1,1172(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    800023c4:	fc5ff06f          	j	80002388 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800023c8:	00000493          	li	s1,0
    800023cc:	fcdff06f          	j	80002398 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800023d0 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800023d0:	00009797          	auipc	a5,0x9
    800023d4:	4887b783          	ld	a5,1160(a5) # 8000b858 <_ZN15MemoryAllocator8instanceE>
    800023d8:	00078463          	beqz	a5,800023e0 <_ZN15MemoryAllocator10initializeEv+0x10>
    800023dc:	00008067          	ret
void MemoryAllocator::initialize() {
    800023e0:	fe010113          	addi	sp,sp,-32
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800023f4:	00009797          	auipc	a5,0x9
    800023f8:	3cc7b783          	ld	a5,972(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023fc:	0007b783          	ld	a5,0(a5)
    80002400:	00009497          	auipc	s1,0x9
    80002404:	44848493          	addi	s1,s1,1096 # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002408:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    8000240c:	00009717          	auipc	a4,0x9
    80002410:	3d473703          	ld	a4,980(a4) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002414:	00073703          	ld	a4,0(a4)
    80002418:	40f70733          	sub	a4,a4,a5
    8000241c:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002420:	0004b783          	ld	a5,0(s1)
    80002424:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002428:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    8000242c:	00100513          	li	a0,1
    80002430:	00000097          	auipc	ra,0x0
    80002434:	e84080e7          	jalr	-380(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
    80002438:	00a4b823          	sd	a0,16(s1)
}
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00813483          	ld	s1,8(sp)
    80002448:	02010113          	addi	sp,sp,32
    8000244c:	00008067          	ret

0000000080002450 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    8000245c:	01053783          	ld	a5,16(a0)
    80002460:	00078863          	beqz	a5,80002470 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002464:	00053703          	ld	a4,0(a0)
    80002468:	00e506b3          	add	a3,a0,a4
    8000246c:	00d78863          	beq	a5,a3,8000247c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002470:	00813403          	ld	s0,8(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    8000247c:	0007b683          	ld	a3,0(a5)
    80002480:	00d70733          	add	a4,a4,a3
    80002484:	01870713          	addi	a4,a4,24
    80002488:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    8000248c:	0107b783          	ld	a5,16(a5)
    80002490:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002494:	fc078ee3          	beqz	a5,80002470 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002498:	00a7b423          	sd	a0,8(a5)
}
    8000249c:	fd5ff06f          	j	80002470 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800024a0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800024a0:	14050263          	beqz	a0,800025e4 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    800024a4:	fd010113          	addi	sp,sp,-48
    800024a8:	02113423          	sd	ra,40(sp)
    800024ac:	02813023          	sd	s0,32(sp)
    800024b0:	00913c23          	sd	s1,24(sp)
    800024b4:	01213823          	sd	s2,16(sp)
    800024b8:	01313423          	sd	s3,8(sp)
    800024bc:	03010413          	addi	s0,sp,48
    800024c0:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800024c4:	00009797          	auipc	a5,0x9
    800024c8:	2fc7b783          	ld	a5,764(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024cc:	0007b783          	ld	a5,0(a5)
    800024d0:	10f56e63          	bltu	a0,a5,800025ec <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	30c7b783          	ld	a5,780(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024dc:	0007b783          	ld	a5,0(a5)
    800024e0:	10a7ea63          	bltu	a5,a0,800025f4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	36c7b783          	ld	a5,876(a5) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    800024ec:	10078863          	beqz	a5,800025fc <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800024f0:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024f4:	00078863          	beqz	a5,80002504 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800024f8:	08978e63          	beq	a5,s1,80002594 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800024fc:	0107b783          	ld	a5,16(a5)
    80002500:	ff5ff06f          	j	800024f4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002504:	00000793          	li	a5,0
    if (!found) return -3;
    80002508:	0e078e63          	beqz	a5,80002604 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    8000250c:	00000613          	li	a2,0
    80002510:	ff893583          	ld	a1,-8(s2)
    80002514:	00048513          	mv	a0,s1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	d58080e7          	jalr	-680(ra) # 80002270 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002520:	00009797          	auipc	a5,0x9
    80002524:	3287b783          	ld	a5,808(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002528:	06078a63          	beqz	a5,8000259c <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    8000252c:	08f4e463          	bltu	s1,a5,800025b4 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002530:	00078993          	mv	s3,a5
    80002534:	0107b783          	ld	a5,16(a5)
    80002538:	00078463          	beqz	a5,80002540 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    8000253c:	fe97eae3          	bltu	a5,s1,80002530 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80002540:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002544:	0109b783          	ld	a5,16(s3)
    80002548:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    8000254c:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002550:	ff893783          	ld	a5,-8(s2)
    80002554:	00078463          	beqz	a5,8000255c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80002558:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    8000255c:	00048513          	mv	a0,s1
    80002560:	00000097          	auipc	ra,0x0
    80002564:	ef0080e7          	jalr	-272(ra) # 80002450 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002568:	00098513          	mv	a0,s3
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	ee4080e7          	jalr	-284(ra) # 80002450 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002574:	00000513          	li	a0,0
}
    80002578:	02813083          	ld	ra,40(sp)
    8000257c:	02013403          	ld	s0,32(sp)
    80002580:	01813483          	ld	s1,24(sp)
    80002584:	01013903          	ld	s2,16(sp)
    80002588:	00813983          	ld	s3,8(sp)
    8000258c:	03010113          	addi	sp,sp,48
    80002590:	00008067          	ret
            found = true;
    80002594:	00100793          	li	a5,1
    80002598:	f71ff06f          	j	80002508 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    8000259c:	00009797          	auipc	a5,0x9
    800025a0:	2a97b623          	sd	s1,684(a5) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800025a4:	fe093c23          	sd	zero,-8(s2)
    800025a8:	fe093823          	sd	zero,-16(s2)
    return 0;
    800025ac:	00000513          	li	a0,0
    800025b0:	fc9ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    800025b4:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	29078793          	addi	a5,a5,656 # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    800025c0:	0007b703          	ld	a4,0(a5)
    800025c4:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800025c8:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800025cc:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800025d0:	00048513          	mv	a0,s1
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	e7c080e7          	jalr	-388(ra) # 80002450 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025dc:	00000513          	li	a0,0
    800025e0:	f99ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025e4:	fff00513          	li	a0,-1
}
    800025e8:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025ec:	fff00513          	li	a0,-1
    800025f0:	f89ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    800025f4:	fff00513          	li	a0,-1
    800025f8:	f81ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    800025fc:	ffe00513          	li	a0,-2
    80002600:	f79ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80002604:	ffd00513          	li	a0,-3
    80002608:	f71ff06f          	j	80002578 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

000000008000260c <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002620:	00a00513          	li	a0,10
    80002624:	00006097          	auipc	ra,0x6
    80002628:	d08080e7          	jalr	-760(ra) # 8000832c <__putc>
    __putc('M');
    8000262c:	04d00513          	li	a0,77
    80002630:	00006097          	auipc	ra,0x6
    80002634:	cfc080e7          	jalr	-772(ra) # 8000832c <__putc>
    __putc(':');
    80002638:	03a00513          	li	a0,58
    8000263c:	00006097          	auipc	ra,0x6
    80002640:	cf0080e7          	jalr	-784(ra) # 8000832c <__putc>
    __putc(' ');
    80002644:	02000513          	li	a0,32
    80002648:	00006097          	auipc	ra,0x6
    8000264c:	ce4080e7          	jalr	-796(ra) # 8000832c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80002650:	00009497          	auipc	s1,0x9
    80002654:	1f84b483          	ld	s1,504(s1) # 8000b848 <_ZN15MemoryAllocator11freeSegHeadE>
    80002658:	00048c63          	beqz	s1,80002670 <_ZN15MemoryAllocator5printEv+0x64>
    8000265c:	06600513          	li	a0,102
    80002660:	00006097          	auipc	ra,0x6
    80002664:	ccc080e7          	jalr	-820(ra) # 8000832c <__putc>
    80002668:	0104b483          	ld	s1,16(s1)
    8000266c:	fedff06f          	j	80002658 <_ZN15MemoryAllocator5printEv+0x4c>
    __putc('\t');
    80002670:	00900513          	li	a0,9
    80002674:	00006097          	auipc	ra,0x6
    80002678:	cb8080e7          	jalr	-840(ra) # 8000832c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    8000267c:	00009497          	auipc	s1,0x9
    80002680:	1d44b483          	ld	s1,468(s1) # 8000b850 <_ZN15MemoryAllocator11usedSegHeadE>
    80002684:	00048c63          	beqz	s1,8000269c <_ZN15MemoryAllocator5printEv+0x90>
    80002688:	07500513          	li	a0,117
    8000268c:	00006097          	auipc	ra,0x6
    80002690:	ca0080e7          	jalr	-864(ra) # 8000832c <__putc>
    80002694:	0104b483          	ld	s1,16(s1)
    80002698:	fedff06f          	j	80002684 <_ZN15MemoryAllocator5printEv+0x78>
}
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

uint64 MemoryAllocator::get_number_of_blocks(size_t size) {
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00813423          	sd	s0,8(sp)
    800026b8:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800026bc:	05750513          	addi	a0,a0,87
}
    800026c0:	00655513          	srli	a0,a0,0x6
    800026c4:	00813403          	ld	s0,8(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800026d0:	fe010113          	addi	sp,sp,-32
    800026d4:	00113c23          	sd	ra,24(sp)
    800026d8:	00813823          	sd	s0,16(sp)
    800026dc:	00913423          	sd	s1,8(sp)
    800026e0:	02010413          	addi	s0,sp,32
    800026e4:	00050493          	mv	s1,a0
    if (tail_ready) {
    800026e8:	00009517          	auipc	a0,0x9
    800026ec:	17853503          	ld	a0,376(a0) # 8000b860 <_ZN9Scheduler10tail_readyE>
    800026f0:	02051463          	bnez	a0,80002718 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800026f4:	00009797          	auipc	a5,0x9
    800026f8:	16c78793          	addi	a5,a5,364 # 8000b860 <_ZN9Scheduler10tail_readyE>
    800026fc:	0097b023          	sd	s1,0(a5)
    80002700:	0097b423          	sd	s1,8(a5)
}
    80002704:	01813083          	ld	ra,24(sp)
    80002708:	01013403          	ld	s0,16(sp)
    8000270c:	00813483          	ld	s1,8(sp)
    80002710:	02010113          	addi	sp,sp,32
    80002714:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    80002718:	00048593          	mv	a1,s1
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	404080e7          	jalr	1028(ra) # 80001b20 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002724:	00009797          	auipc	a5,0x9
    80002728:	1297be23          	sd	s1,316(a5) # 8000b860 <_ZN9Scheduler10tail_readyE>
        return;
    8000272c:	fd9ff06f          	j	80002704 <_ZN9Scheduler3putEP3TCB+0x34>

0000000080002730 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002730:	fe010113          	addi	sp,sp,-32
    80002734:	00113c23          	sd	ra,24(sp)
    80002738:	00813823          	sd	s0,16(sp)
    8000273c:	00913423          	sd	s1,8(sp)
    80002740:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002744:	00009497          	auipc	s1,0x9
    80002748:	1244b483          	ld	s1,292(s1) # 8000b868 <_ZN9Scheduler10head_readyE>
    8000274c:	00048c63          	beqz	s1,80002764 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002750:	00048513          	mv	a0,s1
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	3b0080e7          	jalr	944(ra) # 80001b04 <_ZNK3TCB14get_next_readyEv>
    8000275c:	00009797          	auipc	a5,0x9
    80002760:	10a7b623          	sd	a0,268(a5) # 8000b868 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002764:	00048513          	mv	a0,s1
    80002768:	01813083          	ld	ra,24(sp)
    8000276c:	01013403          	ld	s0,16(sp)
    80002770:	00813483          	ld	s1,8(sp)
    80002774:	02010113          	addi	sp,sp,32
    80002778:	00008067          	ret

000000008000277c <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00113423          	sd	ra,8(sp)
    80002784:	00813023          	sd	s0,0(sp)
    80002788:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	f24080e7          	jalr	-220(ra) # 800026b0 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002794:	00000097          	auipc	ra,0x0
    80002798:	b20080e7          	jalr	-1248(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	ce4080e7          	jalr	-796(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800027c4:	00813083          	ld	ra,8(sp)
    800027c8:	00013403          	ld	s0,0(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret

00000000800027d4 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    800027d4:	fc010113          	addi	sp,sp,-64
    800027d8:	02113c23          	sd	ra,56(sp)
    800027dc:	02813823          	sd	s0,48(sp)
    800027e0:	02913423          	sd	s1,40(sp)
    800027e4:	03213023          	sd	s2,32(sp)
    800027e8:	01313c23          	sd	s3,24(sp)
    800027ec:	01413823          	sd	s4,16(sp)
    800027f0:	01513423          	sd	s5,8(sp)
    800027f4:	04010413          	addi	s0,sp,64
    800027f8:	00050a93          	mv	s5,a0
    800027fc:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    80002800:	00100593          	li	a1,1
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	3a8080e7          	jalr	936(ra) # 80001bac <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    8000280c:	00009497          	auipc	s1,0x9
    80002810:	0644b483          	ld	s1,100(s1) # 8000b870 <_ZN9Scheduler13head_sleepingE>
    80002814:	02048e63          	beqz	s1,80002850 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    80002818:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    8000281c:	00000a13          	li	s4,0
    while (tmp) {
    80002820:	04048c63          	beqz	s1,80002878 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    80002824:	00048513          	mv	a0,s1
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	368080e7          	jalr	872(ra) # 80001b90 <_ZNK3TCB17get_time_to_sleepEv>
    80002830:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002834:	0729e463          	bltu	s3,s2,8000289c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80002838:	00048513          	mv	a0,s1
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	31c080e7          	jalr	796(ra) # 80001b58 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002844:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002848:	00050493          	mv	s1,a0
    while (tmp) {
    8000284c:	fd5ff06f          	j	80002820 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    80002850:	00009797          	auipc	a5,0x9
    80002854:	0357b023          	sd	s5,32(a5) # 8000b870 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002858:	00000593          	li	a1,0
    8000285c:	000a8513          	mv	a0,s5
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	2dc080e7          	jalr	732(ra) # 80001b3c <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002868:	00098593          	mv	a1,s3
    8000286c:	000a8513          	mv	a0,s5
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	304080e7          	jalr	772(ra) # 80001b74 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002878:	03813083          	ld	ra,56(sp)
    8000287c:	03013403          	ld	s0,48(sp)
    80002880:	02813483          	ld	s1,40(sp)
    80002884:	02013903          	ld	s2,32(sp)
    80002888:	01813983          	ld	s3,24(sp)
    8000288c:	01013a03          	ld	s4,16(sp)
    80002890:	00813a83          	ld	s5,8(sp)
    80002894:	04010113          	addi	sp,sp,64
    80002898:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    8000289c:	000a0a63          	beqz	s4,800028b0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    800028a0:	000a0513          	mv	a0,s4
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	2ec080e7          	jalr	748(ra) # 80001b90 <_ZNK3TCB17get_time_to_sleepEv>
    800028ac:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    800028b0:	00098593          	mv	a1,s3
    800028b4:	000a8513          	mv	a0,s5
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	2bc080e7          	jalr	700(ra) # 80001b74 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    800028c0:	00048593          	mv	a1,s1
    800028c4:	000a8513          	mv	a0,s5
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	274080e7          	jalr	628(ra) # 80001b3c <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    800028d0:	040a0c63          	beqz	s4,80002928 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    800028d4:	000a8593          	mv	a1,s5
    800028d8:	000a0513          	mv	a0,s4
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	260080e7          	jalr	608(ra) # 80001b3c <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    800028e4:	00048513          	mv	a0,s1
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	270080e7          	jalr	624(ra) # 80001b58 <_ZNK3TCB17get_next_sleepingEv>
    800028f0:	00050493          	mv	s1,a0
    800028f4:	f80482e3          	beqz	s1,80002878 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    800028f8:	00048513          	mv	a0,s1
    800028fc:	fffff097          	auipc	ra,0xfffff
    80002900:	294080e7          	jalr	660(ra) # 80001b90 <_ZNK3TCB17get_time_to_sleepEv>
    80002904:	413505b3          	sub	a1,a0,s3
    80002908:	00048513          	mv	a0,s1
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	268080e7          	jalr	616(ra) # 80001b74 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002914:	00048513          	mv	a0,s1
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	240080e7          	jalr	576(ra) # 80001b58 <_ZNK3TCB17get_next_sleepingEv>
    80002920:	00050493          	mv	s1,a0
    80002924:	fd1ff06f          	j	800028f4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    80002928:	00009797          	auipc	a5,0x9
    8000292c:	f557b423          	sd	s5,-184(a5) # 8000b870 <_ZN9Scheduler13head_sleepingE>
    80002930:	fb5ff06f          	j	800028e4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

0000000080002934 <_ZN5RiscV10popSppSpieEv>:
    USER_INTERRUPT       = 0x0000000000000008UL,
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// returns to user mode from supervisor mode
void RiscV::popSppSpie() {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00813423          	sd	s0,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002940:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002944:	10200073          	sret
}
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <_ZN5RiscV22handle_supervisor_trapEv>:

void RiscV::handle_supervisor_trap() {
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002964:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002968:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    8000296c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002970:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002974:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002978:	14202773          	csrr	a4,scause
    8000297c:	fee43423          	sd	a4,-24(s0)
    return scause;
    80002980:	fe843803          	ld	a6,-24(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002984:	fff00713          	li	a4,-1
    80002988:	03f71713          	slli	a4,a4,0x3f
    8000298c:	00170713          	addi	a4,a4,1
    80002990:	02e80463          	beq	a6,a4,800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
//        }
//        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002994:	fff00713          	li	a4,-1
    80002998:	03f71713          	slli	a4,a4,0x3f
    8000299c:	00970713          	addi	a4,a4,9
    800029a0:	02e80463          	beq	a6,a4,800029c8 <_ZN5RiscV22handle_supervisor_trapEv+0x74>
        console_handler();
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    800029a4:	00200713          	li	a4,2
    800029a8:	02e80663          	beq	a6,a4,800029d4 <_ZN5RiscV22handle_supervisor_trapEv+0x80>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    800029ac:	ff880813          	addi	a6,a6,-8
    800029b0:	00100713          	li	a4,1
    800029b4:	03077663          	bgeu	a4,a6,800029e0 <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
                break;
            default:
                break;
        }
    }
    800029b8:	01813083          	ld	ra,24(sp)
    800029bc:	01013403          	ld	s0,16(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret
        console_handler();
    800029c8:	00006097          	auipc	ra,0x6
    800029cc:	9d8080e7          	jalr	-1576(ra) # 800083a0 <console_handler>
    800029d0:	fe9ff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    800029d4:	00100793          	li	a5,1
    800029d8:	00078513          	mv	a0,a5
        return;
    800029dc:	fddff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
        switch(syscall_code) {
    800029e0:	01300713          	li	a4,19
    800029e4:	fcf76ae3          	bltu	a4,a5,800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
    800029e8:	00279793          	slli	a5,a5,0x2
    800029ec:	00006717          	auipc	a4,0x6
    800029f0:	63470713          	addi	a4,a4,1588 # 80009020 <CONSOLE_STATUS+0x10>
    800029f4:	00e787b3          	add	a5,a5,a4
    800029f8:	0007a783          	lw	a5,0(a5)
    800029fc:	00e787b3          	add	a5,a5,a4
    80002a00:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	8b0080e7          	jalr	-1872(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
                break;
    80002a0c:	fadff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                MemoryAllocator::mem_free((void *) a1);
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	a90080e7          	jalr	-1392(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002a18:	fa1ff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	2d0080e7          	jalr	720(ra) # 80001cec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002a24:	f95ff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::thread_exit();
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	1a0080e7          	jalr	416(ra) # 80001bc8 <_ZN3TCB11thread_exitEv>
                break;
    80002a30:	f89ff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>
                TCB::dispatch();
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	058080e7          	jalr	88(ra) # 80001a8c <_ZN3TCB8dispatchEv>
                break;
    80002a3c:	f7dff06f          	j	800029b8 <_ZN5RiscV22handle_supervisor_trapEv+0x64>

0000000080002a40 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00813423          	sd	s0,8(sp)
    80002a48:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002a4c:	00053503          	ld	a0,0(a0)
    80002a50:	00050463          	beqz	a0,80002a58 <_ZN10ThreadList9get_firstEv+0x18>
    80002a54:	00053503          	ld	a0,0(a0)
}
    80002a58:	00813403          	ld	s0,8(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	c3c080e7          	jalr	-964(ra) # 800026b0 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	838080e7          	jalr	-1992(ra) # 800022b4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	01213023          	sd	s2,0(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002ab4:	01000513          	li	a0,16
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	fac080e7          	jalr	-84(ra) # 80002a64 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80002ac0:	01253023          	sd	s2,0(a0)
    80002ac4:	00053423          	sd	zero,8(a0)
    80002ac8:	0004b783          	ld	a5,0(s1)
    80002acc:	02078263          	beqz	a5,80002af0 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002ad0:	00a4b023          	sd	a0,0(s1)
    80002ad4:	00a4b423          	sd	a0,8(s1)
}
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002af0:	0084b783          	ld	a5,8(s1)
    80002af4:	00a7b423          	sd	a0,8(a5)
    80002af8:	fddff06f          	j	80002ad4 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002afc <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	01213023          	sd	s2,0(sp)
    80002b10:	02010413          	addi	s0,sp,32
    80002b14:	00050493          	mv	s1,a0
    80002b18:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002b1c:	01000513          	li	a0,16
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	f44080e7          	jalr	-188(ra) # 80002a64 <_ZN10ThreadList4NodenwEm>
    80002b28:	01253023          	sd	s2,0(a0)
    80002b2c:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002b30:	0004b783          	ld	a5,0(s1)
    80002b34:	00f53423          	sd	a5,8(a0)
    head = node;
    80002b38:	00a4b023          	sd	a0,0(s1)
}
    80002b3c:	01813083          	ld	ra,24(sp)
    80002b40:	01013403          	ld	s0,16(sp)
    80002b44:	00813483          	ld	s1,8(sp)
    80002b48:	00013903          	ld	s2,0(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret

0000000080002b54 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	93c080e7          	jalr	-1732(ra) # 800024a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002b6c:	00813083          	ld	ra,8(sp)
    80002b70:	00013403          	ld	s0,0(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret

0000000080002b7c <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002b7c:	fe010113          	addi	sp,sp,-32
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00813823          	sd	s0,16(sp)
    80002b88:	00913423          	sd	s1,8(sp)
    80002b8c:	02010413          	addi	s0,sp,32
    80002b90:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002b94:	00053503          	ld	a0,0(a0)
    80002b98:	02050a63          	beqz	a0,80002bcc <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002b9c:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002ba0:	00853703          	ld	a4,8(a0)
    80002ba4:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    80002ba8:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	fa8080e7          	jalr	-88(ra) # 80002b54 <_ZN10ThreadList4NodedlEPv>
}
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	01813083          	ld	ra,24(sp)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	00813483          	ld	s1,8(sp)
    80002bc4:	02010113          	addi	sp,sp,32
    80002bc8:	00008067          	ret
    if (!head) return nullptr;
    80002bcc:	00050493          	mv	s1,a0
    80002bd0:	fe5ff06f          	j	80002bb4 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002bd4 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80002bd4:	fe010113          	addi	sp,sp,-32
    80002bd8:	00113c23          	sd	ra,24(sp)
    80002bdc:	00813823          	sd	s0,16(sp)
    80002be0:	00913423          	sd	s1,8(sp)
    80002be4:	02010413          	addi	s0,sp,32
    80002be8:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	e50080e7          	jalr	-432(ra) # 80002a40 <_ZN10ThreadList9get_firstEv>
    80002bf8:	00050a63          	beqz	a0,80002c0c <_ZN10ThreadList4freeEv+0x38>
    80002bfc:	00048513          	mv	a0,s1
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	f7c080e7          	jalr	-132(ra) # 80002b7c <_ZN10ThreadList12remove_firstEv>
    80002c08:	fe5ff06f          	j	80002bec <_ZN10ThreadList4freeEv+0x18>
}
    80002c0c:	01813083          	ld	ra,24(sp)
    80002c10:	01013403          	ld	s0,16(sp)
    80002c14:	00813483          	ld	s1,8(sp)
    80002c18:	02010113          	addi	sp,sp,32
    80002c1c:	00008067          	ret

0000000080002c20 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002c20:	fe010113          	addi	sp,sp,-32
    80002c24:	00113c23          	sd	ra,24(sp)
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00913423          	sd	s1,8(sp)
    80002c30:	01213023          	sd	s2,0(sp)
    80002c34:	02010413          	addi	s0,sp,32
    80002c38:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002c3c:	00000913          	li	s2,0
    80002c40:	00c0006f          	j	80002c4c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	68c080e7          	jalr	1676(ra) # 800012d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002c4c:	ffffe097          	auipc	ra,0xffffe
    80002c50:	784080e7          	jalr	1924(ra) # 800013d0 <_Z4getcv>
    80002c54:	0005059b          	sext.w	a1,a0
    80002c58:	01b00793          	li	a5,27
    80002c5c:	02f58a63          	beq	a1,a5,80002c90 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002c60:	0084b503          	ld	a0,8(s1)
    80002c64:	00003097          	auipc	ra,0x3
    80002c68:	384080e7          	jalr	900(ra) # 80005fe8 <_ZN6Buffer3putEi>
        i++;
    80002c6c:	0019071b          	addiw	a4,s2,1
    80002c70:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c74:	0004a683          	lw	a3,0(s1)
    80002c78:	0026979b          	slliw	a5,a3,0x2
    80002c7c:	00d787bb          	addw	a5,a5,a3
    80002c80:	0017979b          	slliw	a5,a5,0x1
    80002c84:	02f767bb          	remw	a5,a4,a5
    80002c88:	fc0792e3          	bnez	a5,80002c4c <_ZL16producerKeyboardPv+0x2c>
    80002c8c:	fb9ff06f          	j	80002c44 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002c90:	00100793          	li	a5,1
    80002c94:	00009717          	auipc	a4,0x9
    80002c98:	bef72223          	sw	a5,-1052(a4) # 8000b878 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c9c:	02100593          	li	a1,33
    80002ca0:	0084b503          	ld	a0,8(s1)
    80002ca4:	00003097          	auipc	ra,0x3
    80002ca8:	344080e7          	jalr	836(ra) # 80005fe8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002cac:	0104b503          	ld	a0,16(s1)
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	6b0080e7          	jalr	1712(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002cb8:	01813083          	ld	ra,24(sp)
    80002cbc:	01013403          	ld	s0,16(sp)
    80002cc0:	00813483          	ld	s1,8(sp)
    80002cc4:	00013903          	ld	s2,0(sp)
    80002cc8:	02010113          	addi	sp,sp,32
    80002ccc:	00008067          	ret

0000000080002cd0 <_ZL8producerPv>:

static void producer(void *arg) {
    80002cd0:	fe010113          	addi	sp,sp,-32
    80002cd4:	00113c23          	sd	ra,24(sp)
    80002cd8:	00813823          	sd	s0,16(sp)
    80002cdc:	00913423          	sd	s1,8(sp)
    80002ce0:	01213023          	sd	s2,0(sp)
    80002ce4:	02010413          	addi	s0,sp,32
    80002ce8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002cec:	00000913          	li	s2,0
    80002cf0:	00c0006f          	j	80002cfc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002cf4:	ffffe097          	auipc	ra,0xffffe
    80002cf8:	5dc080e7          	jalr	1500(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002cfc:	00009797          	auipc	a5,0x9
    80002d00:	b7c7a783          	lw	a5,-1156(a5) # 8000b878 <_ZL9threadEnd>
    80002d04:	02079e63          	bnez	a5,80002d40 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002d08:	0004a583          	lw	a1,0(s1)
    80002d0c:	0305859b          	addiw	a1,a1,48
    80002d10:	0084b503          	ld	a0,8(s1)
    80002d14:	00003097          	auipc	ra,0x3
    80002d18:	2d4080e7          	jalr	724(ra) # 80005fe8 <_ZN6Buffer3putEi>
        i++;
    80002d1c:	0019071b          	addiw	a4,s2,1
    80002d20:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d24:	0004a683          	lw	a3,0(s1)
    80002d28:	0026979b          	slliw	a5,a3,0x2
    80002d2c:	00d787bb          	addw	a5,a5,a3
    80002d30:	0017979b          	slliw	a5,a5,0x1
    80002d34:	02f767bb          	remw	a5,a4,a5
    80002d38:	fc0792e3          	bnez	a5,80002cfc <_ZL8producerPv+0x2c>
    80002d3c:	fb9ff06f          	j	80002cf4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002d40:	0104b503          	ld	a0,16(s1)
    80002d44:	ffffe097          	auipc	ra,0xffffe
    80002d48:	61c080e7          	jalr	1564(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002d4c:	01813083          	ld	ra,24(sp)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	00013903          	ld	s2,0(sp)
    80002d5c:	02010113          	addi	sp,sp,32
    80002d60:	00008067          	ret

0000000080002d64 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002d64:	fd010113          	addi	sp,sp,-48
    80002d68:	02113423          	sd	ra,40(sp)
    80002d6c:	02813023          	sd	s0,32(sp)
    80002d70:	00913c23          	sd	s1,24(sp)
    80002d74:	01213823          	sd	s2,16(sp)
    80002d78:	01313423          	sd	s3,8(sp)
    80002d7c:	03010413          	addi	s0,sp,48
    80002d80:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d84:	00000993          	li	s3,0
    80002d88:	01c0006f          	j	80002da4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002d8c:	ffffe097          	auipc	ra,0xffffe
    80002d90:	544080e7          	jalr	1348(ra) # 800012d0 <_Z15thread_dispatchv>
    80002d94:	0500006f          	j	80002de4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002d98:	00a00513          	li	a0,10
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	680080e7          	jalr	1664(ra) # 8000141c <_Z4putcc>
    while (!threadEnd) {
    80002da4:	00009797          	auipc	a5,0x9
    80002da8:	ad47a783          	lw	a5,-1324(a5) # 8000b878 <_ZL9threadEnd>
    80002dac:	06079063          	bnez	a5,80002e0c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002db0:	00893503          	ld	a0,8(s2)
    80002db4:	00003097          	auipc	ra,0x3
    80002db8:	2c4080e7          	jalr	708(ra) # 80006078 <_ZN6Buffer3getEv>
        i++;
    80002dbc:	0019849b          	addiw	s1,s3,1
    80002dc0:	0004899b          	sext.w	s3,s1
        putc(key);
    80002dc4:	0ff57513          	andi	a0,a0,255
    80002dc8:	ffffe097          	auipc	ra,0xffffe
    80002dcc:	654080e7          	jalr	1620(ra) # 8000141c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002dd0:	00092703          	lw	a4,0(s2)
    80002dd4:	0027179b          	slliw	a5,a4,0x2
    80002dd8:	00e787bb          	addw	a5,a5,a4
    80002ddc:	02f4e7bb          	remw	a5,s1,a5
    80002de0:	fa0786e3          	beqz	a5,80002d8c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002de4:	05000793          	li	a5,80
    80002de8:	02f4e4bb          	remw	s1,s1,a5
    80002dec:	fa049ce3          	bnez	s1,80002da4 <_ZL8consumerPv+0x40>
    80002df0:	fa9ff06f          	j	80002d98 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002df4:	00893503          	ld	a0,8(s2)
    80002df8:	00003097          	auipc	ra,0x3
    80002dfc:	280080e7          	jalr	640(ra) # 80006078 <_ZN6Buffer3getEv>
        putc(key);
    80002e00:	0ff57513          	andi	a0,a0,255
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	618080e7          	jalr	1560(ra) # 8000141c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002e0c:	00893503          	ld	a0,8(s2)
    80002e10:	00003097          	auipc	ra,0x3
    80002e14:	2f4080e7          	jalr	756(ra) # 80006104 <_ZN6Buffer6getCntEv>
    80002e18:	fca04ee3          	bgtz	a0,80002df4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002e1c:	01093503          	ld	a0,16(s2)
    80002e20:	ffffe097          	auipc	ra,0xffffe
    80002e24:	540080e7          	jalr	1344(ra) # 80001360 <_Z10sem_signalP3Sem>
}
    80002e28:	02813083          	ld	ra,40(sp)
    80002e2c:	02013403          	ld	s0,32(sp)
    80002e30:	01813483          	ld	s1,24(sp)
    80002e34:	01013903          	ld	s2,16(sp)
    80002e38:	00813983          	ld	s3,8(sp)
    80002e3c:	03010113          	addi	sp,sp,48
    80002e40:	00008067          	ret

0000000080002e44 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002e44:	f9010113          	addi	sp,sp,-112
    80002e48:	06113423          	sd	ra,104(sp)
    80002e4c:	06813023          	sd	s0,96(sp)
    80002e50:	04913c23          	sd	s1,88(sp)
    80002e54:	05213823          	sd	s2,80(sp)
    80002e58:	05313423          	sd	s3,72(sp)
    80002e5c:	05413023          	sd	s4,64(sp)
    80002e60:	03513c23          	sd	s5,56(sp)
    80002e64:	03613823          	sd	s6,48(sp)
    80002e68:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002e6c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002e70:	00006517          	auipc	a0,0x6
    80002e74:	20050513          	addi	a0,a0,512 # 80009070 <CONSOLE_STATUS+0x60>
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	220080e7          	jalr	544(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80002e80:	01e00593          	li	a1,30
    80002e84:	fa040493          	addi	s1,s0,-96
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00002097          	auipc	ra,0x2
    80002e90:	294080e7          	jalr	660(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002e94:	00048513          	mv	a0,s1
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	360080e7          	jalr	864(ra) # 800051f8 <_Z11stringToIntPKc>
    80002ea0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002ea4:	00006517          	auipc	a0,0x6
    80002ea8:	1ec50513          	addi	a0,a0,492 # 80009090 <CONSOLE_STATUS+0x80>
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	1ec080e7          	jalr	492(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80002eb4:	01e00593          	li	a1,30
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00002097          	auipc	ra,0x2
    80002ec0:	264080e7          	jalr	612(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80002ec4:	00048513          	mv	a0,s1
    80002ec8:	00002097          	auipc	ra,0x2
    80002ecc:	330080e7          	jalr	816(ra) # 800051f8 <_Z11stringToIntPKc>
    80002ed0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002ed4:	00006517          	auipc	a0,0x6
    80002ed8:	1dc50513          	addi	a0,a0,476 # 800090b0 <CONSOLE_STATUS+0xa0>
    80002edc:	00002097          	auipc	ra,0x2
    80002ee0:	1bc080e7          	jalr	444(ra) # 80005098 <_Z11printStringPKc>
    80002ee4:	00000613          	li	a2,0
    80002ee8:	00a00593          	li	a1,10
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	00002097          	auipc	ra,0x2
    80002ef4:	358080e7          	jalr	856(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002ef8:	00006517          	auipc	a0,0x6
    80002efc:	1d050513          	addi	a0,a0,464 # 800090c8 <CONSOLE_STATUS+0xb8>
    80002f00:	00002097          	auipc	ra,0x2
    80002f04:	198080e7          	jalr	408(ra) # 80005098 <_Z11printStringPKc>
    80002f08:	00000613          	li	a2,0
    80002f0c:	00a00593          	li	a1,10
    80002f10:	00048513          	mv	a0,s1
    80002f14:	00002097          	auipc	ra,0x2
    80002f18:	334080e7          	jalr	820(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80002f1c:	00006517          	auipc	a0,0x6
    80002f20:	1c450513          	addi	a0,a0,452 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002f24:	00002097          	auipc	ra,0x2
    80002f28:	174080e7          	jalr	372(ra) # 80005098 <_Z11printStringPKc>
    if(threadNum > n) {
    80002f2c:	0324c463          	blt	s1,s2,80002f54 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002f30:	03205c63          	blez	s2,80002f68 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002f34:	03800513          	li	a0,56
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	f44080e7          	jalr	-188(ra) # 80001e7c <_Znwm>
    80002f40:	00050a13          	mv	s4,a0
    80002f44:	00048593          	mv	a1,s1
    80002f48:	00003097          	auipc	ra,0x3
    80002f4c:	004080e7          	jalr	4(ra) # 80005f4c <_ZN6BufferC1Ei>
    80002f50:	0300006f          	j	80002f80 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002f54:	00006517          	auipc	a0,0x6
    80002f58:	19450513          	addi	a0,a0,404 # 800090e8 <CONSOLE_STATUS+0xd8>
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	13c080e7          	jalr	316(ra) # 80005098 <_Z11printStringPKc>
        return;
    80002f64:	0140006f          	j	80002f78 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002f68:	00006517          	auipc	a0,0x6
    80002f6c:	1c050513          	addi	a0,a0,448 # 80009128 <CONSOLE_STATUS+0x118>
    80002f70:	00002097          	auipc	ra,0x2
    80002f74:	128080e7          	jalr	296(ra) # 80005098 <_Z11printStringPKc>
        return;
    80002f78:	000b0113          	mv	sp,s6
    80002f7c:	1500006f          	j	800030cc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002f80:	00000593          	li	a1,0
    80002f84:	00009517          	auipc	a0,0x9
    80002f88:	8fc50513          	addi	a0,a0,-1796 # 8000b880 <_ZL10waitForAll>
    80002f8c:	ffffe097          	auipc	ra,0xffffe
    80002f90:	380080e7          	jalr	896(ra) # 8000130c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002f94:	00391793          	slli	a5,s2,0x3
    80002f98:	00f78793          	addi	a5,a5,15
    80002f9c:	ff07f793          	andi	a5,a5,-16
    80002fa0:	40f10133          	sub	sp,sp,a5
    80002fa4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002fa8:	0019071b          	addiw	a4,s2,1
    80002fac:	00171793          	slli	a5,a4,0x1
    80002fb0:	00e787b3          	add	a5,a5,a4
    80002fb4:	00379793          	slli	a5,a5,0x3
    80002fb8:	00f78793          	addi	a5,a5,15
    80002fbc:	ff07f793          	andi	a5,a5,-16
    80002fc0:	40f10133          	sub	sp,sp,a5
    80002fc4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002fc8:	00191613          	slli	a2,s2,0x1
    80002fcc:	012607b3          	add	a5,a2,s2
    80002fd0:	00379793          	slli	a5,a5,0x3
    80002fd4:	00f987b3          	add	a5,s3,a5
    80002fd8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002fdc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002fe0:	00009717          	auipc	a4,0x9
    80002fe4:	8a073703          	ld	a4,-1888(a4) # 8000b880 <_ZL10waitForAll>
    80002fe8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002fec:	00078613          	mv	a2,a5
    80002ff0:	00000597          	auipc	a1,0x0
    80002ff4:	d7458593          	addi	a1,a1,-652 # 80002d64 <_ZL8consumerPv>
    80002ff8:	f9840513          	addi	a0,s0,-104
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	200080e7          	jalr	512(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003004:	00000493          	li	s1,0
    80003008:	0280006f          	j	80003030 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000300c:	00000597          	auipc	a1,0x0
    80003010:	c1458593          	addi	a1,a1,-1004 # 80002c20 <_ZL16producerKeyboardPv>
                      data + i);
    80003014:	00179613          	slli	a2,a5,0x1
    80003018:	00f60633          	add	a2,a2,a5
    8000301c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003020:	00c98633          	add	a2,s3,a2
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	1d8080e7          	jalr	472(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000302c:	0014849b          	addiw	s1,s1,1
    80003030:	0524d263          	bge	s1,s2,80003074 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003034:	00149793          	slli	a5,s1,0x1
    80003038:	009787b3          	add	a5,a5,s1
    8000303c:	00379793          	slli	a5,a5,0x3
    80003040:	00f987b3          	add	a5,s3,a5
    80003044:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003048:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000304c:	00009717          	auipc	a4,0x9
    80003050:	83473703          	ld	a4,-1996(a4) # 8000b880 <_ZL10waitForAll>
    80003054:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003058:	00048793          	mv	a5,s1
    8000305c:	00349513          	slli	a0,s1,0x3
    80003060:	00aa8533          	add	a0,s5,a0
    80003064:	fa9054e3          	blez	s1,8000300c <_Z22producerConsumer_C_APIv+0x1c8>
    80003068:	00000597          	auipc	a1,0x0
    8000306c:	c6858593          	addi	a1,a1,-920 # 80002cd0 <_ZL8producerPv>
    80003070:	fa5ff06f          	j	80003014 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003074:	ffffe097          	auipc	ra,0xffffe
    80003078:	25c080e7          	jalr	604(ra) # 800012d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000307c:	00000493          	li	s1,0
    80003080:	00994e63          	blt	s2,s1,8000309c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003084:	00008517          	auipc	a0,0x8
    80003088:	7fc53503          	ld	a0,2044(a0) # 8000b880 <_ZL10waitForAll>
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	2b8080e7          	jalr	696(ra) # 80001344 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003094:	0014849b          	addiw	s1,s1,1
    80003098:	fe9ff06f          	j	80003080 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000309c:	00008517          	auipc	a0,0x8
    800030a0:	7e453503          	ld	a0,2020(a0) # 8000b880 <_ZL10waitForAll>
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	284080e7          	jalr	644(ra) # 80001328 <_Z9sem_closeP3Sem>
    delete buffer;
    800030ac:	000a0e63          	beqz	s4,800030c8 <_Z22producerConsumer_C_APIv+0x284>
    800030b0:	000a0513          	mv	a0,s4
    800030b4:	00003097          	auipc	ra,0x3
    800030b8:	0d8080e7          	jalr	216(ra) # 8000618c <_ZN6BufferD1Ev>
    800030bc:	000a0513          	mv	a0,s4
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	de4080e7          	jalr	-540(ra) # 80001ea4 <_ZdlPv>
    800030c8:	000b0113          	mv	sp,s6

}
    800030cc:	f9040113          	addi	sp,s0,-112
    800030d0:	06813083          	ld	ra,104(sp)
    800030d4:	06013403          	ld	s0,96(sp)
    800030d8:	05813483          	ld	s1,88(sp)
    800030dc:	05013903          	ld	s2,80(sp)
    800030e0:	04813983          	ld	s3,72(sp)
    800030e4:	04013a03          	ld	s4,64(sp)
    800030e8:	03813a83          	ld	s5,56(sp)
    800030ec:	03013b03          	ld	s6,48(sp)
    800030f0:	07010113          	addi	sp,sp,112
    800030f4:	00008067          	ret
    800030f8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800030fc:	000a0513          	mv	a0,s4
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	da4080e7          	jalr	-604(ra) # 80001ea4 <_ZdlPv>
    80003108:	00048513          	mv	a0,s1
    8000310c:	0000a097          	auipc	ra,0xa
    80003110:	88c080e7          	jalr	-1908(ra) # 8000c998 <_Unwind_Resume>

0000000080003114 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003114:	fe010113          	addi	sp,sp,-32
    80003118:	00113c23          	sd	ra,24(sp)
    8000311c:	00813823          	sd	s0,16(sp)
    80003120:	00913423          	sd	s1,8(sp)
    80003124:	01213023          	sd	s2,0(sp)
    80003128:	02010413          	addi	s0,sp,32
    8000312c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003130:	00100793          	li	a5,1
    80003134:	02a7f863          	bgeu	a5,a0,80003164 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003138:	00a00793          	li	a5,10
    8000313c:	02f577b3          	remu	a5,a0,a5
    80003140:	02078e63          	beqz	a5,8000317c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003144:	fff48513          	addi	a0,s1,-1
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	fcc080e7          	jalr	-52(ra) # 80003114 <_ZL9fibonaccim>
    80003150:	00050913          	mv	s2,a0
    80003154:	ffe48513          	addi	a0,s1,-2
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	fbc080e7          	jalr	-68(ra) # 80003114 <_ZL9fibonaccim>
    80003160:	00a90533          	add	a0,s2,a0
}
    80003164:	01813083          	ld	ra,24(sp)
    80003168:	01013403          	ld	s0,16(sp)
    8000316c:	00813483          	ld	s1,8(sp)
    80003170:	00013903          	ld	s2,0(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	154080e7          	jalr	340(ra) # 800012d0 <_Z15thread_dispatchv>
    80003184:	fc1ff06f          	j	80003144 <_ZL9fibonaccim+0x30>

0000000080003188 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	01213023          	sd	s2,0(sp)
    8000319c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800031a0:	00000913          	li	s2,0
    800031a4:	0380006f          	j	800031dc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	128080e7          	jalr	296(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031b0:	00148493          	addi	s1,s1,1
    800031b4:	000027b7          	lui	a5,0x2
    800031b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031bc:	0097ee63          	bltu	a5,s1,800031d8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031c0:	00000713          	li	a4,0
    800031c4:	000077b7          	lui	a5,0x7
    800031c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031cc:	fce7eee3          	bltu	a5,a4,800031a8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800031d0:	00170713          	addi	a4,a4,1
    800031d4:	ff1ff06f          	j	800031c4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800031d8:	00190913          	addi	s2,s2,1
    800031dc:	00900793          	li	a5,9
    800031e0:	0527e063          	bltu	a5,s2,80003220 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800031e4:	00006517          	auipc	a0,0x6
    800031e8:	f7450513          	addi	a0,a0,-140 # 80009158 <CONSOLE_STATUS+0x148>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	eac080e7          	jalr	-340(ra) # 80005098 <_Z11printStringPKc>
    800031f4:	00000613          	li	a2,0
    800031f8:	00a00593          	li	a1,10
    800031fc:	0009051b          	sext.w	a0,s2
    80003200:	00002097          	auipc	ra,0x2
    80003204:	048080e7          	jalr	72(ra) # 80005248 <_Z8printIntiii>
    80003208:	00006517          	auipc	a0,0x6
    8000320c:	ea050513          	addi	a0,a0,-352 # 800090a8 <CONSOLE_STATUS+0x98>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	e88080e7          	jalr	-376(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003218:	00000493          	li	s1,0
    8000321c:	f99ff06f          	j	800031b4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003220:	00006517          	auipc	a0,0x6
    80003224:	f4050513          	addi	a0,a0,-192 # 80009160 <CONSOLE_STATUS+0x150>
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	e70080e7          	jalr	-400(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    80003230:	00100793          	li	a5,1
    80003234:	00008717          	auipc	a4,0x8
    80003238:	64f70a23          	sb	a5,1620(a4) # 8000b888 <_ZL9finishedA>
}
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	00013903          	ld	s2,0(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret

0000000080003254 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003254:	fe010113          	addi	sp,sp,-32
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00913423          	sd	s1,8(sp)
    80003264:	01213023          	sd	s2,0(sp)
    80003268:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000326c:	00000913          	li	s2,0
    80003270:	0380006f          	j	800032a8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	05c080e7          	jalr	92(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000327c:	00148493          	addi	s1,s1,1
    80003280:	000027b7          	lui	a5,0x2
    80003284:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003288:	0097ee63          	bltu	a5,s1,800032a4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000328c:	00000713          	li	a4,0
    80003290:	000077b7          	lui	a5,0x7
    80003294:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003298:	fce7eee3          	bltu	a5,a4,80003274 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000329c:	00170713          	addi	a4,a4,1
    800032a0:	ff1ff06f          	j	80003290 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800032a4:	00190913          	addi	s2,s2,1
    800032a8:	00f00793          	li	a5,15
    800032ac:	0527e063          	bltu	a5,s2,800032ec <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	ec050513          	addi	a0,a0,-320 # 80009170 <CONSOLE_STATUS+0x160>
    800032b8:	00002097          	auipc	ra,0x2
    800032bc:	de0080e7          	jalr	-544(ra) # 80005098 <_Z11printStringPKc>
    800032c0:	00000613          	li	a2,0
    800032c4:	00a00593          	li	a1,10
    800032c8:	0009051b          	sext.w	a0,s2
    800032cc:	00002097          	auipc	ra,0x2
    800032d0:	f7c080e7          	jalr	-132(ra) # 80005248 <_Z8printIntiii>
    800032d4:	00006517          	auipc	a0,0x6
    800032d8:	dd450513          	addi	a0,a0,-556 # 800090a8 <CONSOLE_STATUS+0x98>
    800032dc:	00002097          	auipc	ra,0x2
    800032e0:	dbc080e7          	jalr	-580(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800032e4:	00000493          	li	s1,0
    800032e8:	f99ff06f          	j	80003280 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800032ec:	00006517          	auipc	a0,0x6
    800032f0:	e8c50513          	addi	a0,a0,-372 # 80009178 <CONSOLE_STATUS+0x168>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	da4080e7          	jalr	-604(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    800032fc:	00100793          	li	a5,1
    80003300:	00008717          	auipc	a4,0x8
    80003304:	58f704a3          	sb	a5,1417(a4) # 8000b889 <_ZL9finishedB>
    thread_dispatch();
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	fc8080e7          	jalr	-56(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00813483          	ld	s1,8(sp)
    8000331c:	00013903          	ld	s2,0(sp)
    80003320:	02010113          	addi	sp,sp,32
    80003324:	00008067          	ret

0000000080003328 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003328:	fe010113          	addi	sp,sp,-32
    8000332c:	00113c23          	sd	ra,24(sp)
    80003330:	00813823          	sd	s0,16(sp)
    80003334:	00913423          	sd	s1,8(sp)
    80003338:	01213023          	sd	s2,0(sp)
    8000333c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003340:	00000493          	li	s1,0
    80003344:	0400006f          	j	80003384 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003348:	00006517          	auipc	a0,0x6
    8000334c:	e4050513          	addi	a0,a0,-448 # 80009188 <CONSOLE_STATUS+0x178>
    80003350:	00002097          	auipc	ra,0x2
    80003354:	d48080e7          	jalr	-696(ra) # 80005098 <_Z11printStringPKc>
    80003358:	00000613          	li	a2,0
    8000335c:	00a00593          	li	a1,10
    80003360:	00048513          	mv	a0,s1
    80003364:	00002097          	auipc	ra,0x2
    80003368:	ee4080e7          	jalr	-284(ra) # 80005248 <_Z8printIntiii>
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	d3c50513          	addi	a0,a0,-708 # 800090a8 <CONSOLE_STATUS+0x98>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	d24080e7          	jalr	-732(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000337c:	0014849b          	addiw	s1,s1,1
    80003380:	0ff4f493          	andi	s1,s1,255
    80003384:	00200793          	li	a5,2
    80003388:	fc97f0e3          	bgeu	a5,s1,80003348 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000338c:	00006517          	auipc	a0,0x6
    80003390:	e0450513          	addi	a0,a0,-508 # 80009190 <CONSOLE_STATUS+0x180>
    80003394:	00002097          	auipc	ra,0x2
    80003398:	d04080e7          	jalr	-764(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000339c:	00700313          	li	t1,7
    thread_dispatch();
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	f30080e7          	jalr	-208(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800033a8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800033ac:	00006517          	auipc	a0,0x6
    800033b0:	df450513          	addi	a0,a0,-524 # 800091a0 <CONSOLE_STATUS+0x190>
    800033b4:	00002097          	auipc	ra,0x2
    800033b8:	ce4080e7          	jalr	-796(ra) # 80005098 <_Z11printStringPKc>
    800033bc:	00000613          	li	a2,0
    800033c0:	00a00593          	li	a1,10
    800033c4:	0009051b          	sext.w	a0,s2
    800033c8:	00002097          	auipc	ra,0x2
    800033cc:	e80080e7          	jalr	-384(ra) # 80005248 <_Z8printIntiii>
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	cd850513          	addi	a0,a0,-808 # 800090a8 <CONSOLE_STATUS+0x98>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	cc0080e7          	jalr	-832(ra) # 80005098 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800033e0:	00c00513          	li	a0,12
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	d30080e7          	jalr	-720(ra) # 80003114 <_ZL9fibonaccim>
    800033ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	db850513          	addi	a0,a0,-584 # 800091a8 <CONSOLE_STATUS+0x198>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	ca0080e7          	jalr	-864(ra) # 80005098 <_Z11printStringPKc>
    80003400:	00000613          	li	a2,0
    80003404:	00a00593          	li	a1,10
    80003408:	0009051b          	sext.w	a0,s2
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	e3c080e7          	jalr	-452(ra) # 80005248 <_Z8printIntiii>
    80003414:	00006517          	auipc	a0,0x6
    80003418:	c9450513          	addi	a0,a0,-876 # 800090a8 <CONSOLE_STATUS+0x98>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	c7c080e7          	jalr	-900(ra) # 80005098 <_Z11printStringPKc>
    80003424:	0400006f          	j	80003464 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003428:	00006517          	auipc	a0,0x6
    8000342c:	d6050513          	addi	a0,a0,-672 # 80009188 <CONSOLE_STATUS+0x178>
    80003430:	00002097          	auipc	ra,0x2
    80003434:	c68080e7          	jalr	-920(ra) # 80005098 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	00048513          	mv	a0,s1
    80003444:	00002097          	auipc	ra,0x2
    80003448:	e04080e7          	jalr	-508(ra) # 80005248 <_Z8printIntiii>
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	c5c50513          	addi	a0,a0,-932 # 800090a8 <CONSOLE_STATUS+0x98>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	c44080e7          	jalr	-956(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000345c:	0014849b          	addiw	s1,s1,1
    80003460:	0ff4f493          	andi	s1,s1,255
    80003464:	00500793          	li	a5,5
    80003468:	fc97f0e3          	bgeu	a5,s1,80003428 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	cf450513          	addi	a0,a0,-780 # 80009160 <CONSOLE_STATUS+0x150>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	c24080e7          	jalr	-988(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    8000347c:	00100793          	li	a5,1
    80003480:	00008717          	auipc	a4,0x8
    80003484:	40f70523          	sb	a5,1034(a4) # 8000b88a <_ZL9finishedC>
    thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	e48080e7          	jalr	-440(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00813483          	ld	s1,8(sp)
    8000349c:	00013903          	ld	s2,0(sp)
    800034a0:	02010113          	addi	sp,sp,32
    800034a4:	00008067          	ret

00000000800034a8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800034a8:	fe010113          	addi	sp,sp,-32
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	01213023          	sd	s2,0(sp)
    800034bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800034c0:	00a00493          	li	s1,10
    800034c4:	0400006f          	j	80003504 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800034c8:	00006517          	auipc	a0,0x6
    800034cc:	cf050513          	addi	a0,a0,-784 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800034d0:	00002097          	auipc	ra,0x2
    800034d4:	bc8080e7          	jalr	-1080(ra) # 80005098 <_Z11printStringPKc>
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	d64080e7          	jalr	-668(ra) # 80005248 <_Z8printIntiii>
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	bbc50513          	addi	a0,a0,-1092 # 800090a8 <CONSOLE_STATUS+0x98>
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	ba4080e7          	jalr	-1116(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800034fc:	0014849b          	addiw	s1,s1,1
    80003500:	0ff4f493          	andi	s1,s1,255
    80003504:	00c00793          	li	a5,12
    80003508:	fc97f0e3          	bgeu	a5,s1,800034c8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	cb450513          	addi	a0,a0,-844 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	b84080e7          	jalr	-1148(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000351c:	00500313          	li	t1,5
    thread_dispatch();
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	db0080e7          	jalr	-592(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003528:	01000513          	li	a0,16
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	be8080e7          	jalr	-1048(ra) # 80003114 <_ZL9fibonaccim>
    80003534:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	c9850513          	addi	a0,a0,-872 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	b58080e7          	jalr	-1192(ra) # 80005098 <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	0009051b          	sext.w	a0,s2
    80003554:	00002097          	auipc	ra,0x2
    80003558:	cf4080e7          	jalr	-780(ra) # 80005248 <_Z8printIntiii>
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	b4c50513          	addi	a0,a0,-1204 # 800090a8 <CONSOLE_STATUS+0x98>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	b34080e7          	jalr	-1228(ra) # 80005098 <_Z11printStringPKc>
    8000356c:	0400006f          	j	800035ac <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	c4850513          	addi	a0,a0,-952 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	b20080e7          	jalr	-1248(ra) # 80005098 <_Z11printStringPKc>
    80003580:	00000613          	li	a2,0
    80003584:	00a00593          	li	a1,10
    80003588:	00048513          	mv	a0,s1
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	cbc080e7          	jalr	-836(ra) # 80005248 <_Z8printIntiii>
    80003594:	00006517          	auipc	a0,0x6
    80003598:	b1450513          	addi	a0,a0,-1260 # 800090a8 <CONSOLE_STATUS+0x98>
    8000359c:	00002097          	auipc	ra,0x2
    800035a0:	afc080e7          	jalr	-1284(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800035a4:	0014849b          	addiw	s1,s1,1
    800035a8:	0ff4f493          	andi	s1,s1,255
    800035ac:	00f00793          	li	a5,15
    800035b0:	fc97f0e3          	bgeu	a5,s1,80003570 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	c2c50513          	addi	a0,a0,-980 # 800091e0 <CONSOLE_STATUS+0x1d0>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	adc080e7          	jalr	-1316(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    800035c4:	00100793          	li	a5,1
    800035c8:	00008717          	auipc	a4,0x8
    800035cc:	2cf701a3          	sb	a5,707(a4) # 8000b88b <_ZL9finishedD>
    thread_dispatch();
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	d00080e7          	jalr	-768(ra) # 800012d0 <_Z15thread_dispatchv>
}
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00013903          	ld	s2,0(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret

00000000800035f0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800035f0:	fc010113          	addi	sp,sp,-64
    800035f4:	02113c23          	sd	ra,56(sp)
    800035f8:	02813823          	sd	s0,48(sp)
    800035fc:	02913423          	sd	s1,40(sp)
    80003600:	03213023          	sd	s2,32(sp)
    80003604:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003608:	02000513          	li	a0,32
    8000360c:	fffff097          	auipc	ra,0xfffff
    80003610:	870080e7          	jalr	-1936(ra) # 80001e7c <_Znwm>
    80003614:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	9f4080e7          	jalr	-1548(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003620:	00008797          	auipc	a5,0x8
    80003624:	00078793          	mv	a5,a5
    80003628:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000362c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003630:	00006517          	auipc	a0,0x6
    80003634:	bc050513          	addi	a0,a0,-1088 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	a60080e7          	jalr	-1440(ra) # 80005098 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003640:	02000513          	li	a0,32
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	838080e7          	jalr	-1992(ra) # 80001e7c <_Znwm>
    8000364c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	9bc080e7          	jalr	-1604(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003658:	00008797          	auipc	a5,0x8
    8000365c:	ff078793          	addi	a5,a5,-16 # 8000b648 <_ZTV7WorkerB+0x10>
    80003660:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003664:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	ba050513          	addi	a0,a0,-1120 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	a28080e7          	jalr	-1496(ra) # 80005098 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003678:	02000513          	li	a0,32
    8000367c:	fffff097          	auipc	ra,0xfffff
    80003680:	800080e7          	jalr	-2048(ra) # 80001e7c <_Znwm>
    80003684:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	984080e7          	jalr	-1660(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003690:	00008797          	auipc	a5,0x8
    80003694:	fe078793          	addi	a5,a5,-32 # 8000b670 <_ZTV7WorkerC+0x10>
    80003698:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000369c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800036a0:	00006517          	auipc	a0,0x6
    800036a4:	b8050513          	addi	a0,a0,-1152 # 80009220 <CONSOLE_STATUS+0x210>
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	9f0080e7          	jalr	-1552(ra) # 80005098 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800036b0:	02000513          	li	a0,32
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	7c8080e7          	jalr	1992(ra) # 80001e7c <_Znwm>
    800036bc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	94c080e7          	jalr	-1716(ra) # 8000200c <_ZN6ThreadC1Ev>
    800036c8:	00008797          	auipc	a5,0x8
    800036cc:	fd078793          	addi	a5,a5,-48 # 8000b698 <_ZTV7WorkerD+0x10>
    800036d0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800036d4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800036d8:	00006517          	auipc	a0,0x6
    800036dc:	b6050513          	addi	a0,a0,-1184 # 80009238 <CONSOLE_STATUS+0x228>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	9b8080e7          	jalr	-1608(ra) # 80005098 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800036e8:	00000493          	li	s1,0
    800036ec:	00300793          	li	a5,3
    800036f0:	0297c663          	blt	a5,s1,8000371c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800036f4:	00349793          	slli	a5,s1,0x3
    800036f8:	fe040713          	addi	a4,s0,-32
    800036fc:	00f707b3          	add	a5,a4,a5
    80003700:	fe07b503          	ld	a0,-32(a5)
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	884080e7          	jalr	-1916(ra) # 80001f88 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000370c:	0014849b          	addiw	s1,s1,1
    80003710:	fddff06f          	j	800036ec <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	8a4080e7          	jalr	-1884(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000371c:	00008797          	auipc	a5,0x8
    80003720:	16c7c783          	lbu	a5,364(a5) # 8000b888 <_ZL9finishedA>
    80003724:	fe0788e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003728:	00008797          	auipc	a5,0x8
    8000372c:	1617c783          	lbu	a5,353(a5) # 8000b889 <_ZL9finishedB>
    80003730:	fe0782e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003734:	00008797          	auipc	a5,0x8
    80003738:	1567c783          	lbu	a5,342(a5) # 8000b88a <_ZL9finishedC>
    8000373c:	fc078ce3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    80003740:	00008797          	auipc	a5,0x8
    80003744:	14b7c783          	lbu	a5,331(a5) # 8000b88b <_ZL9finishedD>
    80003748:	fc0786e3          	beqz	a5,80003714 <_Z20Threads_CPP_API_testv+0x124>
    8000374c:	fc040493          	addi	s1,s0,-64
    80003750:	0080006f          	j	80003758 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003754:	00848493          	addi	s1,s1,8
    80003758:	fe040793          	addi	a5,s0,-32
    8000375c:	08f48663          	beq	s1,a5,800037e8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003760:	0004b503          	ld	a0,0(s1)
    80003764:	fe0508e3          	beqz	a0,80003754 <_Z20Threads_CPP_API_testv+0x164>
    80003768:	00053783          	ld	a5,0(a0)
    8000376c:	0087b783          	ld	a5,8(a5)
    80003770:	000780e7          	jalr	a5
    80003774:	fe1ff06f          	j	80003754 <_Z20Threads_CPP_API_testv+0x164>
    80003778:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000377c:	00048513          	mv	a0,s1
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	724080e7          	jalr	1828(ra) # 80001ea4 <_ZdlPv>
    80003788:	00090513          	mv	a0,s2
    8000378c:	00009097          	auipc	ra,0x9
    80003790:	20c080e7          	jalr	524(ra) # 8000c998 <_Unwind_Resume>
    80003794:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003798:	00048513          	mv	a0,s1
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	708080e7          	jalr	1800(ra) # 80001ea4 <_ZdlPv>
    800037a4:	00090513          	mv	a0,s2
    800037a8:	00009097          	auipc	ra,0x9
    800037ac:	1f0080e7          	jalr	496(ra) # 8000c998 <_Unwind_Resume>
    800037b0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800037b4:	00048513          	mv	a0,s1
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	6ec080e7          	jalr	1772(ra) # 80001ea4 <_ZdlPv>
    800037c0:	00090513          	mv	a0,s2
    800037c4:	00009097          	auipc	ra,0x9
    800037c8:	1d4080e7          	jalr	468(ra) # 8000c998 <_Unwind_Resume>
    800037cc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800037d0:	00048513          	mv	a0,s1
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	6d0080e7          	jalr	1744(ra) # 80001ea4 <_ZdlPv>
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00009097          	auipc	ra,0x9
    800037e4:	1b8080e7          	jalr	440(ra) # 8000c998 <_Unwind_Resume>
}
    800037e8:	03813083          	ld	ra,56(sp)
    800037ec:	03013403          	ld	s0,48(sp)
    800037f0:	02813483          	ld	s1,40(sp)
    800037f4:	02013903          	ld	s2,32(sp)
    800037f8:	04010113          	addi	sp,sp,64
    800037fc:	00008067          	ret

0000000080003800 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00113423          	sd	ra,8(sp)
    80003808:	00813023          	sd	s0,0(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	00008797          	auipc	a5,0x8
    80003814:	e1078793          	addi	a5,a5,-496 # 8000b620 <_ZTV7WorkerA+0x10>
    80003818:	00f53023          	sd	a5,0(a0)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	5c8080e7          	jalr	1480(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003824:	00813083          	ld	ra,8(sp)
    80003828:	00013403          	ld	s0,0(sp)
    8000382c:	01010113          	addi	sp,sp,16
    80003830:	00008067          	ret

0000000080003834 <_ZN7WorkerAD0Ev>:
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00913423          	sd	s1,8(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00050493          	mv	s1,a0
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	dd478793          	addi	a5,a5,-556 # 8000b620 <_ZTV7WorkerA+0x10>
    80003854:	00f53023          	sd	a5,0(a0)
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	58c080e7          	jalr	1420(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003860:	00048513          	mv	a0,s1
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	640080e7          	jalr	1600(ra) # 80001ea4 <_ZdlPv>
    8000386c:	01813083          	ld	ra,24(sp)
    80003870:	01013403          	ld	s0,16(sp)
    80003874:	00813483          	ld	s1,8(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret

0000000080003880 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00113423          	sd	ra,8(sp)
    80003888:	00813023          	sd	s0,0(sp)
    8000388c:	01010413          	addi	s0,sp,16
    80003890:	00008797          	auipc	a5,0x8
    80003894:	db878793          	addi	a5,a5,-584 # 8000b648 <_ZTV7WorkerB+0x10>
    80003898:	00f53023          	sd	a5,0(a0)
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	548080e7          	jalr	1352(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	01010113          	addi	sp,sp,16
    800038b0:	00008067          	ret

00000000800038b4 <_ZN7WorkerBD0Ev>:
    800038b4:	fe010113          	addi	sp,sp,-32
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	00813823          	sd	s0,16(sp)
    800038c0:	00913423          	sd	s1,8(sp)
    800038c4:	02010413          	addi	s0,sp,32
    800038c8:	00050493          	mv	s1,a0
    800038cc:	00008797          	auipc	a5,0x8
    800038d0:	d7c78793          	addi	a5,a5,-644 # 8000b648 <_ZTV7WorkerB+0x10>
    800038d4:	00f53023          	sd	a5,0(a0)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	50c080e7          	jalr	1292(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800038e0:	00048513          	mv	a0,s1
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	5c0080e7          	jalr	1472(ra) # 80001ea4 <_ZdlPv>
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	02010113          	addi	sp,sp,32
    800038fc:	00008067          	ret

0000000080003900 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00113423          	sd	ra,8(sp)
    80003908:	00813023          	sd	s0,0(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	00008797          	auipc	a5,0x8
    80003914:	d6078793          	addi	a5,a5,-672 # 8000b670 <_ZTV7WorkerC+0x10>
    80003918:	00f53023          	sd	a5,0(a0)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	4c8080e7          	jalr	1224(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003924:	00813083          	ld	ra,8(sp)
    80003928:	00013403          	ld	s0,0(sp)
    8000392c:	01010113          	addi	sp,sp,16
    80003930:	00008067          	ret

0000000080003934 <_ZN7WorkerCD0Ev>:
    80003934:	fe010113          	addi	sp,sp,-32
    80003938:	00113c23          	sd	ra,24(sp)
    8000393c:	00813823          	sd	s0,16(sp)
    80003940:	00913423          	sd	s1,8(sp)
    80003944:	02010413          	addi	s0,sp,32
    80003948:	00050493          	mv	s1,a0
    8000394c:	00008797          	auipc	a5,0x8
    80003950:	d2478793          	addi	a5,a5,-732 # 8000b670 <_ZTV7WorkerC+0x10>
    80003954:	00f53023          	sd	a5,0(a0)
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	48c080e7          	jalr	1164(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003960:	00048513          	mv	a0,s1
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	540080e7          	jalr	1344(ra) # 80001ea4 <_ZdlPv>
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret

0000000080003980 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00113423          	sd	ra,8(sp)
    80003988:	00813023          	sd	s0,0(sp)
    8000398c:	01010413          	addi	s0,sp,16
    80003990:	00008797          	auipc	a5,0x8
    80003994:	d0878793          	addi	a5,a5,-760 # 8000b698 <_ZTV7WorkerD+0x10>
    80003998:	00f53023          	sd	a5,0(a0)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	448080e7          	jalr	1096(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800039a4:	00813083          	ld	ra,8(sp)
    800039a8:	00013403          	ld	s0,0(sp)
    800039ac:	01010113          	addi	sp,sp,16
    800039b0:	00008067          	ret

00000000800039b4 <_ZN7WorkerDD0Ev>:
    800039b4:	fe010113          	addi	sp,sp,-32
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00913423          	sd	s1,8(sp)
    800039c4:	02010413          	addi	s0,sp,32
    800039c8:	00050493          	mv	s1,a0
    800039cc:	00008797          	auipc	a5,0x8
    800039d0:	ccc78793          	addi	a5,a5,-820 # 8000b698 <_ZTV7WorkerD+0x10>
    800039d4:	00f53023          	sd	a5,0(a0)
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	40c080e7          	jalr	1036(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800039e0:	00048513          	mv	a0,s1
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	4c0080e7          	jalr	1216(ra) # 80001ea4 <_ZdlPv>
    800039ec:	01813083          	ld	ra,24(sp)
    800039f0:	01013403          	ld	s0,16(sp)
    800039f4:	00813483          	ld	s1,8(sp)
    800039f8:	02010113          	addi	sp,sp,32
    800039fc:	00008067          	ret

0000000080003a00 <_ZN7WorkerA3runEv>:
    void run() override {
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00113423          	sd	ra,8(sp)
    80003a08:	00813023          	sd	s0,0(sp)
    80003a0c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003a10:	00000593          	li	a1,0
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	774080e7          	jalr	1908(ra) # 80003188 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003a1c:	00813083          	ld	ra,8(sp)
    80003a20:	00013403          	ld	s0,0(sp)
    80003a24:	01010113          	addi	sp,sp,16
    80003a28:	00008067          	ret

0000000080003a2c <_ZN7WorkerB3runEv>:
    void run() override {
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00113423          	sd	ra,8(sp)
    80003a34:	00813023          	sd	s0,0(sp)
    80003a38:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003a3c:	00000593          	li	a1,0
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	814080e7          	jalr	-2028(ra) # 80003254 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZN7WorkerC3runEv>:
    void run() override {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003a68:	00000593          	li	a1,0
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	8bc080e7          	jalr	-1860(ra) # 80003328 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003a74:	00813083          	ld	ra,8(sp)
    80003a78:	00013403          	ld	s0,0(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN7WorkerD3runEv>:
    void run() override {
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003a94:	00000593          	li	a1,0
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	a10080e7          	jalr	-1520(ra) # 800034a8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003aa0:	00813083          	ld	ra,8(sp)
    80003aa4:	00013403          	ld	s0,0(sp)
    80003aa8:	01010113          	addi	sp,sp,16
    80003aac:	00008067          	ret

0000000080003ab0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ab0:	f8010113          	addi	sp,sp,-128
    80003ab4:	06113c23          	sd	ra,120(sp)
    80003ab8:	06813823          	sd	s0,112(sp)
    80003abc:	06913423          	sd	s1,104(sp)
    80003ac0:	07213023          	sd	s2,96(sp)
    80003ac4:	05313c23          	sd	s3,88(sp)
    80003ac8:	05413823          	sd	s4,80(sp)
    80003acc:	05513423          	sd	s5,72(sp)
    80003ad0:	05613023          	sd	s6,64(sp)
    80003ad4:	03713c23          	sd	s7,56(sp)
    80003ad8:	03813823          	sd	s8,48(sp)
    80003adc:	03913423          	sd	s9,40(sp)
    80003ae0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003ae4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ae8:	00005517          	auipc	a0,0x5
    80003aec:	58850513          	addi	a0,a0,1416 # 80009070 <CONSOLE_STATUS+0x60>
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	5a8080e7          	jalr	1448(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80003af8:	01e00593          	li	a1,30
    80003afc:	f8040493          	addi	s1,s0,-128
    80003b00:	00048513          	mv	a0,s1
    80003b04:	00001097          	auipc	ra,0x1
    80003b08:	61c080e7          	jalr	1564(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b0c:	00048513          	mv	a0,s1
    80003b10:	00001097          	auipc	ra,0x1
    80003b14:	6e8080e7          	jalr	1768(ra) # 800051f8 <_Z11stringToIntPKc>
    80003b18:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003b1c:	00005517          	auipc	a0,0x5
    80003b20:	57450513          	addi	a0,a0,1396 # 80009090 <CONSOLE_STATUS+0x80>
    80003b24:	00001097          	auipc	ra,0x1
    80003b28:	574080e7          	jalr	1396(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80003b2c:	01e00593          	li	a1,30
    80003b30:	00048513          	mv	a0,s1
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	5ec080e7          	jalr	1516(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	00001097          	auipc	ra,0x1
    80003b44:	6b8080e7          	jalr	1720(ra) # 800051f8 <_Z11stringToIntPKc>
    80003b48:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003b4c:	00005517          	auipc	a0,0x5
    80003b50:	56450513          	addi	a0,a0,1380 # 800090b0 <CONSOLE_STATUS+0xa0>
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	544080e7          	jalr	1348(ra) # 80005098 <_Z11printStringPKc>
    printInt(threadNum);
    80003b5c:	00000613          	li	a2,0
    80003b60:	00a00593          	li	a1,10
    80003b64:	00098513          	mv	a0,s3
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	6e0080e7          	jalr	1760(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	55850513          	addi	a0,a0,1368 # 800090c8 <CONSOLE_STATUS+0xb8>
    80003b78:	00001097          	auipc	ra,0x1
    80003b7c:	520080e7          	jalr	1312(ra) # 80005098 <_Z11printStringPKc>
    printInt(n);
    80003b80:	00000613          	li	a2,0
    80003b84:	00a00593          	li	a1,10
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	6bc080e7          	jalr	1724(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	54c50513          	addi	a0,a0,1356 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	4fc080e7          	jalr	1276(ra) # 80005098 <_Z11printStringPKc>
    if (threadNum > n) {
    80003ba4:	0334c463          	blt	s1,s3,80003bcc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003ba8:	03305c63          	blez	s3,80003be0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003bac:	03800513          	li	a0,56
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	2cc080e7          	jalr	716(ra) # 80001e7c <_Znwm>
    80003bb8:	00050a93          	mv	s5,a0
    80003bbc:	00048593          	mv	a1,s1
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	7a8080e7          	jalr	1960(ra) # 80005368 <_ZN9BufferCPPC1Ei>
    80003bc8:	0300006f          	j	80003bf8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003bcc:	00005517          	auipc	a0,0x5
    80003bd0:	51c50513          	addi	a0,a0,1308 # 800090e8 <CONSOLE_STATUS+0xd8>
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	4c4080e7          	jalr	1220(ra) # 80005098 <_Z11printStringPKc>
        return;
    80003bdc:	0140006f          	j	80003bf0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	54850513          	addi	a0,a0,1352 # 80009128 <CONSOLE_STATUS+0x118>
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	4b0080e7          	jalr	1200(ra) # 80005098 <_Z11printStringPKc>
        return;
    80003bf0:	000c0113          	mv	sp,s8
    80003bf4:	2140006f          	j	80003e08 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003bf8:	01000513          	li	a0,16
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	280080e7          	jalr	640(ra) # 80001e7c <_Znwm>
    80003c04:	00050913          	mv	s2,a0
    80003c08:	00000593          	li	a1,0
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	428080e7          	jalr	1064(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    80003c14:	00008797          	auipc	a5,0x8
    80003c18:	c927b223          	sd	s2,-892(a5) # 8000b898 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003c1c:	00399793          	slli	a5,s3,0x3
    80003c20:	00f78793          	addi	a5,a5,15
    80003c24:	ff07f793          	andi	a5,a5,-16
    80003c28:	40f10133          	sub	sp,sp,a5
    80003c2c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003c30:	0019871b          	addiw	a4,s3,1
    80003c34:	00171793          	slli	a5,a4,0x1
    80003c38:	00e787b3          	add	a5,a5,a4
    80003c3c:	00379793          	slli	a5,a5,0x3
    80003c40:	00f78793          	addi	a5,a5,15
    80003c44:	ff07f793          	andi	a5,a5,-16
    80003c48:	40f10133          	sub	sp,sp,a5
    80003c4c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003c50:	00199493          	slli	s1,s3,0x1
    80003c54:	013484b3          	add	s1,s1,s3
    80003c58:	00349493          	slli	s1,s1,0x3
    80003c5c:	009b04b3          	add	s1,s6,s1
    80003c60:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003c64:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003c68:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c6c:	02800513          	li	a0,40
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	20c080e7          	jalr	524(ra) # 80001e7c <_Znwm>
    80003c78:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	390080e7          	jalr	912(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003c84:	00008797          	auipc	a5,0x8
    80003c88:	a8c78793          	addi	a5,a5,-1396 # 8000b710 <_ZTV8Consumer+0x10>
    80003c8c:	00fbb023          	sd	a5,0(s7)
    80003c90:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003c94:	000b8513          	mv	a0,s7
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	2f0080e7          	jalr	752(ra) # 80001f88 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003ca0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003ca4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	bf07b783          	ld	a5,-1040(a5) # 8000b898 <_ZL10waitForAll>
    80003cb0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003cb4:	02800513          	li	a0,40
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	1c4080e7          	jalr	452(ra) # 80001e7c <_Znwm>
    80003cc0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	348080e7          	jalr	840(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003ccc:	00008797          	auipc	a5,0x8
    80003cd0:	9f478793          	addi	a5,a5,-1548 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80003cd4:	00f4b023          	sd	a5,0(s1)
    80003cd8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003cdc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	2a4080e7          	jalr	676(ra) # 80001f88 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003cec:	00100913          	li	s2,1
    80003cf0:	0300006f          	j	80003d20 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003cf4:	00008797          	auipc	a5,0x8
    80003cf8:	9f478793          	addi	a5,a5,-1548 # 8000b6e8 <_ZTV8Producer+0x10>
    80003cfc:	00fcb023          	sd	a5,0(s9)
    80003d00:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003d04:	00391793          	slli	a5,s2,0x3
    80003d08:	00fa07b3          	add	a5,s4,a5
    80003d0c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003d10:	000c8513          	mv	a0,s9
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	274080e7          	jalr	628(ra) # 80001f88 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003d1c:	0019091b          	addiw	s2,s2,1
    80003d20:	05395263          	bge	s2,s3,80003d64 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003d24:	00191493          	slli	s1,s2,0x1
    80003d28:	012484b3          	add	s1,s1,s2
    80003d2c:	00349493          	slli	s1,s1,0x3
    80003d30:	009b04b3          	add	s1,s6,s1
    80003d34:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003d38:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003d3c:	00008797          	auipc	a5,0x8
    80003d40:	b5c7b783          	ld	a5,-1188(a5) # 8000b898 <_ZL10waitForAll>
    80003d44:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003d48:	02800513          	li	a0,40
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	130080e7          	jalr	304(ra) # 80001e7c <_Znwm>
    80003d54:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	2b4080e7          	jalr	692(ra) # 8000200c <_ZN6ThreadC1Ev>
    80003d60:	f95ff06f          	j	80003cf4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	254080e7          	jalr	596(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d6c:	00000493          	li	s1,0
    80003d70:	0099ce63          	blt	s3,s1,80003d8c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003d74:	00008517          	auipc	a0,0x8
    80003d78:	b2453503          	ld	a0,-1244(a0) # 8000b898 <_ZL10waitForAll>
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	2f4080e7          	jalr	756(ra) # 80002070 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	fe9ff06f          	j	80003d70 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003d8c:	00008517          	auipc	a0,0x8
    80003d90:	b0c53503          	ld	a0,-1268(a0) # 8000b898 <_ZL10waitForAll>
    80003d94:	00050863          	beqz	a0,80003da4 <_Z20testConsumerProducerv+0x2f4>
    80003d98:	00053783          	ld	a5,0(a0)
    80003d9c:	0087b783          	ld	a5,8(a5)
    80003da0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003da4:	00000493          	li	s1,0
    80003da8:	0080006f          	j	80003db0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003dac:	0014849b          	addiw	s1,s1,1
    80003db0:	0334d263          	bge	s1,s3,80003dd4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003db4:	00349793          	slli	a5,s1,0x3
    80003db8:	00fa07b3          	add	a5,s4,a5
    80003dbc:	0007b503          	ld	a0,0(a5)
    80003dc0:	fe0506e3          	beqz	a0,80003dac <_Z20testConsumerProducerv+0x2fc>
    80003dc4:	00053783          	ld	a5,0(a0)
    80003dc8:	0087b783          	ld	a5,8(a5)
    80003dcc:	000780e7          	jalr	a5
    80003dd0:	fddff06f          	j	80003dac <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003dd4:	000b8a63          	beqz	s7,80003de8 <_Z20testConsumerProducerv+0x338>
    80003dd8:	000bb783          	ld	a5,0(s7)
    80003ddc:	0087b783          	ld	a5,8(a5)
    80003de0:	000b8513          	mv	a0,s7
    80003de4:	000780e7          	jalr	a5
    delete buffer;
    80003de8:	000a8e63          	beqz	s5,80003e04 <_Z20testConsumerProducerv+0x354>
    80003dec:	000a8513          	mv	a0,s5
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	870080e7          	jalr	-1936(ra) # 80005660 <_ZN9BufferCPPD1Ev>
    80003df8:	000a8513          	mv	a0,s5
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	0a8080e7          	jalr	168(ra) # 80001ea4 <_ZdlPv>
    80003e04:	000c0113          	mv	sp,s8
}
    80003e08:	f8040113          	addi	sp,s0,-128
    80003e0c:	07813083          	ld	ra,120(sp)
    80003e10:	07013403          	ld	s0,112(sp)
    80003e14:	06813483          	ld	s1,104(sp)
    80003e18:	06013903          	ld	s2,96(sp)
    80003e1c:	05813983          	ld	s3,88(sp)
    80003e20:	05013a03          	ld	s4,80(sp)
    80003e24:	04813a83          	ld	s5,72(sp)
    80003e28:	04013b03          	ld	s6,64(sp)
    80003e2c:	03813b83          	ld	s7,56(sp)
    80003e30:	03013c03          	ld	s8,48(sp)
    80003e34:	02813c83          	ld	s9,40(sp)
    80003e38:	08010113          	addi	sp,sp,128
    80003e3c:	00008067          	ret
    80003e40:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e44:	000a8513          	mv	a0,s5
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	05c080e7          	jalr	92(ra) # 80001ea4 <_ZdlPv>
    80003e50:	00048513          	mv	a0,s1
    80003e54:	00009097          	auipc	ra,0x9
    80003e58:	b44080e7          	jalr	-1212(ra) # 8000c998 <_Unwind_Resume>
    80003e5c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003e60:	00090513          	mv	a0,s2
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	040080e7          	jalr	64(ra) # 80001ea4 <_ZdlPv>
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00009097          	auipc	ra,0x9
    80003e74:	b28080e7          	jalr	-1240(ra) # 8000c998 <_Unwind_Resume>
    80003e78:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e7c:	000b8513          	mv	a0,s7
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	024080e7          	jalr	36(ra) # 80001ea4 <_ZdlPv>
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00009097          	auipc	ra,0x9
    80003e90:	b0c080e7          	jalr	-1268(ra) # 8000c998 <_Unwind_Resume>
    80003e94:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	008080e7          	jalr	8(ra) # 80001ea4 <_ZdlPv>
    80003ea4:	00090513          	mv	a0,s2
    80003ea8:	00009097          	auipc	ra,0x9
    80003eac:	af0080e7          	jalr	-1296(ra) # 8000c998 <_Unwind_Resume>
    80003eb0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003eb4:	000c8513          	mv	a0,s9
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	fec080e7          	jalr	-20(ra) # 80001ea4 <_ZdlPv>
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00009097          	auipc	ra,0x9
    80003ec8:	ad4080e7          	jalr	-1324(ra) # 8000c998 <_Unwind_Resume>

0000000080003ecc <_ZN8Consumer3runEv>:
    void run() override {
    80003ecc:	fd010113          	addi	sp,sp,-48
    80003ed0:	02113423          	sd	ra,40(sp)
    80003ed4:	02813023          	sd	s0,32(sp)
    80003ed8:	00913c23          	sd	s1,24(sp)
    80003edc:	01213823          	sd	s2,16(sp)
    80003ee0:	01313423          	sd	s3,8(sp)
    80003ee4:	03010413          	addi	s0,sp,48
    80003ee8:	00050913          	mv	s2,a0
        int i = 0;
    80003eec:	00000993          	li	s3,0
    80003ef0:	0100006f          	j	80003f00 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003ef4:	00a00513          	li	a0,10
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	2a0080e7          	jalr	672(ra) # 80002198 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003f00:	00008797          	auipc	a5,0x8
    80003f04:	9907a783          	lw	a5,-1648(a5) # 8000b890 <_ZL9threadEnd>
    80003f08:	04079a63          	bnez	a5,80003f5c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003f0c:	02093783          	ld	a5,32(s2)
    80003f10:	0087b503          	ld	a0,8(a5)
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	638080e7          	jalr	1592(ra) # 8000554c <_ZN9BufferCPP3getEv>
            i++;
    80003f1c:	0019849b          	addiw	s1,s3,1
    80003f20:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003f24:	0ff57513          	andi	a0,a0,255
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	270080e7          	jalr	624(ra) # 80002198 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003f30:	05000793          	li	a5,80
    80003f34:	02f4e4bb          	remw	s1,s1,a5
    80003f38:	fc0494e3          	bnez	s1,80003f00 <_ZN8Consumer3runEv+0x34>
    80003f3c:	fb9ff06f          	j	80003ef4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003f40:	02093783          	ld	a5,32(s2)
    80003f44:	0087b503          	ld	a0,8(a5)
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	604080e7          	jalr	1540(ra) # 8000554c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003f50:	0ff57513          	andi	a0,a0,255
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	244080e7          	jalr	580(ra) # 80002198 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003f5c:	02093783          	ld	a5,32(s2)
    80003f60:	0087b503          	ld	a0,8(a5)
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	674080e7          	jalr	1652(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    80003f6c:	fca04ae3          	bgtz	a0,80003f40 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003f70:	02093783          	ld	a5,32(s2)
    80003f74:	0107b503          	ld	a0,16(a5)
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	130080e7          	jalr	304(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    80003f80:	02813083          	ld	ra,40(sp)
    80003f84:	02013403          	ld	s0,32(sp)
    80003f88:	01813483          	ld	s1,24(sp)
    80003f8c:	01013903          	ld	s2,16(sp)
    80003f90:	00813983          	ld	s3,8(sp)
    80003f94:	03010113          	addi	sp,sp,48
    80003f98:	00008067          	ret

0000000080003f9c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00113423          	sd	ra,8(sp)
    80003fa4:	00813023          	sd	s0,0(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    80003fac:	00007797          	auipc	a5,0x7
    80003fb0:	76478793          	addi	a5,a5,1892 # 8000b710 <_ZTV8Consumer+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	e2c080e7          	jalr	-468(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003fc0:	00813083          	ld	ra,8(sp)
    80003fc4:	00013403          	ld	s0,0(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret

0000000080003fd0 <_ZN8ConsumerD0Ev>:
    80003fd0:	fe010113          	addi	sp,sp,-32
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00813823          	sd	s0,16(sp)
    80003fdc:	00913423          	sd	s1,8(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    80003fe4:	00050493          	mv	s1,a0
    80003fe8:	00007797          	auipc	a5,0x7
    80003fec:	72878793          	addi	a5,a5,1832 # 8000b710 <_ZTV8Consumer+0x10>
    80003ff0:	00f53023          	sd	a5,0(a0)
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	df0080e7          	jalr	-528(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80003ffc:	00048513          	mv	a0,s1
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	ea4080e7          	jalr	-348(ra) # 80001ea4 <_ZdlPv>
    80004008:	01813083          	ld	ra,24(sp)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	00813483          	ld	s1,8(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000401c:	ff010113          	addi	sp,sp,-16
    80004020:	00113423          	sd	ra,8(sp)
    80004024:	00813023          	sd	s0,0(sp)
    80004028:	01010413          	addi	s0,sp,16
    8000402c:	00007797          	auipc	a5,0x7
    80004030:	69478793          	addi	a5,a5,1684 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80004034:	00f53023          	sd	a5,0(a0)
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	dac080e7          	jalr	-596(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004040:	00813083          	ld	ra,8(sp)
    80004044:	00013403          	ld	s0,0(sp)
    80004048:	01010113          	addi	sp,sp,16
    8000404c:	00008067          	ret

0000000080004050 <_ZN16ProducerKeyboradD0Ev>:
    80004050:	fe010113          	addi	sp,sp,-32
    80004054:	00113c23          	sd	ra,24(sp)
    80004058:	00813823          	sd	s0,16(sp)
    8000405c:	00913423          	sd	s1,8(sp)
    80004060:	02010413          	addi	s0,sp,32
    80004064:	00050493          	mv	s1,a0
    80004068:	00007797          	auipc	a5,0x7
    8000406c:	65878793          	addi	a5,a5,1624 # 8000b6c0 <_ZTV16ProducerKeyborad+0x10>
    80004070:	00f53023          	sd	a5,0(a0)
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	d70080e7          	jalr	-656(ra) # 80001de4 <_ZN6ThreadD1Ev>
    8000407c:	00048513          	mv	a0,s1
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	e24080e7          	jalr	-476(ra) # 80001ea4 <_ZdlPv>
    80004088:	01813083          	ld	ra,24(sp)
    8000408c:	01013403          	ld	s0,16(sp)
    80004090:	00813483          	ld	s1,8(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret

000000008000409c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    800040ac:	00007797          	auipc	a5,0x7
    800040b0:	63c78793          	addi	a5,a5,1596 # 8000b6e8 <_ZTV8Producer+0x10>
    800040b4:	00f53023          	sd	a5,0(a0)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	d2c080e7          	jalr	-724(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800040c0:	00813083          	ld	ra,8(sp)
    800040c4:	00013403          	ld	s0,0(sp)
    800040c8:	01010113          	addi	sp,sp,16
    800040cc:	00008067          	ret

00000000800040d0 <_ZN8ProducerD0Ev>:
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	02010413          	addi	s0,sp,32
    800040e4:	00050493          	mv	s1,a0
    800040e8:	00007797          	auipc	a5,0x7
    800040ec:	60078793          	addi	a5,a5,1536 # 8000b6e8 <_ZTV8Producer+0x10>
    800040f0:	00f53023          	sd	a5,0(a0)
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	cf0080e7          	jalr	-784(ra) # 80001de4 <_ZN6ThreadD1Ev>
    800040fc:	00048513          	mv	a0,s1
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	da4080e7          	jalr	-604(ra) # 80001ea4 <_ZdlPv>
    80004108:	01813083          	ld	ra,24(sp)
    8000410c:	01013403          	ld	s0,16(sp)
    80004110:	00813483          	ld	s1,8(sp)
    80004114:	02010113          	addi	sp,sp,32
    80004118:	00008067          	ret

000000008000411c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00113c23          	sd	ra,24(sp)
    80004124:	00813823          	sd	s0,16(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	29c080e7          	jalr	668(ra) # 800013d0 <_Z4getcv>
    8000413c:	0005059b          	sext.w	a1,a0
    80004140:	01b00793          	li	a5,27
    80004144:	00f58c63          	beq	a1,a5,8000415c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004148:	0204b783          	ld	a5,32(s1)
    8000414c:	0087b503          	ld	a0,8(a5)
    80004150:	00001097          	auipc	ra,0x1
    80004154:	36c080e7          	jalr	876(ra) # 800054bc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004158:	fddff06f          	j	80004134 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000415c:	00100793          	li	a5,1
    80004160:	00007717          	auipc	a4,0x7
    80004164:	72f72823          	sw	a5,1840(a4) # 8000b890 <_ZL9threadEnd>
        td->buffer->put('!');
    80004168:	0204b783          	ld	a5,32(s1)
    8000416c:	02100593          	li	a1,33
    80004170:	0087b503          	ld	a0,8(a5)
    80004174:	00001097          	auipc	ra,0x1
    80004178:	348080e7          	jalr	840(ra) # 800054bc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000417c:	0204b783          	ld	a5,32(s1)
    80004180:	0107b503          	ld	a0,16(a5)
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	f24080e7          	jalr	-220(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret

00000000800041a0 <_ZN8Producer3runEv>:
    void run() override {
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	00113c23          	sd	ra,24(sp)
    800041a8:	00813823          	sd	s0,16(sp)
    800041ac:	00913423          	sd	s1,8(sp)
    800041b0:	01213023          	sd	s2,0(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050493          	mv	s1,a0
        int i = 0;
    800041bc:	00000913          	li	s2,0
        while (!threadEnd) {
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	6d07a783          	lw	a5,1744(a5) # 8000b890 <_ZL9threadEnd>
    800041c8:	04079263          	bnez	a5,8000420c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800041cc:	0204b783          	ld	a5,32(s1)
    800041d0:	0007a583          	lw	a1,0(a5)
    800041d4:	0305859b          	addiw	a1,a1,48
    800041d8:	0087b503          	ld	a0,8(a5)
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	2e0080e7          	jalr	736(ra) # 800054bc <_ZN9BufferCPP3putEi>
            i++;
    800041e4:	0019071b          	addiw	a4,s2,1
    800041e8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800041ec:	0204b783          	ld	a5,32(s1)
    800041f0:	0007a783          	lw	a5,0(a5)
    800041f4:	00e787bb          	addw	a5,a5,a4
    800041f8:	00500513          	li	a0,5
    800041fc:	02a7e53b          	remw	a0,a5,a0
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	de0080e7          	jalr	-544(ra) # 80001fe0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004208:	fb9ff06f          	j	800041c0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000420c:	0204b783          	ld	a5,32(s1)
    80004210:	0107b503          	ld	a0,16(a5)
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	e94080e7          	jalr	-364(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    }
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret

0000000080004234 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004234:	fe010113          	addi	sp,sp,-32
    80004238:	00113c23          	sd	ra,24(sp)
    8000423c:	00813823          	sd	s0,16(sp)
    80004240:	00913423          	sd	s1,8(sp)
    80004244:	01213023          	sd	s2,0(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004250:	00100793          	li	a5,1
    80004254:	02a7f863          	bgeu	a5,a0,80004284 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004258:	00a00793          	li	a5,10
    8000425c:	02f577b3          	remu	a5,a0,a5
    80004260:	02078e63          	beqz	a5,8000429c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004264:	fff48513          	addi	a0,s1,-1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	fcc080e7          	jalr	-52(ra) # 80004234 <_ZL9fibonaccim>
    80004270:	00050913          	mv	s2,a0
    80004274:	ffe48513          	addi	a0,s1,-2
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	fbc080e7          	jalr	-68(ra) # 80004234 <_ZL9fibonaccim>
    80004280:	00a90533          	add	a0,s2,a0
}
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	00013903          	ld	s2,0(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	034080e7          	jalr	52(ra) # 800012d0 <_Z15thread_dispatchv>
    800042a4:	fc1ff06f          	j	80004264 <_ZL9fibonaccim+0x30>

00000000800042a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	01213023          	sd	s2,0(sp)
    800042bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800042c0:	00a00493          	li	s1,10
    800042c4:	0400006f          	j	80004304 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042c8:	00005517          	auipc	a0,0x5
    800042cc:	ef050513          	addi	a0,a0,-272 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	dc8080e7          	jalr	-568(ra) # 80005098 <_Z11printStringPKc>
    800042d8:	00000613          	li	a2,0
    800042dc:	00a00593          	li	a1,10
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	f64080e7          	jalr	-156(ra) # 80005248 <_Z8printIntiii>
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	dbc50513          	addi	a0,a0,-580 # 800090a8 <CONSOLE_STATUS+0x98>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	da4080e7          	jalr	-604(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042fc:	0014849b          	addiw	s1,s1,1
    80004300:	0ff4f493          	andi	s1,s1,255
    80004304:	00c00793          	li	a5,12
    80004308:	fc97f0e3          	bgeu	a5,s1,800042c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	eb450513          	addi	a0,a0,-332 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	d84080e7          	jalr	-636(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000431c:	00500313          	li	t1,5
    thread_dispatch();
    80004320:	ffffd097          	auipc	ra,0xffffd
    80004324:	fb0080e7          	jalr	-80(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004328:	01000513          	li	a0,16
    8000432c:	00000097          	auipc	ra,0x0
    80004330:	f08080e7          	jalr	-248(ra) # 80004234 <_ZL9fibonaccim>
    80004334:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004338:	00005517          	auipc	a0,0x5
    8000433c:	e9850513          	addi	a0,a0,-360 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004340:	00001097          	auipc	ra,0x1
    80004344:	d58080e7          	jalr	-680(ra) # 80005098 <_Z11printStringPKc>
    80004348:	00000613          	li	a2,0
    8000434c:	00a00593          	li	a1,10
    80004350:	0009051b          	sext.w	a0,s2
    80004354:	00001097          	auipc	ra,0x1
    80004358:	ef4080e7          	jalr	-268(ra) # 80005248 <_Z8printIntiii>
    8000435c:	00005517          	auipc	a0,0x5
    80004360:	d4c50513          	addi	a0,a0,-692 # 800090a8 <CONSOLE_STATUS+0x98>
    80004364:	00001097          	auipc	ra,0x1
    80004368:	d34080e7          	jalr	-716(ra) # 80005098 <_Z11printStringPKc>
    8000436c:	0400006f          	j	800043ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	e4850513          	addi	a0,a0,-440 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	d20080e7          	jalr	-736(ra) # 80005098 <_Z11printStringPKc>
    80004380:	00000613          	li	a2,0
    80004384:	00a00593          	li	a1,10
    80004388:	00048513          	mv	a0,s1
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	ebc080e7          	jalr	-324(ra) # 80005248 <_Z8printIntiii>
    80004394:	00005517          	auipc	a0,0x5
    80004398:	d1450513          	addi	a0,a0,-748 # 800090a8 <CONSOLE_STATUS+0x98>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	cfc080e7          	jalr	-772(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800043a4:	0014849b          	addiw	s1,s1,1
    800043a8:	0ff4f493          	andi	s1,s1,255
    800043ac:	00f00793          	li	a5,15
    800043b0:	fc97f0e3          	bgeu	a5,s1,80004370 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	e2c50513          	addi	a0,a0,-468 # 800091e0 <CONSOLE_STATUS+0x1d0>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	cdc080e7          	jalr	-804(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    800043c4:	00100793          	li	a5,1
    800043c8:	00007717          	auipc	a4,0x7
    800043cc:	4cf70c23          	sb	a5,1240(a4) # 8000b8a0 <_ZL9finishedD>
    thread_dispatch();
    800043d0:	ffffd097          	auipc	ra,0xffffd
    800043d4:	f00080e7          	jalr	-256(ra) # 800012d0 <_Z15thread_dispatchv>
}
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	02010113          	addi	sp,sp,32
    800043ec:	00008067          	ret

00000000800043f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800043f0:	fe010113          	addi	sp,sp,-32
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	00813823          	sd	s0,16(sp)
    800043fc:	00913423          	sd	s1,8(sp)
    80004400:	01213023          	sd	s2,0(sp)
    80004404:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004408:	00000493          	li	s1,0
    8000440c:	0400006f          	j	8000444c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004410:	00005517          	auipc	a0,0x5
    80004414:	d7850513          	addi	a0,a0,-648 # 80009188 <CONSOLE_STATUS+0x178>
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	c80080e7          	jalr	-896(ra) # 80005098 <_Z11printStringPKc>
    80004420:	00000613          	li	a2,0
    80004424:	00a00593          	li	a1,10
    80004428:	00048513          	mv	a0,s1
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	e1c080e7          	jalr	-484(ra) # 80005248 <_Z8printIntiii>
    80004434:	00005517          	auipc	a0,0x5
    80004438:	c7450513          	addi	a0,a0,-908 # 800090a8 <CONSOLE_STATUS+0x98>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	c5c080e7          	jalr	-932(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004444:	0014849b          	addiw	s1,s1,1
    80004448:	0ff4f493          	andi	s1,s1,255
    8000444c:	00200793          	li	a5,2
    80004450:	fc97f0e3          	bgeu	a5,s1,80004410 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	d3c50513          	addi	a0,a0,-708 # 80009190 <CONSOLE_STATUS+0x180>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	c3c080e7          	jalr	-964(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004464:	00700313          	li	t1,7
    thread_dispatch();
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	e68080e7          	jalr	-408(ra) # 800012d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004470:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	d2c50513          	addi	a0,a0,-724 # 800091a0 <CONSOLE_STATUS+0x190>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	c1c080e7          	jalr	-996(ra) # 80005098 <_Z11printStringPKc>
    80004484:	00000613          	li	a2,0
    80004488:	00a00593          	li	a1,10
    8000448c:	0009051b          	sext.w	a0,s2
    80004490:	00001097          	auipc	ra,0x1
    80004494:	db8080e7          	jalr	-584(ra) # 80005248 <_Z8printIntiii>
    80004498:	00005517          	auipc	a0,0x5
    8000449c:	c1050513          	addi	a0,a0,-1008 # 800090a8 <CONSOLE_STATUS+0x98>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	bf8080e7          	jalr	-1032(ra) # 80005098 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800044a8:	00c00513          	li	a0,12
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	d88080e7          	jalr	-632(ra) # 80004234 <_ZL9fibonaccim>
    800044b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800044b8:	00005517          	auipc	a0,0x5
    800044bc:	cf050513          	addi	a0,a0,-784 # 800091a8 <CONSOLE_STATUS+0x198>
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	bd8080e7          	jalr	-1064(ra) # 80005098 <_Z11printStringPKc>
    800044c8:	00000613          	li	a2,0
    800044cc:	00a00593          	li	a1,10
    800044d0:	0009051b          	sext.w	a0,s2
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	d74080e7          	jalr	-652(ra) # 80005248 <_Z8printIntiii>
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	bcc50513          	addi	a0,a0,-1076 # 800090a8 <CONSOLE_STATUS+0x98>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	bb4080e7          	jalr	-1100(ra) # 80005098 <_Z11printStringPKc>
    800044ec:	0400006f          	j	8000452c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	c9850513          	addi	a0,a0,-872 # 80009188 <CONSOLE_STATUS+0x178>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	ba0080e7          	jalr	-1120(ra) # 80005098 <_Z11printStringPKc>
    80004500:	00000613          	li	a2,0
    80004504:	00a00593          	li	a1,10
    80004508:	00048513          	mv	a0,s1
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	d3c080e7          	jalr	-708(ra) # 80005248 <_Z8printIntiii>
    80004514:	00005517          	auipc	a0,0x5
    80004518:	b9450513          	addi	a0,a0,-1132 # 800090a8 <CONSOLE_STATUS+0x98>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	b7c080e7          	jalr	-1156(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004524:	0014849b          	addiw	s1,s1,1
    80004528:	0ff4f493          	andi	s1,s1,255
    8000452c:	00500793          	li	a5,5
    80004530:	fc97f0e3          	bgeu	a5,s1,800044f0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004534:	00005517          	auipc	a0,0x5
    80004538:	c2c50513          	addi	a0,a0,-980 # 80009160 <CONSOLE_STATUS+0x150>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	b5c080e7          	jalr	-1188(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    80004544:	00100793          	li	a5,1
    80004548:	00007717          	auipc	a4,0x7
    8000454c:	34f70ca3          	sb	a5,857(a4) # 8000b8a1 <_ZL9finishedC>
    thread_dispatch();
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	d80080e7          	jalr	-640(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80004558:	01813083          	ld	ra,24(sp)
    8000455c:	01013403          	ld	s0,16(sp)
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	00013903          	ld	s2,0(sp)
    80004568:	02010113          	addi	sp,sp,32
    8000456c:	00008067          	ret

0000000080004570 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004570:	fe010113          	addi	sp,sp,-32
    80004574:	00113c23          	sd	ra,24(sp)
    80004578:	00813823          	sd	s0,16(sp)
    8000457c:	00913423          	sd	s1,8(sp)
    80004580:	01213023          	sd	s2,0(sp)
    80004584:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004588:	00000913          	li	s2,0
    8000458c:	0380006f          	j	800045c4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	d40080e7          	jalr	-704(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004598:	00148493          	addi	s1,s1,1
    8000459c:	000027b7          	lui	a5,0x2
    800045a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045a4:	0097ee63          	bltu	a5,s1,800045c0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045a8:	00000713          	li	a4,0
    800045ac:	000077b7          	lui	a5,0x7
    800045b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800045b4:	fce7eee3          	bltu	a5,a4,80004590 <_ZL11workerBodyBPv+0x20>
    800045b8:	00170713          	addi	a4,a4,1
    800045bc:	ff1ff06f          	j	800045ac <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800045c0:	00190913          	addi	s2,s2,1
    800045c4:	00f00793          	li	a5,15
    800045c8:	0527e063          	bltu	a5,s2,80004608 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	ba450513          	addi	a0,a0,-1116 # 80009170 <CONSOLE_STATUS+0x160>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	ac4080e7          	jalr	-1340(ra) # 80005098 <_Z11printStringPKc>
    800045dc:	00000613          	li	a2,0
    800045e0:	00a00593          	li	a1,10
    800045e4:	0009051b          	sext.w	a0,s2
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	c60080e7          	jalr	-928(ra) # 80005248 <_Z8printIntiii>
    800045f0:	00005517          	auipc	a0,0x5
    800045f4:	ab850513          	addi	a0,a0,-1352 # 800090a8 <CONSOLE_STATUS+0x98>
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	aa0080e7          	jalr	-1376(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004600:	00000493          	li	s1,0
    80004604:	f99ff06f          	j	8000459c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004608:	00005517          	auipc	a0,0x5
    8000460c:	b7050513          	addi	a0,a0,-1168 # 80009178 <CONSOLE_STATUS+0x168>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	a88080e7          	jalr	-1400(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    80004618:	00100793          	li	a5,1
    8000461c:	00007717          	auipc	a4,0x7
    80004620:	28f70323          	sb	a5,646(a4) # 8000b8a2 <_ZL9finishedB>
    thread_dispatch();
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	cac080e7          	jalr	-852(ra) # 800012d0 <_Z15thread_dispatchv>
}
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	00013903          	ld	s2,0(sp)
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret

0000000080004644 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00913423          	sd	s1,8(sp)
    80004654:	01213023          	sd	s2,0(sp)
    80004658:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000465c:	00000913          	li	s2,0
    80004660:	0380006f          	j	80004698 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	c6c080e7          	jalr	-916(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000466c:	00148493          	addi	s1,s1,1
    80004670:	000027b7          	lui	a5,0x2
    80004674:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004678:	0097ee63          	bltu	a5,s1,80004694 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000467c:	00000713          	li	a4,0
    80004680:	000077b7          	lui	a5,0x7
    80004684:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004688:	fce7eee3          	bltu	a5,a4,80004664 <_ZL11workerBodyAPv+0x20>
    8000468c:	00170713          	addi	a4,a4,1
    80004690:	ff1ff06f          	j	80004680 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004694:	00190913          	addi	s2,s2,1
    80004698:	00900793          	li	a5,9
    8000469c:	0527e063          	bltu	a5,s2,800046dc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800046a0:	00005517          	auipc	a0,0x5
    800046a4:	ab850513          	addi	a0,a0,-1352 # 80009158 <CONSOLE_STATUS+0x148>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	9f0080e7          	jalr	-1552(ra) # 80005098 <_Z11printStringPKc>
    800046b0:	00000613          	li	a2,0
    800046b4:	00a00593          	li	a1,10
    800046b8:	0009051b          	sext.w	a0,s2
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	b8c080e7          	jalr	-1140(ra) # 80005248 <_Z8printIntiii>
    800046c4:	00005517          	auipc	a0,0x5
    800046c8:	9e450513          	addi	a0,a0,-1564 # 800090a8 <CONSOLE_STATUS+0x98>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	9cc080e7          	jalr	-1588(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046d4:	00000493          	li	s1,0
    800046d8:	f99ff06f          	j	80004670 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	a8450513          	addi	a0,a0,-1404 # 80009160 <CONSOLE_STATUS+0x150>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	9b4080e7          	jalr	-1612(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    800046ec:	00100793          	li	a5,1
    800046f0:	00007717          	auipc	a4,0x7
    800046f4:	1af709a3          	sb	a5,435(a4) # 8000b8a3 <_ZL9finishedA>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004710:	fd010113          	addi	sp,sp,-48
    80004714:	02113423          	sd	ra,40(sp)
    80004718:	02813023          	sd	s0,32(sp)
    8000471c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004720:	00000613          	li	a2,0
    80004724:	00000597          	auipc	a1,0x0
    80004728:	f2058593          	addi	a1,a1,-224 # 80004644 <_ZL11workerBodyAPv>
    8000472c:	fd040513          	addi	a0,s0,-48
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	acc080e7          	jalr	-1332(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	ab850513          	addi	a0,a0,-1352 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	958080e7          	jalr	-1704(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004748:	00000613          	li	a2,0
    8000474c:	00000597          	auipc	a1,0x0
    80004750:	e2458593          	addi	a1,a1,-476 # 80004570 <_ZL11workerBodyBPv>
    80004754:	fd840513          	addi	a0,s0,-40
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	aa4080e7          	jalr	-1372(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	aa850513          	addi	a0,a0,-1368 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	930080e7          	jalr	-1744(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004770:	00000613          	li	a2,0
    80004774:	00000597          	auipc	a1,0x0
    80004778:	c7c58593          	addi	a1,a1,-900 # 800043f0 <_ZL11workerBodyCPv>
    8000477c:	fe040513          	addi	a0,s0,-32
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	a7c080e7          	jalr	-1412(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004788:	00005517          	auipc	a0,0x5
    8000478c:	a9850513          	addi	a0,a0,-1384 # 80009220 <CONSOLE_STATUS+0x210>
    80004790:	00001097          	auipc	ra,0x1
    80004794:	908080e7          	jalr	-1784(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004798:	00000613          	li	a2,0
    8000479c:	00000597          	auipc	a1,0x0
    800047a0:	b0c58593          	addi	a1,a1,-1268 # 800042a8 <_ZL11workerBodyDPv>
    800047a4:	fe840513          	addi	a0,s0,-24
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	a54080e7          	jalr	-1452(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	a8850513          	addi	a0,a0,-1400 # 80009238 <CONSOLE_STATUS+0x228>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	8e0080e7          	jalr	-1824(ra) # 80005098 <_Z11printStringPKc>
    800047c0:	00c0006f          	j	800047cc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	b0c080e7          	jalr	-1268(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800047cc:	00007797          	auipc	a5,0x7
    800047d0:	0d77c783          	lbu	a5,215(a5) # 8000b8a3 <_ZL9finishedA>
    800047d4:	fe0788e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047d8:	00007797          	auipc	a5,0x7
    800047dc:	0ca7c783          	lbu	a5,202(a5) # 8000b8a2 <_ZL9finishedB>
    800047e0:	fe0782e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047e4:	00007797          	auipc	a5,0x7
    800047e8:	0bd7c783          	lbu	a5,189(a5) # 8000b8a1 <_ZL9finishedC>
    800047ec:	fc078ce3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	0b07c783          	lbu	a5,176(a5) # 8000b8a0 <_ZL9finishedD>
    800047f8:	fc0786e3          	beqz	a5,800047c4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800047fc:	02813083          	ld	ra,40(sp)
    80004800:	02013403          	ld	s0,32(sp)
    80004804:	03010113          	addi	sp,sp,48
    80004808:	00008067          	ret

000000008000480c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000480c:	fd010113          	addi	sp,sp,-48
    80004810:	02113423          	sd	ra,40(sp)
    80004814:	02813023          	sd	s0,32(sp)
    80004818:	00913c23          	sd	s1,24(sp)
    8000481c:	01213823          	sd	s2,16(sp)
    80004820:	01313423          	sd	s3,8(sp)
    80004824:	03010413          	addi	s0,sp,48
    80004828:	00050993          	mv	s3,a0
    8000482c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004830:	00000913          	li	s2,0
    80004834:	00c0006f          	j	80004840 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	780080e7          	jalr	1920(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	b90080e7          	jalr	-1136(ra) # 800013d0 <_Z4getcv>
    80004848:	0005059b          	sext.w	a1,a0
    8000484c:	01b00793          	li	a5,27
    80004850:	02f58a63          	beq	a1,a5,80004884 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004854:	0084b503          	ld	a0,8(s1)
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	c64080e7          	jalr	-924(ra) # 800054bc <_ZN9BufferCPP3putEi>
        i++;
    80004860:	0019071b          	addiw	a4,s2,1
    80004864:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004868:	0004a683          	lw	a3,0(s1)
    8000486c:	0026979b          	slliw	a5,a3,0x2
    80004870:	00d787bb          	addw	a5,a5,a3
    80004874:	0017979b          	slliw	a5,a5,0x1
    80004878:	02f767bb          	remw	a5,a4,a5
    8000487c:	fc0792e3          	bnez	a5,80004840 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004880:	fb9ff06f          	j	80004838 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004884:	00100793          	li	a5,1
    80004888:	00007717          	auipc	a4,0x7
    8000488c:	02f72023          	sw	a5,32(a4) # 8000b8a8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004890:	0209b783          	ld	a5,32(s3)
    80004894:	02100593          	li	a1,33
    80004898:	0087b503          	ld	a0,8(a5)
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	c20080e7          	jalr	-992(ra) # 800054bc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800048a4:	0104b503          	ld	a0,16(s1)
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	800080e7          	jalr	-2048(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    800048b0:	02813083          	ld	ra,40(sp)
    800048b4:	02013403          	ld	s0,32(sp)
    800048b8:	01813483          	ld	s1,24(sp)
    800048bc:	01013903          	ld	s2,16(sp)
    800048c0:	00813983          	ld	s3,8(sp)
    800048c4:	03010113          	addi	sp,sp,48
    800048c8:	00008067          	ret

00000000800048cc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	00813823          	sd	s0,16(sp)
    800048d8:	00913423          	sd	s1,8(sp)
    800048dc:	01213023          	sd	s2,0(sp)
    800048e0:	02010413          	addi	s0,sp,32
    800048e4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800048e8:	00000913          	li	s2,0
    800048ec:	00c0006f          	j	800048f8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	6c8080e7          	jalr	1736(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	fb07a783          	lw	a5,-80(a5) # 8000b8a8 <_ZL9threadEnd>
    80004900:	02079e63          	bnez	a5,8000493c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004904:	0004a583          	lw	a1,0(s1)
    80004908:	0305859b          	addiw	a1,a1,48
    8000490c:	0084b503          	ld	a0,8(s1)
    80004910:	00001097          	auipc	ra,0x1
    80004914:	bac080e7          	jalr	-1108(ra) # 800054bc <_ZN9BufferCPP3putEi>
        i++;
    80004918:	0019071b          	addiw	a4,s2,1
    8000491c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004920:	0004a683          	lw	a3,0(s1)
    80004924:	0026979b          	slliw	a5,a3,0x2
    80004928:	00d787bb          	addw	a5,a5,a3
    8000492c:	0017979b          	slliw	a5,a5,0x1
    80004930:	02f767bb          	remw	a5,a4,a5
    80004934:	fc0792e3          	bnez	a5,800048f8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004938:	fb9ff06f          	j	800048f0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000493c:	0104b503          	ld	a0,16(s1)
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	768080e7          	jalr	1896(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	00013903          	ld	s2,0(sp)
    80004958:	02010113          	addi	sp,sp,32
    8000495c:	00008067          	ret

0000000080004960 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004960:	fd010113          	addi	sp,sp,-48
    80004964:	02113423          	sd	ra,40(sp)
    80004968:	02813023          	sd	s0,32(sp)
    8000496c:	00913c23          	sd	s1,24(sp)
    80004970:	01213823          	sd	s2,16(sp)
    80004974:	01313423          	sd	s3,8(sp)
    80004978:	01413023          	sd	s4,0(sp)
    8000497c:	03010413          	addi	s0,sp,48
    80004980:	00050993          	mv	s3,a0
    80004984:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004988:	00000a13          	li	s4,0
    8000498c:	01c0006f          	j	800049a8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	628080e7          	jalr	1576(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    80004998:	0500006f          	j	800049e8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000499c:	00a00513          	li	a0,10
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	a7c080e7          	jalr	-1412(ra) # 8000141c <_Z4putcc>
    while (!threadEnd) {
    800049a8:	00007797          	auipc	a5,0x7
    800049ac:	f007a783          	lw	a5,-256(a5) # 8000b8a8 <_ZL9threadEnd>
    800049b0:	06079263          	bnez	a5,80004a14 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800049b4:	00893503          	ld	a0,8(s2)
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	b94080e7          	jalr	-1132(ra) # 8000554c <_ZN9BufferCPP3getEv>
        i++;
    800049c0:	001a049b          	addiw	s1,s4,1
    800049c4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800049c8:	0ff57513          	andi	a0,a0,255
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	a50080e7          	jalr	-1456(ra) # 8000141c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800049d4:	00092703          	lw	a4,0(s2)
    800049d8:	0027179b          	slliw	a5,a4,0x2
    800049dc:	00e787bb          	addw	a5,a5,a4
    800049e0:	02f4e7bb          	remw	a5,s1,a5
    800049e4:	fa0786e3          	beqz	a5,80004990 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800049e8:	05000793          	li	a5,80
    800049ec:	02f4e4bb          	remw	s1,s1,a5
    800049f0:	fa049ce3          	bnez	s1,800049a8 <_ZN12ConsumerSync8consumerEPv+0x48>
    800049f4:	fa9ff06f          	j	8000499c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800049f8:	0209b783          	ld	a5,32(s3)
    800049fc:	0087b503          	ld	a0,8(a5)
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	b4c080e7          	jalr	-1204(ra) # 8000554c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004a08:	0ff57513          	andi	a0,a0,255
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	78c080e7          	jalr	1932(ra) # 80002198 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004a14:	0209b783          	ld	a5,32(s3)
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	bbc080e7          	jalr	-1092(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    80004a24:	fca04ae3          	bgtz	a0,800049f8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004a28:	01093503          	ld	a0,16(s2)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	67c080e7          	jalr	1660(ra) # 800020a8 <_ZN9Semaphore6signalEv>
}
    80004a34:	02813083          	ld	ra,40(sp)
    80004a38:	02013403          	ld	s0,32(sp)
    80004a3c:	01813483          	ld	s1,24(sp)
    80004a40:	01013903          	ld	s2,16(sp)
    80004a44:	00813983          	ld	s3,8(sp)
    80004a48:	00013a03          	ld	s4,0(sp)
    80004a4c:	03010113          	addi	sp,sp,48
    80004a50:	00008067          	ret

0000000080004a54 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004a54:	f8010113          	addi	sp,sp,-128
    80004a58:	06113c23          	sd	ra,120(sp)
    80004a5c:	06813823          	sd	s0,112(sp)
    80004a60:	06913423          	sd	s1,104(sp)
    80004a64:	07213023          	sd	s2,96(sp)
    80004a68:	05313c23          	sd	s3,88(sp)
    80004a6c:	05413823          	sd	s4,80(sp)
    80004a70:	05513423          	sd	s5,72(sp)
    80004a74:	05613023          	sd	s6,64(sp)
    80004a78:	03713c23          	sd	s7,56(sp)
    80004a7c:	03813823          	sd	s8,48(sp)
    80004a80:	03913423          	sd	s9,40(sp)
    80004a84:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004a88:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a8c:	00004517          	auipc	a0,0x4
    80004a90:	5e450513          	addi	a0,a0,1508 # 80009070 <CONSOLE_STATUS+0x60>
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	604080e7          	jalr	1540(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80004a9c:	01e00593          	li	a1,30
    80004aa0:	f8040493          	addi	s1,s0,-128
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	00000097          	auipc	ra,0x0
    80004aac:	678080e7          	jalr	1656(ra) # 80005120 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	744080e7          	jalr	1860(ra) # 800051f8 <_Z11stringToIntPKc>
    80004abc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004ac0:	00004517          	auipc	a0,0x4
    80004ac4:	5d050513          	addi	a0,a0,1488 # 80009090 <CONSOLE_STATUS+0x80>
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	5d0080e7          	jalr	1488(ra) # 80005098 <_Z11printStringPKc>
    getString(input, 30);
    80004ad0:	01e00593          	li	a1,30
    80004ad4:	00048513          	mv	a0,s1
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	648080e7          	jalr	1608(ra) # 80005120 <_Z9getStringPci>
    n = stringToInt(input);
    80004ae0:	00048513          	mv	a0,s1
    80004ae4:	00000097          	auipc	ra,0x0
    80004ae8:	714080e7          	jalr	1812(ra) # 800051f8 <_Z11stringToIntPKc>
    80004aec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004af0:	00004517          	auipc	a0,0x4
    80004af4:	5c050513          	addi	a0,a0,1472 # 800090b0 <CONSOLE_STATUS+0xa0>
    80004af8:	00000097          	auipc	ra,0x0
    80004afc:	5a0080e7          	jalr	1440(ra) # 80005098 <_Z11printStringPKc>
    80004b00:	00000613          	li	a2,0
    80004b04:	00a00593          	li	a1,10
    80004b08:	00090513          	mv	a0,s2
    80004b0c:	00000097          	auipc	ra,0x0
    80004b10:	73c080e7          	jalr	1852(ra) # 80005248 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004b14:	00004517          	auipc	a0,0x4
    80004b18:	5b450513          	addi	a0,a0,1460 # 800090c8 <CONSOLE_STATUS+0xb8>
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	57c080e7          	jalr	1404(ra) # 80005098 <_Z11printStringPKc>
    80004b24:	00000613          	li	a2,0
    80004b28:	00a00593          	li	a1,10
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	718080e7          	jalr	1816(ra) # 80005248 <_Z8printIntiii>
    printString(".\n");
    80004b38:	00004517          	auipc	a0,0x4
    80004b3c:	5a850513          	addi	a0,a0,1448 # 800090e0 <CONSOLE_STATUS+0xd0>
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	558080e7          	jalr	1368(ra) # 80005098 <_Z11printStringPKc>
    if(threadNum > n) {
    80004b48:	0324c463          	blt	s1,s2,80004b70 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004b4c:	03205c63          	blez	s2,80004b84 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004b50:	03800513          	li	a0,56
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	328080e7          	jalr	808(ra) # 80001e7c <_Znwm>
    80004b5c:	00050a93          	mv	s5,a0
    80004b60:	00048593          	mv	a1,s1
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	804080e7          	jalr	-2044(ra) # 80005368 <_ZN9BufferCPPC1Ei>
    80004b6c:	0300006f          	j	80004b9c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	57850513          	addi	a0,a0,1400 # 800090e8 <CONSOLE_STATUS+0xd8>
    80004b78:	00000097          	auipc	ra,0x0
    80004b7c:	520080e7          	jalr	1312(ra) # 80005098 <_Z11printStringPKc>
        return;
    80004b80:	0140006f          	j	80004b94 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b84:	00004517          	auipc	a0,0x4
    80004b88:	5a450513          	addi	a0,a0,1444 # 80009128 <CONSOLE_STATUS+0x118>
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	50c080e7          	jalr	1292(ra) # 80005098 <_Z11printStringPKc>
        return;
    80004b94:	000b8113          	mv	sp,s7
    80004b98:	2380006f          	j	80004dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004b9c:	01000513          	li	a0,16
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	2dc080e7          	jalr	732(ra) # 80001e7c <_Znwm>
    80004ba8:	00050493          	mv	s1,a0
    80004bac:	00000593          	li	a1,0
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	484080e7          	jalr	1156(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    80004bb8:	00007797          	auipc	a5,0x7
    80004bbc:	ce97bc23          	sd	s1,-776(a5) # 8000b8b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004bc0:	00391793          	slli	a5,s2,0x3
    80004bc4:	00f78793          	addi	a5,a5,15
    80004bc8:	ff07f793          	andi	a5,a5,-16
    80004bcc:	40f10133          	sub	sp,sp,a5
    80004bd0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004bd4:	0019071b          	addiw	a4,s2,1
    80004bd8:	00171793          	slli	a5,a4,0x1
    80004bdc:	00e787b3          	add	a5,a5,a4
    80004be0:	00379793          	slli	a5,a5,0x3
    80004be4:	00f78793          	addi	a5,a5,15
    80004be8:	ff07f793          	andi	a5,a5,-16
    80004bec:	40f10133          	sub	sp,sp,a5
    80004bf0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004bf4:	00191c13          	slli	s8,s2,0x1
    80004bf8:	012c07b3          	add	a5,s8,s2
    80004bfc:	00379793          	slli	a5,a5,0x3
    80004c00:	00fa07b3          	add	a5,s4,a5
    80004c04:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c08:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004c0c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004c10:	02800513          	li	a0,40
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	268080e7          	jalr	616(ra) # 80001e7c <_Znwm>
    80004c1c:	00050b13          	mv	s6,a0
    80004c20:	012c0c33          	add	s8,s8,s2
    80004c24:	003c1c13          	slli	s8,s8,0x3
    80004c28:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	3e0080e7          	jalr	992(ra) # 8000200c <_ZN6ThreadC1Ev>
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	b5478793          	addi	a5,a5,-1196 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004c3c:	00fb3023          	sd	a5,0(s6)
    80004c40:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004c44:	000b0513          	mv	a0,s6
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	340080e7          	jalr	832(ra) # 80001f88 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c50:	00000493          	li	s1,0
    80004c54:	0380006f          	j	80004c8c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004c58:	00007797          	auipc	a5,0x7
    80004c5c:	b0878793          	addi	a5,a5,-1272 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004c60:	00fcb023          	sd	a5,0(s9)
    80004c64:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004c68:	00349793          	slli	a5,s1,0x3
    80004c6c:	00f987b3          	add	a5,s3,a5
    80004c70:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004c74:	00349793          	slli	a5,s1,0x3
    80004c78:	00f987b3          	add	a5,s3,a5
    80004c7c:	0007b503          	ld	a0,0(a5)
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	308080e7          	jalr	776(ra) # 80001f88 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004c88:	0014849b          	addiw	s1,s1,1
    80004c8c:	0b24d063          	bge	s1,s2,80004d2c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004c90:	00149793          	slli	a5,s1,0x1
    80004c94:	009787b3          	add	a5,a5,s1
    80004c98:	00379793          	slli	a5,a5,0x3
    80004c9c:	00fa07b3          	add	a5,s4,a5
    80004ca0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004ca4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004ca8:	00007717          	auipc	a4,0x7
    80004cac:	c0873703          	ld	a4,-1016(a4) # 8000b8b0 <_ZL10waitForAll>
    80004cb0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004cb4:	02905863          	blez	s1,80004ce4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004cb8:	02800513          	li	a0,40
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	1c0080e7          	jalr	448(ra) # 80001e7c <_Znwm>
    80004cc4:	00050c93          	mv	s9,a0
    80004cc8:	00149c13          	slli	s8,s1,0x1
    80004ccc:	009c0c33          	add	s8,s8,s1
    80004cd0:	003c1c13          	slli	s8,s8,0x3
    80004cd4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	334080e7          	jalr	820(ra) # 8000200c <_ZN6ThreadC1Ev>
    80004ce0:	f79ff06f          	j	80004c58 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ce4:	02800513          	li	a0,40
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	194080e7          	jalr	404(ra) # 80001e7c <_Znwm>
    80004cf0:	00050c93          	mv	s9,a0
    80004cf4:	00149c13          	slli	s8,s1,0x1
    80004cf8:	009c0c33          	add	s8,s8,s1
    80004cfc:	003c1c13          	slli	s8,s8,0x3
    80004d00:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	308080e7          	jalr	776(ra) # 8000200c <_ZN6ThreadC1Ev>
    80004d0c:	00007797          	auipc	a5,0x7
    80004d10:	a2c78793          	addi	a5,a5,-1492 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004d14:	00fcb023          	sd	a5,0(s9)
    80004d18:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004d1c:	00349793          	slli	a5,s1,0x3
    80004d20:	00f987b3          	add	a5,s3,a5
    80004d24:	0197b023          	sd	s9,0(a5)
    80004d28:	f4dff06f          	j	80004c74 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	28c080e7          	jalr	652(ra) # 80001fb8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d34:	00000493          	li	s1,0
    80004d38:	00994e63          	blt	s2,s1,80004d54 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004d3c:	00007517          	auipc	a0,0x7
    80004d40:	b7453503          	ld	a0,-1164(a0) # 8000b8b0 <_ZL10waitForAll>
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	32c080e7          	jalr	812(ra) # 80002070 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004d4c:	0014849b          	addiw	s1,s1,1
    80004d50:	fe9ff06f          	j	80004d38 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004d54:	00000493          	li	s1,0
    80004d58:	0080006f          	j	80004d60 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004d5c:	0014849b          	addiw	s1,s1,1
    80004d60:	0324d263          	bge	s1,s2,80004d84 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004d64:	00349793          	slli	a5,s1,0x3
    80004d68:	00f987b3          	add	a5,s3,a5
    80004d6c:	0007b503          	ld	a0,0(a5)
    80004d70:	fe0506e3          	beqz	a0,80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004d74:	00053783          	ld	a5,0(a0)
    80004d78:	0087b783          	ld	a5,8(a5)
    80004d7c:	000780e7          	jalr	a5
    80004d80:	fddff06f          	j	80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004d84:	000b0a63          	beqz	s6,80004d98 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004d88:	000b3783          	ld	a5,0(s6)
    80004d8c:	0087b783          	ld	a5,8(a5)
    80004d90:	000b0513          	mv	a0,s6
    80004d94:	000780e7          	jalr	a5
    delete waitForAll;
    80004d98:	00007517          	auipc	a0,0x7
    80004d9c:	b1853503          	ld	a0,-1256(a0) # 8000b8b0 <_ZL10waitForAll>
    80004da0:	00050863          	beqz	a0,80004db0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004da4:	00053783          	ld	a5,0(a0)
    80004da8:	0087b783          	ld	a5,8(a5)
    80004dac:	000780e7          	jalr	a5
    delete buffer;
    80004db0:	000a8e63          	beqz	s5,80004dcc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004db4:	000a8513          	mv	a0,s5
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	8a8080e7          	jalr	-1880(ra) # 80005660 <_ZN9BufferCPPD1Ev>
    80004dc0:	000a8513          	mv	a0,s5
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	0e0080e7          	jalr	224(ra) # 80001ea4 <_ZdlPv>
    80004dcc:	000b8113          	mv	sp,s7

}
    80004dd0:	f8040113          	addi	sp,s0,-128
    80004dd4:	07813083          	ld	ra,120(sp)
    80004dd8:	07013403          	ld	s0,112(sp)
    80004ddc:	06813483          	ld	s1,104(sp)
    80004de0:	06013903          	ld	s2,96(sp)
    80004de4:	05813983          	ld	s3,88(sp)
    80004de8:	05013a03          	ld	s4,80(sp)
    80004dec:	04813a83          	ld	s5,72(sp)
    80004df0:	04013b03          	ld	s6,64(sp)
    80004df4:	03813b83          	ld	s7,56(sp)
    80004df8:	03013c03          	ld	s8,48(sp)
    80004dfc:	02813c83          	ld	s9,40(sp)
    80004e00:	08010113          	addi	sp,sp,128
    80004e04:	00008067          	ret
    80004e08:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004e0c:	000a8513          	mv	a0,s5
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	094080e7          	jalr	148(ra) # 80001ea4 <_ZdlPv>
    80004e18:	00048513          	mv	a0,s1
    80004e1c:	00008097          	auipc	ra,0x8
    80004e20:	b7c080e7          	jalr	-1156(ra) # 8000c998 <_Unwind_Resume>
    80004e24:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	078080e7          	jalr	120(ra) # 80001ea4 <_ZdlPv>
    80004e34:	00090513          	mv	a0,s2
    80004e38:	00008097          	auipc	ra,0x8
    80004e3c:	b60080e7          	jalr	-1184(ra) # 8000c998 <_Unwind_Resume>
    80004e40:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004e44:	000b0513          	mv	a0,s6
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	05c080e7          	jalr	92(ra) # 80001ea4 <_ZdlPv>
    80004e50:	00048513          	mv	a0,s1
    80004e54:	00008097          	auipc	ra,0x8
    80004e58:	b44080e7          	jalr	-1212(ra) # 8000c998 <_Unwind_Resume>
    80004e5c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004e60:	000c8513          	mv	a0,s9
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	040080e7          	jalr	64(ra) # 80001ea4 <_ZdlPv>
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00008097          	auipc	ra,0x8
    80004e74:	b28080e7          	jalr	-1240(ra) # 8000c998 <_Unwind_Resume>
    80004e78:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004e7c:	000c8513          	mv	a0,s9
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	024080e7          	jalr	36(ra) # 80001ea4 <_ZdlPv>
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	00008097          	auipc	ra,0x8
    80004e90:	b0c080e7          	jalr	-1268(ra) # 8000c998 <_Unwind_Resume>

0000000080004e94 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004e94:	ff010113          	addi	sp,sp,-16
    80004e98:	00113423          	sd	ra,8(sp)
    80004e9c:	00813023          	sd	s0,0(sp)
    80004ea0:	01010413          	addi	s0,sp,16
    80004ea4:	00007797          	auipc	a5,0x7
    80004ea8:	8e478793          	addi	a5,a5,-1820 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004eac:	00f53023          	sd	a5,0(a0)
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	f34080e7          	jalr	-204(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004eb8:	00813083          	ld	ra,8(sp)
    80004ebc:	00013403          	ld	s0,0(sp)
    80004ec0:	01010113          	addi	sp,sp,16
    80004ec4:	00008067          	ret

0000000080004ec8 <_ZN12ConsumerSyncD0Ev>:
    80004ec8:	fe010113          	addi	sp,sp,-32
    80004ecc:	00113c23          	sd	ra,24(sp)
    80004ed0:	00813823          	sd	s0,16(sp)
    80004ed4:	00913423          	sd	s1,8(sp)
    80004ed8:	02010413          	addi	s0,sp,32
    80004edc:	00050493          	mv	s1,a0
    80004ee0:	00007797          	auipc	a5,0x7
    80004ee4:	8a878793          	addi	a5,a5,-1880 # 8000b788 <_ZTV12ConsumerSync+0x10>
    80004ee8:	00f53023          	sd	a5,0(a0)
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	ef8080e7          	jalr	-264(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	fac080e7          	jalr	-84(ra) # 80001ea4 <_ZdlPv>
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004f14:	ff010113          	addi	sp,sp,-16
    80004f18:	00113423          	sd	ra,8(sp)
    80004f1c:	00813023          	sd	s0,0(sp)
    80004f20:	01010413          	addi	s0,sp,16
    80004f24:	00007797          	auipc	a5,0x7
    80004f28:	83c78793          	addi	a5,a5,-1988 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004f2c:	00f53023          	sd	a5,0(a0)
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	eb4080e7          	jalr	-332(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004f38:	00813083          	ld	ra,8(sp)
    80004f3c:	00013403          	ld	s0,0(sp)
    80004f40:	01010113          	addi	sp,sp,16
    80004f44:	00008067          	ret

0000000080004f48 <_ZN12ProducerSyncD0Ev>:
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	00050493          	mv	s1,a0
    80004f60:	00007797          	auipc	a5,0x7
    80004f64:	80078793          	addi	a5,a5,-2048 # 8000b760 <_ZTV12ProducerSync+0x10>
    80004f68:	00f53023          	sd	a5,0(a0)
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	e78080e7          	jalr	-392(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004f74:	00048513          	mv	a0,s1
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	f2c080e7          	jalr	-212(ra) # 80001ea4 <_ZdlPv>
    80004f80:	01813083          	ld	ra,24(sp)
    80004f84:	01013403          	ld	s0,16(sp)
    80004f88:	00813483          	ld	s1,8(sp)
    80004f8c:	02010113          	addi	sp,sp,32
    80004f90:	00008067          	ret

0000000080004f94 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004f94:	ff010113          	addi	sp,sp,-16
    80004f98:	00113423          	sd	ra,8(sp)
    80004f9c:	00813023          	sd	s0,0(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	00006797          	auipc	a5,0x6
    80004fa8:	79478793          	addi	a5,a5,1940 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004fac:	00f53023          	sd	a5,0(a0)
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	e34080e7          	jalr	-460(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004fb8:	00813083          	ld	ra,8(sp)
    80004fbc:	00013403          	ld	s0,0(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret

0000000080004fc8 <_ZN16ProducerKeyboardD0Ev>:
    80004fc8:	fe010113          	addi	sp,sp,-32
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00913423          	sd	s1,8(sp)
    80004fd8:	02010413          	addi	s0,sp,32
    80004fdc:	00050493          	mv	s1,a0
    80004fe0:	00006797          	auipc	a5,0x6
    80004fe4:	75878793          	addi	a5,a5,1880 # 8000b738 <_ZTV16ProducerKeyboard+0x10>
    80004fe8:	00f53023          	sd	a5,0(a0)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	df8080e7          	jalr	-520(ra) # 80001de4 <_ZN6ThreadD1Ev>
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	eac080e7          	jalr	-340(ra) # 80001ea4 <_ZdlPv>
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005014:	ff010113          	addi	sp,sp,-16
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	00813023          	sd	s0,0(sp)
    80005020:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005024:	02053583          	ld	a1,32(a0)
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	7e4080e7          	jalr	2020(ra) # 8000480c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret

0000000080005040 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005040:	ff010113          	addi	sp,sp,-16
    80005044:	00113423          	sd	ra,8(sp)
    80005048:	00813023          	sd	s0,0(sp)
    8000504c:	01010413          	addi	s0,sp,16
        producer(td);
    80005050:	02053583          	ld	a1,32(a0)
    80005054:	00000097          	auipc	ra,0x0
    80005058:	878080e7          	jalr	-1928(ra) # 800048cc <_ZN12ProducerSync8producerEPv>
    }
    8000505c:	00813083          	ld	ra,8(sp)
    80005060:	00013403          	ld	s0,0(sp)
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret

000000008000506c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00113423          	sd	ra,8(sp)
    80005074:	00813023          	sd	s0,0(sp)
    80005078:	01010413          	addi	s0,sp,16
        consumer(td);
    8000507c:	02053583          	ld	a1,32(a0)
    80005080:	00000097          	auipc	ra,0x0
    80005084:	8e0080e7          	jalr	-1824(ra) # 80004960 <_ZN12ConsumerSync8consumerEPv>
    }
    80005088:	00813083          	ld	ra,8(sp)
    8000508c:	00013403          	ld	s0,0(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	02010413          	addi	s0,sp,32
    800050ac:	00050493          	mv	s1,a0
    LOCK();
    800050b0:	00100613          	li	a2,1
    800050b4:	00000593          	li	a1,0
    800050b8:	00007517          	auipc	a0,0x7
    800050bc:	80050513          	addi	a0,a0,-2048 # 8000b8b8 <lockPrint>
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	060080e7          	jalr	96(ra) # 80001120 <copy_and_swap>
    800050c8:	00050863          	beqz	a0,800050d8 <_Z11printStringPKc+0x40>
    800050cc:	ffffc097          	auipc	ra,0xffffc
    800050d0:	204080e7          	jalr	516(ra) # 800012d0 <_Z15thread_dispatchv>
    800050d4:	fddff06f          	j	800050b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800050d8:	0004c503          	lbu	a0,0(s1)
    800050dc:	00050a63          	beqz	a0,800050f0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	33c080e7          	jalr	828(ra) # 8000141c <_Z4putcc>
        string++;
    800050e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800050ec:	fedff06f          	j	800050d8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800050f0:	00000613          	li	a2,0
    800050f4:	00100593          	li	a1,1
    800050f8:	00006517          	auipc	a0,0x6
    800050fc:	7c050513          	addi	a0,a0,1984 # 8000b8b8 <lockPrint>
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	020080e7          	jalr	32(ra) # 80001120 <copy_and_swap>
    80005108:	fe0514e3          	bnez	a0,800050f0 <_Z11printStringPKc+0x58>
}
    8000510c:	01813083          	ld	ra,24(sp)
    80005110:	01013403          	ld	s0,16(sp)
    80005114:	00813483          	ld	s1,8(sp)
    80005118:	02010113          	addi	sp,sp,32
    8000511c:	00008067          	ret

0000000080005120 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005120:	fd010113          	addi	sp,sp,-48
    80005124:	02113423          	sd	ra,40(sp)
    80005128:	02813023          	sd	s0,32(sp)
    8000512c:	00913c23          	sd	s1,24(sp)
    80005130:	01213823          	sd	s2,16(sp)
    80005134:	01313423          	sd	s3,8(sp)
    80005138:	01413023          	sd	s4,0(sp)
    8000513c:	03010413          	addi	s0,sp,48
    80005140:	00050993          	mv	s3,a0
    80005144:	00058a13          	mv	s4,a1
    LOCK();
    80005148:	00100613          	li	a2,1
    8000514c:	00000593          	li	a1,0
    80005150:	00006517          	auipc	a0,0x6
    80005154:	76850513          	addi	a0,a0,1896 # 8000b8b8 <lockPrint>
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	fc8080e7          	jalr	-56(ra) # 80001120 <copy_and_swap>
    80005160:	00050863          	beqz	a0,80005170 <_Z9getStringPci+0x50>
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	16c080e7          	jalr	364(ra) # 800012d0 <_Z15thread_dispatchv>
    8000516c:	fddff06f          	j	80005148 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005170:	00000913          	li	s2,0
    80005174:	00090493          	mv	s1,s2
    80005178:	0019091b          	addiw	s2,s2,1
    8000517c:	03495a63          	bge	s2,s4,800051b0 <_Z9getStringPci+0x90>
        cc = getc();
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	250080e7          	jalr	592(ra) # 800013d0 <_Z4getcv>
        if(cc < 1)
    80005188:	02050463          	beqz	a0,800051b0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000518c:	009984b3          	add	s1,s3,s1
    80005190:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005194:	00a00793          	li	a5,10
    80005198:	00f50a63          	beq	a0,a5,800051ac <_Z9getStringPci+0x8c>
    8000519c:	00d00793          	li	a5,13
    800051a0:	fcf51ae3          	bne	a0,a5,80005174 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800051a4:	00090493          	mv	s1,s2
    800051a8:	0080006f          	j	800051b0 <_Z9getStringPci+0x90>
    800051ac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800051b0:	009984b3          	add	s1,s3,s1
    800051b4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800051b8:	00000613          	li	a2,0
    800051bc:	00100593          	li	a1,1
    800051c0:	00006517          	auipc	a0,0x6
    800051c4:	6f850513          	addi	a0,a0,1784 # 8000b8b8 <lockPrint>
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	f58080e7          	jalr	-168(ra) # 80001120 <copy_and_swap>
    800051d0:	fe0514e3          	bnez	a0,800051b8 <_Z9getStringPci+0x98>
    return buf;
}
    800051d4:	00098513          	mv	a0,s3
    800051d8:	02813083          	ld	ra,40(sp)
    800051dc:	02013403          	ld	s0,32(sp)
    800051e0:	01813483          	ld	s1,24(sp)
    800051e4:	01013903          	ld	s2,16(sp)
    800051e8:	00813983          	ld	s3,8(sp)
    800051ec:	00013a03          	ld	s4,0(sp)
    800051f0:	03010113          	addi	sp,sp,48
    800051f4:	00008067          	ret

00000000800051f8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800051f8:	ff010113          	addi	sp,sp,-16
    800051fc:	00813423          	sd	s0,8(sp)
    80005200:	01010413          	addi	s0,sp,16
    80005204:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005208:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000520c:	0006c603          	lbu	a2,0(a3)
    80005210:	fd06071b          	addiw	a4,a2,-48
    80005214:	0ff77713          	andi	a4,a4,255
    80005218:	00900793          	li	a5,9
    8000521c:	02e7e063          	bltu	a5,a4,8000523c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005220:	0025179b          	slliw	a5,a0,0x2
    80005224:	00a787bb          	addw	a5,a5,a0
    80005228:	0017979b          	slliw	a5,a5,0x1
    8000522c:	00168693          	addi	a3,a3,1
    80005230:	00c787bb          	addw	a5,a5,a2
    80005234:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005238:	fd5ff06f          	j	8000520c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000523c:	00813403          	ld	s0,8(sp)
    80005240:	01010113          	addi	sp,sp,16
    80005244:	00008067          	ret

0000000080005248 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005248:	fc010113          	addi	sp,sp,-64
    8000524c:	02113c23          	sd	ra,56(sp)
    80005250:	02813823          	sd	s0,48(sp)
    80005254:	02913423          	sd	s1,40(sp)
    80005258:	03213023          	sd	s2,32(sp)
    8000525c:	01313c23          	sd	s3,24(sp)
    80005260:	04010413          	addi	s0,sp,64
    80005264:	00050493          	mv	s1,a0
    80005268:	00058913          	mv	s2,a1
    8000526c:	00060993          	mv	s3,a2
    LOCK();
    80005270:	00100613          	li	a2,1
    80005274:	00000593          	li	a1,0
    80005278:	00006517          	auipc	a0,0x6
    8000527c:	64050513          	addi	a0,a0,1600 # 8000b8b8 <lockPrint>
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	ea0080e7          	jalr	-352(ra) # 80001120 <copy_and_swap>
    80005288:	00050863          	beqz	a0,80005298 <_Z8printIntiii+0x50>
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	044080e7          	jalr	68(ra) # 800012d0 <_Z15thread_dispatchv>
    80005294:	fddff06f          	j	80005270 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005298:	00098463          	beqz	s3,800052a0 <_Z8printIntiii+0x58>
    8000529c:	0804c463          	bltz	s1,80005324 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800052a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800052a4:	00000593          	li	a1,0
    }

    i = 0;
    800052a8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800052ac:	0009079b          	sext.w	a5,s2
    800052b0:	0325773b          	remuw	a4,a0,s2
    800052b4:	00048613          	mv	a2,s1
    800052b8:	0014849b          	addiw	s1,s1,1
    800052bc:	02071693          	slli	a3,a4,0x20
    800052c0:	0206d693          	srli	a3,a3,0x20
    800052c4:	00006717          	auipc	a4,0x6
    800052c8:	4dc70713          	addi	a4,a4,1244 # 8000b7a0 <digits>
    800052cc:	00d70733          	add	a4,a4,a3
    800052d0:	00074683          	lbu	a3,0(a4)
    800052d4:	fd040713          	addi	a4,s0,-48
    800052d8:	00c70733          	add	a4,a4,a2
    800052dc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800052e0:	0005071b          	sext.w	a4,a0
    800052e4:	0325553b          	divuw	a0,a0,s2
    800052e8:	fcf772e3          	bgeu	a4,a5,800052ac <_Z8printIntiii+0x64>
    if(neg)
    800052ec:	00058c63          	beqz	a1,80005304 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800052f0:	fd040793          	addi	a5,s0,-48
    800052f4:	009784b3          	add	s1,a5,s1
    800052f8:	02d00793          	li	a5,45
    800052fc:	fef48823          	sb	a5,-16(s1)
    80005300:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005304:	fff4849b          	addiw	s1,s1,-1
    80005308:	0204c463          	bltz	s1,80005330 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000530c:	fd040793          	addi	a5,s0,-48
    80005310:	009787b3          	add	a5,a5,s1
    80005314:	ff07c503          	lbu	a0,-16(a5)
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	104080e7          	jalr	260(ra) # 8000141c <_Z4putcc>
    80005320:	fe5ff06f          	j	80005304 <_Z8printIntiii+0xbc>
        x = -xx;
    80005324:	4090053b          	negw	a0,s1
        neg = 1;
    80005328:	00100593          	li	a1,1
        x = -xx;
    8000532c:	f7dff06f          	j	800052a8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005330:	00000613          	li	a2,0
    80005334:	00100593          	li	a1,1
    80005338:	00006517          	auipc	a0,0x6
    8000533c:	58050513          	addi	a0,a0,1408 # 8000b8b8 <lockPrint>
    80005340:	ffffc097          	auipc	ra,0xffffc
    80005344:	de0080e7          	jalr	-544(ra) # 80001120 <copy_and_swap>
    80005348:	fe0514e3          	bnez	a0,80005330 <_Z8printIntiii+0xe8>
    8000534c:	03813083          	ld	ra,56(sp)
    80005350:	03013403          	ld	s0,48(sp)
    80005354:	02813483          	ld	s1,40(sp)
    80005358:	02013903          	ld	s2,32(sp)
    8000535c:	01813983          	ld	s3,24(sp)
    80005360:	04010113          	addi	sp,sp,64
    80005364:	00008067          	ret

0000000080005368 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005368:	fd010113          	addi	sp,sp,-48
    8000536c:	02113423          	sd	ra,40(sp)
    80005370:	02813023          	sd	s0,32(sp)
    80005374:	00913c23          	sd	s1,24(sp)
    80005378:	01213823          	sd	s2,16(sp)
    8000537c:	01313423          	sd	s3,8(sp)
    80005380:	03010413          	addi	s0,sp,48
    80005384:	00050493          	mv	s1,a0
    80005388:	00058913          	mv	s2,a1
    8000538c:	0015879b          	addiw	a5,a1,1
    80005390:	0007851b          	sext.w	a0,a5
    80005394:	00f4a023          	sw	a5,0(s1)
    80005398:	0004a823          	sw	zero,16(s1)
    8000539c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800053a0:	00251513          	slli	a0,a0,0x2
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	db8080e7          	jalr	-584(ra) # 8000115c <_Z9mem_allocm>
    800053ac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800053b0:	01000513          	li	a0,16
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	ac8080e7          	jalr	-1336(ra) # 80001e7c <_Znwm>
    800053bc:	00050993          	mv	s3,a0
    800053c0:	00000593          	li	a1,0
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	c70080e7          	jalr	-912(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    800053cc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800053d0:	01000513          	li	a0,16
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	aa8080e7          	jalr	-1368(ra) # 80001e7c <_Znwm>
    800053dc:	00050993          	mv	s3,a0
    800053e0:	00090593          	mv	a1,s2
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	c50080e7          	jalr	-944(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    800053ec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800053f0:	01000513          	li	a0,16
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	a88080e7          	jalr	-1400(ra) # 80001e7c <_Znwm>
    800053fc:	00050913          	mv	s2,a0
    80005400:	00100593          	li	a1,1
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	c30080e7          	jalr	-976(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    8000540c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005410:	01000513          	li	a0,16
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	a68080e7          	jalr	-1432(ra) # 80001e7c <_Znwm>
    8000541c:	00050913          	mv	s2,a0
    80005420:	00100593          	li	a1,1
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	c10080e7          	jalr	-1008(ra) # 80002034 <_ZN9SemaphoreC1Ej>
    8000542c:	0324b823          	sd	s2,48(s1)
}
    80005430:	02813083          	ld	ra,40(sp)
    80005434:	02013403          	ld	s0,32(sp)
    80005438:	01813483          	ld	s1,24(sp)
    8000543c:	01013903          	ld	s2,16(sp)
    80005440:	00813983          	ld	s3,8(sp)
    80005444:	03010113          	addi	sp,sp,48
    80005448:	00008067          	ret
    8000544c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005450:	00098513          	mv	a0,s3
    80005454:	ffffd097          	auipc	ra,0xffffd
    80005458:	a50080e7          	jalr	-1456(ra) # 80001ea4 <_ZdlPv>
    8000545c:	00048513          	mv	a0,s1
    80005460:	00007097          	auipc	ra,0x7
    80005464:	538080e7          	jalr	1336(ra) # 8000c998 <_Unwind_Resume>
    80005468:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000546c:	00098513          	mv	a0,s3
    80005470:	ffffd097          	auipc	ra,0xffffd
    80005474:	a34080e7          	jalr	-1484(ra) # 80001ea4 <_ZdlPv>
    80005478:	00048513          	mv	a0,s1
    8000547c:	00007097          	auipc	ra,0x7
    80005480:	51c080e7          	jalr	1308(ra) # 8000c998 <_Unwind_Resume>
    80005484:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005488:	00090513          	mv	a0,s2
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	a18080e7          	jalr	-1512(ra) # 80001ea4 <_ZdlPv>
    80005494:	00048513          	mv	a0,s1
    80005498:	00007097          	auipc	ra,0x7
    8000549c:	500080e7          	jalr	1280(ra) # 8000c998 <_Unwind_Resume>
    800054a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800054a4:	00090513          	mv	a0,s2
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	9fc080e7          	jalr	-1540(ra) # 80001ea4 <_ZdlPv>
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00007097          	auipc	ra,0x7
    800054b8:	4e4080e7          	jalr	1252(ra) # 8000c998 <_Unwind_Resume>

00000000800054bc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00113c23          	sd	ra,24(sp)
    800054c4:	00813823          	sd	s0,16(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	01213023          	sd	s2,0(sp)
    800054d0:	02010413          	addi	s0,sp,32
    800054d4:	00050493          	mv	s1,a0
    800054d8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800054dc:	01853503          	ld	a0,24(a0)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	b90080e7          	jalr	-1136(ra) # 80002070 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800054e8:	0304b503          	ld	a0,48(s1)
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	b84080e7          	jalr	-1148(ra) # 80002070 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800054f4:	0084b783          	ld	a5,8(s1)
    800054f8:	0144a703          	lw	a4,20(s1)
    800054fc:	00271713          	slli	a4,a4,0x2
    80005500:	00e787b3          	add	a5,a5,a4
    80005504:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005508:	0144a783          	lw	a5,20(s1)
    8000550c:	0017879b          	addiw	a5,a5,1
    80005510:	0004a703          	lw	a4,0(s1)
    80005514:	02e7e7bb          	remw	a5,a5,a4
    80005518:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000551c:	0304b503          	ld	a0,48(s1)
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	b88080e7          	jalr	-1144(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005528:	0204b503          	ld	a0,32(s1)
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	b7c080e7          	jalr	-1156(ra) # 800020a8 <_ZN9Semaphore6signalEv>

}
    80005534:	01813083          	ld	ra,24(sp)
    80005538:	01013403          	ld	s0,16(sp)
    8000553c:	00813483          	ld	s1,8(sp)
    80005540:	00013903          	ld	s2,0(sp)
    80005544:	02010113          	addi	sp,sp,32
    80005548:	00008067          	ret

000000008000554c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000554c:	fe010113          	addi	sp,sp,-32
    80005550:	00113c23          	sd	ra,24(sp)
    80005554:	00813823          	sd	s0,16(sp)
    80005558:	00913423          	sd	s1,8(sp)
    8000555c:	01213023          	sd	s2,0(sp)
    80005560:	02010413          	addi	s0,sp,32
    80005564:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005568:	02053503          	ld	a0,32(a0)
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	b04080e7          	jalr	-1276(ra) # 80002070 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005574:	0284b503          	ld	a0,40(s1)
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	af8080e7          	jalr	-1288(ra) # 80002070 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005580:	0084b703          	ld	a4,8(s1)
    80005584:	0104a783          	lw	a5,16(s1)
    80005588:	00279693          	slli	a3,a5,0x2
    8000558c:	00d70733          	add	a4,a4,a3
    80005590:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005594:	0017879b          	addiw	a5,a5,1
    80005598:	0004a703          	lw	a4,0(s1)
    8000559c:	02e7e7bb          	remw	a5,a5,a4
    800055a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800055a4:	0284b503          	ld	a0,40(s1)
    800055a8:	ffffd097          	auipc	ra,0xffffd
    800055ac:	b00080e7          	jalr	-1280(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800055b0:	0184b503          	ld	a0,24(s1)
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	af4080e7          	jalr	-1292(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800055bc:	00090513          	mv	a0,s2
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	01013403          	ld	s0,16(sp)
    800055c8:	00813483          	ld	s1,8(sp)
    800055cc:	00013903          	ld	s2,0(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret

00000000800055d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800055d8:	fe010113          	addi	sp,sp,-32
    800055dc:	00113c23          	sd	ra,24(sp)
    800055e0:	00813823          	sd	s0,16(sp)
    800055e4:	00913423          	sd	s1,8(sp)
    800055e8:	01213023          	sd	s2,0(sp)
    800055ec:	02010413          	addi	s0,sp,32
    800055f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800055f4:	02853503          	ld	a0,40(a0)
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	a78080e7          	jalr	-1416(ra) # 80002070 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005600:	0304b503          	ld	a0,48(s1)
    80005604:	ffffd097          	auipc	ra,0xffffd
    80005608:	a6c080e7          	jalr	-1428(ra) # 80002070 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000560c:	0144a783          	lw	a5,20(s1)
    80005610:	0104a903          	lw	s2,16(s1)
    80005614:	0327ce63          	blt	a5,s2,80005650 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005618:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000561c:	0304b503          	ld	a0,48(s1)
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	a88080e7          	jalr	-1400(ra) # 800020a8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005628:	0284b503          	ld	a0,40(s1)
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	a7c080e7          	jalr	-1412(ra) # 800020a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005634:	00090513          	mv	a0,s2
    80005638:	01813083          	ld	ra,24(sp)
    8000563c:	01013403          	ld	s0,16(sp)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	00013903          	ld	s2,0(sp)
    80005648:	02010113          	addi	sp,sp,32
    8000564c:	00008067          	ret
        ret = cap - head + tail;
    80005650:	0004a703          	lw	a4,0(s1)
    80005654:	4127093b          	subw	s2,a4,s2
    80005658:	00f9093b          	addw	s2,s2,a5
    8000565c:	fc1ff06f          	j	8000561c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005660 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	02010413          	addi	s0,sp,32
    80005674:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005678:	00a00513          	li	a0,10
    8000567c:	ffffd097          	auipc	ra,0xffffd
    80005680:	b1c080e7          	jalr	-1252(ra) # 80002198 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005684:	00004517          	auipc	a0,0x4
    80005688:	bcc50513          	addi	a0,a0,-1076 # 80009250 <CONSOLE_STATUS+0x240>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	a0c080e7          	jalr	-1524(ra) # 80005098 <_Z11printStringPKc>
    while (getCnt()) {
    80005694:	00048513          	mv	a0,s1
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	f40080e7          	jalr	-192(ra) # 800055d8 <_ZN9BufferCPP6getCntEv>
    800056a0:	02050c63          	beqz	a0,800056d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800056a4:	0084b783          	ld	a5,8(s1)
    800056a8:	0104a703          	lw	a4,16(s1)
    800056ac:	00271713          	slli	a4,a4,0x2
    800056b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800056b4:	0007c503          	lbu	a0,0(a5)
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	ae0080e7          	jalr	-1312(ra) # 80002198 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800056c0:	0104a783          	lw	a5,16(s1)
    800056c4:	0017879b          	addiw	a5,a5,1
    800056c8:	0004a703          	lw	a4,0(s1)
    800056cc:	02e7e7bb          	remw	a5,a5,a4
    800056d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800056d4:	fc1ff06f          	j	80005694 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800056d8:	02100513          	li	a0,33
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	abc080e7          	jalr	-1348(ra) # 80002198 <_ZN7Console4putcEc>
    Console::putc('\n');
    800056e4:	00a00513          	li	a0,10
    800056e8:	ffffd097          	auipc	ra,0xffffd
    800056ec:	ab0080e7          	jalr	-1360(ra) # 80002198 <_ZN7Console4putcEc>
    mem_free(buffer);
    800056f0:	0084b503          	ld	a0,8(s1)
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	abc080e7          	jalr	-1348(ra) # 800011b0 <_Z8mem_freePv>
    delete itemAvailable;
    800056fc:	0204b503          	ld	a0,32(s1)
    80005700:	00050863          	beqz	a0,80005710 <_ZN9BufferCPPD1Ev+0xb0>
    80005704:	00053783          	ld	a5,0(a0)
    80005708:	0087b783          	ld	a5,8(a5)
    8000570c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005710:	0184b503          	ld	a0,24(s1)
    80005714:	00050863          	beqz	a0,80005724 <_ZN9BufferCPPD1Ev+0xc4>
    80005718:	00053783          	ld	a5,0(a0)
    8000571c:	0087b783          	ld	a5,8(a5)
    80005720:	000780e7          	jalr	a5
    delete mutexTail;
    80005724:	0304b503          	ld	a0,48(s1)
    80005728:	00050863          	beqz	a0,80005738 <_ZN9BufferCPPD1Ev+0xd8>
    8000572c:	00053783          	ld	a5,0(a0)
    80005730:	0087b783          	ld	a5,8(a5)
    80005734:	000780e7          	jalr	a5
    delete mutexHead;
    80005738:	0284b503          	ld	a0,40(s1)
    8000573c:	00050863          	beqz	a0,8000574c <_ZN9BufferCPPD1Ev+0xec>
    80005740:	00053783          	ld	a5,0(a0)
    80005744:	0087b783          	ld	a5,8(a5)
    80005748:	000780e7          	jalr	a5
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	02010113          	addi	sp,sp,32
    8000575c:	00008067          	ret

0000000080005760 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	00113c23          	sd	ra,24(sp)
    80005768:	00813823          	sd	s0,16(sp)
    8000576c:	00913423          	sd	s1,8(sp)
    80005770:	01213023          	sd	s2,0(sp)
    80005774:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	af050513          	addi	a0,a0,-1296 # 80009268 <CONSOLE_STATUS+0x258>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	918080e7          	jalr	-1768(ra) # 80005098 <_Z11printStringPKc>
    int test = getc() - '0';
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	c48080e7          	jalr	-952(ra) # 800013d0 <_Z4getcv>
    80005790:	0005091b          	sext.w	s2,a0
    80005794:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	c38080e7          	jalr	-968(ra) # 800013d0 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    800057a0:	fcf9071b          	addiw	a4,s2,-49
    800057a4:	00100793          	li	a5,1
    800057a8:	04e7f063          	bgeu	a5,a4,800057e8 <_Z8userMainv+0x88>
    800057ac:	00700793          	li	a5,7
    800057b0:	02f48c63          	beq	s1,a5,800057e8 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800057b4:	fcd9079b          	addiw	a5,s2,-51
    800057b8:	00100693          	li	a3,1
    800057bc:	04f6fa63          	bgeu	a3,a5,80005810 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800057c0:	fcb9091b          	addiw	s2,s2,-53
    800057c4:	00100793          	li	a5,1
    800057c8:	0527fe63          	bgeu	a5,s2,80005824 <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800057cc:	00600793          	li	a5,6
    800057d0:	02e7f463          	bgeu	a5,a4,800057f8 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    800057d4:	00004517          	auipc	a0,0x4
    800057d8:	b4450513          	addi	a0,a0,-1212 # 80009318 <CONSOLE_STATUS+0x308>
    800057dc:	00000097          	auipc	ra,0x0
    800057e0:	8bc080e7          	jalr	-1860(ra) # 80005098 <_Z11printStringPKc>
    800057e4:	0140006f          	j	800057f8 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    800057e8:	00004517          	auipc	a0,0x4
    800057ec:	aa050513          	addi	a0,a0,-1376 # 80009288 <CONSOLE_STATUS+0x278>
    800057f0:	00000097          	auipc	ra,0x0
    800057f4:	8a8080e7          	jalr	-1880(ra) # 80005098 <_Z11printStringPKc>
    }
    800057f8:	01813083          	ld	ra,24(sp)
    800057fc:	01013403          	ld	s0,16(sp)
    80005800:	00813483          	ld	s1,8(sp)
    80005804:	00013903          	ld	s2,0(sp)
    80005808:	02010113          	addi	sp,sp,32
    8000580c:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005810:	00004517          	auipc	a0,0x4
    80005814:	aa850513          	addi	a0,a0,-1368 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	880080e7          	jalr	-1920(ra) # 80005098 <_Z11printStringPKc>
            return;
    80005820:	fd9ff06f          	j	800057f8 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005824:	00004517          	auipc	a0,0x4
    80005828:	ac450513          	addi	a0,a0,-1340 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	86c080e7          	jalr	-1940(ra) # 80005098 <_Z11printStringPKc>
            return;
    80005834:	fc5ff06f          	j	800057f8 <_Z8userMainv+0x98>

0000000080005838 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	01213023          	sd	s2,0(sp)
    8000584c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005850:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005854:	00600493          	li	s1,6
    while (--i > 0) {
    80005858:	fff4849b          	addiw	s1,s1,-1
    8000585c:	04905463          	blez	s1,800058a4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005860:	00004517          	auipc	a0,0x4
    80005864:	ae050513          	addi	a0,a0,-1312 # 80009340 <CONSOLE_STATUS+0x330>
    80005868:	00000097          	auipc	ra,0x0
    8000586c:	830080e7          	jalr	-2000(ra) # 80005098 <_Z11printStringPKc>
        printInt(sleep_time);
    80005870:	00000613          	li	a2,0
    80005874:	00a00593          	li	a1,10
    80005878:	0009051b          	sext.w	a0,s2
    8000587c:	00000097          	auipc	ra,0x0
    80005880:	9cc080e7          	jalr	-1588(ra) # 80005248 <_Z8printIntiii>
        printString(" !\n");
    80005884:	00004517          	auipc	a0,0x4
    80005888:	ac450513          	addi	a0,a0,-1340 # 80009348 <CONSOLE_STATUS+0x338>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	80c080e7          	jalr	-2036(ra) # 80005098 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005894:	00090513          	mv	a0,s2
    80005898:	ffffc097          	auipc	ra,0xffffc
    8000589c:	b1c080e7          	jalr	-1252(ra) # 800013b4 <_Z10time_sleepm>
    while (--i > 0) {
    800058a0:	fb9ff06f          	j	80005858 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800058a4:	00a00793          	li	a5,10
    800058a8:	02f95933          	divu	s2,s2,a5
    800058ac:	fff90913          	addi	s2,s2,-1
    800058b0:	00006797          	auipc	a5,0x6
    800058b4:	01078793          	addi	a5,a5,16 # 8000b8c0 <_ZL8finished>
    800058b8:	01278933          	add	s2,a5,s2
    800058bc:	00100793          	li	a5,1
    800058c0:	00f90023          	sb	a5,0(s2)
}
    800058c4:	01813083          	ld	ra,24(sp)
    800058c8:	01013403          	ld	s0,16(sp)
    800058cc:	00813483          	ld	s1,8(sp)
    800058d0:	00013903          	ld	s2,0(sp)
    800058d4:	02010113          	addi	sp,sp,32
    800058d8:	00008067          	ret

00000000800058dc <_Z12testSleepingv>:

void testSleeping() {
    800058dc:	fc010113          	addi	sp,sp,-64
    800058e0:	02113c23          	sd	ra,56(sp)
    800058e4:	02813823          	sd	s0,48(sp)
    800058e8:	02913423          	sd	s1,40(sp)
    800058ec:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800058f0:	00a00793          	li	a5,10
    800058f4:	fcf43823          	sd	a5,-48(s0)
    800058f8:	01400793          	li	a5,20
    800058fc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005900:	00000493          	li	s1,0
    80005904:	02c0006f          	j	80005930 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005908:	00349793          	slli	a5,s1,0x3
    8000590c:	fd040613          	addi	a2,s0,-48
    80005910:	00f60633          	add	a2,a2,a5
    80005914:	00000597          	auipc	a1,0x0
    80005918:	f2458593          	addi	a1,a1,-220 # 80005838 <_ZL9sleepyRunPv>
    8000591c:	fc040513          	addi	a0,s0,-64
    80005920:	00f50533          	add	a0,a0,a5
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	8d8080e7          	jalr	-1832(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000592c:	0014849b          	addiw	s1,s1,1
    80005930:	00100793          	li	a5,1
    80005934:	fc97dae3          	bge	a5,s1,80005908 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005938:	00006797          	auipc	a5,0x6
    8000593c:	f887c783          	lbu	a5,-120(a5) # 8000b8c0 <_ZL8finished>
    80005940:	fe078ce3          	beqz	a5,80005938 <_Z12testSleepingv+0x5c>
    80005944:	00006797          	auipc	a5,0x6
    80005948:	f7d7c783          	lbu	a5,-131(a5) # 8000b8c1 <_ZL8finished+0x1>
    8000594c:	fe0786e3          	beqz	a5,80005938 <_Z12testSleepingv+0x5c>
}
    80005950:	03813083          	ld	ra,56(sp)
    80005954:	03013403          	ld	s0,48(sp)
    80005958:	02813483          	ld	s1,40(sp)
    8000595c:	04010113          	addi	sp,sp,64
    80005960:	00008067          	ret

0000000080005964 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005964:	fe010113          	addi	sp,sp,-32
    80005968:	00113c23          	sd	ra,24(sp)
    8000596c:	00813823          	sd	s0,16(sp)
    80005970:	00913423          	sd	s1,8(sp)
    80005974:	01213023          	sd	s2,0(sp)
    80005978:	02010413          	addi	s0,sp,32
    8000597c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005980:	00100793          	li	a5,1
    80005984:	02a7f863          	bgeu	a5,a0,800059b4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005988:	00a00793          	li	a5,10
    8000598c:	02f577b3          	remu	a5,a0,a5
    80005990:	02078e63          	beqz	a5,800059cc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005994:	fff48513          	addi	a0,s1,-1
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	fcc080e7          	jalr	-52(ra) # 80005964 <_ZL9fibonaccim>
    800059a0:	00050913          	mv	s2,a0
    800059a4:	ffe48513          	addi	a0,s1,-2
    800059a8:	00000097          	auipc	ra,0x0
    800059ac:	fbc080e7          	jalr	-68(ra) # 80005964 <_ZL9fibonaccim>
    800059b0:	00a90533          	add	a0,s2,a0
}
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	00013903          	ld	s2,0(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	904080e7          	jalr	-1788(ra) # 800012d0 <_Z15thread_dispatchv>
    800059d4:	fc1ff06f          	j	80005994 <_ZL9fibonaccim+0x30>

00000000800059d8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00113c23          	sd	ra,24(sp)
    800059e0:	00813823          	sd	s0,16(sp)
    800059e4:	00913423          	sd	s1,8(sp)
    800059e8:	01213023          	sd	s2,0(sp)
    800059ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800059f0:	00a00493          	li	s1,10
    800059f4:	0400006f          	j	80005a34 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059f8:	00003517          	auipc	a0,0x3
    800059fc:	7c050513          	addi	a0,a0,1984 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	698080e7          	jalr	1688(ra) # 80005098 <_Z11printStringPKc>
    80005a08:	00000613          	li	a2,0
    80005a0c:	00a00593          	li	a1,10
    80005a10:	00048513          	mv	a0,s1
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	834080e7          	jalr	-1996(ra) # 80005248 <_Z8printIntiii>
    80005a1c:	00003517          	auipc	a0,0x3
    80005a20:	68c50513          	addi	a0,a0,1676 # 800090a8 <CONSOLE_STATUS+0x98>
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	674080e7          	jalr	1652(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a2c:	0014849b          	addiw	s1,s1,1
    80005a30:	0ff4f493          	andi	s1,s1,255
    80005a34:	00c00793          	li	a5,12
    80005a38:	fc97f0e3          	bgeu	a5,s1,800059f8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a3c:	00003517          	auipc	a0,0x3
    80005a40:	78450513          	addi	a0,a0,1924 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	654080e7          	jalr	1620(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a4c:	00500313          	li	t1,5
    thread_dispatch();
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	880080e7          	jalr	-1920(ra) # 800012d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a58:	01000513          	li	a0,16
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	f08080e7          	jalr	-248(ra) # 80005964 <_ZL9fibonaccim>
    80005a64:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a68:	00003517          	auipc	a0,0x3
    80005a6c:	76850513          	addi	a0,a0,1896 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	628080e7          	jalr	1576(ra) # 80005098 <_Z11printStringPKc>
    80005a78:	00000613          	li	a2,0
    80005a7c:	00a00593          	li	a1,10
    80005a80:	0009051b          	sext.w	a0,s2
    80005a84:	fffff097          	auipc	ra,0xfffff
    80005a88:	7c4080e7          	jalr	1988(ra) # 80005248 <_Z8printIntiii>
    80005a8c:	00003517          	auipc	a0,0x3
    80005a90:	61c50513          	addi	a0,a0,1564 # 800090a8 <CONSOLE_STATUS+0x98>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	604080e7          	jalr	1540(ra) # 80005098 <_Z11printStringPKc>
    80005a9c:	0400006f          	j	80005adc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005aa0:	00003517          	auipc	a0,0x3
    80005aa4:	71850513          	addi	a0,a0,1816 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	5f0080e7          	jalr	1520(ra) # 80005098 <_Z11printStringPKc>
    80005ab0:	00000613          	li	a2,0
    80005ab4:	00a00593          	li	a1,10
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	fffff097          	auipc	ra,0xfffff
    80005ac0:	78c080e7          	jalr	1932(ra) # 80005248 <_Z8printIntiii>
    80005ac4:	00003517          	auipc	a0,0x3
    80005ac8:	5e450513          	addi	a0,a0,1508 # 800090a8 <CONSOLE_STATUS+0x98>
    80005acc:	fffff097          	auipc	ra,0xfffff
    80005ad0:	5cc080e7          	jalr	1484(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ad4:	0014849b          	addiw	s1,s1,1
    80005ad8:	0ff4f493          	andi	s1,s1,255
    80005adc:	00f00793          	li	a5,15
    80005ae0:	fc97f0e3          	bgeu	a5,s1,80005aa0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ae4:	00003517          	auipc	a0,0x3
    80005ae8:	6fc50513          	addi	a0,a0,1788 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80005aec:	fffff097          	auipc	ra,0xfffff
    80005af0:	5ac080e7          	jalr	1452(ra) # 80005098 <_Z11printStringPKc>
    finishedD = true;
    80005af4:	00100793          	li	a5,1
    80005af8:	00006717          	auipc	a4,0x6
    80005afc:	dcf70523          	sb	a5,-566(a4) # 8000b8c2 <_ZL9finishedD>
    thread_dispatch();
    80005b00:	ffffb097          	auipc	ra,0xffffb
    80005b04:	7d0080e7          	jalr	2000(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005b08:	01813083          	ld	ra,24(sp)
    80005b0c:	01013403          	ld	s0,16(sp)
    80005b10:	00813483          	ld	s1,8(sp)
    80005b14:	00013903          	ld	s2,0(sp)
    80005b18:	02010113          	addi	sp,sp,32
    80005b1c:	00008067          	ret

0000000080005b20 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b20:	fe010113          	addi	sp,sp,-32
    80005b24:	00113c23          	sd	ra,24(sp)
    80005b28:	00813823          	sd	s0,16(sp)
    80005b2c:	00913423          	sd	s1,8(sp)
    80005b30:	01213023          	sd	s2,0(sp)
    80005b34:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b38:	00000493          	li	s1,0
    80005b3c:	0400006f          	j	80005b7c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b40:	00003517          	auipc	a0,0x3
    80005b44:	64850513          	addi	a0,a0,1608 # 80009188 <CONSOLE_STATUS+0x178>
    80005b48:	fffff097          	auipc	ra,0xfffff
    80005b4c:	550080e7          	jalr	1360(ra) # 80005098 <_Z11printStringPKc>
    80005b50:	00000613          	li	a2,0
    80005b54:	00a00593          	li	a1,10
    80005b58:	00048513          	mv	a0,s1
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	6ec080e7          	jalr	1772(ra) # 80005248 <_Z8printIntiii>
    80005b64:	00003517          	auipc	a0,0x3
    80005b68:	54450513          	addi	a0,a0,1348 # 800090a8 <CONSOLE_STATUS+0x98>
    80005b6c:	fffff097          	auipc	ra,0xfffff
    80005b70:	52c080e7          	jalr	1324(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b74:	0014849b          	addiw	s1,s1,1
    80005b78:	0ff4f493          	andi	s1,s1,255
    80005b7c:	00200793          	li	a5,2
    80005b80:	fc97f0e3          	bgeu	a5,s1,80005b40 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005b84:	00003517          	auipc	a0,0x3
    80005b88:	60c50513          	addi	a0,a0,1548 # 80009190 <CONSOLE_STATUS+0x180>
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	50c080e7          	jalr	1292(ra) # 80005098 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005b94:	00700313          	li	t1,7
    thread_dispatch();
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	738080e7          	jalr	1848(ra) # 800012d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005ba0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005ba4:	00003517          	auipc	a0,0x3
    80005ba8:	5fc50513          	addi	a0,a0,1532 # 800091a0 <CONSOLE_STATUS+0x190>
    80005bac:	fffff097          	auipc	ra,0xfffff
    80005bb0:	4ec080e7          	jalr	1260(ra) # 80005098 <_Z11printStringPKc>
    80005bb4:	00000613          	li	a2,0
    80005bb8:	00a00593          	li	a1,10
    80005bbc:	0009051b          	sext.w	a0,s2
    80005bc0:	fffff097          	auipc	ra,0xfffff
    80005bc4:	688080e7          	jalr	1672(ra) # 80005248 <_Z8printIntiii>
    80005bc8:	00003517          	auipc	a0,0x3
    80005bcc:	4e050513          	addi	a0,a0,1248 # 800090a8 <CONSOLE_STATUS+0x98>
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	4c8080e7          	jalr	1224(ra) # 80005098 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005bd8:	00c00513          	li	a0,12
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	d88080e7          	jalr	-632(ra) # 80005964 <_ZL9fibonaccim>
    80005be4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005be8:	00003517          	auipc	a0,0x3
    80005bec:	5c050513          	addi	a0,a0,1472 # 800091a8 <CONSOLE_STATUS+0x198>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	4a8080e7          	jalr	1192(ra) # 80005098 <_Z11printStringPKc>
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00a00593          	li	a1,10
    80005c00:	0009051b          	sext.w	a0,s2
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	644080e7          	jalr	1604(ra) # 80005248 <_Z8printIntiii>
    80005c0c:	00003517          	auipc	a0,0x3
    80005c10:	49c50513          	addi	a0,a0,1180 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	484080e7          	jalr	1156(ra) # 80005098 <_Z11printStringPKc>
    80005c1c:	0400006f          	j	80005c5c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c20:	00003517          	auipc	a0,0x3
    80005c24:	56850513          	addi	a0,a0,1384 # 80009188 <CONSOLE_STATUS+0x178>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	470080e7          	jalr	1136(ra) # 80005098 <_Z11printStringPKc>
    80005c30:	00000613          	li	a2,0
    80005c34:	00a00593          	li	a1,10
    80005c38:	00048513          	mv	a0,s1
    80005c3c:	fffff097          	auipc	ra,0xfffff
    80005c40:	60c080e7          	jalr	1548(ra) # 80005248 <_Z8printIntiii>
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	46450513          	addi	a0,a0,1124 # 800090a8 <CONSOLE_STATUS+0x98>
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	44c080e7          	jalr	1100(ra) # 80005098 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c54:	0014849b          	addiw	s1,s1,1
    80005c58:	0ff4f493          	andi	s1,s1,255
    80005c5c:	00500793          	li	a5,5
    80005c60:	fc97f0e3          	bgeu	a5,s1,80005c20 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005c64:	00003517          	auipc	a0,0x3
    80005c68:	4fc50513          	addi	a0,a0,1276 # 80009160 <CONSOLE_STATUS+0x150>
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	42c080e7          	jalr	1068(ra) # 80005098 <_Z11printStringPKc>
    finishedC = true;
    80005c74:	00100793          	li	a5,1
    80005c78:	00006717          	auipc	a4,0x6
    80005c7c:	c4f705a3          	sb	a5,-949(a4) # 8000b8c3 <_ZL9finishedC>
    thread_dispatch();
    80005c80:	ffffb097          	auipc	ra,0xffffb
    80005c84:	650080e7          	jalr	1616(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	01013403          	ld	s0,16(sp)
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	00013903          	ld	s2,0(sp)
    80005c98:	02010113          	addi	sp,sp,32
    80005c9c:	00008067          	ret

0000000080005ca0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ca0:	fe010113          	addi	sp,sp,-32
    80005ca4:	00113c23          	sd	ra,24(sp)
    80005ca8:	00813823          	sd	s0,16(sp)
    80005cac:	00913423          	sd	s1,8(sp)
    80005cb0:	01213023          	sd	s2,0(sp)
    80005cb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005cb8:	00000913          	li	s2,0
    80005cbc:	0400006f          	j	80005cfc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005cc0:	ffffb097          	auipc	ra,0xffffb
    80005cc4:	610080e7          	jalr	1552(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005cc8:	00148493          	addi	s1,s1,1
    80005ccc:	000027b7          	lui	a5,0x2
    80005cd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005cd4:	0097ee63          	bltu	a5,s1,80005cf0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005cd8:	00000713          	li	a4,0
    80005cdc:	000077b7          	lui	a5,0x7
    80005ce0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ce4:	fce7eee3          	bltu	a5,a4,80005cc0 <_ZL11workerBodyBPv+0x20>
    80005ce8:	00170713          	addi	a4,a4,1
    80005cec:	ff1ff06f          	j	80005cdc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005cf0:	00a00793          	li	a5,10
    80005cf4:	04f90663          	beq	s2,a5,80005d40 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005cf8:	00190913          	addi	s2,s2,1
    80005cfc:	00f00793          	li	a5,15
    80005d00:	0527e463          	bltu	a5,s2,80005d48 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005d04:	00003517          	auipc	a0,0x3
    80005d08:	46c50513          	addi	a0,a0,1132 # 80009170 <CONSOLE_STATUS+0x160>
    80005d0c:	fffff097          	auipc	ra,0xfffff
    80005d10:	38c080e7          	jalr	908(ra) # 80005098 <_Z11printStringPKc>
    80005d14:	00000613          	li	a2,0
    80005d18:	00a00593          	li	a1,10
    80005d1c:	0009051b          	sext.w	a0,s2
    80005d20:	fffff097          	auipc	ra,0xfffff
    80005d24:	528080e7          	jalr	1320(ra) # 80005248 <_Z8printIntiii>
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	38050513          	addi	a0,a0,896 # 800090a8 <CONSOLE_STATUS+0x98>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	368080e7          	jalr	872(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d38:	00000493          	li	s1,0
    80005d3c:	f91ff06f          	j	80005ccc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d40:	14102ff3          	csrr	t6,sepc
    80005d44:	fb5ff06f          	j	80005cf8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005d48:	00003517          	auipc	a0,0x3
    80005d4c:	43050513          	addi	a0,a0,1072 # 80009178 <CONSOLE_STATUS+0x168>
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	348080e7          	jalr	840(ra) # 80005098 <_Z11printStringPKc>
    finishedB = true;
    80005d58:	00100793          	li	a5,1
    80005d5c:	00006717          	auipc	a4,0x6
    80005d60:	b6f70423          	sb	a5,-1176(a4) # 8000b8c4 <_ZL9finishedB>
    thread_dispatch();
    80005d64:	ffffb097          	auipc	ra,0xffffb
    80005d68:	56c080e7          	jalr	1388(ra) # 800012d0 <_Z15thread_dispatchv>
}
    80005d6c:	01813083          	ld	ra,24(sp)
    80005d70:	01013403          	ld	s0,16(sp)
    80005d74:	00813483          	ld	s1,8(sp)
    80005d78:	00013903          	ld	s2,0(sp)
    80005d7c:	02010113          	addi	sp,sp,32
    80005d80:	00008067          	ret

0000000080005d84 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005d84:	fe010113          	addi	sp,sp,-32
    80005d88:	00113c23          	sd	ra,24(sp)
    80005d8c:	00813823          	sd	s0,16(sp)
    80005d90:	00913423          	sd	s1,8(sp)
    80005d94:	01213023          	sd	s2,0(sp)
    80005d98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005d9c:	00000913          	li	s2,0
    80005da0:	0380006f          	j	80005dd8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005da4:	ffffb097          	auipc	ra,0xffffb
    80005da8:	52c080e7          	jalr	1324(ra) # 800012d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005dac:	00148493          	addi	s1,s1,1
    80005db0:	000027b7          	lui	a5,0x2
    80005db4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005db8:	0097ee63          	bltu	a5,s1,80005dd4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005dbc:	00000713          	li	a4,0
    80005dc0:	000077b7          	lui	a5,0x7
    80005dc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005dc8:	fce7eee3          	bltu	a5,a4,80005da4 <_ZL11workerBodyAPv+0x20>
    80005dcc:	00170713          	addi	a4,a4,1
    80005dd0:	ff1ff06f          	j	80005dc0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005dd4:	00190913          	addi	s2,s2,1
    80005dd8:	00900793          	li	a5,9
    80005ddc:	0527e063          	bltu	a5,s2,80005e1c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005de0:	00003517          	auipc	a0,0x3
    80005de4:	37850513          	addi	a0,a0,888 # 80009158 <CONSOLE_STATUS+0x148>
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	2b0080e7          	jalr	688(ra) # 80005098 <_Z11printStringPKc>
    80005df0:	00000613          	li	a2,0
    80005df4:	00a00593          	li	a1,10
    80005df8:	0009051b          	sext.w	a0,s2
    80005dfc:	fffff097          	auipc	ra,0xfffff
    80005e00:	44c080e7          	jalr	1100(ra) # 80005248 <_Z8printIntiii>
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	2a450513          	addi	a0,a0,676 # 800090a8 <CONSOLE_STATUS+0x98>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	28c080e7          	jalr	652(ra) # 80005098 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e14:	00000493          	li	s1,0
    80005e18:	f99ff06f          	j	80005db0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	34450513          	addi	a0,a0,836 # 80009160 <CONSOLE_STATUS+0x150>
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	274080e7          	jalr	628(ra) # 80005098 <_Z11printStringPKc>
    finishedA = true;
    80005e2c:	00100793          	li	a5,1
    80005e30:	00006717          	auipc	a4,0x6
    80005e34:	a8f70aa3          	sb	a5,-1387(a4) # 8000b8c5 <_ZL9finishedA>
}
    80005e38:	01813083          	ld	ra,24(sp)
    80005e3c:	01013403          	ld	s0,16(sp)
    80005e40:	00813483          	ld	s1,8(sp)
    80005e44:	00013903          	ld	s2,0(sp)
    80005e48:	02010113          	addi	sp,sp,32
    80005e4c:	00008067          	ret

0000000080005e50 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005e50:	fd010113          	addi	sp,sp,-48
    80005e54:	02113423          	sd	ra,40(sp)
    80005e58:	02813023          	sd	s0,32(sp)
    80005e5c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e60:	00000613          	li	a2,0
    80005e64:	00000597          	auipc	a1,0x0
    80005e68:	f2058593          	addi	a1,a1,-224 # 80005d84 <_ZL11workerBodyAPv>
    80005e6c:	fd040513          	addi	a0,s0,-48
    80005e70:	ffffb097          	auipc	ra,0xffffb
    80005e74:	38c080e7          	jalr	908(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	37850513          	addi	a0,a0,888 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	218080e7          	jalr	536(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e88:	00000613          	li	a2,0
    80005e8c:	00000597          	auipc	a1,0x0
    80005e90:	e1458593          	addi	a1,a1,-492 # 80005ca0 <_ZL11workerBodyBPv>
    80005e94:	fd840513          	addi	a0,s0,-40
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	364080e7          	jalr	868(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005ea0:	00003517          	auipc	a0,0x3
    80005ea4:	36850513          	addi	a0,a0,872 # 80009208 <CONSOLE_STATUS+0x1f8>
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	1f0080e7          	jalr	496(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005eb0:	00000613          	li	a2,0
    80005eb4:	00000597          	auipc	a1,0x0
    80005eb8:	c6c58593          	addi	a1,a1,-916 # 80005b20 <_ZL11workerBodyCPv>
    80005ebc:	fe040513          	addi	a0,s0,-32
    80005ec0:	ffffb097          	auipc	ra,0xffffb
    80005ec4:	33c080e7          	jalr	828(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	35850513          	addi	a0,a0,856 # 80009220 <CONSOLE_STATUS+0x210>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	1c8080e7          	jalr	456(ra) # 80005098 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ed8:	00000613          	li	a2,0
    80005edc:	00000597          	auipc	a1,0x0
    80005ee0:	afc58593          	addi	a1,a1,-1284 # 800059d8 <_ZL11workerBodyDPv>
    80005ee4:	fe840513          	addi	a0,s0,-24
    80005ee8:	ffffb097          	auipc	ra,0xffffb
    80005eec:	314080e7          	jalr	788(ra) # 800011fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	34850513          	addi	a0,a0,840 # 80009238 <CONSOLE_STATUS+0x228>
    80005ef8:	fffff097          	auipc	ra,0xfffff
    80005efc:	1a0080e7          	jalr	416(ra) # 80005098 <_Z11printStringPKc>
    80005f00:	00c0006f          	j	80005f0c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f04:	ffffb097          	auipc	ra,0xffffb
    80005f08:	3cc080e7          	jalr	972(ra) # 800012d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f0c:	00006797          	auipc	a5,0x6
    80005f10:	9b97c783          	lbu	a5,-1607(a5) # 8000b8c5 <_ZL9finishedA>
    80005f14:	fe0788e3          	beqz	a5,80005f04 <_Z16System_Mode_testv+0xb4>
    80005f18:	00006797          	auipc	a5,0x6
    80005f1c:	9ac7c783          	lbu	a5,-1620(a5) # 8000b8c4 <_ZL9finishedB>
    80005f20:	fe0782e3          	beqz	a5,80005f04 <_Z16System_Mode_testv+0xb4>
    80005f24:	00006797          	auipc	a5,0x6
    80005f28:	99f7c783          	lbu	a5,-1633(a5) # 8000b8c3 <_ZL9finishedC>
    80005f2c:	fc078ce3          	beqz	a5,80005f04 <_Z16System_Mode_testv+0xb4>
    80005f30:	00006797          	auipc	a5,0x6
    80005f34:	9927c783          	lbu	a5,-1646(a5) # 8000b8c2 <_ZL9finishedD>
    80005f38:	fc0786e3          	beqz	a5,80005f04 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f3c:	02813083          	ld	ra,40(sp)
    80005f40:	02013403          	ld	s0,32(sp)
    80005f44:	03010113          	addi	sp,sp,48
    80005f48:	00008067          	ret

0000000080005f4c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f4c:	fe010113          	addi	sp,sp,-32
    80005f50:	00113c23          	sd	ra,24(sp)
    80005f54:	00813823          	sd	s0,16(sp)
    80005f58:	00913423          	sd	s1,8(sp)
    80005f5c:	01213023          	sd	s2,0(sp)
    80005f60:	02010413          	addi	s0,sp,32
    80005f64:	00050493          	mv	s1,a0
    80005f68:	00058913          	mv	s2,a1
    80005f6c:	0015879b          	addiw	a5,a1,1
    80005f70:	0007851b          	sext.w	a0,a5
    80005f74:	00f4a023          	sw	a5,0(s1)
    80005f78:	0004a823          	sw	zero,16(s1)
    80005f7c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f80:	00251513          	slli	a0,a0,0x2
    80005f84:	ffffb097          	auipc	ra,0xffffb
    80005f88:	1d8080e7          	jalr	472(ra) # 8000115c <_Z9mem_allocm>
    80005f8c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005f90:	00000593          	li	a1,0
    80005f94:	02048513          	addi	a0,s1,32
    80005f98:	ffffb097          	auipc	ra,0xffffb
    80005f9c:	374080e7          	jalr	884(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80005fa0:	00090593          	mv	a1,s2
    80005fa4:	01848513          	addi	a0,s1,24
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	364080e7          	jalr	868(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80005fb0:	00100593          	li	a1,1
    80005fb4:	02848513          	addi	a0,s1,40
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	354080e7          	jalr	852(ra) # 8000130c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80005fc0:	00100593          	li	a1,1
    80005fc4:	03048513          	addi	a0,s1,48
    80005fc8:	ffffb097          	auipc	ra,0xffffb
    80005fcc:	344080e7          	jalr	836(ra) # 8000130c <_Z8sem_openPP3Semj>
}
    80005fd0:	01813083          	ld	ra,24(sp)
    80005fd4:	01013403          	ld	s0,16(sp)
    80005fd8:	00813483          	ld	s1,8(sp)
    80005fdc:	00013903          	ld	s2,0(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret

0000000080005fe8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005fe8:	fe010113          	addi	sp,sp,-32
    80005fec:	00113c23          	sd	ra,24(sp)
    80005ff0:	00813823          	sd	s0,16(sp)
    80005ff4:	00913423          	sd	s1,8(sp)
    80005ff8:	01213023          	sd	s2,0(sp)
    80005ffc:	02010413          	addi	s0,sp,32
    80006000:	00050493          	mv	s1,a0
    80006004:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006008:	01853503          	ld	a0,24(a0)
    8000600c:	ffffb097          	auipc	ra,0xffffb
    80006010:	338080e7          	jalr	824(ra) # 80001344 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006014:	0304b503          	ld	a0,48(s1)
    80006018:	ffffb097          	auipc	ra,0xffffb
    8000601c:	32c080e7          	jalr	812(ra) # 80001344 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006020:	0084b783          	ld	a5,8(s1)
    80006024:	0144a703          	lw	a4,20(s1)
    80006028:	00271713          	slli	a4,a4,0x2
    8000602c:	00e787b3          	add	a5,a5,a4
    80006030:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006034:	0144a783          	lw	a5,20(s1)
    80006038:	0017879b          	addiw	a5,a5,1
    8000603c:	0004a703          	lw	a4,0(s1)
    80006040:	02e7e7bb          	remw	a5,a5,a4
    80006044:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006048:	0304b503          	ld	a0,48(s1)
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	314080e7          	jalr	788(ra) # 80001360 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006054:	0204b503          	ld	a0,32(s1)
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	308080e7          	jalr	776(ra) # 80001360 <_Z10sem_signalP3Sem>

}
    80006060:	01813083          	ld	ra,24(sp)
    80006064:	01013403          	ld	s0,16(sp)
    80006068:	00813483          	ld	s1,8(sp)
    8000606c:	00013903          	ld	s2,0(sp)
    80006070:	02010113          	addi	sp,sp,32
    80006074:	00008067          	ret

0000000080006078 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006078:	fe010113          	addi	sp,sp,-32
    8000607c:	00113c23          	sd	ra,24(sp)
    80006080:	00813823          	sd	s0,16(sp)
    80006084:	00913423          	sd	s1,8(sp)
    80006088:	01213023          	sd	s2,0(sp)
    8000608c:	02010413          	addi	s0,sp,32
    80006090:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006094:	02053503          	ld	a0,32(a0)
    80006098:	ffffb097          	auipc	ra,0xffffb
    8000609c:	2ac080e7          	jalr	684(ra) # 80001344 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    800060a0:	0284b503          	ld	a0,40(s1)
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	2a0080e7          	jalr	672(ra) # 80001344 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    800060ac:	0084b703          	ld	a4,8(s1)
    800060b0:	0104a783          	lw	a5,16(s1)
    800060b4:	00279693          	slli	a3,a5,0x2
    800060b8:	00d70733          	add	a4,a4,a3
    800060bc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060c0:	0017879b          	addiw	a5,a5,1
    800060c4:	0004a703          	lw	a4,0(s1)
    800060c8:	02e7e7bb          	remw	a5,a5,a4
    800060cc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060d0:	0284b503          	ld	a0,40(s1)
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	28c080e7          	jalr	652(ra) # 80001360 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800060dc:	0184b503          	ld	a0,24(s1)
    800060e0:	ffffb097          	auipc	ra,0xffffb
    800060e4:	280080e7          	jalr	640(ra) # 80001360 <_Z10sem_signalP3Sem>

    return ret;
}
    800060e8:	00090513          	mv	a0,s2
    800060ec:	01813083          	ld	ra,24(sp)
    800060f0:	01013403          	ld	s0,16(sp)
    800060f4:	00813483          	ld	s1,8(sp)
    800060f8:	00013903          	ld	s2,0(sp)
    800060fc:	02010113          	addi	sp,sp,32
    80006100:	00008067          	ret

0000000080006104 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006104:	fe010113          	addi	sp,sp,-32
    80006108:	00113c23          	sd	ra,24(sp)
    8000610c:	00813823          	sd	s0,16(sp)
    80006110:	00913423          	sd	s1,8(sp)
    80006114:	01213023          	sd	s2,0(sp)
    80006118:	02010413          	addi	s0,sp,32
    8000611c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006120:	02853503          	ld	a0,40(a0)
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	220080e7          	jalr	544(ra) # 80001344 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    8000612c:	0304b503          	ld	a0,48(s1)
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	214080e7          	jalr	532(ra) # 80001344 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006138:	0144a783          	lw	a5,20(s1)
    8000613c:	0104a903          	lw	s2,16(s1)
    80006140:	0327ce63          	blt	a5,s2,8000617c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006144:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006148:	0304b503          	ld	a0,48(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	214080e7          	jalr	532(ra) # 80001360 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006154:	0284b503          	ld	a0,40(s1)
    80006158:	ffffb097          	auipc	ra,0xffffb
    8000615c:	208080e7          	jalr	520(ra) # 80001360 <_Z10sem_signalP3Sem>

    return ret;
}
    80006160:	00090513          	mv	a0,s2
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	01013403          	ld	s0,16(sp)
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	00013903          	ld	s2,0(sp)
    80006174:	02010113          	addi	sp,sp,32
    80006178:	00008067          	ret
        ret = cap - head + tail;
    8000617c:	0004a703          	lw	a4,0(s1)
    80006180:	4127093b          	subw	s2,a4,s2
    80006184:	00f9093b          	addw	s2,s2,a5
    80006188:	fc1ff06f          	j	80006148 <_ZN6Buffer6getCntEv+0x44>

000000008000618c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000618c:	fe010113          	addi	sp,sp,-32
    80006190:	00113c23          	sd	ra,24(sp)
    80006194:	00813823          	sd	s0,16(sp)
    80006198:	00913423          	sd	s1,8(sp)
    8000619c:	02010413          	addi	s0,sp,32
    800061a0:	00050493          	mv	s1,a0
    putc('\n');
    800061a4:	00a00513          	li	a0,10
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	274080e7          	jalr	628(ra) # 8000141c <_Z4putcc>
    printString("Buffer deleted!\n");
    800061b0:	00003517          	auipc	a0,0x3
    800061b4:	0a050513          	addi	a0,a0,160 # 80009250 <CONSOLE_STATUS+0x240>
    800061b8:	fffff097          	auipc	ra,0xfffff
    800061bc:	ee0080e7          	jalr	-288(ra) # 80005098 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061c0:	00048513          	mv	a0,s1
    800061c4:	00000097          	auipc	ra,0x0
    800061c8:	f40080e7          	jalr	-192(ra) # 80006104 <_ZN6Buffer6getCntEv>
    800061cc:	02a05c63          	blez	a0,80006204 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061d0:	0084b783          	ld	a5,8(s1)
    800061d4:	0104a703          	lw	a4,16(s1)
    800061d8:	00271713          	slli	a4,a4,0x2
    800061dc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061e0:	0007c503          	lbu	a0,0(a5)
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	238080e7          	jalr	568(ra) # 8000141c <_Z4putcc>
        head = (head + 1) % cap;
    800061ec:	0104a783          	lw	a5,16(s1)
    800061f0:	0017879b          	addiw	a5,a5,1
    800061f4:	0004a703          	lw	a4,0(s1)
    800061f8:	02e7e7bb          	remw	a5,a5,a4
    800061fc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006200:	fc1ff06f          	j	800061c0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006204:	02100513          	li	a0,33
    80006208:	ffffb097          	auipc	ra,0xffffb
    8000620c:	214080e7          	jalr	532(ra) # 8000141c <_Z4putcc>
    putc('\n');
    80006210:	00a00513          	li	a0,10
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	208080e7          	jalr	520(ra) # 8000141c <_Z4putcc>
    mem_free(buffer);
    8000621c:	0084b503          	ld	a0,8(s1)
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	f90080e7          	jalr	-112(ra) # 800011b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006228:	0204b503          	ld	a0,32(s1)
    8000622c:	ffffb097          	auipc	ra,0xffffb
    80006230:	0fc080e7          	jalr	252(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80006234:	0184b503          	ld	a0,24(s1)
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	0f0080e7          	jalr	240(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006240:	0304b503          	ld	a0,48(s1)
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	0e4080e7          	jalr	228(ra) # 80001328 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    8000624c:	0284b503          	ld	a0,40(s1)
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	0d8080e7          	jalr	216(ra) # 80001328 <_Z9sem_closeP3Sem>
}
    80006258:	01813083          	ld	ra,24(sp)
    8000625c:	01013403          	ld	s0,16(sp)
    80006260:	00813483          	ld	s1,8(sp)
    80006264:	02010113          	addi	sp,sp,32
    80006268:	00008067          	ret

000000008000626c <start>:
    8000626c:	ff010113          	addi	sp,sp,-16
    80006270:	00813423          	sd	s0,8(sp)
    80006274:	01010413          	addi	s0,sp,16
    80006278:	300027f3          	csrr	a5,mstatus
    8000627c:	ffffe737          	lui	a4,0xffffe
    80006280:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1ccf>
    80006284:	00e7f7b3          	and	a5,a5,a4
    80006288:	00001737          	lui	a4,0x1
    8000628c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006290:	00e7e7b3          	or	a5,a5,a4
    80006294:	30079073          	csrw	mstatus,a5
    80006298:	00000797          	auipc	a5,0x0
    8000629c:	16078793          	addi	a5,a5,352 # 800063f8 <system_main>
    800062a0:	34179073          	csrw	mepc,a5
    800062a4:	00000793          	li	a5,0
    800062a8:	18079073          	csrw	satp,a5
    800062ac:	000107b7          	lui	a5,0x10
    800062b0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062b4:	30279073          	csrw	medeleg,a5
    800062b8:	30379073          	csrw	mideleg,a5
    800062bc:	104027f3          	csrr	a5,sie
    800062c0:	2227e793          	ori	a5,a5,546
    800062c4:	10479073          	csrw	sie,a5
    800062c8:	fff00793          	li	a5,-1
    800062cc:	00a7d793          	srli	a5,a5,0xa
    800062d0:	3b079073          	csrw	pmpaddr0,a5
    800062d4:	00f00793          	li	a5,15
    800062d8:	3a079073          	csrw	pmpcfg0,a5
    800062dc:	f14027f3          	csrr	a5,mhartid
    800062e0:	0200c737          	lui	a4,0x200c
    800062e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062e8:	0007869b          	sext.w	a3,a5
    800062ec:	00269713          	slli	a4,a3,0x2
    800062f0:	000f4637          	lui	a2,0xf4
    800062f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062f8:	00d70733          	add	a4,a4,a3
    800062fc:	0037979b          	slliw	a5,a5,0x3
    80006300:	020046b7          	lui	a3,0x2004
    80006304:	00d787b3          	add	a5,a5,a3
    80006308:	00c585b3          	add	a1,a1,a2
    8000630c:	00371693          	slli	a3,a4,0x3
    80006310:	00005717          	auipc	a4,0x5
    80006314:	5c070713          	addi	a4,a4,1472 # 8000b8d0 <timer_scratch>
    80006318:	00b7b023          	sd	a1,0(a5)
    8000631c:	00d70733          	add	a4,a4,a3
    80006320:	00f73c23          	sd	a5,24(a4)
    80006324:	02c73023          	sd	a2,32(a4)
    80006328:	34071073          	csrw	mscratch,a4
    8000632c:	00000797          	auipc	a5,0x0
    80006330:	6e478793          	addi	a5,a5,1764 # 80006a10 <timervec>
    80006334:	30579073          	csrw	mtvec,a5
    80006338:	300027f3          	csrr	a5,mstatus
    8000633c:	0087e793          	ori	a5,a5,8
    80006340:	30079073          	csrw	mstatus,a5
    80006344:	304027f3          	csrr	a5,mie
    80006348:	0807e793          	ori	a5,a5,128
    8000634c:	30479073          	csrw	mie,a5
    80006350:	f14027f3          	csrr	a5,mhartid
    80006354:	0007879b          	sext.w	a5,a5
    80006358:	00078213          	mv	tp,a5
    8000635c:	30200073          	mret
    80006360:	00813403          	ld	s0,8(sp)
    80006364:	01010113          	addi	sp,sp,16
    80006368:	00008067          	ret

000000008000636c <timerinit>:
    8000636c:	ff010113          	addi	sp,sp,-16
    80006370:	00813423          	sd	s0,8(sp)
    80006374:	01010413          	addi	s0,sp,16
    80006378:	f14027f3          	csrr	a5,mhartid
    8000637c:	0200c737          	lui	a4,0x200c
    80006380:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006384:	0007869b          	sext.w	a3,a5
    80006388:	00269713          	slli	a4,a3,0x2
    8000638c:	000f4637          	lui	a2,0xf4
    80006390:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006394:	00d70733          	add	a4,a4,a3
    80006398:	0037979b          	slliw	a5,a5,0x3
    8000639c:	020046b7          	lui	a3,0x2004
    800063a0:	00d787b3          	add	a5,a5,a3
    800063a4:	00c585b3          	add	a1,a1,a2
    800063a8:	00371693          	slli	a3,a4,0x3
    800063ac:	00005717          	auipc	a4,0x5
    800063b0:	52470713          	addi	a4,a4,1316 # 8000b8d0 <timer_scratch>
    800063b4:	00b7b023          	sd	a1,0(a5)
    800063b8:	00d70733          	add	a4,a4,a3
    800063bc:	00f73c23          	sd	a5,24(a4)
    800063c0:	02c73023          	sd	a2,32(a4)
    800063c4:	34071073          	csrw	mscratch,a4
    800063c8:	00000797          	auipc	a5,0x0
    800063cc:	64878793          	addi	a5,a5,1608 # 80006a10 <timervec>
    800063d0:	30579073          	csrw	mtvec,a5
    800063d4:	300027f3          	csrr	a5,mstatus
    800063d8:	0087e793          	ori	a5,a5,8
    800063dc:	30079073          	csrw	mstatus,a5
    800063e0:	304027f3          	csrr	a5,mie
    800063e4:	0807e793          	ori	a5,a5,128
    800063e8:	30479073          	csrw	mie,a5
    800063ec:	00813403          	ld	s0,8(sp)
    800063f0:	01010113          	addi	sp,sp,16
    800063f4:	00008067          	ret

00000000800063f8 <system_main>:
    800063f8:	fe010113          	addi	sp,sp,-32
    800063fc:	00813823          	sd	s0,16(sp)
    80006400:	00913423          	sd	s1,8(sp)
    80006404:	00113c23          	sd	ra,24(sp)
    80006408:	02010413          	addi	s0,sp,32
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	0c4080e7          	jalr	196(ra) # 800064d0 <cpuid>
    80006414:	00005497          	auipc	s1,0x5
    80006418:	3ec48493          	addi	s1,s1,1004 # 8000b800 <started>
    8000641c:	02050263          	beqz	a0,80006440 <system_main+0x48>
    80006420:	0004a783          	lw	a5,0(s1)
    80006424:	0007879b          	sext.w	a5,a5
    80006428:	fe078ce3          	beqz	a5,80006420 <system_main+0x28>
    8000642c:	0ff0000f          	fence
    80006430:	00003517          	auipc	a0,0x3
    80006434:	f5050513          	addi	a0,a0,-176 # 80009380 <CONSOLE_STATUS+0x370>
    80006438:	00001097          	auipc	ra,0x1
    8000643c:	a74080e7          	jalr	-1420(ra) # 80006eac <panic>
    80006440:	00001097          	auipc	ra,0x1
    80006444:	9c8080e7          	jalr	-1592(ra) # 80006e08 <consoleinit>
    80006448:	00001097          	auipc	ra,0x1
    8000644c:	154080e7          	jalr	340(ra) # 8000759c <printfinit>
    80006450:	00003517          	auipc	a0,0x3
    80006454:	c5850513          	addi	a0,a0,-936 # 800090a8 <CONSOLE_STATUS+0x98>
    80006458:	00001097          	auipc	ra,0x1
    8000645c:	ab0080e7          	jalr	-1360(ra) # 80006f08 <__printf>
    80006460:	00003517          	auipc	a0,0x3
    80006464:	ef050513          	addi	a0,a0,-272 # 80009350 <CONSOLE_STATUS+0x340>
    80006468:	00001097          	auipc	ra,0x1
    8000646c:	aa0080e7          	jalr	-1376(ra) # 80006f08 <__printf>
    80006470:	00003517          	auipc	a0,0x3
    80006474:	c3850513          	addi	a0,a0,-968 # 800090a8 <CONSOLE_STATUS+0x98>
    80006478:	00001097          	auipc	ra,0x1
    8000647c:	a90080e7          	jalr	-1392(ra) # 80006f08 <__printf>
    80006480:	00001097          	auipc	ra,0x1
    80006484:	4a8080e7          	jalr	1192(ra) # 80007928 <kinit>
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	148080e7          	jalr	328(ra) # 800065d0 <trapinit>
    80006490:	00000097          	auipc	ra,0x0
    80006494:	16c080e7          	jalr	364(ra) # 800065fc <trapinithart>
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	5b8080e7          	jalr	1464(ra) # 80006a50 <plicinit>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	5d8080e7          	jalr	1496(ra) # 80006a78 <plicinithart>
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	078080e7          	jalr	120(ra) # 80006520 <userinit>
    800064b0:	0ff0000f          	fence
    800064b4:	00100793          	li	a5,1
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	eb050513          	addi	a0,a0,-336 # 80009368 <CONSOLE_STATUS+0x358>
    800064c0:	00f4a023          	sw	a5,0(s1)
    800064c4:	00001097          	auipc	ra,0x1
    800064c8:	a44080e7          	jalr	-1468(ra) # 80006f08 <__printf>
    800064cc:	0000006f          	j	800064cc <system_main+0xd4>

00000000800064d0 <cpuid>:
    800064d0:	ff010113          	addi	sp,sp,-16
    800064d4:	00813423          	sd	s0,8(sp)
    800064d8:	01010413          	addi	s0,sp,16
    800064dc:	00020513          	mv	a0,tp
    800064e0:	00813403          	ld	s0,8(sp)
    800064e4:	0005051b          	sext.w	a0,a0
    800064e8:	01010113          	addi	sp,sp,16
    800064ec:	00008067          	ret

00000000800064f0 <mycpu>:
    800064f0:	ff010113          	addi	sp,sp,-16
    800064f4:	00813423          	sd	s0,8(sp)
    800064f8:	01010413          	addi	s0,sp,16
    800064fc:	00020793          	mv	a5,tp
    80006500:	00813403          	ld	s0,8(sp)
    80006504:	0007879b          	sext.w	a5,a5
    80006508:	00779793          	slli	a5,a5,0x7
    8000650c:	00006517          	auipc	a0,0x6
    80006510:	3f450513          	addi	a0,a0,1012 # 8000c900 <cpus>
    80006514:	00f50533          	add	a0,a0,a5
    80006518:	01010113          	addi	sp,sp,16
    8000651c:	00008067          	ret

0000000080006520 <userinit>:
    80006520:	ff010113          	addi	sp,sp,-16
    80006524:	00813423          	sd	s0,8(sp)
    80006528:	01010413          	addi	s0,sp,16
    8000652c:	00813403          	ld	s0,8(sp)
    80006530:	01010113          	addi	sp,sp,16
    80006534:	ffffb317          	auipc	t1,0xffffb
    80006538:	43430067          	jr	1076(t1) # 80001968 <main>

000000008000653c <either_copyout>:
    8000653c:	ff010113          	addi	sp,sp,-16
    80006540:	00813023          	sd	s0,0(sp)
    80006544:	00113423          	sd	ra,8(sp)
    80006548:	01010413          	addi	s0,sp,16
    8000654c:	02051663          	bnez	a0,80006578 <either_copyout+0x3c>
    80006550:	00058513          	mv	a0,a1
    80006554:	00060593          	mv	a1,a2
    80006558:	0006861b          	sext.w	a2,a3
    8000655c:	00002097          	auipc	ra,0x2
    80006560:	c58080e7          	jalr	-936(ra) # 800081b4 <__memmove>
    80006564:	00813083          	ld	ra,8(sp)
    80006568:	00013403          	ld	s0,0(sp)
    8000656c:	00000513          	li	a0,0
    80006570:	01010113          	addi	sp,sp,16
    80006574:	00008067          	ret
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	e3050513          	addi	a0,a0,-464 # 800093a8 <CONSOLE_STATUS+0x398>
    80006580:	00001097          	auipc	ra,0x1
    80006584:	92c080e7          	jalr	-1748(ra) # 80006eac <panic>

0000000080006588 <either_copyin>:
    80006588:	ff010113          	addi	sp,sp,-16
    8000658c:	00813023          	sd	s0,0(sp)
    80006590:	00113423          	sd	ra,8(sp)
    80006594:	01010413          	addi	s0,sp,16
    80006598:	02059463          	bnez	a1,800065c0 <either_copyin+0x38>
    8000659c:	00060593          	mv	a1,a2
    800065a0:	0006861b          	sext.w	a2,a3
    800065a4:	00002097          	auipc	ra,0x2
    800065a8:	c10080e7          	jalr	-1008(ra) # 800081b4 <__memmove>
    800065ac:	00813083          	ld	ra,8(sp)
    800065b0:	00013403          	ld	s0,0(sp)
    800065b4:	00000513          	li	a0,0
    800065b8:	01010113          	addi	sp,sp,16
    800065bc:	00008067          	ret
    800065c0:	00003517          	auipc	a0,0x3
    800065c4:	e1050513          	addi	a0,a0,-496 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800065c8:	00001097          	auipc	ra,0x1
    800065cc:	8e4080e7          	jalr	-1820(ra) # 80006eac <panic>

00000000800065d0 <trapinit>:
    800065d0:	ff010113          	addi	sp,sp,-16
    800065d4:	00813423          	sd	s0,8(sp)
    800065d8:	01010413          	addi	s0,sp,16
    800065dc:	00813403          	ld	s0,8(sp)
    800065e0:	00003597          	auipc	a1,0x3
    800065e4:	e1858593          	addi	a1,a1,-488 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800065e8:	00006517          	auipc	a0,0x6
    800065ec:	39850513          	addi	a0,a0,920 # 8000c980 <tickslock>
    800065f0:	01010113          	addi	sp,sp,16
    800065f4:	00001317          	auipc	t1,0x1
    800065f8:	5c430067          	jr	1476(t1) # 80007bb8 <initlock>

00000000800065fc <trapinithart>:
    800065fc:	ff010113          	addi	sp,sp,-16
    80006600:	00813423          	sd	s0,8(sp)
    80006604:	01010413          	addi	s0,sp,16
    80006608:	00000797          	auipc	a5,0x0
    8000660c:	2f878793          	addi	a5,a5,760 # 80006900 <kernelvec>
    80006610:	10579073          	csrw	stvec,a5
    80006614:	00813403          	ld	s0,8(sp)
    80006618:	01010113          	addi	sp,sp,16
    8000661c:	00008067          	ret

0000000080006620 <usertrap>:
    80006620:	ff010113          	addi	sp,sp,-16
    80006624:	00813423          	sd	s0,8(sp)
    80006628:	01010413          	addi	s0,sp,16
    8000662c:	00813403          	ld	s0,8(sp)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <usertrapret>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813423          	sd	s0,8(sp)
    80006640:	01010413          	addi	s0,sp,16
    80006644:	00813403          	ld	s0,8(sp)
    80006648:	01010113          	addi	sp,sp,16
    8000664c:	00008067          	ret

0000000080006650 <kerneltrap>:
    80006650:	fe010113          	addi	sp,sp,-32
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00113c23          	sd	ra,24(sp)
    8000665c:	00913423          	sd	s1,8(sp)
    80006660:	02010413          	addi	s0,sp,32
    80006664:	142025f3          	csrr	a1,scause
    80006668:	100027f3          	csrr	a5,sstatus
    8000666c:	0027f793          	andi	a5,a5,2
    80006670:	10079c63          	bnez	a5,80006788 <kerneltrap+0x138>
    80006674:	142027f3          	csrr	a5,scause
    80006678:	0207ce63          	bltz	a5,800066b4 <kerneltrap+0x64>
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	dc450513          	addi	a0,a0,-572 # 80009440 <CONSOLE_STATUS+0x430>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	884080e7          	jalr	-1916(ra) # 80006f08 <__printf>
    8000668c:	141025f3          	csrr	a1,sepc
    80006690:	14302673          	csrr	a2,stval
    80006694:	00003517          	auipc	a0,0x3
    80006698:	dbc50513          	addi	a0,a0,-580 # 80009450 <CONSOLE_STATUS+0x440>
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	86c080e7          	jalr	-1940(ra) # 80006f08 <__printf>
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	dc450513          	addi	a0,a0,-572 # 80009468 <CONSOLE_STATUS+0x458>
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	800080e7          	jalr	-2048(ra) # 80006eac <panic>
    800066b4:	0ff7f713          	andi	a4,a5,255
    800066b8:	00900693          	li	a3,9
    800066bc:	04d70063          	beq	a4,a3,800066fc <kerneltrap+0xac>
    800066c0:	fff00713          	li	a4,-1
    800066c4:	03f71713          	slli	a4,a4,0x3f
    800066c8:	00170713          	addi	a4,a4,1
    800066cc:	fae798e3          	bne	a5,a4,8000667c <kerneltrap+0x2c>
    800066d0:	00000097          	auipc	ra,0x0
    800066d4:	e00080e7          	jalr	-512(ra) # 800064d0 <cpuid>
    800066d8:	06050663          	beqz	a0,80006744 <kerneltrap+0xf4>
    800066dc:	144027f3          	csrr	a5,sip
    800066e0:	ffd7f793          	andi	a5,a5,-3
    800066e4:	14479073          	csrw	sip,a5
    800066e8:	01813083          	ld	ra,24(sp)
    800066ec:	01013403          	ld	s0,16(sp)
    800066f0:	00813483          	ld	s1,8(sp)
    800066f4:	02010113          	addi	sp,sp,32
    800066f8:	00008067          	ret
    800066fc:	00000097          	auipc	ra,0x0
    80006700:	3c8080e7          	jalr	968(ra) # 80006ac4 <plic_claim>
    80006704:	00a00793          	li	a5,10
    80006708:	00050493          	mv	s1,a0
    8000670c:	06f50863          	beq	a0,a5,8000677c <kerneltrap+0x12c>
    80006710:	fc050ce3          	beqz	a0,800066e8 <kerneltrap+0x98>
    80006714:	00050593          	mv	a1,a0
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	d0850513          	addi	a0,a0,-760 # 80009420 <CONSOLE_STATUS+0x410>
    80006720:	00000097          	auipc	ra,0x0
    80006724:	7e8080e7          	jalr	2024(ra) # 80006f08 <__printf>
    80006728:	01013403          	ld	s0,16(sp)
    8000672c:	01813083          	ld	ra,24(sp)
    80006730:	00048513          	mv	a0,s1
    80006734:	00813483          	ld	s1,8(sp)
    80006738:	02010113          	addi	sp,sp,32
    8000673c:	00000317          	auipc	t1,0x0
    80006740:	3c030067          	jr	960(t1) # 80006afc <plic_complete>
    80006744:	00006517          	auipc	a0,0x6
    80006748:	23c50513          	addi	a0,a0,572 # 8000c980 <tickslock>
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	490080e7          	jalr	1168(ra) # 80007bdc <acquire>
    80006754:	00005717          	auipc	a4,0x5
    80006758:	0b070713          	addi	a4,a4,176 # 8000b804 <ticks>
    8000675c:	00072783          	lw	a5,0(a4)
    80006760:	00006517          	auipc	a0,0x6
    80006764:	22050513          	addi	a0,a0,544 # 8000c980 <tickslock>
    80006768:	0017879b          	addiw	a5,a5,1
    8000676c:	00f72023          	sw	a5,0(a4)
    80006770:	00001097          	auipc	ra,0x1
    80006774:	538080e7          	jalr	1336(ra) # 80007ca8 <release>
    80006778:	f65ff06f          	j	800066dc <kerneltrap+0x8c>
    8000677c:	00001097          	auipc	ra,0x1
    80006780:	094080e7          	jalr	148(ra) # 80007810 <uartintr>
    80006784:	fa5ff06f          	j	80006728 <kerneltrap+0xd8>
    80006788:	00003517          	auipc	a0,0x3
    8000678c:	c7850513          	addi	a0,a0,-904 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006790:	00000097          	auipc	ra,0x0
    80006794:	71c080e7          	jalr	1820(ra) # 80006eac <panic>

0000000080006798 <clockintr>:
    80006798:	fe010113          	addi	sp,sp,-32
    8000679c:	00813823          	sd	s0,16(sp)
    800067a0:	00913423          	sd	s1,8(sp)
    800067a4:	00113c23          	sd	ra,24(sp)
    800067a8:	02010413          	addi	s0,sp,32
    800067ac:	00006497          	auipc	s1,0x6
    800067b0:	1d448493          	addi	s1,s1,468 # 8000c980 <tickslock>
    800067b4:	00048513          	mv	a0,s1
    800067b8:	00001097          	auipc	ra,0x1
    800067bc:	424080e7          	jalr	1060(ra) # 80007bdc <acquire>
    800067c0:	00005717          	auipc	a4,0x5
    800067c4:	04470713          	addi	a4,a4,68 # 8000b804 <ticks>
    800067c8:	00072783          	lw	a5,0(a4)
    800067cc:	01013403          	ld	s0,16(sp)
    800067d0:	01813083          	ld	ra,24(sp)
    800067d4:	00048513          	mv	a0,s1
    800067d8:	0017879b          	addiw	a5,a5,1
    800067dc:	00813483          	ld	s1,8(sp)
    800067e0:	00f72023          	sw	a5,0(a4)
    800067e4:	02010113          	addi	sp,sp,32
    800067e8:	00001317          	auipc	t1,0x1
    800067ec:	4c030067          	jr	1216(t1) # 80007ca8 <release>

00000000800067f0 <devintr>:
    800067f0:	142027f3          	csrr	a5,scause
    800067f4:	00000513          	li	a0,0
    800067f8:	0007c463          	bltz	a5,80006800 <devintr+0x10>
    800067fc:	00008067          	ret
    80006800:	fe010113          	addi	sp,sp,-32
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00113c23          	sd	ra,24(sp)
    8000680c:	00913423          	sd	s1,8(sp)
    80006810:	02010413          	addi	s0,sp,32
    80006814:	0ff7f713          	andi	a4,a5,255
    80006818:	00900693          	li	a3,9
    8000681c:	04d70c63          	beq	a4,a3,80006874 <devintr+0x84>
    80006820:	fff00713          	li	a4,-1
    80006824:	03f71713          	slli	a4,a4,0x3f
    80006828:	00170713          	addi	a4,a4,1
    8000682c:	00e78c63          	beq	a5,a4,80006844 <devintr+0x54>
    80006830:	01813083          	ld	ra,24(sp)
    80006834:	01013403          	ld	s0,16(sp)
    80006838:	00813483          	ld	s1,8(sp)
    8000683c:	02010113          	addi	sp,sp,32
    80006840:	00008067          	ret
    80006844:	00000097          	auipc	ra,0x0
    80006848:	c8c080e7          	jalr	-884(ra) # 800064d0 <cpuid>
    8000684c:	06050663          	beqz	a0,800068b8 <devintr+0xc8>
    80006850:	144027f3          	csrr	a5,sip
    80006854:	ffd7f793          	andi	a5,a5,-3
    80006858:	14479073          	csrw	sip,a5
    8000685c:	01813083          	ld	ra,24(sp)
    80006860:	01013403          	ld	s0,16(sp)
    80006864:	00813483          	ld	s1,8(sp)
    80006868:	00200513          	li	a0,2
    8000686c:	02010113          	addi	sp,sp,32
    80006870:	00008067          	ret
    80006874:	00000097          	auipc	ra,0x0
    80006878:	250080e7          	jalr	592(ra) # 80006ac4 <plic_claim>
    8000687c:	00a00793          	li	a5,10
    80006880:	00050493          	mv	s1,a0
    80006884:	06f50663          	beq	a0,a5,800068f0 <devintr+0x100>
    80006888:	00100513          	li	a0,1
    8000688c:	fa0482e3          	beqz	s1,80006830 <devintr+0x40>
    80006890:	00048593          	mv	a1,s1
    80006894:	00003517          	auipc	a0,0x3
    80006898:	b8c50513          	addi	a0,a0,-1140 # 80009420 <CONSOLE_STATUS+0x410>
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	66c080e7          	jalr	1644(ra) # 80006f08 <__printf>
    800068a4:	00048513          	mv	a0,s1
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	254080e7          	jalr	596(ra) # 80006afc <plic_complete>
    800068b0:	00100513          	li	a0,1
    800068b4:	f7dff06f          	j	80006830 <devintr+0x40>
    800068b8:	00006517          	auipc	a0,0x6
    800068bc:	0c850513          	addi	a0,a0,200 # 8000c980 <tickslock>
    800068c0:	00001097          	auipc	ra,0x1
    800068c4:	31c080e7          	jalr	796(ra) # 80007bdc <acquire>
    800068c8:	00005717          	auipc	a4,0x5
    800068cc:	f3c70713          	addi	a4,a4,-196 # 8000b804 <ticks>
    800068d0:	00072783          	lw	a5,0(a4)
    800068d4:	00006517          	auipc	a0,0x6
    800068d8:	0ac50513          	addi	a0,a0,172 # 8000c980 <tickslock>
    800068dc:	0017879b          	addiw	a5,a5,1
    800068e0:	00f72023          	sw	a5,0(a4)
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	3c4080e7          	jalr	964(ra) # 80007ca8 <release>
    800068ec:	f65ff06f          	j	80006850 <devintr+0x60>
    800068f0:	00001097          	auipc	ra,0x1
    800068f4:	f20080e7          	jalr	-224(ra) # 80007810 <uartintr>
    800068f8:	fadff06f          	j	800068a4 <devintr+0xb4>
    800068fc:	0000                	unimp
	...

0000000080006900 <kernelvec>:
    80006900:	f0010113          	addi	sp,sp,-256
    80006904:	00113023          	sd	ra,0(sp)
    80006908:	00213423          	sd	sp,8(sp)
    8000690c:	00313823          	sd	gp,16(sp)
    80006910:	00413c23          	sd	tp,24(sp)
    80006914:	02513023          	sd	t0,32(sp)
    80006918:	02613423          	sd	t1,40(sp)
    8000691c:	02713823          	sd	t2,48(sp)
    80006920:	02813c23          	sd	s0,56(sp)
    80006924:	04913023          	sd	s1,64(sp)
    80006928:	04a13423          	sd	a0,72(sp)
    8000692c:	04b13823          	sd	a1,80(sp)
    80006930:	04c13c23          	sd	a2,88(sp)
    80006934:	06d13023          	sd	a3,96(sp)
    80006938:	06e13423          	sd	a4,104(sp)
    8000693c:	06f13823          	sd	a5,112(sp)
    80006940:	07013c23          	sd	a6,120(sp)
    80006944:	09113023          	sd	a7,128(sp)
    80006948:	09213423          	sd	s2,136(sp)
    8000694c:	09313823          	sd	s3,144(sp)
    80006950:	09413c23          	sd	s4,152(sp)
    80006954:	0b513023          	sd	s5,160(sp)
    80006958:	0b613423          	sd	s6,168(sp)
    8000695c:	0b713823          	sd	s7,176(sp)
    80006960:	0b813c23          	sd	s8,184(sp)
    80006964:	0d913023          	sd	s9,192(sp)
    80006968:	0da13423          	sd	s10,200(sp)
    8000696c:	0db13823          	sd	s11,208(sp)
    80006970:	0dc13c23          	sd	t3,216(sp)
    80006974:	0fd13023          	sd	t4,224(sp)
    80006978:	0fe13423          	sd	t5,232(sp)
    8000697c:	0ff13823          	sd	t6,240(sp)
    80006980:	cd1ff0ef          	jal	ra,80006650 <kerneltrap>
    80006984:	00013083          	ld	ra,0(sp)
    80006988:	00813103          	ld	sp,8(sp)
    8000698c:	01013183          	ld	gp,16(sp)
    80006990:	02013283          	ld	t0,32(sp)
    80006994:	02813303          	ld	t1,40(sp)
    80006998:	03013383          	ld	t2,48(sp)
    8000699c:	03813403          	ld	s0,56(sp)
    800069a0:	04013483          	ld	s1,64(sp)
    800069a4:	04813503          	ld	a0,72(sp)
    800069a8:	05013583          	ld	a1,80(sp)
    800069ac:	05813603          	ld	a2,88(sp)
    800069b0:	06013683          	ld	a3,96(sp)
    800069b4:	06813703          	ld	a4,104(sp)
    800069b8:	07013783          	ld	a5,112(sp)
    800069bc:	07813803          	ld	a6,120(sp)
    800069c0:	08013883          	ld	a7,128(sp)
    800069c4:	08813903          	ld	s2,136(sp)
    800069c8:	09013983          	ld	s3,144(sp)
    800069cc:	09813a03          	ld	s4,152(sp)
    800069d0:	0a013a83          	ld	s5,160(sp)
    800069d4:	0a813b03          	ld	s6,168(sp)
    800069d8:	0b013b83          	ld	s7,176(sp)
    800069dc:	0b813c03          	ld	s8,184(sp)
    800069e0:	0c013c83          	ld	s9,192(sp)
    800069e4:	0c813d03          	ld	s10,200(sp)
    800069e8:	0d013d83          	ld	s11,208(sp)
    800069ec:	0d813e03          	ld	t3,216(sp)
    800069f0:	0e013e83          	ld	t4,224(sp)
    800069f4:	0e813f03          	ld	t5,232(sp)
    800069f8:	0f013f83          	ld	t6,240(sp)
    800069fc:	10010113          	addi	sp,sp,256
    80006a00:	10200073          	sret
    80006a04:	00000013          	nop
    80006a08:	00000013          	nop
    80006a0c:	00000013          	nop

0000000080006a10 <timervec>:
    80006a10:	34051573          	csrrw	a0,mscratch,a0
    80006a14:	00b53023          	sd	a1,0(a0)
    80006a18:	00c53423          	sd	a2,8(a0)
    80006a1c:	00d53823          	sd	a3,16(a0)
    80006a20:	01853583          	ld	a1,24(a0)
    80006a24:	02053603          	ld	a2,32(a0)
    80006a28:	0005b683          	ld	a3,0(a1)
    80006a2c:	00c686b3          	add	a3,a3,a2
    80006a30:	00d5b023          	sd	a3,0(a1)
    80006a34:	00200593          	li	a1,2
    80006a38:	14459073          	csrw	sip,a1
    80006a3c:	01053683          	ld	a3,16(a0)
    80006a40:	00853603          	ld	a2,8(a0)
    80006a44:	00053583          	ld	a1,0(a0)
    80006a48:	34051573          	csrrw	a0,mscratch,a0
    80006a4c:	30200073          	mret

0000000080006a50 <plicinit>:
    80006a50:	ff010113          	addi	sp,sp,-16
    80006a54:	00813423          	sd	s0,8(sp)
    80006a58:	01010413          	addi	s0,sp,16
    80006a5c:	00813403          	ld	s0,8(sp)
    80006a60:	0c0007b7          	lui	a5,0xc000
    80006a64:	00100713          	li	a4,1
    80006a68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a6c:	00e7a223          	sw	a4,4(a5)
    80006a70:	01010113          	addi	sp,sp,16
    80006a74:	00008067          	ret

0000000080006a78 <plicinithart>:
    80006a78:	ff010113          	addi	sp,sp,-16
    80006a7c:	00813023          	sd	s0,0(sp)
    80006a80:	00113423          	sd	ra,8(sp)
    80006a84:	01010413          	addi	s0,sp,16
    80006a88:	00000097          	auipc	ra,0x0
    80006a8c:	a48080e7          	jalr	-1464(ra) # 800064d0 <cpuid>
    80006a90:	0085171b          	slliw	a4,a0,0x8
    80006a94:	0c0027b7          	lui	a5,0xc002
    80006a98:	00e787b3          	add	a5,a5,a4
    80006a9c:	40200713          	li	a4,1026
    80006aa0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006aa4:	00813083          	ld	ra,8(sp)
    80006aa8:	00013403          	ld	s0,0(sp)
    80006aac:	00d5151b          	slliw	a0,a0,0xd
    80006ab0:	0c2017b7          	lui	a5,0xc201
    80006ab4:	00a78533          	add	a0,a5,a0
    80006ab8:	00052023          	sw	zero,0(a0)
    80006abc:	01010113          	addi	sp,sp,16
    80006ac0:	00008067          	ret

0000000080006ac4 <plic_claim>:
    80006ac4:	ff010113          	addi	sp,sp,-16
    80006ac8:	00813023          	sd	s0,0(sp)
    80006acc:	00113423          	sd	ra,8(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	00000097          	auipc	ra,0x0
    80006ad8:	9fc080e7          	jalr	-1540(ra) # 800064d0 <cpuid>
    80006adc:	00813083          	ld	ra,8(sp)
    80006ae0:	00013403          	ld	s0,0(sp)
    80006ae4:	00d5151b          	slliw	a0,a0,0xd
    80006ae8:	0c2017b7          	lui	a5,0xc201
    80006aec:	00a78533          	add	a0,a5,a0
    80006af0:	00452503          	lw	a0,4(a0)
    80006af4:	01010113          	addi	sp,sp,16
    80006af8:	00008067          	ret

0000000080006afc <plic_complete>:
    80006afc:	fe010113          	addi	sp,sp,-32
    80006b00:	00813823          	sd	s0,16(sp)
    80006b04:	00913423          	sd	s1,8(sp)
    80006b08:	00113c23          	sd	ra,24(sp)
    80006b0c:	02010413          	addi	s0,sp,32
    80006b10:	00050493          	mv	s1,a0
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	9bc080e7          	jalr	-1604(ra) # 800064d0 <cpuid>
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	00d5179b          	slliw	a5,a0,0xd
    80006b28:	0c201737          	lui	a4,0xc201
    80006b2c:	00f707b3          	add	a5,a4,a5
    80006b30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b34:	00813483          	ld	s1,8(sp)
    80006b38:	02010113          	addi	sp,sp,32
    80006b3c:	00008067          	ret

0000000080006b40 <consolewrite>:
    80006b40:	fb010113          	addi	sp,sp,-80
    80006b44:	04813023          	sd	s0,64(sp)
    80006b48:	04113423          	sd	ra,72(sp)
    80006b4c:	02913c23          	sd	s1,56(sp)
    80006b50:	03213823          	sd	s2,48(sp)
    80006b54:	03313423          	sd	s3,40(sp)
    80006b58:	03413023          	sd	s4,32(sp)
    80006b5c:	01513c23          	sd	s5,24(sp)
    80006b60:	05010413          	addi	s0,sp,80
    80006b64:	06c05c63          	blez	a2,80006bdc <consolewrite+0x9c>
    80006b68:	00060993          	mv	s3,a2
    80006b6c:	00050a13          	mv	s4,a0
    80006b70:	00058493          	mv	s1,a1
    80006b74:	00000913          	li	s2,0
    80006b78:	fff00a93          	li	s5,-1
    80006b7c:	01c0006f          	j	80006b98 <consolewrite+0x58>
    80006b80:	fbf44503          	lbu	a0,-65(s0)
    80006b84:	0019091b          	addiw	s2,s2,1
    80006b88:	00148493          	addi	s1,s1,1
    80006b8c:	00001097          	auipc	ra,0x1
    80006b90:	a9c080e7          	jalr	-1380(ra) # 80007628 <uartputc>
    80006b94:	03298063          	beq	s3,s2,80006bb4 <consolewrite+0x74>
    80006b98:	00048613          	mv	a2,s1
    80006b9c:	00100693          	li	a3,1
    80006ba0:	000a0593          	mv	a1,s4
    80006ba4:	fbf40513          	addi	a0,s0,-65
    80006ba8:	00000097          	auipc	ra,0x0
    80006bac:	9e0080e7          	jalr	-1568(ra) # 80006588 <either_copyin>
    80006bb0:	fd5518e3          	bne	a0,s5,80006b80 <consolewrite+0x40>
    80006bb4:	04813083          	ld	ra,72(sp)
    80006bb8:	04013403          	ld	s0,64(sp)
    80006bbc:	03813483          	ld	s1,56(sp)
    80006bc0:	02813983          	ld	s3,40(sp)
    80006bc4:	02013a03          	ld	s4,32(sp)
    80006bc8:	01813a83          	ld	s5,24(sp)
    80006bcc:	00090513          	mv	a0,s2
    80006bd0:	03013903          	ld	s2,48(sp)
    80006bd4:	05010113          	addi	sp,sp,80
    80006bd8:	00008067          	ret
    80006bdc:	00000913          	li	s2,0
    80006be0:	fd5ff06f          	j	80006bb4 <consolewrite+0x74>

0000000080006be4 <consoleread>:
    80006be4:	f9010113          	addi	sp,sp,-112
    80006be8:	06813023          	sd	s0,96(sp)
    80006bec:	04913c23          	sd	s1,88(sp)
    80006bf0:	05213823          	sd	s2,80(sp)
    80006bf4:	05313423          	sd	s3,72(sp)
    80006bf8:	05413023          	sd	s4,64(sp)
    80006bfc:	03513c23          	sd	s5,56(sp)
    80006c00:	03613823          	sd	s6,48(sp)
    80006c04:	03713423          	sd	s7,40(sp)
    80006c08:	03813023          	sd	s8,32(sp)
    80006c0c:	06113423          	sd	ra,104(sp)
    80006c10:	01913c23          	sd	s9,24(sp)
    80006c14:	07010413          	addi	s0,sp,112
    80006c18:	00060b93          	mv	s7,a2
    80006c1c:	00050913          	mv	s2,a0
    80006c20:	00058c13          	mv	s8,a1
    80006c24:	00060b1b          	sext.w	s6,a2
    80006c28:	00006497          	auipc	s1,0x6
    80006c2c:	d8048493          	addi	s1,s1,-640 # 8000c9a8 <cons>
    80006c30:	00400993          	li	s3,4
    80006c34:	fff00a13          	li	s4,-1
    80006c38:	00a00a93          	li	s5,10
    80006c3c:	05705e63          	blez	s7,80006c98 <consoleread+0xb4>
    80006c40:	09c4a703          	lw	a4,156(s1)
    80006c44:	0984a783          	lw	a5,152(s1)
    80006c48:	0007071b          	sext.w	a4,a4
    80006c4c:	08e78463          	beq	a5,a4,80006cd4 <consoleread+0xf0>
    80006c50:	07f7f713          	andi	a4,a5,127
    80006c54:	00e48733          	add	a4,s1,a4
    80006c58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c5c:	0017869b          	addiw	a3,a5,1
    80006c60:	08d4ac23          	sw	a3,152(s1)
    80006c64:	00070c9b          	sext.w	s9,a4
    80006c68:	0b370663          	beq	a4,s3,80006d14 <consoleread+0x130>
    80006c6c:	00100693          	li	a3,1
    80006c70:	f9f40613          	addi	a2,s0,-97
    80006c74:	000c0593          	mv	a1,s8
    80006c78:	00090513          	mv	a0,s2
    80006c7c:	f8e40fa3          	sb	a4,-97(s0)
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	8bc080e7          	jalr	-1860(ra) # 8000653c <either_copyout>
    80006c88:	01450863          	beq	a0,s4,80006c98 <consoleread+0xb4>
    80006c8c:	001c0c13          	addi	s8,s8,1
    80006c90:	fffb8b9b          	addiw	s7,s7,-1
    80006c94:	fb5c94e3          	bne	s9,s5,80006c3c <consoleread+0x58>
    80006c98:	000b851b          	sext.w	a0,s7
    80006c9c:	06813083          	ld	ra,104(sp)
    80006ca0:	06013403          	ld	s0,96(sp)
    80006ca4:	05813483          	ld	s1,88(sp)
    80006ca8:	05013903          	ld	s2,80(sp)
    80006cac:	04813983          	ld	s3,72(sp)
    80006cb0:	04013a03          	ld	s4,64(sp)
    80006cb4:	03813a83          	ld	s5,56(sp)
    80006cb8:	02813b83          	ld	s7,40(sp)
    80006cbc:	02013c03          	ld	s8,32(sp)
    80006cc0:	01813c83          	ld	s9,24(sp)
    80006cc4:	40ab053b          	subw	a0,s6,a0
    80006cc8:	03013b03          	ld	s6,48(sp)
    80006ccc:	07010113          	addi	sp,sp,112
    80006cd0:	00008067          	ret
    80006cd4:	00001097          	auipc	ra,0x1
    80006cd8:	1d8080e7          	jalr	472(ra) # 80007eac <push_on>
    80006cdc:	0984a703          	lw	a4,152(s1)
    80006ce0:	09c4a783          	lw	a5,156(s1)
    80006ce4:	0007879b          	sext.w	a5,a5
    80006ce8:	fef70ce3          	beq	a4,a5,80006ce0 <consoleread+0xfc>
    80006cec:	00001097          	auipc	ra,0x1
    80006cf0:	234080e7          	jalr	564(ra) # 80007f20 <pop_on>
    80006cf4:	0984a783          	lw	a5,152(s1)
    80006cf8:	07f7f713          	andi	a4,a5,127
    80006cfc:	00e48733          	add	a4,s1,a4
    80006d00:	01874703          	lbu	a4,24(a4)
    80006d04:	0017869b          	addiw	a3,a5,1
    80006d08:	08d4ac23          	sw	a3,152(s1)
    80006d0c:	00070c9b          	sext.w	s9,a4
    80006d10:	f5371ee3          	bne	a4,s3,80006c6c <consoleread+0x88>
    80006d14:	000b851b          	sext.w	a0,s7
    80006d18:	f96bf2e3          	bgeu	s7,s6,80006c9c <consoleread+0xb8>
    80006d1c:	08f4ac23          	sw	a5,152(s1)
    80006d20:	f7dff06f          	j	80006c9c <consoleread+0xb8>

0000000080006d24 <consputc>:
    80006d24:	10000793          	li	a5,256
    80006d28:	00f50663          	beq	a0,a5,80006d34 <consputc+0x10>
    80006d2c:	00001317          	auipc	t1,0x1
    80006d30:	9f430067          	jr	-1548(t1) # 80007720 <uartputc_sync>
    80006d34:	ff010113          	addi	sp,sp,-16
    80006d38:	00113423          	sd	ra,8(sp)
    80006d3c:	00813023          	sd	s0,0(sp)
    80006d40:	01010413          	addi	s0,sp,16
    80006d44:	00800513          	li	a0,8
    80006d48:	00001097          	auipc	ra,0x1
    80006d4c:	9d8080e7          	jalr	-1576(ra) # 80007720 <uartputc_sync>
    80006d50:	02000513          	li	a0,32
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	9cc080e7          	jalr	-1588(ra) # 80007720 <uartputc_sync>
    80006d5c:	00013403          	ld	s0,0(sp)
    80006d60:	00813083          	ld	ra,8(sp)
    80006d64:	00800513          	li	a0,8
    80006d68:	01010113          	addi	sp,sp,16
    80006d6c:	00001317          	auipc	t1,0x1
    80006d70:	9b430067          	jr	-1612(t1) # 80007720 <uartputc_sync>

0000000080006d74 <consoleintr>:
    80006d74:	fe010113          	addi	sp,sp,-32
    80006d78:	00813823          	sd	s0,16(sp)
    80006d7c:	00913423          	sd	s1,8(sp)
    80006d80:	01213023          	sd	s2,0(sp)
    80006d84:	00113c23          	sd	ra,24(sp)
    80006d88:	02010413          	addi	s0,sp,32
    80006d8c:	00006917          	auipc	s2,0x6
    80006d90:	c1c90913          	addi	s2,s2,-996 # 8000c9a8 <cons>
    80006d94:	00050493          	mv	s1,a0
    80006d98:	00090513          	mv	a0,s2
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	e40080e7          	jalr	-448(ra) # 80007bdc <acquire>
    80006da4:	02048c63          	beqz	s1,80006ddc <consoleintr+0x68>
    80006da8:	0a092783          	lw	a5,160(s2)
    80006dac:	09892703          	lw	a4,152(s2)
    80006db0:	07f00693          	li	a3,127
    80006db4:	40e7873b          	subw	a4,a5,a4
    80006db8:	02e6e263          	bltu	a3,a4,80006ddc <consoleintr+0x68>
    80006dbc:	00d00713          	li	a4,13
    80006dc0:	04e48063          	beq	s1,a4,80006e00 <consoleintr+0x8c>
    80006dc4:	07f7f713          	andi	a4,a5,127
    80006dc8:	00e90733          	add	a4,s2,a4
    80006dcc:	0017879b          	addiw	a5,a5,1
    80006dd0:	0af92023          	sw	a5,160(s2)
    80006dd4:	00970c23          	sb	s1,24(a4)
    80006dd8:	08f92e23          	sw	a5,156(s2)
    80006ddc:	01013403          	ld	s0,16(sp)
    80006de0:	01813083          	ld	ra,24(sp)
    80006de4:	00813483          	ld	s1,8(sp)
    80006de8:	00013903          	ld	s2,0(sp)
    80006dec:	00006517          	auipc	a0,0x6
    80006df0:	bbc50513          	addi	a0,a0,-1092 # 8000c9a8 <cons>
    80006df4:	02010113          	addi	sp,sp,32
    80006df8:	00001317          	auipc	t1,0x1
    80006dfc:	eb030067          	jr	-336(t1) # 80007ca8 <release>
    80006e00:	00a00493          	li	s1,10
    80006e04:	fc1ff06f          	j	80006dc4 <consoleintr+0x50>

0000000080006e08 <consoleinit>:
    80006e08:	fe010113          	addi	sp,sp,-32
    80006e0c:	00113c23          	sd	ra,24(sp)
    80006e10:	00813823          	sd	s0,16(sp)
    80006e14:	00913423          	sd	s1,8(sp)
    80006e18:	02010413          	addi	s0,sp,32
    80006e1c:	00006497          	auipc	s1,0x6
    80006e20:	b8c48493          	addi	s1,s1,-1140 # 8000c9a8 <cons>
    80006e24:	00048513          	mv	a0,s1
    80006e28:	00002597          	auipc	a1,0x2
    80006e2c:	65058593          	addi	a1,a1,1616 # 80009478 <CONSOLE_STATUS+0x468>
    80006e30:	00001097          	auipc	ra,0x1
    80006e34:	d88080e7          	jalr	-632(ra) # 80007bb8 <initlock>
    80006e38:	00000097          	auipc	ra,0x0
    80006e3c:	7ac080e7          	jalr	1964(ra) # 800075e4 <uartinit>
    80006e40:	01813083          	ld	ra,24(sp)
    80006e44:	01013403          	ld	s0,16(sp)
    80006e48:	00000797          	auipc	a5,0x0
    80006e4c:	d9c78793          	addi	a5,a5,-612 # 80006be4 <consoleread>
    80006e50:	0af4bc23          	sd	a5,184(s1)
    80006e54:	00000797          	auipc	a5,0x0
    80006e58:	cec78793          	addi	a5,a5,-788 # 80006b40 <consolewrite>
    80006e5c:	0cf4b023          	sd	a5,192(s1)
    80006e60:	00813483          	ld	s1,8(sp)
    80006e64:	02010113          	addi	sp,sp,32
    80006e68:	00008067          	ret

0000000080006e6c <console_read>:
    80006e6c:	ff010113          	addi	sp,sp,-16
    80006e70:	00813423          	sd	s0,8(sp)
    80006e74:	01010413          	addi	s0,sp,16
    80006e78:	00813403          	ld	s0,8(sp)
    80006e7c:	00006317          	auipc	t1,0x6
    80006e80:	be433303          	ld	t1,-1052(t1) # 8000ca60 <devsw+0x10>
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00030067          	jr	t1

0000000080006e8c <console_write>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	00006317          	auipc	t1,0x6
    80006ea0:	bcc33303          	ld	t1,-1076(t1) # 8000ca68 <devsw+0x18>
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00030067          	jr	t1

0000000080006eac <panic>:
    80006eac:	fe010113          	addi	sp,sp,-32
    80006eb0:	00113c23          	sd	ra,24(sp)
    80006eb4:	00813823          	sd	s0,16(sp)
    80006eb8:	00913423          	sd	s1,8(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    80006ec4:	00002517          	auipc	a0,0x2
    80006ec8:	5bc50513          	addi	a0,a0,1468 # 80009480 <CONSOLE_STATUS+0x470>
    80006ecc:	00006797          	auipc	a5,0x6
    80006ed0:	c207ae23          	sw	zero,-964(a5) # 8000cb08 <pr+0x18>
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	034080e7          	jalr	52(ra) # 80006f08 <__printf>
    80006edc:	00048513          	mv	a0,s1
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	028080e7          	jalr	40(ra) # 80006f08 <__printf>
    80006ee8:	00002517          	auipc	a0,0x2
    80006eec:	1c050513          	addi	a0,a0,448 # 800090a8 <CONSOLE_STATUS+0x98>
    80006ef0:	00000097          	auipc	ra,0x0
    80006ef4:	018080e7          	jalr	24(ra) # 80006f08 <__printf>
    80006ef8:	00100793          	li	a5,1
    80006efc:	00005717          	auipc	a4,0x5
    80006f00:	90f72623          	sw	a5,-1780(a4) # 8000b808 <panicked>
    80006f04:	0000006f          	j	80006f04 <panic+0x58>

0000000080006f08 <__printf>:
    80006f08:	f3010113          	addi	sp,sp,-208
    80006f0c:	08813023          	sd	s0,128(sp)
    80006f10:	07313423          	sd	s3,104(sp)
    80006f14:	09010413          	addi	s0,sp,144
    80006f18:	05813023          	sd	s8,64(sp)
    80006f1c:	08113423          	sd	ra,136(sp)
    80006f20:	06913c23          	sd	s1,120(sp)
    80006f24:	07213823          	sd	s2,112(sp)
    80006f28:	07413023          	sd	s4,96(sp)
    80006f2c:	05513c23          	sd	s5,88(sp)
    80006f30:	05613823          	sd	s6,80(sp)
    80006f34:	05713423          	sd	s7,72(sp)
    80006f38:	03913c23          	sd	s9,56(sp)
    80006f3c:	03a13823          	sd	s10,48(sp)
    80006f40:	03b13423          	sd	s11,40(sp)
    80006f44:	00006317          	auipc	t1,0x6
    80006f48:	bac30313          	addi	t1,t1,-1108 # 8000caf0 <pr>
    80006f4c:	01832c03          	lw	s8,24(t1)
    80006f50:	00b43423          	sd	a1,8(s0)
    80006f54:	00c43823          	sd	a2,16(s0)
    80006f58:	00d43c23          	sd	a3,24(s0)
    80006f5c:	02e43023          	sd	a4,32(s0)
    80006f60:	02f43423          	sd	a5,40(s0)
    80006f64:	03043823          	sd	a6,48(s0)
    80006f68:	03143c23          	sd	a7,56(s0)
    80006f6c:	00050993          	mv	s3,a0
    80006f70:	4a0c1663          	bnez	s8,8000741c <__printf+0x514>
    80006f74:	60098c63          	beqz	s3,8000758c <__printf+0x684>
    80006f78:	0009c503          	lbu	a0,0(s3)
    80006f7c:	00840793          	addi	a5,s0,8
    80006f80:	f6f43c23          	sd	a5,-136(s0)
    80006f84:	00000493          	li	s1,0
    80006f88:	22050063          	beqz	a0,800071a8 <__printf+0x2a0>
    80006f8c:	00002a37          	lui	s4,0x2
    80006f90:	00018ab7          	lui	s5,0x18
    80006f94:	000f4b37          	lui	s6,0xf4
    80006f98:	00989bb7          	lui	s7,0x989
    80006f9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fa0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fa4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fa8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fac:	00148c9b          	addiw	s9,s1,1
    80006fb0:	02500793          	li	a5,37
    80006fb4:	01998933          	add	s2,s3,s9
    80006fb8:	38f51263          	bne	a0,a5,8000733c <__printf+0x434>
    80006fbc:	00094783          	lbu	a5,0(s2)
    80006fc0:	00078c9b          	sext.w	s9,a5
    80006fc4:	1e078263          	beqz	a5,800071a8 <__printf+0x2a0>
    80006fc8:	0024849b          	addiw	s1,s1,2
    80006fcc:	07000713          	li	a4,112
    80006fd0:	00998933          	add	s2,s3,s1
    80006fd4:	38e78a63          	beq	a5,a4,80007368 <__printf+0x460>
    80006fd8:	20f76863          	bltu	a4,a5,800071e8 <__printf+0x2e0>
    80006fdc:	42a78863          	beq	a5,a0,8000740c <__printf+0x504>
    80006fe0:	06400713          	li	a4,100
    80006fe4:	40e79663          	bne	a5,a4,800073f0 <__printf+0x4e8>
    80006fe8:	f7843783          	ld	a5,-136(s0)
    80006fec:	0007a603          	lw	a2,0(a5)
    80006ff0:	00878793          	addi	a5,a5,8
    80006ff4:	f6f43c23          	sd	a5,-136(s0)
    80006ff8:	42064a63          	bltz	a2,8000742c <__printf+0x524>
    80006ffc:	00a00713          	li	a4,10
    80007000:	02e677bb          	remuw	a5,a2,a4
    80007004:	00002d97          	auipc	s11,0x2
    80007008:	4a4d8d93          	addi	s11,s11,1188 # 800094a8 <digits>
    8000700c:	00900593          	li	a1,9
    80007010:	0006051b          	sext.w	a0,a2
    80007014:	00000c93          	li	s9,0
    80007018:	02079793          	slli	a5,a5,0x20
    8000701c:	0207d793          	srli	a5,a5,0x20
    80007020:	00fd87b3          	add	a5,s11,a5
    80007024:	0007c783          	lbu	a5,0(a5)
    80007028:	02e656bb          	divuw	a3,a2,a4
    8000702c:	f8f40023          	sb	a5,-128(s0)
    80007030:	14c5d863          	bge	a1,a2,80007180 <__printf+0x278>
    80007034:	06300593          	li	a1,99
    80007038:	00100c93          	li	s9,1
    8000703c:	02e6f7bb          	remuw	a5,a3,a4
    80007040:	02079793          	slli	a5,a5,0x20
    80007044:	0207d793          	srli	a5,a5,0x20
    80007048:	00fd87b3          	add	a5,s11,a5
    8000704c:	0007c783          	lbu	a5,0(a5)
    80007050:	02e6d73b          	divuw	a4,a3,a4
    80007054:	f8f400a3          	sb	a5,-127(s0)
    80007058:	12a5f463          	bgeu	a1,a0,80007180 <__printf+0x278>
    8000705c:	00a00693          	li	a3,10
    80007060:	00900593          	li	a1,9
    80007064:	02d777bb          	remuw	a5,a4,a3
    80007068:	02079793          	slli	a5,a5,0x20
    8000706c:	0207d793          	srli	a5,a5,0x20
    80007070:	00fd87b3          	add	a5,s11,a5
    80007074:	0007c503          	lbu	a0,0(a5)
    80007078:	02d757bb          	divuw	a5,a4,a3
    8000707c:	f8a40123          	sb	a0,-126(s0)
    80007080:	48e5f263          	bgeu	a1,a4,80007504 <__printf+0x5fc>
    80007084:	06300513          	li	a0,99
    80007088:	02d7f5bb          	remuw	a1,a5,a3
    8000708c:	02059593          	slli	a1,a1,0x20
    80007090:	0205d593          	srli	a1,a1,0x20
    80007094:	00bd85b3          	add	a1,s11,a1
    80007098:	0005c583          	lbu	a1,0(a1)
    8000709c:	02d7d7bb          	divuw	a5,a5,a3
    800070a0:	f8b401a3          	sb	a1,-125(s0)
    800070a4:	48e57263          	bgeu	a0,a4,80007528 <__printf+0x620>
    800070a8:	3e700513          	li	a0,999
    800070ac:	02d7f5bb          	remuw	a1,a5,a3
    800070b0:	02059593          	slli	a1,a1,0x20
    800070b4:	0205d593          	srli	a1,a1,0x20
    800070b8:	00bd85b3          	add	a1,s11,a1
    800070bc:	0005c583          	lbu	a1,0(a1)
    800070c0:	02d7d7bb          	divuw	a5,a5,a3
    800070c4:	f8b40223          	sb	a1,-124(s0)
    800070c8:	46e57663          	bgeu	a0,a4,80007534 <__printf+0x62c>
    800070cc:	02d7f5bb          	remuw	a1,a5,a3
    800070d0:	02059593          	slli	a1,a1,0x20
    800070d4:	0205d593          	srli	a1,a1,0x20
    800070d8:	00bd85b3          	add	a1,s11,a1
    800070dc:	0005c583          	lbu	a1,0(a1)
    800070e0:	02d7d7bb          	divuw	a5,a5,a3
    800070e4:	f8b402a3          	sb	a1,-123(s0)
    800070e8:	46ea7863          	bgeu	s4,a4,80007558 <__printf+0x650>
    800070ec:	02d7f5bb          	remuw	a1,a5,a3
    800070f0:	02059593          	slli	a1,a1,0x20
    800070f4:	0205d593          	srli	a1,a1,0x20
    800070f8:	00bd85b3          	add	a1,s11,a1
    800070fc:	0005c583          	lbu	a1,0(a1)
    80007100:	02d7d7bb          	divuw	a5,a5,a3
    80007104:	f8b40323          	sb	a1,-122(s0)
    80007108:	3eeaf863          	bgeu	s5,a4,800074f8 <__printf+0x5f0>
    8000710c:	02d7f5bb          	remuw	a1,a5,a3
    80007110:	02059593          	slli	a1,a1,0x20
    80007114:	0205d593          	srli	a1,a1,0x20
    80007118:	00bd85b3          	add	a1,s11,a1
    8000711c:	0005c583          	lbu	a1,0(a1)
    80007120:	02d7d7bb          	divuw	a5,a5,a3
    80007124:	f8b403a3          	sb	a1,-121(s0)
    80007128:	42eb7e63          	bgeu	s6,a4,80007564 <__printf+0x65c>
    8000712c:	02d7f5bb          	remuw	a1,a5,a3
    80007130:	02059593          	slli	a1,a1,0x20
    80007134:	0205d593          	srli	a1,a1,0x20
    80007138:	00bd85b3          	add	a1,s11,a1
    8000713c:	0005c583          	lbu	a1,0(a1)
    80007140:	02d7d7bb          	divuw	a5,a5,a3
    80007144:	f8b40423          	sb	a1,-120(s0)
    80007148:	42ebfc63          	bgeu	s7,a4,80007580 <__printf+0x678>
    8000714c:	02079793          	slli	a5,a5,0x20
    80007150:	0207d793          	srli	a5,a5,0x20
    80007154:	00fd8db3          	add	s11,s11,a5
    80007158:	000dc703          	lbu	a4,0(s11)
    8000715c:	00a00793          	li	a5,10
    80007160:	00900c93          	li	s9,9
    80007164:	f8e404a3          	sb	a4,-119(s0)
    80007168:	00065c63          	bgez	a2,80007180 <__printf+0x278>
    8000716c:	f9040713          	addi	a4,s0,-112
    80007170:	00f70733          	add	a4,a4,a5
    80007174:	02d00693          	li	a3,45
    80007178:	fed70823          	sb	a3,-16(a4)
    8000717c:	00078c93          	mv	s9,a5
    80007180:	f8040793          	addi	a5,s0,-128
    80007184:	01978cb3          	add	s9,a5,s9
    80007188:	f7f40d13          	addi	s10,s0,-129
    8000718c:	000cc503          	lbu	a0,0(s9)
    80007190:	fffc8c93          	addi	s9,s9,-1
    80007194:	00000097          	auipc	ra,0x0
    80007198:	b90080e7          	jalr	-1136(ra) # 80006d24 <consputc>
    8000719c:	ffac98e3          	bne	s9,s10,8000718c <__printf+0x284>
    800071a0:	00094503          	lbu	a0,0(s2)
    800071a4:	e00514e3          	bnez	a0,80006fac <__printf+0xa4>
    800071a8:	1a0c1663          	bnez	s8,80007354 <__printf+0x44c>
    800071ac:	08813083          	ld	ra,136(sp)
    800071b0:	08013403          	ld	s0,128(sp)
    800071b4:	07813483          	ld	s1,120(sp)
    800071b8:	07013903          	ld	s2,112(sp)
    800071bc:	06813983          	ld	s3,104(sp)
    800071c0:	06013a03          	ld	s4,96(sp)
    800071c4:	05813a83          	ld	s5,88(sp)
    800071c8:	05013b03          	ld	s6,80(sp)
    800071cc:	04813b83          	ld	s7,72(sp)
    800071d0:	04013c03          	ld	s8,64(sp)
    800071d4:	03813c83          	ld	s9,56(sp)
    800071d8:	03013d03          	ld	s10,48(sp)
    800071dc:	02813d83          	ld	s11,40(sp)
    800071e0:	0d010113          	addi	sp,sp,208
    800071e4:	00008067          	ret
    800071e8:	07300713          	li	a4,115
    800071ec:	1ce78a63          	beq	a5,a4,800073c0 <__printf+0x4b8>
    800071f0:	07800713          	li	a4,120
    800071f4:	1ee79e63          	bne	a5,a4,800073f0 <__printf+0x4e8>
    800071f8:	f7843783          	ld	a5,-136(s0)
    800071fc:	0007a703          	lw	a4,0(a5)
    80007200:	00878793          	addi	a5,a5,8
    80007204:	f6f43c23          	sd	a5,-136(s0)
    80007208:	28074263          	bltz	a4,8000748c <__printf+0x584>
    8000720c:	00002d97          	auipc	s11,0x2
    80007210:	29cd8d93          	addi	s11,s11,668 # 800094a8 <digits>
    80007214:	00f77793          	andi	a5,a4,15
    80007218:	00fd87b3          	add	a5,s11,a5
    8000721c:	0007c683          	lbu	a3,0(a5)
    80007220:	00f00613          	li	a2,15
    80007224:	0007079b          	sext.w	a5,a4
    80007228:	f8d40023          	sb	a3,-128(s0)
    8000722c:	0047559b          	srliw	a1,a4,0x4
    80007230:	0047569b          	srliw	a3,a4,0x4
    80007234:	00000c93          	li	s9,0
    80007238:	0ee65063          	bge	a2,a4,80007318 <__printf+0x410>
    8000723c:	00f6f693          	andi	a3,a3,15
    80007240:	00dd86b3          	add	a3,s11,a3
    80007244:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007248:	0087d79b          	srliw	a5,a5,0x8
    8000724c:	00100c93          	li	s9,1
    80007250:	f8d400a3          	sb	a3,-127(s0)
    80007254:	0cb67263          	bgeu	a2,a1,80007318 <__printf+0x410>
    80007258:	00f7f693          	andi	a3,a5,15
    8000725c:	00dd86b3          	add	a3,s11,a3
    80007260:	0006c583          	lbu	a1,0(a3)
    80007264:	00f00613          	li	a2,15
    80007268:	0047d69b          	srliw	a3,a5,0x4
    8000726c:	f8b40123          	sb	a1,-126(s0)
    80007270:	0047d593          	srli	a1,a5,0x4
    80007274:	28f67e63          	bgeu	a2,a5,80007510 <__printf+0x608>
    80007278:	00f6f693          	andi	a3,a3,15
    8000727c:	00dd86b3          	add	a3,s11,a3
    80007280:	0006c503          	lbu	a0,0(a3)
    80007284:	0087d813          	srli	a6,a5,0x8
    80007288:	0087d69b          	srliw	a3,a5,0x8
    8000728c:	f8a401a3          	sb	a0,-125(s0)
    80007290:	28b67663          	bgeu	a2,a1,8000751c <__printf+0x614>
    80007294:	00f6f693          	andi	a3,a3,15
    80007298:	00dd86b3          	add	a3,s11,a3
    8000729c:	0006c583          	lbu	a1,0(a3)
    800072a0:	00c7d513          	srli	a0,a5,0xc
    800072a4:	00c7d69b          	srliw	a3,a5,0xc
    800072a8:	f8b40223          	sb	a1,-124(s0)
    800072ac:	29067a63          	bgeu	a2,a6,80007540 <__printf+0x638>
    800072b0:	00f6f693          	andi	a3,a3,15
    800072b4:	00dd86b3          	add	a3,s11,a3
    800072b8:	0006c583          	lbu	a1,0(a3)
    800072bc:	0107d813          	srli	a6,a5,0x10
    800072c0:	0107d69b          	srliw	a3,a5,0x10
    800072c4:	f8b402a3          	sb	a1,-123(s0)
    800072c8:	28a67263          	bgeu	a2,a0,8000754c <__printf+0x644>
    800072cc:	00f6f693          	andi	a3,a3,15
    800072d0:	00dd86b3          	add	a3,s11,a3
    800072d4:	0006c683          	lbu	a3,0(a3)
    800072d8:	0147d79b          	srliw	a5,a5,0x14
    800072dc:	f8d40323          	sb	a3,-122(s0)
    800072e0:	21067663          	bgeu	a2,a6,800074ec <__printf+0x5e4>
    800072e4:	02079793          	slli	a5,a5,0x20
    800072e8:	0207d793          	srli	a5,a5,0x20
    800072ec:	00fd8db3          	add	s11,s11,a5
    800072f0:	000dc683          	lbu	a3,0(s11)
    800072f4:	00800793          	li	a5,8
    800072f8:	00700c93          	li	s9,7
    800072fc:	f8d403a3          	sb	a3,-121(s0)
    80007300:	00075c63          	bgez	a4,80007318 <__printf+0x410>
    80007304:	f9040713          	addi	a4,s0,-112
    80007308:	00f70733          	add	a4,a4,a5
    8000730c:	02d00693          	li	a3,45
    80007310:	fed70823          	sb	a3,-16(a4)
    80007314:	00078c93          	mv	s9,a5
    80007318:	f8040793          	addi	a5,s0,-128
    8000731c:	01978cb3          	add	s9,a5,s9
    80007320:	f7f40d13          	addi	s10,s0,-129
    80007324:	000cc503          	lbu	a0,0(s9)
    80007328:	fffc8c93          	addi	s9,s9,-1
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	9f8080e7          	jalr	-1544(ra) # 80006d24 <consputc>
    80007334:	ff9d18e3          	bne	s10,s9,80007324 <__printf+0x41c>
    80007338:	0100006f          	j	80007348 <__printf+0x440>
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	9e8080e7          	jalr	-1560(ra) # 80006d24 <consputc>
    80007344:	000c8493          	mv	s1,s9
    80007348:	00094503          	lbu	a0,0(s2)
    8000734c:	c60510e3          	bnez	a0,80006fac <__printf+0xa4>
    80007350:	e40c0ee3          	beqz	s8,800071ac <__printf+0x2a4>
    80007354:	00005517          	auipc	a0,0x5
    80007358:	79c50513          	addi	a0,a0,1948 # 8000caf0 <pr>
    8000735c:	00001097          	auipc	ra,0x1
    80007360:	94c080e7          	jalr	-1716(ra) # 80007ca8 <release>
    80007364:	e49ff06f          	j	800071ac <__printf+0x2a4>
    80007368:	f7843783          	ld	a5,-136(s0)
    8000736c:	03000513          	li	a0,48
    80007370:	01000d13          	li	s10,16
    80007374:	00878713          	addi	a4,a5,8
    80007378:	0007bc83          	ld	s9,0(a5)
    8000737c:	f6e43c23          	sd	a4,-136(s0)
    80007380:	00000097          	auipc	ra,0x0
    80007384:	9a4080e7          	jalr	-1628(ra) # 80006d24 <consputc>
    80007388:	07800513          	li	a0,120
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	998080e7          	jalr	-1640(ra) # 80006d24 <consputc>
    80007394:	00002d97          	auipc	s11,0x2
    80007398:	114d8d93          	addi	s11,s11,276 # 800094a8 <digits>
    8000739c:	03ccd793          	srli	a5,s9,0x3c
    800073a0:	00fd87b3          	add	a5,s11,a5
    800073a4:	0007c503          	lbu	a0,0(a5)
    800073a8:	fffd0d1b          	addiw	s10,s10,-1
    800073ac:	004c9c93          	slli	s9,s9,0x4
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	974080e7          	jalr	-1676(ra) # 80006d24 <consputc>
    800073b8:	fe0d12e3          	bnez	s10,8000739c <__printf+0x494>
    800073bc:	f8dff06f          	j	80007348 <__printf+0x440>
    800073c0:	f7843783          	ld	a5,-136(s0)
    800073c4:	0007bc83          	ld	s9,0(a5)
    800073c8:	00878793          	addi	a5,a5,8
    800073cc:	f6f43c23          	sd	a5,-136(s0)
    800073d0:	000c9a63          	bnez	s9,800073e4 <__printf+0x4dc>
    800073d4:	1080006f          	j	800074dc <__printf+0x5d4>
    800073d8:	001c8c93          	addi	s9,s9,1
    800073dc:	00000097          	auipc	ra,0x0
    800073e0:	948080e7          	jalr	-1720(ra) # 80006d24 <consputc>
    800073e4:	000cc503          	lbu	a0,0(s9)
    800073e8:	fe0518e3          	bnez	a0,800073d8 <__printf+0x4d0>
    800073ec:	f5dff06f          	j	80007348 <__printf+0x440>
    800073f0:	02500513          	li	a0,37
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	930080e7          	jalr	-1744(ra) # 80006d24 <consputc>
    800073fc:	000c8513          	mv	a0,s9
    80007400:	00000097          	auipc	ra,0x0
    80007404:	924080e7          	jalr	-1756(ra) # 80006d24 <consputc>
    80007408:	f41ff06f          	j	80007348 <__printf+0x440>
    8000740c:	02500513          	li	a0,37
    80007410:	00000097          	auipc	ra,0x0
    80007414:	914080e7          	jalr	-1772(ra) # 80006d24 <consputc>
    80007418:	f31ff06f          	j	80007348 <__printf+0x440>
    8000741c:	00030513          	mv	a0,t1
    80007420:	00000097          	auipc	ra,0x0
    80007424:	7bc080e7          	jalr	1980(ra) # 80007bdc <acquire>
    80007428:	b4dff06f          	j	80006f74 <__printf+0x6c>
    8000742c:	40c0053b          	negw	a0,a2
    80007430:	00a00713          	li	a4,10
    80007434:	02e576bb          	remuw	a3,a0,a4
    80007438:	00002d97          	auipc	s11,0x2
    8000743c:	070d8d93          	addi	s11,s11,112 # 800094a8 <digits>
    80007440:	ff700593          	li	a1,-9
    80007444:	02069693          	slli	a3,a3,0x20
    80007448:	0206d693          	srli	a3,a3,0x20
    8000744c:	00dd86b3          	add	a3,s11,a3
    80007450:	0006c683          	lbu	a3,0(a3)
    80007454:	02e557bb          	divuw	a5,a0,a4
    80007458:	f8d40023          	sb	a3,-128(s0)
    8000745c:	10b65e63          	bge	a2,a1,80007578 <__printf+0x670>
    80007460:	06300593          	li	a1,99
    80007464:	02e7f6bb          	remuw	a3,a5,a4
    80007468:	02069693          	slli	a3,a3,0x20
    8000746c:	0206d693          	srli	a3,a3,0x20
    80007470:	00dd86b3          	add	a3,s11,a3
    80007474:	0006c683          	lbu	a3,0(a3)
    80007478:	02e7d73b          	divuw	a4,a5,a4
    8000747c:	00200793          	li	a5,2
    80007480:	f8d400a3          	sb	a3,-127(s0)
    80007484:	bca5ece3          	bltu	a1,a0,8000705c <__printf+0x154>
    80007488:	ce5ff06f          	j	8000716c <__printf+0x264>
    8000748c:	40e007bb          	negw	a5,a4
    80007490:	00002d97          	auipc	s11,0x2
    80007494:	018d8d93          	addi	s11,s11,24 # 800094a8 <digits>
    80007498:	00f7f693          	andi	a3,a5,15
    8000749c:	00dd86b3          	add	a3,s11,a3
    800074a0:	0006c583          	lbu	a1,0(a3)
    800074a4:	ff100613          	li	a2,-15
    800074a8:	0047d69b          	srliw	a3,a5,0x4
    800074ac:	f8b40023          	sb	a1,-128(s0)
    800074b0:	0047d59b          	srliw	a1,a5,0x4
    800074b4:	0ac75e63          	bge	a4,a2,80007570 <__printf+0x668>
    800074b8:	00f6f693          	andi	a3,a3,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c603          	lbu	a2,0(a3)
    800074c4:	00f00693          	li	a3,15
    800074c8:	0087d79b          	srliw	a5,a5,0x8
    800074cc:	f8c400a3          	sb	a2,-127(s0)
    800074d0:	d8b6e4e3          	bltu	a3,a1,80007258 <__printf+0x350>
    800074d4:	00200793          	li	a5,2
    800074d8:	e2dff06f          	j	80007304 <__printf+0x3fc>
    800074dc:	00002c97          	auipc	s9,0x2
    800074e0:	facc8c93          	addi	s9,s9,-84 # 80009488 <CONSOLE_STATUS+0x478>
    800074e4:	02800513          	li	a0,40
    800074e8:	ef1ff06f          	j	800073d8 <__printf+0x4d0>
    800074ec:	00700793          	li	a5,7
    800074f0:	00600c93          	li	s9,6
    800074f4:	e0dff06f          	j	80007300 <__printf+0x3f8>
    800074f8:	00700793          	li	a5,7
    800074fc:	00600c93          	li	s9,6
    80007500:	c69ff06f          	j	80007168 <__printf+0x260>
    80007504:	00300793          	li	a5,3
    80007508:	00200c93          	li	s9,2
    8000750c:	c5dff06f          	j	80007168 <__printf+0x260>
    80007510:	00300793          	li	a5,3
    80007514:	00200c93          	li	s9,2
    80007518:	de9ff06f          	j	80007300 <__printf+0x3f8>
    8000751c:	00400793          	li	a5,4
    80007520:	00300c93          	li	s9,3
    80007524:	dddff06f          	j	80007300 <__printf+0x3f8>
    80007528:	00400793          	li	a5,4
    8000752c:	00300c93          	li	s9,3
    80007530:	c39ff06f          	j	80007168 <__printf+0x260>
    80007534:	00500793          	li	a5,5
    80007538:	00400c93          	li	s9,4
    8000753c:	c2dff06f          	j	80007168 <__printf+0x260>
    80007540:	00500793          	li	a5,5
    80007544:	00400c93          	li	s9,4
    80007548:	db9ff06f          	j	80007300 <__printf+0x3f8>
    8000754c:	00600793          	li	a5,6
    80007550:	00500c93          	li	s9,5
    80007554:	dadff06f          	j	80007300 <__printf+0x3f8>
    80007558:	00600793          	li	a5,6
    8000755c:	00500c93          	li	s9,5
    80007560:	c09ff06f          	j	80007168 <__printf+0x260>
    80007564:	00800793          	li	a5,8
    80007568:	00700c93          	li	s9,7
    8000756c:	bfdff06f          	j	80007168 <__printf+0x260>
    80007570:	00100793          	li	a5,1
    80007574:	d91ff06f          	j	80007304 <__printf+0x3fc>
    80007578:	00100793          	li	a5,1
    8000757c:	bf1ff06f          	j	8000716c <__printf+0x264>
    80007580:	00900793          	li	a5,9
    80007584:	00800c93          	li	s9,8
    80007588:	be1ff06f          	j	80007168 <__printf+0x260>
    8000758c:	00002517          	auipc	a0,0x2
    80007590:	f0450513          	addi	a0,a0,-252 # 80009490 <CONSOLE_STATUS+0x480>
    80007594:	00000097          	auipc	ra,0x0
    80007598:	918080e7          	jalr	-1768(ra) # 80006eac <panic>

000000008000759c <printfinit>:
    8000759c:	fe010113          	addi	sp,sp,-32
    800075a0:	00813823          	sd	s0,16(sp)
    800075a4:	00913423          	sd	s1,8(sp)
    800075a8:	00113c23          	sd	ra,24(sp)
    800075ac:	02010413          	addi	s0,sp,32
    800075b0:	00005497          	auipc	s1,0x5
    800075b4:	54048493          	addi	s1,s1,1344 # 8000caf0 <pr>
    800075b8:	00048513          	mv	a0,s1
    800075bc:	00002597          	auipc	a1,0x2
    800075c0:	ee458593          	addi	a1,a1,-284 # 800094a0 <CONSOLE_STATUS+0x490>
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	5f4080e7          	jalr	1524(ra) # 80007bb8 <initlock>
    800075cc:	01813083          	ld	ra,24(sp)
    800075d0:	01013403          	ld	s0,16(sp)
    800075d4:	0004ac23          	sw	zero,24(s1)
    800075d8:	00813483          	ld	s1,8(sp)
    800075dc:	02010113          	addi	sp,sp,32
    800075e0:	00008067          	ret

00000000800075e4 <uartinit>:
    800075e4:	ff010113          	addi	sp,sp,-16
    800075e8:	00813423          	sd	s0,8(sp)
    800075ec:	01010413          	addi	s0,sp,16
    800075f0:	100007b7          	lui	a5,0x10000
    800075f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800075f8:	f8000713          	li	a4,-128
    800075fc:	00e781a3          	sb	a4,3(a5)
    80007600:	00300713          	li	a4,3
    80007604:	00e78023          	sb	a4,0(a5)
    80007608:	000780a3          	sb	zero,1(a5)
    8000760c:	00e781a3          	sb	a4,3(a5)
    80007610:	00700693          	li	a3,7
    80007614:	00d78123          	sb	a3,2(a5)
    80007618:	00e780a3          	sb	a4,1(a5)
    8000761c:	00813403          	ld	s0,8(sp)
    80007620:	01010113          	addi	sp,sp,16
    80007624:	00008067          	ret

0000000080007628 <uartputc>:
    80007628:	00004797          	auipc	a5,0x4
    8000762c:	1e07a783          	lw	a5,480(a5) # 8000b808 <panicked>
    80007630:	00078463          	beqz	a5,80007638 <uartputc+0x10>
    80007634:	0000006f          	j	80007634 <uartputc+0xc>
    80007638:	fd010113          	addi	sp,sp,-48
    8000763c:	02813023          	sd	s0,32(sp)
    80007640:	00913c23          	sd	s1,24(sp)
    80007644:	01213823          	sd	s2,16(sp)
    80007648:	01313423          	sd	s3,8(sp)
    8000764c:	02113423          	sd	ra,40(sp)
    80007650:	03010413          	addi	s0,sp,48
    80007654:	00004917          	auipc	s2,0x4
    80007658:	1bc90913          	addi	s2,s2,444 # 8000b810 <uart_tx_r>
    8000765c:	00093783          	ld	a5,0(s2)
    80007660:	00004497          	auipc	s1,0x4
    80007664:	1b848493          	addi	s1,s1,440 # 8000b818 <uart_tx_w>
    80007668:	0004b703          	ld	a4,0(s1)
    8000766c:	02078693          	addi	a3,a5,32
    80007670:	00050993          	mv	s3,a0
    80007674:	02e69c63          	bne	a3,a4,800076ac <uartputc+0x84>
    80007678:	00001097          	auipc	ra,0x1
    8000767c:	834080e7          	jalr	-1996(ra) # 80007eac <push_on>
    80007680:	00093783          	ld	a5,0(s2)
    80007684:	0004b703          	ld	a4,0(s1)
    80007688:	02078793          	addi	a5,a5,32
    8000768c:	00e79463          	bne	a5,a4,80007694 <uartputc+0x6c>
    80007690:	0000006f          	j	80007690 <uartputc+0x68>
    80007694:	00001097          	auipc	ra,0x1
    80007698:	88c080e7          	jalr	-1908(ra) # 80007f20 <pop_on>
    8000769c:	00093783          	ld	a5,0(s2)
    800076a0:	0004b703          	ld	a4,0(s1)
    800076a4:	02078693          	addi	a3,a5,32
    800076a8:	fce688e3          	beq	a3,a4,80007678 <uartputc+0x50>
    800076ac:	01f77693          	andi	a3,a4,31
    800076b0:	00005597          	auipc	a1,0x5
    800076b4:	46058593          	addi	a1,a1,1120 # 8000cb10 <uart_tx_buf>
    800076b8:	00d586b3          	add	a3,a1,a3
    800076bc:	00170713          	addi	a4,a4,1
    800076c0:	01368023          	sb	s3,0(a3)
    800076c4:	00e4b023          	sd	a4,0(s1)
    800076c8:	10000637          	lui	a2,0x10000
    800076cc:	02f71063          	bne	a4,a5,800076ec <uartputc+0xc4>
    800076d0:	0340006f          	j	80007704 <uartputc+0xdc>
    800076d4:	00074703          	lbu	a4,0(a4)
    800076d8:	00f93023          	sd	a5,0(s2)
    800076dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800076e0:	00093783          	ld	a5,0(s2)
    800076e4:	0004b703          	ld	a4,0(s1)
    800076e8:	00f70e63          	beq	a4,a5,80007704 <uartputc+0xdc>
    800076ec:	00564683          	lbu	a3,5(a2)
    800076f0:	01f7f713          	andi	a4,a5,31
    800076f4:	00e58733          	add	a4,a1,a4
    800076f8:	0206f693          	andi	a3,a3,32
    800076fc:	00178793          	addi	a5,a5,1
    80007700:	fc069ae3          	bnez	a3,800076d4 <uartputc+0xac>
    80007704:	02813083          	ld	ra,40(sp)
    80007708:	02013403          	ld	s0,32(sp)
    8000770c:	01813483          	ld	s1,24(sp)
    80007710:	01013903          	ld	s2,16(sp)
    80007714:	00813983          	ld	s3,8(sp)
    80007718:	03010113          	addi	sp,sp,48
    8000771c:	00008067          	ret

0000000080007720 <uartputc_sync>:
    80007720:	ff010113          	addi	sp,sp,-16
    80007724:	00813423          	sd	s0,8(sp)
    80007728:	01010413          	addi	s0,sp,16
    8000772c:	00004717          	auipc	a4,0x4
    80007730:	0dc72703          	lw	a4,220(a4) # 8000b808 <panicked>
    80007734:	02071663          	bnez	a4,80007760 <uartputc_sync+0x40>
    80007738:	00050793          	mv	a5,a0
    8000773c:	100006b7          	lui	a3,0x10000
    80007740:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007744:	02077713          	andi	a4,a4,32
    80007748:	fe070ce3          	beqz	a4,80007740 <uartputc_sync+0x20>
    8000774c:	0ff7f793          	andi	a5,a5,255
    80007750:	00f68023          	sb	a5,0(a3)
    80007754:	00813403          	ld	s0,8(sp)
    80007758:	01010113          	addi	sp,sp,16
    8000775c:	00008067          	ret
    80007760:	0000006f          	j	80007760 <uartputc_sync+0x40>

0000000080007764 <uartstart>:
    80007764:	ff010113          	addi	sp,sp,-16
    80007768:	00813423          	sd	s0,8(sp)
    8000776c:	01010413          	addi	s0,sp,16
    80007770:	00004617          	auipc	a2,0x4
    80007774:	0a060613          	addi	a2,a2,160 # 8000b810 <uart_tx_r>
    80007778:	00004517          	auipc	a0,0x4
    8000777c:	0a050513          	addi	a0,a0,160 # 8000b818 <uart_tx_w>
    80007780:	00063783          	ld	a5,0(a2)
    80007784:	00053703          	ld	a4,0(a0)
    80007788:	04f70263          	beq	a4,a5,800077cc <uartstart+0x68>
    8000778c:	100005b7          	lui	a1,0x10000
    80007790:	00005817          	auipc	a6,0x5
    80007794:	38080813          	addi	a6,a6,896 # 8000cb10 <uart_tx_buf>
    80007798:	01c0006f          	j	800077b4 <uartstart+0x50>
    8000779c:	0006c703          	lbu	a4,0(a3)
    800077a0:	00f63023          	sd	a5,0(a2)
    800077a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077a8:	00063783          	ld	a5,0(a2)
    800077ac:	00053703          	ld	a4,0(a0)
    800077b0:	00f70e63          	beq	a4,a5,800077cc <uartstart+0x68>
    800077b4:	01f7f713          	andi	a4,a5,31
    800077b8:	00e806b3          	add	a3,a6,a4
    800077bc:	0055c703          	lbu	a4,5(a1)
    800077c0:	00178793          	addi	a5,a5,1
    800077c4:	02077713          	andi	a4,a4,32
    800077c8:	fc071ae3          	bnez	a4,8000779c <uartstart+0x38>
    800077cc:	00813403          	ld	s0,8(sp)
    800077d0:	01010113          	addi	sp,sp,16
    800077d4:	00008067          	ret

00000000800077d8 <uartgetc>:
    800077d8:	ff010113          	addi	sp,sp,-16
    800077dc:	00813423          	sd	s0,8(sp)
    800077e0:	01010413          	addi	s0,sp,16
    800077e4:	10000737          	lui	a4,0x10000
    800077e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800077ec:	0017f793          	andi	a5,a5,1
    800077f0:	00078c63          	beqz	a5,80007808 <uartgetc+0x30>
    800077f4:	00074503          	lbu	a0,0(a4)
    800077f8:	0ff57513          	andi	a0,a0,255
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	01010113          	addi	sp,sp,16
    80007804:	00008067          	ret
    80007808:	fff00513          	li	a0,-1
    8000780c:	ff1ff06f          	j	800077fc <uartgetc+0x24>

0000000080007810 <uartintr>:
    80007810:	100007b7          	lui	a5,0x10000
    80007814:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007818:	0017f793          	andi	a5,a5,1
    8000781c:	0a078463          	beqz	a5,800078c4 <uartintr+0xb4>
    80007820:	fe010113          	addi	sp,sp,-32
    80007824:	00813823          	sd	s0,16(sp)
    80007828:	00913423          	sd	s1,8(sp)
    8000782c:	00113c23          	sd	ra,24(sp)
    80007830:	02010413          	addi	s0,sp,32
    80007834:	100004b7          	lui	s1,0x10000
    80007838:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000783c:	0ff57513          	andi	a0,a0,255
    80007840:	fffff097          	auipc	ra,0xfffff
    80007844:	534080e7          	jalr	1332(ra) # 80006d74 <consoleintr>
    80007848:	0054c783          	lbu	a5,5(s1)
    8000784c:	0017f793          	andi	a5,a5,1
    80007850:	fe0794e3          	bnez	a5,80007838 <uartintr+0x28>
    80007854:	00004617          	auipc	a2,0x4
    80007858:	fbc60613          	addi	a2,a2,-68 # 8000b810 <uart_tx_r>
    8000785c:	00004517          	auipc	a0,0x4
    80007860:	fbc50513          	addi	a0,a0,-68 # 8000b818 <uart_tx_w>
    80007864:	00063783          	ld	a5,0(a2)
    80007868:	00053703          	ld	a4,0(a0)
    8000786c:	04f70263          	beq	a4,a5,800078b0 <uartintr+0xa0>
    80007870:	100005b7          	lui	a1,0x10000
    80007874:	00005817          	auipc	a6,0x5
    80007878:	29c80813          	addi	a6,a6,668 # 8000cb10 <uart_tx_buf>
    8000787c:	01c0006f          	j	80007898 <uartintr+0x88>
    80007880:	0006c703          	lbu	a4,0(a3)
    80007884:	00f63023          	sd	a5,0(a2)
    80007888:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000788c:	00063783          	ld	a5,0(a2)
    80007890:	00053703          	ld	a4,0(a0)
    80007894:	00f70e63          	beq	a4,a5,800078b0 <uartintr+0xa0>
    80007898:	01f7f713          	andi	a4,a5,31
    8000789c:	00e806b3          	add	a3,a6,a4
    800078a0:	0055c703          	lbu	a4,5(a1)
    800078a4:	00178793          	addi	a5,a5,1
    800078a8:	02077713          	andi	a4,a4,32
    800078ac:	fc071ae3          	bnez	a4,80007880 <uartintr+0x70>
    800078b0:	01813083          	ld	ra,24(sp)
    800078b4:	01013403          	ld	s0,16(sp)
    800078b8:	00813483          	ld	s1,8(sp)
    800078bc:	02010113          	addi	sp,sp,32
    800078c0:	00008067          	ret
    800078c4:	00004617          	auipc	a2,0x4
    800078c8:	f4c60613          	addi	a2,a2,-180 # 8000b810 <uart_tx_r>
    800078cc:	00004517          	auipc	a0,0x4
    800078d0:	f4c50513          	addi	a0,a0,-180 # 8000b818 <uart_tx_w>
    800078d4:	00063783          	ld	a5,0(a2)
    800078d8:	00053703          	ld	a4,0(a0)
    800078dc:	04f70263          	beq	a4,a5,80007920 <uartintr+0x110>
    800078e0:	100005b7          	lui	a1,0x10000
    800078e4:	00005817          	auipc	a6,0x5
    800078e8:	22c80813          	addi	a6,a6,556 # 8000cb10 <uart_tx_buf>
    800078ec:	01c0006f          	j	80007908 <uartintr+0xf8>
    800078f0:	0006c703          	lbu	a4,0(a3)
    800078f4:	00f63023          	sd	a5,0(a2)
    800078f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078fc:	00063783          	ld	a5,0(a2)
    80007900:	00053703          	ld	a4,0(a0)
    80007904:	02f70063          	beq	a4,a5,80007924 <uartintr+0x114>
    80007908:	01f7f713          	andi	a4,a5,31
    8000790c:	00e806b3          	add	a3,a6,a4
    80007910:	0055c703          	lbu	a4,5(a1)
    80007914:	00178793          	addi	a5,a5,1
    80007918:	02077713          	andi	a4,a4,32
    8000791c:	fc071ae3          	bnez	a4,800078f0 <uartintr+0xe0>
    80007920:	00008067          	ret
    80007924:	00008067          	ret

0000000080007928 <kinit>:
    80007928:	fc010113          	addi	sp,sp,-64
    8000792c:	02913423          	sd	s1,40(sp)
    80007930:	fffff7b7          	lui	a5,0xfffff
    80007934:	00006497          	auipc	s1,0x6
    80007938:	1fb48493          	addi	s1,s1,507 # 8000db2f <end+0xfff>
    8000793c:	02813823          	sd	s0,48(sp)
    80007940:	01313c23          	sd	s3,24(sp)
    80007944:	00f4f4b3          	and	s1,s1,a5
    80007948:	02113c23          	sd	ra,56(sp)
    8000794c:	03213023          	sd	s2,32(sp)
    80007950:	01413823          	sd	s4,16(sp)
    80007954:	01513423          	sd	s5,8(sp)
    80007958:	04010413          	addi	s0,sp,64
    8000795c:	000017b7          	lui	a5,0x1
    80007960:	01100993          	li	s3,17
    80007964:	00f487b3          	add	a5,s1,a5
    80007968:	01b99993          	slli	s3,s3,0x1b
    8000796c:	06f9e063          	bltu	s3,a5,800079cc <kinit+0xa4>
    80007970:	00005a97          	auipc	s5,0x5
    80007974:	1c0a8a93          	addi	s5,s5,448 # 8000cb30 <end>
    80007978:	0754ec63          	bltu	s1,s5,800079f0 <kinit+0xc8>
    8000797c:	0734fa63          	bgeu	s1,s3,800079f0 <kinit+0xc8>
    80007980:	00088a37          	lui	s4,0x88
    80007984:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007988:	00004917          	auipc	s2,0x4
    8000798c:	e9890913          	addi	s2,s2,-360 # 8000b820 <kmem>
    80007990:	00ca1a13          	slli	s4,s4,0xc
    80007994:	0140006f          	j	800079a8 <kinit+0x80>
    80007998:	000017b7          	lui	a5,0x1
    8000799c:	00f484b3          	add	s1,s1,a5
    800079a0:	0554e863          	bltu	s1,s5,800079f0 <kinit+0xc8>
    800079a4:	0534f663          	bgeu	s1,s3,800079f0 <kinit+0xc8>
    800079a8:	00001637          	lui	a2,0x1
    800079ac:	00100593          	li	a1,1
    800079b0:	00048513          	mv	a0,s1
    800079b4:	00000097          	auipc	ra,0x0
    800079b8:	5e4080e7          	jalr	1508(ra) # 80007f98 <__memset>
    800079bc:	00093783          	ld	a5,0(s2)
    800079c0:	00f4b023          	sd	a5,0(s1)
    800079c4:	00993023          	sd	s1,0(s2)
    800079c8:	fd4498e3          	bne	s1,s4,80007998 <kinit+0x70>
    800079cc:	03813083          	ld	ra,56(sp)
    800079d0:	03013403          	ld	s0,48(sp)
    800079d4:	02813483          	ld	s1,40(sp)
    800079d8:	02013903          	ld	s2,32(sp)
    800079dc:	01813983          	ld	s3,24(sp)
    800079e0:	01013a03          	ld	s4,16(sp)
    800079e4:	00813a83          	ld	s5,8(sp)
    800079e8:	04010113          	addi	sp,sp,64
    800079ec:	00008067          	ret
    800079f0:	00002517          	auipc	a0,0x2
    800079f4:	ad050513          	addi	a0,a0,-1328 # 800094c0 <digits+0x18>
    800079f8:	fffff097          	auipc	ra,0xfffff
    800079fc:	4b4080e7          	jalr	1204(ra) # 80006eac <panic>

0000000080007a00 <freerange>:
    80007a00:	fc010113          	addi	sp,sp,-64
    80007a04:	000017b7          	lui	a5,0x1
    80007a08:	02913423          	sd	s1,40(sp)
    80007a0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a10:	009504b3          	add	s1,a0,s1
    80007a14:	fffff537          	lui	a0,0xfffff
    80007a18:	02813823          	sd	s0,48(sp)
    80007a1c:	02113c23          	sd	ra,56(sp)
    80007a20:	03213023          	sd	s2,32(sp)
    80007a24:	01313c23          	sd	s3,24(sp)
    80007a28:	01413823          	sd	s4,16(sp)
    80007a2c:	01513423          	sd	s5,8(sp)
    80007a30:	01613023          	sd	s6,0(sp)
    80007a34:	04010413          	addi	s0,sp,64
    80007a38:	00a4f4b3          	and	s1,s1,a0
    80007a3c:	00f487b3          	add	a5,s1,a5
    80007a40:	06f5e463          	bltu	a1,a5,80007aa8 <freerange+0xa8>
    80007a44:	00005a97          	auipc	s5,0x5
    80007a48:	0eca8a93          	addi	s5,s5,236 # 8000cb30 <end>
    80007a4c:	0954e263          	bltu	s1,s5,80007ad0 <freerange+0xd0>
    80007a50:	01100993          	li	s3,17
    80007a54:	01b99993          	slli	s3,s3,0x1b
    80007a58:	0734fc63          	bgeu	s1,s3,80007ad0 <freerange+0xd0>
    80007a5c:	00058a13          	mv	s4,a1
    80007a60:	00004917          	auipc	s2,0x4
    80007a64:	dc090913          	addi	s2,s2,-576 # 8000b820 <kmem>
    80007a68:	00002b37          	lui	s6,0x2
    80007a6c:	0140006f          	j	80007a80 <freerange+0x80>
    80007a70:	000017b7          	lui	a5,0x1
    80007a74:	00f484b3          	add	s1,s1,a5
    80007a78:	0554ec63          	bltu	s1,s5,80007ad0 <freerange+0xd0>
    80007a7c:	0534fa63          	bgeu	s1,s3,80007ad0 <freerange+0xd0>
    80007a80:	00001637          	lui	a2,0x1
    80007a84:	00100593          	li	a1,1
    80007a88:	00048513          	mv	a0,s1
    80007a8c:	00000097          	auipc	ra,0x0
    80007a90:	50c080e7          	jalr	1292(ra) # 80007f98 <__memset>
    80007a94:	00093703          	ld	a4,0(s2)
    80007a98:	016487b3          	add	a5,s1,s6
    80007a9c:	00e4b023          	sd	a4,0(s1)
    80007aa0:	00993023          	sd	s1,0(s2)
    80007aa4:	fcfa76e3          	bgeu	s4,a5,80007a70 <freerange+0x70>
    80007aa8:	03813083          	ld	ra,56(sp)
    80007aac:	03013403          	ld	s0,48(sp)
    80007ab0:	02813483          	ld	s1,40(sp)
    80007ab4:	02013903          	ld	s2,32(sp)
    80007ab8:	01813983          	ld	s3,24(sp)
    80007abc:	01013a03          	ld	s4,16(sp)
    80007ac0:	00813a83          	ld	s5,8(sp)
    80007ac4:	00013b03          	ld	s6,0(sp)
    80007ac8:	04010113          	addi	sp,sp,64
    80007acc:	00008067          	ret
    80007ad0:	00002517          	auipc	a0,0x2
    80007ad4:	9f050513          	addi	a0,a0,-1552 # 800094c0 <digits+0x18>
    80007ad8:	fffff097          	auipc	ra,0xfffff
    80007adc:	3d4080e7          	jalr	980(ra) # 80006eac <panic>

0000000080007ae0 <kfree>:
    80007ae0:	fe010113          	addi	sp,sp,-32
    80007ae4:	00813823          	sd	s0,16(sp)
    80007ae8:	00113c23          	sd	ra,24(sp)
    80007aec:	00913423          	sd	s1,8(sp)
    80007af0:	02010413          	addi	s0,sp,32
    80007af4:	03451793          	slli	a5,a0,0x34
    80007af8:	04079c63          	bnez	a5,80007b50 <kfree+0x70>
    80007afc:	00005797          	auipc	a5,0x5
    80007b00:	03478793          	addi	a5,a5,52 # 8000cb30 <end>
    80007b04:	00050493          	mv	s1,a0
    80007b08:	04f56463          	bltu	a0,a5,80007b50 <kfree+0x70>
    80007b0c:	01100793          	li	a5,17
    80007b10:	01b79793          	slli	a5,a5,0x1b
    80007b14:	02f57e63          	bgeu	a0,a5,80007b50 <kfree+0x70>
    80007b18:	00001637          	lui	a2,0x1
    80007b1c:	00100593          	li	a1,1
    80007b20:	00000097          	auipc	ra,0x0
    80007b24:	478080e7          	jalr	1144(ra) # 80007f98 <__memset>
    80007b28:	00004797          	auipc	a5,0x4
    80007b2c:	cf878793          	addi	a5,a5,-776 # 8000b820 <kmem>
    80007b30:	0007b703          	ld	a4,0(a5)
    80007b34:	01813083          	ld	ra,24(sp)
    80007b38:	01013403          	ld	s0,16(sp)
    80007b3c:	00e4b023          	sd	a4,0(s1)
    80007b40:	0097b023          	sd	s1,0(a5)
    80007b44:	00813483          	ld	s1,8(sp)
    80007b48:	02010113          	addi	sp,sp,32
    80007b4c:	00008067          	ret
    80007b50:	00002517          	auipc	a0,0x2
    80007b54:	97050513          	addi	a0,a0,-1680 # 800094c0 <digits+0x18>
    80007b58:	fffff097          	auipc	ra,0xfffff
    80007b5c:	354080e7          	jalr	852(ra) # 80006eac <panic>

0000000080007b60 <kalloc>:
    80007b60:	fe010113          	addi	sp,sp,-32
    80007b64:	00813823          	sd	s0,16(sp)
    80007b68:	00913423          	sd	s1,8(sp)
    80007b6c:	00113c23          	sd	ra,24(sp)
    80007b70:	02010413          	addi	s0,sp,32
    80007b74:	00004797          	auipc	a5,0x4
    80007b78:	cac78793          	addi	a5,a5,-852 # 8000b820 <kmem>
    80007b7c:	0007b483          	ld	s1,0(a5)
    80007b80:	02048063          	beqz	s1,80007ba0 <kalloc+0x40>
    80007b84:	0004b703          	ld	a4,0(s1)
    80007b88:	00001637          	lui	a2,0x1
    80007b8c:	00500593          	li	a1,5
    80007b90:	00048513          	mv	a0,s1
    80007b94:	00e7b023          	sd	a4,0(a5)
    80007b98:	00000097          	auipc	ra,0x0
    80007b9c:	400080e7          	jalr	1024(ra) # 80007f98 <__memset>
    80007ba0:	01813083          	ld	ra,24(sp)
    80007ba4:	01013403          	ld	s0,16(sp)
    80007ba8:	00048513          	mv	a0,s1
    80007bac:	00813483          	ld	s1,8(sp)
    80007bb0:	02010113          	addi	sp,sp,32
    80007bb4:	00008067          	ret

0000000080007bb8 <initlock>:
    80007bb8:	ff010113          	addi	sp,sp,-16
    80007bbc:	00813423          	sd	s0,8(sp)
    80007bc0:	01010413          	addi	s0,sp,16
    80007bc4:	00813403          	ld	s0,8(sp)
    80007bc8:	00b53423          	sd	a1,8(a0)
    80007bcc:	00052023          	sw	zero,0(a0)
    80007bd0:	00053823          	sd	zero,16(a0)
    80007bd4:	01010113          	addi	sp,sp,16
    80007bd8:	00008067          	ret

0000000080007bdc <acquire>:
    80007bdc:	fe010113          	addi	sp,sp,-32
    80007be0:	00813823          	sd	s0,16(sp)
    80007be4:	00913423          	sd	s1,8(sp)
    80007be8:	00113c23          	sd	ra,24(sp)
    80007bec:	01213023          	sd	s2,0(sp)
    80007bf0:	02010413          	addi	s0,sp,32
    80007bf4:	00050493          	mv	s1,a0
    80007bf8:	10002973          	csrr	s2,sstatus
    80007bfc:	100027f3          	csrr	a5,sstatus
    80007c00:	ffd7f793          	andi	a5,a5,-3
    80007c04:	10079073          	csrw	sstatus,a5
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	8e8080e7          	jalr	-1816(ra) # 800064f0 <mycpu>
    80007c10:	07852783          	lw	a5,120(a0)
    80007c14:	06078e63          	beqz	a5,80007c90 <acquire+0xb4>
    80007c18:	fffff097          	auipc	ra,0xfffff
    80007c1c:	8d8080e7          	jalr	-1832(ra) # 800064f0 <mycpu>
    80007c20:	07852783          	lw	a5,120(a0)
    80007c24:	0004a703          	lw	a4,0(s1)
    80007c28:	0017879b          	addiw	a5,a5,1
    80007c2c:	06f52c23          	sw	a5,120(a0)
    80007c30:	04071063          	bnez	a4,80007c70 <acquire+0x94>
    80007c34:	00100713          	li	a4,1
    80007c38:	00070793          	mv	a5,a4
    80007c3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c40:	0007879b          	sext.w	a5,a5
    80007c44:	fe079ae3          	bnez	a5,80007c38 <acquire+0x5c>
    80007c48:	0ff0000f          	fence
    80007c4c:	fffff097          	auipc	ra,0xfffff
    80007c50:	8a4080e7          	jalr	-1884(ra) # 800064f0 <mycpu>
    80007c54:	01813083          	ld	ra,24(sp)
    80007c58:	01013403          	ld	s0,16(sp)
    80007c5c:	00a4b823          	sd	a0,16(s1)
    80007c60:	00013903          	ld	s2,0(sp)
    80007c64:	00813483          	ld	s1,8(sp)
    80007c68:	02010113          	addi	sp,sp,32
    80007c6c:	00008067          	ret
    80007c70:	0104b903          	ld	s2,16(s1)
    80007c74:	fffff097          	auipc	ra,0xfffff
    80007c78:	87c080e7          	jalr	-1924(ra) # 800064f0 <mycpu>
    80007c7c:	faa91ce3          	bne	s2,a0,80007c34 <acquire+0x58>
    80007c80:	00002517          	auipc	a0,0x2
    80007c84:	84850513          	addi	a0,a0,-1976 # 800094c8 <digits+0x20>
    80007c88:	fffff097          	auipc	ra,0xfffff
    80007c8c:	224080e7          	jalr	548(ra) # 80006eac <panic>
    80007c90:	00195913          	srli	s2,s2,0x1
    80007c94:	fffff097          	auipc	ra,0xfffff
    80007c98:	85c080e7          	jalr	-1956(ra) # 800064f0 <mycpu>
    80007c9c:	00197913          	andi	s2,s2,1
    80007ca0:	07252e23          	sw	s2,124(a0)
    80007ca4:	f75ff06f          	j	80007c18 <acquire+0x3c>

0000000080007ca8 <release>:
    80007ca8:	fe010113          	addi	sp,sp,-32
    80007cac:	00813823          	sd	s0,16(sp)
    80007cb0:	00113c23          	sd	ra,24(sp)
    80007cb4:	00913423          	sd	s1,8(sp)
    80007cb8:	01213023          	sd	s2,0(sp)
    80007cbc:	02010413          	addi	s0,sp,32
    80007cc0:	00052783          	lw	a5,0(a0)
    80007cc4:	00079a63          	bnez	a5,80007cd8 <release+0x30>
    80007cc8:	00002517          	auipc	a0,0x2
    80007ccc:	80850513          	addi	a0,a0,-2040 # 800094d0 <digits+0x28>
    80007cd0:	fffff097          	auipc	ra,0xfffff
    80007cd4:	1dc080e7          	jalr	476(ra) # 80006eac <panic>
    80007cd8:	01053903          	ld	s2,16(a0)
    80007cdc:	00050493          	mv	s1,a0
    80007ce0:	fffff097          	auipc	ra,0xfffff
    80007ce4:	810080e7          	jalr	-2032(ra) # 800064f0 <mycpu>
    80007ce8:	fea910e3          	bne	s2,a0,80007cc8 <release+0x20>
    80007cec:	0004b823          	sd	zero,16(s1)
    80007cf0:	0ff0000f          	fence
    80007cf4:	0f50000f          	fence	iorw,ow
    80007cf8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007cfc:	ffffe097          	auipc	ra,0xffffe
    80007d00:	7f4080e7          	jalr	2036(ra) # 800064f0 <mycpu>
    80007d04:	100027f3          	csrr	a5,sstatus
    80007d08:	0027f793          	andi	a5,a5,2
    80007d0c:	04079a63          	bnez	a5,80007d60 <release+0xb8>
    80007d10:	07852783          	lw	a5,120(a0)
    80007d14:	02f05e63          	blez	a5,80007d50 <release+0xa8>
    80007d18:	fff7871b          	addiw	a4,a5,-1
    80007d1c:	06e52c23          	sw	a4,120(a0)
    80007d20:	00071c63          	bnez	a4,80007d38 <release+0x90>
    80007d24:	07c52783          	lw	a5,124(a0)
    80007d28:	00078863          	beqz	a5,80007d38 <release+0x90>
    80007d2c:	100027f3          	csrr	a5,sstatus
    80007d30:	0027e793          	ori	a5,a5,2
    80007d34:	10079073          	csrw	sstatus,a5
    80007d38:	01813083          	ld	ra,24(sp)
    80007d3c:	01013403          	ld	s0,16(sp)
    80007d40:	00813483          	ld	s1,8(sp)
    80007d44:	00013903          	ld	s2,0(sp)
    80007d48:	02010113          	addi	sp,sp,32
    80007d4c:	00008067          	ret
    80007d50:	00001517          	auipc	a0,0x1
    80007d54:	7a050513          	addi	a0,a0,1952 # 800094f0 <digits+0x48>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	154080e7          	jalr	340(ra) # 80006eac <panic>
    80007d60:	00001517          	auipc	a0,0x1
    80007d64:	77850513          	addi	a0,a0,1912 # 800094d8 <digits+0x30>
    80007d68:	fffff097          	auipc	ra,0xfffff
    80007d6c:	144080e7          	jalr	324(ra) # 80006eac <panic>

0000000080007d70 <holding>:
    80007d70:	00052783          	lw	a5,0(a0)
    80007d74:	00079663          	bnez	a5,80007d80 <holding+0x10>
    80007d78:	00000513          	li	a0,0
    80007d7c:	00008067          	ret
    80007d80:	fe010113          	addi	sp,sp,-32
    80007d84:	00813823          	sd	s0,16(sp)
    80007d88:	00913423          	sd	s1,8(sp)
    80007d8c:	00113c23          	sd	ra,24(sp)
    80007d90:	02010413          	addi	s0,sp,32
    80007d94:	01053483          	ld	s1,16(a0)
    80007d98:	ffffe097          	auipc	ra,0xffffe
    80007d9c:	758080e7          	jalr	1880(ra) # 800064f0 <mycpu>
    80007da0:	01813083          	ld	ra,24(sp)
    80007da4:	01013403          	ld	s0,16(sp)
    80007da8:	40a48533          	sub	a0,s1,a0
    80007dac:	00153513          	seqz	a0,a0
    80007db0:	00813483          	ld	s1,8(sp)
    80007db4:	02010113          	addi	sp,sp,32
    80007db8:	00008067          	ret

0000000080007dbc <push_off>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00113c23          	sd	ra,24(sp)
    80007dc8:	00913423          	sd	s1,8(sp)
    80007dcc:	02010413          	addi	s0,sp,32
    80007dd0:	100024f3          	csrr	s1,sstatus
    80007dd4:	100027f3          	csrr	a5,sstatus
    80007dd8:	ffd7f793          	andi	a5,a5,-3
    80007ddc:	10079073          	csrw	sstatus,a5
    80007de0:	ffffe097          	auipc	ra,0xffffe
    80007de4:	710080e7          	jalr	1808(ra) # 800064f0 <mycpu>
    80007de8:	07852783          	lw	a5,120(a0)
    80007dec:	02078663          	beqz	a5,80007e18 <push_off+0x5c>
    80007df0:	ffffe097          	auipc	ra,0xffffe
    80007df4:	700080e7          	jalr	1792(ra) # 800064f0 <mycpu>
    80007df8:	07852783          	lw	a5,120(a0)
    80007dfc:	01813083          	ld	ra,24(sp)
    80007e00:	01013403          	ld	s0,16(sp)
    80007e04:	0017879b          	addiw	a5,a5,1
    80007e08:	06f52c23          	sw	a5,120(a0)
    80007e0c:	00813483          	ld	s1,8(sp)
    80007e10:	02010113          	addi	sp,sp,32
    80007e14:	00008067          	ret
    80007e18:	0014d493          	srli	s1,s1,0x1
    80007e1c:	ffffe097          	auipc	ra,0xffffe
    80007e20:	6d4080e7          	jalr	1748(ra) # 800064f0 <mycpu>
    80007e24:	0014f493          	andi	s1,s1,1
    80007e28:	06952e23          	sw	s1,124(a0)
    80007e2c:	fc5ff06f          	j	80007df0 <push_off+0x34>

0000000080007e30 <pop_off>:
    80007e30:	ff010113          	addi	sp,sp,-16
    80007e34:	00813023          	sd	s0,0(sp)
    80007e38:	00113423          	sd	ra,8(sp)
    80007e3c:	01010413          	addi	s0,sp,16
    80007e40:	ffffe097          	auipc	ra,0xffffe
    80007e44:	6b0080e7          	jalr	1712(ra) # 800064f0 <mycpu>
    80007e48:	100027f3          	csrr	a5,sstatus
    80007e4c:	0027f793          	andi	a5,a5,2
    80007e50:	04079663          	bnez	a5,80007e9c <pop_off+0x6c>
    80007e54:	07852783          	lw	a5,120(a0)
    80007e58:	02f05a63          	blez	a5,80007e8c <pop_off+0x5c>
    80007e5c:	fff7871b          	addiw	a4,a5,-1
    80007e60:	06e52c23          	sw	a4,120(a0)
    80007e64:	00071c63          	bnez	a4,80007e7c <pop_off+0x4c>
    80007e68:	07c52783          	lw	a5,124(a0)
    80007e6c:	00078863          	beqz	a5,80007e7c <pop_off+0x4c>
    80007e70:	100027f3          	csrr	a5,sstatus
    80007e74:	0027e793          	ori	a5,a5,2
    80007e78:	10079073          	csrw	sstatus,a5
    80007e7c:	00813083          	ld	ra,8(sp)
    80007e80:	00013403          	ld	s0,0(sp)
    80007e84:	01010113          	addi	sp,sp,16
    80007e88:	00008067          	ret
    80007e8c:	00001517          	auipc	a0,0x1
    80007e90:	66450513          	addi	a0,a0,1636 # 800094f0 <digits+0x48>
    80007e94:	fffff097          	auipc	ra,0xfffff
    80007e98:	018080e7          	jalr	24(ra) # 80006eac <panic>
    80007e9c:	00001517          	auipc	a0,0x1
    80007ea0:	63c50513          	addi	a0,a0,1596 # 800094d8 <digits+0x30>
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	008080e7          	jalr	8(ra) # 80006eac <panic>

0000000080007eac <push_on>:
    80007eac:	fe010113          	addi	sp,sp,-32
    80007eb0:	00813823          	sd	s0,16(sp)
    80007eb4:	00113c23          	sd	ra,24(sp)
    80007eb8:	00913423          	sd	s1,8(sp)
    80007ebc:	02010413          	addi	s0,sp,32
    80007ec0:	100024f3          	csrr	s1,sstatus
    80007ec4:	100027f3          	csrr	a5,sstatus
    80007ec8:	0027e793          	ori	a5,a5,2
    80007ecc:	10079073          	csrw	sstatus,a5
    80007ed0:	ffffe097          	auipc	ra,0xffffe
    80007ed4:	620080e7          	jalr	1568(ra) # 800064f0 <mycpu>
    80007ed8:	07852783          	lw	a5,120(a0)
    80007edc:	02078663          	beqz	a5,80007f08 <push_on+0x5c>
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	610080e7          	jalr	1552(ra) # 800064f0 <mycpu>
    80007ee8:	07852783          	lw	a5,120(a0)
    80007eec:	01813083          	ld	ra,24(sp)
    80007ef0:	01013403          	ld	s0,16(sp)
    80007ef4:	0017879b          	addiw	a5,a5,1
    80007ef8:	06f52c23          	sw	a5,120(a0)
    80007efc:	00813483          	ld	s1,8(sp)
    80007f00:	02010113          	addi	sp,sp,32
    80007f04:	00008067          	ret
    80007f08:	0014d493          	srli	s1,s1,0x1
    80007f0c:	ffffe097          	auipc	ra,0xffffe
    80007f10:	5e4080e7          	jalr	1508(ra) # 800064f0 <mycpu>
    80007f14:	0014f493          	andi	s1,s1,1
    80007f18:	06952e23          	sw	s1,124(a0)
    80007f1c:	fc5ff06f          	j	80007ee0 <push_on+0x34>

0000000080007f20 <pop_on>:
    80007f20:	ff010113          	addi	sp,sp,-16
    80007f24:	00813023          	sd	s0,0(sp)
    80007f28:	00113423          	sd	ra,8(sp)
    80007f2c:	01010413          	addi	s0,sp,16
    80007f30:	ffffe097          	auipc	ra,0xffffe
    80007f34:	5c0080e7          	jalr	1472(ra) # 800064f0 <mycpu>
    80007f38:	100027f3          	csrr	a5,sstatus
    80007f3c:	0027f793          	andi	a5,a5,2
    80007f40:	04078463          	beqz	a5,80007f88 <pop_on+0x68>
    80007f44:	07852783          	lw	a5,120(a0)
    80007f48:	02f05863          	blez	a5,80007f78 <pop_on+0x58>
    80007f4c:	fff7879b          	addiw	a5,a5,-1
    80007f50:	06f52c23          	sw	a5,120(a0)
    80007f54:	07853783          	ld	a5,120(a0)
    80007f58:	00079863          	bnez	a5,80007f68 <pop_on+0x48>
    80007f5c:	100027f3          	csrr	a5,sstatus
    80007f60:	ffd7f793          	andi	a5,a5,-3
    80007f64:	10079073          	csrw	sstatus,a5
    80007f68:	00813083          	ld	ra,8(sp)
    80007f6c:	00013403          	ld	s0,0(sp)
    80007f70:	01010113          	addi	sp,sp,16
    80007f74:	00008067          	ret
    80007f78:	00001517          	auipc	a0,0x1
    80007f7c:	5a050513          	addi	a0,a0,1440 # 80009518 <digits+0x70>
    80007f80:	fffff097          	auipc	ra,0xfffff
    80007f84:	f2c080e7          	jalr	-212(ra) # 80006eac <panic>
    80007f88:	00001517          	auipc	a0,0x1
    80007f8c:	57050513          	addi	a0,a0,1392 # 800094f8 <digits+0x50>
    80007f90:	fffff097          	auipc	ra,0xfffff
    80007f94:	f1c080e7          	jalr	-228(ra) # 80006eac <panic>

0000000080007f98 <__memset>:
    80007f98:	ff010113          	addi	sp,sp,-16
    80007f9c:	00813423          	sd	s0,8(sp)
    80007fa0:	01010413          	addi	s0,sp,16
    80007fa4:	1a060e63          	beqz	a2,80008160 <__memset+0x1c8>
    80007fa8:	40a007b3          	neg	a5,a0
    80007fac:	0077f793          	andi	a5,a5,7
    80007fb0:	00778693          	addi	a3,a5,7
    80007fb4:	00b00813          	li	a6,11
    80007fb8:	0ff5f593          	andi	a1,a1,255
    80007fbc:	fff6071b          	addiw	a4,a2,-1
    80007fc0:	1b06e663          	bltu	a3,a6,8000816c <__memset+0x1d4>
    80007fc4:	1cd76463          	bltu	a4,a3,8000818c <__memset+0x1f4>
    80007fc8:	1a078e63          	beqz	a5,80008184 <__memset+0x1ec>
    80007fcc:	00b50023          	sb	a1,0(a0)
    80007fd0:	00100713          	li	a4,1
    80007fd4:	1ae78463          	beq	a5,a4,8000817c <__memset+0x1e4>
    80007fd8:	00b500a3          	sb	a1,1(a0)
    80007fdc:	00200713          	li	a4,2
    80007fe0:	1ae78a63          	beq	a5,a4,80008194 <__memset+0x1fc>
    80007fe4:	00b50123          	sb	a1,2(a0)
    80007fe8:	00300713          	li	a4,3
    80007fec:	18e78463          	beq	a5,a4,80008174 <__memset+0x1dc>
    80007ff0:	00b501a3          	sb	a1,3(a0)
    80007ff4:	00400713          	li	a4,4
    80007ff8:	1ae78263          	beq	a5,a4,8000819c <__memset+0x204>
    80007ffc:	00b50223          	sb	a1,4(a0)
    80008000:	00500713          	li	a4,5
    80008004:	1ae78063          	beq	a5,a4,800081a4 <__memset+0x20c>
    80008008:	00b502a3          	sb	a1,5(a0)
    8000800c:	00700713          	li	a4,7
    80008010:	18e79e63          	bne	a5,a4,800081ac <__memset+0x214>
    80008014:	00b50323          	sb	a1,6(a0)
    80008018:	00700e93          	li	t4,7
    8000801c:	00859713          	slli	a4,a1,0x8
    80008020:	00e5e733          	or	a4,a1,a4
    80008024:	01059e13          	slli	t3,a1,0x10
    80008028:	01c76e33          	or	t3,a4,t3
    8000802c:	01859313          	slli	t1,a1,0x18
    80008030:	006e6333          	or	t1,t3,t1
    80008034:	02059893          	slli	a7,a1,0x20
    80008038:	40f60e3b          	subw	t3,a2,a5
    8000803c:	011368b3          	or	a7,t1,a7
    80008040:	02859813          	slli	a6,a1,0x28
    80008044:	0108e833          	or	a6,a7,a6
    80008048:	03059693          	slli	a3,a1,0x30
    8000804c:	003e589b          	srliw	a7,t3,0x3
    80008050:	00d866b3          	or	a3,a6,a3
    80008054:	03859713          	slli	a4,a1,0x38
    80008058:	00389813          	slli	a6,a7,0x3
    8000805c:	00f507b3          	add	a5,a0,a5
    80008060:	00e6e733          	or	a4,a3,a4
    80008064:	000e089b          	sext.w	a7,t3
    80008068:	00f806b3          	add	a3,a6,a5
    8000806c:	00e7b023          	sd	a4,0(a5)
    80008070:	00878793          	addi	a5,a5,8
    80008074:	fed79ce3          	bne	a5,a3,8000806c <__memset+0xd4>
    80008078:	ff8e7793          	andi	a5,t3,-8
    8000807c:	0007871b          	sext.w	a4,a5
    80008080:	01d787bb          	addw	a5,a5,t4
    80008084:	0ce88e63          	beq	a7,a4,80008160 <__memset+0x1c8>
    80008088:	00f50733          	add	a4,a0,a5
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	0017871b          	addiw	a4,a5,1
    80008094:	0cc77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0027871b          	addiw	a4,a5,2
    800080a4:	0ac77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0037871b          	addiw	a4,a5,3
    800080b4:	0ac77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0047871b          	addiw	a4,a5,4
    800080c4:	08c77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0057871b          	addiw	a4,a5,5
    800080d4:	08c77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0067871b          	addiw	a4,a5,6
    800080e4:	06c77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0077871b          	addiw	a4,a5,7
    800080f4:	06c77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0087871b          	addiw	a4,a5,8
    80008104:	04c77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0097871b          	addiw	a4,a5,9
    80008114:	04c77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	00a7871b          	addiw	a4,a5,10
    80008124:	02c77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	00b7871b          	addiw	a4,a5,11
    80008134:	02c77663          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00c7871b          	addiw	a4,a5,12
    80008144:	00c77e63          	bgeu	a4,a2,80008160 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00d7879b          	addiw	a5,a5,13
    80008154:	00c7f663          	bgeu	a5,a2,80008160 <__memset+0x1c8>
    80008158:	00f507b3          	add	a5,a0,a5
    8000815c:	00b78023          	sb	a1,0(a5)
    80008160:	00813403          	ld	s0,8(sp)
    80008164:	01010113          	addi	sp,sp,16
    80008168:	00008067          	ret
    8000816c:	00b00693          	li	a3,11
    80008170:	e55ff06f          	j	80007fc4 <__memset+0x2c>
    80008174:	00300e93          	li	t4,3
    80008178:	ea5ff06f          	j	8000801c <__memset+0x84>
    8000817c:	00100e93          	li	t4,1
    80008180:	e9dff06f          	j	8000801c <__memset+0x84>
    80008184:	00000e93          	li	t4,0
    80008188:	e95ff06f          	j	8000801c <__memset+0x84>
    8000818c:	00000793          	li	a5,0
    80008190:	ef9ff06f          	j	80008088 <__memset+0xf0>
    80008194:	00200e93          	li	t4,2
    80008198:	e85ff06f          	j	8000801c <__memset+0x84>
    8000819c:	00400e93          	li	t4,4
    800081a0:	e7dff06f          	j	8000801c <__memset+0x84>
    800081a4:	00500e93          	li	t4,5
    800081a8:	e75ff06f          	j	8000801c <__memset+0x84>
    800081ac:	00600e93          	li	t4,6
    800081b0:	e6dff06f          	j	8000801c <__memset+0x84>

00000000800081b4 <__memmove>:
    800081b4:	ff010113          	addi	sp,sp,-16
    800081b8:	00813423          	sd	s0,8(sp)
    800081bc:	01010413          	addi	s0,sp,16
    800081c0:	0e060863          	beqz	a2,800082b0 <__memmove+0xfc>
    800081c4:	fff6069b          	addiw	a3,a2,-1
    800081c8:	0006881b          	sext.w	a6,a3
    800081cc:	0ea5e863          	bltu	a1,a0,800082bc <__memmove+0x108>
    800081d0:	00758713          	addi	a4,a1,7
    800081d4:	00a5e7b3          	or	a5,a1,a0
    800081d8:	40a70733          	sub	a4,a4,a0
    800081dc:	0077f793          	andi	a5,a5,7
    800081e0:	00f73713          	sltiu	a4,a4,15
    800081e4:	00174713          	xori	a4,a4,1
    800081e8:	0017b793          	seqz	a5,a5
    800081ec:	00e7f7b3          	and	a5,a5,a4
    800081f0:	10078863          	beqz	a5,80008300 <__memmove+0x14c>
    800081f4:	00900793          	li	a5,9
    800081f8:	1107f463          	bgeu	a5,a6,80008300 <__memmove+0x14c>
    800081fc:	0036581b          	srliw	a6,a2,0x3
    80008200:	fff8081b          	addiw	a6,a6,-1
    80008204:	02081813          	slli	a6,a6,0x20
    80008208:	01d85893          	srli	a7,a6,0x1d
    8000820c:	00858813          	addi	a6,a1,8
    80008210:	00058793          	mv	a5,a1
    80008214:	00050713          	mv	a4,a0
    80008218:	01088833          	add	a6,a7,a6
    8000821c:	0007b883          	ld	a7,0(a5)
    80008220:	00878793          	addi	a5,a5,8
    80008224:	00870713          	addi	a4,a4,8
    80008228:	ff173c23          	sd	a7,-8(a4)
    8000822c:	ff0798e3          	bne	a5,a6,8000821c <__memmove+0x68>
    80008230:	ff867713          	andi	a4,a2,-8
    80008234:	02071793          	slli	a5,a4,0x20
    80008238:	0207d793          	srli	a5,a5,0x20
    8000823c:	00f585b3          	add	a1,a1,a5
    80008240:	40e686bb          	subw	a3,a3,a4
    80008244:	00f507b3          	add	a5,a0,a5
    80008248:	06e60463          	beq	a2,a4,800082b0 <__memmove+0xfc>
    8000824c:	0005c703          	lbu	a4,0(a1)
    80008250:	00e78023          	sb	a4,0(a5)
    80008254:	04068e63          	beqz	a3,800082b0 <__memmove+0xfc>
    80008258:	0015c603          	lbu	a2,1(a1)
    8000825c:	00100713          	li	a4,1
    80008260:	00c780a3          	sb	a2,1(a5)
    80008264:	04e68663          	beq	a3,a4,800082b0 <__memmove+0xfc>
    80008268:	0025c603          	lbu	a2,2(a1)
    8000826c:	00200713          	li	a4,2
    80008270:	00c78123          	sb	a2,2(a5)
    80008274:	02e68e63          	beq	a3,a4,800082b0 <__memmove+0xfc>
    80008278:	0035c603          	lbu	a2,3(a1)
    8000827c:	00300713          	li	a4,3
    80008280:	00c781a3          	sb	a2,3(a5)
    80008284:	02e68663          	beq	a3,a4,800082b0 <__memmove+0xfc>
    80008288:	0045c603          	lbu	a2,4(a1)
    8000828c:	00400713          	li	a4,4
    80008290:	00c78223          	sb	a2,4(a5)
    80008294:	00e68e63          	beq	a3,a4,800082b0 <__memmove+0xfc>
    80008298:	0055c603          	lbu	a2,5(a1)
    8000829c:	00500713          	li	a4,5
    800082a0:	00c782a3          	sb	a2,5(a5)
    800082a4:	00e68663          	beq	a3,a4,800082b0 <__memmove+0xfc>
    800082a8:	0065c703          	lbu	a4,6(a1)
    800082ac:	00e78323          	sb	a4,6(a5)
    800082b0:	00813403          	ld	s0,8(sp)
    800082b4:	01010113          	addi	sp,sp,16
    800082b8:	00008067          	ret
    800082bc:	02061713          	slli	a4,a2,0x20
    800082c0:	02075713          	srli	a4,a4,0x20
    800082c4:	00e587b3          	add	a5,a1,a4
    800082c8:	f0f574e3          	bgeu	a0,a5,800081d0 <__memmove+0x1c>
    800082cc:	02069613          	slli	a2,a3,0x20
    800082d0:	02065613          	srli	a2,a2,0x20
    800082d4:	fff64613          	not	a2,a2
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00c78633          	add	a2,a5,a2
    800082e0:	fff7c683          	lbu	a3,-1(a5)
    800082e4:	fff78793          	addi	a5,a5,-1
    800082e8:	fff70713          	addi	a4,a4,-1
    800082ec:	00d70023          	sb	a3,0(a4)
    800082f0:	fec798e3          	bne	a5,a2,800082e0 <__memmove+0x12c>
    800082f4:	00813403          	ld	s0,8(sp)
    800082f8:	01010113          	addi	sp,sp,16
    800082fc:	00008067          	ret
    80008300:	02069713          	slli	a4,a3,0x20
    80008304:	02075713          	srli	a4,a4,0x20
    80008308:	00170713          	addi	a4,a4,1
    8000830c:	00e50733          	add	a4,a0,a4
    80008310:	00050793          	mv	a5,a0
    80008314:	0005c683          	lbu	a3,0(a1)
    80008318:	00178793          	addi	a5,a5,1
    8000831c:	00158593          	addi	a1,a1,1
    80008320:	fed78fa3          	sb	a3,-1(a5)
    80008324:	fee798e3          	bne	a5,a4,80008314 <__memmove+0x160>
    80008328:	f89ff06f          	j	800082b0 <__memmove+0xfc>

000000008000832c <__putc>:
    8000832c:	fe010113          	addi	sp,sp,-32
    80008330:	00813823          	sd	s0,16(sp)
    80008334:	00113c23          	sd	ra,24(sp)
    80008338:	02010413          	addi	s0,sp,32
    8000833c:	00050793          	mv	a5,a0
    80008340:	fef40593          	addi	a1,s0,-17
    80008344:	00100613          	li	a2,1
    80008348:	00000513          	li	a0,0
    8000834c:	fef407a3          	sb	a5,-17(s0)
    80008350:	fffff097          	auipc	ra,0xfffff
    80008354:	b3c080e7          	jalr	-1220(ra) # 80006e8c <console_write>
    80008358:	01813083          	ld	ra,24(sp)
    8000835c:	01013403          	ld	s0,16(sp)
    80008360:	02010113          	addi	sp,sp,32
    80008364:	00008067          	ret

0000000080008368 <__getc>:
    80008368:	fe010113          	addi	sp,sp,-32
    8000836c:	00813823          	sd	s0,16(sp)
    80008370:	00113c23          	sd	ra,24(sp)
    80008374:	02010413          	addi	s0,sp,32
    80008378:	fe840593          	addi	a1,s0,-24
    8000837c:	00100613          	li	a2,1
    80008380:	00000513          	li	a0,0
    80008384:	fffff097          	auipc	ra,0xfffff
    80008388:	ae8080e7          	jalr	-1304(ra) # 80006e6c <console_read>
    8000838c:	fe844503          	lbu	a0,-24(s0)
    80008390:	01813083          	ld	ra,24(sp)
    80008394:	01013403          	ld	s0,16(sp)
    80008398:	02010113          	addi	sp,sp,32
    8000839c:	00008067          	ret

00000000800083a0 <console_handler>:
    800083a0:	fe010113          	addi	sp,sp,-32
    800083a4:	00813823          	sd	s0,16(sp)
    800083a8:	00113c23          	sd	ra,24(sp)
    800083ac:	00913423          	sd	s1,8(sp)
    800083b0:	02010413          	addi	s0,sp,32
    800083b4:	14202773          	csrr	a4,scause
    800083b8:	100027f3          	csrr	a5,sstatus
    800083bc:	0027f793          	andi	a5,a5,2
    800083c0:	06079e63          	bnez	a5,8000843c <console_handler+0x9c>
    800083c4:	00074c63          	bltz	a4,800083dc <console_handler+0x3c>
    800083c8:	01813083          	ld	ra,24(sp)
    800083cc:	01013403          	ld	s0,16(sp)
    800083d0:	00813483          	ld	s1,8(sp)
    800083d4:	02010113          	addi	sp,sp,32
    800083d8:	00008067          	ret
    800083dc:	0ff77713          	andi	a4,a4,255
    800083e0:	00900793          	li	a5,9
    800083e4:	fef712e3          	bne	a4,a5,800083c8 <console_handler+0x28>
    800083e8:	ffffe097          	auipc	ra,0xffffe
    800083ec:	6dc080e7          	jalr	1756(ra) # 80006ac4 <plic_claim>
    800083f0:	00a00793          	li	a5,10
    800083f4:	00050493          	mv	s1,a0
    800083f8:	02f50c63          	beq	a0,a5,80008430 <console_handler+0x90>
    800083fc:	fc0506e3          	beqz	a0,800083c8 <console_handler+0x28>
    80008400:	00050593          	mv	a1,a0
    80008404:	00001517          	auipc	a0,0x1
    80008408:	01c50513          	addi	a0,a0,28 # 80009420 <CONSOLE_STATUS+0x410>
    8000840c:	fffff097          	auipc	ra,0xfffff
    80008410:	afc080e7          	jalr	-1284(ra) # 80006f08 <__printf>
    80008414:	01013403          	ld	s0,16(sp)
    80008418:	01813083          	ld	ra,24(sp)
    8000841c:	00048513          	mv	a0,s1
    80008420:	00813483          	ld	s1,8(sp)
    80008424:	02010113          	addi	sp,sp,32
    80008428:	ffffe317          	auipc	t1,0xffffe
    8000842c:	6d430067          	jr	1748(t1) # 80006afc <plic_complete>
    80008430:	fffff097          	auipc	ra,0xfffff
    80008434:	3e0080e7          	jalr	992(ra) # 80007810 <uartintr>
    80008438:	fddff06f          	j	80008414 <console_handler+0x74>
    8000843c:	00001517          	auipc	a0,0x1
    80008440:	0e450513          	addi	a0,a0,228 # 80009520 <digits+0x78>
    80008444:	fffff097          	auipc	ra,0xfffff
    80008448:	a68080e7          	jalr	-1432(ra) # 80006eac <panic>
	...
