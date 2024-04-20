
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	4e013103          	ld	sp,1248(sp) # 8000a4e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	489050ef          	jal	ra,80005ca4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV14push_registersEv>:
.global _ZN5RiscV14push_registersEv
.type _ZN5RiscV14push_registersEv, @function
_ZN5RiscV14push_registersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)
    ret
    80001084:	00008067          	ret

0000000080001088 <_ZN5RiscV13pop_registersEv>:
.global _ZN5RiscV13pop_registersEv
.type _ZN5RiscV13pop_registersEv, @function
_ZN5RiscV13pop_registersEv:
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	00008067          	ret

0000000080001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z7syscallmmmmm>:
#include "../h/syscall_c.h"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001150:	00000073          	ecall
}
    80001154:	00813403          	ld	s0,8(sp)
    80001158:	01010113          	addi	sp,sp,16
    8000115c:	00008067          	ret

0000000080001160 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    80001160:	04050663          	beqz	a0,800011ac <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    80001164:	ff010113          	addi	sp,sp,-16
    80001168:	00113423          	sd	ra,8(sp)
    8000116c:	00813023          	sd	s0,0(sp)
    80001170:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    80001174:	00001097          	auipc	ra,0x1
    80001178:	f00080e7          	jalr	-256(ra) # 80002074 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000117c:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001180:	00000713          	li	a4,0
    80001184:	00000693          	li	a3,0
    80001188:	00000613          	li	a2,0
    8000118c:	00100513          	li	a0,1
    80001190:	00000097          	auipc	ra,0x0
    80001194:	fb4080e7          	jalr	-76(ra) # 80001144 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001198:	00050513          	mv	a0,a0
    return (void*) addr;
}
    8000119c:	00813083          	ld	ra,8(sp)
    800011a0:	00013403          	ld	s0,0(sp)
    800011a4:	01010113          	addi	sp,sp,16
    800011a8:	00008067          	ret
    if (size == 0) return nullptr;
    800011ac:	00000513          	li	a0,0
}
    800011b0:	00008067          	ret

00000000800011b4 <_Z8mem_freePv>:

int mem_free (void* addr) {
    800011b4:	fe010113          	addi	sp,sp,-32
    800011b8:	00113c23          	sd	ra,24(sp)
    800011bc:	00813823          	sd	s0,16(sp)
    800011c0:	02010413          	addi	s0,sp,32
    800011c4:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800011c8:	00000713          	li	a4,0
    800011cc:	00000693          	li	a3,0
    800011d0:	00000613          	li	a2,0
    800011d4:	00200513          	li	a0,2
    800011d8:	00000097          	auipc	ra,0x0
    800011dc:	f6c080e7          	jalr	-148(ra) # 80001144 <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800011e0:	00050793          	mv	a5,a0
    800011e4:	fef42623          	sw	a5,-20(s0)
    return success;
    800011e8:	fec42503          	lw	a0,-20(s0)
}
    800011ec:	0005051b          	sext.w	a0,a0
    800011f0:	01813083          	ld	ra,24(sp)
    800011f4:	01013403          	ld	s0,16(sp)
    800011f8:	02010113          	addi	sp,sp,32
    800011fc:	00008067          	ret

0000000080001200 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001200:	fc010113          	addi	sp,sp,-64
    80001204:	02113c23          	sd	ra,56(sp)
    80001208:	02813823          	sd	s0,48(sp)
    8000120c:	02913423          	sd	s1,40(sp)
    80001210:	03213023          	sd	s2,32(sp)
    80001214:	01313c23          	sd	s3,24(sp)
    80001218:	04010413          	addi	s0,sp,64
    8000121c:	00050913          	mv	s2,a0
    80001220:	00058493          	mv	s1,a1
    80001224:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001228:	04058c63          	beqz	a1,80001280 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    8000122c:	00001537          	lui	a0,0x1
    80001230:	00000097          	auipc	ra,0x0
    80001234:	f30080e7          	jalr	-208(ra) # 80001160 <_Z9mem_allocm>
    80001238:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    8000123c:	00098693          	mv	a3,s3
    80001240:	00048613          	mv	a2,s1
    80001244:	00090593          	mv	a1,s2
    80001248:	01100513          	li	a0,17
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	ef8080e7          	jalr	-264(ra) # 80001144 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001254:	00050793          	mv	a5,a0
    80001258:	fcf42623          	sw	a5,-52(s0)
    return status;
    8000125c:	fcc42503          	lw	a0,-52(s0)
}
    80001260:	0005051b          	sext.w	a0,a0
    80001264:	03813083          	ld	ra,56(sp)
    80001268:	03013403          	ld	s0,48(sp)
    8000126c:	02813483          	ld	s1,40(sp)
    80001270:	02013903          	ld	s2,32(sp)
    80001274:	01813983          	ld	s3,24(sp)
    80001278:	04010113          	addi	sp,sp,64
    8000127c:	00008067          	ret
    void* stack_space = nullptr;
    80001280:	00000713          	li	a4,0
    80001284:	fb9ff06f          	j	8000123c <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001288 <_Z11thread_exitv>:

int thread_exit () {
    80001288:	fe010113          	addi	sp,sp,-32
    8000128c:	00113c23          	sd	ra,24(sp)
    80001290:	00813823          	sd	s0,16(sp)
    80001294:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001298:	00000713          	li	a4,0
    8000129c:	00000693          	li	a3,0
    800012a0:	00000613          	li	a2,0
    800012a4:	00000593          	li	a1,0
    800012a8:	01200513          	li	a0,18
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	e98080e7          	jalr	-360(ra) # 80001144 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800012b4:	00050793          	mv	a5,a0
    800012b8:	fef42623          	sw	a5,-20(s0)
    return status;
    800012bc:	fec42503          	lw	a0,-20(s0)
}
    800012c0:	0005051b          	sext.w	a0,a0
    800012c4:	01813083          	ld	ra,24(sp)
    800012c8:	01013403          	ld	s0,16(sp)
    800012cc:	02010113          	addi	sp,sp,32
    800012d0:	00008067          	ret

00000000800012d4 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00113423          	sd	ra,8(sp)
    800012dc:	00813023          	sd	s0,0(sp)
    800012e0:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800012e4:	00000713          	li	a4,0
    800012e8:	00000693          	li	a3,0
    800012ec:	00000613          	li	a2,0
    800012f0:	00000593          	li	a1,0
    800012f4:	01300513          	li	a0,19
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	e4c080e7          	jalr	-436(ra) # 80001144 <_Z7syscallmmmmm>
}
    80001300:	00813083          	ld	ra,8(sp)
    80001304:	00013403          	ld	s0,0(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle, unsigned init) { return 0; }
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    8000131c:	00000513          	li	a0,0
    80001320:	00813403          	ld	s0,8(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle) { return 0; }
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    80001338:	00000513          	li	a0,0
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id) { return 0; }
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    80001354:	00000513          	li	a0,0
    80001358:	00813403          	ld	s0,8(sp)
    8000135c:	01010113          	addi	sp,sp,16
    80001360:	00008067          	ret

0000000080001364 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id) { return 0; }
    80001364:	ff010113          	addi	sp,sp,-16
    80001368:	00813423          	sd	s0,8(sp)
    8000136c:	01010413          	addi	s0,sp,16
    80001370:	00000513          	li	a0,0
    80001374:	00813403          	ld	s0,8(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <_Z13sem_timedwaitP4_semm>:

int sem_timedwait(sem_t id, time_t timeout) { return 0; }
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16
    8000138c:	00000513          	li	a0,0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id) { return 0; }
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16
    800013a8:	00000513          	li	a0,0
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z10time_sleepm>:

int time_sleep (time_t) { return 0; }
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	00000513          	li	a0,0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z4getcv>:

char getc () { return __getc(); }
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
    800013e4:	00007097          	auipc	ra,0x7
    800013e8:	9c4080e7          	jalr	-1596(ra) # 80007da8 <__getc>
    800013ec:	00813083          	ld	ra,8(sp)
    800013f0:	00013403          	ld	s0,0(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_Z4putcc>:

    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00113423          	sd	ra,8(sp)
    80001404:	00813023          	sd	s0,0(sp)
    80001408:	01010413          	addi	s0,sp,16
    8000140c:	00007097          	auipc	ra,0x7
    80001410:	960080e7          	jalr	-1696(ra) # 80007d6c <__putc>
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z19testMemoryAllocatorv>:
#include "../lib/console.h"
#include "../h/memory_allocator.hpp"
#include "../h/risc-v.hpp"

void testMemoryAllocator() {
    80001424:	fe010113          	addi	sp,sp,-32
    80001428:	00113c23          	sd	ra,24(sp)
    8000142c:	00813823          	sd	s0,16(sp)
    80001430:	00913423          	sd	s1,8(sp)
    80001434:	01213023          	sd	s2,0(sp)
    80001438:	02010413          	addi	s0,sp,32
    MemoryAllocator::print();
    8000143c:	00001097          	auipc	ra,0x1
    80001440:	bac080e7          	jalr	-1108(ra) # 80001fe8 <_ZN15MemoryAllocator5printEv>
    void *addr = MemoryAllocator::mem_alloc(1);
    80001444:	00100513          	li	a0,1
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	848080e7          	jalr	-1976(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
    80001450:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001454:	00001097          	auipc	ra,0x1
    80001458:	b94080e7          	jalr	-1132(ra) # 80001fe8 <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(addr);
    8000145c:	00048513          	mv	a0,s1
    80001460:	00001097          	auipc	ra,0x1
    80001464:	a1c080e7          	jalr	-1508(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
    80001468:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	b7c080e7          	jalr	-1156(ra) # 80001fe8 <_ZN15MemoryAllocator5printEv>

    int s2 = MemoryAllocator::mem_free(addr);
    80001474:	00048513          	mv	a0,s1
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	a04080e7          	jalr	-1532(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
    80001480:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001484:	00001097          	auipc	ra,0x1
    80001488:	b64080e7          	jalr	-1180(ra) # 80001fe8 <_ZN15MemoryAllocator5printEv>

    if (s1 == 0) __putc('1');
    8000148c:	02090263          	beqz	s2,800014b0 <_Z19testMemoryAllocatorv+0x8c>
    if (s2 == -3) __putc('2');
    80001490:	ffd00793          	li	a5,-3
    80001494:	02f48663          	beq	s1,a5,800014c0 <_Z19testMemoryAllocatorv+0x9c>
}
    80001498:	01813083          	ld	ra,24(sp)
    8000149c:	01013403          	ld	s0,16(sp)
    800014a0:	00813483          	ld	s1,8(sp)
    800014a4:	00013903          	ld	s2,0(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret
    if (s1 == 0) __putc('1');
    800014b0:	03100513          	li	a0,49
    800014b4:	00007097          	auipc	ra,0x7
    800014b8:	8b8080e7          	jalr	-1864(ra) # 80007d6c <__putc>
    800014bc:	fd5ff06f          	j	80001490 <_Z19testMemoryAllocatorv+0x6c>
    if (s2 == -3) __putc('2');
    800014c0:	03200513          	li	a0,50
    800014c4:	00007097          	auipc	ra,0x7
    800014c8:	8a8080e7          	jalr	-1880(ra) # 80007d6c <__putc>
}
    800014cc:	fcdff06f          	j	80001498 <_Z19testMemoryAllocatorv+0x74>

00000000800014d0 <main>:

void userMain();

int main() {
    800014d0:	ff010113          	addi	sp,sp,-16
    800014d4:	00113423          	sd	ra,8(sp)
    800014d8:	00813023          	sd	s0,0(sp)
    800014dc:	01010413          	addi	s0,sp,16
    /// set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_supervisor_trap);
    800014e0:	00009797          	auipc	a5,0x9
    800014e4:	ff07b783          	ld	a5,-16(a5) # 8000a4d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    800014e8:	10579073          	csrw	stvec,a5
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    800014ec:	00200793          	li	a5,2
    800014f0:	1007a073          	csrs	sstatus,a5
    /// ???
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    /// initialize Memory Allocator
    MemoryAllocator::initialize();
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	8b8080e7          	jalr	-1864(ra) # 80001dac <_ZN15MemoryAllocator10initializeEv>
    /// Test Memory Allocation
//    testMemoryAllocator();
    /// Test everything
//    userMain();
    return 0;
    800014fc:	00000513          	li	a0,0
    80001500:	00813083          	ld	ra,8(sp)
    80001504:	00013403          	ld	s0,0(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return (*handle) -> id; /// return 0?
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    id = cnt++;
    80001510:	00009897          	auipc	a7,0x9
    80001514:	03088893          	addi	a7,a7,48 # 8000a540 <_ZN3TCB3cntE>
    80001518:	0008a803          	lw	a6,0(a7)
    8000151c:	0018031b          	addiw	t1,a6,1
    80001520:	0068a023          	sw	t1,0(a7)
    80001524:	01052023          	sw	a6,0(a0) # 1000 <_entry-0x7ffff000>
    status = RUNNABLE;
    80001528:	00052c23          	sw	zero,24(a0)
    this -> context = context;
    8000152c:	00e53423          	sd	a4,8(a0)
    80001530:	00f53823          	sd	a5,16(a0)
    this -> function_body = function_body;
    80001534:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001538:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    8000153c:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001540:	00200793          	li	a5,2
    80001544:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001548:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    8000154c:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001550:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80001554:	02058663          	beqz	a1,80001580 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	b30080e7          	jalr	-1232(ra) # 80002098 <_ZN9Scheduler3putEP3TCB>
}
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	02010113          	addi	sp,sp,32
    8000157c:	00008067          	ret
    80001580:	00008067          	ret

0000000080001584 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	01213023          	sd	s2,0(sp)
    80001598:	02010413          	addi	s0,sp,32
    8000159c:	00050493          	mv	s1,a0
    800015a0:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	a5c080e7          	jalr	-1444(ra) # 80001000 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800015ac:	01248a63          	beq	s1,s2,800015c0 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800015b0:	00890593          	addi	a1,s2,8
    800015b4:	00848513          	addi	a0,s1,8
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	b58080e7          	jalr	-1192(ra) # 80001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	ac8080e7          	jalr	-1336(ra) # 80001088 <_ZN5RiscV13pop_registersEv>
}
    800015c8:	01813083          	ld	ra,24(sp)
    800015cc:	01013403          	ld	s0,16(sp)
    800015d0:	00813483          	ld	s1,8(sp)
    800015d4:	00013903          	ld	s2,0(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret

00000000800015e0 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800015e0:	fe010113          	addi	sp,sp,-32
    800015e4:	00113c23          	sd	ra,24(sp)
    800015e8:	00813823          	sd	s0,16(sp)
    800015ec:	00913423          	sd	s1,8(sp)
    800015f0:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800015f4:	00009497          	auipc	s1,0x9
    800015f8:	f544b483          	ld	s1,-172(s1) # 8000a548 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    800015fc:	0184a783          	lw	a5,24(s1)
    80001600:	00400713          	li	a4,4
    80001604:	00e78663          	beq	a5,a4,80001610 <_ZN3TCB8dispatchEv+0x30>
    80001608:	00200713          	li	a4,2
    8000160c:	02e79e63          	bne	a5,a4,80001648 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001610:	00001097          	auipc	ra,0x1
    80001614:	ae8080e7          	jalr	-1304(ra) # 800020f8 <_ZN9Scheduler3getEv>
    80001618:	00009797          	auipc	a5,0x9
    8000161c:	f2a7b823          	sd	a0,-208(a5) # 8000a548 <_ZN3TCB7runningE>
    if (old != running) context_switch(&old -> context, &running -> context);
    80001620:	00a48a63          	beq	s1,a0,80001634 <_ZN3TCB8dispatchEv+0x54>
    80001624:	00850593          	addi	a1,a0,8
    80001628:	00848513          	addi	a0,s1,8
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	ae4080e7          	jalr	-1308(ra) # 80001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	a4c080e7          	jalr	-1460(ra) # 80002098 <_ZN9Scheduler3putEP3TCB>
    80001654:	fbdff06f          	j	80001610 <_ZN3TCB8dispatchEv+0x30>

0000000080001658 <_ZN3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() {
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00813423          	sd	s0,8(sp)
    80001660:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80001664:	04053503          	ld	a0,64(a0)
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001680:	04b53023          	sd	a1,64(a0)
}
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    8000169c:	04b53823          	sd	a1,80(a0)
}
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() {
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800016b8:	05053503          	ld	a0,80(a0)
    800016bc:	00813403          	ld	s0,8(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret

00000000800016c8 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00813423          	sd	s0,8(sp)
    800016d0:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800016d4:	04b53423          	sd	a1,72(a0)
}
    800016d8:	00813403          	ld	s0,8(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_ZN3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() {
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00813423          	sd	s0,8(sp)
    800016ec:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800016f0:	04853503          	ld	a0,72(a0)
    800016f4:	00813403          	ld	s0,8(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    this -> status = status;
    8000170c:	00b52c23          	sw	a1,24(a0)
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00113423          	sd	ra,8(sp)
    80001724:	00813023          	sd	s0,0(sp)
    80001728:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    8000172c:	00400593          	li	a1,4
    80001730:	00009517          	auipc	a0,0x9
    80001734:	e1853503          	ld	a0,-488(a0) # 8000a548 <_ZN3TCB7runningE>
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	fc8080e7          	jalr	-56(ra) # 80001700 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	ea0080e7          	jalr	-352(ra) # 800015e0 <_ZN3TCB8dispatchEv>
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00113423          	sd	ra,8(sp)
    80001760:	00813023          	sd	s0,0(sp)
    80001764:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	b94080e7          	jalr	-1132(ra) # 800022fc <_ZN5RiscV10popSppSpieEv>
    running -> function_body(running -> arg);
    80001770:	00009797          	auipc	a5,0x9
    80001774:	dd87b783          	ld	a5,-552(a5) # 8000a548 <_ZN3TCB7runningE>
    80001778:	0207b703          	ld	a4,32(a5)
    8000177c:	0287b503          	ld	a0,40(a5)
    80001780:	000700e7          	jalr	a4
    thread_exit();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	f98080e7          	jalr	-104(ra) # 8000171c <_ZN3TCB11thread_exitEv>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN3TCB5startEv>:

void TCB::start() {
    8000179c:	fe010113          	addi	sp,sp,-32
    800017a0:	00113c23          	sd	ra,24(sp)
    800017a4:	00813823          	sd	s0,16(sp)
    800017a8:	00913423          	sd	s1,8(sp)
    800017ac:	02010413          	addi	s0,sp,32
    800017b0:	00050493          	mv	s1,a0
    Scheduler::put(this);
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	8e4080e7          	jalr	-1820(ra) # 80002098 <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    800017bc:	00009797          	auipc	a5,0x9
    800017c0:	d8c7b783          	ld	a5,-628(a5) # 8000a548 <_ZN3TCB7runningE>
    800017c4:	00078c63          	beqz	a5,800017dc <_ZN3TCB5startEv+0x40>
}
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret
    if (!running) running = this;
    800017dc:	00009797          	auipc	a5,0x9
    800017e0:	d697b623          	sd	s1,-660(a5) # 8000a548 <_ZN3TCB7runningE>
}
    800017e4:	fe5ff06f          	j	800017c8 <_ZN3TCB5startEv+0x2c>

00000000800017e8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00113423          	sd	ra,8(sp)
    800017f0:	00813023          	sd	s0,0(sp)
    800017f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	87c080e7          	jalr	-1924(ra) # 80002074 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001800:	00000097          	auipc	ra,0x0
    80001804:	490080e7          	jalr	1168(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	654080e7          	jalr	1620(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001840:	fa010113          	addi	sp,sp,-96
    80001844:	04113c23          	sd	ra,88(sp)
    80001848:	04813823          	sd	s0,80(sp)
    8000184c:	04913423          	sd	s1,72(sp)
    80001850:	05213023          	sd	s2,64(sp)
    80001854:	03313c23          	sd	s3,56(sp)
    80001858:	03413823          	sd	s4,48(sp)
    8000185c:	03513423          	sd	s5,40(sp)
    80001860:	06010413          	addi	s0,sp,96
    80001864:	00050993          	mv	s3,a0
    80001868:	00058a13          	mv	s4,a1
    8000186c:	00060a93          	mv	s5,a2
    80001870:	00068493          	mv	s1,a3
    Context context = {
    80001874:	00000797          	auipc	a5,0x0
    80001878:	ee478793          	addi	a5,a5,-284 # 80001758 <_ZN3TCB16wrapper_functionEv>
    8000187c:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001880:	04068863          	beqz	a3,800018d0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x90>
    80001884:	000017b7          	lui	a5,0x1
    80001888:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000188c:	00f687b3          	add	a5,a3,a5
    };
    80001890:	faf43423          	sd	a5,-88(s0)
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001894:	fa043703          	ld	a4,-96(s0)
    80001898:	fae43823          	sd	a4,-80(s0)
    8000189c:	faf43c23          	sd	a5,-72(s0)
    800018a0:	05800513          	li	a0,88
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	f44080e7          	jalr	-188(ra) # 800017e8 <_ZN3TCBnwEm>
    800018ac:	00050913          	mv	s2,a0
    800018b0:	fb043703          	ld	a4,-80(s0)
    800018b4:	fb843783          	ld	a5,-72(s0)
    800018b8:	00048693          	mv	a3,s1
    800018bc:	000a8613          	mv	a2,s5
    800018c0:	000a0593          	mv	a1,s4
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	c4c080e7          	jalr	-948(ra) # 80001510 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    800018cc:	00c0006f          	j	800018d8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x98>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    800018d0:	00000793          	li	a5,0
    800018d4:	fbdff06f          	j	80001890 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800018d8:	0129b023          	sd	s2,0(s3)
    return (*handle) -> id; /// return 0?
    800018dc:	00092503          	lw	a0,0(s2)
}
    800018e0:	05813083          	ld	ra,88(sp)
    800018e4:	05013403          	ld	s0,80(sp)
    800018e8:	04813483          	ld	s1,72(sp)
    800018ec:	04013903          	ld	s2,64(sp)
    800018f0:	03813983          	ld	s3,56(sp)
    800018f4:	03013a03          	ld	s4,48(sp)
    800018f8:	02813a83          	ld	s5,40(sp)
    800018fc:	06010113          	addi	sp,sp,96
    80001900:	00008067          	ret
    80001904:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001908:	00090513          	mv	a0,s2
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	f0c080e7          	jalr	-244(ra) # 80001818 <_ZN3TCBdlEPv>
    80001914:	00048513          	mv	a0,s1
    80001918:	0000a097          	auipc	ra,0xa
    8000191c:	d90080e7          	jalr	-624(ra) # 8000b6a8 <_Unwind_Resume>

0000000080001920 <_ZN3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() {
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813423          	sd	s0,8(sp)
    80001928:	01010413          	addi	s0,sp,16
    return time_slice;
}
    8000192c:	03853503          	ld	a0,56(a0)
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16

}
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16

}
    80001960:	00813403          	ld	s0,8(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_Znwm>:
void* operator new(size_t size){
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000197c:	fffff097          	auipc	ra,0xfffff
    80001980:	7e4080e7          	jalr	2020(ra) # 80001160 <_Z9mem_allocm>
}
    80001984:	00813083          	ld	ra,8(sp)
    80001988:	00013403          	ld	s0,0(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret

0000000080001994 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	810080e7          	jalr	-2032(ra) # 800011b4 <_Z8mem_freePv>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
}
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	fc8080e7          	jalr	-56(ra) # 80001994 <_ZdlPv>
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
}
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	fa0080e7          	jalr	-96(ra) # 80001994 <_ZdlPv>
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00813423          	sd	s0,8(sp)
    80001a14:	01010413          	addi	s0,sp,16
    80001a18:	00009797          	auipc	a5,0x9
    80001a1c:	8d078793          	addi	a5,a5,-1840 # 8000a2e8 <_ZTV6Thread+0x10>
    80001a20:	00f53023          	sd	a5,0(a0)
}
    80001a24:	00813403          	ld	s0,8(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813423          	sd	s0,8(sp)
    80001a38:	01010413          	addi	s0,sp,16
}
    80001a3c:	00000513          	li	a0,0
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
}
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00813423          	sd	s0,8(sp)
    80001a6c:	01010413          	addi	s0,sp,16
}
    80001a70:	00000513          	li	a0,0
    80001a74:	00813403          	ld	s0,8(sp)
    80001a78:	01010113          	addi	sp,sp,16
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00813423          	sd	s0,8(sp)
    80001a88:	01010413          	addi	s0,sp,16
    80001a8c:	00009797          	auipc	a5,0x9
    80001a90:	85c78793          	addi	a5,a5,-1956 # 8000a2e8 <_ZTV6Thread+0x10>
    80001a94:	00f53023          	sd	a5,0(a0)
}
    80001a98:	00813403          	ld	s0,8(sp)
    80001a9c:	01010113          	addi	sp,sp,16
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813423          	sd	s0,8(sp)
    80001aac:	01010413          	addi	s0,sp,16
    80001ab0:	00009797          	auipc	a5,0x9
    80001ab4:	86078793          	addi	a5,a5,-1952 # 8000a310 <_ZTV9Semaphore+0x10>
    80001ab8:	00f53023          	sd	a5,0(a0)
}
    80001abc:	00813403          	ld	s0,8(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001ac8:	ff010113          	addi	sp,sp,-16
    80001acc:	00813423          	sd	s0,8(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    return 0;
}
    80001ad4:	00000513          	li	a0,0
    80001ad8:	00813403          	ld	s0,8(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00813423          	sd	s0,8(sp)
    80001aec:	01010413          	addi	s0,sp,16
    return 0;
}
    80001af0:	00000513          	li	a0,0
    80001af4:	00813403          	ld	s0,8(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813423          	sd	s0,8(sp)
    80001b08:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b0c:	00000513          	li	a0,0
    80001b10:	00813403          	ld	s0,8(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret

0000000080001b1c <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00813423          	sd	s0,8(sp)
    80001b24:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b28:	00000513          	li	a0,0
    80001b2c:	00813403          	ld	s0,8(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16

}
    80001b44:	00813403          	ld	s0,8(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    80001b64:	00050493          	mv	s1,a0
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	f18080e7          	jalr	-232(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80001b70:	00008797          	auipc	a5,0x8
    80001b74:	74878793          	addi	a5,a5,1864 # 8000a2b8 <_ZTV14PeriodicThread+0x10>
    80001b78:	00f4b023          	sd	a5,0(s1)

}
    80001b7c:	01813083          	ld	ra,24(sp)
    80001b80:	01013403          	ld	s0,16(sp)
    80001b84:	00813483          	ld	s1,8(sp)
    80001b88:	02010113          	addi	sp,sp,32
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN7Console4getcEv>:

char Console::getc() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00813423          	sd	s0,8(sp)
    80001b98:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b9c:	00000513          	li	a0,0
    80001ba0:	00813403          	ld	s0,8(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813423          	sd	s0,8(sp)
    80001bb4:	01010413          	addi	s0,sp,16

}
    80001bb8:	00813403          	ld	s0,8(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	00813403          	ld	s0,8(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00813423          	sd	s0,8(sp)
    80001be4:	01010413          	addi	s0,sp,16
    80001be8:	00813403          	ld	s0,8(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret

0000000080001bf4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00813423          	sd	s0,8(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    80001c00:	00008797          	auipc	a5,0x8
    80001c04:	6b878793          	addi	a5,a5,1720 # 8000a2b8 <_ZTV14PeriodicThread+0x10>
    80001c08:	00f53023          	sd	a5,0(a0)
    80001c0c:	00813403          	ld	s0,8(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_ZN14PeriodicThreadD0Ev>:
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00113423          	sd	ra,8(sp)
    80001c20:	00813023          	sd	s0,0(sp)
    80001c24:	01010413          	addi	s0,sp,16
    80001c28:	00008797          	auipc	a5,0x8
    80001c2c:	69078793          	addi	a5,a5,1680 # 8000a2b8 <_ZTV14PeriodicThread+0x10>
    80001c30:	00f53023          	sd	a5,0(a0)
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	d60080e7          	jalr	-672(ra) # 80001994 <_ZdlPv>
    80001c3c:	00813083          	ld	ra,8(sp)
    80001c40:	00013403          	ld	s0,0(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80001c58:	00853783          	ld	a5,8(a0)
    80001c5c:	02078463          	beqz	a5,80001c84 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80001c60:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80001c64:	01053783          	ld	a5,16(a0)
    80001c68:	00078863          	beqz	a5,80001c78 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80001c6c:	00060463          	beqz	a2,80001c74 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80001c70:	00853583          	ld	a1,8(a0)
    80001c74:	00b7b423          	sd	a1,8(a5)
}
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret
    else freeSegHead = nextSeg;
    80001c84:	00009797          	auipc	a5,0x9
    80001c88:	8cb7ba23          	sd	a1,-1836(a5) # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    80001c8c:	fd9ff06f          	j	80001c64 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080001c90 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00113c23          	sd	ra,24(sp)
    80001c98:	00813823          	sd	s0,16(sp)
    80001c9c:	00913423          	sd	s1,8(sp)
    80001ca0:	01213023          	sd	s2,0(sp)
    80001ca4:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001ca8:	0e050e63          	beqz	a0,80001da4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80001cac:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80001cb0:	00009497          	auipc	s1,0x9
    80001cb4:	8a84b483          	ld	s1,-1880(s1) # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001cb8:	0a048e63          	beqz	s1,80001d74 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80001cbc:	0004b783          	ld	a5,0(s1)
    80001cc0:	0527e463          	bltu	a5,s2,80001d08 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001cc4:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001cc8:	01700713          	li	a4,23
    80001ccc:	04f76263          	bltu	a4,a5,80001d10 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80001cd0:	00000613          	li	a2,0
    80001cd4:	0104b583          	ld	a1,16(s1)
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	f70080e7          	jalr	-144(ra) # 80001c4c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80001ce4:	00009797          	auipc	a5,0x9
    80001ce8:	87c7b783          	ld	a5,-1924(a5) # 8000a560 <_ZN15MemoryAllocator11usedSegHeadE>
    80001cec:	04078863          	beqz	a5,80001d3c <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80001cf0:	0497fa63          	bgeu	a5,s1,80001d44 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80001cf4:	00078713          	mv	a4,a5
    80001cf8:	0107b783          	ld	a5,16(a5)
    80001cfc:	04078663          	beqz	a5,80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001d00:	fe97eae3          	bltu	a5,s1,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80001d04:	0440006f          	j	80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80001d08:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80001d0c:	fadff06f          	j	80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80001d10:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80001d14:	0084b703          	ld	a4,8(s1)
    80001d18:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001d1c:	0104b703          	ld	a4,16(s1)
    80001d20:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80001d24:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001d28:	00100613          	li	a2,1
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	f1c080e7          	jalr	-228(ra) # 80001c4c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80001d38:	fadff06f          	j	80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80001d3c:	00078713          	mv	a4,a5
    80001d40:	0080006f          	j	80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001d44:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80001d48:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80001d4c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001d50:	04070063          	beqz	a4,80001d90 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80001d54:	01073783          	ld	a5,16(a4)
    80001d58:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80001d5c:	02070e63          	beqz	a4,80001d98 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80001d60:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80001d64:	0104b783          	ld	a5,16(s1)
    80001d68:	00078463          	beqz	a5,80001d70 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001d6c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80001d70:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80001d74:	00048513          	mv	a0,s1
    80001d78:	01813083          	ld	ra,24(sp)
    80001d7c:	01013403          	ld	s0,16(sp)
    80001d80:	00813483          	ld	s1,8(sp)
    80001d84:	00013903          	ld	s2,0(sp)
    80001d88:	02010113          	addi	sp,sp,32
    80001d8c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001d90:	00070793          	mv	a5,a4
    80001d94:	fc5ff06f          	j	80001d58 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80001d98:	00008797          	auipc	a5,0x8
    80001d9c:	7c97b423          	sd	s1,1992(a5) # 8000a560 <_ZN15MemoryAllocator11usedSegHeadE>
    80001da0:	fc5ff06f          	j	80001d64 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80001da4:	00000493          	li	s1,0
    80001da8:	fcdff06f          	j	80001d74 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080001dac <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80001dac:	00008797          	auipc	a5,0x8
    80001db0:	7bc7b783          	ld	a5,1980(a5) # 8000a568 <_ZN15MemoryAllocator8instanceE>
    80001db4:	00078463          	beqz	a5,80001dbc <_ZN15MemoryAllocator10initializeEv+0x10>
    80001db8:	00008067          	ret
void MemoryAllocator::initialize() {
    80001dbc:	fe010113          	addi	sp,sp,-32
    80001dc0:	00113c23          	sd	ra,24(sp)
    80001dc4:	00813823          	sd	s0,16(sp)
    80001dc8:	00913423          	sd	s1,8(sp)
    80001dcc:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80001dd0:	00008797          	auipc	a5,0x8
    80001dd4:	7087b783          	ld	a5,1800(a5) # 8000a4d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001dd8:	0007b783          	ld	a5,0(a5)
    80001ddc:	00008497          	auipc	s1,0x8
    80001de0:	77c48493          	addi	s1,s1,1916 # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    80001de4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001de8:	00008717          	auipc	a4,0x8
    80001dec:	71073703          	ld	a4,1808(a4) # 8000a4f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df0:	00073703          	ld	a4,0(a4)
    80001df4:	40f70733          	sub	a4,a4,a5
    80001df8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80001dfc:	0004b783          	ld	a5,0(s1)
    80001e00:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80001e04:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001e08:	00100513          	li	a0,1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	e84080e7          	jalr	-380(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
    80001e14:	00a4b823          	sd	a0,16(s1)
}
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret

0000000080001e2c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00813423          	sd	s0,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80001e38:	01053783          	ld	a5,16(a0)
    80001e3c:	00078863          	beqz	a5,80001e4c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001e40:	00053703          	ld	a4,0(a0)
    80001e44:	00e506b3          	add	a3,a0,a4
    80001e48:	00d78863          	beq	a5,a3,80001e58 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80001e4c:	00813403          	ld	s0,8(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80001e58:	0007b683          	ld	a3,0(a5)
    80001e5c:	00d70733          	add	a4,a4,a3
    80001e60:	01870713          	addi	a4,a4,24
    80001e64:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80001e68:	0107b783          	ld	a5,16(a5)
    80001e6c:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80001e70:	fc078ee3          	beqz	a5,80001e4c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001e74:	00a7b423          	sd	a0,8(a5)
}
    80001e78:	fd5ff06f          	j	80001e4c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080001e7c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001e7c:	14050263          	beqz	a0,80001fc0 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80001e80:	fd010113          	addi	sp,sp,-48
    80001e84:	02113423          	sd	ra,40(sp)
    80001e88:	02813023          	sd	s0,32(sp)
    80001e8c:	00913c23          	sd	s1,24(sp)
    80001e90:	01213823          	sd	s2,16(sp)
    80001e94:	01313423          	sd	s3,8(sp)
    80001e98:	03010413          	addi	s0,sp,48
    80001e9c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001ea0:	00008797          	auipc	a5,0x8
    80001ea4:	6387b783          	ld	a5,1592(a5) # 8000a4d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ea8:	0007b783          	ld	a5,0(a5)
    80001eac:	10f56e63          	bltu	a0,a5,80001fc8 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80001eb0:	00008797          	auipc	a5,0x8
    80001eb4:	6487b783          	ld	a5,1608(a5) # 8000a4f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001eb8:	0007b783          	ld	a5,0(a5)
    80001ebc:	10a7ea63          	bltu	a5,a0,80001fd0 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80001ec0:	00008797          	auipc	a5,0x8
    80001ec4:	6a07b783          	ld	a5,1696(a5) # 8000a560 <_ZN15MemoryAllocator11usedSegHeadE>
    80001ec8:	10078863          	beqz	a5,80001fd8 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80001ecc:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001ed0:	00078863          	beqz	a5,80001ee0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001ed4:	08978e63          	beq	a5,s1,80001f70 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001ed8:	0107b783          	ld	a5,16(a5)
    80001edc:	ff5ff06f          	j	80001ed0 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80001ee0:	00000793          	li	a5,0
    if (!found) return -3;
    80001ee4:	0e078e63          	beqz	a5,80001fe0 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001ee8:	00000613          	li	a2,0
    80001eec:	ff893583          	ld	a1,-8(s2)
    80001ef0:	00048513          	mv	a0,s1
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	d58080e7          	jalr	-680(ra) # 80001c4c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80001efc:	00008797          	auipc	a5,0x8
    80001f00:	65c7b783          	ld	a5,1628(a5) # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    80001f04:	06078a63          	beqz	a5,80001f78 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001f08:	08f4e463          	bltu	s1,a5,80001f90 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80001f0c:	00078993          	mv	s3,a5
    80001f10:	0107b783          	ld	a5,16(a5)
    80001f14:	00078463          	beqz	a5,80001f1c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001f18:	fe97eae3          	bltu	a5,s1,80001f0c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001f1c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80001f20:	0109b783          	ld	a5,16(s3)
    80001f24:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001f28:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001f2c:	ff893783          	ld	a5,-8(s2)
    80001f30:	00078463          	beqz	a5,80001f38 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80001f34:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80001f38:	00048513          	mv	a0,s1
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	ef0080e7          	jalr	-272(ra) # 80001e2c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80001f44:	00098513          	mv	a0,s3
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	ee4080e7          	jalr	-284(ra) # 80001e2c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001f50:	00000513          	li	a0,0
}
    80001f54:	02813083          	ld	ra,40(sp)
    80001f58:	02013403          	ld	s0,32(sp)
    80001f5c:	01813483          	ld	s1,24(sp)
    80001f60:	01013903          	ld	s2,16(sp)
    80001f64:	00813983          	ld	s3,8(sp)
    80001f68:	03010113          	addi	sp,sp,48
    80001f6c:	00008067          	ret
            found = true;
    80001f70:	00100793          	li	a5,1
    80001f74:	f71ff06f          	j	80001ee4 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80001f78:	00008797          	auipc	a5,0x8
    80001f7c:	5e97b023          	sd	s1,1504(a5) # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80001f80:	fe093c23          	sd	zero,-8(s2)
    80001f84:	fe093823          	sd	zero,-16(s2)
    return 0;
    80001f88:	00000513          	li	a0,0
    80001f8c:	fc9ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80001f90:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001f94:	00008797          	auipc	a5,0x8
    80001f98:	5c478793          	addi	a5,a5,1476 # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    80001f9c:	0007b703          	ld	a4,0(a5)
    80001fa0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001fa4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001fa8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80001fac:	00048513          	mv	a0,s1
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	e7c080e7          	jalr	-388(ra) # 80001e2c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001fb8:	00000513          	li	a0,0
    80001fbc:	f99ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001fc0:	fff00513          	li	a0,-1
}
    80001fc4:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001fc8:	fff00513          	li	a0,-1
    80001fcc:	f89ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001fd0:	fff00513          	li	a0,-1
    80001fd4:	f81ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001fd8:	ffe00513          	li	a0,-2
    80001fdc:	f79ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001fe0:	ffd00513          	li	a0,-3
    80001fe4:	f71ff06f          	j	80001f54 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001fe8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001fe8:	fe010113          	addi	sp,sp,-32
    80001fec:	00113c23          	sd	ra,24(sp)
    80001ff0:	00813823          	sd	s0,16(sp)
    80001ff4:	00913423          	sd	s1,8(sp)
    80001ff8:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001ffc:	00008497          	auipc	s1,0x8
    80002000:	55c4b483          	ld	s1,1372(s1) # 8000a558 <_ZN15MemoryAllocator11freeSegHeadE>
    80002004:	00048c63          	beqz	s1,8000201c <_ZN15MemoryAllocator5printEv+0x34>
    80002008:	06600513          	li	a0,102
    8000200c:	00006097          	auipc	ra,0x6
    80002010:	d60080e7          	jalr	-672(ra) # 80007d6c <__putc>
    80002014:	0104b483          	ld	s1,16(s1)
    80002018:	fedff06f          	j	80002004 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    8000201c:	00a00513          	li	a0,10
    80002020:	00006097          	auipc	ra,0x6
    80002024:	d4c080e7          	jalr	-692(ra) # 80007d6c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80002028:	00008497          	auipc	s1,0x8
    8000202c:	5384b483          	ld	s1,1336(s1) # 8000a560 <_ZN15MemoryAllocator11usedSegHeadE>
    80002030:	00048c63          	beqz	s1,80002048 <_ZN15MemoryAllocator5printEv+0x60>
    80002034:	07500513          	li	a0,117
    80002038:	00006097          	auipc	ra,0x6
    8000203c:	d34080e7          	jalr	-716(ra) # 80007d6c <__putc>
    80002040:	0104b483          	ld	s1,16(s1)
    80002044:	fedff06f          	j	80002030 <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    80002048:	00a00513          	li	a0,10
    8000204c:	00006097          	auipc	ra,0x6
    80002050:	d20080e7          	jalr	-736(ra) # 80007d6c <__putc>
    __putc('\n');
    80002054:	00a00513          	li	a0,10
    80002058:	00006097          	auipc	ra,0x6
    8000205c:	d14080e7          	jalr	-748(ra) # 80007d6c <__putc>
}
    80002060:	01813083          	ld	ra,24(sp)
    80002064:	01013403          	ld	s0,16(sp)
    80002068:	00813483          	ld	s1,8(sp)
    8000206c:	02010113          	addi	sp,sp,32
    80002070:	00008067          	ret

0000000080002074 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

int MemoryAllocator::get_number_of_blocks(size_t size) {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002080:	05750513          	addi	a0,a0,87
    80002084:	00655513          	srli	a0,a0,0x6
}
    80002088:	0005051b          	sext.w	a0,a0
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	00050493          	mv	s1,a0
    if (tail_ready) {
    800020b0:	00008517          	auipc	a0,0x8
    800020b4:	4c053503          	ld	a0,1216(a0) # 8000a570 <_ZN9Scheduler10tail_readyE>
    800020b8:	02051463          	bnez	a0,800020e0 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    800020bc:	00008797          	auipc	a5,0x8
    800020c0:	4b478793          	addi	a5,a5,1204 # 8000a570 <_ZN9Scheduler10tail_readyE>
    800020c4:	0097b023          	sd	s1,0(a5)
    800020c8:	0097b423          	sd	s1,8(a5)
}
    800020cc:	01813083          	ld	ra,24(sp)
    800020d0:	01013403          	ld	s0,16(sp)
    800020d4:	00813483          	ld	s1,8(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800020e0:	00048593          	mv	a1,s1
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	590080e7          	jalr	1424(ra) # 80001674 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800020ec:	00008797          	auipc	a5,0x8
    800020f0:	4897b223          	sd	s1,1156(a5) # 8000a570 <_ZN9Scheduler10tail_readyE>
        return;
    800020f4:	fd9ff06f          	j	800020cc <_ZN9Scheduler3putEP3TCB+0x34>

00000000800020f8 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    8000210c:	00008497          	auipc	s1,0x8
    80002110:	46c4b483          	ld	s1,1132(s1) # 8000a578 <_ZN9Scheduler10head_readyE>
    80002114:	00048c63          	beqz	s1,8000212c <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002118:	00048513          	mv	a0,s1
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	53c080e7          	jalr	1340(ra) # 80001658 <_ZN3TCB14get_next_readyEv>
    80002124:	00008797          	auipc	a5,0x8
    80002128:	44a7ba23          	sd	a0,1108(a5) # 8000a578 <_ZN9Scheduler10head_readyE>
    return head;
}
    8000212c:	00048513          	mv	a0,s1
    80002130:	01813083          	ld	ra,24(sp)
    80002134:	01013403          	ld	s0,16(sp)
    80002138:	00813483          	ld	s1,8(sp)
    8000213c:	02010113          	addi	sp,sp,32
    80002140:	00008067          	ret

0000000080002144 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002154:	00000097          	auipc	ra,0x0
    80002158:	f20080e7          	jalr	-224(ra) # 80002074 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	b34080e7          	jalr	-1228(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002184:	00000097          	auipc	ra,0x0
    80002188:	cf8080e7          	jalr	-776(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    8000219c:	fc010113          	addi	sp,sp,-64
    800021a0:	02113c23          	sd	ra,56(sp)
    800021a4:	02813823          	sd	s0,48(sp)
    800021a8:	02913423          	sd	s1,40(sp)
    800021ac:	03213023          	sd	s2,32(sp)
    800021b0:	01313c23          	sd	s3,24(sp)
    800021b4:	01413823          	sd	s4,16(sp)
    800021b8:	01513423          	sd	s5,8(sp)
    800021bc:	04010413          	addi	s0,sp,64
    800021c0:	00050a93          	mv	s5,a0
    800021c4:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    800021c8:	00100593          	li	a1,1
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	534080e7          	jalr	1332(ra) # 80001700 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800021d4:	00008497          	auipc	s1,0x8
    800021d8:	3ac4b483          	ld	s1,940(s1) # 8000a580 <_ZN9Scheduler13head_sleepingE>
    800021dc:	02048e63          	beqz	s1,80002218 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    800021e0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800021e4:	00000a13          	li	s4,0
    while (tmp) {
    800021e8:	04048c63          	beqz	s1,80002240 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    800021ec:	00048513          	mv	a0,s1
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	4f4080e7          	jalr	1268(ra) # 800016e4 <_ZN3TCB17get_time_to_sleepEv>
    800021f8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800021fc:	0729e463          	bltu	s3,s2,80002264 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    80002200:	00048513          	mv	a0,s1
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	4a8080e7          	jalr	1192(ra) # 800016ac <_ZN3TCB17get_next_sleepingEv>
        prev = tmp;
    8000220c:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002210:	00050493          	mv	s1,a0
    while (tmp) {
    80002214:	fd5ff06f          	j	800021e8 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    80002218:	00008797          	auipc	a5,0x8
    8000221c:	3757b423          	sd	s5,872(a5) # 8000a580 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002220:	00000593          	li	a1,0
    80002224:	000a8513          	mv	a0,s5
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	468080e7          	jalr	1128(ra) # 80001690 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002230:	00098593          	mv	a1,s3
    80002234:	000a8513          	mv	a0,s5
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	490080e7          	jalr	1168(ra) # 800016c8 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002240:	03813083          	ld	ra,56(sp)
    80002244:	03013403          	ld	s0,48(sp)
    80002248:	02813483          	ld	s1,40(sp)
    8000224c:	02013903          	ld	s2,32(sp)
    80002250:	01813983          	ld	s3,24(sp)
    80002254:	01013a03          	ld	s4,16(sp)
    80002258:	00813a83          	ld	s5,8(sp)
    8000225c:	04010113          	addi	sp,sp,64
    80002260:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002264:	000a0a63          	beqz	s4,80002278 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    80002268:	000a0513          	mv	a0,s4
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	478080e7          	jalr	1144(ra) # 800016e4 <_ZN3TCB17get_time_to_sleepEv>
    80002274:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    80002278:	00098593          	mv	a1,s3
    8000227c:	000a8513          	mv	a0,s5
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	448080e7          	jalr	1096(ra) # 800016c8 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002288:	00048593          	mv	a1,s1
    8000228c:	000a8513          	mv	a0,s5
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	400080e7          	jalr	1024(ra) # 80001690 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002298:	040a0c63          	beqz	s4,800022f0 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    8000229c:	000a8593          	mv	a1,s5
    800022a0:	000a0513          	mv	a0,s4
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	3ec080e7          	jalr	1004(ra) # 80001690 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    800022ac:	00048513          	mv	a0,s1
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	3fc080e7          	jalr	1020(ra) # 800016ac <_ZN3TCB17get_next_sleepingEv>
    800022b8:	00050493          	mv	s1,a0
    800022bc:	f80482e3          	beqz	s1,80002240 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    800022c0:	00048513          	mv	a0,s1
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	420080e7          	jalr	1056(ra) # 800016e4 <_ZN3TCB17get_time_to_sleepEv>
    800022cc:	413505b3          	sub	a1,a0,s3
    800022d0:	00048513          	mv	a0,s1
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	3f4080e7          	jalr	1012(ra) # 800016c8 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    800022dc:	00048513          	mv	a0,s1
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	3cc080e7          	jalr	972(ra) # 800016ac <_ZN3TCB17get_next_sleepingEv>
    800022e8:	00050493          	mv	s1,a0
    800022ec:	fd1ff06f          	j	800022bc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    800022f0:	00008797          	auipc	a5,0x8
    800022f4:	2957b823          	sd	s5,656(a5) # 8000a580 <_ZN9Scheduler13head_sleepingE>
    800022f8:	fb5ff06f          	j	800022ac <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

00000000800022fc <_ZN5RiscV10popSppSpieEv>:
#include "../h/risc-v.hpp"

void RiscV::popSppSpie() {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002308:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000230c:	10200073          	sret
}
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN5RiscV22handle_supervisor_trapEv>:

void RiscV::handle_supervisor_trap() {
    8000231c:	f9010113          	addi	sp,sp,-112
    80002320:	06113423          	sd	ra,104(sp)
    80002324:	06813023          	sd	s0,96(sp)
    80002328:	04913c23          	sd	s1,88(sp)
    8000232c:	05213823          	sd	s2,80(sp)
    80002330:	05313423          	sd	s3,72(sp)
    80002334:	05413023          	sd	s4,64(sp)
    80002338:	03513c23          	sd	s5,56(sp)
    8000233c:	03613823          	sd	s6,48(sp)
    80002340:	03713423          	sd	s7,40(sp)
    80002344:	03813023          	sd	s8,32(sp)
    80002348:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    8000234c:	00050493          	mv	s1,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002350:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002354:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002358:	00068a13          	mv	s4,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000235c:	00070a93          	mv	s5,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002360:	142027f3          	csrr	a5,scause
    80002364:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002368:	f9843b03          	ld	s6,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == 0x8000000000000001UL) {
    8000236c:	fff00793          	li	a5,-1
    80002370:	03f79793          	slli	a5,a5,0x3f
    80002374:	00178793          	addi	a5,a5,1
    80002378:	04fb0063          	beq	s6,a5,800023b8 <_ZN5RiscV22handle_supervisor_trapEv+0x9c>
        }
        mc_sip(SIP_SSIE);
    }

    /// External interrupt (Console)
    else if (scause == 0x8000000000000009UL) {
    8000237c:	fff00793          	li	a5,-1
    80002380:	03f79793          	slli	a5,a5,0x3f
    80002384:	00978793          	addi	a5,a5,9
    80002388:	0afb0263          	beq	s6,a5,8000242c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
        console_handler();
    }

    /// illegal instruction
    if (scause == (uint64) 2) {
    8000238c:	00200793          	li	a5,2
    80002390:	0afb0463          	beq	s6,a5,80002438 <_ZN5RiscV22handle_supervisor_trapEv+0x11c>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80002394:	01300793          	li	a5,19
    80002398:	0a97e463          	bltu	a5,s1,80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>
    8000239c:	00249493          	slli	s1,s1,0x2
    800023a0:	00006717          	auipc	a4,0x6
    800023a4:	c8070713          	addi	a4,a4,-896 # 80008020 <CONSOLE_STATUS+0x10>
    800023a8:	00e484b3          	add	s1,s1,a4
    800023ac:	0004a783          	lw	a5,0(s1)
    800023b0:	00e787b3          	add	a5,a5,a4
    800023b4:	00078067          	jr	a5
        ++TCB::time_slice_counter;
    800023b8:	00008b97          	auipc	s7,0x8
    800023bc:	130bbb83          	ld	s7,304(s7) # 8000a4e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023c0:	000bb783          	ld	a5,0(s7)
    800023c4:	00178793          	addi	a5,a5,1
    800023c8:	00fbb023          	sd	a5,0(s7)
        if (TCB::time_slice_counter >= TCB::running -> get_time_slice()) {
    800023cc:	00008797          	auipc	a5,0x8
    800023d0:	1247b783          	ld	a5,292(a5) # 8000a4f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023d4:	0007b503          	ld	a0,0(a5)
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	548080e7          	jalr	1352(ra) # 80001920 <_ZN3TCB14get_time_sliceEv>
    800023e0:	000bb783          	ld	a5,0(s7)
    800023e4:	00a7f863          	bgeu	a5,a0,800023f4 <_ZN5RiscV22handle_supervisor_trapEv+0xd8>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    800023e8:	00200793          	li	a5,2
    800023ec:	1447b073          	csrc	sip,a5
}
    800023f0:	f9dff06f          	j	8000238c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800023f4:	141027f3          	csrr	a5,sepc
    800023f8:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800023fc:	fa843b83          	ld	s7,-88(s0)
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002400:	100027f3          	csrr	a5,sstatus
    80002404:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002408:	fa043c03          	ld	s8,-96(s0)
            TCB::time_slice_counter = 0;
    8000240c:	00008797          	auipc	a5,0x8
    80002410:	0dc7b783          	ld	a5,220(a5) # 8000a4e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002414:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	1c8080e7          	jalr	456(ra) # 800015e0 <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002420:	100c1073          	csrw	sstatus,s8
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002424:	141b9073          	csrw	sepc,s7
}
    80002428:	fc1ff06f          	j	800023e8 <_ZN5RiscV22handle_supervisor_trapEv+0xcc>
        console_handler();
    8000242c:	00006097          	auipc	ra,0x6
    80002430:	9b4080e7          	jalr	-1612(ra) # 80007de0 <console_handler>
    80002434:	f59ff06f          	j	8000238c <_ZN5RiscV22handle_supervisor_trapEv+0x70>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002438:	00100793          	li	a5,1
    8000243c:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80002440:	06813083          	ld	ra,104(sp)
    80002444:	06013403          	ld	s0,96(sp)
    80002448:	05813483          	ld	s1,88(sp)
    8000244c:	05013903          	ld	s2,80(sp)
    80002450:	04813983          	ld	s3,72(sp)
    80002454:	04013a03          	ld	s4,64(sp)
    80002458:	03813a83          	ld	s5,56(sp)
    8000245c:	03013b03          	ld	s6,48(sp)
    80002460:	02813b83          	ld	s7,40(sp)
    80002464:	02013c03          	ld	s8,32(sp)
    80002468:	07010113          	addi	sp,sp,112
    8000246c:	00008067          	ret
            MemoryAllocator::mem_alloc((size_t) a1);
    80002470:	00090513          	mv	a0,s2
    80002474:	00000097          	auipc	ra,0x0
    80002478:	81c080e7          	jalr	-2020(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
            break;
    8000247c:	fc5ff06f          	j	80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>
            MemoryAllocator::mem_free((void *) a1);
    80002480:	00090513          	mv	a0,s2
    80002484:	00000097          	auipc	ra,0x0
    80002488:	9f8080e7          	jalr	-1544(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    8000248c:	fb5ff06f          	j	80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002490:	000a8693          	mv	a3,s5
    80002494:	000a0613          	mv	a2,s4
    80002498:	00098593          	mv	a1,s3
    8000249c:	00090513          	mv	a0,s2
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	3a0080e7          	jalr	928(ra) # 80001840 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    800024a8:	f99ff06f          	j	80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>
            TCB::thread_exit();
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	270080e7          	jalr	624(ra) # 8000171c <_ZN3TCB11thread_exitEv>
            break;
    800024b4:	f8dff06f          	j	80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>
            TCB::dispatch();
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	128080e7          	jalr	296(ra) # 800015e0 <_ZN3TCB8dispatchEv>
            break;
    800024c0:	f81ff06f          	j	80002440 <_ZN5RiscV22handle_supervisor_trapEv+0x124>

00000000800024c4 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813423          	sd	s0,8(sp)
    800024cc:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800024d0:	00053503          	ld	a0,0(a0)
    800024d4:	00050463          	beqz	a0,800024dc <_ZN10ThreadList9get_firstEv+0x18>
    800024d8:	00053503          	ld	a0,0(a0)
}
    800024dc:	00813403          	ld	s0,8(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_ZN10ThreadList4NodenwEm>:
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void *ThreadList::Node::operator new(size_t size) {
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	b7c080e7          	jalr	-1156(ra) # 80002074 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	790080e7          	jalr	1936(ra) # 80001c90 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002508:	00813083          	ld	ra,8(sp)
    8000250c:	00013403          	ld	s0,0(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002518:	fe010113          	addi	sp,sp,-32
    8000251c:	00113c23          	sd	ra,24(sp)
    80002520:	00813823          	sd	s0,16(sp)
    80002524:	00913423          	sd	s1,8(sp)
    80002528:	01213023          	sd	s2,0(sp)
    8000252c:	02010413          	addi	s0,sp,32
    80002530:	00050493          	mv	s1,a0
    80002534:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    80002538:	01000513          	li	a0,16
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	fac080e7          	jalr	-84(ra) # 800024e8 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    80002544:	01253023          	sd	s2,0(a0)
    80002548:	00053423          	sd	zero,8(a0)
    8000254c:	0004b783          	ld	a5,0(s1)
    80002550:	02078263          	beqz	a5,80002574 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002554:	00a4b023          	sd	a0,0(s1)
    80002558:	00a4b423          	sd	a0,8(s1)
}
    8000255c:	01813083          	ld	ra,24(sp)
    80002560:	01013403          	ld	s0,16(sp)
    80002564:	00813483          	ld	s1,8(sp)
    80002568:	00013903          	ld	s2,0(sp)
    8000256c:	02010113          	addi	sp,sp,32
    80002570:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002574:	0084b783          	ld	a5,8(s1)
    80002578:	00a7b423          	sd	a0,8(a5)
    8000257c:	fddff06f          	j	80002558 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002580 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	01213023          	sd	s2,0(sp)
    80002594:	02010413          	addi	s0,sp,32
    80002598:	00050493          	mv	s1,a0
    8000259c:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    800025a0:	01000513          	li	a0,16
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	f44080e7          	jalr	-188(ra) # 800024e8 <_ZN10ThreadList4NodenwEm>
    800025ac:	01253023          	sd	s2,0(a0)
    800025b0:	00053423          	sd	zero,8(a0)
    node -> next = head;
    800025b4:	0004b783          	ld	a5,0(s1)
    800025b8:	00f53423          	sd	a5,8(a0)
    head = node;
    800025bc:	00a4b023          	sd	a0,0(s1)
}
    800025c0:	01813083          	ld	ra,24(sp)
    800025c4:	01013403          	ld	s0,16(sp)
    800025c8:	00813483          	ld	s1,8(sp)
    800025cc:	00013903          	ld	s2,0(sp)
    800025d0:	02010113          	addi	sp,sp,32
    800025d4:	00008067          	ret

00000000800025d8 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00113423          	sd	ra,8(sp)
    800025e0:	00813023          	sd	s0,0(sp)
    800025e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	894080e7          	jalr	-1900(ra) # 80001e7c <_ZN15MemoryAllocator8mem_freeEPv>
}
    800025f0:	00813083          	ld	ra,8(sp)
    800025f4:	00013403          	ld	s0,0(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00113c23          	sd	ra,24(sp)
    80002608:	00813823          	sd	s0,16(sp)
    8000260c:	00913423          	sd	s1,8(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002618:	00053503          	ld	a0,0(a0)
    8000261c:	02050a63          	beqz	a0,80002650 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    80002620:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80002624:	00853703          	ld	a4,8(a0)
    80002628:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    8000262c:	00073423          	sd	zero,8(a4)
    delete tmp;
    80002630:	00000097          	auipc	ra,0x0
    80002634:	fa8080e7          	jalr	-88(ra) # 800025d8 <_ZN10ThreadList4NodedlEPv>
}
    80002638:	00048513          	mv	a0,s1
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00008067          	ret
    if (!head) return nullptr;
    80002650:	00050493          	mv	s1,a0
    80002654:	fe5ff06f          	j	80002638 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002658 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	01213023          	sd	s2,0(sp)
    8000266c:	02010413          	addi	s0,sp,32
    80002670:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002674:	00000913          	li	s2,0
    80002678:	00c0006f          	j	80002684 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	c58080e7          	jalr	-936(ra) # 800012d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	d50080e7          	jalr	-688(ra) # 800013d4 <_Z4getcv>
    8000268c:	0005059b          	sext.w	a1,a0
    80002690:	01b00793          	li	a5,27
    80002694:	02f58a63          	beq	a1,a5,800026c8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002698:	0084b503          	ld	a0,8(s1)
    8000269c:	00003097          	auipc	ra,0x3
    800026a0:	384080e7          	jalr	900(ra) # 80005a20 <_ZN6Buffer3putEi>
        i++;
    800026a4:	0019071b          	addiw	a4,s2,1
    800026a8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800026ac:	0004a683          	lw	a3,0(s1)
    800026b0:	0026979b          	slliw	a5,a3,0x2
    800026b4:	00d787bb          	addw	a5,a5,a3
    800026b8:	0017979b          	slliw	a5,a5,0x1
    800026bc:	02f767bb          	remw	a5,a4,a5
    800026c0:	fc0792e3          	bnez	a5,80002684 <_ZL16producerKeyboardPv+0x2c>
    800026c4:	fb9ff06f          	j	8000267c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800026c8:	00100793          	li	a5,1
    800026cc:	00008717          	auipc	a4,0x8
    800026d0:	eaf72e23          	sw	a5,-324(a4) # 8000a588 <_ZL9threadEnd>
    data->buffer->put('!');
    800026d4:	02100593          	li	a1,33
    800026d8:	0084b503          	ld	a0,8(s1)
    800026dc:	00003097          	auipc	ra,0x3
    800026e0:	344080e7          	jalr	836(ra) # 80005a20 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800026e4:	0104b503          	ld	a0,16(s1)
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	c7c080e7          	jalr	-900(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	00013903          	ld	s2,0(sp)
    80002700:	02010113          	addi	sp,sp,32
    80002704:	00008067          	ret

0000000080002708 <_ZL8producerPv>:

static void producer(void *arg) {
    80002708:	fe010113          	addi	sp,sp,-32
    8000270c:	00113c23          	sd	ra,24(sp)
    80002710:	00813823          	sd	s0,16(sp)
    80002714:	00913423          	sd	s1,8(sp)
    80002718:	01213023          	sd	s2,0(sp)
    8000271c:	02010413          	addi	s0,sp,32
    80002720:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002724:	00000913          	li	s2,0
    80002728:	00c0006f          	j	80002734 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	ba8080e7          	jalr	-1112(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002734:	00008797          	auipc	a5,0x8
    80002738:	e547a783          	lw	a5,-428(a5) # 8000a588 <_ZL9threadEnd>
    8000273c:	02079e63          	bnez	a5,80002778 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002740:	0004a583          	lw	a1,0(s1)
    80002744:	0305859b          	addiw	a1,a1,48
    80002748:	0084b503          	ld	a0,8(s1)
    8000274c:	00003097          	auipc	ra,0x3
    80002750:	2d4080e7          	jalr	724(ra) # 80005a20 <_ZN6Buffer3putEi>
        i++;
    80002754:	0019071b          	addiw	a4,s2,1
    80002758:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000275c:	0004a683          	lw	a3,0(s1)
    80002760:	0026979b          	slliw	a5,a3,0x2
    80002764:	00d787bb          	addw	a5,a5,a3
    80002768:	0017979b          	slliw	a5,a5,0x1
    8000276c:	02f767bb          	remw	a5,a4,a5
    80002770:	fc0792e3          	bnez	a5,80002734 <_ZL8producerPv+0x2c>
    80002774:	fb9ff06f          	j	8000272c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002778:	0104b503          	ld	a0,16(s1)
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	be8080e7          	jalr	-1048(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    80002784:	01813083          	ld	ra,24(sp)
    80002788:	01013403          	ld	s0,16(sp)
    8000278c:	00813483          	ld	s1,8(sp)
    80002790:	00013903          	ld	s2,0(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret

000000008000279c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000279c:	fd010113          	addi	sp,sp,-48
    800027a0:	02113423          	sd	ra,40(sp)
    800027a4:	02813023          	sd	s0,32(sp)
    800027a8:	00913c23          	sd	s1,24(sp)
    800027ac:	01213823          	sd	s2,16(sp)
    800027b0:	01313423          	sd	s3,8(sp)
    800027b4:	03010413          	addi	s0,sp,48
    800027b8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800027bc:	00000993          	li	s3,0
    800027c0:	01c0006f          	j	800027dc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	b10080e7          	jalr	-1264(ra) # 800012d4 <_Z15thread_dispatchv>
    800027cc:	0500006f          	j	8000281c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800027d0:	00a00513          	li	a0,10
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	c28080e7          	jalr	-984(ra) # 800013fc <_Z4putcc>
    while (!threadEnd) {
    800027dc:	00008797          	auipc	a5,0x8
    800027e0:	dac7a783          	lw	a5,-596(a5) # 8000a588 <_ZL9threadEnd>
    800027e4:	06079063          	bnez	a5,80002844 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800027e8:	00893503          	ld	a0,8(s2)
    800027ec:	00003097          	auipc	ra,0x3
    800027f0:	2c4080e7          	jalr	708(ra) # 80005ab0 <_ZN6Buffer3getEv>
        i++;
    800027f4:	0019849b          	addiw	s1,s3,1
    800027f8:	0004899b          	sext.w	s3,s1
        putc(key);
    800027fc:	0ff57513          	andi	a0,a0,255
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	bfc080e7          	jalr	-1028(ra) # 800013fc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002808:	00092703          	lw	a4,0(s2)
    8000280c:	0027179b          	slliw	a5,a4,0x2
    80002810:	00e787bb          	addw	a5,a5,a4
    80002814:	02f4e7bb          	remw	a5,s1,a5
    80002818:	fa0786e3          	beqz	a5,800027c4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000281c:	05000793          	li	a5,80
    80002820:	02f4e4bb          	remw	s1,s1,a5
    80002824:	fa049ce3          	bnez	s1,800027dc <_ZL8consumerPv+0x40>
    80002828:	fa9ff06f          	j	800027d0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000282c:	00893503          	ld	a0,8(s2)
    80002830:	00003097          	auipc	ra,0x3
    80002834:	280080e7          	jalr	640(ra) # 80005ab0 <_ZN6Buffer3getEv>
        putc(key);
    80002838:	0ff57513          	andi	a0,a0,255
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	bc0080e7          	jalr	-1088(ra) # 800013fc <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002844:	00893503          	ld	a0,8(s2)
    80002848:	00003097          	auipc	ra,0x3
    8000284c:	2f4080e7          	jalr	756(ra) # 80005b3c <_ZN6Buffer6getCntEv>
    80002850:	fca04ee3          	bgtz	a0,8000282c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002854:	01093503          	ld	a0,16(s2)
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	b0c080e7          	jalr	-1268(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    80002860:	02813083          	ld	ra,40(sp)
    80002864:	02013403          	ld	s0,32(sp)
    80002868:	01813483          	ld	s1,24(sp)
    8000286c:	01013903          	ld	s2,16(sp)
    80002870:	00813983          	ld	s3,8(sp)
    80002874:	03010113          	addi	sp,sp,48
    80002878:	00008067          	ret

000000008000287c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000287c:	f9010113          	addi	sp,sp,-112
    80002880:	06113423          	sd	ra,104(sp)
    80002884:	06813023          	sd	s0,96(sp)
    80002888:	04913c23          	sd	s1,88(sp)
    8000288c:	05213823          	sd	s2,80(sp)
    80002890:	05313423          	sd	s3,72(sp)
    80002894:	05413023          	sd	s4,64(sp)
    80002898:	03513c23          	sd	s5,56(sp)
    8000289c:	03613823          	sd	s6,48(sp)
    800028a0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800028a4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800028a8:	00005517          	auipc	a0,0x5
    800028ac:	7c850513          	addi	a0,a0,1992 # 80008070 <CONSOLE_STATUS+0x60>
    800028b0:	00002097          	auipc	ra,0x2
    800028b4:	220080e7          	jalr	544(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    800028b8:	01e00593          	li	a1,30
    800028bc:	fa040493          	addi	s1,s0,-96
    800028c0:	00048513          	mv	a0,s1
    800028c4:	00002097          	auipc	ra,0x2
    800028c8:	294080e7          	jalr	660(ra) # 80004b58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800028cc:	00048513          	mv	a0,s1
    800028d0:	00002097          	auipc	ra,0x2
    800028d4:	360080e7          	jalr	864(ra) # 80004c30 <_Z11stringToIntPKc>
    800028d8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800028dc:	00005517          	auipc	a0,0x5
    800028e0:	7b450513          	addi	a0,a0,1972 # 80008090 <CONSOLE_STATUS+0x80>
    800028e4:	00002097          	auipc	ra,0x2
    800028e8:	1ec080e7          	jalr	492(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    800028ec:	01e00593          	li	a1,30
    800028f0:	00048513          	mv	a0,s1
    800028f4:	00002097          	auipc	ra,0x2
    800028f8:	264080e7          	jalr	612(ra) # 80004b58 <_Z9getStringPci>
    n = stringToInt(input);
    800028fc:	00048513          	mv	a0,s1
    80002900:	00002097          	auipc	ra,0x2
    80002904:	330080e7          	jalr	816(ra) # 80004c30 <_Z11stringToIntPKc>
    80002908:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000290c:	00005517          	auipc	a0,0x5
    80002910:	7a450513          	addi	a0,a0,1956 # 800080b0 <CONSOLE_STATUS+0xa0>
    80002914:	00002097          	auipc	ra,0x2
    80002918:	1bc080e7          	jalr	444(ra) # 80004ad0 <_Z11printStringPKc>
    8000291c:	00000613          	li	a2,0
    80002920:	00a00593          	li	a1,10
    80002924:	00090513          	mv	a0,s2
    80002928:	00002097          	auipc	ra,0x2
    8000292c:	358080e7          	jalr	856(ra) # 80004c80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002930:	00005517          	auipc	a0,0x5
    80002934:	79850513          	addi	a0,a0,1944 # 800080c8 <CONSOLE_STATUS+0xb8>
    80002938:	00002097          	auipc	ra,0x2
    8000293c:	198080e7          	jalr	408(ra) # 80004ad0 <_Z11printStringPKc>
    80002940:	00000613          	li	a2,0
    80002944:	00a00593          	li	a1,10
    80002948:	00048513          	mv	a0,s1
    8000294c:	00002097          	auipc	ra,0x2
    80002950:	334080e7          	jalr	820(ra) # 80004c80 <_Z8printIntiii>
    printString(".\n");
    80002954:	00005517          	auipc	a0,0x5
    80002958:	78c50513          	addi	a0,a0,1932 # 800080e0 <CONSOLE_STATUS+0xd0>
    8000295c:	00002097          	auipc	ra,0x2
    80002960:	174080e7          	jalr	372(ra) # 80004ad0 <_Z11printStringPKc>
    if(threadNum > n) {
    80002964:	0324c463          	blt	s1,s2,8000298c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002968:	03205c63          	blez	s2,800029a0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000296c:	03800513          	li	a0,56
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	ffc080e7          	jalr	-4(ra) # 8000196c <_Znwm>
    80002978:	00050a13          	mv	s4,a0
    8000297c:	00048593          	mv	a1,s1
    80002980:	00003097          	auipc	ra,0x3
    80002984:	004080e7          	jalr	4(ra) # 80005984 <_ZN6BufferC1Ei>
    80002988:	0300006f          	j	800029b8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000298c:	00005517          	auipc	a0,0x5
    80002990:	75c50513          	addi	a0,a0,1884 # 800080e8 <CONSOLE_STATUS+0xd8>
    80002994:	00002097          	auipc	ra,0x2
    80002998:	13c080e7          	jalr	316(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    8000299c:	0140006f          	j	800029b0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800029a0:	00005517          	auipc	a0,0x5
    800029a4:	78850513          	addi	a0,a0,1928 # 80008128 <CONSOLE_STATUS+0x118>
    800029a8:	00002097          	auipc	ra,0x2
    800029ac:	128080e7          	jalr	296(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    800029b0:	000b0113          	mv	sp,s6
    800029b4:	1500006f          	j	80002b04 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800029b8:	00000593          	li	a1,0
    800029bc:	00008517          	auipc	a0,0x8
    800029c0:	bd450513          	addi	a0,a0,-1068 # 8000a590 <_ZL10waitForAll>
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	94c080e7          	jalr	-1716(ra) # 80001310 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800029cc:	00391793          	slli	a5,s2,0x3
    800029d0:	00f78793          	addi	a5,a5,15
    800029d4:	ff07f793          	andi	a5,a5,-16
    800029d8:	40f10133          	sub	sp,sp,a5
    800029dc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800029e0:	0019071b          	addiw	a4,s2,1
    800029e4:	00171793          	slli	a5,a4,0x1
    800029e8:	00e787b3          	add	a5,a5,a4
    800029ec:	00379793          	slli	a5,a5,0x3
    800029f0:	00f78793          	addi	a5,a5,15
    800029f4:	ff07f793          	andi	a5,a5,-16
    800029f8:	40f10133          	sub	sp,sp,a5
    800029fc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002a00:	00191613          	slli	a2,s2,0x1
    80002a04:	012607b3          	add	a5,a2,s2
    80002a08:	00379793          	slli	a5,a5,0x3
    80002a0c:	00f987b3          	add	a5,s3,a5
    80002a10:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002a14:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002a18:	00008717          	auipc	a4,0x8
    80002a1c:	b7873703          	ld	a4,-1160(a4) # 8000a590 <_ZL10waitForAll>
    80002a20:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002a24:	00078613          	mv	a2,a5
    80002a28:	00000597          	auipc	a1,0x0
    80002a2c:	d7458593          	addi	a1,a1,-652 # 8000279c <_ZL8consumerPv>
    80002a30:	f9840513          	addi	a0,s0,-104
    80002a34:	ffffe097          	auipc	ra,0xffffe
    80002a38:	7cc080e7          	jalr	1996(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002a3c:	00000493          	li	s1,0
    80002a40:	0280006f          	j	80002a68 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002a44:	00000597          	auipc	a1,0x0
    80002a48:	c1458593          	addi	a1,a1,-1004 # 80002658 <_ZL16producerKeyboardPv>
                      data + i);
    80002a4c:	00179613          	slli	a2,a5,0x1
    80002a50:	00f60633          	add	a2,a2,a5
    80002a54:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002a58:	00c98633          	add	a2,s3,a2
    80002a5c:	ffffe097          	auipc	ra,0xffffe
    80002a60:	7a4080e7          	jalr	1956(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002a64:	0014849b          	addiw	s1,s1,1
    80002a68:	0524d263          	bge	s1,s2,80002aac <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002a6c:	00149793          	slli	a5,s1,0x1
    80002a70:	009787b3          	add	a5,a5,s1
    80002a74:	00379793          	slli	a5,a5,0x3
    80002a78:	00f987b3          	add	a5,s3,a5
    80002a7c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002a80:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002a84:	00008717          	auipc	a4,0x8
    80002a88:	b0c73703          	ld	a4,-1268(a4) # 8000a590 <_ZL10waitForAll>
    80002a8c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002a90:	00048793          	mv	a5,s1
    80002a94:	00349513          	slli	a0,s1,0x3
    80002a98:	00aa8533          	add	a0,s5,a0
    80002a9c:	fa9054e3          	blez	s1,80002a44 <_Z22producerConsumer_C_APIv+0x1c8>
    80002aa0:	00000597          	auipc	a1,0x0
    80002aa4:	c6858593          	addi	a1,a1,-920 # 80002708 <_ZL8producerPv>
    80002aa8:	fa5ff06f          	j	80002a4c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	828080e7          	jalr	-2008(ra) # 800012d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002ab4:	00000493          	li	s1,0
    80002ab8:	00994e63          	blt	s2,s1,80002ad4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002abc:	00008517          	auipc	a0,0x8
    80002ac0:	ad453503          	ld	a0,-1324(a0) # 8000a590 <_ZL10waitForAll>
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	884080e7          	jalr	-1916(ra) # 80001348 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002acc:	0014849b          	addiw	s1,s1,1
    80002ad0:	fe9ff06f          	j	80002ab8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002ad4:	00008517          	auipc	a0,0x8
    80002ad8:	abc53503          	ld	a0,-1348(a0) # 8000a590 <_ZL10waitForAll>
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	850080e7          	jalr	-1968(ra) # 8000132c <_Z9sem_closeP4_sem>
    delete buffer;
    80002ae4:	000a0e63          	beqz	s4,80002b00 <_Z22producerConsumer_C_APIv+0x284>
    80002ae8:	000a0513          	mv	a0,s4
    80002aec:	00003097          	auipc	ra,0x3
    80002af0:	0d8080e7          	jalr	216(ra) # 80005bc4 <_ZN6BufferD1Ev>
    80002af4:	000a0513          	mv	a0,s4
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	e9c080e7          	jalr	-356(ra) # 80001994 <_ZdlPv>
    80002b00:	000b0113          	mv	sp,s6

}
    80002b04:	f9040113          	addi	sp,s0,-112
    80002b08:	06813083          	ld	ra,104(sp)
    80002b0c:	06013403          	ld	s0,96(sp)
    80002b10:	05813483          	ld	s1,88(sp)
    80002b14:	05013903          	ld	s2,80(sp)
    80002b18:	04813983          	ld	s3,72(sp)
    80002b1c:	04013a03          	ld	s4,64(sp)
    80002b20:	03813a83          	ld	s5,56(sp)
    80002b24:	03013b03          	ld	s6,48(sp)
    80002b28:	07010113          	addi	sp,sp,112
    80002b2c:	00008067          	ret
    80002b30:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002b34:	000a0513          	mv	a0,s4
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	e5c080e7          	jalr	-420(ra) # 80001994 <_ZdlPv>
    80002b40:	00048513          	mv	a0,s1
    80002b44:	00009097          	auipc	ra,0x9
    80002b48:	b64080e7          	jalr	-1180(ra) # 8000b6a8 <_Unwind_Resume>

0000000080002b4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	01213023          	sd	s2,0(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002b68:	00100793          	li	a5,1
    80002b6c:	02a7f863          	bgeu	a5,a0,80002b9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002b70:	00a00793          	li	a5,10
    80002b74:	02f577b3          	remu	a5,a0,a5
    80002b78:	02078e63          	beqz	a5,80002bb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002b7c:	fff48513          	addi	a0,s1,-1
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	fcc080e7          	jalr	-52(ra) # 80002b4c <_ZL9fibonaccim>
    80002b88:	00050913          	mv	s2,a0
    80002b8c:	ffe48513          	addi	a0,s1,-2
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	fbc080e7          	jalr	-68(ra) # 80002b4c <_ZL9fibonaccim>
    80002b98:	00a90533          	add	a0,s2,a0
}
    80002b9c:	01813083          	ld	ra,24(sp)
    80002ba0:	01013403          	ld	s0,16(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002bb4:	ffffe097          	auipc	ra,0xffffe
    80002bb8:	720080e7          	jalr	1824(ra) # 800012d4 <_Z15thread_dispatchv>
    80002bbc:	fc1ff06f          	j	80002b7c <_ZL9fibonaccim+0x30>

0000000080002bc0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00113c23          	sd	ra,24(sp)
    80002bc8:	00813823          	sd	s0,16(sp)
    80002bcc:	00913423          	sd	s1,8(sp)
    80002bd0:	01213023          	sd	s2,0(sp)
    80002bd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002bd8:	00000913          	li	s2,0
    80002bdc:	0380006f          	j	80002c14 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002be0:	ffffe097          	auipc	ra,0xffffe
    80002be4:	6f4080e7          	jalr	1780(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002be8:	00148493          	addi	s1,s1,1
    80002bec:	000027b7          	lui	a5,0x2
    80002bf0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002bf4:	0097ee63          	bltu	a5,s1,80002c10 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bf8:	00000713          	li	a4,0
    80002bfc:	000077b7          	lui	a5,0x7
    80002c00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c04:	fce7eee3          	bltu	a5,a4,80002be0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002c08:	00170713          	addi	a4,a4,1
    80002c0c:	ff1ff06f          	j	80002bfc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c10:	00190913          	addi	s2,s2,1
    80002c14:	00900793          	li	a5,9
    80002c18:	0527e063          	bltu	a5,s2,80002c58 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c1c:	00005517          	auipc	a0,0x5
    80002c20:	53c50513          	addi	a0,a0,1340 # 80008158 <CONSOLE_STATUS+0x148>
    80002c24:	00002097          	auipc	ra,0x2
    80002c28:	eac080e7          	jalr	-340(ra) # 80004ad0 <_Z11printStringPKc>
    80002c2c:	00000613          	li	a2,0
    80002c30:	00a00593          	li	a1,10
    80002c34:	0009051b          	sext.w	a0,s2
    80002c38:	00002097          	auipc	ra,0x2
    80002c3c:	048080e7          	jalr	72(ra) # 80004c80 <_Z8printIntiii>
    80002c40:	00005517          	auipc	a0,0x5
    80002c44:	46850513          	addi	a0,a0,1128 # 800080a8 <CONSOLE_STATUS+0x98>
    80002c48:	00002097          	auipc	ra,0x2
    80002c4c:	e88080e7          	jalr	-376(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c50:	00000493          	li	s1,0
    80002c54:	f99ff06f          	j	80002bec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002c58:	00005517          	auipc	a0,0x5
    80002c5c:	50850513          	addi	a0,a0,1288 # 80008160 <CONSOLE_STATUS+0x150>
    80002c60:	00002097          	auipc	ra,0x2
    80002c64:	e70080e7          	jalr	-400(ra) # 80004ad0 <_Z11printStringPKc>
    finishedA = true;
    80002c68:	00100793          	li	a5,1
    80002c6c:	00008717          	auipc	a4,0x8
    80002c70:	92f70623          	sb	a5,-1748(a4) # 8000a598 <_ZL9finishedA>
}
    80002c74:	01813083          	ld	ra,24(sp)
    80002c78:	01013403          	ld	s0,16(sp)
    80002c7c:	00813483          	ld	s1,8(sp)
    80002c80:	00013903          	ld	s2,0(sp)
    80002c84:	02010113          	addi	sp,sp,32
    80002c88:	00008067          	ret

0000000080002c8c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00113c23          	sd	ra,24(sp)
    80002c94:	00813823          	sd	s0,16(sp)
    80002c98:	00913423          	sd	s1,8(sp)
    80002c9c:	01213023          	sd	s2,0(sp)
    80002ca0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ca4:	00000913          	li	s2,0
    80002ca8:	0380006f          	j	80002ce0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002cac:	ffffe097          	auipc	ra,0xffffe
    80002cb0:	628080e7          	jalr	1576(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cb4:	00148493          	addi	s1,s1,1
    80002cb8:	000027b7          	lui	a5,0x2
    80002cbc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cc0:	0097ee63          	bltu	a5,s1,80002cdc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cc4:	00000713          	li	a4,0
    80002cc8:	000077b7          	lui	a5,0x7
    80002ccc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002cd0:	fce7eee3          	bltu	a5,a4,80002cac <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002cd4:	00170713          	addi	a4,a4,1
    80002cd8:	ff1ff06f          	j	80002cc8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002cdc:	00190913          	addi	s2,s2,1
    80002ce0:	00f00793          	li	a5,15
    80002ce4:	0527e063          	bltu	a5,s2,80002d24 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002ce8:	00005517          	auipc	a0,0x5
    80002cec:	48850513          	addi	a0,a0,1160 # 80008170 <CONSOLE_STATUS+0x160>
    80002cf0:	00002097          	auipc	ra,0x2
    80002cf4:	de0080e7          	jalr	-544(ra) # 80004ad0 <_Z11printStringPKc>
    80002cf8:	00000613          	li	a2,0
    80002cfc:	00a00593          	li	a1,10
    80002d00:	0009051b          	sext.w	a0,s2
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	f7c080e7          	jalr	-132(ra) # 80004c80 <_Z8printIntiii>
    80002d0c:	00005517          	auipc	a0,0x5
    80002d10:	39c50513          	addi	a0,a0,924 # 800080a8 <CONSOLE_STATUS+0x98>
    80002d14:	00002097          	auipc	ra,0x2
    80002d18:	dbc080e7          	jalr	-580(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d1c:	00000493          	li	s1,0
    80002d20:	f99ff06f          	j	80002cb8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002d24:	00005517          	auipc	a0,0x5
    80002d28:	45450513          	addi	a0,a0,1108 # 80008178 <CONSOLE_STATUS+0x168>
    80002d2c:	00002097          	auipc	ra,0x2
    80002d30:	da4080e7          	jalr	-604(ra) # 80004ad0 <_Z11printStringPKc>
    finishedB = true;
    80002d34:	00100793          	li	a5,1
    80002d38:	00008717          	auipc	a4,0x8
    80002d3c:	86f700a3          	sb	a5,-1951(a4) # 8000a599 <_ZL9finishedB>
    thread_dispatch();
    80002d40:	ffffe097          	auipc	ra,0xffffe
    80002d44:	594080e7          	jalr	1428(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80002d48:	01813083          	ld	ra,24(sp)
    80002d4c:	01013403          	ld	s0,16(sp)
    80002d50:	00813483          	ld	s1,8(sp)
    80002d54:	00013903          	ld	s2,0(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret

0000000080002d60 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002d60:	fe010113          	addi	sp,sp,-32
    80002d64:	00113c23          	sd	ra,24(sp)
    80002d68:	00813823          	sd	s0,16(sp)
    80002d6c:	00913423          	sd	s1,8(sp)
    80002d70:	01213023          	sd	s2,0(sp)
    80002d74:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d78:	00000493          	li	s1,0
    80002d7c:	0400006f          	j	80002dbc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d80:	00005517          	auipc	a0,0x5
    80002d84:	40850513          	addi	a0,a0,1032 # 80008188 <CONSOLE_STATUS+0x178>
    80002d88:	00002097          	auipc	ra,0x2
    80002d8c:	d48080e7          	jalr	-696(ra) # 80004ad0 <_Z11printStringPKc>
    80002d90:	00000613          	li	a2,0
    80002d94:	00a00593          	li	a1,10
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00002097          	auipc	ra,0x2
    80002da0:	ee4080e7          	jalr	-284(ra) # 80004c80 <_Z8printIntiii>
    80002da4:	00005517          	auipc	a0,0x5
    80002da8:	30450513          	addi	a0,a0,772 # 800080a8 <CONSOLE_STATUS+0x98>
    80002dac:	00002097          	auipc	ra,0x2
    80002db0:	d24080e7          	jalr	-732(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002db4:	0014849b          	addiw	s1,s1,1
    80002db8:	0ff4f493          	andi	s1,s1,255
    80002dbc:	00200793          	li	a5,2
    80002dc0:	fc97f0e3          	bgeu	a5,s1,80002d80 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002dc4:	00005517          	auipc	a0,0x5
    80002dc8:	3cc50513          	addi	a0,a0,972 # 80008190 <CONSOLE_STATUS+0x180>
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	d04080e7          	jalr	-764(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002dd4:	00700313          	li	t1,7
    thread_dispatch();
    80002dd8:	ffffe097          	auipc	ra,0xffffe
    80002ddc:	4fc080e7          	jalr	1276(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002de0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002de4:	00005517          	auipc	a0,0x5
    80002de8:	3bc50513          	addi	a0,a0,956 # 800081a0 <CONSOLE_STATUS+0x190>
    80002dec:	00002097          	auipc	ra,0x2
    80002df0:	ce4080e7          	jalr	-796(ra) # 80004ad0 <_Z11printStringPKc>
    80002df4:	00000613          	li	a2,0
    80002df8:	00a00593          	li	a1,10
    80002dfc:	0009051b          	sext.w	a0,s2
    80002e00:	00002097          	auipc	ra,0x2
    80002e04:	e80080e7          	jalr	-384(ra) # 80004c80 <_Z8printIntiii>
    80002e08:	00005517          	auipc	a0,0x5
    80002e0c:	2a050513          	addi	a0,a0,672 # 800080a8 <CONSOLE_STATUS+0x98>
    80002e10:	00002097          	auipc	ra,0x2
    80002e14:	cc0080e7          	jalr	-832(ra) # 80004ad0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002e18:	00c00513          	li	a0,12
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	d30080e7          	jalr	-720(ra) # 80002b4c <_ZL9fibonaccim>
    80002e24:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	38050513          	addi	a0,a0,896 # 800081a8 <CONSOLE_STATUS+0x198>
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	ca0080e7          	jalr	-864(ra) # 80004ad0 <_Z11printStringPKc>
    80002e38:	00000613          	li	a2,0
    80002e3c:	00a00593          	li	a1,10
    80002e40:	0009051b          	sext.w	a0,s2
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	e3c080e7          	jalr	-452(ra) # 80004c80 <_Z8printIntiii>
    80002e4c:	00005517          	auipc	a0,0x5
    80002e50:	25c50513          	addi	a0,a0,604 # 800080a8 <CONSOLE_STATUS+0x98>
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	c7c080e7          	jalr	-900(ra) # 80004ad0 <_Z11printStringPKc>
    80002e5c:	0400006f          	j	80002e9c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e60:	00005517          	auipc	a0,0x5
    80002e64:	32850513          	addi	a0,a0,808 # 80008188 <CONSOLE_STATUS+0x178>
    80002e68:	00002097          	auipc	ra,0x2
    80002e6c:	c68080e7          	jalr	-920(ra) # 80004ad0 <_Z11printStringPKc>
    80002e70:	00000613          	li	a2,0
    80002e74:	00a00593          	li	a1,10
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00002097          	auipc	ra,0x2
    80002e80:	e04080e7          	jalr	-508(ra) # 80004c80 <_Z8printIntiii>
    80002e84:	00005517          	auipc	a0,0x5
    80002e88:	22450513          	addi	a0,a0,548 # 800080a8 <CONSOLE_STATUS+0x98>
    80002e8c:	00002097          	auipc	ra,0x2
    80002e90:	c44080e7          	jalr	-956(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e94:	0014849b          	addiw	s1,s1,1
    80002e98:	0ff4f493          	andi	s1,s1,255
    80002e9c:	00500793          	li	a5,5
    80002ea0:	fc97f0e3          	bgeu	a5,s1,80002e60 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002ea4:	00005517          	auipc	a0,0x5
    80002ea8:	2bc50513          	addi	a0,a0,700 # 80008160 <CONSOLE_STATUS+0x150>
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	c24080e7          	jalr	-988(ra) # 80004ad0 <_Z11printStringPKc>
    finishedC = true;
    80002eb4:	00100793          	li	a5,1
    80002eb8:	00007717          	auipc	a4,0x7
    80002ebc:	6ef70123          	sb	a5,1762(a4) # 8000a59a <_ZL9finishedC>
    thread_dispatch();
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	414080e7          	jalr	1044(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	00013903          	ld	s2,0(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	01213023          	sd	s2,0(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002ef8:	00a00493          	li	s1,10
    80002efc:	0400006f          	j	80002f3c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002f00:	00005517          	auipc	a0,0x5
    80002f04:	2b850513          	addi	a0,a0,696 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	bc8080e7          	jalr	-1080(ra) # 80004ad0 <_Z11printStringPKc>
    80002f10:	00000613          	li	a2,0
    80002f14:	00a00593          	li	a1,10
    80002f18:	00048513          	mv	a0,s1
    80002f1c:	00002097          	auipc	ra,0x2
    80002f20:	d64080e7          	jalr	-668(ra) # 80004c80 <_Z8printIntiii>
    80002f24:	00005517          	auipc	a0,0x5
    80002f28:	18450513          	addi	a0,a0,388 # 800080a8 <CONSOLE_STATUS+0x98>
    80002f2c:	00002097          	auipc	ra,0x2
    80002f30:	ba4080e7          	jalr	-1116(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002f34:	0014849b          	addiw	s1,s1,1
    80002f38:	0ff4f493          	andi	s1,s1,255
    80002f3c:	00c00793          	li	a5,12
    80002f40:	fc97f0e3          	bgeu	a5,s1,80002f00 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002f44:	00005517          	auipc	a0,0x5
    80002f48:	27c50513          	addi	a0,a0,636 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	b84080e7          	jalr	-1148(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002f54:	00500313          	li	t1,5
    thread_dispatch();
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	37c080e7          	jalr	892(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002f60:	01000513          	li	a0,16
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	be8080e7          	jalr	-1048(ra) # 80002b4c <_ZL9fibonaccim>
    80002f6c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002f70:	00005517          	auipc	a0,0x5
    80002f74:	26050513          	addi	a0,a0,608 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002f78:	00002097          	auipc	ra,0x2
    80002f7c:	b58080e7          	jalr	-1192(ra) # 80004ad0 <_Z11printStringPKc>
    80002f80:	00000613          	li	a2,0
    80002f84:	00a00593          	li	a1,10
    80002f88:	0009051b          	sext.w	a0,s2
    80002f8c:	00002097          	auipc	ra,0x2
    80002f90:	cf4080e7          	jalr	-780(ra) # 80004c80 <_Z8printIntiii>
    80002f94:	00005517          	auipc	a0,0x5
    80002f98:	11450513          	addi	a0,a0,276 # 800080a8 <CONSOLE_STATUS+0x98>
    80002f9c:	00002097          	auipc	ra,0x2
    80002fa0:	b34080e7          	jalr	-1228(ra) # 80004ad0 <_Z11printStringPKc>
    80002fa4:	0400006f          	j	80002fe4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002fa8:	00005517          	auipc	a0,0x5
    80002fac:	21050513          	addi	a0,a0,528 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	b20080e7          	jalr	-1248(ra) # 80004ad0 <_Z11printStringPKc>
    80002fb8:	00000613          	li	a2,0
    80002fbc:	00a00593          	li	a1,10
    80002fc0:	00048513          	mv	a0,s1
    80002fc4:	00002097          	auipc	ra,0x2
    80002fc8:	cbc080e7          	jalr	-836(ra) # 80004c80 <_Z8printIntiii>
    80002fcc:	00005517          	auipc	a0,0x5
    80002fd0:	0dc50513          	addi	a0,a0,220 # 800080a8 <CONSOLE_STATUS+0x98>
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	afc080e7          	jalr	-1284(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002fdc:	0014849b          	addiw	s1,s1,1
    80002fe0:	0ff4f493          	andi	s1,s1,255
    80002fe4:	00f00793          	li	a5,15
    80002fe8:	fc97f0e3          	bgeu	a5,s1,80002fa8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002fec:	00005517          	auipc	a0,0x5
    80002ff0:	1f450513          	addi	a0,a0,500 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	adc080e7          	jalr	-1316(ra) # 80004ad0 <_Z11printStringPKc>
    finishedD = true;
    80002ffc:	00100793          	li	a5,1
    80003000:	00007717          	auipc	a4,0x7
    80003004:	58f70da3          	sb	a5,1435(a4) # 8000a59b <_ZL9finishedD>
    thread_dispatch();
    80003008:	ffffe097          	auipc	ra,0xffffe
    8000300c:	2cc080e7          	jalr	716(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	00013903          	ld	s2,0(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret

0000000080003028 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003028:	fc010113          	addi	sp,sp,-64
    8000302c:	02113c23          	sd	ra,56(sp)
    80003030:	02813823          	sd	s0,48(sp)
    80003034:	02913423          	sd	s1,40(sp)
    80003038:	03213023          	sd	s2,32(sp)
    8000303c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003040:	02000513          	li	a0,32
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	928080e7          	jalr	-1752(ra) # 8000196c <_Znwm>
    8000304c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	a30080e7          	jalr	-1488(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80003058:	00007797          	auipc	a5,0x7
    8000305c:	2d878793          	addi	a5,a5,728 # 8000a330 <_ZTV7WorkerA+0x10>
    80003060:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003064:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	18850513          	addi	a0,a0,392 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	a60080e7          	jalr	-1440(ra) # 80004ad0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003078:	02000513          	li	a0,32
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	8f0080e7          	jalr	-1808(ra) # 8000196c <_Znwm>
    80003084:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	9f8080e7          	jalr	-1544(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80003090:	00007797          	auipc	a5,0x7
    80003094:	2c878793          	addi	a5,a5,712 # 8000a358 <_ZTV7WorkerB+0x10>
    80003098:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000309c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800030a0:	00005517          	auipc	a0,0x5
    800030a4:	16850513          	addi	a0,a0,360 # 80008208 <CONSOLE_STATUS+0x1f8>
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	a28080e7          	jalr	-1496(ra) # 80004ad0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800030b0:	02000513          	li	a0,32
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	8b8080e7          	jalr	-1864(ra) # 8000196c <_Znwm>
    800030bc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	9c0080e7          	jalr	-1600(ra) # 80001a80 <_ZN6ThreadC1Ev>
    800030c8:	00007797          	auipc	a5,0x7
    800030cc:	2b878793          	addi	a5,a5,696 # 8000a380 <_ZTV7WorkerC+0x10>
    800030d0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800030d4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800030d8:	00005517          	auipc	a0,0x5
    800030dc:	14850513          	addi	a0,a0,328 # 80008220 <CONSOLE_STATUS+0x210>
    800030e0:	00002097          	auipc	ra,0x2
    800030e4:	9f0080e7          	jalr	-1552(ra) # 80004ad0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800030e8:	02000513          	li	a0,32
    800030ec:	fffff097          	auipc	ra,0xfffff
    800030f0:	880080e7          	jalr	-1920(ra) # 8000196c <_Znwm>
    800030f4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	988080e7          	jalr	-1656(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80003100:	00007797          	auipc	a5,0x7
    80003104:	2a878793          	addi	a5,a5,680 # 8000a3a8 <_ZTV7WorkerD+0x10>
    80003108:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000310c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003110:	00005517          	auipc	a0,0x5
    80003114:	12850513          	addi	a0,a0,296 # 80008238 <CONSOLE_STATUS+0x228>
    80003118:	00002097          	auipc	ra,0x2
    8000311c:	9b8080e7          	jalr	-1608(ra) # 80004ad0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003120:	00000493          	li	s1,0
    80003124:	00300793          	li	a5,3
    80003128:	0297c663          	blt	a5,s1,80003154 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000312c:	00349793          	slli	a5,s1,0x3
    80003130:	fe040713          	addi	a4,s0,-32
    80003134:	00f707b3          	add	a5,a4,a5
    80003138:	fe07b503          	ld	a0,-32(a5)
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	8f4080e7          	jalr	-1804(ra) # 80001a30 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003144:	0014849b          	addiw	s1,s1,1
    80003148:	fddff06f          	j	80003124 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000314c:	fffff097          	auipc	ra,0xfffff
    80003150:	900080e7          	jalr	-1792(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003154:	00007797          	auipc	a5,0x7
    80003158:	4447c783          	lbu	a5,1092(a5) # 8000a598 <_ZL9finishedA>
    8000315c:	fe0788e3          	beqz	a5,8000314c <_Z20Threads_CPP_API_testv+0x124>
    80003160:	00007797          	auipc	a5,0x7
    80003164:	4397c783          	lbu	a5,1081(a5) # 8000a599 <_ZL9finishedB>
    80003168:	fe0782e3          	beqz	a5,8000314c <_Z20Threads_CPP_API_testv+0x124>
    8000316c:	00007797          	auipc	a5,0x7
    80003170:	42e7c783          	lbu	a5,1070(a5) # 8000a59a <_ZL9finishedC>
    80003174:	fc078ce3          	beqz	a5,8000314c <_Z20Threads_CPP_API_testv+0x124>
    80003178:	00007797          	auipc	a5,0x7
    8000317c:	4237c783          	lbu	a5,1059(a5) # 8000a59b <_ZL9finishedD>
    80003180:	fc0786e3          	beqz	a5,8000314c <_Z20Threads_CPP_API_testv+0x124>
    80003184:	fc040493          	addi	s1,s0,-64
    80003188:	0080006f          	j	80003190 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000318c:	00848493          	addi	s1,s1,8
    80003190:	fe040793          	addi	a5,s0,-32
    80003194:	08f48663          	beq	s1,a5,80003220 <_Z20Threads_CPP_API_testv+0x1f8>
    80003198:	0004b503          	ld	a0,0(s1)
    8000319c:	fe0508e3          	beqz	a0,8000318c <_Z20Threads_CPP_API_testv+0x164>
    800031a0:	00053783          	ld	a5,0(a0)
    800031a4:	0087b783          	ld	a5,8(a5)
    800031a8:	000780e7          	jalr	a5
    800031ac:	fe1ff06f          	j	8000318c <_Z20Threads_CPP_API_testv+0x164>
    800031b0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800031b4:	00048513          	mv	a0,s1
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	7dc080e7          	jalr	2012(ra) # 80001994 <_ZdlPv>
    800031c0:	00090513          	mv	a0,s2
    800031c4:	00008097          	auipc	ra,0x8
    800031c8:	4e4080e7          	jalr	1252(ra) # 8000b6a8 <_Unwind_Resume>
    800031cc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800031d0:	00048513          	mv	a0,s1
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	7c0080e7          	jalr	1984(ra) # 80001994 <_ZdlPv>
    800031dc:	00090513          	mv	a0,s2
    800031e0:	00008097          	auipc	ra,0x8
    800031e4:	4c8080e7          	jalr	1224(ra) # 8000b6a8 <_Unwind_Resume>
    800031e8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800031ec:	00048513          	mv	a0,s1
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	7a4080e7          	jalr	1956(ra) # 80001994 <_ZdlPv>
    800031f8:	00090513          	mv	a0,s2
    800031fc:	00008097          	auipc	ra,0x8
    80003200:	4ac080e7          	jalr	1196(ra) # 8000b6a8 <_Unwind_Resume>
    80003204:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003208:	00048513          	mv	a0,s1
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	788080e7          	jalr	1928(ra) # 80001994 <_ZdlPv>
    80003214:	00090513          	mv	a0,s2
    80003218:	00008097          	auipc	ra,0x8
    8000321c:	490080e7          	jalr	1168(ra) # 8000b6a8 <_Unwind_Resume>
}
    80003220:	03813083          	ld	ra,56(sp)
    80003224:	03013403          	ld	s0,48(sp)
    80003228:	02813483          	ld	s1,40(sp)
    8000322c:	02013903          	ld	s2,32(sp)
    80003230:	04010113          	addi	sp,sp,64
    80003234:	00008067          	ret

0000000080003238 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00113423          	sd	ra,8(sp)
    80003240:	00813023          	sd	s0,0(sp)
    80003244:	01010413          	addi	s0,sp,16
    80003248:	00007797          	auipc	a5,0x7
    8000324c:	0e878793          	addi	a5,a5,232 # 8000a330 <_ZTV7WorkerA+0x10>
    80003250:	00f53023          	sd	a5,0(a0)
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	6e8080e7          	jalr	1768(ra) # 8000193c <_ZN6ThreadD1Ev>
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZN7WorkerAD0Ev>:
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	02010413          	addi	s0,sp,32
    80003280:	00050493          	mv	s1,a0
    80003284:	00007797          	auipc	a5,0x7
    80003288:	0ac78793          	addi	a5,a5,172 # 8000a330 <_ZTV7WorkerA+0x10>
    8000328c:	00f53023          	sd	a5,0(a0)
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	6ac080e7          	jalr	1708(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003298:	00048513          	mv	a0,s1
    8000329c:	ffffe097          	auipc	ra,0xffffe
    800032a0:	6f8080e7          	jalr	1784(ra) # 80001994 <_ZdlPv>
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret

00000000800032b8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00113423          	sd	ra,8(sp)
    800032c0:	00813023          	sd	s0,0(sp)
    800032c4:	01010413          	addi	s0,sp,16
    800032c8:	00007797          	auipc	a5,0x7
    800032cc:	09078793          	addi	a5,a5,144 # 8000a358 <_ZTV7WorkerB+0x10>
    800032d0:	00f53023          	sd	a5,0(a0)
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	668080e7          	jalr	1640(ra) # 8000193c <_ZN6ThreadD1Ev>
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZN7WorkerBD0Ev>:
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	00050493          	mv	s1,a0
    80003304:	00007797          	auipc	a5,0x7
    80003308:	05478793          	addi	a5,a5,84 # 8000a358 <_ZTV7WorkerB+0x10>
    8000330c:	00f53023          	sd	a5,0(a0)
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	62c080e7          	jalr	1580(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003318:	00048513          	mv	a0,s1
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	678080e7          	jalr	1656(ra) # 80001994 <_ZdlPv>
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	02010113          	addi	sp,sp,32
    80003334:	00008067          	ret

0000000080003338 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	00813023          	sd	s0,0(sp)
    80003344:	01010413          	addi	s0,sp,16
    80003348:	00007797          	auipc	a5,0x7
    8000334c:	03878793          	addi	a5,a5,56 # 8000a380 <_ZTV7WorkerC+0x10>
    80003350:	00f53023          	sd	a5,0(a0)
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	5e8080e7          	jalr	1512(ra) # 8000193c <_ZN6ThreadD1Ev>
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN7WorkerCD0Ev>:
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00050493          	mv	s1,a0
    80003384:	00007797          	auipc	a5,0x7
    80003388:	ffc78793          	addi	a5,a5,-4 # 8000a380 <_ZTV7WorkerC+0x10>
    8000338c:	00f53023          	sd	a5,0(a0)
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	5ac080e7          	jalr	1452(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003398:	00048513          	mv	a0,s1
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	5f8080e7          	jalr	1528(ra) # 80001994 <_ZdlPv>
    800033a4:	01813083          	ld	ra,24(sp)
    800033a8:	01013403          	ld	s0,16(sp)
    800033ac:	00813483          	ld	s1,8(sp)
    800033b0:	02010113          	addi	sp,sp,32
    800033b4:	00008067          	ret

00000000800033b8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00113423          	sd	ra,8(sp)
    800033c0:	00813023          	sd	s0,0(sp)
    800033c4:	01010413          	addi	s0,sp,16
    800033c8:	00007797          	auipc	a5,0x7
    800033cc:	fe078793          	addi	a5,a5,-32 # 8000a3a8 <_ZTV7WorkerD+0x10>
    800033d0:	00f53023          	sd	a5,0(a0)
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	568080e7          	jalr	1384(ra) # 8000193c <_ZN6ThreadD1Ev>
    800033dc:	00813083          	ld	ra,8(sp)
    800033e0:	00013403          	ld	s0,0(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <_ZN7WorkerDD0Ev>:
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00113c23          	sd	ra,24(sp)
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	02010413          	addi	s0,sp,32
    80003400:	00050493          	mv	s1,a0
    80003404:	00007797          	auipc	a5,0x7
    80003408:	fa478793          	addi	a5,a5,-92 # 8000a3a8 <_ZTV7WorkerD+0x10>
    8000340c:	00f53023          	sd	a5,0(a0)
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	52c080e7          	jalr	1324(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003418:	00048513          	mv	a0,s1
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	578080e7          	jalr	1400(ra) # 80001994 <_ZdlPv>
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	02010113          	addi	sp,sp,32
    80003434:	00008067          	ret

0000000080003438 <_ZN7WorkerA3runEv>:
    void run() override {
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003448:	00000593          	li	a1,0
    8000344c:	fffff097          	auipc	ra,0xfffff
    80003450:	774080e7          	jalr	1908(ra) # 80002bc0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003454:	00813083          	ld	ra,8(sp)
    80003458:	00013403          	ld	s0,0(sp)
    8000345c:	01010113          	addi	sp,sp,16
    80003460:	00008067          	ret

0000000080003464 <_ZN7WorkerB3runEv>:
    void run() override {
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00113423          	sd	ra,8(sp)
    8000346c:	00813023          	sd	s0,0(sp)
    80003470:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003474:	00000593          	li	a1,0
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	814080e7          	jalr	-2028(ra) # 80002c8c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003480:	00813083          	ld	ra,8(sp)
    80003484:	00013403          	ld	s0,0(sp)
    80003488:	01010113          	addi	sp,sp,16
    8000348c:	00008067          	ret

0000000080003490 <_ZN7WorkerC3runEv>:
    void run() override {
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00113423          	sd	ra,8(sp)
    80003498:	00813023          	sd	s0,0(sp)
    8000349c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800034a0:	00000593          	li	a1,0
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	8bc080e7          	jalr	-1860(ra) # 80002d60 <_ZN7WorkerC11workerBodyCEPv>
    }
    800034ac:	00813083          	ld	ra,8(sp)
    800034b0:	00013403          	ld	s0,0(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZN7WorkerD3runEv>:
    void run() override {
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	00813023          	sd	s0,0(sp)
    800034c8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800034cc:	00000593          	li	a1,0
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	a10080e7          	jalr	-1520(ra) # 80002ee0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800034d8:	00813083          	ld	ra,8(sp)
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800034e8:	f8010113          	addi	sp,sp,-128
    800034ec:	06113c23          	sd	ra,120(sp)
    800034f0:	06813823          	sd	s0,112(sp)
    800034f4:	06913423          	sd	s1,104(sp)
    800034f8:	07213023          	sd	s2,96(sp)
    800034fc:	05313c23          	sd	s3,88(sp)
    80003500:	05413823          	sd	s4,80(sp)
    80003504:	05513423          	sd	s5,72(sp)
    80003508:	05613023          	sd	s6,64(sp)
    8000350c:	03713c23          	sd	s7,56(sp)
    80003510:	03813823          	sd	s8,48(sp)
    80003514:	03913423          	sd	s9,40(sp)
    80003518:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000351c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003520:	00005517          	auipc	a0,0x5
    80003524:	b5050513          	addi	a0,a0,-1200 # 80008070 <CONSOLE_STATUS+0x60>
    80003528:	00001097          	auipc	ra,0x1
    8000352c:	5a8080e7          	jalr	1448(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    80003530:	01e00593          	li	a1,30
    80003534:	f8040493          	addi	s1,s0,-128
    80003538:	00048513          	mv	a0,s1
    8000353c:	00001097          	auipc	ra,0x1
    80003540:	61c080e7          	jalr	1564(ra) # 80004b58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003544:	00048513          	mv	a0,s1
    80003548:	00001097          	auipc	ra,0x1
    8000354c:	6e8080e7          	jalr	1768(ra) # 80004c30 <_Z11stringToIntPKc>
    80003550:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003554:	00005517          	auipc	a0,0x5
    80003558:	b3c50513          	addi	a0,a0,-1220 # 80008090 <CONSOLE_STATUS+0x80>
    8000355c:	00001097          	auipc	ra,0x1
    80003560:	574080e7          	jalr	1396(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    80003564:	01e00593          	li	a1,30
    80003568:	00048513          	mv	a0,s1
    8000356c:	00001097          	auipc	ra,0x1
    80003570:	5ec080e7          	jalr	1516(ra) # 80004b58 <_Z9getStringPci>
    n = stringToInt(input);
    80003574:	00048513          	mv	a0,s1
    80003578:	00001097          	auipc	ra,0x1
    8000357c:	6b8080e7          	jalr	1720(ra) # 80004c30 <_Z11stringToIntPKc>
    80003580:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003584:	00005517          	auipc	a0,0x5
    80003588:	b2c50513          	addi	a0,a0,-1236 # 800080b0 <CONSOLE_STATUS+0xa0>
    8000358c:	00001097          	auipc	ra,0x1
    80003590:	544080e7          	jalr	1348(ra) # 80004ad0 <_Z11printStringPKc>
    printInt(threadNum);
    80003594:	00000613          	li	a2,0
    80003598:	00a00593          	li	a1,10
    8000359c:	00098513          	mv	a0,s3
    800035a0:	00001097          	auipc	ra,0x1
    800035a4:	6e0080e7          	jalr	1760(ra) # 80004c80 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800035a8:	00005517          	auipc	a0,0x5
    800035ac:	b2050513          	addi	a0,a0,-1248 # 800080c8 <CONSOLE_STATUS+0xb8>
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	520080e7          	jalr	1312(ra) # 80004ad0 <_Z11printStringPKc>
    printInt(n);
    800035b8:	00000613          	li	a2,0
    800035bc:	00a00593          	li	a1,10
    800035c0:	00048513          	mv	a0,s1
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	6bc080e7          	jalr	1724(ra) # 80004c80 <_Z8printIntiii>
    printString(".\n");
    800035cc:	00005517          	auipc	a0,0x5
    800035d0:	b1450513          	addi	a0,a0,-1260 # 800080e0 <CONSOLE_STATUS+0xd0>
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	4fc080e7          	jalr	1276(ra) # 80004ad0 <_Z11printStringPKc>
    if (threadNum > n) {
    800035dc:	0334c463          	blt	s1,s3,80003604 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800035e0:	03305c63          	blez	s3,80003618 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800035e4:	03800513          	li	a0,56
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	384080e7          	jalr	900(ra) # 8000196c <_Znwm>
    800035f0:	00050a93          	mv	s5,a0
    800035f4:	00048593          	mv	a1,s1
    800035f8:	00001097          	auipc	ra,0x1
    800035fc:	7a8080e7          	jalr	1960(ra) # 80004da0 <_ZN9BufferCPPC1Ei>
    80003600:	0300006f          	j	80003630 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003604:	00005517          	auipc	a0,0x5
    80003608:	ae450513          	addi	a0,a0,-1308 # 800080e8 <CONSOLE_STATUS+0xd8>
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	4c4080e7          	jalr	1220(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    80003614:	0140006f          	j	80003628 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003618:	00005517          	auipc	a0,0x5
    8000361c:	b1050513          	addi	a0,a0,-1264 # 80008128 <CONSOLE_STATUS+0x118>
    80003620:	00001097          	auipc	ra,0x1
    80003624:	4b0080e7          	jalr	1200(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    80003628:	000c0113          	mv	sp,s8
    8000362c:	2140006f          	j	80003840 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003630:	01000513          	li	a0,16
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	338080e7          	jalr	824(ra) # 8000196c <_Znwm>
    8000363c:	00050913          	mv	s2,a0
    80003640:	00000593          	li	a1,0
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	460080e7          	jalr	1120(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    8000364c:	00007797          	auipc	a5,0x7
    80003650:	f527be23          	sd	s2,-164(a5) # 8000a5a8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003654:	00399793          	slli	a5,s3,0x3
    80003658:	00f78793          	addi	a5,a5,15
    8000365c:	ff07f793          	andi	a5,a5,-16
    80003660:	40f10133          	sub	sp,sp,a5
    80003664:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003668:	0019871b          	addiw	a4,s3,1
    8000366c:	00171793          	slli	a5,a4,0x1
    80003670:	00e787b3          	add	a5,a5,a4
    80003674:	00379793          	slli	a5,a5,0x3
    80003678:	00f78793          	addi	a5,a5,15
    8000367c:	ff07f793          	andi	a5,a5,-16
    80003680:	40f10133          	sub	sp,sp,a5
    80003684:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003688:	00199493          	slli	s1,s3,0x1
    8000368c:	013484b3          	add	s1,s1,s3
    80003690:	00349493          	slli	s1,s1,0x3
    80003694:	009b04b3          	add	s1,s6,s1
    80003698:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000369c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800036a0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800036a4:	02800513          	li	a0,40
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	2c4080e7          	jalr	708(ra) # 8000196c <_Znwm>
    800036b0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	3cc080e7          	jalr	972(ra) # 80001a80 <_ZN6ThreadC1Ev>
    800036bc:	00007797          	auipc	a5,0x7
    800036c0:	d6478793          	addi	a5,a5,-668 # 8000a420 <_ZTV8Consumer+0x10>
    800036c4:	00fbb023          	sd	a5,0(s7)
    800036c8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800036cc:	000b8513          	mv	a0,s7
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	360080e7          	jalr	864(ra) # 80001a30 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800036d8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800036dc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800036e0:	00007797          	auipc	a5,0x7
    800036e4:	ec87b783          	ld	a5,-312(a5) # 8000a5a8 <_ZL10waitForAll>
    800036e8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800036ec:	02800513          	li	a0,40
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	27c080e7          	jalr	636(ra) # 8000196c <_Znwm>
    800036f8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	384080e7          	jalr	900(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80003704:	00007797          	auipc	a5,0x7
    80003708:	ccc78793          	addi	a5,a5,-820 # 8000a3d0 <_ZTV16ProducerKeyborad+0x10>
    8000370c:	00f4b023          	sd	a5,0(s1)
    80003710:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003714:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003718:	00048513          	mv	a0,s1
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	314080e7          	jalr	788(ra) # 80001a30 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003724:	00100913          	li	s2,1
    80003728:	0300006f          	j	80003758 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000372c:	00007797          	auipc	a5,0x7
    80003730:	ccc78793          	addi	a5,a5,-820 # 8000a3f8 <_ZTV8Producer+0x10>
    80003734:	00fcb023          	sd	a5,0(s9)
    80003738:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000373c:	00391793          	slli	a5,s2,0x3
    80003740:	00fa07b3          	add	a5,s4,a5
    80003744:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003748:	000c8513          	mv	a0,s9
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	2e4080e7          	jalr	740(ra) # 80001a30 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003754:	0019091b          	addiw	s2,s2,1
    80003758:	05395263          	bge	s2,s3,8000379c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000375c:	00191493          	slli	s1,s2,0x1
    80003760:	012484b3          	add	s1,s1,s2
    80003764:	00349493          	slli	s1,s1,0x3
    80003768:	009b04b3          	add	s1,s6,s1
    8000376c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003770:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003774:	00007797          	auipc	a5,0x7
    80003778:	e347b783          	ld	a5,-460(a5) # 8000a5a8 <_ZL10waitForAll>
    8000377c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003780:	02800513          	li	a0,40
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	1e8080e7          	jalr	488(ra) # 8000196c <_Znwm>
    8000378c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	2f0080e7          	jalr	752(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80003798:	f95ff06f          	j	8000372c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	2b0080e7          	jalr	688(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800037a4:	00000493          	li	s1,0
    800037a8:	0099ce63          	blt	s3,s1,800037c4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800037ac:	00007517          	auipc	a0,0x7
    800037b0:	dfc53503          	ld	a0,-516(a0) # 8000a5a8 <_ZL10waitForAll>
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	314080e7          	jalr	788(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800037bc:	0014849b          	addiw	s1,s1,1
    800037c0:	fe9ff06f          	j	800037a8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800037c4:	00007517          	auipc	a0,0x7
    800037c8:	de453503          	ld	a0,-540(a0) # 8000a5a8 <_ZL10waitForAll>
    800037cc:	00050863          	beqz	a0,800037dc <_Z20testConsumerProducerv+0x2f4>
    800037d0:	00053783          	ld	a5,0(a0)
    800037d4:	0087b783          	ld	a5,8(a5)
    800037d8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800037dc:	00000493          	li	s1,0
    800037e0:	0080006f          	j	800037e8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800037e4:	0014849b          	addiw	s1,s1,1
    800037e8:	0334d263          	bge	s1,s3,8000380c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800037ec:	00349793          	slli	a5,s1,0x3
    800037f0:	00fa07b3          	add	a5,s4,a5
    800037f4:	0007b503          	ld	a0,0(a5)
    800037f8:	fe0506e3          	beqz	a0,800037e4 <_Z20testConsumerProducerv+0x2fc>
    800037fc:	00053783          	ld	a5,0(a0)
    80003800:	0087b783          	ld	a5,8(a5)
    80003804:	000780e7          	jalr	a5
    80003808:	fddff06f          	j	800037e4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000380c:	000b8a63          	beqz	s7,80003820 <_Z20testConsumerProducerv+0x338>
    80003810:	000bb783          	ld	a5,0(s7)
    80003814:	0087b783          	ld	a5,8(a5)
    80003818:	000b8513          	mv	a0,s7
    8000381c:	000780e7          	jalr	a5
    delete buffer;
    80003820:	000a8e63          	beqz	s5,8000383c <_Z20testConsumerProducerv+0x354>
    80003824:	000a8513          	mv	a0,s5
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	870080e7          	jalr	-1936(ra) # 80005098 <_ZN9BufferCPPD1Ev>
    80003830:	000a8513          	mv	a0,s5
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	160080e7          	jalr	352(ra) # 80001994 <_ZdlPv>
    8000383c:	000c0113          	mv	sp,s8
}
    80003840:	f8040113          	addi	sp,s0,-128
    80003844:	07813083          	ld	ra,120(sp)
    80003848:	07013403          	ld	s0,112(sp)
    8000384c:	06813483          	ld	s1,104(sp)
    80003850:	06013903          	ld	s2,96(sp)
    80003854:	05813983          	ld	s3,88(sp)
    80003858:	05013a03          	ld	s4,80(sp)
    8000385c:	04813a83          	ld	s5,72(sp)
    80003860:	04013b03          	ld	s6,64(sp)
    80003864:	03813b83          	ld	s7,56(sp)
    80003868:	03013c03          	ld	s8,48(sp)
    8000386c:	02813c83          	ld	s9,40(sp)
    80003870:	08010113          	addi	sp,sp,128
    80003874:	00008067          	ret
    80003878:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000387c:	000a8513          	mv	a0,s5
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	114080e7          	jalr	276(ra) # 80001994 <_ZdlPv>
    80003888:	00048513          	mv	a0,s1
    8000388c:	00008097          	auipc	ra,0x8
    80003890:	e1c080e7          	jalr	-484(ra) # 8000b6a8 <_Unwind_Resume>
    80003894:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003898:	00090513          	mv	a0,s2
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	0f8080e7          	jalr	248(ra) # 80001994 <_ZdlPv>
    800038a4:	00048513          	mv	a0,s1
    800038a8:	00008097          	auipc	ra,0x8
    800038ac:	e00080e7          	jalr	-512(ra) # 8000b6a8 <_Unwind_Resume>
    800038b0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800038b4:	000b8513          	mv	a0,s7
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	0dc080e7          	jalr	220(ra) # 80001994 <_ZdlPv>
    800038c0:	00048513          	mv	a0,s1
    800038c4:	00008097          	auipc	ra,0x8
    800038c8:	de4080e7          	jalr	-540(ra) # 8000b6a8 <_Unwind_Resume>
    800038cc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800038d0:	00048513          	mv	a0,s1
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	0c0080e7          	jalr	192(ra) # 80001994 <_ZdlPv>
    800038dc:	00090513          	mv	a0,s2
    800038e0:	00008097          	auipc	ra,0x8
    800038e4:	dc8080e7          	jalr	-568(ra) # 8000b6a8 <_Unwind_Resume>
    800038e8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800038ec:	000c8513          	mv	a0,s9
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	0a4080e7          	jalr	164(ra) # 80001994 <_ZdlPv>
    800038f8:	00048513          	mv	a0,s1
    800038fc:	00008097          	auipc	ra,0x8
    80003900:	dac080e7          	jalr	-596(ra) # 8000b6a8 <_Unwind_Resume>

0000000080003904 <_ZN8Consumer3runEv>:
    void run() override {
    80003904:	fd010113          	addi	sp,sp,-48
    80003908:	02113423          	sd	ra,40(sp)
    8000390c:	02813023          	sd	s0,32(sp)
    80003910:	00913c23          	sd	s1,24(sp)
    80003914:	01213823          	sd	s2,16(sp)
    80003918:	01313423          	sd	s3,8(sp)
    8000391c:	03010413          	addi	s0,sp,48
    80003920:	00050913          	mv	s2,a0
        int i = 0;
    80003924:	00000993          	li	s3,0
    80003928:	0100006f          	j	80003938 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000392c:	00a00513          	li	a0,10
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	27c080e7          	jalr	636(ra) # 80001bac <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003938:	00007797          	auipc	a5,0x7
    8000393c:	c687a783          	lw	a5,-920(a5) # 8000a5a0 <_ZL9threadEnd>
    80003940:	04079a63          	bnez	a5,80003994 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003944:	02093783          	ld	a5,32(s2)
    80003948:	0087b503          	ld	a0,8(a5)
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	638080e7          	jalr	1592(ra) # 80004f84 <_ZN9BufferCPP3getEv>
            i++;
    80003954:	0019849b          	addiw	s1,s3,1
    80003958:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000395c:	0ff57513          	andi	a0,a0,255
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	24c080e7          	jalr	588(ra) # 80001bac <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003968:	05000793          	li	a5,80
    8000396c:	02f4e4bb          	remw	s1,s1,a5
    80003970:	fc0494e3          	bnez	s1,80003938 <_ZN8Consumer3runEv+0x34>
    80003974:	fb9ff06f          	j	8000392c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003978:	02093783          	ld	a5,32(s2)
    8000397c:	0087b503          	ld	a0,8(a5)
    80003980:	00001097          	auipc	ra,0x1
    80003984:	604080e7          	jalr	1540(ra) # 80004f84 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003988:	0ff57513          	andi	a0,a0,255
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	220080e7          	jalr	544(ra) # 80001bac <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003994:	02093783          	ld	a5,32(s2)
    80003998:	0087b503          	ld	a0,8(a5)
    8000399c:	00001097          	auipc	ra,0x1
    800039a0:	674080e7          	jalr	1652(ra) # 80005010 <_ZN9BufferCPP6getCntEv>
    800039a4:	fca04ae3          	bgtz	a0,80003978 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800039a8:	02093783          	ld	a5,32(s2)
    800039ac:	0107b503          	ld	a0,16(a5)
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	134080e7          	jalr	308(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
    }
    800039b8:	02813083          	ld	ra,40(sp)
    800039bc:	02013403          	ld	s0,32(sp)
    800039c0:	01813483          	ld	s1,24(sp)
    800039c4:	01013903          	ld	s2,16(sp)
    800039c8:	00813983          	ld	s3,8(sp)
    800039cc:	03010113          	addi	sp,sp,48
    800039d0:	00008067          	ret

00000000800039d4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	00813023          	sd	s0,0(sp)
    800039e0:	01010413          	addi	s0,sp,16
    800039e4:	00007797          	auipc	a5,0x7
    800039e8:	a3c78793          	addi	a5,a5,-1476 # 8000a420 <_ZTV8Consumer+0x10>
    800039ec:	00f53023          	sd	a5,0(a0)
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	f4c080e7          	jalr	-180(ra) # 8000193c <_ZN6ThreadD1Ev>
    800039f8:	00813083          	ld	ra,8(sp)
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <_ZN8ConsumerD0Ev>:
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00113c23          	sd	ra,24(sp)
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    80003a20:	00007797          	auipc	a5,0x7
    80003a24:	a0078793          	addi	a5,a5,-1536 # 8000a420 <_ZTV8Consumer+0x10>
    80003a28:	00f53023          	sd	a5,0(a0)
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	f10080e7          	jalr	-240(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003a34:	00048513          	mv	a0,s1
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	f5c080e7          	jalr	-164(ra) # 80001994 <_ZdlPv>
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00813483          	ld	s1,8(sp)
    80003a4c:	02010113          	addi	sp,sp,32
    80003a50:	00008067          	ret

0000000080003a54 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003a54:	ff010113          	addi	sp,sp,-16
    80003a58:	00113423          	sd	ra,8(sp)
    80003a5c:	00813023          	sd	s0,0(sp)
    80003a60:	01010413          	addi	s0,sp,16
    80003a64:	00007797          	auipc	a5,0x7
    80003a68:	96c78793          	addi	a5,a5,-1684 # 8000a3d0 <_ZTV16ProducerKeyborad+0x10>
    80003a6c:	00f53023          	sd	a5,0(a0)
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	ecc080e7          	jalr	-308(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003a78:	00813083          	ld	ra,8(sp)
    80003a7c:	00013403          	ld	s0,0(sp)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret

0000000080003a88 <_ZN16ProducerKeyboradD0Ev>:
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	02010413          	addi	s0,sp,32
    80003a9c:	00050493          	mv	s1,a0
    80003aa0:	00007797          	auipc	a5,0x7
    80003aa4:	93078793          	addi	a5,a5,-1744 # 8000a3d0 <_ZTV16ProducerKeyborad+0x10>
    80003aa8:	00f53023          	sd	a5,0(a0)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	e90080e7          	jalr	-368(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	edc080e7          	jalr	-292(ra) # 80001994 <_ZdlPv>
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	02010113          	addi	sp,sp,32
    80003ad0:	00008067          	ret

0000000080003ad4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    80003ae4:	00007797          	auipc	a5,0x7
    80003ae8:	91478793          	addi	a5,a5,-1772 # 8000a3f8 <_ZTV8Producer+0x10>
    80003aec:	00f53023          	sd	a5,0(a0)
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	e4c080e7          	jalr	-436(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003af8:	00813083          	ld	ra,8(sp)
    80003afc:	00013403          	ld	s0,0(sp)
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	00008067          	ret

0000000080003b08 <_ZN8ProducerD0Ev>:
    80003b08:	fe010113          	addi	sp,sp,-32
    80003b0c:	00113c23          	sd	ra,24(sp)
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	02010413          	addi	s0,sp,32
    80003b1c:	00050493          	mv	s1,a0
    80003b20:	00007797          	auipc	a5,0x7
    80003b24:	8d878793          	addi	a5,a5,-1832 # 8000a3f8 <_ZTV8Producer+0x10>
    80003b28:	00f53023          	sd	a5,0(a0)
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	e10080e7          	jalr	-496(ra) # 8000193c <_ZN6ThreadD1Ev>
    80003b34:	00048513          	mv	a0,s1
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	e5c080e7          	jalr	-420(ra) # 80001994 <_ZdlPv>
    80003b40:	01813083          	ld	ra,24(sp)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	00813483          	ld	s1,8(sp)
    80003b4c:	02010113          	addi	sp,sp,32
    80003b50:	00008067          	ret

0000000080003b54 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003b54:	fe010113          	addi	sp,sp,-32
    80003b58:	00113c23          	sd	ra,24(sp)
    80003b5c:	00813823          	sd	s0,16(sp)
    80003b60:	00913423          	sd	s1,8(sp)
    80003b64:	02010413          	addi	s0,sp,32
    80003b68:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	868080e7          	jalr	-1944(ra) # 800013d4 <_Z4getcv>
    80003b74:	0005059b          	sext.w	a1,a0
    80003b78:	01b00793          	li	a5,27
    80003b7c:	00f58c63          	beq	a1,a5,80003b94 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003b80:	0204b783          	ld	a5,32(s1)
    80003b84:	0087b503          	ld	a0,8(a5)
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	36c080e7          	jalr	876(ra) # 80004ef4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003b90:	fddff06f          	j	80003b6c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003b94:	00100793          	li	a5,1
    80003b98:	00007717          	auipc	a4,0x7
    80003b9c:	a0f72423          	sw	a5,-1528(a4) # 8000a5a0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ba0:	0204b783          	ld	a5,32(s1)
    80003ba4:	02100593          	li	a1,33
    80003ba8:	0087b503          	ld	a0,8(a5)
    80003bac:	00001097          	auipc	ra,0x1
    80003bb0:	348080e7          	jalr	840(ra) # 80004ef4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003bb4:	0204b783          	ld	a5,32(s1)
    80003bb8:	0107b503          	ld	a0,16(a5)
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	f28080e7          	jalr	-216(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
    }
    80003bc4:	01813083          	ld	ra,24(sp)
    80003bc8:	01013403          	ld	s0,16(sp)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN8Producer3runEv>:
    void run() override {
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	00813823          	sd	s0,16(sp)
    80003be4:	00913423          	sd	s1,8(sp)
    80003be8:	01213023          	sd	s2,0(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	00050493          	mv	s1,a0
        int i = 0;
    80003bf4:	00000913          	li	s2,0
        while (!threadEnd) {
    80003bf8:	00007797          	auipc	a5,0x7
    80003bfc:	9a87a783          	lw	a5,-1624(a5) # 8000a5a0 <_ZL9threadEnd>
    80003c00:	04079263          	bnez	a5,80003c44 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003c04:	0204b783          	ld	a5,32(s1)
    80003c08:	0007a583          	lw	a1,0(a5)
    80003c0c:	0305859b          	addiw	a1,a1,48
    80003c10:	0087b503          	ld	a0,8(a5)
    80003c14:	00001097          	auipc	ra,0x1
    80003c18:	2e0080e7          	jalr	736(ra) # 80004ef4 <_ZN9BufferCPP3putEi>
            i++;
    80003c1c:	0019071b          	addiw	a4,s2,1
    80003c20:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003c24:	0204b783          	ld	a5,32(s1)
    80003c28:	0007a783          	lw	a5,0(a5)
    80003c2c:	00e787bb          	addw	a5,a5,a4
    80003c30:	00500513          	li	a0,5
    80003c34:	02a7e53b          	remw	a0,a5,a0
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	e2c080e7          	jalr	-468(ra) # 80001a64 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003c40:	fb9ff06f          	j	80003bf8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003c44:	0204b783          	ld	a5,32(s1)
    80003c48:	0107b503          	ld	a0,16(a5)
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	e98080e7          	jalr	-360(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
    }
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	00013903          	ld	s2,0(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret

0000000080003c6c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00113c23          	sd	ra,24(sp)
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	01213023          	sd	s2,0(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c88:	00100793          	li	a5,1
    80003c8c:	02a7f863          	bgeu	a5,a0,80003cbc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c90:	00a00793          	li	a5,10
    80003c94:	02f577b3          	remu	a5,a0,a5
    80003c98:	02078e63          	beqz	a5,80003cd4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c9c:	fff48513          	addi	a0,s1,-1
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	fcc080e7          	jalr	-52(ra) # 80003c6c <_ZL9fibonaccim>
    80003ca8:	00050913          	mv	s2,a0
    80003cac:	ffe48513          	addi	a0,s1,-2
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	fbc080e7          	jalr	-68(ra) # 80003c6c <_ZL9fibonaccim>
    80003cb8:	00a90533          	add	a0,s2,a0
}
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	00813483          	ld	s1,8(sp)
    80003cc8:	00013903          	ld	s2,0(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003cd4:	ffffd097          	auipc	ra,0xffffd
    80003cd8:	600080e7          	jalr	1536(ra) # 800012d4 <_Z15thread_dispatchv>
    80003cdc:	fc1ff06f          	j	80003c9c <_ZL9fibonaccim+0x30>

0000000080003ce0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003ce0:	fe010113          	addi	sp,sp,-32
    80003ce4:	00113c23          	sd	ra,24(sp)
    80003ce8:	00813823          	sd	s0,16(sp)
    80003cec:	00913423          	sd	s1,8(sp)
    80003cf0:	01213023          	sd	s2,0(sp)
    80003cf4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003cf8:	00a00493          	li	s1,10
    80003cfc:	0400006f          	j	80003d3c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d00:	00004517          	auipc	a0,0x4
    80003d04:	4b850513          	addi	a0,a0,1208 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	dc8080e7          	jalr	-568(ra) # 80004ad0 <_Z11printStringPKc>
    80003d10:	00000613          	li	a2,0
    80003d14:	00a00593          	li	a1,10
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	f64080e7          	jalr	-156(ra) # 80004c80 <_Z8printIntiii>
    80003d24:	00004517          	auipc	a0,0x4
    80003d28:	38450513          	addi	a0,a0,900 # 800080a8 <CONSOLE_STATUS+0x98>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	da4080e7          	jalr	-604(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d34:	0014849b          	addiw	s1,s1,1
    80003d38:	0ff4f493          	andi	s1,s1,255
    80003d3c:	00c00793          	li	a5,12
    80003d40:	fc97f0e3          	bgeu	a5,s1,80003d00 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003d44:	00004517          	auipc	a0,0x4
    80003d48:	47c50513          	addi	a0,a0,1148 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	d84080e7          	jalr	-636(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d54:	00500313          	li	t1,5
    thread_dispatch();
    80003d58:	ffffd097          	auipc	ra,0xffffd
    80003d5c:	57c080e7          	jalr	1404(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d60:	01000513          	li	a0,16
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	f08080e7          	jalr	-248(ra) # 80003c6c <_ZL9fibonaccim>
    80003d6c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d70:	00004517          	auipc	a0,0x4
    80003d74:	46050513          	addi	a0,a0,1120 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80003d78:	00001097          	auipc	ra,0x1
    80003d7c:	d58080e7          	jalr	-680(ra) # 80004ad0 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	0009051b          	sext.w	a0,s2
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	ef4080e7          	jalr	-268(ra) # 80004c80 <_Z8printIntiii>
    80003d94:	00004517          	auipc	a0,0x4
    80003d98:	31450513          	addi	a0,a0,788 # 800080a8 <CONSOLE_STATUS+0x98>
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	d34080e7          	jalr	-716(ra) # 80004ad0 <_Z11printStringPKc>
    80003da4:	0400006f          	j	80003de4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	41050513          	addi	a0,a0,1040 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003db0:	00001097          	auipc	ra,0x1
    80003db4:	d20080e7          	jalr	-736(ra) # 80004ad0 <_Z11printStringPKc>
    80003db8:	00000613          	li	a2,0
    80003dbc:	00a00593          	li	a1,10
    80003dc0:	00048513          	mv	a0,s1
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	ebc080e7          	jalr	-324(ra) # 80004c80 <_Z8printIntiii>
    80003dcc:	00004517          	auipc	a0,0x4
    80003dd0:	2dc50513          	addi	a0,a0,732 # 800080a8 <CONSOLE_STATUS+0x98>
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	cfc080e7          	jalr	-772(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ddc:	0014849b          	addiw	s1,s1,1
    80003de0:	0ff4f493          	andi	s1,s1,255
    80003de4:	00f00793          	li	a5,15
    80003de8:	fc97f0e3          	bgeu	a5,s1,80003da8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003dec:	00004517          	auipc	a0,0x4
    80003df0:	3f450513          	addi	a0,a0,1012 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	cdc080e7          	jalr	-804(ra) # 80004ad0 <_Z11printStringPKc>
    finishedD = true;
    80003dfc:	00100793          	li	a5,1
    80003e00:	00006717          	auipc	a4,0x6
    80003e04:	7af70823          	sb	a5,1968(a4) # 8000a5b0 <_ZL9finishedD>
    thread_dispatch();
    80003e08:	ffffd097          	auipc	ra,0xffffd
    80003e0c:	4cc080e7          	jalr	1228(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	00013903          	ld	s2,0(sp)
    80003e20:	02010113          	addi	sp,sp,32
    80003e24:	00008067          	ret

0000000080003e28 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	01213023          	sd	s2,0(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e40:	00000493          	li	s1,0
    80003e44:	0400006f          	j	80003e84 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003e48:	00004517          	auipc	a0,0x4
    80003e4c:	34050513          	addi	a0,a0,832 # 80008188 <CONSOLE_STATUS+0x178>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	c80080e7          	jalr	-896(ra) # 80004ad0 <_Z11printStringPKc>
    80003e58:	00000613          	li	a2,0
    80003e5c:	00a00593          	li	a1,10
    80003e60:	00048513          	mv	a0,s1
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	e1c080e7          	jalr	-484(ra) # 80004c80 <_Z8printIntiii>
    80003e6c:	00004517          	auipc	a0,0x4
    80003e70:	23c50513          	addi	a0,a0,572 # 800080a8 <CONSOLE_STATUS+0x98>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	c5c080e7          	jalr	-932(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e7c:	0014849b          	addiw	s1,s1,1
    80003e80:	0ff4f493          	andi	s1,s1,255
    80003e84:	00200793          	li	a5,2
    80003e88:	fc97f0e3          	bgeu	a5,s1,80003e48 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003e8c:	00004517          	auipc	a0,0x4
    80003e90:	30450513          	addi	a0,a0,772 # 80008190 <CONSOLE_STATUS+0x180>
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	c3c080e7          	jalr	-964(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e9c:	00700313          	li	t1,7
    thread_dispatch();
    80003ea0:	ffffd097          	auipc	ra,0xffffd
    80003ea4:	434080e7          	jalr	1076(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ea8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003eac:	00004517          	auipc	a0,0x4
    80003eb0:	2f450513          	addi	a0,a0,756 # 800081a0 <CONSOLE_STATUS+0x190>
    80003eb4:	00001097          	auipc	ra,0x1
    80003eb8:	c1c080e7          	jalr	-996(ra) # 80004ad0 <_Z11printStringPKc>
    80003ebc:	00000613          	li	a2,0
    80003ec0:	00a00593          	li	a1,10
    80003ec4:	0009051b          	sext.w	a0,s2
    80003ec8:	00001097          	auipc	ra,0x1
    80003ecc:	db8080e7          	jalr	-584(ra) # 80004c80 <_Z8printIntiii>
    80003ed0:	00004517          	auipc	a0,0x4
    80003ed4:	1d850513          	addi	a0,a0,472 # 800080a8 <CONSOLE_STATUS+0x98>
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	bf8080e7          	jalr	-1032(ra) # 80004ad0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003ee0:	00c00513          	li	a0,12
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	d88080e7          	jalr	-632(ra) # 80003c6c <_ZL9fibonaccim>
    80003eec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ef0:	00004517          	auipc	a0,0x4
    80003ef4:	2b850513          	addi	a0,a0,696 # 800081a8 <CONSOLE_STATUS+0x198>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	bd8080e7          	jalr	-1064(ra) # 80004ad0 <_Z11printStringPKc>
    80003f00:	00000613          	li	a2,0
    80003f04:	00a00593          	li	a1,10
    80003f08:	0009051b          	sext.w	a0,s2
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	d74080e7          	jalr	-652(ra) # 80004c80 <_Z8printIntiii>
    80003f14:	00004517          	auipc	a0,0x4
    80003f18:	19450513          	addi	a0,a0,404 # 800080a8 <CONSOLE_STATUS+0x98>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	bb4080e7          	jalr	-1100(ra) # 80004ad0 <_Z11printStringPKc>
    80003f24:	0400006f          	j	80003f64 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003f28:	00004517          	auipc	a0,0x4
    80003f2c:	26050513          	addi	a0,a0,608 # 80008188 <CONSOLE_STATUS+0x178>
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	ba0080e7          	jalr	-1120(ra) # 80004ad0 <_Z11printStringPKc>
    80003f38:	00000613          	li	a2,0
    80003f3c:	00a00593          	li	a1,10
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	d3c080e7          	jalr	-708(ra) # 80004c80 <_Z8printIntiii>
    80003f4c:	00004517          	auipc	a0,0x4
    80003f50:	15c50513          	addi	a0,a0,348 # 800080a8 <CONSOLE_STATUS+0x98>
    80003f54:	00001097          	auipc	ra,0x1
    80003f58:	b7c080e7          	jalr	-1156(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f5c:	0014849b          	addiw	s1,s1,1
    80003f60:	0ff4f493          	andi	s1,s1,255
    80003f64:	00500793          	li	a5,5
    80003f68:	fc97f0e3          	bgeu	a5,s1,80003f28 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003f6c:	00004517          	auipc	a0,0x4
    80003f70:	1f450513          	addi	a0,a0,500 # 80008160 <CONSOLE_STATUS+0x150>
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	b5c080e7          	jalr	-1188(ra) # 80004ad0 <_Z11printStringPKc>
    finishedC = true;
    80003f7c:	00100793          	li	a5,1
    80003f80:	00006717          	auipc	a4,0x6
    80003f84:	62f708a3          	sb	a5,1585(a4) # 8000a5b1 <_ZL9finishedC>
    thread_dispatch();
    80003f88:	ffffd097          	auipc	ra,0xffffd
    80003f8c:	34c080e7          	jalr	844(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	01013403          	ld	s0,16(sp)
    80003f98:	00813483          	ld	s1,8(sp)
    80003f9c:	00013903          	ld	s2,0(sp)
    80003fa0:	02010113          	addi	sp,sp,32
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003fa8:	fe010113          	addi	sp,sp,-32
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00913423          	sd	s1,8(sp)
    80003fb8:	01213023          	sd	s2,0(sp)
    80003fbc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fc0:	00000913          	li	s2,0
    80003fc4:	0380006f          	j	80003ffc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003fc8:	ffffd097          	auipc	ra,0xffffd
    80003fcc:	30c080e7          	jalr	780(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fd0:	00148493          	addi	s1,s1,1
    80003fd4:	000027b7          	lui	a5,0x2
    80003fd8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fdc:	0097ee63          	bltu	a5,s1,80003ff8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fe0:	00000713          	li	a4,0
    80003fe4:	000077b7          	lui	a5,0x7
    80003fe8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fec:	fce7eee3          	bltu	a5,a4,80003fc8 <_ZL11workerBodyBPv+0x20>
    80003ff0:	00170713          	addi	a4,a4,1
    80003ff4:	ff1ff06f          	j	80003fe4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ff8:	00190913          	addi	s2,s2,1
    80003ffc:	00f00793          	li	a5,15
    80004000:	0527e063          	bltu	a5,s2,80004040 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004004:	00004517          	auipc	a0,0x4
    80004008:	16c50513          	addi	a0,a0,364 # 80008170 <CONSOLE_STATUS+0x160>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	ac4080e7          	jalr	-1340(ra) # 80004ad0 <_Z11printStringPKc>
    80004014:	00000613          	li	a2,0
    80004018:	00a00593          	li	a1,10
    8000401c:	0009051b          	sext.w	a0,s2
    80004020:	00001097          	auipc	ra,0x1
    80004024:	c60080e7          	jalr	-928(ra) # 80004c80 <_Z8printIntiii>
    80004028:	00004517          	auipc	a0,0x4
    8000402c:	08050513          	addi	a0,a0,128 # 800080a8 <CONSOLE_STATUS+0x98>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	aa0080e7          	jalr	-1376(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004038:	00000493          	li	s1,0
    8000403c:	f99ff06f          	j	80003fd4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004040:	00004517          	auipc	a0,0x4
    80004044:	13850513          	addi	a0,a0,312 # 80008178 <CONSOLE_STATUS+0x168>
    80004048:	00001097          	auipc	ra,0x1
    8000404c:	a88080e7          	jalr	-1400(ra) # 80004ad0 <_Z11printStringPKc>
    finishedB = true;
    80004050:	00100793          	li	a5,1
    80004054:	00006717          	auipc	a4,0x6
    80004058:	54f70f23          	sb	a5,1374(a4) # 8000a5b2 <_ZL9finishedB>
    thread_dispatch();
    8000405c:	ffffd097          	auipc	ra,0xffffd
    80004060:	278080e7          	jalr	632(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	01213023          	sd	s2,0(sp)
    80004090:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004094:	00000913          	li	s2,0
    80004098:	0380006f          	j	800040d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	238080e7          	jalr	568(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800040a4:	00148493          	addi	s1,s1,1
    800040a8:	000027b7          	lui	a5,0x2
    800040ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040b0:	0097ee63          	bltu	a5,s1,800040cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040b4:	00000713          	li	a4,0
    800040b8:	000077b7          	lui	a5,0x7
    800040bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040c0:	fce7eee3          	bltu	a5,a4,8000409c <_ZL11workerBodyAPv+0x20>
    800040c4:	00170713          	addi	a4,a4,1
    800040c8:	ff1ff06f          	j	800040b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800040cc:	00190913          	addi	s2,s2,1
    800040d0:	00900793          	li	a5,9
    800040d4:	0527e063          	bltu	a5,s2,80004114 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800040d8:	00004517          	auipc	a0,0x4
    800040dc:	08050513          	addi	a0,a0,128 # 80008158 <CONSOLE_STATUS+0x148>
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	9f0080e7          	jalr	-1552(ra) # 80004ad0 <_Z11printStringPKc>
    800040e8:	00000613          	li	a2,0
    800040ec:	00a00593          	li	a1,10
    800040f0:	0009051b          	sext.w	a0,s2
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	b8c080e7          	jalr	-1140(ra) # 80004c80 <_Z8printIntiii>
    800040fc:	00004517          	auipc	a0,0x4
    80004100:	fac50513          	addi	a0,a0,-84 # 800080a8 <CONSOLE_STATUS+0x98>
    80004104:	00001097          	auipc	ra,0x1
    80004108:	9cc080e7          	jalr	-1588(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000410c:	00000493          	li	s1,0
    80004110:	f99ff06f          	j	800040a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004114:	00004517          	auipc	a0,0x4
    80004118:	04c50513          	addi	a0,a0,76 # 80008160 <CONSOLE_STATUS+0x150>
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	9b4080e7          	jalr	-1612(ra) # 80004ad0 <_Z11printStringPKc>
    finishedA = true;
    80004124:	00100793          	li	a5,1
    80004128:	00006717          	auipc	a4,0x6
    8000412c:	48f705a3          	sb	a5,1163(a4) # 8000a5b3 <_ZL9finishedA>
}
    80004130:	01813083          	ld	ra,24(sp)
    80004134:	01013403          	ld	s0,16(sp)
    80004138:	00813483          	ld	s1,8(sp)
    8000413c:	00013903          	ld	s2,0(sp)
    80004140:	02010113          	addi	sp,sp,32
    80004144:	00008067          	ret

0000000080004148 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004148:	fd010113          	addi	sp,sp,-48
    8000414c:	02113423          	sd	ra,40(sp)
    80004150:	02813023          	sd	s0,32(sp)
    80004154:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004158:	00000613          	li	a2,0
    8000415c:	00000597          	auipc	a1,0x0
    80004160:	f2058593          	addi	a1,a1,-224 # 8000407c <_ZL11workerBodyAPv>
    80004164:	fd040513          	addi	a0,s0,-48
    80004168:	ffffd097          	auipc	ra,0xffffd
    8000416c:	098080e7          	jalr	152(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004170:	00004517          	auipc	a0,0x4
    80004174:	08050513          	addi	a0,a0,128 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	958080e7          	jalr	-1704(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004180:	00000613          	li	a2,0
    80004184:	00000597          	auipc	a1,0x0
    80004188:	e2458593          	addi	a1,a1,-476 # 80003fa8 <_ZL11workerBodyBPv>
    8000418c:	fd840513          	addi	a0,s0,-40
    80004190:	ffffd097          	auipc	ra,0xffffd
    80004194:	070080e7          	jalr	112(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004198:	00004517          	auipc	a0,0x4
    8000419c:	07050513          	addi	a0,a0,112 # 80008208 <CONSOLE_STATUS+0x1f8>
    800041a0:	00001097          	auipc	ra,0x1
    800041a4:	930080e7          	jalr	-1744(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800041a8:	00000613          	li	a2,0
    800041ac:	00000597          	auipc	a1,0x0
    800041b0:	c7c58593          	addi	a1,a1,-900 # 80003e28 <_ZL11workerBodyCPv>
    800041b4:	fe040513          	addi	a0,s0,-32
    800041b8:	ffffd097          	auipc	ra,0xffffd
    800041bc:	048080e7          	jalr	72(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800041c0:	00004517          	auipc	a0,0x4
    800041c4:	06050513          	addi	a0,a0,96 # 80008220 <CONSOLE_STATUS+0x210>
    800041c8:	00001097          	auipc	ra,0x1
    800041cc:	908080e7          	jalr	-1784(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800041d0:	00000613          	li	a2,0
    800041d4:	00000597          	auipc	a1,0x0
    800041d8:	b0c58593          	addi	a1,a1,-1268 # 80003ce0 <_ZL11workerBodyDPv>
    800041dc:	fe840513          	addi	a0,s0,-24
    800041e0:	ffffd097          	auipc	ra,0xffffd
    800041e4:	020080e7          	jalr	32(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800041e8:	00004517          	auipc	a0,0x4
    800041ec:	05050513          	addi	a0,a0,80 # 80008238 <CONSOLE_STATUS+0x228>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	8e0080e7          	jalr	-1824(ra) # 80004ad0 <_Z11printStringPKc>
    800041f8:	00c0006f          	j	80004204 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800041fc:	ffffd097          	auipc	ra,0xffffd
    80004200:	0d8080e7          	jalr	216(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004204:	00006797          	auipc	a5,0x6
    80004208:	3af7c783          	lbu	a5,943(a5) # 8000a5b3 <_ZL9finishedA>
    8000420c:	fe0788e3          	beqz	a5,800041fc <_Z18Threads_C_API_testv+0xb4>
    80004210:	00006797          	auipc	a5,0x6
    80004214:	3a27c783          	lbu	a5,930(a5) # 8000a5b2 <_ZL9finishedB>
    80004218:	fe0782e3          	beqz	a5,800041fc <_Z18Threads_C_API_testv+0xb4>
    8000421c:	00006797          	auipc	a5,0x6
    80004220:	3957c783          	lbu	a5,917(a5) # 8000a5b1 <_ZL9finishedC>
    80004224:	fc078ce3          	beqz	a5,800041fc <_Z18Threads_C_API_testv+0xb4>
    80004228:	00006797          	auipc	a5,0x6
    8000422c:	3887c783          	lbu	a5,904(a5) # 8000a5b0 <_ZL9finishedD>
    80004230:	fc0786e3          	beqz	a5,800041fc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004234:	02813083          	ld	ra,40(sp)
    80004238:	02013403          	ld	s0,32(sp)
    8000423c:	03010113          	addi	sp,sp,48
    80004240:	00008067          	ret

0000000080004244 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004244:	fd010113          	addi	sp,sp,-48
    80004248:	02113423          	sd	ra,40(sp)
    8000424c:	02813023          	sd	s0,32(sp)
    80004250:	00913c23          	sd	s1,24(sp)
    80004254:	01213823          	sd	s2,16(sp)
    80004258:	01313423          	sd	s3,8(sp)
    8000425c:	03010413          	addi	s0,sp,48
    80004260:	00050993          	mv	s3,a0
    80004264:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004268:	00000913          	li	s2,0
    8000426c:	00c0006f          	j	80004278 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	7dc080e7          	jalr	2012(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	15c080e7          	jalr	348(ra) # 800013d4 <_Z4getcv>
    80004280:	0005059b          	sext.w	a1,a0
    80004284:	01b00793          	li	a5,27
    80004288:	02f58a63          	beq	a1,a5,800042bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000428c:	0084b503          	ld	a0,8(s1)
    80004290:	00001097          	auipc	ra,0x1
    80004294:	c64080e7          	jalr	-924(ra) # 80004ef4 <_ZN9BufferCPP3putEi>
        i++;
    80004298:	0019071b          	addiw	a4,s2,1
    8000429c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800042a0:	0004a683          	lw	a3,0(s1)
    800042a4:	0026979b          	slliw	a5,a3,0x2
    800042a8:	00d787bb          	addw	a5,a5,a3
    800042ac:	0017979b          	slliw	a5,a5,0x1
    800042b0:	02f767bb          	remw	a5,a4,a5
    800042b4:	fc0792e3          	bnez	a5,80004278 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800042b8:	fb9ff06f          	j	80004270 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800042bc:	00100793          	li	a5,1
    800042c0:	00006717          	auipc	a4,0x6
    800042c4:	2ef72c23          	sw	a5,760(a4) # 8000a5b8 <_ZL9threadEnd>
    td->buffer->put('!');
    800042c8:	0209b783          	ld	a5,32(s3)
    800042cc:	02100593          	li	a1,33
    800042d0:	0087b503          	ld	a0,8(a5)
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	c20080e7          	jalr	-992(ra) # 80004ef4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800042dc:	0104b503          	ld	a0,16(s1)
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	804080e7          	jalr	-2044(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
}
    800042e8:	02813083          	ld	ra,40(sp)
    800042ec:	02013403          	ld	s0,32(sp)
    800042f0:	01813483          	ld	s1,24(sp)
    800042f4:	01013903          	ld	s2,16(sp)
    800042f8:	00813983          	ld	s3,8(sp)
    800042fc:	03010113          	addi	sp,sp,48
    80004300:	00008067          	ret

0000000080004304 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004304:	fe010113          	addi	sp,sp,-32
    80004308:	00113c23          	sd	ra,24(sp)
    8000430c:	00813823          	sd	s0,16(sp)
    80004310:	00913423          	sd	s1,8(sp)
    80004314:	01213023          	sd	s2,0(sp)
    80004318:	02010413          	addi	s0,sp,32
    8000431c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004320:	00000913          	li	s2,0
    80004324:	00c0006f          	j	80004330 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004328:	ffffd097          	auipc	ra,0xffffd
    8000432c:	724080e7          	jalr	1828(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004330:	00006797          	auipc	a5,0x6
    80004334:	2887a783          	lw	a5,648(a5) # 8000a5b8 <_ZL9threadEnd>
    80004338:	02079e63          	bnez	a5,80004374 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000433c:	0004a583          	lw	a1,0(s1)
    80004340:	0305859b          	addiw	a1,a1,48
    80004344:	0084b503          	ld	a0,8(s1)
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	bac080e7          	jalr	-1108(ra) # 80004ef4 <_ZN9BufferCPP3putEi>
        i++;
    80004350:	0019071b          	addiw	a4,s2,1
    80004354:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004358:	0004a683          	lw	a3,0(s1)
    8000435c:	0026979b          	slliw	a5,a3,0x2
    80004360:	00d787bb          	addw	a5,a5,a3
    80004364:	0017979b          	slliw	a5,a5,0x1
    80004368:	02f767bb          	remw	a5,a4,a5
    8000436c:	fc0792e3          	bnez	a5,80004330 <_ZN12ProducerSync8producerEPv+0x2c>
    80004370:	fb9ff06f          	j	80004328 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004374:	0104b503          	ld	a0,16(s1)
    80004378:	ffffd097          	auipc	ra,0xffffd
    8000437c:	76c080e7          	jalr	1900(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
}
    80004380:	01813083          	ld	ra,24(sp)
    80004384:	01013403          	ld	s0,16(sp)
    80004388:	00813483          	ld	s1,8(sp)
    8000438c:	00013903          	ld	s2,0(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret

0000000080004398 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004398:	fd010113          	addi	sp,sp,-48
    8000439c:	02113423          	sd	ra,40(sp)
    800043a0:	02813023          	sd	s0,32(sp)
    800043a4:	00913c23          	sd	s1,24(sp)
    800043a8:	01213823          	sd	s2,16(sp)
    800043ac:	01313423          	sd	s3,8(sp)
    800043b0:	01413023          	sd	s4,0(sp)
    800043b4:	03010413          	addi	s0,sp,48
    800043b8:	00050993          	mv	s3,a0
    800043bc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800043c0:	00000a13          	li	s4,0
    800043c4:	01c0006f          	j	800043e0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800043c8:	ffffd097          	auipc	ra,0xffffd
    800043cc:	684080e7          	jalr	1668(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    800043d0:	0500006f          	j	80004420 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800043d4:	00a00513          	li	a0,10
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	024080e7          	jalr	36(ra) # 800013fc <_Z4putcc>
    while (!threadEnd) {
    800043e0:	00006797          	auipc	a5,0x6
    800043e4:	1d87a783          	lw	a5,472(a5) # 8000a5b8 <_ZL9threadEnd>
    800043e8:	06079263          	bnez	a5,8000444c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800043ec:	00893503          	ld	a0,8(s2)
    800043f0:	00001097          	auipc	ra,0x1
    800043f4:	b94080e7          	jalr	-1132(ra) # 80004f84 <_ZN9BufferCPP3getEv>
        i++;
    800043f8:	001a049b          	addiw	s1,s4,1
    800043fc:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004400:	0ff57513          	andi	a0,a0,255
    80004404:	ffffd097          	auipc	ra,0xffffd
    80004408:	ff8080e7          	jalr	-8(ra) # 800013fc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000440c:	00092703          	lw	a4,0(s2)
    80004410:	0027179b          	slliw	a5,a4,0x2
    80004414:	00e787bb          	addw	a5,a5,a4
    80004418:	02f4e7bb          	remw	a5,s1,a5
    8000441c:	fa0786e3          	beqz	a5,800043c8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004420:	05000793          	li	a5,80
    80004424:	02f4e4bb          	remw	s1,s1,a5
    80004428:	fa049ce3          	bnez	s1,800043e0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000442c:	fa9ff06f          	j	800043d4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004430:	0209b783          	ld	a5,32(s3)
    80004434:	0087b503          	ld	a0,8(a5)
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	b4c080e7          	jalr	-1204(ra) # 80004f84 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004440:	0ff57513          	andi	a0,a0,255
    80004444:	ffffd097          	auipc	ra,0xffffd
    80004448:	768080e7          	jalr	1896(ra) # 80001bac <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000444c:	0209b783          	ld	a5,32(s3)
    80004450:	0087b503          	ld	a0,8(a5)
    80004454:	00001097          	auipc	ra,0x1
    80004458:	bbc080e7          	jalr	-1092(ra) # 80005010 <_ZN9BufferCPP6getCntEv>
    8000445c:	fca04ae3          	bgtz	a0,80004430 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004460:	01093503          	ld	a0,16(s2)
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	680080e7          	jalr	1664(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
}
    8000446c:	02813083          	ld	ra,40(sp)
    80004470:	02013403          	ld	s0,32(sp)
    80004474:	01813483          	ld	s1,24(sp)
    80004478:	01013903          	ld	s2,16(sp)
    8000447c:	00813983          	ld	s3,8(sp)
    80004480:	00013a03          	ld	s4,0(sp)
    80004484:	03010113          	addi	sp,sp,48
    80004488:	00008067          	ret

000000008000448c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000448c:	f8010113          	addi	sp,sp,-128
    80004490:	06113c23          	sd	ra,120(sp)
    80004494:	06813823          	sd	s0,112(sp)
    80004498:	06913423          	sd	s1,104(sp)
    8000449c:	07213023          	sd	s2,96(sp)
    800044a0:	05313c23          	sd	s3,88(sp)
    800044a4:	05413823          	sd	s4,80(sp)
    800044a8:	05513423          	sd	s5,72(sp)
    800044ac:	05613023          	sd	s6,64(sp)
    800044b0:	03713c23          	sd	s7,56(sp)
    800044b4:	03813823          	sd	s8,48(sp)
    800044b8:	03913423          	sd	s9,40(sp)
    800044bc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800044c0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800044c4:	00004517          	auipc	a0,0x4
    800044c8:	bac50513          	addi	a0,a0,-1108 # 80008070 <CONSOLE_STATUS+0x60>
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	604080e7          	jalr	1540(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    800044d4:	01e00593          	li	a1,30
    800044d8:	f8040493          	addi	s1,s0,-128
    800044dc:	00048513          	mv	a0,s1
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	678080e7          	jalr	1656(ra) # 80004b58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	744080e7          	jalr	1860(ra) # 80004c30 <_Z11stringToIntPKc>
    800044f4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800044f8:	00004517          	auipc	a0,0x4
    800044fc:	b9850513          	addi	a0,a0,-1128 # 80008090 <CONSOLE_STATUS+0x80>
    80004500:	00000097          	auipc	ra,0x0
    80004504:	5d0080e7          	jalr	1488(ra) # 80004ad0 <_Z11printStringPKc>
    getString(input, 30);
    80004508:	01e00593          	li	a1,30
    8000450c:	00048513          	mv	a0,s1
    80004510:	00000097          	auipc	ra,0x0
    80004514:	648080e7          	jalr	1608(ra) # 80004b58 <_Z9getStringPci>
    n = stringToInt(input);
    80004518:	00048513          	mv	a0,s1
    8000451c:	00000097          	auipc	ra,0x0
    80004520:	714080e7          	jalr	1812(ra) # 80004c30 <_Z11stringToIntPKc>
    80004524:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004528:	00004517          	auipc	a0,0x4
    8000452c:	b8850513          	addi	a0,a0,-1144 # 800080b0 <CONSOLE_STATUS+0xa0>
    80004530:	00000097          	auipc	ra,0x0
    80004534:	5a0080e7          	jalr	1440(ra) # 80004ad0 <_Z11printStringPKc>
    80004538:	00000613          	li	a2,0
    8000453c:	00a00593          	li	a1,10
    80004540:	00090513          	mv	a0,s2
    80004544:	00000097          	auipc	ra,0x0
    80004548:	73c080e7          	jalr	1852(ra) # 80004c80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000454c:	00004517          	auipc	a0,0x4
    80004550:	b7c50513          	addi	a0,a0,-1156 # 800080c8 <CONSOLE_STATUS+0xb8>
    80004554:	00000097          	auipc	ra,0x0
    80004558:	57c080e7          	jalr	1404(ra) # 80004ad0 <_Z11printStringPKc>
    8000455c:	00000613          	li	a2,0
    80004560:	00a00593          	li	a1,10
    80004564:	00048513          	mv	a0,s1
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	718080e7          	jalr	1816(ra) # 80004c80 <_Z8printIntiii>
    printString(".\n");
    80004570:	00004517          	auipc	a0,0x4
    80004574:	b7050513          	addi	a0,a0,-1168 # 800080e0 <CONSOLE_STATUS+0xd0>
    80004578:	00000097          	auipc	ra,0x0
    8000457c:	558080e7          	jalr	1368(ra) # 80004ad0 <_Z11printStringPKc>
    if(threadNum > n) {
    80004580:	0324c463          	blt	s1,s2,800045a8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004584:	03205c63          	blez	s2,800045bc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004588:	03800513          	li	a0,56
    8000458c:	ffffd097          	auipc	ra,0xffffd
    80004590:	3e0080e7          	jalr	992(ra) # 8000196c <_Znwm>
    80004594:	00050a93          	mv	s5,a0
    80004598:	00048593          	mv	a1,s1
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	804080e7          	jalr	-2044(ra) # 80004da0 <_ZN9BufferCPPC1Ei>
    800045a4:	0300006f          	j	800045d4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800045a8:	00004517          	auipc	a0,0x4
    800045ac:	b4050513          	addi	a0,a0,-1216 # 800080e8 <CONSOLE_STATUS+0xd8>
    800045b0:	00000097          	auipc	ra,0x0
    800045b4:	520080e7          	jalr	1312(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    800045b8:	0140006f          	j	800045cc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800045bc:	00004517          	auipc	a0,0x4
    800045c0:	b6c50513          	addi	a0,a0,-1172 # 80008128 <CONSOLE_STATUS+0x118>
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	50c080e7          	jalr	1292(ra) # 80004ad0 <_Z11printStringPKc>
        return;
    800045cc:	000b8113          	mv	sp,s7
    800045d0:	2380006f          	j	80004808 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800045d4:	01000513          	li	a0,16
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	394080e7          	jalr	916(ra) # 8000196c <_Znwm>
    800045e0:	00050493          	mv	s1,a0
    800045e4:	00000593          	li	a1,0
    800045e8:	ffffd097          	auipc	ra,0xffffd
    800045ec:	4bc080e7          	jalr	1212(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    800045f0:	00006797          	auipc	a5,0x6
    800045f4:	fc97b823          	sd	s1,-48(a5) # 8000a5c0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800045f8:	00391793          	slli	a5,s2,0x3
    800045fc:	00f78793          	addi	a5,a5,15
    80004600:	ff07f793          	andi	a5,a5,-16
    80004604:	40f10133          	sub	sp,sp,a5
    80004608:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000460c:	0019071b          	addiw	a4,s2,1
    80004610:	00171793          	slli	a5,a4,0x1
    80004614:	00e787b3          	add	a5,a5,a4
    80004618:	00379793          	slli	a5,a5,0x3
    8000461c:	00f78793          	addi	a5,a5,15
    80004620:	ff07f793          	andi	a5,a5,-16
    80004624:	40f10133          	sub	sp,sp,a5
    80004628:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000462c:	00191c13          	slli	s8,s2,0x1
    80004630:	012c07b3          	add	a5,s8,s2
    80004634:	00379793          	slli	a5,a5,0x3
    80004638:	00fa07b3          	add	a5,s4,a5
    8000463c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004640:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004644:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004648:	02800513          	li	a0,40
    8000464c:	ffffd097          	auipc	ra,0xffffd
    80004650:	320080e7          	jalr	800(ra) # 8000196c <_Znwm>
    80004654:	00050b13          	mv	s6,a0
    80004658:	012c0c33          	add	s8,s8,s2
    8000465c:	003c1c13          	slli	s8,s8,0x3
    80004660:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	41c080e7          	jalr	1052(ra) # 80001a80 <_ZN6ThreadC1Ev>
    8000466c:	00006797          	auipc	a5,0x6
    80004670:	e2c78793          	addi	a5,a5,-468 # 8000a498 <_ZTV12ConsumerSync+0x10>
    80004674:	00fb3023          	sd	a5,0(s6)
    80004678:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000467c:	000b0513          	mv	a0,s6
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	3b0080e7          	jalr	944(ra) # 80001a30 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004688:	00000493          	li	s1,0
    8000468c:	0380006f          	j	800046c4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004690:	00006797          	auipc	a5,0x6
    80004694:	de078793          	addi	a5,a5,-544 # 8000a470 <_ZTV12ProducerSync+0x10>
    80004698:	00fcb023          	sd	a5,0(s9)
    8000469c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800046a0:	00349793          	slli	a5,s1,0x3
    800046a4:	00f987b3          	add	a5,s3,a5
    800046a8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800046ac:	00349793          	slli	a5,s1,0x3
    800046b0:	00f987b3          	add	a5,s3,a5
    800046b4:	0007b503          	ld	a0,0(a5)
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	378080e7          	jalr	888(ra) # 80001a30 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800046c0:	0014849b          	addiw	s1,s1,1
    800046c4:	0b24d063          	bge	s1,s2,80004764 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800046c8:	00149793          	slli	a5,s1,0x1
    800046cc:	009787b3          	add	a5,a5,s1
    800046d0:	00379793          	slli	a5,a5,0x3
    800046d4:	00fa07b3          	add	a5,s4,a5
    800046d8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800046dc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800046e0:	00006717          	auipc	a4,0x6
    800046e4:	ee073703          	ld	a4,-288(a4) # 8000a5c0 <_ZL10waitForAll>
    800046e8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800046ec:	02905863          	blez	s1,8000471c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800046f0:	02800513          	li	a0,40
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	278080e7          	jalr	632(ra) # 8000196c <_Znwm>
    800046fc:	00050c93          	mv	s9,a0
    80004700:	00149c13          	slli	s8,s1,0x1
    80004704:	009c0c33          	add	s8,s8,s1
    80004708:	003c1c13          	slli	s8,s8,0x3
    8000470c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	370080e7          	jalr	880(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80004718:	f79ff06f          	j	80004690 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000471c:	02800513          	li	a0,40
    80004720:	ffffd097          	auipc	ra,0xffffd
    80004724:	24c080e7          	jalr	588(ra) # 8000196c <_Znwm>
    80004728:	00050c93          	mv	s9,a0
    8000472c:	00149c13          	slli	s8,s1,0x1
    80004730:	009c0c33          	add	s8,s8,s1
    80004734:	003c1c13          	slli	s8,s8,0x3
    80004738:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	344080e7          	jalr	836(ra) # 80001a80 <_ZN6ThreadC1Ev>
    80004744:	00006797          	auipc	a5,0x6
    80004748:	d0478793          	addi	a5,a5,-764 # 8000a448 <_ZTV16ProducerKeyboard+0x10>
    8000474c:	00fcb023          	sd	a5,0(s9)
    80004750:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004754:	00349793          	slli	a5,s1,0x3
    80004758:	00f987b3          	add	a5,s3,a5
    8000475c:	0197b023          	sd	s9,0(a5)
    80004760:	f4dff06f          	j	800046ac <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	2e8080e7          	jalr	744(ra) # 80001a4c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000476c:	00000493          	li	s1,0
    80004770:	00994e63          	blt	s2,s1,8000478c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004774:	00006517          	auipc	a0,0x6
    80004778:	e4c53503          	ld	a0,-436(a0) # 8000a5c0 <_ZL10waitForAll>
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	34c080e7          	jalr	844(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004784:	0014849b          	addiw	s1,s1,1
    80004788:	fe9ff06f          	j	80004770 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000478c:	00000493          	li	s1,0
    80004790:	0080006f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004794:	0014849b          	addiw	s1,s1,1
    80004798:	0324d263          	bge	s1,s2,800047bc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000479c:	00349793          	slli	a5,s1,0x3
    800047a0:	00f987b3          	add	a5,s3,a5
    800047a4:	0007b503          	ld	a0,0(a5)
    800047a8:	fe0506e3          	beqz	a0,80004794 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800047ac:	00053783          	ld	a5,0(a0)
    800047b0:	0087b783          	ld	a5,8(a5)
    800047b4:	000780e7          	jalr	a5
    800047b8:	fddff06f          	j	80004794 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800047bc:	000b0a63          	beqz	s6,800047d0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800047c0:	000b3783          	ld	a5,0(s6)
    800047c4:	0087b783          	ld	a5,8(a5)
    800047c8:	000b0513          	mv	a0,s6
    800047cc:	000780e7          	jalr	a5
    delete waitForAll;
    800047d0:	00006517          	auipc	a0,0x6
    800047d4:	df053503          	ld	a0,-528(a0) # 8000a5c0 <_ZL10waitForAll>
    800047d8:	00050863          	beqz	a0,800047e8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800047dc:	00053783          	ld	a5,0(a0)
    800047e0:	0087b783          	ld	a5,8(a5)
    800047e4:	000780e7          	jalr	a5
    delete buffer;
    800047e8:	000a8e63          	beqz	s5,80004804 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800047ec:	000a8513          	mv	a0,s5
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	8a8080e7          	jalr	-1880(ra) # 80005098 <_ZN9BufferCPPD1Ev>
    800047f8:	000a8513          	mv	a0,s5
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	198080e7          	jalr	408(ra) # 80001994 <_ZdlPv>
    80004804:	000b8113          	mv	sp,s7

}
    80004808:	f8040113          	addi	sp,s0,-128
    8000480c:	07813083          	ld	ra,120(sp)
    80004810:	07013403          	ld	s0,112(sp)
    80004814:	06813483          	ld	s1,104(sp)
    80004818:	06013903          	ld	s2,96(sp)
    8000481c:	05813983          	ld	s3,88(sp)
    80004820:	05013a03          	ld	s4,80(sp)
    80004824:	04813a83          	ld	s5,72(sp)
    80004828:	04013b03          	ld	s6,64(sp)
    8000482c:	03813b83          	ld	s7,56(sp)
    80004830:	03013c03          	ld	s8,48(sp)
    80004834:	02813c83          	ld	s9,40(sp)
    80004838:	08010113          	addi	sp,sp,128
    8000483c:	00008067          	ret
    80004840:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004844:	000a8513          	mv	a0,s5
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	14c080e7          	jalr	332(ra) # 80001994 <_ZdlPv>
    80004850:	00048513          	mv	a0,s1
    80004854:	00007097          	auipc	ra,0x7
    80004858:	e54080e7          	jalr	-428(ra) # 8000b6a8 <_Unwind_Resume>
    8000485c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004860:	00048513          	mv	a0,s1
    80004864:	ffffd097          	auipc	ra,0xffffd
    80004868:	130080e7          	jalr	304(ra) # 80001994 <_ZdlPv>
    8000486c:	00090513          	mv	a0,s2
    80004870:	00007097          	auipc	ra,0x7
    80004874:	e38080e7          	jalr	-456(ra) # 8000b6a8 <_Unwind_Resume>
    80004878:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000487c:	000b0513          	mv	a0,s6
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	114080e7          	jalr	276(ra) # 80001994 <_ZdlPv>
    80004888:	00048513          	mv	a0,s1
    8000488c:	00007097          	auipc	ra,0x7
    80004890:	e1c080e7          	jalr	-484(ra) # 8000b6a8 <_Unwind_Resume>
    80004894:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004898:	000c8513          	mv	a0,s9
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	0f8080e7          	jalr	248(ra) # 80001994 <_ZdlPv>
    800048a4:	00048513          	mv	a0,s1
    800048a8:	00007097          	auipc	ra,0x7
    800048ac:	e00080e7          	jalr	-512(ra) # 8000b6a8 <_Unwind_Resume>
    800048b0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800048b4:	000c8513          	mv	a0,s9
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	0dc080e7          	jalr	220(ra) # 80001994 <_ZdlPv>
    800048c0:	00048513          	mv	a0,s1
    800048c4:	00007097          	auipc	ra,0x7
    800048c8:	de4080e7          	jalr	-540(ra) # 8000b6a8 <_Unwind_Resume>

00000000800048cc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800048cc:	ff010113          	addi	sp,sp,-16
    800048d0:	00113423          	sd	ra,8(sp)
    800048d4:	00813023          	sd	s0,0(sp)
    800048d8:	01010413          	addi	s0,sp,16
    800048dc:	00006797          	auipc	a5,0x6
    800048e0:	bbc78793          	addi	a5,a5,-1092 # 8000a498 <_ZTV12ConsumerSync+0x10>
    800048e4:	00f53023          	sd	a5,0(a0)
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	054080e7          	jalr	84(ra) # 8000193c <_ZN6ThreadD1Ev>
    800048f0:	00813083          	ld	ra,8(sp)
    800048f4:	00013403          	ld	s0,0(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret

0000000080004900 <_ZN12ConsumerSyncD0Ev>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	00813823          	sd	s0,16(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	00050493          	mv	s1,a0
    80004918:	00006797          	auipc	a5,0x6
    8000491c:	b8078793          	addi	a5,a5,-1152 # 8000a498 <_ZTV12ConsumerSync+0x10>
    80004920:	00f53023          	sd	a5,0(a0)
    80004924:	ffffd097          	auipc	ra,0xffffd
    80004928:	018080e7          	jalr	24(ra) # 8000193c <_ZN6ThreadD1Ev>
    8000492c:	00048513          	mv	a0,s1
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	064080e7          	jalr	100(ra) # 80001994 <_ZdlPv>
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	02010113          	addi	sp,sp,32
    80004948:	00008067          	ret

000000008000494c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000494c:	ff010113          	addi	sp,sp,-16
    80004950:	00113423          	sd	ra,8(sp)
    80004954:	00813023          	sd	s0,0(sp)
    80004958:	01010413          	addi	s0,sp,16
    8000495c:	00006797          	auipc	a5,0x6
    80004960:	b1478793          	addi	a5,a5,-1260 # 8000a470 <_ZTV12ProducerSync+0x10>
    80004964:	00f53023          	sd	a5,0(a0)
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	fd4080e7          	jalr	-44(ra) # 8000193c <_ZN6ThreadD1Ev>
    80004970:	00813083          	ld	ra,8(sp)
    80004974:	00013403          	ld	s0,0(sp)
    80004978:	01010113          	addi	sp,sp,16
    8000497c:	00008067          	ret

0000000080004980 <_ZN12ProducerSyncD0Ev>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	00813823          	sd	s0,16(sp)
    8000498c:	00913423          	sd	s1,8(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00050493          	mv	s1,a0
    80004998:	00006797          	auipc	a5,0x6
    8000499c:	ad878793          	addi	a5,a5,-1320 # 8000a470 <_ZTV12ProducerSync+0x10>
    800049a0:	00f53023          	sd	a5,0(a0)
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	f98080e7          	jalr	-104(ra) # 8000193c <_ZN6ThreadD1Ev>
    800049ac:	00048513          	mv	a0,s1
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	fe4080e7          	jalr	-28(ra) # 80001994 <_ZdlPv>
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	01013403          	ld	s0,16(sp)
    800049c0:	00813483          	ld	s1,8(sp)
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00008067          	ret

00000000800049cc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800049cc:	ff010113          	addi	sp,sp,-16
    800049d0:	00113423          	sd	ra,8(sp)
    800049d4:	00813023          	sd	s0,0(sp)
    800049d8:	01010413          	addi	s0,sp,16
    800049dc:	00006797          	auipc	a5,0x6
    800049e0:	a6c78793          	addi	a5,a5,-1428 # 8000a448 <_ZTV16ProducerKeyboard+0x10>
    800049e4:	00f53023          	sd	a5,0(a0)
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	f54080e7          	jalr	-172(ra) # 8000193c <_ZN6ThreadD1Ev>
    800049f0:	00813083          	ld	ra,8(sp)
    800049f4:	00013403          	ld	s0,0(sp)
    800049f8:	01010113          	addi	sp,sp,16
    800049fc:	00008067          	ret

0000000080004a00 <_ZN16ProducerKeyboardD0Ev>:
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	02010413          	addi	s0,sp,32
    80004a14:	00050493          	mv	s1,a0
    80004a18:	00006797          	auipc	a5,0x6
    80004a1c:	a3078793          	addi	a5,a5,-1488 # 8000a448 <_ZTV16ProducerKeyboard+0x10>
    80004a20:	00f53023          	sd	a5,0(a0)
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	f18080e7          	jalr	-232(ra) # 8000193c <_ZN6ThreadD1Ev>
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	f64080e7          	jalr	-156(ra) # 80001994 <_ZdlPv>
    80004a38:	01813083          	ld	ra,24(sp)
    80004a3c:	01013403          	ld	s0,16(sp)
    80004a40:	00813483          	ld	s1,8(sp)
    80004a44:	02010113          	addi	sp,sp,32
    80004a48:	00008067          	ret

0000000080004a4c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004a4c:	ff010113          	addi	sp,sp,-16
    80004a50:	00113423          	sd	ra,8(sp)
    80004a54:	00813023          	sd	s0,0(sp)
    80004a58:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004a5c:	02053583          	ld	a1,32(a0)
    80004a60:	fffff097          	auipc	ra,0xfffff
    80004a64:	7e4080e7          	jalr	2020(ra) # 80004244 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004a68:	00813083          	ld	ra,8(sp)
    80004a6c:	00013403          	ld	s0,0(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret

0000000080004a78 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004a78:	ff010113          	addi	sp,sp,-16
    80004a7c:	00113423          	sd	ra,8(sp)
    80004a80:	00813023          	sd	s0,0(sp)
    80004a84:	01010413          	addi	s0,sp,16
        producer(td);
    80004a88:	02053583          	ld	a1,32(a0)
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	878080e7          	jalr	-1928(ra) # 80004304 <_ZN12ProducerSync8producerEPv>
    }
    80004a94:	00813083          	ld	ra,8(sp)
    80004a98:	00013403          	ld	s0,0(sp)
    80004a9c:	01010113          	addi	sp,sp,16
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004aa4:	ff010113          	addi	sp,sp,-16
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	00813023          	sd	s0,0(sp)
    80004ab0:	01010413          	addi	s0,sp,16
        consumer(td);
    80004ab4:	02053583          	ld	a1,32(a0)
    80004ab8:	00000097          	auipc	ra,0x0
    80004abc:	8e0080e7          	jalr	-1824(ra) # 80004398 <_ZN12ConsumerSync8consumerEPv>
    }
    80004ac0:	00813083          	ld	ra,8(sp)
    80004ac4:	00013403          	ld	s0,0(sp)
    80004ac8:	01010113          	addi	sp,sp,16
    80004acc:	00008067          	ret

0000000080004ad0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004ad0:	fe010113          	addi	sp,sp,-32
    80004ad4:	00113c23          	sd	ra,24(sp)
    80004ad8:	00813823          	sd	s0,16(sp)
    80004adc:	00913423          	sd	s1,8(sp)
    80004ae0:	02010413          	addi	s0,sp,32
    80004ae4:	00050493          	mv	s1,a0
    LOCK();
    80004ae8:	00100613          	li	a2,1
    80004aec:	00000593          	li	a1,0
    80004af0:	00006517          	auipc	a0,0x6
    80004af4:	ad850513          	addi	a0,a0,-1320 # 8000a5c8 <lockPrint>
    80004af8:	ffffc097          	auipc	ra,0xffffc
    80004afc:	62c080e7          	jalr	1580(ra) # 80001124 <copy_and_swap>
    80004b00:	00050863          	beqz	a0,80004b10 <_Z11printStringPKc+0x40>
    80004b04:	ffffc097          	auipc	ra,0xffffc
    80004b08:	7d0080e7          	jalr	2000(ra) # 800012d4 <_Z15thread_dispatchv>
    80004b0c:	fddff06f          	j	80004ae8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004b10:	0004c503          	lbu	a0,0(s1)
    80004b14:	00050a63          	beqz	a0,80004b28 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	8e4080e7          	jalr	-1820(ra) # 800013fc <_Z4putcc>
        string++;
    80004b20:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004b24:	fedff06f          	j	80004b10 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004b28:	00000613          	li	a2,0
    80004b2c:	00100593          	li	a1,1
    80004b30:	00006517          	auipc	a0,0x6
    80004b34:	a9850513          	addi	a0,a0,-1384 # 8000a5c8 <lockPrint>
    80004b38:	ffffc097          	auipc	ra,0xffffc
    80004b3c:	5ec080e7          	jalr	1516(ra) # 80001124 <copy_and_swap>
    80004b40:	fe0514e3          	bnez	a0,80004b28 <_Z11printStringPKc+0x58>
}
    80004b44:	01813083          	ld	ra,24(sp)
    80004b48:	01013403          	ld	s0,16(sp)
    80004b4c:	00813483          	ld	s1,8(sp)
    80004b50:	02010113          	addi	sp,sp,32
    80004b54:	00008067          	ret

0000000080004b58 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004b58:	fd010113          	addi	sp,sp,-48
    80004b5c:	02113423          	sd	ra,40(sp)
    80004b60:	02813023          	sd	s0,32(sp)
    80004b64:	00913c23          	sd	s1,24(sp)
    80004b68:	01213823          	sd	s2,16(sp)
    80004b6c:	01313423          	sd	s3,8(sp)
    80004b70:	01413023          	sd	s4,0(sp)
    80004b74:	03010413          	addi	s0,sp,48
    80004b78:	00050993          	mv	s3,a0
    80004b7c:	00058a13          	mv	s4,a1
    LOCK();
    80004b80:	00100613          	li	a2,1
    80004b84:	00000593          	li	a1,0
    80004b88:	00006517          	auipc	a0,0x6
    80004b8c:	a4050513          	addi	a0,a0,-1472 # 8000a5c8 <lockPrint>
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	594080e7          	jalr	1428(ra) # 80001124 <copy_and_swap>
    80004b98:	00050863          	beqz	a0,80004ba8 <_Z9getStringPci+0x50>
    80004b9c:	ffffc097          	auipc	ra,0xffffc
    80004ba0:	738080e7          	jalr	1848(ra) # 800012d4 <_Z15thread_dispatchv>
    80004ba4:	fddff06f          	j	80004b80 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ba8:	00000913          	li	s2,0
    80004bac:	00090493          	mv	s1,s2
    80004bb0:	0019091b          	addiw	s2,s2,1
    80004bb4:	03495a63          	bge	s2,s4,80004be8 <_Z9getStringPci+0x90>
        cc = getc();
    80004bb8:	ffffd097          	auipc	ra,0xffffd
    80004bbc:	81c080e7          	jalr	-2020(ra) # 800013d4 <_Z4getcv>
        if(cc < 1)
    80004bc0:	02050463          	beqz	a0,80004be8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004bc4:	009984b3          	add	s1,s3,s1
    80004bc8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004bcc:	00a00793          	li	a5,10
    80004bd0:	00f50a63          	beq	a0,a5,80004be4 <_Z9getStringPci+0x8c>
    80004bd4:	00d00793          	li	a5,13
    80004bd8:	fcf51ae3          	bne	a0,a5,80004bac <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004bdc:	00090493          	mv	s1,s2
    80004be0:	0080006f          	j	80004be8 <_Z9getStringPci+0x90>
    80004be4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004be8:	009984b3          	add	s1,s3,s1
    80004bec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004bf0:	00000613          	li	a2,0
    80004bf4:	00100593          	li	a1,1
    80004bf8:	00006517          	auipc	a0,0x6
    80004bfc:	9d050513          	addi	a0,a0,-1584 # 8000a5c8 <lockPrint>
    80004c00:	ffffc097          	auipc	ra,0xffffc
    80004c04:	524080e7          	jalr	1316(ra) # 80001124 <copy_and_swap>
    80004c08:	fe0514e3          	bnez	a0,80004bf0 <_Z9getStringPci+0x98>
    return buf;
}
    80004c0c:	00098513          	mv	a0,s3
    80004c10:	02813083          	ld	ra,40(sp)
    80004c14:	02013403          	ld	s0,32(sp)
    80004c18:	01813483          	ld	s1,24(sp)
    80004c1c:	01013903          	ld	s2,16(sp)
    80004c20:	00813983          	ld	s3,8(sp)
    80004c24:	00013a03          	ld	s4,0(sp)
    80004c28:	03010113          	addi	sp,sp,48
    80004c2c:	00008067          	ret

0000000080004c30 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004c30:	ff010113          	addi	sp,sp,-16
    80004c34:	00813423          	sd	s0,8(sp)
    80004c38:	01010413          	addi	s0,sp,16
    80004c3c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004c40:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004c44:	0006c603          	lbu	a2,0(a3)
    80004c48:	fd06071b          	addiw	a4,a2,-48
    80004c4c:	0ff77713          	andi	a4,a4,255
    80004c50:	00900793          	li	a5,9
    80004c54:	02e7e063          	bltu	a5,a4,80004c74 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004c58:	0025179b          	slliw	a5,a0,0x2
    80004c5c:	00a787bb          	addw	a5,a5,a0
    80004c60:	0017979b          	slliw	a5,a5,0x1
    80004c64:	00168693          	addi	a3,a3,1
    80004c68:	00c787bb          	addw	a5,a5,a2
    80004c6c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004c70:	fd5ff06f          	j	80004c44 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004c74:	00813403          	ld	s0,8(sp)
    80004c78:	01010113          	addi	sp,sp,16
    80004c7c:	00008067          	ret

0000000080004c80 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004c80:	fc010113          	addi	sp,sp,-64
    80004c84:	02113c23          	sd	ra,56(sp)
    80004c88:	02813823          	sd	s0,48(sp)
    80004c8c:	02913423          	sd	s1,40(sp)
    80004c90:	03213023          	sd	s2,32(sp)
    80004c94:	01313c23          	sd	s3,24(sp)
    80004c98:	04010413          	addi	s0,sp,64
    80004c9c:	00050493          	mv	s1,a0
    80004ca0:	00058913          	mv	s2,a1
    80004ca4:	00060993          	mv	s3,a2
    LOCK();
    80004ca8:	00100613          	li	a2,1
    80004cac:	00000593          	li	a1,0
    80004cb0:	00006517          	auipc	a0,0x6
    80004cb4:	91850513          	addi	a0,a0,-1768 # 8000a5c8 <lockPrint>
    80004cb8:	ffffc097          	auipc	ra,0xffffc
    80004cbc:	46c080e7          	jalr	1132(ra) # 80001124 <copy_and_swap>
    80004cc0:	00050863          	beqz	a0,80004cd0 <_Z8printIntiii+0x50>
    80004cc4:	ffffc097          	auipc	ra,0xffffc
    80004cc8:	610080e7          	jalr	1552(ra) # 800012d4 <_Z15thread_dispatchv>
    80004ccc:	fddff06f          	j	80004ca8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004cd0:	00098463          	beqz	s3,80004cd8 <_Z8printIntiii+0x58>
    80004cd4:	0804c463          	bltz	s1,80004d5c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004cd8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004cdc:	00000593          	li	a1,0
    }

    i = 0;
    80004ce0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004ce4:	0009079b          	sext.w	a5,s2
    80004ce8:	0325773b          	remuw	a4,a0,s2
    80004cec:	00048613          	mv	a2,s1
    80004cf0:	0014849b          	addiw	s1,s1,1
    80004cf4:	02071693          	slli	a3,a4,0x20
    80004cf8:	0206d693          	srli	a3,a3,0x20
    80004cfc:	00005717          	auipc	a4,0x5
    80004d00:	7b470713          	addi	a4,a4,1972 # 8000a4b0 <digits>
    80004d04:	00d70733          	add	a4,a4,a3
    80004d08:	00074683          	lbu	a3,0(a4)
    80004d0c:	fd040713          	addi	a4,s0,-48
    80004d10:	00c70733          	add	a4,a4,a2
    80004d14:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004d18:	0005071b          	sext.w	a4,a0
    80004d1c:	0325553b          	divuw	a0,a0,s2
    80004d20:	fcf772e3          	bgeu	a4,a5,80004ce4 <_Z8printIntiii+0x64>
    if(neg)
    80004d24:	00058c63          	beqz	a1,80004d3c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004d28:	fd040793          	addi	a5,s0,-48
    80004d2c:	009784b3          	add	s1,a5,s1
    80004d30:	02d00793          	li	a5,45
    80004d34:	fef48823          	sb	a5,-16(s1)
    80004d38:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004d3c:	fff4849b          	addiw	s1,s1,-1
    80004d40:	0204c463          	bltz	s1,80004d68 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004d44:	fd040793          	addi	a5,s0,-48
    80004d48:	009787b3          	add	a5,a5,s1
    80004d4c:	ff07c503          	lbu	a0,-16(a5)
    80004d50:	ffffc097          	auipc	ra,0xffffc
    80004d54:	6ac080e7          	jalr	1708(ra) # 800013fc <_Z4putcc>
    80004d58:	fe5ff06f          	j	80004d3c <_Z8printIntiii+0xbc>
        x = -xx;
    80004d5c:	4090053b          	negw	a0,s1
        neg = 1;
    80004d60:	00100593          	li	a1,1
        x = -xx;
    80004d64:	f7dff06f          	j	80004ce0 <_Z8printIntiii+0x60>

    UNLOCK();
    80004d68:	00000613          	li	a2,0
    80004d6c:	00100593          	li	a1,1
    80004d70:	00006517          	auipc	a0,0x6
    80004d74:	85850513          	addi	a0,a0,-1960 # 8000a5c8 <lockPrint>
    80004d78:	ffffc097          	auipc	ra,0xffffc
    80004d7c:	3ac080e7          	jalr	940(ra) # 80001124 <copy_and_swap>
    80004d80:	fe0514e3          	bnez	a0,80004d68 <_Z8printIntiii+0xe8>
    80004d84:	03813083          	ld	ra,56(sp)
    80004d88:	03013403          	ld	s0,48(sp)
    80004d8c:	02813483          	ld	s1,40(sp)
    80004d90:	02013903          	ld	s2,32(sp)
    80004d94:	01813983          	ld	s3,24(sp)
    80004d98:	04010113          	addi	sp,sp,64
    80004d9c:	00008067          	ret

0000000080004da0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004da0:	fd010113          	addi	sp,sp,-48
    80004da4:	02113423          	sd	ra,40(sp)
    80004da8:	02813023          	sd	s0,32(sp)
    80004dac:	00913c23          	sd	s1,24(sp)
    80004db0:	01213823          	sd	s2,16(sp)
    80004db4:	01313423          	sd	s3,8(sp)
    80004db8:	03010413          	addi	s0,sp,48
    80004dbc:	00050493          	mv	s1,a0
    80004dc0:	00058913          	mv	s2,a1
    80004dc4:	0015879b          	addiw	a5,a1,1
    80004dc8:	0007851b          	sext.w	a0,a5
    80004dcc:	00f4a023          	sw	a5,0(s1)
    80004dd0:	0004a823          	sw	zero,16(s1)
    80004dd4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004dd8:	00251513          	slli	a0,a0,0x2
    80004ddc:	ffffc097          	auipc	ra,0xffffc
    80004de0:	384080e7          	jalr	900(ra) # 80001160 <_Z9mem_allocm>
    80004de4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004de8:	01000513          	li	a0,16
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	b80080e7          	jalr	-1152(ra) # 8000196c <_Znwm>
    80004df4:	00050993          	mv	s3,a0
    80004df8:	00000593          	li	a1,0
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	ca8080e7          	jalr	-856(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    80004e04:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004e08:	01000513          	li	a0,16
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	b60080e7          	jalr	-1184(ra) # 8000196c <_Znwm>
    80004e14:	00050993          	mv	s3,a0
    80004e18:	00090593          	mv	a1,s2
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	c88080e7          	jalr	-888(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    80004e24:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004e28:	01000513          	li	a0,16
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	b40080e7          	jalr	-1216(ra) # 8000196c <_Znwm>
    80004e34:	00050913          	mv	s2,a0
    80004e38:	00100593          	li	a1,1
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	c68080e7          	jalr	-920(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    80004e44:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004e48:	01000513          	li	a0,16
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	b20080e7          	jalr	-1248(ra) # 8000196c <_Znwm>
    80004e54:	00050913          	mv	s2,a0
    80004e58:	00100593          	li	a1,1
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	c48080e7          	jalr	-952(ra) # 80001aa4 <_ZN9SemaphoreC1Ej>
    80004e64:	0324b823          	sd	s2,48(s1)
}
    80004e68:	02813083          	ld	ra,40(sp)
    80004e6c:	02013403          	ld	s0,32(sp)
    80004e70:	01813483          	ld	s1,24(sp)
    80004e74:	01013903          	ld	s2,16(sp)
    80004e78:	00813983          	ld	s3,8(sp)
    80004e7c:	03010113          	addi	sp,sp,48
    80004e80:	00008067          	ret
    80004e84:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004e88:	00098513          	mv	a0,s3
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	b08080e7          	jalr	-1272(ra) # 80001994 <_ZdlPv>
    80004e94:	00048513          	mv	a0,s1
    80004e98:	00007097          	auipc	ra,0x7
    80004e9c:	810080e7          	jalr	-2032(ra) # 8000b6a8 <_Unwind_Resume>
    80004ea0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004ea4:	00098513          	mv	a0,s3
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	aec080e7          	jalr	-1300(ra) # 80001994 <_ZdlPv>
    80004eb0:	00048513          	mv	a0,s1
    80004eb4:	00006097          	auipc	ra,0x6
    80004eb8:	7f4080e7          	jalr	2036(ra) # 8000b6a8 <_Unwind_Resume>
    80004ebc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004ec0:	00090513          	mv	a0,s2
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	ad0080e7          	jalr	-1328(ra) # 80001994 <_ZdlPv>
    80004ecc:	00048513          	mv	a0,s1
    80004ed0:	00006097          	auipc	ra,0x6
    80004ed4:	7d8080e7          	jalr	2008(ra) # 8000b6a8 <_Unwind_Resume>
    80004ed8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004edc:	00090513          	mv	a0,s2
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	ab4080e7          	jalr	-1356(ra) # 80001994 <_ZdlPv>
    80004ee8:	00048513          	mv	a0,s1
    80004eec:	00006097          	auipc	ra,0x6
    80004ef0:	7bc080e7          	jalr	1980(ra) # 8000b6a8 <_Unwind_Resume>

0000000080004ef4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	01213023          	sd	s2,0(sp)
    80004f08:	02010413          	addi	s0,sp,32
    80004f0c:	00050493          	mv	s1,a0
    80004f10:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004f14:	01853503          	ld	a0,24(a0)
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	bb0080e7          	jalr	-1104(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004f20:	0304b503          	ld	a0,48(s1)
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	ba4080e7          	jalr	-1116(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004f2c:	0084b783          	ld	a5,8(s1)
    80004f30:	0144a703          	lw	a4,20(s1)
    80004f34:	00271713          	slli	a4,a4,0x2
    80004f38:	00e787b3          	add	a5,a5,a4
    80004f3c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f40:	0144a783          	lw	a5,20(s1)
    80004f44:	0017879b          	addiw	a5,a5,1
    80004f48:	0004a703          	lw	a4,0(s1)
    80004f4c:	02e7e7bb          	remw	a5,a5,a4
    80004f50:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004f54:	0304b503          	ld	a0,48(s1)
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	b8c080e7          	jalr	-1140(ra) # 80001ae4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004f60:	0204b503          	ld	a0,32(s1)
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	b80080e7          	jalr	-1152(ra) # 80001ae4 <_ZN9Semaphore6signalEv>

}
    80004f6c:	01813083          	ld	ra,24(sp)
    80004f70:	01013403          	ld	s0,16(sp)
    80004f74:	00813483          	ld	s1,8(sp)
    80004f78:	00013903          	ld	s2,0(sp)
    80004f7c:	02010113          	addi	sp,sp,32
    80004f80:	00008067          	ret

0000000080004f84 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004f84:	fe010113          	addi	sp,sp,-32
    80004f88:	00113c23          	sd	ra,24(sp)
    80004f8c:	00813823          	sd	s0,16(sp)
    80004f90:	00913423          	sd	s1,8(sp)
    80004f94:	01213023          	sd	s2,0(sp)
    80004f98:	02010413          	addi	s0,sp,32
    80004f9c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004fa0:	02053503          	ld	a0,32(a0)
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	b24080e7          	jalr	-1244(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004fac:	0284b503          	ld	a0,40(s1)
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	b18080e7          	jalr	-1256(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004fb8:	0084b703          	ld	a4,8(s1)
    80004fbc:	0104a783          	lw	a5,16(s1)
    80004fc0:	00279693          	slli	a3,a5,0x2
    80004fc4:	00d70733          	add	a4,a4,a3
    80004fc8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004fcc:	0017879b          	addiw	a5,a5,1
    80004fd0:	0004a703          	lw	a4,0(s1)
    80004fd4:	02e7e7bb          	remw	a5,a5,a4
    80004fd8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004fdc:	0284b503          	ld	a0,40(s1)
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	b04080e7          	jalr	-1276(ra) # 80001ae4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004fe8:	0184b503          	ld	a0,24(s1)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	af8080e7          	jalr	-1288(ra) # 80001ae4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ff4:	00090513          	mv	a0,s2
    80004ff8:	01813083          	ld	ra,24(sp)
    80004ffc:	01013403          	ld	s0,16(sp)
    80005000:	00813483          	ld	s1,8(sp)
    80005004:	00013903          	ld	s2,0(sp)
    80005008:	02010113          	addi	sp,sp,32
    8000500c:	00008067          	ret

0000000080005010 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005010:	fe010113          	addi	sp,sp,-32
    80005014:	00113c23          	sd	ra,24(sp)
    80005018:	00813823          	sd	s0,16(sp)
    8000501c:	00913423          	sd	s1,8(sp)
    80005020:	01213023          	sd	s2,0(sp)
    80005024:	02010413          	addi	s0,sp,32
    80005028:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000502c:	02853503          	ld	a0,40(a0)
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	a98080e7          	jalr	-1384(ra) # 80001ac8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005038:	0304b503          	ld	a0,48(s1)
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	a8c080e7          	jalr	-1396(ra) # 80001ac8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005044:	0144a783          	lw	a5,20(s1)
    80005048:	0104a903          	lw	s2,16(s1)
    8000504c:	0327ce63          	blt	a5,s2,80005088 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005050:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005054:	0304b503          	ld	a0,48(s1)
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	a8c080e7          	jalr	-1396(ra) # 80001ae4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005060:	0284b503          	ld	a0,40(s1)
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	a80080e7          	jalr	-1408(ra) # 80001ae4 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000506c:	00090513          	mv	a0,s2
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	00013903          	ld	s2,0(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret
        ret = cap - head + tail;
    80005088:	0004a703          	lw	a4,0(s1)
    8000508c:	4127093b          	subw	s2,a4,s2
    80005090:	00f9093b          	addw	s2,s2,a5
    80005094:	fc1ff06f          	j	80005054 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005098 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	02010413          	addi	s0,sp,32
    800050ac:	00050493          	mv	s1,a0
    Console::putc('\n');
    800050b0:	00a00513          	li	a0,10
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	af8080e7          	jalr	-1288(ra) # 80001bac <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800050bc:	00003517          	auipc	a0,0x3
    800050c0:	19450513          	addi	a0,a0,404 # 80008250 <CONSOLE_STATUS+0x240>
    800050c4:	00000097          	auipc	ra,0x0
    800050c8:	a0c080e7          	jalr	-1524(ra) # 80004ad0 <_Z11printStringPKc>
    while (getCnt()) {
    800050cc:	00048513          	mv	a0,s1
    800050d0:	00000097          	auipc	ra,0x0
    800050d4:	f40080e7          	jalr	-192(ra) # 80005010 <_ZN9BufferCPP6getCntEv>
    800050d8:	02050c63          	beqz	a0,80005110 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800050dc:	0084b783          	ld	a5,8(s1)
    800050e0:	0104a703          	lw	a4,16(s1)
    800050e4:	00271713          	slli	a4,a4,0x2
    800050e8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800050ec:	0007c503          	lbu	a0,0(a5)
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	abc080e7          	jalr	-1348(ra) # 80001bac <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800050f8:	0104a783          	lw	a5,16(s1)
    800050fc:	0017879b          	addiw	a5,a5,1
    80005100:	0004a703          	lw	a4,0(s1)
    80005104:	02e7e7bb          	remw	a5,a5,a4
    80005108:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000510c:	fc1ff06f          	j	800050cc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005110:	02100513          	li	a0,33
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	a98080e7          	jalr	-1384(ra) # 80001bac <_ZN7Console4putcEc>
    Console::putc('\n');
    8000511c:	00a00513          	li	a0,10
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	a8c080e7          	jalr	-1396(ra) # 80001bac <_ZN7Console4putcEc>
    mem_free(buffer);
    80005128:	0084b503          	ld	a0,8(s1)
    8000512c:	ffffc097          	auipc	ra,0xffffc
    80005130:	088080e7          	jalr	136(ra) # 800011b4 <_Z8mem_freePv>
    delete itemAvailable;
    80005134:	0204b503          	ld	a0,32(s1)
    80005138:	00050863          	beqz	a0,80005148 <_ZN9BufferCPPD1Ev+0xb0>
    8000513c:	00053783          	ld	a5,0(a0)
    80005140:	0087b783          	ld	a5,8(a5)
    80005144:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005148:	0184b503          	ld	a0,24(s1)
    8000514c:	00050863          	beqz	a0,8000515c <_ZN9BufferCPPD1Ev+0xc4>
    80005150:	00053783          	ld	a5,0(a0)
    80005154:	0087b783          	ld	a5,8(a5)
    80005158:	000780e7          	jalr	a5
    delete mutexTail;
    8000515c:	0304b503          	ld	a0,48(s1)
    80005160:	00050863          	beqz	a0,80005170 <_ZN9BufferCPPD1Ev+0xd8>
    80005164:	00053783          	ld	a5,0(a0)
    80005168:	0087b783          	ld	a5,8(a5)
    8000516c:	000780e7          	jalr	a5
    delete mutexHead;
    80005170:	0284b503          	ld	a0,40(s1)
    80005174:	00050863          	beqz	a0,80005184 <_ZN9BufferCPPD1Ev+0xec>
    80005178:	00053783          	ld	a5,0(a0)
    8000517c:	0087b783          	ld	a5,8(a5)
    80005180:	000780e7          	jalr	a5
}
    80005184:	01813083          	ld	ra,24(sp)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	00813483          	ld	s1,8(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret

0000000080005198 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800051b0:	00003517          	auipc	a0,0x3
    800051b4:	0b850513          	addi	a0,a0,184 # 80008268 <CONSOLE_STATUS+0x258>
    800051b8:	00000097          	auipc	ra,0x0
    800051bc:	918080e7          	jalr	-1768(ra) # 80004ad0 <_Z11printStringPKc>
    int test = getc() - '0';
    800051c0:	ffffc097          	auipc	ra,0xffffc
    800051c4:	214080e7          	jalr	532(ra) # 800013d4 <_Z4getcv>
    800051c8:	0005091b          	sext.w	s2,a0
    800051cc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	204080e7          	jalr	516(ra) # 800013d4 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    800051d8:	fcf9071b          	addiw	a4,s2,-49
    800051dc:	00100793          	li	a5,1
    800051e0:	04e7f063          	bgeu	a5,a4,80005220 <_Z8userMainv+0x88>
    800051e4:	00700793          	li	a5,7
    800051e8:	02f48c63          	beq	s1,a5,80005220 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800051ec:	fcd9079b          	addiw	a5,s2,-51
    800051f0:	00100693          	li	a3,1
    800051f4:	04f6fa63          	bgeu	a3,a5,80005248 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800051f8:	fcb9091b          	addiw	s2,s2,-53
    800051fc:	00100793          	li	a5,1
    80005200:	0527fe63          	bgeu	a5,s2,8000525c <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005204:	00600793          	li	a5,6
    80005208:	02e7f463          	bgeu	a5,a4,80005230 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    8000520c:	00003517          	auipc	a0,0x3
    80005210:	10c50513          	addi	a0,a0,268 # 80008318 <CONSOLE_STATUS+0x308>
    80005214:	00000097          	auipc	ra,0x0
    80005218:	8bc080e7          	jalr	-1860(ra) # 80004ad0 <_Z11printStringPKc>
    8000521c:	0140006f          	j	80005230 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    80005220:	00003517          	auipc	a0,0x3
    80005224:	06850513          	addi	a0,a0,104 # 80008288 <CONSOLE_STATUS+0x278>
    80005228:	00000097          	auipc	ra,0x0
    8000522c:	8a8080e7          	jalr	-1880(ra) # 80004ad0 <_Z11printStringPKc>
    }
    80005230:	01813083          	ld	ra,24(sp)
    80005234:	01013403          	ld	s0,16(sp)
    80005238:	00813483          	ld	s1,8(sp)
    8000523c:	00013903          	ld	s2,0(sp)
    80005240:	02010113          	addi	sp,sp,32
    80005244:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80005248:	00003517          	auipc	a0,0x3
    8000524c:	07050513          	addi	a0,a0,112 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80005250:	00000097          	auipc	ra,0x0
    80005254:	880080e7          	jalr	-1920(ra) # 80004ad0 <_Z11printStringPKc>
            return;
    80005258:	fd9ff06f          	j	80005230 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000525c:	00003517          	auipc	a0,0x3
    80005260:	08c50513          	addi	a0,a0,140 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80005264:	00000097          	auipc	ra,0x0
    80005268:	86c080e7          	jalr	-1940(ra) # 80004ad0 <_Z11printStringPKc>
            return;
    8000526c:	fc5ff06f          	j	80005230 <_Z8userMainv+0x98>

0000000080005270 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00113c23          	sd	ra,24(sp)
    80005278:	00813823          	sd	s0,16(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	01213023          	sd	s2,0(sp)
    80005284:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005288:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000528c:	00600493          	li	s1,6
    while (--i > 0) {
    80005290:	fff4849b          	addiw	s1,s1,-1
    80005294:	04905463          	blez	s1,800052dc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005298:	00003517          	auipc	a0,0x3
    8000529c:	0a850513          	addi	a0,a0,168 # 80008340 <CONSOLE_STATUS+0x330>
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	830080e7          	jalr	-2000(ra) # 80004ad0 <_Z11printStringPKc>
        printInt(sleep_time);
    800052a8:	00000613          	li	a2,0
    800052ac:	00a00593          	li	a1,10
    800052b0:	0009051b          	sext.w	a0,s2
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	9cc080e7          	jalr	-1588(ra) # 80004c80 <_Z8printIntiii>
        printString(" !\n");
    800052bc:	00003517          	auipc	a0,0x3
    800052c0:	08c50513          	addi	a0,a0,140 # 80008348 <CONSOLE_STATUS+0x338>
    800052c4:	00000097          	auipc	ra,0x0
    800052c8:	80c080e7          	jalr	-2036(ra) # 80004ad0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800052cc:	00090513          	mv	a0,s2
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	0e8080e7          	jalr	232(ra) # 800013b8 <_Z10time_sleepm>
    while (--i > 0) {
    800052d8:	fb9ff06f          	j	80005290 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800052dc:	00a00793          	li	a5,10
    800052e0:	02f95933          	divu	s2,s2,a5
    800052e4:	fff90913          	addi	s2,s2,-1
    800052e8:	00005797          	auipc	a5,0x5
    800052ec:	2e878793          	addi	a5,a5,744 # 8000a5d0 <_ZL8finished>
    800052f0:	01278933          	add	s2,a5,s2
    800052f4:	00100793          	li	a5,1
    800052f8:	00f90023          	sb	a5,0(s2)
}
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	00013903          	ld	s2,0(sp)
    8000530c:	02010113          	addi	sp,sp,32
    80005310:	00008067          	ret

0000000080005314 <_Z12testSleepingv>:

void testSleeping() {
    80005314:	fc010113          	addi	sp,sp,-64
    80005318:	02113c23          	sd	ra,56(sp)
    8000531c:	02813823          	sd	s0,48(sp)
    80005320:	02913423          	sd	s1,40(sp)
    80005324:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005328:	00a00793          	li	a5,10
    8000532c:	fcf43823          	sd	a5,-48(s0)
    80005330:	01400793          	li	a5,20
    80005334:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005338:	00000493          	li	s1,0
    8000533c:	02c0006f          	j	80005368 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005340:	00349793          	slli	a5,s1,0x3
    80005344:	fd040613          	addi	a2,s0,-48
    80005348:	00f60633          	add	a2,a2,a5
    8000534c:	00000597          	auipc	a1,0x0
    80005350:	f2458593          	addi	a1,a1,-220 # 80005270 <_ZL9sleepyRunPv>
    80005354:	fc040513          	addi	a0,s0,-64
    80005358:	00f50533          	add	a0,a0,a5
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	ea4080e7          	jalr	-348(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005364:	0014849b          	addiw	s1,s1,1
    80005368:	00100793          	li	a5,1
    8000536c:	fc97dae3          	bge	a5,s1,80005340 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005370:	00005797          	auipc	a5,0x5
    80005374:	2607c783          	lbu	a5,608(a5) # 8000a5d0 <_ZL8finished>
    80005378:	fe078ce3          	beqz	a5,80005370 <_Z12testSleepingv+0x5c>
    8000537c:	00005797          	auipc	a5,0x5
    80005380:	2557c783          	lbu	a5,597(a5) # 8000a5d1 <_ZL8finished+0x1>
    80005384:	fe0786e3          	beqz	a5,80005370 <_Z12testSleepingv+0x5c>
}
    80005388:	03813083          	ld	ra,56(sp)
    8000538c:	03013403          	ld	s0,48(sp)
    80005390:	02813483          	ld	s1,40(sp)
    80005394:	04010113          	addi	sp,sp,64
    80005398:	00008067          	ret

000000008000539c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00113c23          	sd	ra,24(sp)
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053b8:	00100793          	li	a5,1
    800053bc:	02a7f863          	bgeu	a5,a0,800053ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053c0:	00a00793          	li	a5,10
    800053c4:	02f577b3          	remu	a5,a0,a5
    800053c8:	02078e63          	beqz	a5,80005404 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053cc:	fff48513          	addi	a0,s1,-1
    800053d0:	00000097          	auipc	ra,0x0
    800053d4:	fcc080e7          	jalr	-52(ra) # 8000539c <_ZL9fibonaccim>
    800053d8:	00050913          	mv	s2,a0
    800053dc:	ffe48513          	addi	a0,s1,-2
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	fbc080e7          	jalr	-68(ra) # 8000539c <_ZL9fibonaccim>
    800053e8:	00a90533          	add	a0,s2,a0
}
    800053ec:	01813083          	ld	ra,24(sp)
    800053f0:	01013403          	ld	s0,16(sp)
    800053f4:	00813483          	ld	s1,8(sp)
    800053f8:	00013903          	ld	s2,0(sp)
    800053fc:	02010113          	addi	sp,sp,32
    80005400:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	ed0080e7          	jalr	-304(ra) # 800012d4 <_Z15thread_dispatchv>
    8000540c:	fc1ff06f          	j	800053cc <_ZL9fibonaccim+0x30>

0000000080005410 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00813823          	sd	s0,16(sp)
    8000541c:	00913423          	sd	s1,8(sp)
    80005420:	01213023          	sd	s2,0(sp)
    80005424:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005428:	00a00493          	li	s1,10
    8000542c:	0400006f          	j	8000546c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005430:	00003517          	auipc	a0,0x3
    80005434:	d8850513          	addi	a0,a0,-632 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	698080e7          	jalr	1688(ra) # 80004ad0 <_Z11printStringPKc>
    80005440:	00000613          	li	a2,0
    80005444:	00a00593          	li	a1,10
    80005448:	00048513          	mv	a0,s1
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	834080e7          	jalr	-1996(ra) # 80004c80 <_Z8printIntiii>
    80005454:	00003517          	auipc	a0,0x3
    80005458:	c5450513          	addi	a0,a0,-940 # 800080a8 <CONSOLE_STATUS+0x98>
    8000545c:	fffff097          	auipc	ra,0xfffff
    80005460:	674080e7          	jalr	1652(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005464:	0014849b          	addiw	s1,s1,1
    80005468:	0ff4f493          	andi	s1,s1,255
    8000546c:	00c00793          	li	a5,12
    80005470:	fc97f0e3          	bgeu	a5,s1,80005430 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005474:	00003517          	auipc	a0,0x3
    80005478:	d4c50513          	addi	a0,a0,-692 # 800081c0 <CONSOLE_STATUS+0x1b0>
    8000547c:	fffff097          	auipc	ra,0xfffff
    80005480:	654080e7          	jalr	1620(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005484:	00500313          	li	t1,5
    thread_dispatch();
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	e4c080e7          	jalr	-436(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005490:	01000513          	li	a0,16
    80005494:	00000097          	auipc	ra,0x0
    80005498:	f08080e7          	jalr	-248(ra) # 8000539c <_ZL9fibonaccim>
    8000549c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054a0:	00003517          	auipc	a0,0x3
    800054a4:	d3050513          	addi	a0,a0,-720 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	628080e7          	jalr	1576(ra) # 80004ad0 <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	0009051b          	sext.w	a0,s2
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	7c4080e7          	jalr	1988(ra) # 80004c80 <_Z8printIntiii>
    800054c4:	00003517          	auipc	a0,0x3
    800054c8:	be450513          	addi	a0,a0,-1052 # 800080a8 <CONSOLE_STATUS+0x98>
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	604080e7          	jalr	1540(ra) # 80004ad0 <_Z11printStringPKc>
    800054d4:	0400006f          	j	80005514 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054d8:	00003517          	auipc	a0,0x3
    800054dc:	ce050513          	addi	a0,a0,-800 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	5f0080e7          	jalr	1520(ra) # 80004ad0 <_Z11printStringPKc>
    800054e8:	00000613          	li	a2,0
    800054ec:	00a00593          	li	a1,10
    800054f0:	00048513          	mv	a0,s1
    800054f4:	fffff097          	auipc	ra,0xfffff
    800054f8:	78c080e7          	jalr	1932(ra) # 80004c80 <_Z8printIntiii>
    800054fc:	00003517          	auipc	a0,0x3
    80005500:	bac50513          	addi	a0,a0,-1108 # 800080a8 <CONSOLE_STATUS+0x98>
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	5cc080e7          	jalr	1484(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000550c:	0014849b          	addiw	s1,s1,1
    80005510:	0ff4f493          	andi	s1,s1,255
    80005514:	00f00793          	li	a5,15
    80005518:	fc97f0e3          	bgeu	a5,s1,800054d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000551c:	00003517          	auipc	a0,0x3
    80005520:	cc450513          	addi	a0,a0,-828 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	5ac080e7          	jalr	1452(ra) # 80004ad0 <_Z11printStringPKc>
    finishedD = true;
    8000552c:	00100793          	li	a5,1
    80005530:	00005717          	auipc	a4,0x5
    80005534:	0af70123          	sb	a5,162(a4) # 8000a5d2 <_ZL9finishedD>
    thread_dispatch();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	d9c080e7          	jalr	-612(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	00013903          	ld	s2,0(sp)
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret

0000000080005558 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005558:	fe010113          	addi	sp,sp,-32
    8000555c:	00113c23          	sd	ra,24(sp)
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00913423          	sd	s1,8(sp)
    80005568:	01213023          	sd	s2,0(sp)
    8000556c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005570:	00000493          	li	s1,0
    80005574:	0400006f          	j	800055b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005578:	00003517          	auipc	a0,0x3
    8000557c:	c1050513          	addi	a0,a0,-1008 # 80008188 <CONSOLE_STATUS+0x178>
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	550080e7          	jalr	1360(ra) # 80004ad0 <_Z11printStringPKc>
    80005588:	00000613          	li	a2,0
    8000558c:	00a00593          	li	a1,10
    80005590:	00048513          	mv	a0,s1
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	6ec080e7          	jalr	1772(ra) # 80004c80 <_Z8printIntiii>
    8000559c:	00003517          	auipc	a0,0x3
    800055a0:	b0c50513          	addi	a0,a0,-1268 # 800080a8 <CONSOLE_STATUS+0x98>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	52c080e7          	jalr	1324(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800055ac:	0014849b          	addiw	s1,s1,1
    800055b0:	0ff4f493          	andi	s1,s1,255
    800055b4:	00200793          	li	a5,2
    800055b8:	fc97f0e3          	bgeu	a5,s1,80005578 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800055bc:	00003517          	auipc	a0,0x3
    800055c0:	bd450513          	addi	a0,a0,-1068 # 80008190 <CONSOLE_STATUS+0x180>
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	50c080e7          	jalr	1292(ra) # 80004ad0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800055cc:	00700313          	li	t1,7
    thread_dispatch();
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	d04080e7          	jalr	-764(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800055d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800055dc:	00003517          	auipc	a0,0x3
    800055e0:	bc450513          	addi	a0,a0,-1084 # 800081a0 <CONSOLE_STATUS+0x190>
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	4ec080e7          	jalr	1260(ra) # 80004ad0 <_Z11printStringPKc>
    800055ec:	00000613          	li	a2,0
    800055f0:	00a00593          	li	a1,10
    800055f4:	0009051b          	sext.w	a0,s2
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	688080e7          	jalr	1672(ra) # 80004c80 <_Z8printIntiii>
    80005600:	00003517          	auipc	a0,0x3
    80005604:	aa850513          	addi	a0,a0,-1368 # 800080a8 <CONSOLE_STATUS+0x98>
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	4c8080e7          	jalr	1224(ra) # 80004ad0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005610:	00c00513          	li	a0,12
    80005614:	00000097          	auipc	ra,0x0
    80005618:	d88080e7          	jalr	-632(ra) # 8000539c <_ZL9fibonaccim>
    8000561c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005620:	00003517          	auipc	a0,0x3
    80005624:	b8850513          	addi	a0,a0,-1144 # 800081a8 <CONSOLE_STATUS+0x198>
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	4a8080e7          	jalr	1192(ra) # 80004ad0 <_Z11printStringPKc>
    80005630:	00000613          	li	a2,0
    80005634:	00a00593          	li	a1,10
    80005638:	0009051b          	sext.w	a0,s2
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	644080e7          	jalr	1604(ra) # 80004c80 <_Z8printIntiii>
    80005644:	00003517          	auipc	a0,0x3
    80005648:	a6450513          	addi	a0,a0,-1436 # 800080a8 <CONSOLE_STATUS+0x98>
    8000564c:	fffff097          	auipc	ra,0xfffff
    80005650:	484080e7          	jalr	1156(ra) # 80004ad0 <_Z11printStringPKc>
    80005654:	0400006f          	j	80005694 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005658:	00003517          	auipc	a0,0x3
    8000565c:	b3050513          	addi	a0,a0,-1232 # 80008188 <CONSOLE_STATUS+0x178>
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	470080e7          	jalr	1136(ra) # 80004ad0 <_Z11printStringPKc>
    80005668:	00000613          	li	a2,0
    8000566c:	00a00593          	li	a1,10
    80005670:	00048513          	mv	a0,s1
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	60c080e7          	jalr	1548(ra) # 80004c80 <_Z8printIntiii>
    8000567c:	00003517          	auipc	a0,0x3
    80005680:	a2c50513          	addi	a0,a0,-1492 # 800080a8 <CONSOLE_STATUS+0x98>
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	44c080e7          	jalr	1100(ra) # 80004ad0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000568c:	0014849b          	addiw	s1,s1,1
    80005690:	0ff4f493          	andi	s1,s1,255
    80005694:	00500793          	li	a5,5
    80005698:	fc97f0e3          	bgeu	a5,s1,80005658 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000569c:	00003517          	auipc	a0,0x3
    800056a0:	ac450513          	addi	a0,a0,-1340 # 80008160 <CONSOLE_STATUS+0x150>
    800056a4:	fffff097          	auipc	ra,0xfffff
    800056a8:	42c080e7          	jalr	1068(ra) # 80004ad0 <_Z11printStringPKc>
    finishedC = true;
    800056ac:	00100793          	li	a5,1
    800056b0:	00005717          	auipc	a4,0x5
    800056b4:	f2f701a3          	sb	a5,-221(a4) # 8000a5d3 <_ZL9finishedC>
    thread_dispatch();
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	c1c080e7          	jalr	-996(ra) # 800012d4 <_Z15thread_dispatchv>
}
    800056c0:	01813083          	ld	ra,24(sp)
    800056c4:	01013403          	ld	s0,16(sp)
    800056c8:	00813483          	ld	s1,8(sp)
    800056cc:	00013903          	ld	s2,0(sp)
    800056d0:	02010113          	addi	sp,sp,32
    800056d4:	00008067          	ret

00000000800056d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800056d8:	fe010113          	addi	sp,sp,-32
    800056dc:	00113c23          	sd	ra,24(sp)
    800056e0:	00813823          	sd	s0,16(sp)
    800056e4:	00913423          	sd	s1,8(sp)
    800056e8:	01213023          	sd	s2,0(sp)
    800056ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056f0:	00000913          	li	s2,0
    800056f4:	0400006f          	j	80005734 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800056f8:	ffffc097          	auipc	ra,0xffffc
    800056fc:	bdc080e7          	jalr	-1060(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005700:	00148493          	addi	s1,s1,1
    80005704:	000027b7          	lui	a5,0x2
    80005708:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000570c:	0097ee63          	bltu	a5,s1,80005728 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005710:	00000713          	li	a4,0
    80005714:	000077b7          	lui	a5,0x7
    80005718:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000571c:	fce7eee3          	bltu	a5,a4,800056f8 <_ZL11workerBodyBPv+0x20>
    80005720:	00170713          	addi	a4,a4,1
    80005724:	ff1ff06f          	j	80005714 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005728:	00a00793          	li	a5,10
    8000572c:	04f90663          	beq	s2,a5,80005778 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005730:	00190913          	addi	s2,s2,1
    80005734:	00f00793          	li	a5,15
    80005738:	0527e463          	bltu	a5,s2,80005780 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000573c:	00003517          	auipc	a0,0x3
    80005740:	a3450513          	addi	a0,a0,-1484 # 80008170 <CONSOLE_STATUS+0x160>
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	38c080e7          	jalr	908(ra) # 80004ad0 <_Z11printStringPKc>
    8000574c:	00000613          	li	a2,0
    80005750:	00a00593          	li	a1,10
    80005754:	0009051b          	sext.w	a0,s2
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	528080e7          	jalr	1320(ra) # 80004c80 <_Z8printIntiii>
    80005760:	00003517          	auipc	a0,0x3
    80005764:	94850513          	addi	a0,a0,-1720 # 800080a8 <CONSOLE_STATUS+0x98>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	368080e7          	jalr	872(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005770:	00000493          	li	s1,0
    80005774:	f91ff06f          	j	80005704 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005778:	14102ff3          	csrr	t6,sepc
    8000577c:	fb5ff06f          	j	80005730 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005780:	00003517          	auipc	a0,0x3
    80005784:	9f850513          	addi	a0,a0,-1544 # 80008178 <CONSOLE_STATUS+0x168>
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	348080e7          	jalr	840(ra) # 80004ad0 <_Z11printStringPKc>
    finishedB = true;
    80005790:	00100793          	li	a5,1
    80005794:	00005717          	auipc	a4,0x5
    80005798:	e4f70023          	sb	a5,-448(a4) # 8000a5d4 <_ZL9finishedB>
    thread_dispatch();
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	b38080e7          	jalr	-1224(ra) # 800012d4 <_Z15thread_dispatchv>
}
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	00013903          	ld	s2,0(sp)
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00008067          	ret

00000000800057bc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800057bc:	fe010113          	addi	sp,sp,-32
    800057c0:	00113c23          	sd	ra,24(sp)
    800057c4:	00813823          	sd	s0,16(sp)
    800057c8:	00913423          	sd	s1,8(sp)
    800057cc:	01213023          	sd	s2,0(sp)
    800057d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800057d4:	00000913          	li	s2,0
    800057d8:	0380006f          	j	80005810 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	af8080e7          	jalr	-1288(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800057e4:	00148493          	addi	s1,s1,1
    800057e8:	000027b7          	lui	a5,0x2
    800057ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800057f0:	0097ee63          	bltu	a5,s1,8000580c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800057f4:	00000713          	li	a4,0
    800057f8:	000077b7          	lui	a5,0x7
    800057fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005800:	fce7eee3          	bltu	a5,a4,800057dc <_ZL11workerBodyAPv+0x20>
    80005804:	00170713          	addi	a4,a4,1
    80005808:	ff1ff06f          	j	800057f8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000580c:	00190913          	addi	s2,s2,1
    80005810:	00900793          	li	a5,9
    80005814:	0527e063          	bltu	a5,s2,80005854 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005818:	00003517          	auipc	a0,0x3
    8000581c:	94050513          	addi	a0,a0,-1728 # 80008158 <CONSOLE_STATUS+0x148>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	2b0080e7          	jalr	688(ra) # 80004ad0 <_Z11printStringPKc>
    80005828:	00000613          	li	a2,0
    8000582c:	00a00593          	li	a1,10
    80005830:	0009051b          	sext.w	a0,s2
    80005834:	fffff097          	auipc	ra,0xfffff
    80005838:	44c080e7          	jalr	1100(ra) # 80004c80 <_Z8printIntiii>
    8000583c:	00003517          	auipc	a0,0x3
    80005840:	86c50513          	addi	a0,a0,-1940 # 800080a8 <CONSOLE_STATUS+0x98>
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	28c080e7          	jalr	652(ra) # 80004ad0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000584c:	00000493          	li	s1,0
    80005850:	f99ff06f          	j	800057e8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005854:	00003517          	auipc	a0,0x3
    80005858:	90c50513          	addi	a0,a0,-1780 # 80008160 <CONSOLE_STATUS+0x150>
    8000585c:	fffff097          	auipc	ra,0xfffff
    80005860:	274080e7          	jalr	628(ra) # 80004ad0 <_Z11printStringPKc>
    finishedA = true;
    80005864:	00100793          	li	a5,1
    80005868:	00005717          	auipc	a4,0x5
    8000586c:	d6f706a3          	sb	a5,-659(a4) # 8000a5d5 <_ZL9finishedA>
}
    80005870:	01813083          	ld	ra,24(sp)
    80005874:	01013403          	ld	s0,16(sp)
    80005878:	00813483          	ld	s1,8(sp)
    8000587c:	00013903          	ld	s2,0(sp)
    80005880:	02010113          	addi	sp,sp,32
    80005884:	00008067          	ret

0000000080005888 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005888:	fd010113          	addi	sp,sp,-48
    8000588c:	02113423          	sd	ra,40(sp)
    80005890:	02813023          	sd	s0,32(sp)
    80005894:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005898:	00000613          	li	a2,0
    8000589c:	00000597          	auipc	a1,0x0
    800058a0:	f2058593          	addi	a1,a1,-224 # 800057bc <_ZL11workerBodyAPv>
    800058a4:	fd040513          	addi	a0,s0,-48
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	958080e7          	jalr	-1704(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800058b0:	00003517          	auipc	a0,0x3
    800058b4:	94050513          	addi	a0,a0,-1728 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800058b8:	fffff097          	auipc	ra,0xfffff
    800058bc:	218080e7          	jalr	536(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058c0:	00000613          	li	a2,0
    800058c4:	00000597          	auipc	a1,0x0
    800058c8:	e1458593          	addi	a1,a1,-492 # 800056d8 <_ZL11workerBodyBPv>
    800058cc:	fd840513          	addi	a0,s0,-40
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	930080e7          	jalr	-1744(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800058d8:	00003517          	auipc	a0,0x3
    800058dc:	93050513          	addi	a0,a0,-1744 # 80008208 <CONSOLE_STATUS+0x1f8>
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	1f0080e7          	jalr	496(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800058e8:	00000613          	li	a2,0
    800058ec:	00000597          	auipc	a1,0x0
    800058f0:	c6c58593          	addi	a1,a1,-916 # 80005558 <_ZL11workerBodyCPv>
    800058f4:	fe040513          	addi	a0,s0,-32
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	908080e7          	jalr	-1784(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005900:	00003517          	auipc	a0,0x3
    80005904:	92050513          	addi	a0,a0,-1760 # 80008220 <CONSOLE_STATUS+0x210>
    80005908:	fffff097          	auipc	ra,0xfffff
    8000590c:	1c8080e7          	jalr	456(ra) # 80004ad0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005910:	00000613          	li	a2,0
    80005914:	00000597          	auipc	a1,0x0
    80005918:	afc58593          	addi	a1,a1,-1284 # 80005410 <_ZL11workerBodyDPv>
    8000591c:	fe840513          	addi	a0,s0,-24
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	8e0080e7          	jalr	-1824(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005928:	00003517          	auipc	a0,0x3
    8000592c:	91050513          	addi	a0,a0,-1776 # 80008238 <CONSOLE_STATUS+0x228>
    80005930:	fffff097          	auipc	ra,0xfffff
    80005934:	1a0080e7          	jalr	416(ra) # 80004ad0 <_Z11printStringPKc>
    80005938:	00c0006f          	j	80005944 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	998080e7          	jalr	-1640(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005944:	00005797          	auipc	a5,0x5
    80005948:	c917c783          	lbu	a5,-879(a5) # 8000a5d5 <_ZL9finishedA>
    8000594c:	fe0788e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    80005950:	00005797          	auipc	a5,0x5
    80005954:	c847c783          	lbu	a5,-892(a5) # 8000a5d4 <_ZL9finishedB>
    80005958:	fe0782e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    8000595c:	00005797          	auipc	a5,0x5
    80005960:	c777c783          	lbu	a5,-905(a5) # 8000a5d3 <_ZL9finishedC>
    80005964:	fc078ce3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    80005968:	00005797          	auipc	a5,0x5
    8000596c:	c6a7c783          	lbu	a5,-918(a5) # 8000a5d2 <_ZL9finishedD>
    80005970:	fc0786e3          	beqz	a5,8000593c <_Z16System_Mode_testv+0xb4>
    }

}
    80005974:	02813083          	ld	ra,40(sp)
    80005978:	02013403          	ld	s0,32(sp)
    8000597c:	03010113          	addi	sp,sp,48
    80005980:	00008067          	ret

0000000080005984 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005984:	fe010113          	addi	sp,sp,-32
    80005988:	00113c23          	sd	ra,24(sp)
    8000598c:	00813823          	sd	s0,16(sp)
    80005990:	00913423          	sd	s1,8(sp)
    80005994:	01213023          	sd	s2,0(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050493          	mv	s1,a0
    800059a0:	00058913          	mv	s2,a1
    800059a4:	0015879b          	addiw	a5,a1,1
    800059a8:	0007851b          	sext.w	a0,a5
    800059ac:	00f4a023          	sw	a5,0(s1)
    800059b0:	0004a823          	sw	zero,16(s1)
    800059b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800059b8:	00251513          	slli	a0,a0,0x2
    800059bc:	ffffb097          	auipc	ra,0xffffb
    800059c0:	7a4080e7          	jalr	1956(ra) # 80001160 <_Z9mem_allocm>
    800059c4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800059c8:	00000593          	li	a1,0
    800059cc:	02048513          	addi	a0,s1,32
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	940080e7          	jalr	-1728(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800059d8:	00090593          	mv	a1,s2
    800059dc:	01848513          	addi	a0,s1,24
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	930080e7          	jalr	-1744(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800059e8:	00100593          	li	a1,1
    800059ec:	02848513          	addi	a0,s1,40
    800059f0:	ffffc097          	auipc	ra,0xffffc
    800059f4:	920080e7          	jalr	-1760(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800059f8:	00100593          	li	a1,1
    800059fc:	03048513          	addi	a0,s1,48
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	910080e7          	jalr	-1776(ra) # 80001310 <_Z8sem_openPP4_semj>
}
    80005a08:	01813083          	ld	ra,24(sp)
    80005a0c:	01013403          	ld	s0,16(sp)
    80005a10:	00813483          	ld	s1,8(sp)
    80005a14:	00013903          	ld	s2,0(sp)
    80005a18:	02010113          	addi	sp,sp,32
    80005a1c:	00008067          	ret

0000000080005a20 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a20:	fe010113          	addi	sp,sp,-32
    80005a24:	00113c23          	sd	ra,24(sp)
    80005a28:	00813823          	sd	s0,16(sp)
    80005a2c:	00913423          	sd	s1,8(sp)
    80005a30:	01213023          	sd	s2,0(sp)
    80005a34:	02010413          	addi	s0,sp,32
    80005a38:	00050493          	mv	s1,a0
    80005a3c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a40:	01853503          	ld	a0,24(a0)
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	904080e7          	jalr	-1788(ra) # 80001348 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005a4c:	0304b503          	ld	a0,48(s1)
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	8f8080e7          	jalr	-1800(ra) # 80001348 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005a58:	0084b783          	ld	a5,8(s1)
    80005a5c:	0144a703          	lw	a4,20(s1)
    80005a60:	00271713          	slli	a4,a4,0x2
    80005a64:	00e787b3          	add	a5,a5,a4
    80005a68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a6c:	0144a783          	lw	a5,20(s1)
    80005a70:	0017879b          	addiw	a5,a5,1
    80005a74:	0004a703          	lw	a4,0(s1)
    80005a78:	02e7e7bb          	remw	a5,a5,a4
    80005a7c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a80:	0304b503          	ld	a0,48(s1)
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	8e0080e7          	jalr	-1824(ra) # 80001364 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005a8c:	0204b503          	ld	a0,32(s1)
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	8d4080e7          	jalr	-1836(ra) # 80001364 <_Z10sem_signalP4_sem>

}
    80005a98:	01813083          	ld	ra,24(sp)
    80005a9c:	01013403          	ld	s0,16(sp)
    80005aa0:	00813483          	ld	s1,8(sp)
    80005aa4:	00013903          	ld	s2,0(sp)
    80005aa8:	02010113          	addi	sp,sp,32
    80005aac:	00008067          	ret

0000000080005ab0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ab0:	fe010113          	addi	sp,sp,-32
    80005ab4:	00113c23          	sd	ra,24(sp)
    80005ab8:	00813823          	sd	s0,16(sp)
    80005abc:	00913423          	sd	s1,8(sp)
    80005ac0:	01213023          	sd	s2,0(sp)
    80005ac4:	02010413          	addi	s0,sp,32
    80005ac8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005acc:	02053503          	ld	a0,32(a0)
    80005ad0:	ffffc097          	auipc	ra,0xffffc
    80005ad4:	878080e7          	jalr	-1928(ra) # 80001348 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005ad8:	0284b503          	ld	a0,40(s1)
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	86c080e7          	jalr	-1940(ra) # 80001348 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005ae4:	0084b703          	ld	a4,8(s1)
    80005ae8:	0104a783          	lw	a5,16(s1)
    80005aec:	00279693          	slli	a3,a5,0x2
    80005af0:	00d70733          	add	a4,a4,a3
    80005af4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005af8:	0017879b          	addiw	a5,a5,1
    80005afc:	0004a703          	lw	a4,0(s1)
    80005b00:	02e7e7bb          	remw	a5,a5,a4
    80005b04:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b08:	0284b503          	ld	a0,40(s1)
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	858080e7          	jalr	-1960(ra) # 80001364 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005b14:	0184b503          	ld	a0,24(s1)
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	84c080e7          	jalr	-1972(ra) # 80001364 <_Z10sem_signalP4_sem>

    return ret;
}
    80005b20:	00090513          	mv	a0,s2
    80005b24:	01813083          	ld	ra,24(sp)
    80005b28:	01013403          	ld	s0,16(sp)
    80005b2c:	00813483          	ld	s1,8(sp)
    80005b30:	00013903          	ld	s2,0(sp)
    80005b34:	02010113          	addi	sp,sp,32
    80005b38:	00008067          	ret

0000000080005b3c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	01213023          	sd	s2,0(sp)
    80005b50:	02010413          	addi	s0,sp,32
    80005b54:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005b58:	02853503          	ld	a0,40(a0)
    80005b5c:	ffffb097          	auipc	ra,0xffffb
    80005b60:	7ec080e7          	jalr	2028(ra) # 80001348 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005b64:	0304b503          	ld	a0,48(s1)
    80005b68:	ffffb097          	auipc	ra,0xffffb
    80005b6c:	7e0080e7          	jalr	2016(ra) # 80001348 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005b70:	0144a783          	lw	a5,20(s1)
    80005b74:	0104a903          	lw	s2,16(s1)
    80005b78:	0327ce63          	blt	a5,s2,80005bb4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005b7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005b80:	0304b503          	ld	a0,48(s1)
    80005b84:	ffffb097          	auipc	ra,0xffffb
    80005b88:	7e0080e7          	jalr	2016(ra) # 80001364 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005b8c:	0284b503          	ld	a0,40(s1)
    80005b90:	ffffb097          	auipc	ra,0xffffb
    80005b94:	7d4080e7          	jalr	2004(ra) # 80001364 <_Z10sem_signalP4_sem>

    return ret;
}
    80005b98:	00090513          	mv	a0,s2
    80005b9c:	01813083          	ld	ra,24(sp)
    80005ba0:	01013403          	ld	s0,16(sp)
    80005ba4:	00813483          	ld	s1,8(sp)
    80005ba8:	00013903          	ld	s2,0(sp)
    80005bac:	02010113          	addi	sp,sp,32
    80005bb0:	00008067          	ret
        ret = cap - head + tail;
    80005bb4:	0004a703          	lw	a4,0(s1)
    80005bb8:	4127093b          	subw	s2,a4,s2
    80005bbc:	00f9093b          	addw	s2,s2,a5
    80005bc0:	fc1ff06f          	j	80005b80 <_ZN6Buffer6getCntEv+0x44>

0000000080005bc4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005bc4:	fe010113          	addi	sp,sp,-32
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00813823          	sd	s0,16(sp)
    80005bd0:	00913423          	sd	s1,8(sp)
    80005bd4:	02010413          	addi	s0,sp,32
    80005bd8:	00050493          	mv	s1,a0
    putc('\n');
    80005bdc:	00a00513          	li	a0,10
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	81c080e7          	jalr	-2020(ra) # 800013fc <_Z4putcc>
    printString("Buffer deleted!\n");
    80005be8:	00002517          	auipc	a0,0x2
    80005bec:	66850513          	addi	a0,a0,1640 # 80008250 <CONSOLE_STATUS+0x240>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	ee0080e7          	jalr	-288(ra) # 80004ad0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005bf8:	00048513          	mv	a0,s1
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	f40080e7          	jalr	-192(ra) # 80005b3c <_ZN6Buffer6getCntEv>
    80005c04:	02a05c63          	blez	a0,80005c3c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005c08:	0084b783          	ld	a5,8(s1)
    80005c0c:	0104a703          	lw	a4,16(s1)
    80005c10:	00271713          	slli	a4,a4,0x2
    80005c14:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c18:	0007c503          	lbu	a0,0(a5)
    80005c1c:	ffffb097          	auipc	ra,0xffffb
    80005c20:	7e0080e7          	jalr	2016(ra) # 800013fc <_Z4putcc>
        head = (head + 1) % cap;
    80005c24:	0104a783          	lw	a5,16(s1)
    80005c28:	0017879b          	addiw	a5,a5,1
    80005c2c:	0004a703          	lw	a4,0(s1)
    80005c30:	02e7e7bb          	remw	a5,a5,a4
    80005c34:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005c38:	fc1ff06f          	j	80005bf8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005c3c:	02100513          	li	a0,33
    80005c40:	ffffb097          	auipc	ra,0xffffb
    80005c44:	7bc080e7          	jalr	1980(ra) # 800013fc <_Z4putcc>
    putc('\n');
    80005c48:	00a00513          	li	a0,10
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	7b0080e7          	jalr	1968(ra) # 800013fc <_Z4putcc>
    mem_free(buffer);
    80005c54:	0084b503          	ld	a0,8(s1)
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	55c080e7          	jalr	1372(ra) # 800011b4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005c60:	0204b503          	ld	a0,32(s1)
    80005c64:	ffffb097          	auipc	ra,0xffffb
    80005c68:	6c8080e7          	jalr	1736(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005c6c:	0184b503          	ld	a0,24(s1)
    80005c70:	ffffb097          	auipc	ra,0xffffb
    80005c74:	6bc080e7          	jalr	1724(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005c78:	0304b503          	ld	a0,48(s1)
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	6b0080e7          	jalr	1712(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005c84:	0284b503          	ld	a0,40(s1)
    80005c88:	ffffb097          	auipc	ra,0xffffb
    80005c8c:	6a4080e7          	jalr	1700(ra) # 8000132c <_Z9sem_closeP4_sem>
}
    80005c90:	01813083          	ld	ra,24(sp)
    80005c94:	01013403          	ld	s0,16(sp)
    80005c98:	00813483          	ld	s1,8(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <start>:
    80005ca4:	ff010113          	addi	sp,sp,-16
    80005ca8:	00813423          	sd	s0,8(sp)
    80005cac:	01010413          	addi	s0,sp,16
    80005cb0:	300027f3          	csrr	a5,mstatus
    80005cb4:	ffffe737          	lui	a4,0xffffe
    80005cb8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2fbf>
    80005cbc:	00e7f7b3          	and	a5,a5,a4
    80005cc0:	00001737          	lui	a4,0x1
    80005cc4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005cc8:	00e7e7b3          	or	a5,a5,a4
    80005ccc:	30079073          	csrw	mstatus,a5
    80005cd0:	00000797          	auipc	a5,0x0
    80005cd4:	16078793          	addi	a5,a5,352 # 80005e30 <system_main>
    80005cd8:	34179073          	csrw	mepc,a5
    80005cdc:	00000793          	li	a5,0
    80005ce0:	18079073          	csrw	satp,a5
    80005ce4:	000107b7          	lui	a5,0x10
    80005ce8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005cec:	30279073          	csrw	medeleg,a5
    80005cf0:	30379073          	csrw	mideleg,a5
    80005cf4:	104027f3          	csrr	a5,sie
    80005cf8:	2227e793          	ori	a5,a5,546
    80005cfc:	10479073          	csrw	sie,a5
    80005d00:	fff00793          	li	a5,-1
    80005d04:	00a7d793          	srli	a5,a5,0xa
    80005d08:	3b079073          	csrw	pmpaddr0,a5
    80005d0c:	00f00793          	li	a5,15
    80005d10:	3a079073          	csrw	pmpcfg0,a5
    80005d14:	f14027f3          	csrr	a5,mhartid
    80005d18:	0200c737          	lui	a4,0x200c
    80005d1c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d20:	0007869b          	sext.w	a3,a5
    80005d24:	00269713          	slli	a4,a3,0x2
    80005d28:	000f4637          	lui	a2,0xf4
    80005d2c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d30:	00d70733          	add	a4,a4,a3
    80005d34:	0037979b          	slliw	a5,a5,0x3
    80005d38:	020046b7          	lui	a3,0x2004
    80005d3c:	00d787b3          	add	a5,a5,a3
    80005d40:	00c585b3          	add	a1,a1,a2
    80005d44:	00371693          	slli	a3,a4,0x3
    80005d48:	00005717          	auipc	a4,0x5
    80005d4c:	89870713          	addi	a4,a4,-1896 # 8000a5e0 <timer_scratch>
    80005d50:	00b7b023          	sd	a1,0(a5)
    80005d54:	00d70733          	add	a4,a4,a3
    80005d58:	00f73c23          	sd	a5,24(a4)
    80005d5c:	02c73023          	sd	a2,32(a4)
    80005d60:	34071073          	csrw	mscratch,a4
    80005d64:	00000797          	auipc	a5,0x0
    80005d68:	6ec78793          	addi	a5,a5,1772 # 80006450 <timervec>
    80005d6c:	30579073          	csrw	mtvec,a5
    80005d70:	300027f3          	csrr	a5,mstatus
    80005d74:	0087e793          	ori	a5,a5,8
    80005d78:	30079073          	csrw	mstatus,a5
    80005d7c:	304027f3          	csrr	a5,mie
    80005d80:	0807e793          	ori	a5,a5,128
    80005d84:	30479073          	csrw	mie,a5
    80005d88:	f14027f3          	csrr	a5,mhartid
    80005d8c:	0007879b          	sext.w	a5,a5
    80005d90:	00078213          	mv	tp,a5
    80005d94:	30200073          	mret
    80005d98:	00813403          	ld	s0,8(sp)
    80005d9c:	01010113          	addi	sp,sp,16
    80005da0:	00008067          	ret

0000000080005da4 <timerinit>:
    80005da4:	ff010113          	addi	sp,sp,-16
    80005da8:	00813423          	sd	s0,8(sp)
    80005dac:	01010413          	addi	s0,sp,16
    80005db0:	f14027f3          	csrr	a5,mhartid
    80005db4:	0200c737          	lui	a4,0x200c
    80005db8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005dbc:	0007869b          	sext.w	a3,a5
    80005dc0:	00269713          	slli	a4,a3,0x2
    80005dc4:	000f4637          	lui	a2,0xf4
    80005dc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005dcc:	00d70733          	add	a4,a4,a3
    80005dd0:	0037979b          	slliw	a5,a5,0x3
    80005dd4:	020046b7          	lui	a3,0x2004
    80005dd8:	00d787b3          	add	a5,a5,a3
    80005ddc:	00c585b3          	add	a1,a1,a2
    80005de0:	00371693          	slli	a3,a4,0x3
    80005de4:	00004717          	auipc	a4,0x4
    80005de8:	7fc70713          	addi	a4,a4,2044 # 8000a5e0 <timer_scratch>
    80005dec:	00b7b023          	sd	a1,0(a5)
    80005df0:	00d70733          	add	a4,a4,a3
    80005df4:	00f73c23          	sd	a5,24(a4)
    80005df8:	02c73023          	sd	a2,32(a4)
    80005dfc:	34071073          	csrw	mscratch,a4
    80005e00:	00000797          	auipc	a5,0x0
    80005e04:	65078793          	addi	a5,a5,1616 # 80006450 <timervec>
    80005e08:	30579073          	csrw	mtvec,a5
    80005e0c:	300027f3          	csrr	a5,mstatus
    80005e10:	0087e793          	ori	a5,a5,8
    80005e14:	30079073          	csrw	mstatus,a5
    80005e18:	304027f3          	csrr	a5,mie
    80005e1c:	0807e793          	ori	a5,a5,128
    80005e20:	30479073          	csrw	mie,a5
    80005e24:	00813403          	ld	s0,8(sp)
    80005e28:	01010113          	addi	sp,sp,16
    80005e2c:	00008067          	ret

0000000080005e30 <system_main>:
    80005e30:	fe010113          	addi	sp,sp,-32
    80005e34:	00813823          	sd	s0,16(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	02010413          	addi	s0,sp,32
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	0c4080e7          	jalr	196(ra) # 80005f08 <cpuid>
    80005e4c:	00004497          	auipc	s1,0x4
    80005e50:	6c448493          	addi	s1,s1,1732 # 8000a510 <started>
    80005e54:	02050263          	beqz	a0,80005e78 <system_main+0x48>
    80005e58:	0004a783          	lw	a5,0(s1)
    80005e5c:	0007879b          	sext.w	a5,a5
    80005e60:	fe078ce3          	beqz	a5,80005e58 <system_main+0x28>
    80005e64:	0ff0000f          	fence
    80005e68:	00002517          	auipc	a0,0x2
    80005e6c:	51850513          	addi	a0,a0,1304 # 80008380 <CONSOLE_STATUS+0x370>
    80005e70:	00001097          	auipc	ra,0x1
    80005e74:	a7c080e7          	jalr	-1412(ra) # 800068ec <panic>
    80005e78:	00001097          	auipc	ra,0x1
    80005e7c:	9d0080e7          	jalr	-1584(ra) # 80006848 <consoleinit>
    80005e80:	00001097          	auipc	ra,0x1
    80005e84:	15c080e7          	jalr	348(ra) # 80006fdc <printfinit>
    80005e88:	00002517          	auipc	a0,0x2
    80005e8c:	22050513          	addi	a0,a0,544 # 800080a8 <CONSOLE_STATUS+0x98>
    80005e90:	00001097          	auipc	ra,0x1
    80005e94:	ab8080e7          	jalr	-1352(ra) # 80006948 <__printf>
    80005e98:	00002517          	auipc	a0,0x2
    80005e9c:	4b850513          	addi	a0,a0,1208 # 80008350 <CONSOLE_STATUS+0x340>
    80005ea0:	00001097          	auipc	ra,0x1
    80005ea4:	aa8080e7          	jalr	-1368(ra) # 80006948 <__printf>
    80005ea8:	00002517          	auipc	a0,0x2
    80005eac:	20050513          	addi	a0,a0,512 # 800080a8 <CONSOLE_STATUS+0x98>
    80005eb0:	00001097          	auipc	ra,0x1
    80005eb4:	a98080e7          	jalr	-1384(ra) # 80006948 <__printf>
    80005eb8:	00001097          	auipc	ra,0x1
    80005ebc:	4b0080e7          	jalr	1200(ra) # 80007368 <kinit>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	148080e7          	jalr	328(ra) # 80006008 <trapinit>
    80005ec8:	00000097          	auipc	ra,0x0
    80005ecc:	16c080e7          	jalr	364(ra) # 80006034 <trapinithart>
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	5c0080e7          	jalr	1472(ra) # 80006490 <plicinit>
    80005ed8:	00000097          	auipc	ra,0x0
    80005edc:	5e0080e7          	jalr	1504(ra) # 800064b8 <plicinithart>
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	078080e7          	jalr	120(ra) # 80005f58 <userinit>
    80005ee8:	0ff0000f          	fence
    80005eec:	00100793          	li	a5,1
    80005ef0:	00002517          	auipc	a0,0x2
    80005ef4:	47850513          	addi	a0,a0,1144 # 80008368 <CONSOLE_STATUS+0x358>
    80005ef8:	00f4a023          	sw	a5,0(s1)
    80005efc:	00001097          	auipc	ra,0x1
    80005f00:	a4c080e7          	jalr	-1460(ra) # 80006948 <__printf>
    80005f04:	0000006f          	j	80005f04 <system_main+0xd4>

0000000080005f08 <cpuid>:
    80005f08:	ff010113          	addi	sp,sp,-16
    80005f0c:	00813423          	sd	s0,8(sp)
    80005f10:	01010413          	addi	s0,sp,16
    80005f14:	00020513          	mv	a0,tp
    80005f18:	00813403          	ld	s0,8(sp)
    80005f1c:	0005051b          	sext.w	a0,a0
    80005f20:	01010113          	addi	sp,sp,16
    80005f24:	00008067          	ret

0000000080005f28 <mycpu>:
    80005f28:	ff010113          	addi	sp,sp,-16
    80005f2c:	00813423          	sd	s0,8(sp)
    80005f30:	01010413          	addi	s0,sp,16
    80005f34:	00020793          	mv	a5,tp
    80005f38:	00813403          	ld	s0,8(sp)
    80005f3c:	0007879b          	sext.w	a5,a5
    80005f40:	00779793          	slli	a5,a5,0x7
    80005f44:	00005517          	auipc	a0,0x5
    80005f48:	6cc50513          	addi	a0,a0,1740 # 8000b610 <cpus>
    80005f4c:	00f50533          	add	a0,a0,a5
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00008067          	ret

0000000080005f58 <userinit>:
    80005f58:	ff010113          	addi	sp,sp,-16
    80005f5c:	00813423          	sd	s0,8(sp)
    80005f60:	01010413          	addi	s0,sp,16
    80005f64:	00813403          	ld	s0,8(sp)
    80005f68:	01010113          	addi	sp,sp,16
    80005f6c:	ffffb317          	auipc	t1,0xffffb
    80005f70:	56430067          	jr	1380(t1) # 800014d0 <main>

0000000080005f74 <either_copyout>:
    80005f74:	ff010113          	addi	sp,sp,-16
    80005f78:	00813023          	sd	s0,0(sp)
    80005f7c:	00113423          	sd	ra,8(sp)
    80005f80:	01010413          	addi	s0,sp,16
    80005f84:	02051663          	bnez	a0,80005fb0 <either_copyout+0x3c>
    80005f88:	00058513          	mv	a0,a1
    80005f8c:	00060593          	mv	a1,a2
    80005f90:	0006861b          	sext.w	a2,a3
    80005f94:	00002097          	auipc	ra,0x2
    80005f98:	c60080e7          	jalr	-928(ra) # 80007bf4 <__memmove>
    80005f9c:	00813083          	ld	ra,8(sp)
    80005fa0:	00013403          	ld	s0,0(sp)
    80005fa4:	00000513          	li	a0,0
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00008067          	ret
    80005fb0:	00002517          	auipc	a0,0x2
    80005fb4:	3f850513          	addi	a0,a0,1016 # 800083a8 <CONSOLE_STATUS+0x398>
    80005fb8:	00001097          	auipc	ra,0x1
    80005fbc:	934080e7          	jalr	-1740(ra) # 800068ec <panic>

0000000080005fc0 <either_copyin>:
    80005fc0:	ff010113          	addi	sp,sp,-16
    80005fc4:	00813023          	sd	s0,0(sp)
    80005fc8:	00113423          	sd	ra,8(sp)
    80005fcc:	01010413          	addi	s0,sp,16
    80005fd0:	02059463          	bnez	a1,80005ff8 <either_copyin+0x38>
    80005fd4:	00060593          	mv	a1,a2
    80005fd8:	0006861b          	sext.w	a2,a3
    80005fdc:	00002097          	auipc	ra,0x2
    80005fe0:	c18080e7          	jalr	-1000(ra) # 80007bf4 <__memmove>
    80005fe4:	00813083          	ld	ra,8(sp)
    80005fe8:	00013403          	ld	s0,0(sp)
    80005fec:	00000513          	li	a0,0
    80005ff0:	01010113          	addi	sp,sp,16
    80005ff4:	00008067          	ret
    80005ff8:	00002517          	auipc	a0,0x2
    80005ffc:	3d850513          	addi	a0,a0,984 # 800083d0 <CONSOLE_STATUS+0x3c0>
    80006000:	00001097          	auipc	ra,0x1
    80006004:	8ec080e7          	jalr	-1812(ra) # 800068ec <panic>

0000000080006008 <trapinit>:
    80006008:	ff010113          	addi	sp,sp,-16
    8000600c:	00813423          	sd	s0,8(sp)
    80006010:	01010413          	addi	s0,sp,16
    80006014:	00813403          	ld	s0,8(sp)
    80006018:	00002597          	auipc	a1,0x2
    8000601c:	3e058593          	addi	a1,a1,992 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80006020:	00005517          	auipc	a0,0x5
    80006024:	67050513          	addi	a0,a0,1648 # 8000b690 <tickslock>
    80006028:	01010113          	addi	sp,sp,16
    8000602c:	00001317          	auipc	t1,0x1
    80006030:	5cc30067          	jr	1484(t1) # 800075f8 <initlock>

0000000080006034 <trapinithart>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813423          	sd	s0,8(sp)
    8000603c:	01010413          	addi	s0,sp,16
    80006040:	00000797          	auipc	a5,0x0
    80006044:	30078793          	addi	a5,a5,768 # 80006340 <kernelvec>
    80006048:	10579073          	csrw	stvec,a5
    8000604c:	00813403          	ld	s0,8(sp)
    80006050:	01010113          	addi	sp,sp,16
    80006054:	00008067          	ret

0000000080006058 <usertrap>:
    80006058:	ff010113          	addi	sp,sp,-16
    8000605c:	00813423          	sd	s0,8(sp)
    80006060:	01010413          	addi	s0,sp,16
    80006064:	00813403          	ld	s0,8(sp)
    80006068:	01010113          	addi	sp,sp,16
    8000606c:	00008067          	ret

0000000080006070 <usertrapret>:
    80006070:	ff010113          	addi	sp,sp,-16
    80006074:	00813423          	sd	s0,8(sp)
    80006078:	01010413          	addi	s0,sp,16
    8000607c:	00813403          	ld	s0,8(sp)
    80006080:	01010113          	addi	sp,sp,16
    80006084:	00008067          	ret

0000000080006088 <kerneltrap>:
    80006088:	fe010113          	addi	sp,sp,-32
    8000608c:	00813823          	sd	s0,16(sp)
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00913423          	sd	s1,8(sp)
    80006098:	02010413          	addi	s0,sp,32
    8000609c:	142025f3          	csrr	a1,scause
    800060a0:	100027f3          	csrr	a5,sstatus
    800060a4:	0027f793          	andi	a5,a5,2
    800060a8:	10079c63          	bnez	a5,800061c0 <kerneltrap+0x138>
    800060ac:	142027f3          	csrr	a5,scause
    800060b0:	0207ce63          	bltz	a5,800060ec <kerneltrap+0x64>
    800060b4:	00002517          	auipc	a0,0x2
    800060b8:	38c50513          	addi	a0,a0,908 # 80008440 <CONSOLE_STATUS+0x430>
    800060bc:	00001097          	auipc	ra,0x1
    800060c0:	88c080e7          	jalr	-1908(ra) # 80006948 <__printf>
    800060c4:	141025f3          	csrr	a1,sepc
    800060c8:	14302673          	csrr	a2,stval
    800060cc:	00002517          	auipc	a0,0x2
    800060d0:	38450513          	addi	a0,a0,900 # 80008450 <CONSOLE_STATUS+0x440>
    800060d4:	00001097          	auipc	ra,0x1
    800060d8:	874080e7          	jalr	-1932(ra) # 80006948 <__printf>
    800060dc:	00002517          	auipc	a0,0x2
    800060e0:	38c50513          	addi	a0,a0,908 # 80008468 <CONSOLE_STATUS+0x458>
    800060e4:	00001097          	auipc	ra,0x1
    800060e8:	808080e7          	jalr	-2040(ra) # 800068ec <panic>
    800060ec:	0ff7f713          	andi	a4,a5,255
    800060f0:	00900693          	li	a3,9
    800060f4:	04d70063          	beq	a4,a3,80006134 <kerneltrap+0xac>
    800060f8:	fff00713          	li	a4,-1
    800060fc:	03f71713          	slli	a4,a4,0x3f
    80006100:	00170713          	addi	a4,a4,1
    80006104:	fae798e3          	bne	a5,a4,800060b4 <kerneltrap+0x2c>
    80006108:	00000097          	auipc	ra,0x0
    8000610c:	e00080e7          	jalr	-512(ra) # 80005f08 <cpuid>
    80006110:	06050663          	beqz	a0,8000617c <kerneltrap+0xf4>
    80006114:	144027f3          	csrr	a5,sip
    80006118:	ffd7f793          	andi	a5,a5,-3
    8000611c:	14479073          	csrw	sip,a5
    80006120:	01813083          	ld	ra,24(sp)
    80006124:	01013403          	ld	s0,16(sp)
    80006128:	00813483          	ld	s1,8(sp)
    8000612c:	02010113          	addi	sp,sp,32
    80006130:	00008067          	ret
    80006134:	00000097          	auipc	ra,0x0
    80006138:	3d0080e7          	jalr	976(ra) # 80006504 <plic_claim>
    8000613c:	00a00793          	li	a5,10
    80006140:	00050493          	mv	s1,a0
    80006144:	06f50863          	beq	a0,a5,800061b4 <kerneltrap+0x12c>
    80006148:	fc050ce3          	beqz	a0,80006120 <kerneltrap+0x98>
    8000614c:	00050593          	mv	a1,a0
    80006150:	00002517          	auipc	a0,0x2
    80006154:	2d050513          	addi	a0,a0,720 # 80008420 <CONSOLE_STATUS+0x410>
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	7f0080e7          	jalr	2032(ra) # 80006948 <__printf>
    80006160:	01013403          	ld	s0,16(sp)
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	00048513          	mv	a0,s1
    8000616c:	00813483          	ld	s1,8(sp)
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00000317          	auipc	t1,0x0
    80006178:	3c830067          	jr	968(t1) # 8000653c <plic_complete>
    8000617c:	00005517          	auipc	a0,0x5
    80006180:	51450513          	addi	a0,a0,1300 # 8000b690 <tickslock>
    80006184:	00001097          	auipc	ra,0x1
    80006188:	498080e7          	jalr	1176(ra) # 8000761c <acquire>
    8000618c:	00004717          	auipc	a4,0x4
    80006190:	38870713          	addi	a4,a4,904 # 8000a514 <ticks>
    80006194:	00072783          	lw	a5,0(a4)
    80006198:	00005517          	auipc	a0,0x5
    8000619c:	4f850513          	addi	a0,a0,1272 # 8000b690 <tickslock>
    800061a0:	0017879b          	addiw	a5,a5,1
    800061a4:	00f72023          	sw	a5,0(a4)
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	540080e7          	jalr	1344(ra) # 800076e8 <release>
    800061b0:	f65ff06f          	j	80006114 <kerneltrap+0x8c>
    800061b4:	00001097          	auipc	ra,0x1
    800061b8:	09c080e7          	jalr	156(ra) # 80007250 <uartintr>
    800061bc:	fa5ff06f          	j	80006160 <kerneltrap+0xd8>
    800061c0:	00002517          	auipc	a0,0x2
    800061c4:	24050513          	addi	a0,a0,576 # 80008400 <CONSOLE_STATUS+0x3f0>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	724080e7          	jalr	1828(ra) # 800068ec <panic>

00000000800061d0 <clockintr>:
    800061d0:	fe010113          	addi	sp,sp,-32
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	00113c23          	sd	ra,24(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00005497          	auipc	s1,0x5
    800061e8:	4ac48493          	addi	s1,s1,1196 # 8000b690 <tickslock>
    800061ec:	00048513          	mv	a0,s1
    800061f0:	00001097          	auipc	ra,0x1
    800061f4:	42c080e7          	jalr	1068(ra) # 8000761c <acquire>
    800061f8:	00004717          	auipc	a4,0x4
    800061fc:	31c70713          	addi	a4,a4,796 # 8000a514 <ticks>
    80006200:	00072783          	lw	a5,0(a4)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	00048513          	mv	a0,s1
    80006210:	0017879b          	addiw	a5,a5,1
    80006214:	00813483          	ld	s1,8(sp)
    80006218:	00f72023          	sw	a5,0(a4)
    8000621c:	02010113          	addi	sp,sp,32
    80006220:	00001317          	auipc	t1,0x1
    80006224:	4c830067          	jr	1224(t1) # 800076e8 <release>

0000000080006228 <devintr>:
    80006228:	142027f3          	csrr	a5,scause
    8000622c:	00000513          	li	a0,0
    80006230:	0007c463          	bltz	a5,80006238 <devintr+0x10>
    80006234:	00008067          	ret
    80006238:	fe010113          	addi	sp,sp,-32
    8000623c:	00813823          	sd	s0,16(sp)
    80006240:	00113c23          	sd	ra,24(sp)
    80006244:	00913423          	sd	s1,8(sp)
    80006248:	02010413          	addi	s0,sp,32
    8000624c:	0ff7f713          	andi	a4,a5,255
    80006250:	00900693          	li	a3,9
    80006254:	04d70c63          	beq	a4,a3,800062ac <devintr+0x84>
    80006258:	fff00713          	li	a4,-1
    8000625c:	03f71713          	slli	a4,a4,0x3f
    80006260:	00170713          	addi	a4,a4,1
    80006264:	00e78c63          	beq	a5,a4,8000627c <devintr+0x54>
    80006268:	01813083          	ld	ra,24(sp)
    8000626c:	01013403          	ld	s0,16(sp)
    80006270:	00813483          	ld	s1,8(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret
    8000627c:	00000097          	auipc	ra,0x0
    80006280:	c8c080e7          	jalr	-884(ra) # 80005f08 <cpuid>
    80006284:	06050663          	beqz	a0,800062f0 <devintr+0xc8>
    80006288:	144027f3          	csrr	a5,sip
    8000628c:	ffd7f793          	andi	a5,a5,-3
    80006290:	14479073          	csrw	sip,a5
    80006294:	01813083          	ld	ra,24(sp)
    80006298:	01013403          	ld	s0,16(sp)
    8000629c:	00813483          	ld	s1,8(sp)
    800062a0:	00200513          	li	a0,2
    800062a4:	02010113          	addi	sp,sp,32
    800062a8:	00008067          	ret
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	258080e7          	jalr	600(ra) # 80006504 <plic_claim>
    800062b4:	00a00793          	li	a5,10
    800062b8:	00050493          	mv	s1,a0
    800062bc:	06f50663          	beq	a0,a5,80006328 <devintr+0x100>
    800062c0:	00100513          	li	a0,1
    800062c4:	fa0482e3          	beqz	s1,80006268 <devintr+0x40>
    800062c8:	00048593          	mv	a1,s1
    800062cc:	00002517          	auipc	a0,0x2
    800062d0:	15450513          	addi	a0,a0,340 # 80008420 <CONSOLE_STATUS+0x410>
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	674080e7          	jalr	1652(ra) # 80006948 <__printf>
    800062dc:	00048513          	mv	a0,s1
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	25c080e7          	jalr	604(ra) # 8000653c <plic_complete>
    800062e8:	00100513          	li	a0,1
    800062ec:	f7dff06f          	j	80006268 <devintr+0x40>
    800062f0:	00005517          	auipc	a0,0x5
    800062f4:	3a050513          	addi	a0,a0,928 # 8000b690 <tickslock>
    800062f8:	00001097          	auipc	ra,0x1
    800062fc:	324080e7          	jalr	804(ra) # 8000761c <acquire>
    80006300:	00004717          	auipc	a4,0x4
    80006304:	21470713          	addi	a4,a4,532 # 8000a514 <ticks>
    80006308:	00072783          	lw	a5,0(a4)
    8000630c:	00005517          	auipc	a0,0x5
    80006310:	38450513          	addi	a0,a0,900 # 8000b690 <tickslock>
    80006314:	0017879b          	addiw	a5,a5,1
    80006318:	00f72023          	sw	a5,0(a4)
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	3cc080e7          	jalr	972(ra) # 800076e8 <release>
    80006324:	f65ff06f          	j	80006288 <devintr+0x60>
    80006328:	00001097          	auipc	ra,0x1
    8000632c:	f28080e7          	jalr	-216(ra) # 80007250 <uartintr>
    80006330:	fadff06f          	j	800062dc <devintr+0xb4>
	...

0000000080006340 <kernelvec>:
    80006340:	f0010113          	addi	sp,sp,-256
    80006344:	00113023          	sd	ra,0(sp)
    80006348:	00213423          	sd	sp,8(sp)
    8000634c:	00313823          	sd	gp,16(sp)
    80006350:	00413c23          	sd	tp,24(sp)
    80006354:	02513023          	sd	t0,32(sp)
    80006358:	02613423          	sd	t1,40(sp)
    8000635c:	02713823          	sd	t2,48(sp)
    80006360:	02813c23          	sd	s0,56(sp)
    80006364:	04913023          	sd	s1,64(sp)
    80006368:	04a13423          	sd	a0,72(sp)
    8000636c:	04b13823          	sd	a1,80(sp)
    80006370:	04c13c23          	sd	a2,88(sp)
    80006374:	06d13023          	sd	a3,96(sp)
    80006378:	06e13423          	sd	a4,104(sp)
    8000637c:	06f13823          	sd	a5,112(sp)
    80006380:	07013c23          	sd	a6,120(sp)
    80006384:	09113023          	sd	a7,128(sp)
    80006388:	09213423          	sd	s2,136(sp)
    8000638c:	09313823          	sd	s3,144(sp)
    80006390:	09413c23          	sd	s4,152(sp)
    80006394:	0b513023          	sd	s5,160(sp)
    80006398:	0b613423          	sd	s6,168(sp)
    8000639c:	0b713823          	sd	s7,176(sp)
    800063a0:	0b813c23          	sd	s8,184(sp)
    800063a4:	0d913023          	sd	s9,192(sp)
    800063a8:	0da13423          	sd	s10,200(sp)
    800063ac:	0db13823          	sd	s11,208(sp)
    800063b0:	0dc13c23          	sd	t3,216(sp)
    800063b4:	0fd13023          	sd	t4,224(sp)
    800063b8:	0fe13423          	sd	t5,232(sp)
    800063bc:	0ff13823          	sd	t6,240(sp)
    800063c0:	cc9ff0ef          	jal	ra,80006088 <kerneltrap>
    800063c4:	00013083          	ld	ra,0(sp)
    800063c8:	00813103          	ld	sp,8(sp)
    800063cc:	01013183          	ld	gp,16(sp)
    800063d0:	02013283          	ld	t0,32(sp)
    800063d4:	02813303          	ld	t1,40(sp)
    800063d8:	03013383          	ld	t2,48(sp)
    800063dc:	03813403          	ld	s0,56(sp)
    800063e0:	04013483          	ld	s1,64(sp)
    800063e4:	04813503          	ld	a0,72(sp)
    800063e8:	05013583          	ld	a1,80(sp)
    800063ec:	05813603          	ld	a2,88(sp)
    800063f0:	06013683          	ld	a3,96(sp)
    800063f4:	06813703          	ld	a4,104(sp)
    800063f8:	07013783          	ld	a5,112(sp)
    800063fc:	07813803          	ld	a6,120(sp)
    80006400:	08013883          	ld	a7,128(sp)
    80006404:	08813903          	ld	s2,136(sp)
    80006408:	09013983          	ld	s3,144(sp)
    8000640c:	09813a03          	ld	s4,152(sp)
    80006410:	0a013a83          	ld	s5,160(sp)
    80006414:	0a813b03          	ld	s6,168(sp)
    80006418:	0b013b83          	ld	s7,176(sp)
    8000641c:	0b813c03          	ld	s8,184(sp)
    80006420:	0c013c83          	ld	s9,192(sp)
    80006424:	0c813d03          	ld	s10,200(sp)
    80006428:	0d013d83          	ld	s11,208(sp)
    8000642c:	0d813e03          	ld	t3,216(sp)
    80006430:	0e013e83          	ld	t4,224(sp)
    80006434:	0e813f03          	ld	t5,232(sp)
    80006438:	0f013f83          	ld	t6,240(sp)
    8000643c:	10010113          	addi	sp,sp,256
    80006440:	10200073          	sret
    80006444:	00000013          	nop
    80006448:	00000013          	nop
    8000644c:	00000013          	nop

0000000080006450 <timervec>:
    80006450:	34051573          	csrrw	a0,mscratch,a0
    80006454:	00b53023          	sd	a1,0(a0)
    80006458:	00c53423          	sd	a2,8(a0)
    8000645c:	00d53823          	sd	a3,16(a0)
    80006460:	01853583          	ld	a1,24(a0)
    80006464:	02053603          	ld	a2,32(a0)
    80006468:	0005b683          	ld	a3,0(a1)
    8000646c:	00c686b3          	add	a3,a3,a2
    80006470:	00d5b023          	sd	a3,0(a1)
    80006474:	00200593          	li	a1,2
    80006478:	14459073          	csrw	sip,a1
    8000647c:	01053683          	ld	a3,16(a0)
    80006480:	00853603          	ld	a2,8(a0)
    80006484:	00053583          	ld	a1,0(a0)
    80006488:	34051573          	csrrw	a0,mscratch,a0
    8000648c:	30200073          	mret

0000000080006490 <plicinit>:
    80006490:	ff010113          	addi	sp,sp,-16
    80006494:	00813423          	sd	s0,8(sp)
    80006498:	01010413          	addi	s0,sp,16
    8000649c:	00813403          	ld	s0,8(sp)
    800064a0:	0c0007b7          	lui	a5,0xc000
    800064a4:	00100713          	li	a4,1
    800064a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800064ac:	00e7a223          	sw	a4,4(a5)
    800064b0:	01010113          	addi	sp,sp,16
    800064b4:	00008067          	ret

00000000800064b8 <plicinithart>:
    800064b8:	ff010113          	addi	sp,sp,-16
    800064bc:	00813023          	sd	s0,0(sp)
    800064c0:	00113423          	sd	ra,8(sp)
    800064c4:	01010413          	addi	s0,sp,16
    800064c8:	00000097          	auipc	ra,0x0
    800064cc:	a40080e7          	jalr	-1472(ra) # 80005f08 <cpuid>
    800064d0:	0085171b          	slliw	a4,a0,0x8
    800064d4:	0c0027b7          	lui	a5,0xc002
    800064d8:	00e787b3          	add	a5,a5,a4
    800064dc:	40200713          	li	a4,1026
    800064e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800064e4:	00813083          	ld	ra,8(sp)
    800064e8:	00013403          	ld	s0,0(sp)
    800064ec:	00d5151b          	slliw	a0,a0,0xd
    800064f0:	0c2017b7          	lui	a5,0xc201
    800064f4:	00a78533          	add	a0,a5,a0
    800064f8:	00052023          	sw	zero,0(a0)
    800064fc:	01010113          	addi	sp,sp,16
    80006500:	00008067          	ret

0000000080006504 <plic_claim>:
    80006504:	ff010113          	addi	sp,sp,-16
    80006508:	00813023          	sd	s0,0(sp)
    8000650c:	00113423          	sd	ra,8(sp)
    80006510:	01010413          	addi	s0,sp,16
    80006514:	00000097          	auipc	ra,0x0
    80006518:	9f4080e7          	jalr	-1548(ra) # 80005f08 <cpuid>
    8000651c:	00813083          	ld	ra,8(sp)
    80006520:	00013403          	ld	s0,0(sp)
    80006524:	00d5151b          	slliw	a0,a0,0xd
    80006528:	0c2017b7          	lui	a5,0xc201
    8000652c:	00a78533          	add	a0,a5,a0
    80006530:	00452503          	lw	a0,4(a0)
    80006534:	01010113          	addi	sp,sp,16
    80006538:	00008067          	ret

000000008000653c <plic_complete>:
    8000653c:	fe010113          	addi	sp,sp,-32
    80006540:	00813823          	sd	s0,16(sp)
    80006544:	00913423          	sd	s1,8(sp)
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	02010413          	addi	s0,sp,32
    80006550:	00050493          	mv	s1,a0
    80006554:	00000097          	auipc	ra,0x0
    80006558:	9b4080e7          	jalr	-1612(ra) # 80005f08 <cpuid>
    8000655c:	01813083          	ld	ra,24(sp)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	00d5179b          	slliw	a5,a0,0xd
    80006568:	0c201737          	lui	a4,0xc201
    8000656c:	00f707b3          	add	a5,a4,a5
    80006570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	02010113          	addi	sp,sp,32
    8000657c:	00008067          	ret

0000000080006580 <consolewrite>:
    80006580:	fb010113          	addi	sp,sp,-80
    80006584:	04813023          	sd	s0,64(sp)
    80006588:	04113423          	sd	ra,72(sp)
    8000658c:	02913c23          	sd	s1,56(sp)
    80006590:	03213823          	sd	s2,48(sp)
    80006594:	03313423          	sd	s3,40(sp)
    80006598:	03413023          	sd	s4,32(sp)
    8000659c:	01513c23          	sd	s5,24(sp)
    800065a0:	05010413          	addi	s0,sp,80
    800065a4:	06c05c63          	blez	a2,8000661c <consolewrite+0x9c>
    800065a8:	00060993          	mv	s3,a2
    800065ac:	00050a13          	mv	s4,a0
    800065b0:	00058493          	mv	s1,a1
    800065b4:	00000913          	li	s2,0
    800065b8:	fff00a93          	li	s5,-1
    800065bc:	01c0006f          	j	800065d8 <consolewrite+0x58>
    800065c0:	fbf44503          	lbu	a0,-65(s0)
    800065c4:	0019091b          	addiw	s2,s2,1
    800065c8:	00148493          	addi	s1,s1,1
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	a9c080e7          	jalr	-1380(ra) # 80007068 <uartputc>
    800065d4:	03298063          	beq	s3,s2,800065f4 <consolewrite+0x74>
    800065d8:	00048613          	mv	a2,s1
    800065dc:	00100693          	li	a3,1
    800065e0:	000a0593          	mv	a1,s4
    800065e4:	fbf40513          	addi	a0,s0,-65
    800065e8:	00000097          	auipc	ra,0x0
    800065ec:	9d8080e7          	jalr	-1576(ra) # 80005fc0 <either_copyin>
    800065f0:	fd5518e3          	bne	a0,s5,800065c0 <consolewrite+0x40>
    800065f4:	04813083          	ld	ra,72(sp)
    800065f8:	04013403          	ld	s0,64(sp)
    800065fc:	03813483          	ld	s1,56(sp)
    80006600:	02813983          	ld	s3,40(sp)
    80006604:	02013a03          	ld	s4,32(sp)
    80006608:	01813a83          	ld	s5,24(sp)
    8000660c:	00090513          	mv	a0,s2
    80006610:	03013903          	ld	s2,48(sp)
    80006614:	05010113          	addi	sp,sp,80
    80006618:	00008067          	ret
    8000661c:	00000913          	li	s2,0
    80006620:	fd5ff06f          	j	800065f4 <consolewrite+0x74>

0000000080006624 <consoleread>:
    80006624:	f9010113          	addi	sp,sp,-112
    80006628:	06813023          	sd	s0,96(sp)
    8000662c:	04913c23          	sd	s1,88(sp)
    80006630:	05213823          	sd	s2,80(sp)
    80006634:	05313423          	sd	s3,72(sp)
    80006638:	05413023          	sd	s4,64(sp)
    8000663c:	03513c23          	sd	s5,56(sp)
    80006640:	03613823          	sd	s6,48(sp)
    80006644:	03713423          	sd	s7,40(sp)
    80006648:	03813023          	sd	s8,32(sp)
    8000664c:	06113423          	sd	ra,104(sp)
    80006650:	01913c23          	sd	s9,24(sp)
    80006654:	07010413          	addi	s0,sp,112
    80006658:	00060b93          	mv	s7,a2
    8000665c:	00050913          	mv	s2,a0
    80006660:	00058c13          	mv	s8,a1
    80006664:	00060b1b          	sext.w	s6,a2
    80006668:	00005497          	auipc	s1,0x5
    8000666c:	05048493          	addi	s1,s1,80 # 8000b6b8 <cons>
    80006670:	00400993          	li	s3,4
    80006674:	fff00a13          	li	s4,-1
    80006678:	00a00a93          	li	s5,10
    8000667c:	05705e63          	blez	s7,800066d8 <consoleread+0xb4>
    80006680:	09c4a703          	lw	a4,156(s1)
    80006684:	0984a783          	lw	a5,152(s1)
    80006688:	0007071b          	sext.w	a4,a4
    8000668c:	08e78463          	beq	a5,a4,80006714 <consoleread+0xf0>
    80006690:	07f7f713          	andi	a4,a5,127
    80006694:	00e48733          	add	a4,s1,a4
    80006698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000669c:	0017869b          	addiw	a3,a5,1
    800066a0:	08d4ac23          	sw	a3,152(s1)
    800066a4:	00070c9b          	sext.w	s9,a4
    800066a8:	0b370663          	beq	a4,s3,80006754 <consoleread+0x130>
    800066ac:	00100693          	li	a3,1
    800066b0:	f9f40613          	addi	a2,s0,-97
    800066b4:	000c0593          	mv	a1,s8
    800066b8:	00090513          	mv	a0,s2
    800066bc:	f8e40fa3          	sb	a4,-97(s0)
    800066c0:	00000097          	auipc	ra,0x0
    800066c4:	8b4080e7          	jalr	-1868(ra) # 80005f74 <either_copyout>
    800066c8:	01450863          	beq	a0,s4,800066d8 <consoleread+0xb4>
    800066cc:	001c0c13          	addi	s8,s8,1
    800066d0:	fffb8b9b          	addiw	s7,s7,-1
    800066d4:	fb5c94e3          	bne	s9,s5,8000667c <consoleread+0x58>
    800066d8:	000b851b          	sext.w	a0,s7
    800066dc:	06813083          	ld	ra,104(sp)
    800066e0:	06013403          	ld	s0,96(sp)
    800066e4:	05813483          	ld	s1,88(sp)
    800066e8:	05013903          	ld	s2,80(sp)
    800066ec:	04813983          	ld	s3,72(sp)
    800066f0:	04013a03          	ld	s4,64(sp)
    800066f4:	03813a83          	ld	s5,56(sp)
    800066f8:	02813b83          	ld	s7,40(sp)
    800066fc:	02013c03          	ld	s8,32(sp)
    80006700:	01813c83          	ld	s9,24(sp)
    80006704:	40ab053b          	subw	a0,s6,a0
    80006708:	03013b03          	ld	s6,48(sp)
    8000670c:	07010113          	addi	sp,sp,112
    80006710:	00008067          	ret
    80006714:	00001097          	auipc	ra,0x1
    80006718:	1d8080e7          	jalr	472(ra) # 800078ec <push_on>
    8000671c:	0984a703          	lw	a4,152(s1)
    80006720:	09c4a783          	lw	a5,156(s1)
    80006724:	0007879b          	sext.w	a5,a5
    80006728:	fef70ce3          	beq	a4,a5,80006720 <consoleread+0xfc>
    8000672c:	00001097          	auipc	ra,0x1
    80006730:	234080e7          	jalr	564(ra) # 80007960 <pop_on>
    80006734:	0984a783          	lw	a5,152(s1)
    80006738:	07f7f713          	andi	a4,a5,127
    8000673c:	00e48733          	add	a4,s1,a4
    80006740:	01874703          	lbu	a4,24(a4)
    80006744:	0017869b          	addiw	a3,a5,1
    80006748:	08d4ac23          	sw	a3,152(s1)
    8000674c:	00070c9b          	sext.w	s9,a4
    80006750:	f5371ee3          	bne	a4,s3,800066ac <consoleread+0x88>
    80006754:	000b851b          	sext.w	a0,s7
    80006758:	f96bf2e3          	bgeu	s7,s6,800066dc <consoleread+0xb8>
    8000675c:	08f4ac23          	sw	a5,152(s1)
    80006760:	f7dff06f          	j	800066dc <consoleread+0xb8>

0000000080006764 <consputc>:
    80006764:	10000793          	li	a5,256
    80006768:	00f50663          	beq	a0,a5,80006774 <consputc+0x10>
    8000676c:	00001317          	auipc	t1,0x1
    80006770:	9f430067          	jr	-1548(t1) # 80007160 <uartputc_sync>
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00113423          	sd	ra,8(sp)
    8000677c:	00813023          	sd	s0,0(sp)
    80006780:	01010413          	addi	s0,sp,16
    80006784:	00800513          	li	a0,8
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	9d8080e7          	jalr	-1576(ra) # 80007160 <uartputc_sync>
    80006790:	02000513          	li	a0,32
    80006794:	00001097          	auipc	ra,0x1
    80006798:	9cc080e7          	jalr	-1588(ra) # 80007160 <uartputc_sync>
    8000679c:	00013403          	ld	s0,0(sp)
    800067a0:	00813083          	ld	ra,8(sp)
    800067a4:	00800513          	li	a0,8
    800067a8:	01010113          	addi	sp,sp,16
    800067ac:	00001317          	auipc	t1,0x1
    800067b0:	9b430067          	jr	-1612(t1) # 80007160 <uartputc_sync>

00000000800067b4 <consoleintr>:
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00813823          	sd	s0,16(sp)
    800067bc:	00913423          	sd	s1,8(sp)
    800067c0:	01213023          	sd	s2,0(sp)
    800067c4:	00113c23          	sd	ra,24(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00005917          	auipc	s2,0x5
    800067d0:	eec90913          	addi	s2,s2,-276 # 8000b6b8 <cons>
    800067d4:	00050493          	mv	s1,a0
    800067d8:	00090513          	mv	a0,s2
    800067dc:	00001097          	auipc	ra,0x1
    800067e0:	e40080e7          	jalr	-448(ra) # 8000761c <acquire>
    800067e4:	02048c63          	beqz	s1,8000681c <consoleintr+0x68>
    800067e8:	0a092783          	lw	a5,160(s2)
    800067ec:	09892703          	lw	a4,152(s2)
    800067f0:	07f00693          	li	a3,127
    800067f4:	40e7873b          	subw	a4,a5,a4
    800067f8:	02e6e263          	bltu	a3,a4,8000681c <consoleintr+0x68>
    800067fc:	00d00713          	li	a4,13
    80006800:	04e48063          	beq	s1,a4,80006840 <consoleintr+0x8c>
    80006804:	07f7f713          	andi	a4,a5,127
    80006808:	00e90733          	add	a4,s2,a4
    8000680c:	0017879b          	addiw	a5,a5,1
    80006810:	0af92023          	sw	a5,160(s2)
    80006814:	00970c23          	sb	s1,24(a4)
    80006818:	08f92e23          	sw	a5,156(s2)
    8000681c:	01013403          	ld	s0,16(sp)
    80006820:	01813083          	ld	ra,24(sp)
    80006824:	00813483          	ld	s1,8(sp)
    80006828:	00013903          	ld	s2,0(sp)
    8000682c:	00005517          	auipc	a0,0x5
    80006830:	e8c50513          	addi	a0,a0,-372 # 8000b6b8 <cons>
    80006834:	02010113          	addi	sp,sp,32
    80006838:	00001317          	auipc	t1,0x1
    8000683c:	eb030067          	jr	-336(t1) # 800076e8 <release>
    80006840:	00a00493          	li	s1,10
    80006844:	fc1ff06f          	j	80006804 <consoleintr+0x50>

0000000080006848 <consoleinit>:
    80006848:	fe010113          	addi	sp,sp,-32
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	00813823          	sd	s0,16(sp)
    80006854:	00913423          	sd	s1,8(sp)
    80006858:	02010413          	addi	s0,sp,32
    8000685c:	00005497          	auipc	s1,0x5
    80006860:	e5c48493          	addi	s1,s1,-420 # 8000b6b8 <cons>
    80006864:	00048513          	mv	a0,s1
    80006868:	00002597          	auipc	a1,0x2
    8000686c:	c1058593          	addi	a1,a1,-1008 # 80008478 <CONSOLE_STATUS+0x468>
    80006870:	00001097          	auipc	ra,0x1
    80006874:	d88080e7          	jalr	-632(ra) # 800075f8 <initlock>
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	7ac080e7          	jalr	1964(ra) # 80007024 <uartinit>
    80006880:	01813083          	ld	ra,24(sp)
    80006884:	01013403          	ld	s0,16(sp)
    80006888:	00000797          	auipc	a5,0x0
    8000688c:	d9c78793          	addi	a5,a5,-612 # 80006624 <consoleread>
    80006890:	0af4bc23          	sd	a5,184(s1)
    80006894:	00000797          	auipc	a5,0x0
    80006898:	cec78793          	addi	a5,a5,-788 # 80006580 <consolewrite>
    8000689c:	0cf4b023          	sd	a5,192(s1)
    800068a0:	00813483          	ld	s1,8(sp)
    800068a4:	02010113          	addi	sp,sp,32
    800068a8:	00008067          	ret

00000000800068ac <console_read>:
    800068ac:	ff010113          	addi	sp,sp,-16
    800068b0:	00813423          	sd	s0,8(sp)
    800068b4:	01010413          	addi	s0,sp,16
    800068b8:	00813403          	ld	s0,8(sp)
    800068bc:	00005317          	auipc	t1,0x5
    800068c0:	eb433303          	ld	t1,-332(t1) # 8000b770 <devsw+0x10>
    800068c4:	01010113          	addi	sp,sp,16
    800068c8:	00030067          	jr	t1

00000000800068cc <console_write>:
    800068cc:	ff010113          	addi	sp,sp,-16
    800068d0:	00813423          	sd	s0,8(sp)
    800068d4:	01010413          	addi	s0,sp,16
    800068d8:	00813403          	ld	s0,8(sp)
    800068dc:	00005317          	auipc	t1,0x5
    800068e0:	e9c33303          	ld	t1,-356(t1) # 8000b778 <devsw+0x18>
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	00030067          	jr	t1

00000000800068ec <panic>:
    800068ec:	fe010113          	addi	sp,sp,-32
    800068f0:	00113c23          	sd	ra,24(sp)
    800068f4:	00813823          	sd	s0,16(sp)
    800068f8:	00913423          	sd	s1,8(sp)
    800068fc:	02010413          	addi	s0,sp,32
    80006900:	00050493          	mv	s1,a0
    80006904:	00002517          	auipc	a0,0x2
    80006908:	b7c50513          	addi	a0,a0,-1156 # 80008480 <CONSOLE_STATUS+0x470>
    8000690c:	00005797          	auipc	a5,0x5
    80006910:	f007a623          	sw	zero,-244(a5) # 8000b818 <pr+0x18>
    80006914:	00000097          	auipc	ra,0x0
    80006918:	034080e7          	jalr	52(ra) # 80006948 <__printf>
    8000691c:	00048513          	mv	a0,s1
    80006920:	00000097          	auipc	ra,0x0
    80006924:	028080e7          	jalr	40(ra) # 80006948 <__printf>
    80006928:	00001517          	auipc	a0,0x1
    8000692c:	78050513          	addi	a0,a0,1920 # 800080a8 <CONSOLE_STATUS+0x98>
    80006930:	00000097          	auipc	ra,0x0
    80006934:	018080e7          	jalr	24(ra) # 80006948 <__printf>
    80006938:	00100793          	li	a5,1
    8000693c:	00004717          	auipc	a4,0x4
    80006940:	bcf72e23          	sw	a5,-1060(a4) # 8000a518 <panicked>
    80006944:	0000006f          	j	80006944 <panic+0x58>

0000000080006948 <__printf>:
    80006948:	f3010113          	addi	sp,sp,-208
    8000694c:	08813023          	sd	s0,128(sp)
    80006950:	07313423          	sd	s3,104(sp)
    80006954:	09010413          	addi	s0,sp,144
    80006958:	05813023          	sd	s8,64(sp)
    8000695c:	08113423          	sd	ra,136(sp)
    80006960:	06913c23          	sd	s1,120(sp)
    80006964:	07213823          	sd	s2,112(sp)
    80006968:	07413023          	sd	s4,96(sp)
    8000696c:	05513c23          	sd	s5,88(sp)
    80006970:	05613823          	sd	s6,80(sp)
    80006974:	05713423          	sd	s7,72(sp)
    80006978:	03913c23          	sd	s9,56(sp)
    8000697c:	03a13823          	sd	s10,48(sp)
    80006980:	03b13423          	sd	s11,40(sp)
    80006984:	00005317          	auipc	t1,0x5
    80006988:	e7c30313          	addi	t1,t1,-388 # 8000b800 <pr>
    8000698c:	01832c03          	lw	s8,24(t1)
    80006990:	00b43423          	sd	a1,8(s0)
    80006994:	00c43823          	sd	a2,16(s0)
    80006998:	00d43c23          	sd	a3,24(s0)
    8000699c:	02e43023          	sd	a4,32(s0)
    800069a0:	02f43423          	sd	a5,40(s0)
    800069a4:	03043823          	sd	a6,48(s0)
    800069a8:	03143c23          	sd	a7,56(s0)
    800069ac:	00050993          	mv	s3,a0
    800069b0:	4a0c1663          	bnez	s8,80006e5c <__printf+0x514>
    800069b4:	60098c63          	beqz	s3,80006fcc <__printf+0x684>
    800069b8:	0009c503          	lbu	a0,0(s3)
    800069bc:	00840793          	addi	a5,s0,8
    800069c0:	f6f43c23          	sd	a5,-136(s0)
    800069c4:	00000493          	li	s1,0
    800069c8:	22050063          	beqz	a0,80006be8 <__printf+0x2a0>
    800069cc:	00002a37          	lui	s4,0x2
    800069d0:	00018ab7          	lui	s5,0x18
    800069d4:	000f4b37          	lui	s6,0xf4
    800069d8:	00989bb7          	lui	s7,0x989
    800069dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800069e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800069e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800069e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800069ec:	00148c9b          	addiw	s9,s1,1
    800069f0:	02500793          	li	a5,37
    800069f4:	01998933          	add	s2,s3,s9
    800069f8:	38f51263          	bne	a0,a5,80006d7c <__printf+0x434>
    800069fc:	00094783          	lbu	a5,0(s2)
    80006a00:	00078c9b          	sext.w	s9,a5
    80006a04:	1e078263          	beqz	a5,80006be8 <__printf+0x2a0>
    80006a08:	0024849b          	addiw	s1,s1,2
    80006a0c:	07000713          	li	a4,112
    80006a10:	00998933          	add	s2,s3,s1
    80006a14:	38e78a63          	beq	a5,a4,80006da8 <__printf+0x460>
    80006a18:	20f76863          	bltu	a4,a5,80006c28 <__printf+0x2e0>
    80006a1c:	42a78863          	beq	a5,a0,80006e4c <__printf+0x504>
    80006a20:	06400713          	li	a4,100
    80006a24:	40e79663          	bne	a5,a4,80006e30 <__printf+0x4e8>
    80006a28:	f7843783          	ld	a5,-136(s0)
    80006a2c:	0007a603          	lw	a2,0(a5)
    80006a30:	00878793          	addi	a5,a5,8
    80006a34:	f6f43c23          	sd	a5,-136(s0)
    80006a38:	42064a63          	bltz	a2,80006e6c <__printf+0x524>
    80006a3c:	00a00713          	li	a4,10
    80006a40:	02e677bb          	remuw	a5,a2,a4
    80006a44:	00002d97          	auipc	s11,0x2
    80006a48:	a64d8d93          	addi	s11,s11,-1436 # 800084a8 <digits>
    80006a4c:	00900593          	li	a1,9
    80006a50:	0006051b          	sext.w	a0,a2
    80006a54:	00000c93          	li	s9,0
    80006a58:	02079793          	slli	a5,a5,0x20
    80006a5c:	0207d793          	srli	a5,a5,0x20
    80006a60:	00fd87b3          	add	a5,s11,a5
    80006a64:	0007c783          	lbu	a5,0(a5)
    80006a68:	02e656bb          	divuw	a3,a2,a4
    80006a6c:	f8f40023          	sb	a5,-128(s0)
    80006a70:	14c5d863          	bge	a1,a2,80006bc0 <__printf+0x278>
    80006a74:	06300593          	li	a1,99
    80006a78:	00100c93          	li	s9,1
    80006a7c:	02e6f7bb          	remuw	a5,a3,a4
    80006a80:	02079793          	slli	a5,a5,0x20
    80006a84:	0207d793          	srli	a5,a5,0x20
    80006a88:	00fd87b3          	add	a5,s11,a5
    80006a8c:	0007c783          	lbu	a5,0(a5)
    80006a90:	02e6d73b          	divuw	a4,a3,a4
    80006a94:	f8f400a3          	sb	a5,-127(s0)
    80006a98:	12a5f463          	bgeu	a1,a0,80006bc0 <__printf+0x278>
    80006a9c:	00a00693          	li	a3,10
    80006aa0:	00900593          	li	a1,9
    80006aa4:	02d777bb          	remuw	a5,a4,a3
    80006aa8:	02079793          	slli	a5,a5,0x20
    80006aac:	0207d793          	srli	a5,a5,0x20
    80006ab0:	00fd87b3          	add	a5,s11,a5
    80006ab4:	0007c503          	lbu	a0,0(a5)
    80006ab8:	02d757bb          	divuw	a5,a4,a3
    80006abc:	f8a40123          	sb	a0,-126(s0)
    80006ac0:	48e5f263          	bgeu	a1,a4,80006f44 <__printf+0x5fc>
    80006ac4:	06300513          	li	a0,99
    80006ac8:	02d7f5bb          	remuw	a1,a5,a3
    80006acc:	02059593          	slli	a1,a1,0x20
    80006ad0:	0205d593          	srli	a1,a1,0x20
    80006ad4:	00bd85b3          	add	a1,s11,a1
    80006ad8:	0005c583          	lbu	a1,0(a1)
    80006adc:	02d7d7bb          	divuw	a5,a5,a3
    80006ae0:	f8b401a3          	sb	a1,-125(s0)
    80006ae4:	48e57263          	bgeu	a0,a4,80006f68 <__printf+0x620>
    80006ae8:	3e700513          	li	a0,999
    80006aec:	02d7f5bb          	remuw	a1,a5,a3
    80006af0:	02059593          	slli	a1,a1,0x20
    80006af4:	0205d593          	srli	a1,a1,0x20
    80006af8:	00bd85b3          	add	a1,s11,a1
    80006afc:	0005c583          	lbu	a1,0(a1)
    80006b00:	02d7d7bb          	divuw	a5,a5,a3
    80006b04:	f8b40223          	sb	a1,-124(s0)
    80006b08:	46e57663          	bgeu	a0,a4,80006f74 <__printf+0x62c>
    80006b0c:	02d7f5bb          	remuw	a1,a5,a3
    80006b10:	02059593          	slli	a1,a1,0x20
    80006b14:	0205d593          	srli	a1,a1,0x20
    80006b18:	00bd85b3          	add	a1,s11,a1
    80006b1c:	0005c583          	lbu	a1,0(a1)
    80006b20:	02d7d7bb          	divuw	a5,a5,a3
    80006b24:	f8b402a3          	sb	a1,-123(s0)
    80006b28:	46ea7863          	bgeu	s4,a4,80006f98 <__printf+0x650>
    80006b2c:	02d7f5bb          	remuw	a1,a5,a3
    80006b30:	02059593          	slli	a1,a1,0x20
    80006b34:	0205d593          	srli	a1,a1,0x20
    80006b38:	00bd85b3          	add	a1,s11,a1
    80006b3c:	0005c583          	lbu	a1,0(a1)
    80006b40:	02d7d7bb          	divuw	a5,a5,a3
    80006b44:	f8b40323          	sb	a1,-122(s0)
    80006b48:	3eeaf863          	bgeu	s5,a4,80006f38 <__printf+0x5f0>
    80006b4c:	02d7f5bb          	remuw	a1,a5,a3
    80006b50:	02059593          	slli	a1,a1,0x20
    80006b54:	0205d593          	srli	a1,a1,0x20
    80006b58:	00bd85b3          	add	a1,s11,a1
    80006b5c:	0005c583          	lbu	a1,0(a1)
    80006b60:	02d7d7bb          	divuw	a5,a5,a3
    80006b64:	f8b403a3          	sb	a1,-121(s0)
    80006b68:	42eb7e63          	bgeu	s6,a4,80006fa4 <__printf+0x65c>
    80006b6c:	02d7f5bb          	remuw	a1,a5,a3
    80006b70:	02059593          	slli	a1,a1,0x20
    80006b74:	0205d593          	srli	a1,a1,0x20
    80006b78:	00bd85b3          	add	a1,s11,a1
    80006b7c:	0005c583          	lbu	a1,0(a1)
    80006b80:	02d7d7bb          	divuw	a5,a5,a3
    80006b84:	f8b40423          	sb	a1,-120(s0)
    80006b88:	42ebfc63          	bgeu	s7,a4,80006fc0 <__printf+0x678>
    80006b8c:	02079793          	slli	a5,a5,0x20
    80006b90:	0207d793          	srli	a5,a5,0x20
    80006b94:	00fd8db3          	add	s11,s11,a5
    80006b98:	000dc703          	lbu	a4,0(s11)
    80006b9c:	00a00793          	li	a5,10
    80006ba0:	00900c93          	li	s9,9
    80006ba4:	f8e404a3          	sb	a4,-119(s0)
    80006ba8:	00065c63          	bgez	a2,80006bc0 <__printf+0x278>
    80006bac:	f9040713          	addi	a4,s0,-112
    80006bb0:	00f70733          	add	a4,a4,a5
    80006bb4:	02d00693          	li	a3,45
    80006bb8:	fed70823          	sb	a3,-16(a4)
    80006bbc:	00078c93          	mv	s9,a5
    80006bc0:	f8040793          	addi	a5,s0,-128
    80006bc4:	01978cb3          	add	s9,a5,s9
    80006bc8:	f7f40d13          	addi	s10,s0,-129
    80006bcc:	000cc503          	lbu	a0,0(s9)
    80006bd0:	fffc8c93          	addi	s9,s9,-1
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	b90080e7          	jalr	-1136(ra) # 80006764 <consputc>
    80006bdc:	ffac98e3          	bne	s9,s10,80006bcc <__printf+0x284>
    80006be0:	00094503          	lbu	a0,0(s2)
    80006be4:	e00514e3          	bnez	a0,800069ec <__printf+0xa4>
    80006be8:	1a0c1663          	bnez	s8,80006d94 <__printf+0x44c>
    80006bec:	08813083          	ld	ra,136(sp)
    80006bf0:	08013403          	ld	s0,128(sp)
    80006bf4:	07813483          	ld	s1,120(sp)
    80006bf8:	07013903          	ld	s2,112(sp)
    80006bfc:	06813983          	ld	s3,104(sp)
    80006c00:	06013a03          	ld	s4,96(sp)
    80006c04:	05813a83          	ld	s5,88(sp)
    80006c08:	05013b03          	ld	s6,80(sp)
    80006c0c:	04813b83          	ld	s7,72(sp)
    80006c10:	04013c03          	ld	s8,64(sp)
    80006c14:	03813c83          	ld	s9,56(sp)
    80006c18:	03013d03          	ld	s10,48(sp)
    80006c1c:	02813d83          	ld	s11,40(sp)
    80006c20:	0d010113          	addi	sp,sp,208
    80006c24:	00008067          	ret
    80006c28:	07300713          	li	a4,115
    80006c2c:	1ce78a63          	beq	a5,a4,80006e00 <__printf+0x4b8>
    80006c30:	07800713          	li	a4,120
    80006c34:	1ee79e63          	bne	a5,a4,80006e30 <__printf+0x4e8>
    80006c38:	f7843783          	ld	a5,-136(s0)
    80006c3c:	0007a703          	lw	a4,0(a5)
    80006c40:	00878793          	addi	a5,a5,8
    80006c44:	f6f43c23          	sd	a5,-136(s0)
    80006c48:	28074263          	bltz	a4,80006ecc <__printf+0x584>
    80006c4c:	00002d97          	auipc	s11,0x2
    80006c50:	85cd8d93          	addi	s11,s11,-1956 # 800084a8 <digits>
    80006c54:	00f77793          	andi	a5,a4,15
    80006c58:	00fd87b3          	add	a5,s11,a5
    80006c5c:	0007c683          	lbu	a3,0(a5)
    80006c60:	00f00613          	li	a2,15
    80006c64:	0007079b          	sext.w	a5,a4
    80006c68:	f8d40023          	sb	a3,-128(s0)
    80006c6c:	0047559b          	srliw	a1,a4,0x4
    80006c70:	0047569b          	srliw	a3,a4,0x4
    80006c74:	00000c93          	li	s9,0
    80006c78:	0ee65063          	bge	a2,a4,80006d58 <__printf+0x410>
    80006c7c:	00f6f693          	andi	a3,a3,15
    80006c80:	00dd86b3          	add	a3,s11,a3
    80006c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006c88:	0087d79b          	srliw	a5,a5,0x8
    80006c8c:	00100c93          	li	s9,1
    80006c90:	f8d400a3          	sb	a3,-127(s0)
    80006c94:	0cb67263          	bgeu	a2,a1,80006d58 <__printf+0x410>
    80006c98:	00f7f693          	andi	a3,a5,15
    80006c9c:	00dd86b3          	add	a3,s11,a3
    80006ca0:	0006c583          	lbu	a1,0(a3)
    80006ca4:	00f00613          	li	a2,15
    80006ca8:	0047d69b          	srliw	a3,a5,0x4
    80006cac:	f8b40123          	sb	a1,-126(s0)
    80006cb0:	0047d593          	srli	a1,a5,0x4
    80006cb4:	28f67e63          	bgeu	a2,a5,80006f50 <__printf+0x608>
    80006cb8:	00f6f693          	andi	a3,a3,15
    80006cbc:	00dd86b3          	add	a3,s11,a3
    80006cc0:	0006c503          	lbu	a0,0(a3)
    80006cc4:	0087d813          	srli	a6,a5,0x8
    80006cc8:	0087d69b          	srliw	a3,a5,0x8
    80006ccc:	f8a401a3          	sb	a0,-125(s0)
    80006cd0:	28b67663          	bgeu	a2,a1,80006f5c <__printf+0x614>
    80006cd4:	00f6f693          	andi	a3,a3,15
    80006cd8:	00dd86b3          	add	a3,s11,a3
    80006cdc:	0006c583          	lbu	a1,0(a3)
    80006ce0:	00c7d513          	srli	a0,a5,0xc
    80006ce4:	00c7d69b          	srliw	a3,a5,0xc
    80006ce8:	f8b40223          	sb	a1,-124(s0)
    80006cec:	29067a63          	bgeu	a2,a6,80006f80 <__printf+0x638>
    80006cf0:	00f6f693          	andi	a3,a3,15
    80006cf4:	00dd86b3          	add	a3,s11,a3
    80006cf8:	0006c583          	lbu	a1,0(a3)
    80006cfc:	0107d813          	srli	a6,a5,0x10
    80006d00:	0107d69b          	srliw	a3,a5,0x10
    80006d04:	f8b402a3          	sb	a1,-123(s0)
    80006d08:	28a67263          	bgeu	a2,a0,80006f8c <__printf+0x644>
    80006d0c:	00f6f693          	andi	a3,a3,15
    80006d10:	00dd86b3          	add	a3,s11,a3
    80006d14:	0006c683          	lbu	a3,0(a3)
    80006d18:	0147d79b          	srliw	a5,a5,0x14
    80006d1c:	f8d40323          	sb	a3,-122(s0)
    80006d20:	21067663          	bgeu	a2,a6,80006f2c <__printf+0x5e4>
    80006d24:	02079793          	slli	a5,a5,0x20
    80006d28:	0207d793          	srli	a5,a5,0x20
    80006d2c:	00fd8db3          	add	s11,s11,a5
    80006d30:	000dc683          	lbu	a3,0(s11)
    80006d34:	00800793          	li	a5,8
    80006d38:	00700c93          	li	s9,7
    80006d3c:	f8d403a3          	sb	a3,-121(s0)
    80006d40:	00075c63          	bgez	a4,80006d58 <__printf+0x410>
    80006d44:	f9040713          	addi	a4,s0,-112
    80006d48:	00f70733          	add	a4,a4,a5
    80006d4c:	02d00693          	li	a3,45
    80006d50:	fed70823          	sb	a3,-16(a4)
    80006d54:	00078c93          	mv	s9,a5
    80006d58:	f8040793          	addi	a5,s0,-128
    80006d5c:	01978cb3          	add	s9,a5,s9
    80006d60:	f7f40d13          	addi	s10,s0,-129
    80006d64:	000cc503          	lbu	a0,0(s9)
    80006d68:	fffc8c93          	addi	s9,s9,-1
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	9f8080e7          	jalr	-1544(ra) # 80006764 <consputc>
    80006d74:	ff9d18e3          	bne	s10,s9,80006d64 <__printf+0x41c>
    80006d78:	0100006f          	j	80006d88 <__printf+0x440>
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	9e8080e7          	jalr	-1560(ra) # 80006764 <consputc>
    80006d84:	000c8493          	mv	s1,s9
    80006d88:	00094503          	lbu	a0,0(s2)
    80006d8c:	c60510e3          	bnez	a0,800069ec <__printf+0xa4>
    80006d90:	e40c0ee3          	beqz	s8,80006bec <__printf+0x2a4>
    80006d94:	00005517          	auipc	a0,0x5
    80006d98:	a6c50513          	addi	a0,a0,-1428 # 8000b800 <pr>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	94c080e7          	jalr	-1716(ra) # 800076e8 <release>
    80006da4:	e49ff06f          	j	80006bec <__printf+0x2a4>
    80006da8:	f7843783          	ld	a5,-136(s0)
    80006dac:	03000513          	li	a0,48
    80006db0:	01000d13          	li	s10,16
    80006db4:	00878713          	addi	a4,a5,8
    80006db8:	0007bc83          	ld	s9,0(a5)
    80006dbc:	f6e43c23          	sd	a4,-136(s0)
    80006dc0:	00000097          	auipc	ra,0x0
    80006dc4:	9a4080e7          	jalr	-1628(ra) # 80006764 <consputc>
    80006dc8:	07800513          	li	a0,120
    80006dcc:	00000097          	auipc	ra,0x0
    80006dd0:	998080e7          	jalr	-1640(ra) # 80006764 <consputc>
    80006dd4:	00001d97          	auipc	s11,0x1
    80006dd8:	6d4d8d93          	addi	s11,s11,1748 # 800084a8 <digits>
    80006ddc:	03ccd793          	srli	a5,s9,0x3c
    80006de0:	00fd87b3          	add	a5,s11,a5
    80006de4:	0007c503          	lbu	a0,0(a5)
    80006de8:	fffd0d1b          	addiw	s10,s10,-1
    80006dec:	004c9c93          	slli	s9,s9,0x4
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	974080e7          	jalr	-1676(ra) # 80006764 <consputc>
    80006df8:	fe0d12e3          	bnez	s10,80006ddc <__printf+0x494>
    80006dfc:	f8dff06f          	j	80006d88 <__printf+0x440>
    80006e00:	f7843783          	ld	a5,-136(s0)
    80006e04:	0007bc83          	ld	s9,0(a5)
    80006e08:	00878793          	addi	a5,a5,8
    80006e0c:	f6f43c23          	sd	a5,-136(s0)
    80006e10:	000c9a63          	bnez	s9,80006e24 <__printf+0x4dc>
    80006e14:	1080006f          	j	80006f1c <__printf+0x5d4>
    80006e18:	001c8c93          	addi	s9,s9,1
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	948080e7          	jalr	-1720(ra) # 80006764 <consputc>
    80006e24:	000cc503          	lbu	a0,0(s9)
    80006e28:	fe0518e3          	bnez	a0,80006e18 <__printf+0x4d0>
    80006e2c:	f5dff06f          	j	80006d88 <__printf+0x440>
    80006e30:	02500513          	li	a0,37
    80006e34:	00000097          	auipc	ra,0x0
    80006e38:	930080e7          	jalr	-1744(ra) # 80006764 <consputc>
    80006e3c:	000c8513          	mv	a0,s9
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	924080e7          	jalr	-1756(ra) # 80006764 <consputc>
    80006e48:	f41ff06f          	j	80006d88 <__printf+0x440>
    80006e4c:	02500513          	li	a0,37
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	914080e7          	jalr	-1772(ra) # 80006764 <consputc>
    80006e58:	f31ff06f          	j	80006d88 <__printf+0x440>
    80006e5c:	00030513          	mv	a0,t1
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	7bc080e7          	jalr	1980(ra) # 8000761c <acquire>
    80006e68:	b4dff06f          	j	800069b4 <__printf+0x6c>
    80006e6c:	40c0053b          	negw	a0,a2
    80006e70:	00a00713          	li	a4,10
    80006e74:	02e576bb          	remuw	a3,a0,a4
    80006e78:	00001d97          	auipc	s11,0x1
    80006e7c:	630d8d93          	addi	s11,s11,1584 # 800084a8 <digits>
    80006e80:	ff700593          	li	a1,-9
    80006e84:	02069693          	slli	a3,a3,0x20
    80006e88:	0206d693          	srli	a3,a3,0x20
    80006e8c:	00dd86b3          	add	a3,s11,a3
    80006e90:	0006c683          	lbu	a3,0(a3)
    80006e94:	02e557bb          	divuw	a5,a0,a4
    80006e98:	f8d40023          	sb	a3,-128(s0)
    80006e9c:	10b65e63          	bge	a2,a1,80006fb8 <__printf+0x670>
    80006ea0:	06300593          	li	a1,99
    80006ea4:	02e7f6bb          	remuw	a3,a5,a4
    80006ea8:	02069693          	slli	a3,a3,0x20
    80006eac:	0206d693          	srli	a3,a3,0x20
    80006eb0:	00dd86b3          	add	a3,s11,a3
    80006eb4:	0006c683          	lbu	a3,0(a3)
    80006eb8:	02e7d73b          	divuw	a4,a5,a4
    80006ebc:	00200793          	li	a5,2
    80006ec0:	f8d400a3          	sb	a3,-127(s0)
    80006ec4:	bca5ece3          	bltu	a1,a0,80006a9c <__printf+0x154>
    80006ec8:	ce5ff06f          	j	80006bac <__printf+0x264>
    80006ecc:	40e007bb          	negw	a5,a4
    80006ed0:	00001d97          	auipc	s11,0x1
    80006ed4:	5d8d8d93          	addi	s11,s11,1496 # 800084a8 <digits>
    80006ed8:	00f7f693          	andi	a3,a5,15
    80006edc:	00dd86b3          	add	a3,s11,a3
    80006ee0:	0006c583          	lbu	a1,0(a3)
    80006ee4:	ff100613          	li	a2,-15
    80006ee8:	0047d69b          	srliw	a3,a5,0x4
    80006eec:	f8b40023          	sb	a1,-128(s0)
    80006ef0:	0047d59b          	srliw	a1,a5,0x4
    80006ef4:	0ac75e63          	bge	a4,a2,80006fb0 <__printf+0x668>
    80006ef8:	00f6f693          	andi	a3,a3,15
    80006efc:	00dd86b3          	add	a3,s11,a3
    80006f00:	0006c603          	lbu	a2,0(a3)
    80006f04:	00f00693          	li	a3,15
    80006f08:	0087d79b          	srliw	a5,a5,0x8
    80006f0c:	f8c400a3          	sb	a2,-127(s0)
    80006f10:	d8b6e4e3          	bltu	a3,a1,80006c98 <__printf+0x350>
    80006f14:	00200793          	li	a5,2
    80006f18:	e2dff06f          	j	80006d44 <__printf+0x3fc>
    80006f1c:	00001c97          	auipc	s9,0x1
    80006f20:	56cc8c93          	addi	s9,s9,1388 # 80008488 <CONSOLE_STATUS+0x478>
    80006f24:	02800513          	li	a0,40
    80006f28:	ef1ff06f          	j	80006e18 <__printf+0x4d0>
    80006f2c:	00700793          	li	a5,7
    80006f30:	00600c93          	li	s9,6
    80006f34:	e0dff06f          	j	80006d40 <__printf+0x3f8>
    80006f38:	00700793          	li	a5,7
    80006f3c:	00600c93          	li	s9,6
    80006f40:	c69ff06f          	j	80006ba8 <__printf+0x260>
    80006f44:	00300793          	li	a5,3
    80006f48:	00200c93          	li	s9,2
    80006f4c:	c5dff06f          	j	80006ba8 <__printf+0x260>
    80006f50:	00300793          	li	a5,3
    80006f54:	00200c93          	li	s9,2
    80006f58:	de9ff06f          	j	80006d40 <__printf+0x3f8>
    80006f5c:	00400793          	li	a5,4
    80006f60:	00300c93          	li	s9,3
    80006f64:	dddff06f          	j	80006d40 <__printf+0x3f8>
    80006f68:	00400793          	li	a5,4
    80006f6c:	00300c93          	li	s9,3
    80006f70:	c39ff06f          	j	80006ba8 <__printf+0x260>
    80006f74:	00500793          	li	a5,5
    80006f78:	00400c93          	li	s9,4
    80006f7c:	c2dff06f          	j	80006ba8 <__printf+0x260>
    80006f80:	00500793          	li	a5,5
    80006f84:	00400c93          	li	s9,4
    80006f88:	db9ff06f          	j	80006d40 <__printf+0x3f8>
    80006f8c:	00600793          	li	a5,6
    80006f90:	00500c93          	li	s9,5
    80006f94:	dadff06f          	j	80006d40 <__printf+0x3f8>
    80006f98:	00600793          	li	a5,6
    80006f9c:	00500c93          	li	s9,5
    80006fa0:	c09ff06f          	j	80006ba8 <__printf+0x260>
    80006fa4:	00800793          	li	a5,8
    80006fa8:	00700c93          	li	s9,7
    80006fac:	bfdff06f          	j	80006ba8 <__printf+0x260>
    80006fb0:	00100793          	li	a5,1
    80006fb4:	d91ff06f          	j	80006d44 <__printf+0x3fc>
    80006fb8:	00100793          	li	a5,1
    80006fbc:	bf1ff06f          	j	80006bac <__printf+0x264>
    80006fc0:	00900793          	li	a5,9
    80006fc4:	00800c93          	li	s9,8
    80006fc8:	be1ff06f          	j	80006ba8 <__printf+0x260>
    80006fcc:	00001517          	auipc	a0,0x1
    80006fd0:	4c450513          	addi	a0,a0,1220 # 80008490 <CONSOLE_STATUS+0x480>
    80006fd4:	00000097          	auipc	ra,0x0
    80006fd8:	918080e7          	jalr	-1768(ra) # 800068ec <panic>

0000000080006fdc <printfinit>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	00113c23          	sd	ra,24(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00005497          	auipc	s1,0x5
    80006ff4:	81048493          	addi	s1,s1,-2032 # 8000b800 <pr>
    80006ff8:	00048513          	mv	a0,s1
    80006ffc:	00001597          	auipc	a1,0x1
    80007000:	4a458593          	addi	a1,a1,1188 # 800084a0 <CONSOLE_STATUS+0x490>
    80007004:	00000097          	auipc	ra,0x0
    80007008:	5f4080e7          	jalr	1524(ra) # 800075f8 <initlock>
    8000700c:	01813083          	ld	ra,24(sp)
    80007010:	01013403          	ld	s0,16(sp)
    80007014:	0004ac23          	sw	zero,24(s1)
    80007018:	00813483          	ld	s1,8(sp)
    8000701c:	02010113          	addi	sp,sp,32
    80007020:	00008067          	ret

0000000080007024 <uartinit>:
    80007024:	ff010113          	addi	sp,sp,-16
    80007028:	00813423          	sd	s0,8(sp)
    8000702c:	01010413          	addi	s0,sp,16
    80007030:	100007b7          	lui	a5,0x10000
    80007034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007038:	f8000713          	li	a4,-128
    8000703c:	00e781a3          	sb	a4,3(a5)
    80007040:	00300713          	li	a4,3
    80007044:	00e78023          	sb	a4,0(a5)
    80007048:	000780a3          	sb	zero,1(a5)
    8000704c:	00e781a3          	sb	a4,3(a5)
    80007050:	00700693          	li	a3,7
    80007054:	00d78123          	sb	a3,2(a5)
    80007058:	00e780a3          	sb	a4,1(a5)
    8000705c:	00813403          	ld	s0,8(sp)
    80007060:	01010113          	addi	sp,sp,16
    80007064:	00008067          	ret

0000000080007068 <uartputc>:
    80007068:	00003797          	auipc	a5,0x3
    8000706c:	4b07a783          	lw	a5,1200(a5) # 8000a518 <panicked>
    80007070:	00078463          	beqz	a5,80007078 <uartputc+0x10>
    80007074:	0000006f          	j	80007074 <uartputc+0xc>
    80007078:	fd010113          	addi	sp,sp,-48
    8000707c:	02813023          	sd	s0,32(sp)
    80007080:	00913c23          	sd	s1,24(sp)
    80007084:	01213823          	sd	s2,16(sp)
    80007088:	01313423          	sd	s3,8(sp)
    8000708c:	02113423          	sd	ra,40(sp)
    80007090:	03010413          	addi	s0,sp,48
    80007094:	00003917          	auipc	s2,0x3
    80007098:	48c90913          	addi	s2,s2,1164 # 8000a520 <uart_tx_r>
    8000709c:	00093783          	ld	a5,0(s2)
    800070a0:	00003497          	auipc	s1,0x3
    800070a4:	48848493          	addi	s1,s1,1160 # 8000a528 <uart_tx_w>
    800070a8:	0004b703          	ld	a4,0(s1)
    800070ac:	02078693          	addi	a3,a5,32
    800070b0:	00050993          	mv	s3,a0
    800070b4:	02e69c63          	bne	a3,a4,800070ec <uartputc+0x84>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	834080e7          	jalr	-1996(ra) # 800078ec <push_on>
    800070c0:	00093783          	ld	a5,0(s2)
    800070c4:	0004b703          	ld	a4,0(s1)
    800070c8:	02078793          	addi	a5,a5,32
    800070cc:	00e79463          	bne	a5,a4,800070d4 <uartputc+0x6c>
    800070d0:	0000006f          	j	800070d0 <uartputc+0x68>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	88c080e7          	jalr	-1908(ra) # 80007960 <pop_on>
    800070dc:	00093783          	ld	a5,0(s2)
    800070e0:	0004b703          	ld	a4,0(s1)
    800070e4:	02078693          	addi	a3,a5,32
    800070e8:	fce688e3          	beq	a3,a4,800070b8 <uartputc+0x50>
    800070ec:	01f77693          	andi	a3,a4,31
    800070f0:	00004597          	auipc	a1,0x4
    800070f4:	73058593          	addi	a1,a1,1840 # 8000b820 <uart_tx_buf>
    800070f8:	00d586b3          	add	a3,a1,a3
    800070fc:	00170713          	addi	a4,a4,1
    80007100:	01368023          	sb	s3,0(a3)
    80007104:	00e4b023          	sd	a4,0(s1)
    80007108:	10000637          	lui	a2,0x10000
    8000710c:	02f71063          	bne	a4,a5,8000712c <uartputc+0xc4>
    80007110:	0340006f          	j	80007144 <uartputc+0xdc>
    80007114:	00074703          	lbu	a4,0(a4)
    80007118:	00f93023          	sd	a5,0(s2)
    8000711c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007120:	00093783          	ld	a5,0(s2)
    80007124:	0004b703          	ld	a4,0(s1)
    80007128:	00f70e63          	beq	a4,a5,80007144 <uartputc+0xdc>
    8000712c:	00564683          	lbu	a3,5(a2)
    80007130:	01f7f713          	andi	a4,a5,31
    80007134:	00e58733          	add	a4,a1,a4
    80007138:	0206f693          	andi	a3,a3,32
    8000713c:	00178793          	addi	a5,a5,1
    80007140:	fc069ae3          	bnez	a3,80007114 <uartputc+0xac>
    80007144:	02813083          	ld	ra,40(sp)
    80007148:	02013403          	ld	s0,32(sp)
    8000714c:	01813483          	ld	s1,24(sp)
    80007150:	01013903          	ld	s2,16(sp)
    80007154:	00813983          	ld	s3,8(sp)
    80007158:	03010113          	addi	sp,sp,48
    8000715c:	00008067          	ret

0000000080007160 <uartputc_sync>:
    80007160:	ff010113          	addi	sp,sp,-16
    80007164:	00813423          	sd	s0,8(sp)
    80007168:	01010413          	addi	s0,sp,16
    8000716c:	00003717          	auipc	a4,0x3
    80007170:	3ac72703          	lw	a4,940(a4) # 8000a518 <panicked>
    80007174:	02071663          	bnez	a4,800071a0 <uartputc_sync+0x40>
    80007178:	00050793          	mv	a5,a0
    8000717c:	100006b7          	lui	a3,0x10000
    80007180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007184:	02077713          	andi	a4,a4,32
    80007188:	fe070ce3          	beqz	a4,80007180 <uartputc_sync+0x20>
    8000718c:	0ff7f793          	andi	a5,a5,255
    80007190:	00f68023          	sb	a5,0(a3)
    80007194:	00813403          	ld	s0,8(sp)
    80007198:	01010113          	addi	sp,sp,16
    8000719c:	00008067          	ret
    800071a0:	0000006f          	j	800071a0 <uartputc_sync+0x40>

00000000800071a4 <uartstart>:
    800071a4:	ff010113          	addi	sp,sp,-16
    800071a8:	00813423          	sd	s0,8(sp)
    800071ac:	01010413          	addi	s0,sp,16
    800071b0:	00003617          	auipc	a2,0x3
    800071b4:	37060613          	addi	a2,a2,880 # 8000a520 <uart_tx_r>
    800071b8:	00003517          	auipc	a0,0x3
    800071bc:	37050513          	addi	a0,a0,880 # 8000a528 <uart_tx_w>
    800071c0:	00063783          	ld	a5,0(a2)
    800071c4:	00053703          	ld	a4,0(a0)
    800071c8:	04f70263          	beq	a4,a5,8000720c <uartstart+0x68>
    800071cc:	100005b7          	lui	a1,0x10000
    800071d0:	00004817          	auipc	a6,0x4
    800071d4:	65080813          	addi	a6,a6,1616 # 8000b820 <uart_tx_buf>
    800071d8:	01c0006f          	j	800071f4 <uartstart+0x50>
    800071dc:	0006c703          	lbu	a4,0(a3)
    800071e0:	00f63023          	sd	a5,0(a2)
    800071e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071e8:	00063783          	ld	a5,0(a2)
    800071ec:	00053703          	ld	a4,0(a0)
    800071f0:	00f70e63          	beq	a4,a5,8000720c <uartstart+0x68>
    800071f4:	01f7f713          	andi	a4,a5,31
    800071f8:	00e806b3          	add	a3,a6,a4
    800071fc:	0055c703          	lbu	a4,5(a1)
    80007200:	00178793          	addi	a5,a5,1
    80007204:	02077713          	andi	a4,a4,32
    80007208:	fc071ae3          	bnez	a4,800071dc <uartstart+0x38>
    8000720c:	00813403          	ld	s0,8(sp)
    80007210:	01010113          	addi	sp,sp,16
    80007214:	00008067          	ret

0000000080007218 <uartgetc>:
    80007218:	ff010113          	addi	sp,sp,-16
    8000721c:	00813423          	sd	s0,8(sp)
    80007220:	01010413          	addi	s0,sp,16
    80007224:	10000737          	lui	a4,0x10000
    80007228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000722c:	0017f793          	andi	a5,a5,1
    80007230:	00078c63          	beqz	a5,80007248 <uartgetc+0x30>
    80007234:	00074503          	lbu	a0,0(a4)
    80007238:	0ff57513          	andi	a0,a0,255
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	01010113          	addi	sp,sp,16
    80007244:	00008067          	ret
    80007248:	fff00513          	li	a0,-1
    8000724c:	ff1ff06f          	j	8000723c <uartgetc+0x24>

0000000080007250 <uartintr>:
    80007250:	100007b7          	lui	a5,0x10000
    80007254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007258:	0017f793          	andi	a5,a5,1
    8000725c:	0a078463          	beqz	a5,80007304 <uartintr+0xb4>
    80007260:	fe010113          	addi	sp,sp,-32
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00913423          	sd	s1,8(sp)
    8000726c:	00113c23          	sd	ra,24(sp)
    80007270:	02010413          	addi	s0,sp,32
    80007274:	100004b7          	lui	s1,0x10000
    80007278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000727c:	0ff57513          	andi	a0,a0,255
    80007280:	fffff097          	auipc	ra,0xfffff
    80007284:	534080e7          	jalr	1332(ra) # 800067b4 <consoleintr>
    80007288:	0054c783          	lbu	a5,5(s1)
    8000728c:	0017f793          	andi	a5,a5,1
    80007290:	fe0794e3          	bnez	a5,80007278 <uartintr+0x28>
    80007294:	00003617          	auipc	a2,0x3
    80007298:	28c60613          	addi	a2,a2,652 # 8000a520 <uart_tx_r>
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	28c50513          	addi	a0,a0,652 # 8000a528 <uart_tx_w>
    800072a4:	00063783          	ld	a5,0(a2)
    800072a8:	00053703          	ld	a4,0(a0)
    800072ac:	04f70263          	beq	a4,a5,800072f0 <uartintr+0xa0>
    800072b0:	100005b7          	lui	a1,0x10000
    800072b4:	00004817          	auipc	a6,0x4
    800072b8:	56c80813          	addi	a6,a6,1388 # 8000b820 <uart_tx_buf>
    800072bc:	01c0006f          	j	800072d8 <uartintr+0x88>
    800072c0:	0006c703          	lbu	a4,0(a3)
    800072c4:	00f63023          	sd	a5,0(a2)
    800072c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072cc:	00063783          	ld	a5,0(a2)
    800072d0:	00053703          	ld	a4,0(a0)
    800072d4:	00f70e63          	beq	a4,a5,800072f0 <uartintr+0xa0>
    800072d8:	01f7f713          	andi	a4,a5,31
    800072dc:	00e806b3          	add	a3,a6,a4
    800072e0:	0055c703          	lbu	a4,5(a1)
    800072e4:	00178793          	addi	a5,a5,1
    800072e8:	02077713          	andi	a4,a4,32
    800072ec:	fc071ae3          	bnez	a4,800072c0 <uartintr+0x70>
    800072f0:	01813083          	ld	ra,24(sp)
    800072f4:	01013403          	ld	s0,16(sp)
    800072f8:	00813483          	ld	s1,8(sp)
    800072fc:	02010113          	addi	sp,sp,32
    80007300:	00008067          	ret
    80007304:	00003617          	auipc	a2,0x3
    80007308:	21c60613          	addi	a2,a2,540 # 8000a520 <uart_tx_r>
    8000730c:	00003517          	auipc	a0,0x3
    80007310:	21c50513          	addi	a0,a0,540 # 8000a528 <uart_tx_w>
    80007314:	00063783          	ld	a5,0(a2)
    80007318:	00053703          	ld	a4,0(a0)
    8000731c:	04f70263          	beq	a4,a5,80007360 <uartintr+0x110>
    80007320:	100005b7          	lui	a1,0x10000
    80007324:	00004817          	auipc	a6,0x4
    80007328:	4fc80813          	addi	a6,a6,1276 # 8000b820 <uart_tx_buf>
    8000732c:	01c0006f          	j	80007348 <uartintr+0xf8>
    80007330:	0006c703          	lbu	a4,0(a3)
    80007334:	00f63023          	sd	a5,0(a2)
    80007338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000733c:	00063783          	ld	a5,0(a2)
    80007340:	00053703          	ld	a4,0(a0)
    80007344:	02f70063          	beq	a4,a5,80007364 <uartintr+0x114>
    80007348:	01f7f713          	andi	a4,a5,31
    8000734c:	00e806b3          	add	a3,a6,a4
    80007350:	0055c703          	lbu	a4,5(a1)
    80007354:	00178793          	addi	a5,a5,1
    80007358:	02077713          	andi	a4,a4,32
    8000735c:	fc071ae3          	bnez	a4,80007330 <uartintr+0xe0>
    80007360:	00008067          	ret
    80007364:	00008067          	ret

0000000080007368 <kinit>:
    80007368:	fc010113          	addi	sp,sp,-64
    8000736c:	02913423          	sd	s1,40(sp)
    80007370:	fffff7b7          	lui	a5,0xfffff
    80007374:	00005497          	auipc	s1,0x5
    80007378:	4cb48493          	addi	s1,s1,1227 # 8000c83f <end+0xfff>
    8000737c:	02813823          	sd	s0,48(sp)
    80007380:	01313c23          	sd	s3,24(sp)
    80007384:	00f4f4b3          	and	s1,s1,a5
    80007388:	02113c23          	sd	ra,56(sp)
    8000738c:	03213023          	sd	s2,32(sp)
    80007390:	01413823          	sd	s4,16(sp)
    80007394:	01513423          	sd	s5,8(sp)
    80007398:	04010413          	addi	s0,sp,64
    8000739c:	000017b7          	lui	a5,0x1
    800073a0:	01100993          	li	s3,17
    800073a4:	00f487b3          	add	a5,s1,a5
    800073a8:	01b99993          	slli	s3,s3,0x1b
    800073ac:	06f9e063          	bltu	s3,a5,8000740c <kinit+0xa4>
    800073b0:	00004a97          	auipc	s5,0x4
    800073b4:	490a8a93          	addi	s5,s5,1168 # 8000b840 <end>
    800073b8:	0754ec63          	bltu	s1,s5,80007430 <kinit+0xc8>
    800073bc:	0734fa63          	bgeu	s1,s3,80007430 <kinit+0xc8>
    800073c0:	00088a37          	lui	s4,0x88
    800073c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800073c8:	00003917          	auipc	s2,0x3
    800073cc:	16890913          	addi	s2,s2,360 # 8000a530 <kmem>
    800073d0:	00ca1a13          	slli	s4,s4,0xc
    800073d4:	0140006f          	j	800073e8 <kinit+0x80>
    800073d8:	000017b7          	lui	a5,0x1
    800073dc:	00f484b3          	add	s1,s1,a5
    800073e0:	0554e863          	bltu	s1,s5,80007430 <kinit+0xc8>
    800073e4:	0534f663          	bgeu	s1,s3,80007430 <kinit+0xc8>
    800073e8:	00001637          	lui	a2,0x1
    800073ec:	00100593          	li	a1,1
    800073f0:	00048513          	mv	a0,s1
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	5e4080e7          	jalr	1508(ra) # 800079d8 <__memset>
    800073fc:	00093783          	ld	a5,0(s2)
    80007400:	00f4b023          	sd	a5,0(s1)
    80007404:	00993023          	sd	s1,0(s2)
    80007408:	fd4498e3          	bne	s1,s4,800073d8 <kinit+0x70>
    8000740c:	03813083          	ld	ra,56(sp)
    80007410:	03013403          	ld	s0,48(sp)
    80007414:	02813483          	ld	s1,40(sp)
    80007418:	02013903          	ld	s2,32(sp)
    8000741c:	01813983          	ld	s3,24(sp)
    80007420:	01013a03          	ld	s4,16(sp)
    80007424:	00813a83          	ld	s5,8(sp)
    80007428:	04010113          	addi	sp,sp,64
    8000742c:	00008067          	ret
    80007430:	00001517          	auipc	a0,0x1
    80007434:	09050513          	addi	a0,a0,144 # 800084c0 <digits+0x18>
    80007438:	fffff097          	auipc	ra,0xfffff
    8000743c:	4b4080e7          	jalr	1204(ra) # 800068ec <panic>

0000000080007440 <freerange>:
    80007440:	fc010113          	addi	sp,sp,-64
    80007444:	000017b7          	lui	a5,0x1
    80007448:	02913423          	sd	s1,40(sp)
    8000744c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007450:	009504b3          	add	s1,a0,s1
    80007454:	fffff537          	lui	a0,0xfffff
    80007458:	02813823          	sd	s0,48(sp)
    8000745c:	02113c23          	sd	ra,56(sp)
    80007460:	03213023          	sd	s2,32(sp)
    80007464:	01313c23          	sd	s3,24(sp)
    80007468:	01413823          	sd	s4,16(sp)
    8000746c:	01513423          	sd	s5,8(sp)
    80007470:	01613023          	sd	s6,0(sp)
    80007474:	04010413          	addi	s0,sp,64
    80007478:	00a4f4b3          	and	s1,s1,a0
    8000747c:	00f487b3          	add	a5,s1,a5
    80007480:	06f5e463          	bltu	a1,a5,800074e8 <freerange+0xa8>
    80007484:	00004a97          	auipc	s5,0x4
    80007488:	3bca8a93          	addi	s5,s5,956 # 8000b840 <end>
    8000748c:	0954e263          	bltu	s1,s5,80007510 <freerange+0xd0>
    80007490:	01100993          	li	s3,17
    80007494:	01b99993          	slli	s3,s3,0x1b
    80007498:	0734fc63          	bgeu	s1,s3,80007510 <freerange+0xd0>
    8000749c:	00058a13          	mv	s4,a1
    800074a0:	00003917          	auipc	s2,0x3
    800074a4:	09090913          	addi	s2,s2,144 # 8000a530 <kmem>
    800074a8:	00002b37          	lui	s6,0x2
    800074ac:	0140006f          	j	800074c0 <freerange+0x80>
    800074b0:	000017b7          	lui	a5,0x1
    800074b4:	00f484b3          	add	s1,s1,a5
    800074b8:	0554ec63          	bltu	s1,s5,80007510 <freerange+0xd0>
    800074bc:	0534fa63          	bgeu	s1,s3,80007510 <freerange+0xd0>
    800074c0:	00001637          	lui	a2,0x1
    800074c4:	00100593          	li	a1,1
    800074c8:	00048513          	mv	a0,s1
    800074cc:	00000097          	auipc	ra,0x0
    800074d0:	50c080e7          	jalr	1292(ra) # 800079d8 <__memset>
    800074d4:	00093703          	ld	a4,0(s2)
    800074d8:	016487b3          	add	a5,s1,s6
    800074dc:	00e4b023          	sd	a4,0(s1)
    800074e0:	00993023          	sd	s1,0(s2)
    800074e4:	fcfa76e3          	bgeu	s4,a5,800074b0 <freerange+0x70>
    800074e8:	03813083          	ld	ra,56(sp)
    800074ec:	03013403          	ld	s0,48(sp)
    800074f0:	02813483          	ld	s1,40(sp)
    800074f4:	02013903          	ld	s2,32(sp)
    800074f8:	01813983          	ld	s3,24(sp)
    800074fc:	01013a03          	ld	s4,16(sp)
    80007500:	00813a83          	ld	s5,8(sp)
    80007504:	00013b03          	ld	s6,0(sp)
    80007508:	04010113          	addi	sp,sp,64
    8000750c:	00008067          	ret
    80007510:	00001517          	auipc	a0,0x1
    80007514:	fb050513          	addi	a0,a0,-80 # 800084c0 <digits+0x18>
    80007518:	fffff097          	auipc	ra,0xfffff
    8000751c:	3d4080e7          	jalr	980(ra) # 800068ec <panic>

0000000080007520 <kfree>:
    80007520:	fe010113          	addi	sp,sp,-32
    80007524:	00813823          	sd	s0,16(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	00913423          	sd	s1,8(sp)
    80007530:	02010413          	addi	s0,sp,32
    80007534:	03451793          	slli	a5,a0,0x34
    80007538:	04079c63          	bnez	a5,80007590 <kfree+0x70>
    8000753c:	00004797          	auipc	a5,0x4
    80007540:	30478793          	addi	a5,a5,772 # 8000b840 <end>
    80007544:	00050493          	mv	s1,a0
    80007548:	04f56463          	bltu	a0,a5,80007590 <kfree+0x70>
    8000754c:	01100793          	li	a5,17
    80007550:	01b79793          	slli	a5,a5,0x1b
    80007554:	02f57e63          	bgeu	a0,a5,80007590 <kfree+0x70>
    80007558:	00001637          	lui	a2,0x1
    8000755c:	00100593          	li	a1,1
    80007560:	00000097          	auipc	ra,0x0
    80007564:	478080e7          	jalr	1144(ra) # 800079d8 <__memset>
    80007568:	00003797          	auipc	a5,0x3
    8000756c:	fc878793          	addi	a5,a5,-56 # 8000a530 <kmem>
    80007570:	0007b703          	ld	a4,0(a5)
    80007574:	01813083          	ld	ra,24(sp)
    80007578:	01013403          	ld	s0,16(sp)
    8000757c:	00e4b023          	sd	a4,0(s1)
    80007580:	0097b023          	sd	s1,0(a5)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	02010113          	addi	sp,sp,32
    8000758c:	00008067          	ret
    80007590:	00001517          	auipc	a0,0x1
    80007594:	f3050513          	addi	a0,a0,-208 # 800084c0 <digits+0x18>
    80007598:	fffff097          	auipc	ra,0xfffff
    8000759c:	354080e7          	jalr	852(ra) # 800068ec <panic>

00000000800075a0 <kalloc>:
    800075a0:	fe010113          	addi	sp,sp,-32
    800075a4:	00813823          	sd	s0,16(sp)
    800075a8:	00913423          	sd	s1,8(sp)
    800075ac:	00113c23          	sd	ra,24(sp)
    800075b0:	02010413          	addi	s0,sp,32
    800075b4:	00003797          	auipc	a5,0x3
    800075b8:	f7c78793          	addi	a5,a5,-132 # 8000a530 <kmem>
    800075bc:	0007b483          	ld	s1,0(a5)
    800075c0:	02048063          	beqz	s1,800075e0 <kalloc+0x40>
    800075c4:	0004b703          	ld	a4,0(s1)
    800075c8:	00001637          	lui	a2,0x1
    800075cc:	00500593          	li	a1,5
    800075d0:	00048513          	mv	a0,s1
    800075d4:	00e7b023          	sd	a4,0(a5)
    800075d8:	00000097          	auipc	ra,0x0
    800075dc:	400080e7          	jalr	1024(ra) # 800079d8 <__memset>
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	01013403          	ld	s0,16(sp)
    800075e8:	00048513          	mv	a0,s1
    800075ec:	00813483          	ld	s1,8(sp)
    800075f0:	02010113          	addi	sp,sp,32
    800075f4:	00008067          	ret

00000000800075f8 <initlock>:
    800075f8:	ff010113          	addi	sp,sp,-16
    800075fc:	00813423          	sd	s0,8(sp)
    80007600:	01010413          	addi	s0,sp,16
    80007604:	00813403          	ld	s0,8(sp)
    80007608:	00b53423          	sd	a1,8(a0)
    8000760c:	00052023          	sw	zero,0(a0)
    80007610:	00053823          	sd	zero,16(a0)
    80007614:	01010113          	addi	sp,sp,16
    80007618:	00008067          	ret

000000008000761c <acquire>:
    8000761c:	fe010113          	addi	sp,sp,-32
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00913423          	sd	s1,8(sp)
    80007628:	00113c23          	sd	ra,24(sp)
    8000762c:	01213023          	sd	s2,0(sp)
    80007630:	02010413          	addi	s0,sp,32
    80007634:	00050493          	mv	s1,a0
    80007638:	10002973          	csrr	s2,sstatus
    8000763c:	100027f3          	csrr	a5,sstatus
    80007640:	ffd7f793          	andi	a5,a5,-3
    80007644:	10079073          	csrw	sstatus,a5
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	8e0080e7          	jalr	-1824(ra) # 80005f28 <mycpu>
    80007650:	07852783          	lw	a5,120(a0)
    80007654:	06078e63          	beqz	a5,800076d0 <acquire+0xb4>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	8d0080e7          	jalr	-1840(ra) # 80005f28 <mycpu>
    80007660:	07852783          	lw	a5,120(a0)
    80007664:	0004a703          	lw	a4,0(s1)
    80007668:	0017879b          	addiw	a5,a5,1
    8000766c:	06f52c23          	sw	a5,120(a0)
    80007670:	04071063          	bnez	a4,800076b0 <acquire+0x94>
    80007674:	00100713          	li	a4,1
    80007678:	00070793          	mv	a5,a4
    8000767c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007680:	0007879b          	sext.w	a5,a5
    80007684:	fe079ae3          	bnez	a5,80007678 <acquire+0x5c>
    80007688:	0ff0000f          	fence
    8000768c:	fffff097          	auipc	ra,0xfffff
    80007690:	89c080e7          	jalr	-1892(ra) # 80005f28 <mycpu>
    80007694:	01813083          	ld	ra,24(sp)
    80007698:	01013403          	ld	s0,16(sp)
    8000769c:	00a4b823          	sd	a0,16(s1)
    800076a0:	00013903          	ld	s2,0(sp)
    800076a4:	00813483          	ld	s1,8(sp)
    800076a8:	02010113          	addi	sp,sp,32
    800076ac:	00008067          	ret
    800076b0:	0104b903          	ld	s2,16(s1)
    800076b4:	fffff097          	auipc	ra,0xfffff
    800076b8:	874080e7          	jalr	-1932(ra) # 80005f28 <mycpu>
    800076bc:	faa91ce3          	bne	s2,a0,80007674 <acquire+0x58>
    800076c0:	00001517          	auipc	a0,0x1
    800076c4:	e0850513          	addi	a0,a0,-504 # 800084c8 <digits+0x20>
    800076c8:	fffff097          	auipc	ra,0xfffff
    800076cc:	224080e7          	jalr	548(ra) # 800068ec <panic>
    800076d0:	00195913          	srli	s2,s2,0x1
    800076d4:	fffff097          	auipc	ra,0xfffff
    800076d8:	854080e7          	jalr	-1964(ra) # 80005f28 <mycpu>
    800076dc:	00197913          	andi	s2,s2,1
    800076e0:	07252e23          	sw	s2,124(a0)
    800076e4:	f75ff06f          	j	80007658 <acquire+0x3c>

00000000800076e8 <release>:
    800076e8:	fe010113          	addi	sp,sp,-32
    800076ec:	00813823          	sd	s0,16(sp)
    800076f0:	00113c23          	sd	ra,24(sp)
    800076f4:	00913423          	sd	s1,8(sp)
    800076f8:	01213023          	sd	s2,0(sp)
    800076fc:	02010413          	addi	s0,sp,32
    80007700:	00052783          	lw	a5,0(a0)
    80007704:	00079a63          	bnez	a5,80007718 <release+0x30>
    80007708:	00001517          	auipc	a0,0x1
    8000770c:	dc850513          	addi	a0,a0,-568 # 800084d0 <digits+0x28>
    80007710:	fffff097          	auipc	ra,0xfffff
    80007714:	1dc080e7          	jalr	476(ra) # 800068ec <panic>
    80007718:	01053903          	ld	s2,16(a0)
    8000771c:	00050493          	mv	s1,a0
    80007720:	fffff097          	auipc	ra,0xfffff
    80007724:	808080e7          	jalr	-2040(ra) # 80005f28 <mycpu>
    80007728:	fea910e3          	bne	s2,a0,80007708 <release+0x20>
    8000772c:	0004b823          	sd	zero,16(s1)
    80007730:	0ff0000f          	fence
    80007734:	0f50000f          	fence	iorw,ow
    80007738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000773c:	ffffe097          	auipc	ra,0xffffe
    80007740:	7ec080e7          	jalr	2028(ra) # 80005f28 <mycpu>
    80007744:	100027f3          	csrr	a5,sstatus
    80007748:	0027f793          	andi	a5,a5,2
    8000774c:	04079a63          	bnez	a5,800077a0 <release+0xb8>
    80007750:	07852783          	lw	a5,120(a0)
    80007754:	02f05e63          	blez	a5,80007790 <release+0xa8>
    80007758:	fff7871b          	addiw	a4,a5,-1
    8000775c:	06e52c23          	sw	a4,120(a0)
    80007760:	00071c63          	bnez	a4,80007778 <release+0x90>
    80007764:	07c52783          	lw	a5,124(a0)
    80007768:	00078863          	beqz	a5,80007778 <release+0x90>
    8000776c:	100027f3          	csrr	a5,sstatus
    80007770:	0027e793          	ori	a5,a5,2
    80007774:	10079073          	csrw	sstatus,a5
    80007778:	01813083          	ld	ra,24(sp)
    8000777c:	01013403          	ld	s0,16(sp)
    80007780:	00813483          	ld	s1,8(sp)
    80007784:	00013903          	ld	s2,0(sp)
    80007788:	02010113          	addi	sp,sp,32
    8000778c:	00008067          	ret
    80007790:	00001517          	auipc	a0,0x1
    80007794:	d6050513          	addi	a0,a0,-672 # 800084f0 <digits+0x48>
    80007798:	fffff097          	auipc	ra,0xfffff
    8000779c:	154080e7          	jalr	340(ra) # 800068ec <panic>
    800077a0:	00001517          	auipc	a0,0x1
    800077a4:	d3850513          	addi	a0,a0,-712 # 800084d8 <digits+0x30>
    800077a8:	fffff097          	auipc	ra,0xfffff
    800077ac:	144080e7          	jalr	324(ra) # 800068ec <panic>

00000000800077b0 <holding>:
    800077b0:	00052783          	lw	a5,0(a0)
    800077b4:	00079663          	bnez	a5,800077c0 <holding+0x10>
    800077b8:	00000513          	li	a0,0
    800077bc:	00008067          	ret
    800077c0:	fe010113          	addi	sp,sp,-32
    800077c4:	00813823          	sd	s0,16(sp)
    800077c8:	00913423          	sd	s1,8(sp)
    800077cc:	00113c23          	sd	ra,24(sp)
    800077d0:	02010413          	addi	s0,sp,32
    800077d4:	01053483          	ld	s1,16(a0)
    800077d8:	ffffe097          	auipc	ra,0xffffe
    800077dc:	750080e7          	jalr	1872(ra) # 80005f28 <mycpu>
    800077e0:	01813083          	ld	ra,24(sp)
    800077e4:	01013403          	ld	s0,16(sp)
    800077e8:	40a48533          	sub	a0,s1,a0
    800077ec:	00153513          	seqz	a0,a0
    800077f0:	00813483          	ld	s1,8(sp)
    800077f4:	02010113          	addi	sp,sp,32
    800077f8:	00008067          	ret

00000000800077fc <push_off>:
    800077fc:	fe010113          	addi	sp,sp,-32
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00113c23          	sd	ra,24(sp)
    80007808:	00913423          	sd	s1,8(sp)
    8000780c:	02010413          	addi	s0,sp,32
    80007810:	100024f3          	csrr	s1,sstatus
    80007814:	100027f3          	csrr	a5,sstatus
    80007818:	ffd7f793          	andi	a5,a5,-3
    8000781c:	10079073          	csrw	sstatus,a5
    80007820:	ffffe097          	auipc	ra,0xffffe
    80007824:	708080e7          	jalr	1800(ra) # 80005f28 <mycpu>
    80007828:	07852783          	lw	a5,120(a0)
    8000782c:	02078663          	beqz	a5,80007858 <push_off+0x5c>
    80007830:	ffffe097          	auipc	ra,0xffffe
    80007834:	6f8080e7          	jalr	1784(ra) # 80005f28 <mycpu>
    80007838:	07852783          	lw	a5,120(a0)
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	0017879b          	addiw	a5,a5,1
    80007848:	06f52c23          	sw	a5,120(a0)
    8000784c:	00813483          	ld	s1,8(sp)
    80007850:	02010113          	addi	sp,sp,32
    80007854:	00008067          	ret
    80007858:	0014d493          	srli	s1,s1,0x1
    8000785c:	ffffe097          	auipc	ra,0xffffe
    80007860:	6cc080e7          	jalr	1740(ra) # 80005f28 <mycpu>
    80007864:	0014f493          	andi	s1,s1,1
    80007868:	06952e23          	sw	s1,124(a0)
    8000786c:	fc5ff06f          	j	80007830 <push_off+0x34>

0000000080007870 <pop_off>:
    80007870:	ff010113          	addi	sp,sp,-16
    80007874:	00813023          	sd	s0,0(sp)
    80007878:	00113423          	sd	ra,8(sp)
    8000787c:	01010413          	addi	s0,sp,16
    80007880:	ffffe097          	auipc	ra,0xffffe
    80007884:	6a8080e7          	jalr	1704(ra) # 80005f28 <mycpu>
    80007888:	100027f3          	csrr	a5,sstatus
    8000788c:	0027f793          	andi	a5,a5,2
    80007890:	04079663          	bnez	a5,800078dc <pop_off+0x6c>
    80007894:	07852783          	lw	a5,120(a0)
    80007898:	02f05a63          	blez	a5,800078cc <pop_off+0x5c>
    8000789c:	fff7871b          	addiw	a4,a5,-1
    800078a0:	06e52c23          	sw	a4,120(a0)
    800078a4:	00071c63          	bnez	a4,800078bc <pop_off+0x4c>
    800078a8:	07c52783          	lw	a5,124(a0)
    800078ac:	00078863          	beqz	a5,800078bc <pop_off+0x4c>
    800078b0:	100027f3          	csrr	a5,sstatus
    800078b4:	0027e793          	ori	a5,a5,2
    800078b8:	10079073          	csrw	sstatus,a5
    800078bc:	00813083          	ld	ra,8(sp)
    800078c0:	00013403          	ld	s0,0(sp)
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00008067          	ret
    800078cc:	00001517          	auipc	a0,0x1
    800078d0:	c2450513          	addi	a0,a0,-988 # 800084f0 <digits+0x48>
    800078d4:	fffff097          	auipc	ra,0xfffff
    800078d8:	018080e7          	jalr	24(ra) # 800068ec <panic>
    800078dc:	00001517          	auipc	a0,0x1
    800078e0:	bfc50513          	addi	a0,a0,-1028 # 800084d8 <digits+0x30>
    800078e4:	fffff097          	auipc	ra,0xfffff
    800078e8:	008080e7          	jalr	8(ra) # 800068ec <panic>

00000000800078ec <push_on>:
    800078ec:	fe010113          	addi	sp,sp,-32
    800078f0:	00813823          	sd	s0,16(sp)
    800078f4:	00113c23          	sd	ra,24(sp)
    800078f8:	00913423          	sd	s1,8(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	100024f3          	csrr	s1,sstatus
    80007904:	100027f3          	csrr	a5,sstatus
    80007908:	0027e793          	ori	a5,a5,2
    8000790c:	10079073          	csrw	sstatus,a5
    80007910:	ffffe097          	auipc	ra,0xffffe
    80007914:	618080e7          	jalr	1560(ra) # 80005f28 <mycpu>
    80007918:	07852783          	lw	a5,120(a0)
    8000791c:	02078663          	beqz	a5,80007948 <push_on+0x5c>
    80007920:	ffffe097          	auipc	ra,0xffffe
    80007924:	608080e7          	jalr	1544(ra) # 80005f28 <mycpu>
    80007928:	07852783          	lw	a5,120(a0)
    8000792c:	01813083          	ld	ra,24(sp)
    80007930:	01013403          	ld	s0,16(sp)
    80007934:	0017879b          	addiw	a5,a5,1
    80007938:	06f52c23          	sw	a5,120(a0)
    8000793c:	00813483          	ld	s1,8(sp)
    80007940:	02010113          	addi	sp,sp,32
    80007944:	00008067          	ret
    80007948:	0014d493          	srli	s1,s1,0x1
    8000794c:	ffffe097          	auipc	ra,0xffffe
    80007950:	5dc080e7          	jalr	1500(ra) # 80005f28 <mycpu>
    80007954:	0014f493          	andi	s1,s1,1
    80007958:	06952e23          	sw	s1,124(a0)
    8000795c:	fc5ff06f          	j	80007920 <push_on+0x34>

0000000080007960 <pop_on>:
    80007960:	ff010113          	addi	sp,sp,-16
    80007964:	00813023          	sd	s0,0(sp)
    80007968:	00113423          	sd	ra,8(sp)
    8000796c:	01010413          	addi	s0,sp,16
    80007970:	ffffe097          	auipc	ra,0xffffe
    80007974:	5b8080e7          	jalr	1464(ra) # 80005f28 <mycpu>
    80007978:	100027f3          	csrr	a5,sstatus
    8000797c:	0027f793          	andi	a5,a5,2
    80007980:	04078463          	beqz	a5,800079c8 <pop_on+0x68>
    80007984:	07852783          	lw	a5,120(a0)
    80007988:	02f05863          	blez	a5,800079b8 <pop_on+0x58>
    8000798c:	fff7879b          	addiw	a5,a5,-1
    80007990:	06f52c23          	sw	a5,120(a0)
    80007994:	07853783          	ld	a5,120(a0)
    80007998:	00079863          	bnez	a5,800079a8 <pop_on+0x48>
    8000799c:	100027f3          	csrr	a5,sstatus
    800079a0:	ffd7f793          	andi	a5,a5,-3
    800079a4:	10079073          	csrw	sstatus,a5
    800079a8:	00813083          	ld	ra,8(sp)
    800079ac:	00013403          	ld	s0,0(sp)
    800079b0:	01010113          	addi	sp,sp,16
    800079b4:	00008067          	ret
    800079b8:	00001517          	auipc	a0,0x1
    800079bc:	b6050513          	addi	a0,a0,-1184 # 80008518 <digits+0x70>
    800079c0:	fffff097          	auipc	ra,0xfffff
    800079c4:	f2c080e7          	jalr	-212(ra) # 800068ec <panic>
    800079c8:	00001517          	auipc	a0,0x1
    800079cc:	b3050513          	addi	a0,a0,-1232 # 800084f8 <digits+0x50>
    800079d0:	fffff097          	auipc	ra,0xfffff
    800079d4:	f1c080e7          	jalr	-228(ra) # 800068ec <panic>

00000000800079d8 <__memset>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813423          	sd	s0,8(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	1a060e63          	beqz	a2,80007ba0 <__memset+0x1c8>
    800079e8:	40a007b3          	neg	a5,a0
    800079ec:	0077f793          	andi	a5,a5,7
    800079f0:	00778693          	addi	a3,a5,7
    800079f4:	00b00813          	li	a6,11
    800079f8:	0ff5f593          	andi	a1,a1,255
    800079fc:	fff6071b          	addiw	a4,a2,-1
    80007a00:	1b06e663          	bltu	a3,a6,80007bac <__memset+0x1d4>
    80007a04:	1cd76463          	bltu	a4,a3,80007bcc <__memset+0x1f4>
    80007a08:	1a078e63          	beqz	a5,80007bc4 <__memset+0x1ec>
    80007a0c:	00b50023          	sb	a1,0(a0)
    80007a10:	00100713          	li	a4,1
    80007a14:	1ae78463          	beq	a5,a4,80007bbc <__memset+0x1e4>
    80007a18:	00b500a3          	sb	a1,1(a0)
    80007a1c:	00200713          	li	a4,2
    80007a20:	1ae78a63          	beq	a5,a4,80007bd4 <__memset+0x1fc>
    80007a24:	00b50123          	sb	a1,2(a0)
    80007a28:	00300713          	li	a4,3
    80007a2c:	18e78463          	beq	a5,a4,80007bb4 <__memset+0x1dc>
    80007a30:	00b501a3          	sb	a1,3(a0)
    80007a34:	00400713          	li	a4,4
    80007a38:	1ae78263          	beq	a5,a4,80007bdc <__memset+0x204>
    80007a3c:	00b50223          	sb	a1,4(a0)
    80007a40:	00500713          	li	a4,5
    80007a44:	1ae78063          	beq	a5,a4,80007be4 <__memset+0x20c>
    80007a48:	00b502a3          	sb	a1,5(a0)
    80007a4c:	00700713          	li	a4,7
    80007a50:	18e79e63          	bne	a5,a4,80007bec <__memset+0x214>
    80007a54:	00b50323          	sb	a1,6(a0)
    80007a58:	00700e93          	li	t4,7
    80007a5c:	00859713          	slli	a4,a1,0x8
    80007a60:	00e5e733          	or	a4,a1,a4
    80007a64:	01059e13          	slli	t3,a1,0x10
    80007a68:	01c76e33          	or	t3,a4,t3
    80007a6c:	01859313          	slli	t1,a1,0x18
    80007a70:	006e6333          	or	t1,t3,t1
    80007a74:	02059893          	slli	a7,a1,0x20
    80007a78:	40f60e3b          	subw	t3,a2,a5
    80007a7c:	011368b3          	or	a7,t1,a7
    80007a80:	02859813          	slli	a6,a1,0x28
    80007a84:	0108e833          	or	a6,a7,a6
    80007a88:	03059693          	slli	a3,a1,0x30
    80007a8c:	003e589b          	srliw	a7,t3,0x3
    80007a90:	00d866b3          	or	a3,a6,a3
    80007a94:	03859713          	slli	a4,a1,0x38
    80007a98:	00389813          	slli	a6,a7,0x3
    80007a9c:	00f507b3          	add	a5,a0,a5
    80007aa0:	00e6e733          	or	a4,a3,a4
    80007aa4:	000e089b          	sext.w	a7,t3
    80007aa8:	00f806b3          	add	a3,a6,a5
    80007aac:	00e7b023          	sd	a4,0(a5)
    80007ab0:	00878793          	addi	a5,a5,8
    80007ab4:	fed79ce3          	bne	a5,a3,80007aac <__memset+0xd4>
    80007ab8:	ff8e7793          	andi	a5,t3,-8
    80007abc:	0007871b          	sext.w	a4,a5
    80007ac0:	01d787bb          	addw	a5,a5,t4
    80007ac4:	0ce88e63          	beq	a7,a4,80007ba0 <__memset+0x1c8>
    80007ac8:	00f50733          	add	a4,a0,a5
    80007acc:	00b70023          	sb	a1,0(a4)
    80007ad0:	0017871b          	addiw	a4,a5,1
    80007ad4:	0cc77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007ad8:	00e50733          	add	a4,a0,a4
    80007adc:	00b70023          	sb	a1,0(a4)
    80007ae0:	0027871b          	addiw	a4,a5,2
    80007ae4:	0ac77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007ae8:	00e50733          	add	a4,a0,a4
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	0037871b          	addiw	a4,a5,3
    80007af4:	0ac77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	0047871b          	addiw	a4,a5,4
    80007b04:	08c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	0057871b          	addiw	a4,a5,5
    80007b14:	08c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	0067871b          	addiw	a4,a5,6
    80007b24:	06c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b28:	00e50733          	add	a4,a0,a4
    80007b2c:	00b70023          	sb	a1,0(a4)
    80007b30:	0077871b          	addiw	a4,a5,7
    80007b34:	06c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b38:	00e50733          	add	a4,a0,a4
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	0087871b          	addiw	a4,a5,8
    80007b44:	04c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	0097871b          	addiw	a4,a5,9
    80007b54:	04c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	00a7871b          	addiw	a4,a5,10
    80007b64:	02c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	00b7871b          	addiw	a4,a5,11
    80007b74:	02c77663          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b78:	00e50733          	add	a4,a0,a4
    80007b7c:	00b70023          	sb	a1,0(a4)
    80007b80:	00c7871b          	addiw	a4,a5,12
    80007b84:	00c77e63          	bgeu	a4,a2,80007ba0 <__memset+0x1c8>
    80007b88:	00e50733          	add	a4,a0,a4
    80007b8c:	00b70023          	sb	a1,0(a4)
    80007b90:	00d7879b          	addiw	a5,a5,13
    80007b94:	00c7f663          	bgeu	a5,a2,80007ba0 <__memset+0x1c8>
    80007b98:	00f507b3          	add	a5,a0,a5
    80007b9c:	00b78023          	sb	a1,0(a5)
    80007ba0:	00813403          	ld	s0,8(sp)
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00008067          	ret
    80007bac:	00b00693          	li	a3,11
    80007bb0:	e55ff06f          	j	80007a04 <__memset+0x2c>
    80007bb4:	00300e93          	li	t4,3
    80007bb8:	ea5ff06f          	j	80007a5c <__memset+0x84>
    80007bbc:	00100e93          	li	t4,1
    80007bc0:	e9dff06f          	j	80007a5c <__memset+0x84>
    80007bc4:	00000e93          	li	t4,0
    80007bc8:	e95ff06f          	j	80007a5c <__memset+0x84>
    80007bcc:	00000793          	li	a5,0
    80007bd0:	ef9ff06f          	j	80007ac8 <__memset+0xf0>
    80007bd4:	00200e93          	li	t4,2
    80007bd8:	e85ff06f          	j	80007a5c <__memset+0x84>
    80007bdc:	00400e93          	li	t4,4
    80007be0:	e7dff06f          	j	80007a5c <__memset+0x84>
    80007be4:	00500e93          	li	t4,5
    80007be8:	e75ff06f          	j	80007a5c <__memset+0x84>
    80007bec:	00600e93          	li	t4,6
    80007bf0:	e6dff06f          	j	80007a5c <__memset+0x84>

0000000080007bf4 <__memmove>:
    80007bf4:	ff010113          	addi	sp,sp,-16
    80007bf8:	00813423          	sd	s0,8(sp)
    80007bfc:	01010413          	addi	s0,sp,16
    80007c00:	0e060863          	beqz	a2,80007cf0 <__memmove+0xfc>
    80007c04:	fff6069b          	addiw	a3,a2,-1
    80007c08:	0006881b          	sext.w	a6,a3
    80007c0c:	0ea5e863          	bltu	a1,a0,80007cfc <__memmove+0x108>
    80007c10:	00758713          	addi	a4,a1,7
    80007c14:	00a5e7b3          	or	a5,a1,a0
    80007c18:	40a70733          	sub	a4,a4,a0
    80007c1c:	0077f793          	andi	a5,a5,7
    80007c20:	00f73713          	sltiu	a4,a4,15
    80007c24:	00174713          	xori	a4,a4,1
    80007c28:	0017b793          	seqz	a5,a5
    80007c2c:	00e7f7b3          	and	a5,a5,a4
    80007c30:	10078863          	beqz	a5,80007d40 <__memmove+0x14c>
    80007c34:	00900793          	li	a5,9
    80007c38:	1107f463          	bgeu	a5,a6,80007d40 <__memmove+0x14c>
    80007c3c:	0036581b          	srliw	a6,a2,0x3
    80007c40:	fff8081b          	addiw	a6,a6,-1
    80007c44:	02081813          	slli	a6,a6,0x20
    80007c48:	01d85893          	srli	a7,a6,0x1d
    80007c4c:	00858813          	addi	a6,a1,8
    80007c50:	00058793          	mv	a5,a1
    80007c54:	00050713          	mv	a4,a0
    80007c58:	01088833          	add	a6,a7,a6
    80007c5c:	0007b883          	ld	a7,0(a5)
    80007c60:	00878793          	addi	a5,a5,8
    80007c64:	00870713          	addi	a4,a4,8
    80007c68:	ff173c23          	sd	a7,-8(a4)
    80007c6c:	ff0798e3          	bne	a5,a6,80007c5c <__memmove+0x68>
    80007c70:	ff867713          	andi	a4,a2,-8
    80007c74:	02071793          	slli	a5,a4,0x20
    80007c78:	0207d793          	srli	a5,a5,0x20
    80007c7c:	00f585b3          	add	a1,a1,a5
    80007c80:	40e686bb          	subw	a3,a3,a4
    80007c84:	00f507b3          	add	a5,a0,a5
    80007c88:	06e60463          	beq	a2,a4,80007cf0 <__memmove+0xfc>
    80007c8c:	0005c703          	lbu	a4,0(a1)
    80007c90:	00e78023          	sb	a4,0(a5)
    80007c94:	04068e63          	beqz	a3,80007cf0 <__memmove+0xfc>
    80007c98:	0015c603          	lbu	a2,1(a1)
    80007c9c:	00100713          	li	a4,1
    80007ca0:	00c780a3          	sb	a2,1(a5)
    80007ca4:	04e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007ca8:	0025c603          	lbu	a2,2(a1)
    80007cac:	00200713          	li	a4,2
    80007cb0:	00c78123          	sb	a2,2(a5)
    80007cb4:	02e68e63          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cb8:	0035c603          	lbu	a2,3(a1)
    80007cbc:	00300713          	li	a4,3
    80007cc0:	00c781a3          	sb	a2,3(a5)
    80007cc4:	02e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cc8:	0045c603          	lbu	a2,4(a1)
    80007ccc:	00400713          	li	a4,4
    80007cd0:	00c78223          	sb	a2,4(a5)
    80007cd4:	00e68e63          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007cd8:	0055c603          	lbu	a2,5(a1)
    80007cdc:	00500713          	li	a4,5
    80007ce0:	00c782a3          	sb	a2,5(a5)
    80007ce4:	00e68663          	beq	a3,a4,80007cf0 <__memmove+0xfc>
    80007ce8:	0065c703          	lbu	a4,6(a1)
    80007cec:	00e78323          	sb	a4,6(a5)
    80007cf0:	00813403          	ld	s0,8(sp)
    80007cf4:	01010113          	addi	sp,sp,16
    80007cf8:	00008067          	ret
    80007cfc:	02061713          	slli	a4,a2,0x20
    80007d00:	02075713          	srli	a4,a4,0x20
    80007d04:	00e587b3          	add	a5,a1,a4
    80007d08:	f0f574e3          	bgeu	a0,a5,80007c10 <__memmove+0x1c>
    80007d0c:	02069613          	slli	a2,a3,0x20
    80007d10:	02065613          	srli	a2,a2,0x20
    80007d14:	fff64613          	not	a2,a2
    80007d18:	00e50733          	add	a4,a0,a4
    80007d1c:	00c78633          	add	a2,a5,a2
    80007d20:	fff7c683          	lbu	a3,-1(a5)
    80007d24:	fff78793          	addi	a5,a5,-1
    80007d28:	fff70713          	addi	a4,a4,-1
    80007d2c:	00d70023          	sb	a3,0(a4)
    80007d30:	fec798e3          	bne	a5,a2,80007d20 <__memmove+0x12c>
    80007d34:	00813403          	ld	s0,8(sp)
    80007d38:	01010113          	addi	sp,sp,16
    80007d3c:	00008067          	ret
    80007d40:	02069713          	slli	a4,a3,0x20
    80007d44:	02075713          	srli	a4,a4,0x20
    80007d48:	00170713          	addi	a4,a4,1
    80007d4c:	00e50733          	add	a4,a0,a4
    80007d50:	00050793          	mv	a5,a0
    80007d54:	0005c683          	lbu	a3,0(a1)
    80007d58:	00178793          	addi	a5,a5,1
    80007d5c:	00158593          	addi	a1,a1,1
    80007d60:	fed78fa3          	sb	a3,-1(a5)
    80007d64:	fee798e3          	bne	a5,a4,80007d54 <__memmove+0x160>
    80007d68:	f89ff06f          	j	80007cf0 <__memmove+0xfc>

0000000080007d6c <__putc>:
    80007d6c:	fe010113          	addi	sp,sp,-32
    80007d70:	00813823          	sd	s0,16(sp)
    80007d74:	00113c23          	sd	ra,24(sp)
    80007d78:	02010413          	addi	s0,sp,32
    80007d7c:	00050793          	mv	a5,a0
    80007d80:	fef40593          	addi	a1,s0,-17
    80007d84:	00100613          	li	a2,1
    80007d88:	00000513          	li	a0,0
    80007d8c:	fef407a3          	sb	a5,-17(s0)
    80007d90:	fffff097          	auipc	ra,0xfffff
    80007d94:	b3c080e7          	jalr	-1220(ra) # 800068cc <console_write>
    80007d98:	01813083          	ld	ra,24(sp)
    80007d9c:	01013403          	ld	s0,16(sp)
    80007da0:	02010113          	addi	sp,sp,32
    80007da4:	00008067          	ret

0000000080007da8 <__getc>:
    80007da8:	fe010113          	addi	sp,sp,-32
    80007dac:	00813823          	sd	s0,16(sp)
    80007db0:	00113c23          	sd	ra,24(sp)
    80007db4:	02010413          	addi	s0,sp,32
    80007db8:	fe840593          	addi	a1,s0,-24
    80007dbc:	00100613          	li	a2,1
    80007dc0:	00000513          	li	a0,0
    80007dc4:	fffff097          	auipc	ra,0xfffff
    80007dc8:	ae8080e7          	jalr	-1304(ra) # 800068ac <console_read>
    80007dcc:	fe844503          	lbu	a0,-24(s0)
    80007dd0:	01813083          	ld	ra,24(sp)
    80007dd4:	01013403          	ld	s0,16(sp)
    80007dd8:	02010113          	addi	sp,sp,32
    80007ddc:	00008067          	ret

0000000080007de0 <console_handler>:
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	00913423          	sd	s1,8(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	14202773          	csrr	a4,scause
    80007df8:	100027f3          	csrr	a5,sstatus
    80007dfc:	0027f793          	andi	a5,a5,2
    80007e00:	06079e63          	bnez	a5,80007e7c <console_handler+0x9c>
    80007e04:	00074c63          	bltz	a4,80007e1c <console_handler+0x3c>
    80007e08:	01813083          	ld	ra,24(sp)
    80007e0c:	01013403          	ld	s0,16(sp)
    80007e10:	00813483          	ld	s1,8(sp)
    80007e14:	02010113          	addi	sp,sp,32
    80007e18:	00008067          	ret
    80007e1c:	0ff77713          	andi	a4,a4,255
    80007e20:	00900793          	li	a5,9
    80007e24:	fef712e3          	bne	a4,a5,80007e08 <console_handler+0x28>
    80007e28:	ffffe097          	auipc	ra,0xffffe
    80007e2c:	6dc080e7          	jalr	1756(ra) # 80006504 <plic_claim>
    80007e30:	00a00793          	li	a5,10
    80007e34:	00050493          	mv	s1,a0
    80007e38:	02f50c63          	beq	a0,a5,80007e70 <console_handler+0x90>
    80007e3c:	fc0506e3          	beqz	a0,80007e08 <console_handler+0x28>
    80007e40:	00050593          	mv	a1,a0
    80007e44:	00000517          	auipc	a0,0x0
    80007e48:	5dc50513          	addi	a0,a0,1500 # 80008420 <CONSOLE_STATUS+0x410>
    80007e4c:	fffff097          	auipc	ra,0xfffff
    80007e50:	afc080e7          	jalr	-1284(ra) # 80006948 <__printf>
    80007e54:	01013403          	ld	s0,16(sp)
    80007e58:	01813083          	ld	ra,24(sp)
    80007e5c:	00048513          	mv	a0,s1
    80007e60:	00813483          	ld	s1,8(sp)
    80007e64:	02010113          	addi	sp,sp,32
    80007e68:	ffffe317          	auipc	t1,0xffffe
    80007e6c:	6d430067          	jr	1748(t1) # 8000653c <plic_complete>
    80007e70:	fffff097          	auipc	ra,0xfffff
    80007e74:	3e0080e7          	jalr	992(ra) # 80007250 <uartintr>
    80007e78:	fddff06f          	j	80007e54 <console_handler+0x74>
    80007e7c:	00000517          	auipc	a0,0x0
    80007e80:	6a450513          	addi	a0,a0,1700 # 80008520 <digits+0x78>
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	a68080e7          	jalr	-1432(ra) # 800068ec <panic>
	...
