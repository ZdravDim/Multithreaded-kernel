
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	51013103          	ld	sp,1296(sp) # 8000a510 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	339050ef          	jal	ra,80005b54 <start>

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
#include "../h/memory_allocator.hpp"

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
    80001178:	ed4080e7          	jalr	-300(ra) # 80002048 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800013e8:	874080e7          	jalr	-1932(ra) # 80007c58 <__getc>
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
    80001410:	810080e7          	jalr	-2032(ra) # 80007c1c <__putc>
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
    80001440:	b80080e7          	jalr	-1152(ra) # 80001fbc <_ZN15MemoryAllocator5printEv>
    void *addr = MemoryAllocator::mem_alloc(1);
    80001444:	00100513          	li	a0,1
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	81c080e7          	jalr	-2020(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
    80001450:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001454:	00001097          	auipc	ra,0x1
    80001458:	b68080e7          	jalr	-1176(ra) # 80001fbc <_ZN15MemoryAllocator5printEv>
    int s1 = MemoryAllocator::mem_free(addr);
    8000145c:	00048513          	mv	a0,s1
    80001460:	00001097          	auipc	ra,0x1
    80001464:	9f0080e7          	jalr	-1552(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
    80001468:	00050913          	mv	s2,a0
    MemoryAllocator::print();
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	b50080e7          	jalr	-1200(ra) # 80001fbc <_ZN15MemoryAllocator5printEv>

    int s2 = MemoryAllocator::mem_free(addr);
    80001474:	00048513          	mv	a0,s1
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	9d8080e7          	jalr	-1576(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
    80001480:	00050493          	mv	s1,a0
    MemoryAllocator::print();
    80001484:	00001097          	auipc	ra,0x1
    80001488:	b38080e7          	jalr	-1224(ra) # 80001fbc <_ZN15MemoryAllocator5printEv>

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
    800014b4:	00006097          	auipc	ra,0x6
    800014b8:	768080e7          	jalr	1896(ra) # 80007c1c <__putc>
    800014bc:	fd5ff06f          	j	80001490 <_Z19testMemoryAllocatorv+0x6c>
    if (s2 == -3) __putc('2');
    800014c0:	03200513          	li	a0,50
    800014c4:	00006097          	auipc	ra,0x6
    800014c8:	758080e7          	jalr	1880(ra) # 80007c1c <__putc>
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
    800014e4:	0207b783          	ld	a5,32(a5) # 8000a500 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    800014e8:	10579073          	csrw	stvec,a5
    /// initialize Memory Allocator
    MemoryAllocator::initialize();
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	894080e7          	jalr	-1900(ra) # 80001d80 <_ZN15MemoryAllocator10initializeEv>
    /// Test Memory Allocation
//    testMemoryAllocator();
    /// Test everything
//    userMain();
    return 0;
    800014f4:	00000513          	li	a0,0
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>:
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    return (*handle) -> id; /// return 0?
}

TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    id = cnt++;
    80001508:	00009897          	auipc	a7,0x9
    8000150c:	05888893          	addi	a7,a7,88 # 8000a560 <_ZN3TCB3cntE>
    80001510:	0008a803          	lw	a6,0(a7)
    80001514:	0018031b          	addiw	t1,a6,1
    80001518:	0068a023          	sw	t1,0(a7)
    8000151c:	01052023          	sw	a6,0(a0) # 1000 <_entry-0x7ffff000>
    status = RUNNABLE;
    80001520:	00052c23          	sw	zero,24(a0)
    this -> context = context;
    80001524:	00e53423          	sd	a4,8(a0)
    80001528:	00f53823          	sd	a5,16(a0)
    this -> function_body = function_body;
    8000152c:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80001530:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80001534:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80001538:	00200793          	li	a5,2
    8000153c:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80001540:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80001544:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80001548:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    8000154c:	02058663          	beqz	a1,80001578 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE+0x70>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack, Context context) {
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	02010413          	addi	s0,sp,32
    if (function_body) Scheduler::put(this);
    80001560:	00001097          	auipc	ra,0x1
    80001564:	b0c080e7          	jalr	-1268(ra) # 8000206c <_ZN9Scheduler3putEP3TCB>
}
    80001568:	01813083          	ld	ra,24(sp)
    8000156c:	01013403          	ld	s0,16(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret
    80001578:	00008067          	ret

000000008000157c <_ZN3TCB5yieldEPS_S0_>:
void TCB::wrapper_function() {
    running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    8000157c:	fe010113          	addi	sp,sp,-32
    80001580:	00113c23          	sd	ra,24(sp)
    80001584:	00813823          	sd	s0,16(sp)
    80001588:	00913423          	sd	s1,8(sp)
    8000158c:	01213023          	sd	s2,0(sp)
    80001590:	02010413          	addi	s0,sp,32
    80001594:	00050493          	mv	s1,a0
    80001598:	00058913          	mv	s2,a1
    RiscV::push_registers();
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	a64080e7          	jalr	-1436(ra) # 80001000 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800015a4:	01248a63          	beq	s1,s2,800015b8 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800015a8:	00890593          	addi	a1,s2,8
    800015ac:	00848513          	addi	a0,s1,8
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	b60080e7          	jalr	-1184(ra) # 80001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	ad0080e7          	jalr	-1328(ra) # 80001088 <_ZN5RiscV13pop_registersEv>
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	00013903          	ld	s2,0(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret

00000000800015d8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800015ec:	00009497          	auipc	s1,0x9
    800015f0:	f7c4b483          	ld	s1,-132(s1) # 8000a568 <_ZN3TCB7runningE>
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    800015f4:	0184a783          	lw	a5,24(s1)
    800015f8:	00400713          	li	a4,4
    800015fc:	00e78663          	beq	a5,a4,80001608 <_ZN3TCB8dispatchEv+0x30>
    80001600:	00200713          	li	a4,2
    80001604:	02e79e63          	bne	a5,a4,80001640 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	ac4080e7          	jalr	-1340(ra) # 800020cc <_ZN9Scheduler3getEv>
    80001610:	00009797          	auipc	a5,0x9
    80001614:	f4a7bc23          	sd	a0,-168(a5) # 8000a568 <_ZN3TCB7runningE>
    if (old != running) context_switch(&old -> context, &running -> context);
    80001618:	00a48a63          	beq	s1,a0,8000162c <_ZN3TCB8dispatchEv+0x54>
    8000161c:	00850593          	addi	a1,a0,8
    80001620:	00848513          	addi	a0,s1,8
    80001624:	00000097          	auipc	ra,0x0
    80001628:	aec080e7          	jalr	-1300(ra) # 80001110 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	00813483          	ld	s1,8(sp)
    80001638:	02010113          	addi	sp,sp,32
    8000163c:	00008067          	ret
    if (old -> status != FINISHED && old -> status != BLOCKED) Scheduler::put(old);
    80001640:	00048513          	mv	a0,s1
    80001644:	00001097          	auipc	ra,0x1
    80001648:	a28080e7          	jalr	-1496(ra) # 8000206c <_ZN9Scheduler3putEP3TCB>
    8000164c:	fbdff06f          	j	80001608 <_ZN3TCB8dispatchEv+0x30>

0000000080001650 <_ZN3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00813423          	sd	s0,8(sp)
    80001658:	01010413          	addi	s0,sp,16
    return next_ready;
}
    8000165c:	04053503          	ld	a0,64(a0)
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
    next_ready = next;
    80001678:	04b53023          	sd	a1,64(a0)
}
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80001694:	04b53823          	sd	a1,80(a0)
}
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() {
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00813423          	sd	s0,8(sp)
    800016ac:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800016b0:	05053503          	ld	a0,80(a0)
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800016cc:	04b53423          	sd	a1,72(a0)
}
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() {
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00813423          	sd	s0,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800016e8:	04853503          	ld	a0,72(a0)
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status status) {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    this -> status = status;
    80001704:	00b52c23          	sw	a1,24(a0)
}
    80001708:	00813403          	ld	s0,8(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00113423          	sd	ra,8(sp)
    8000171c:	00813023          	sd	s0,0(sp)
    80001720:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80001724:	00400593          	li	a1,4
    80001728:	00009517          	auipc	a0,0x9
    8000172c:	e4053503          	ld	a0,-448(a0) # 8000a568 <_ZN3TCB7runningE>
    80001730:	00000097          	auipc	ra,0x0
    80001734:	fc8080e7          	jalr	-56(ra) # 800016f8 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	ea0080e7          	jalr	-352(ra) # 800015d8 <_ZN3TCB8dispatchEv>
}
    80001740:	00813083          	ld	ra,8(sp)
    80001744:	00013403          	ld	s0,0(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret

0000000080001750 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00113423          	sd	ra,8(sp)
    80001758:	00813023          	sd	s0,0(sp)
    8000175c:	01010413          	addi	s0,sp,16
    running -> function_body(running -> arg);
    80001760:	00009797          	auipc	a5,0x9
    80001764:	e087b783          	ld	a5,-504(a5) # 8000a568 <_ZN3TCB7runningE>
    80001768:	0207b703          	ld	a4,32(a5)
    8000176c:	0287b503          	ld	a0,40(a5)
    80001770:	000700e7          	jalr	a4
    thread_exit();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	fa0080e7          	jalr	-96(ra) # 80001714 <_ZN3TCB11thread_exitEv>
}
    8000177c:	00813083          	ld	ra,8(sp)
    80001780:	00013403          	ld	s0,0(sp)
    80001784:	01010113          	addi	sp,sp,16
    80001788:	00008067          	ret

000000008000178c <_ZN3TCB5startEv>:

void TCB::start() {
    8000178c:	fe010113          	addi	sp,sp,-32
    80001790:	00113c23          	sd	ra,24(sp)
    80001794:	00813823          	sd	s0,16(sp)
    80001798:	00913423          	sd	s1,8(sp)
    8000179c:	02010413          	addi	s0,sp,32
    800017a0:	00050493          	mv	s1,a0
    Scheduler::put(this);
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	8c8080e7          	jalr	-1848(ra) # 8000206c <_ZN9Scheduler3putEP3TCB>
    if (!running) running = this;
    800017ac:	00009797          	auipc	a5,0x9
    800017b0:	dbc7b783          	ld	a5,-580(a5) # 8000a568 <_ZN3TCB7runningE>
    800017b4:	00078c63          	beqz	a5,800017cc <_ZN3TCB5startEv+0x40>
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret
    if (!running) running = this;
    800017cc:	00009797          	auipc	a5,0x9
    800017d0:	d897be23          	sd	s1,-612(a5) # 8000a568 <_ZN3TCB7runningE>
}
    800017d4:	fe5ff06f          	j	800017b8 <_ZN3TCB5startEv+0x2c>

00000000800017d8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	860080e7          	jalr	-1952(ra) # 80002048 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	474080e7          	jalr	1140(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
}
    800017f8:	00813083          	ld	ra,8(sp)
    800017fc:	00013403          	ld	s0,0(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret

0000000080001808 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80001808:	ff010113          	addi	sp,sp,-16
    8000180c:	00113423          	sd	ra,8(sp)
    80001810:	00813023          	sd	s0,0(sp)
    80001814:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	638080e7          	jalr	1592(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001820:	00813083          	ld	ra,8(sp)
    80001824:	00013403          	ld	s0,0(sp)
    80001828:	01010113          	addi	sp,sp,16
    8000182c:	00008067          	ret

0000000080001830 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80001830:	fa010113          	addi	sp,sp,-96
    80001834:	04113c23          	sd	ra,88(sp)
    80001838:	04813823          	sd	s0,80(sp)
    8000183c:	04913423          	sd	s1,72(sp)
    80001840:	05213023          	sd	s2,64(sp)
    80001844:	03313c23          	sd	s3,56(sp)
    80001848:	03413823          	sd	s4,48(sp)
    8000184c:	03513423          	sd	s5,40(sp)
    80001850:	06010413          	addi	s0,sp,96
    80001854:	00050993          	mv	s3,a0
    80001858:	00058a13          	mv	s4,a1
    8000185c:	00060a93          	mv	s5,a2
    80001860:	00068493          	mv	s1,a3
    Context context = {
    80001864:	00000797          	auipc	a5,0x0
    80001868:	eec78793          	addi	a5,a5,-276 # 80001750 <_ZN3TCB16wrapper_functionEv>
    8000186c:	faf43023          	sd	a5,-96(s0)
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    80001870:	04068863          	beqz	a3,800018c0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x90>
    80001874:	000017b7          	lui	a5,0x1
    80001878:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000187c:	00f687b3          	add	a5,a3,a5
    };
    80001880:	faf43423          	sd	a5,-88(s0)
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    80001884:	fa043703          	ld	a4,-96(s0)
    80001888:	fae43823          	sd	a4,-80(s0)
    8000188c:	faf43c23          	sd	a5,-72(s0)
    80001890:	05800513          	li	a0,88
    80001894:	00000097          	auipc	ra,0x0
    80001898:	f44080e7          	jalr	-188(ra) # 800017d8 <_ZN3TCBnwEm>
    8000189c:	00050913          	mv	s2,a0
    800018a0:	fb043703          	ld	a4,-80(s0)
    800018a4:	fb843783          	ld	a5,-72(s0)
    800018a8:	00048693          	mv	a3,s1
    800018ac:	000a8613          	mv	a2,s5
    800018b0:	000a0593          	mv	a1,s4
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	c54080e7          	jalr	-940(ra) # 80001508 <_ZN3TCBC1EPFvPvES0_S0_NS_7ContextE>
    800018bc:	00c0006f          	j	800018c8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x98>
            (uint64) (stack_begin_address ? (uint64) stack_begin_address + DEFAULT_STACK_SIZE - 1 : 0) /// stack rises to lower locations
    800018c0:	00000793          	li	a5,0
    800018c4:	fbdff06f          	j	80001880 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x50>
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800018c8:	0129b023          	sd	s2,0(s3)
    return (*handle) -> id; /// return 0?
    800018cc:	00092503          	lw	a0,0(s2)
}
    800018d0:	05813083          	ld	ra,88(sp)
    800018d4:	05013403          	ld	s0,80(sp)
    800018d8:	04813483          	ld	s1,72(sp)
    800018dc:	04013903          	ld	s2,64(sp)
    800018e0:	03813983          	ld	s3,56(sp)
    800018e4:	03013a03          	ld	s4,48(sp)
    800018e8:	02813a83          	ld	s5,40(sp)
    800018ec:	06010113          	addi	sp,sp,96
    800018f0:	00008067          	ret
    800018f4:	00050493          	mv	s1,a0
    *handle = new TCB(start_routine, arg, stack_begin_address, context);
    800018f8:	00090513          	mv	a0,s2
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	f0c080e7          	jalr	-244(ra) # 80001808 <_ZN3TCBdlEPv>
    80001904:	00048513          	mv	a0,s1
    80001908:	0000a097          	auipc	ra,0xa
    8000190c:	db0080e7          	jalr	-592(ra) # 8000b6b8 <_Unwind_Resume>

0000000080001910 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void *), void *arg) {

}

Thread::~Thread() {
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00813423          	sd	s0,8(sp)
    80001918:	01010413          	addi	s0,sp,16

}
    8000191c:	00813403          	ld	s0,8(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {

}

Semaphore::~Semaphore() {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00813423          	sd	s0,8(sp)
    80001930:	01010413          	addi	s0,sp,16

}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_Znwm>:
void* operator new(size_t size){
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001950:	00000097          	auipc	ra,0x0
    80001954:	810080e7          	jalr	-2032(ra) # 80001160 <_Z9mem_allocm>
}
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <_ZdlPv>:
void operator delete(void* p){
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00113423          	sd	ra,8(sp)
    80001970:	00813023          	sd	s0,0(sp)
    80001974:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	83c080e7          	jalr	-1988(ra) # 800011b4 <_Z8mem_freePv>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
}
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	fc8080e7          	jalr	-56(ra) # 80001968 <_ZdlPv>
    800019a8:	00813083          	ld	ra,8(sp)
    800019ac:	00013403          	ld	s0,0(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
}
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	fa0080e7          	jalr	-96(ra) # 80001968 <_ZdlPv>
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00813423          	sd	s0,8(sp)
    800019e8:	01010413          	addi	s0,sp,16
    800019ec:	00009797          	auipc	a5,0x9
    800019f0:	92c78793          	addi	a5,a5,-1748 # 8000a318 <_ZTV6Thread+0x10>
    800019f4:	00f53023          	sd	a5,0(a0)
}
    800019f8:	00813403          	ld	s0,8(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret

0000000080001a04 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00813423          	sd	s0,8(sp)
    80001a0c:	01010413          	addi	s0,sp,16
}
    80001a10:	00000513          	li	a0,0
    80001a14:	00813403          	ld	s0,8(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00813423          	sd	s0,8(sp)
    80001a28:	01010413          	addi	s0,sp,16
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
}
    80001a44:	00000513          	li	a0,0
    80001a48:	00813403          	ld	s0,8(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret

0000000080001a54 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00813423          	sd	s0,8(sp)
    80001a5c:	01010413          	addi	s0,sp,16
    80001a60:	00009797          	auipc	a5,0x9
    80001a64:	8b878793          	addi	a5,a5,-1864 # 8000a318 <_ZTV6Thread+0x10>
    80001a68:	00f53023          	sd	a5,0(a0)
}
    80001a6c:	00813403          	ld	s0,8(sp)
    80001a70:	01010113          	addi	sp,sp,16
    80001a74:	00008067          	ret

0000000080001a78 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00813423          	sd	s0,8(sp)
    80001a80:	01010413          	addi	s0,sp,16
    80001a84:	00009797          	auipc	a5,0x9
    80001a88:	8bc78793          	addi	a5,a5,-1860 # 8000a340 <_ZTV9Semaphore+0x10>
    80001a8c:	00f53023          	sd	a5,0(a0)
}
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    return 0;
}
    80001aa8:	00000513          	li	a0,0
    80001aac:	00813403          	ld	s0,8(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00813423          	sd	s0,8(sp)
    80001ac0:	01010413          	addi	s0,sp,16
    return 0;
}
    80001ac4:	00000513          	li	a0,0
    80001ac8:	00813403          	ld	s0,8(sp)
    80001acc:	01010113          	addi	sp,sp,16
    80001ad0:	00008067          	ret

0000000080001ad4 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t) {
    80001ad4:	ff010113          	addi	sp,sp,-16
    80001ad8:	00813423          	sd	s0,8(sp)
    80001adc:	01010413          	addi	s0,sp,16
    return 0;
}
    80001ae0:	00000513          	li	a0,0
    80001ae4:	00813403          	ld	s0,8(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret

0000000080001af0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813423          	sd	s0,8(sp)
    80001af8:	01010413          	addi	s0,sp,16
    return 0;
}
    80001afc:	00000513          	li	a0,0
    80001b00:	00813403          	ld	s0,8(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16

}
    80001b18:	00813403          	ld	s0,8(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret

0000000080001b24 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001b24:	fe010113          	addi	sp,sp,-32
    80001b28:	00113c23          	sd	ra,24(sp)
    80001b2c:	00813823          	sd	s0,16(sp)
    80001b30:	00913423          	sd	s1,8(sp)
    80001b34:	02010413          	addi	s0,sp,32
    80001b38:	00050493          	mv	s1,a0
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	f18080e7          	jalr	-232(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80001b44:	00008797          	auipc	a5,0x8
    80001b48:	7a478793          	addi	a5,a5,1956 # 8000a2e8 <_ZTV14PeriodicThread+0x10>
    80001b4c:	00f4b023          	sd	a5,0(s1)

}
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_ZN7Console4getcEv>:

char Console::getc() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00813423          	sd	s0,8(sp)
    80001b6c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001b70:	00000513          	li	a0,0
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN7Console4putcEc>:

void Console::putc(char) {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00813423          	sd	s0,8(sp)
    80001b88:	01010413          	addi	s0,sp,16

}
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00813403          	ld	s0,8(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00813423          	sd	s0,8(sp)
    80001bd0:	01010413          	addi	s0,sp,16
    80001bd4:	00008797          	auipc	a5,0x8
    80001bd8:	71478793          	addi	a5,a5,1812 # 8000a2e8 <_ZTV14PeriodicThread+0x10>
    80001bdc:	00f53023          	sd	a5,0(a0)
    80001be0:	00813403          	ld	s0,8(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret

0000000080001bec <_ZN14PeriodicThreadD0Ev>:
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00113423          	sd	ra,8(sp)
    80001bf4:	00813023          	sd	s0,0(sp)
    80001bf8:	01010413          	addi	s0,sp,16
    80001bfc:	00008797          	auipc	a5,0x8
    80001c00:	6ec78793          	addi	a5,a5,1772 # 8000a2e8 <_ZTV14PeriodicThread+0x10>
    80001c04:	00f53023          	sd	a5,0(a0)
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	d60080e7          	jalr	-672(ra) # 80001968 <_ZdlPv>
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80001c2c:	00853783          	ld	a5,8(a0)
    80001c30:	02078463          	beqz	a5,80001c58 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    80001c34:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? toRemove -> prev : nextSeg;
    80001c38:	01053783          	ld	a5,16(a0)
    80001c3c:	00078863          	beqz	a5,80001c4c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80001c40:	00060463          	beqz	a2,80001c48 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    80001c44:	00853583          	ld	a1,8(a0)
    80001c48:	00b7b423          	sd	a1,8(a5)
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    else freeSegHead = nextSeg;
    80001c58:	00009797          	auipc	a5,0x9
    80001c5c:	90b7bc23          	sd	a1,-1768(a5) # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    80001c60:	fd9ff06f          	j	80001c38 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

0000000080001c64 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` bytes, rounded up to MEM_BLOCK_SIZE
void *MemoryAllocator::mem_alloc(size_t size) {
    80001c64:	fe010113          	addi	sp,sp,-32
    80001c68:	00113c23          	sd	ra,24(sp)
    80001c6c:	00813823          	sd	s0,16(sp)
    80001c70:	00913423          	sd	s1,8(sp)
    80001c74:	01213023          	sd	s2,0(sp)
    80001c78:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80001c7c:	0e050e63          	beqz	a0,80001d78 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80001c80:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80001c84:	00009497          	auipc	s1,0x9
    80001c88:	8ec4b483          	ld	s1,-1812(s1) # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80001c8c:	0a048e63          	beqz	s1,80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    80001c90:	0004b783          	ld	a5,0(s1)
    80001c94:	0527e463          	bltu	a5,s2,80001cdc <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80001c98:	412787b3          	sub	a5,a5,s2
        if (remaining < sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    80001c9c:	01700713          	li	a4,23
    80001ca0:	04f76263          	bltu	a4,a5,80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80001ca4:	00000613          	li	a2,0
    80001ca8:	0104b583          	ld	a1,16(s1)
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	f70080e7          	jalr	-144(ra) # 80001c20 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = 0;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80001cb8:	00009797          	auipc	a5,0x9
    80001cbc:	8c07b783          	ld	a5,-1856(a5) # 8000a578 <_ZN15MemoryAllocator11usedSegHeadE>
    80001cc0:	04078863          	beqz	a5,80001d10 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    80001cc4:	0497fa63          	bgeu	a5,s1,80001d18 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80001cc8:	00078713          	mv	a4,a5
    80001ccc:	0107b783          	ld	a5,16(a5)
    80001cd0:	04078663          	beqz	a5,80001d1c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001cd4:	fe97eae3          	bltu	a5,s1,80001cc8 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80001cd8:	0440006f          	j	80001d1c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80001cdc:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80001ce0:	fadff06f          	j	80001c8c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80001ce4:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80001ce8:	0084b703          	ld	a4,8(s1)
    80001cec:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80001cf0:	0104b703          	ld	a4,16(s1)
    80001cf4:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80001cf8:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80001cfc:	00100613          	li	a2,1
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	f1c080e7          	jalr	-228(ra) # 80001c20 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80001d0c:	fadff06f          	j	80001cb8 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = 0;
    80001d10:	00078713          	mv	a4,a5
    80001d14:	0080006f          	j	80001d1c <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80001d18:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80001d1c:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80001d20:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001d24:	04070063          	beqz	a4,80001d64 <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80001d28:	01073783          	ld	a5,16(a4)
    80001d2c:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80001d30:	02070e63          	beqz	a4,80001d6c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80001d34:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80001d38:	0104b783          	ld	a5,16(s1)
    80001d3c:	00078463          	beqz	a5,80001d44 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001d40:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80001d44:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80001d48:	00048513          	mv	a0,s1
    80001d4c:	01813083          	ld	ra,24(sp)
    80001d50:	01013403          	ld	s0,16(sp)
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	00013903          	ld	s2,0(sp)
    80001d5c:	02010113          	addi	sp,sp,32
    80001d60:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80001d64:	00070793          	mv	a5,a4
    80001d68:	fc5ff06f          	j	80001d2c <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    80001d6c:	00009797          	auipc	a5,0x9
    80001d70:	8097b623          	sd	s1,-2036(a5) # 8000a578 <_ZN15MemoryAllocator11usedSegHeadE>
    80001d74:	fc5ff06f          	j	80001d38 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    80001d78:	00000493          	li	s1,0
    80001d7c:	fcdff06f          	j	80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

0000000080001d80 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80001d80:	00009797          	auipc	a5,0x9
    80001d84:	8007b783          	ld	a5,-2048(a5) # 8000a580 <_ZN15MemoryAllocator8instanceE>
    80001d88:	00078463          	beqz	a5,80001d90 <_ZN15MemoryAllocator10initializeEv+0x10>
    80001d8c:	00008067          	ret
void MemoryAllocator::initialize() {
    80001d90:	fe010113          	addi	sp,sp,-32
    80001d94:	00113c23          	sd	ra,24(sp)
    80001d98:	00813823          	sd	s0,16(sp)
    80001d9c:	00913423          	sd	s1,8(sp)
    80001da0:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80001da4:	00008797          	auipc	a5,0x8
    80001da8:	7647b783          	ld	a5,1892(a5) # 8000a508 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001dac:	0007b783          	ld	a5,0(a5)
    80001db0:	00008497          	auipc	s1,0x8
    80001db4:	7c048493          	addi	s1,s1,1984 # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    80001db8:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80001dbc:	00008717          	auipc	a4,0x8
    80001dc0:	75c73703          	ld	a4,1884(a4) # 8000a518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001dc4:	00073703          	ld	a4,0(a4)
    80001dc8:	40f70733          	sub	a4,a4,a5
    80001dcc:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80001dd0:	0004b783          	ld	a5,0(s1)
    80001dd4:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80001dd8:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    80001ddc:	00100513          	li	a0,1
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	e84080e7          	jalr	-380(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
    80001de8:	00a4b823          	sd	a0,16(s1)
}
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	01013403          	ld	s0,16(sp)
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00813423          	sd	s0,8(sp)
    80001e08:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80001e0c:	01053783          	ld	a5,16(a0)
    80001e10:	00078863          	beqz	a5,80001e20 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001e14:	00053703          	ld	a4,0(a0)
    80001e18:	00e506b3          	add	a3,a0,a4
    80001e1c:	00d78863          	beq	a5,a3,80001e2c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80001e20:	00813403          	ld	s0,8(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80001e2c:	0007b683          	ld	a3,0(a5)
    80001e30:	00d70733          	add	a4,a4,a3
    80001e34:	01870713          	addi	a4,a4,24
    80001e38:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80001e3c:	0107b783          	ld	a5,16(a5)
    80001e40:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80001e44:	fc078ee3          	beqz	a5,80001e20 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80001e48:	00a7b423          	sd	a0,8(a5)
}
    80001e4c:	fd5ff06f          	j	80001e20 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080001e50 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001e50:	14050263          	beqz	a0,80001f94 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    80001e54:	fd010113          	addi	sp,sp,-48
    80001e58:	02113423          	sd	ra,40(sp)
    80001e5c:	02813023          	sd	s0,32(sp)
    80001e60:	00913c23          	sd	s1,24(sp)
    80001e64:	01213823          	sd	s2,16(sp)
    80001e68:	01313423          	sd	s3,8(sp)
    80001e6c:	03010413          	addi	s0,sp,48
    80001e70:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001e74:	00008797          	auipc	a5,0x8
    80001e78:	6947b783          	ld	a5,1684(a5) # 8000a508 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e7c:	0007b783          	ld	a5,0(a5)
    80001e80:	10f56e63          	bltu	a0,a5,80001f9c <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    80001e84:	00008797          	auipc	a5,0x8
    80001e88:	6947b783          	ld	a5,1684(a5) # 8000a518 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e8c:	0007b783          	ld	a5,0(a5)
    80001e90:	10a7ea63          	bltu	a5,a0,80001fa4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    80001e94:	00008797          	auipc	a5,0x8
    80001e98:	6e47b783          	ld	a5,1764(a5) # 8000a578 <_ZN15MemoryAllocator11usedSegHeadE>
    80001e9c:	10078863          	beqz	a5,80001fac <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80001ea0:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001ea4:	00078863          	beqz	a5,80001eb4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80001ea8:	08978e63          	beq	a5,s1,80001f44 <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80001eac:	0107b783          	ld	a5,16(a5)
    80001eb0:	ff5ff06f          	j	80001ea4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80001eb4:	00000793          	li	a5,0
    if (!found) return -3;
    80001eb8:	0e078e63          	beqz	a5,80001fb4 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80001ebc:	00000613          	li	a2,0
    80001ec0:	ff893583          	ld	a1,-8(s2)
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	d58080e7          	jalr	-680(ra) # 80001c20 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80001ed0:	00008797          	auipc	a5,0x8
    80001ed4:	6a07b783          	ld	a5,1696(a5) # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    80001ed8:	06078a63          	beqz	a5,80001f4c <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    80001edc:	08f4e463          	bltu	s1,a5,80001f64 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80001ee0:	00078993          	mv	s3,a5
    80001ee4:	0107b783          	ld	a5,16(a5)
    80001ee8:	00078463          	beqz	a5,80001ef0 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001eec:	fe97eae3          	bltu	a5,s1,80001ee0 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    80001ef0:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80001ef4:	0109b783          	ld	a5,16(s3)
    80001ef8:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80001efc:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80001f00:	ff893783          	ld	a5,-8(s2)
    80001f04:	00078463          	beqz	a5,80001f0c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80001f08:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80001f0c:	00048513          	mv	a0,s1
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	ef0080e7          	jalr	-272(ra) # 80001e00 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80001f18:	00098513          	mv	a0,s3
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	ee4080e7          	jalr	-284(ra) # 80001e00 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001f24:	00000513          	li	a0,0
}
    80001f28:	02813083          	ld	ra,40(sp)
    80001f2c:	02013403          	ld	s0,32(sp)
    80001f30:	01813483          	ld	s1,24(sp)
    80001f34:	01013903          	ld	s2,16(sp)
    80001f38:	00813983          	ld	s3,8(sp)
    80001f3c:	03010113          	addi	sp,sp,48
    80001f40:	00008067          	ret
            found = true;
    80001f44:	00100793          	li	a5,1
    80001f48:	f71ff06f          	j	80001eb8 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80001f4c:	00008797          	auipc	a5,0x8
    80001f50:	6297b223          	sd	s1,1572(a5) # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80001f54:	fe093c23          	sd	zero,-8(s2)
    80001f58:	fe093823          	sd	zero,-16(s2)
    return 0;
    80001f5c:	00000513          	li	a0,0
    80001f60:	fc9ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    80001f64:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80001f68:	00008797          	auipc	a5,0x8
    80001f6c:	60878793          	addi	a5,a5,1544 # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    80001f70:	0007b703          	ld	a4,0(a5)
    80001f74:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80001f78:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80001f7c:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80001f80:	00048513          	mv	a0,s1
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	e7c080e7          	jalr	-388(ra) # 80001e00 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80001f8c:	00000513          	li	a0,0
    80001f90:	f99ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001f94:	fff00513          	li	a0,-1
}
    80001f98:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80001f9c:	fff00513          	li	a0,-1
    80001fa0:	f89ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001fa4:	fff00513          	li	a0,-1
    80001fa8:	f81ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80001fac:	ffe00513          	li	a0,-2
    80001fb0:	f79ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    80001fb4:	ffd00513          	li	a0,-3
    80001fb8:	f71ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080001fbc <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) __putc('f');
    80001fd0:	00008497          	auipc	s1,0x8
    80001fd4:	5a04b483          	ld	s1,1440(s1) # 8000a570 <_ZN15MemoryAllocator11freeSegHeadE>
    80001fd8:	00048c63          	beqz	s1,80001ff0 <_ZN15MemoryAllocator5printEv+0x34>
    80001fdc:	06600513          	li	a0,102
    80001fe0:	00006097          	auipc	ra,0x6
    80001fe4:	c3c080e7          	jalr	-964(ra) # 80007c1c <__putc>
    80001fe8:	0104b483          	ld	s1,16(s1)
    80001fec:	fedff06f          	j	80001fd8 <_ZN15MemoryAllocator5printEv+0x1c>
    __putc('\n');
    80001ff0:	00a00513          	li	a0,10
    80001ff4:	00006097          	auipc	ra,0x6
    80001ff8:	c28080e7          	jalr	-984(ra) # 80007c1c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) __putc('u');
    80001ffc:	00008497          	auipc	s1,0x8
    80002000:	57c4b483          	ld	s1,1404(s1) # 8000a578 <_ZN15MemoryAllocator11usedSegHeadE>
    80002004:	00048c63          	beqz	s1,8000201c <_ZN15MemoryAllocator5printEv+0x60>
    80002008:	07500513          	li	a0,117
    8000200c:	00006097          	auipc	ra,0x6
    80002010:	c10080e7          	jalr	-1008(ra) # 80007c1c <__putc>
    80002014:	0104b483          	ld	s1,16(s1)
    80002018:	fedff06f          	j	80002004 <_ZN15MemoryAllocator5printEv+0x48>
    __putc('\n');
    8000201c:	00a00513          	li	a0,10
    80002020:	00006097          	auipc	ra,0x6
    80002024:	bfc080e7          	jalr	-1028(ra) # 80007c1c <__putc>
    __putc('\n');
    80002028:	00a00513          	li	a0,10
    8000202c:	00006097          	auipc	ra,0x6
    80002030:	bf0080e7          	jalr	-1040(ra) # 80007c1c <__putc>
}
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	02010113          	addi	sp,sp,32
    80002044:	00008067          	ret

0000000080002048 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

int MemoryAllocator::get_number_of_blocks(size_t size) {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813423          	sd	s0,8(sp)
    80002050:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002054:	05750513          	addi	a0,a0,87
    80002058:	00655513          	srli	a0,a0,0x6
}
    8000205c:	0005051b          	sext.w	a0,a0
    80002060:	00813403          	ld	s0,8(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    8000206c:	fe010113          	addi	sp,sp,-32
    80002070:	00113c23          	sd	ra,24(sp)
    80002074:	00813823          	sd	s0,16(sp)
    80002078:	00913423          	sd	s1,8(sp)
    8000207c:	02010413          	addi	s0,sp,32
    80002080:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002084:	00008517          	auipc	a0,0x8
    80002088:	50453503          	ld	a0,1284(a0) # 8000a588 <_ZN9Scheduler10tail_readyE>
    8000208c:	02051463          	bnez	a0,800020b4 <_ZN9Scheduler3putEP3TCB+0x48>
        tail_ready -> set_next_ready(thread);
        tail_ready = thread;
        return;
    }
    head_ready = tail_ready = thread;
    80002090:	00008797          	auipc	a5,0x8
    80002094:	4f878793          	addi	a5,a5,1272 # 8000a588 <_ZN9Scheduler10tail_readyE>
    80002098:	0097b023          	sd	s1,0(a5)
    8000209c:	0097b423          	sd	s1,8(a5)
}
    800020a0:	01813083          	ld	ra,24(sp)
    800020a4:	01013403          	ld	s0,16(sp)
    800020a8:	00813483          	ld	s1,8(sp)
    800020ac:	02010113          	addi	sp,sp,32
    800020b0:	00008067          	ret
        tail_ready -> set_next_ready(thread);
    800020b4:	00048593          	mv	a1,s1
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	5b4080e7          	jalr	1460(ra) # 8000166c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800020c0:	00008797          	auipc	a5,0x8
    800020c4:	4c97b423          	sd	s1,1224(a5) # 8000a588 <_ZN9Scheduler10tail_readyE>
        return;
    800020c8:	fd9ff06f          	j	800020a0 <_ZN9Scheduler3putEP3TCB+0x34>

00000000800020cc <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00113c23          	sd	ra,24(sp)
    800020d4:	00813823          	sd	s0,16(sp)
    800020d8:	00913423          	sd	s1,8(sp)
    800020dc:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    800020e0:	00008497          	auipc	s1,0x8
    800020e4:	4b04b483          	ld	s1,1200(s1) # 8000a590 <_ZN9Scheduler10head_readyE>
    800020e8:	00048c63          	beqz	s1,80002100 <_ZN9Scheduler3getEv+0x34>
    TCB *head = head_ready;
    head_ready = head_ready -> get_next_ready();
    800020ec:	00048513          	mv	a0,s1
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	560080e7          	jalr	1376(ra) # 80001650 <_ZN3TCB14get_next_readyEv>
    800020f8:	00008797          	auipc	a5,0x8
    800020fc:	48a7bc23          	sd	a0,1176(a5) # 8000a590 <_ZN9Scheduler10head_readyE>
    return head;
}
    80002100:	00048513          	mv	a0,s1
    80002104:	01813083          	ld	ra,24(sp)
    80002108:	01013403          	ld	s0,16(sp)
    8000210c:	00813483          	ld	s1,8(sp)
    80002110:	02010113          	addi	sp,sp,32
    80002114:	00008067          	ret

0000000080002118 <_ZN9SchedulernwEm>:

void *Scheduler::operator new(size_t size) {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	f20080e7          	jalr	-224(ra) # 80002048 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	b34080e7          	jalr	-1228(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *addr) {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	cf8080e7          	jalr	-776(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN9Scheduler12put_to_sleepEP3TCBm>:

void Scheduler::put_to_sleep(TCB *thread, time_t time) {
    80002170:	fc010113          	addi	sp,sp,-64
    80002174:	02113c23          	sd	ra,56(sp)
    80002178:	02813823          	sd	s0,48(sp)
    8000217c:	02913423          	sd	s1,40(sp)
    80002180:	03213023          	sd	s2,32(sp)
    80002184:	01313c23          	sd	s3,24(sp)
    80002188:	01413823          	sd	s4,16(sp)
    8000218c:	01513423          	sd	s5,8(sp)
    80002190:	04010413          	addi	s0,sp,64
    80002194:	00050a93          	mv	s5,a0
    80002198:	00058993          	mv	s3,a1
    thread -> set_status(TCB::Status::SLEEPING);
    8000219c:	00100593          	li	a1,1
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	558080e7          	jalr	1368(ra) # 800016f8 <_ZN3TCB10set_statusENS_6StatusE>
    if (!head_sleeping) {
    800021a8:	00008497          	auipc	s1,0x8
    800021ac:	3f04b483          	ld	s1,1008(s1) # 8000a598 <_ZN9Scheduler13head_sleepingE>
    800021b0:	02048e63          	beqz	s1,800021ec <_ZN9Scheduler12put_to_sleepEP3TCBm+0x7c>
        thread -> set_next_sleeping(nullptr);
        thread -> set_time_to_sleep(time);
        return;
    }
    TCB* tmp = head_sleeping, *prev = nullptr;
    time_t current_time = 0;
    800021b4:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    800021b8:	00000a13          	li	s4,0
    while (tmp) {
    800021bc:	04048c63          	beqz	s1,80002214 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
        current_time += tmp -> get_time_to_sleep();
    800021c0:	00048513          	mv	a0,s1
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	518080e7          	jalr	1304(ra) # 800016dc <_ZN3TCB17get_time_to_sleepEv>
    800021cc:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    800021d0:	0729e463          	bltu	s3,s2,80002238 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xc8>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
            break;
        }
        prev = tmp;
        tmp = tmp -> get_next_sleeping();
    800021d4:	00048513          	mv	a0,s1
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	4cc080e7          	jalr	1228(ra) # 800016a4 <_ZN3TCB17get_next_sleepingEv>
        prev = tmp;
    800021e0:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    800021e4:	00050493          	mv	s1,a0
    while (tmp) {
    800021e8:	fd5ff06f          	j	800021bc <_ZN9Scheduler12put_to_sleepEP3TCBm+0x4c>
        head_sleeping = thread;
    800021ec:	00008797          	auipc	a5,0x8
    800021f0:	3b57b623          	sd	s5,940(a5) # 8000a598 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    800021f4:	00000593          	li	a1,0
    800021f8:	000a8513          	mv	a0,s5
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	48c080e7          	jalr	1164(ra) # 80001688 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002204:	00098593          	mv	a1,s3
    80002208:	000a8513          	mv	a0,s5
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	4b4080e7          	jalr	1204(ra) # 800016c0 <_ZN3TCB17set_time_to_sleepEm>
    }
}
    80002214:	03813083          	ld	ra,56(sp)
    80002218:	03013403          	ld	s0,48(sp)
    8000221c:	02813483          	ld	s1,40(sp)
    80002220:	02013903          	ld	s2,32(sp)
    80002224:	01813983          	ld	s3,24(sp)
    80002228:	01013a03          	ld	s4,16(sp)
    8000222c:	00813a83          	ld	s5,8(sp)
    80002230:	04010113          	addi	sp,sp,64
    80002234:	00008067          	ret
            time_t new_time = prev ? time - prev -> get_time_to_sleep() : time;
    80002238:	000a0a63          	beqz	s4,8000224c <_ZN9Scheduler12put_to_sleepEP3TCBm+0xdc>
    8000223c:	000a0513          	mv	a0,s4
    80002240:	fffff097          	auipc	ra,0xfffff
    80002244:	49c080e7          	jalr	1180(ra) # 800016dc <_ZN3TCB17get_time_to_sleepEv>
    80002248:	40a989b3          	sub	s3,s3,a0
            thread -> set_time_to_sleep(new_time);
    8000224c:	00098593          	mv	a1,s3
    80002250:	000a8513          	mv	a0,s5
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	46c080e7          	jalr	1132(ra) # 800016c0 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    8000225c:	00048593          	mv	a1,s1
    80002260:	000a8513          	mv	a0,s5
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	424080e7          	jalr	1060(ra) # 80001688 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    8000226c:	040a0c63          	beqz	s4,800022c4 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x154>
    80002270:	000a8593          	mv	a1,s5
    80002274:	000a0513          	mv	a0,s4
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	410080e7          	jalr	1040(ra) # 80001688 <_ZN3TCB17set_next_sleepingEPS_>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    80002280:	00048513          	mv	a0,s1
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	420080e7          	jalr	1056(ra) # 800016a4 <_ZN3TCB17get_next_sleepingEv>
    8000228c:	00050493          	mv	s1,a0
    80002290:	f80482e3          	beqz	s1,80002214 <_ZN9Scheduler12put_to_sleepEP3TCBm+0xa4>
                curr -> set_time_to_sleep(curr -> get_time_to_sleep() - new_time);
    80002294:	00048513          	mv	a0,s1
    80002298:	fffff097          	auipc	ra,0xfffff
    8000229c:	444080e7          	jalr	1092(ra) # 800016dc <_ZN3TCB17get_time_to_sleepEv>
    800022a0:	413505b3          	sub	a1,a0,s3
    800022a4:	00048513          	mv	a0,s1
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	418080e7          	jalr	1048(ra) # 800016c0 <_ZN3TCB17set_time_to_sleepEm>
            for (TCB* curr = tmp -> get_next_sleeping(); curr; curr = curr -> get_next_sleeping())
    800022b0:	00048513          	mv	a0,s1
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	3f0080e7          	jalr	1008(ra) # 800016a4 <_ZN3TCB17get_next_sleepingEv>
    800022bc:	00050493          	mv	s1,a0
    800022c0:	fd1ff06f          	j	80002290 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x120>
            else head_sleeping = thread;
    800022c4:	00008797          	auipc	a5,0x8
    800022c8:	2d57ba23          	sd	s5,724(a5) # 8000a598 <_ZN9Scheduler13head_sleepingE>
    800022cc:	fb5ff06f          	j	80002280 <_ZN9Scheduler12put_to_sleepEP3TCBm+0x110>

00000000800022d0 <_ZN5RiscV22handle_supervisor_trapEv>:
#include "../h/risc-v.hpp"

void RiscV::handle_supervisor_trap() {
    800022d0:	fe010113          	addi	sp,sp,-32
    800022d4:	00113c23          	sd	ra,24(sp)
    800022d8:	00813823          	sd	s0,16(sp)
    800022dc:	02010413          	addi	s0,sp,32
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    800022e0:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    800022e4:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    800022e8:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    800022ec:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    800022f0:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    800022f4:	14202773          	csrr	a4,scause
    800022f8:	fee43423          	sd	a4,-24(s0)
    return scause;
    800022fc:	fe843803          	ld	a6,-24(s0)

    uint64 scause = read_scause();

    /// illegal instruction
    if (scause == (uint64) 2) {
    80002300:	00200713          	li	a4,2
    80002304:	02e80663          	beq	a6,a4,80002330 <_ZN5RiscV22handle_supervisor_trapEv+0x60>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    switch(syscall_code) {
    80002308:	01100713          	li	a4,17
    8000230c:	04e78e63          	beq	a5,a4,80002368 <_ZN5RiscV22handle_supervisor_trapEv+0x98>
    80002310:	02f76c63          	bltu	a4,a5,80002348 <_ZN5RiscV22handle_supervisor_trapEv+0x78>
    80002314:	00100713          	li	a4,1
    80002318:	04e78263          	beq	a5,a4,8000235c <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
    8000231c:	00200713          	li	a4,2
    80002320:	00e79c63          	bne	a5,a4,80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>
        case MEM_ALLOC:
            MemoryAllocator::mem_alloc((size_t) a1);
            break;
        case MEM_FREE:
            MemoryAllocator::mem_free((void *) a1);
    80002324:	00000097          	auipc	ra,0x0
    80002328:	b2c080e7          	jalr	-1236(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    8000232c:	00c0006f          	j	80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002330:	00100793          	li	a5,1
    80002334:	00078513          	mv	a0,a5
//            IO::_putc((char) arg1);
            break;
        default:
            break;
    }
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	02010113          	addi	sp,sp,32
    80002344:	00008067          	ret
    switch(syscall_code) {
    80002348:	01200713          	li	a4,18
    8000234c:	fee796e3          	bne	a5,a4,80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>
            TCB::thread_exit();
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	3c4080e7          	jalr	964(ra) # 80001714 <_ZN3TCB11thread_exitEv>
            break;
    80002358:	fe1ff06f          	j	80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>
            MemoryAllocator::mem_alloc((size_t) a1);
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	908080e7          	jalr	-1784(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
            break;
    80002364:	fd5ff06f          	j	80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>
            TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	4c8080e7          	jalr	1224(ra) # 80001830 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
            break;
    80002370:	fc9ff06f          	j	80002338 <_ZN5RiscV22handle_supervisor_trapEv+0x68>

0000000080002374 <_ZN10ThreadList9get_firstEv>:
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
}

TCB *ThreadList::get_first() {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002380:	00053503          	ld	a0,0(a0)
    80002384:	00050463          	beqz	a0,8000238c <_ZN10ThreadList9get_firstEv+0x18>
    80002388:	00053503          	ld	a0,0(a0)
}
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN10ThreadList4NodenwEm>:
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void *ThreadList::Node::operator new(size_t size) {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	ca0080e7          	jalr	-864(ra) # 80002048 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	8b4080e7          	jalr	-1868(ra) # 80001c64 <_ZN15MemoryAllocator9mem_allocEm>
}
    800023b8:	00813083          	ld	ra,8(sp)
    800023bc:	00013403          	ld	s0,0(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800023c8:	fe010113          	addi	sp,sp,-32
    800023cc:	00113c23          	sd	ra,24(sp)
    800023d0:	00813823          	sd	s0,16(sp)
    800023d4:	00913423          	sd	s1,8(sp)
    800023d8:	01213023          	sd	s2,0(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	00050493          	mv	s1,a0
    800023e4:	00058913          	mv	s2,a1
    tail = (head ? head : tail -> next) = new Node(thread);
    800023e8:	01000513          	li	a0,16
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	fac080e7          	jalr	-84(ra) # 80002398 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        Node(TCB* data) : data(data), next(nullptr) {}
    800023f4:	01253023          	sd	s2,0(a0)
    800023f8:	00053423          	sd	zero,8(a0)
    800023fc:	0004b783          	ld	a5,0(s1)
    80002400:	02078263          	beqz	a5,80002424 <_ZN10ThreadList9push_backEP3TCB+0x5c>
    80002404:	00a4b023          	sd	a0,0(s1)
    80002408:	00a4b423          	sd	a0,8(s1)
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	00013903          	ld	s2,0(sp)
    8000241c:	02010113          	addi	sp,sp,32
    80002420:	00008067          	ret
    tail = (head ? head : tail -> next) = new Node(thread);
    80002424:	0084b783          	ld	a5,8(s1)
    80002428:	00a7b423          	sd	a0,8(a5)
    8000242c:	fddff06f          	j	80002408 <_ZN10ThreadList9push_backEP3TCB+0x40>

0000000080002430 <_ZN10ThreadList10push_frontEP3TCB>:
void ThreadList::push_front(TCB *thread) {
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	01213023          	sd	s2,0(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00050493          	mv	s1,a0
    8000244c:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80002450:	01000513          	li	a0,16
    80002454:	00000097          	auipc	ra,0x0
    80002458:	f44080e7          	jalr	-188(ra) # 80002398 <_ZN10ThreadList4NodenwEm>
    8000245c:	01253023          	sd	s2,0(a0)
    80002460:	00053423          	sd	zero,8(a0)
    node -> next = head;
    80002464:	0004b783          	ld	a5,0(s1)
    80002468:	00f53423          	sd	a5,8(a0)
    head = node;
    8000246c:	00a4b023          	sd	a0,0(s1)
}
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	00013903          	ld	s2,0(sp)
    80002480:	02010113          	addi	sp,sp,32
    80002484:	00008067          	ret

0000000080002488 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00113423          	sd	ra,8(sp)
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	9b8080e7          	jalr	-1608(ra) # 80001e50 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	02010413          	addi	s0,sp,32
    800024c4:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800024c8:	00053503          	ld	a0,0(a0)
    800024cc:	02050a63          	beqz	a0,80002500 <_ZN10ThreadList12remove_firstEv+0x50>
    TCB* thread = tmp -> data;
    800024d0:	00053483          	ld	s1,0(a0)
    head = head -> next;
    800024d4:	00853703          	ld	a4,8(a0)
    800024d8:	00e7b023          	sd	a4,0(a5)
    head -> next = nullptr;
    800024dc:	00073423          	sd	zero,8(a4)
    delete tmp;
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	fa8080e7          	jalr	-88(ra) # 80002488 <_ZN10ThreadList4NodedlEPv>
}
    800024e8:	00048513          	mv	a0,s1
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret
    if (!head) return nullptr;
    80002500:	00050493          	mv	s1,a0
    80002504:	fe5ff06f          	j	800024e8 <_ZN10ThreadList12remove_firstEv+0x38>

0000000080002508 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	01213023          	sd	s2,0(sp)
    8000251c:	02010413          	addi	s0,sp,32
    80002520:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002524:	00000913          	li	s2,0
    80002528:	00c0006f          	j	80002534 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	da8080e7          	jalr	-600(ra) # 800012d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	ea0080e7          	jalr	-352(ra) # 800013d4 <_Z4getcv>
    8000253c:	0005059b          	sext.w	a1,a0
    80002540:	01b00793          	li	a5,27
    80002544:	02f58a63          	beq	a1,a5,80002578 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002548:	0084b503          	ld	a0,8(s1)
    8000254c:	00003097          	auipc	ra,0x3
    80002550:	384080e7          	jalr	900(ra) # 800058d0 <_ZN6Buffer3putEi>
        i++;
    80002554:	0019071b          	addiw	a4,s2,1
    80002558:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000255c:	0004a683          	lw	a3,0(s1)
    80002560:	0026979b          	slliw	a5,a3,0x2
    80002564:	00d787bb          	addw	a5,a5,a3
    80002568:	0017979b          	slliw	a5,a5,0x1
    8000256c:	02f767bb          	remw	a5,a4,a5
    80002570:	fc0792e3          	bnez	a5,80002534 <_ZL16producerKeyboardPv+0x2c>
    80002574:	fb9ff06f          	j	8000252c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002578:	00100793          	li	a5,1
    8000257c:	00008717          	auipc	a4,0x8
    80002580:	02f72223          	sw	a5,36(a4) # 8000a5a0 <_ZL9threadEnd>
    data->buffer->put('!');
    80002584:	02100593          	li	a1,33
    80002588:	0084b503          	ld	a0,8(s1)
    8000258c:	00003097          	auipc	ra,0x3
    80002590:	344080e7          	jalr	836(ra) # 800058d0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002594:	0104b503          	ld	a0,16(s1)
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	dcc080e7          	jalr	-564(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	01013403          	ld	s0,16(sp)
    800025a8:	00813483          	ld	s1,8(sp)
    800025ac:	00013903          	ld	s2,0(sp)
    800025b0:	02010113          	addi	sp,sp,32
    800025b4:	00008067          	ret

00000000800025b8 <_ZL8producerPv>:

static void producer(void *arg) {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	01213023          	sd	s2,0(sp)
    800025cc:	02010413          	addi	s0,sp,32
    800025d0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800025d4:	00000913          	li	s2,0
    800025d8:	00c0006f          	j	800025e4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	cf8080e7          	jalr	-776(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800025e4:	00008797          	auipc	a5,0x8
    800025e8:	fbc7a783          	lw	a5,-68(a5) # 8000a5a0 <_ZL9threadEnd>
    800025ec:	02079e63          	bnez	a5,80002628 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800025f0:	0004a583          	lw	a1,0(s1)
    800025f4:	0305859b          	addiw	a1,a1,48
    800025f8:	0084b503          	ld	a0,8(s1)
    800025fc:	00003097          	auipc	ra,0x3
    80002600:	2d4080e7          	jalr	724(ra) # 800058d0 <_ZN6Buffer3putEi>
        i++;
    80002604:	0019071b          	addiw	a4,s2,1
    80002608:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000260c:	0004a683          	lw	a3,0(s1)
    80002610:	0026979b          	slliw	a5,a3,0x2
    80002614:	00d787bb          	addw	a5,a5,a3
    80002618:	0017979b          	slliw	a5,a5,0x1
    8000261c:	02f767bb          	remw	a5,a4,a5
    80002620:	fc0792e3          	bnez	a5,800025e4 <_ZL8producerPv+0x2c>
    80002624:	fb9ff06f          	j	800025dc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002628:	0104b503          	ld	a0,16(s1)
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	d38080e7          	jalr	-712(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	00013903          	ld	s2,0(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000264c:	fd010113          	addi	sp,sp,-48
    80002650:	02113423          	sd	ra,40(sp)
    80002654:	02813023          	sd	s0,32(sp)
    80002658:	00913c23          	sd	s1,24(sp)
    8000265c:	01213823          	sd	s2,16(sp)
    80002660:	01313423          	sd	s3,8(sp)
    80002664:	03010413          	addi	s0,sp,48
    80002668:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000266c:	00000993          	li	s3,0
    80002670:	01c0006f          	j	8000268c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	c60080e7          	jalr	-928(ra) # 800012d4 <_Z15thread_dispatchv>
    8000267c:	0500006f          	j	800026cc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002680:	00a00513          	li	a0,10
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	d78080e7          	jalr	-648(ra) # 800013fc <_Z4putcc>
    while (!threadEnd) {
    8000268c:	00008797          	auipc	a5,0x8
    80002690:	f147a783          	lw	a5,-236(a5) # 8000a5a0 <_ZL9threadEnd>
    80002694:	06079063          	bnez	a5,800026f4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002698:	00893503          	ld	a0,8(s2)
    8000269c:	00003097          	auipc	ra,0x3
    800026a0:	2c4080e7          	jalr	708(ra) # 80005960 <_ZN6Buffer3getEv>
        i++;
    800026a4:	0019849b          	addiw	s1,s3,1
    800026a8:	0004899b          	sext.w	s3,s1
        putc(key);
    800026ac:	0ff57513          	andi	a0,a0,255
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	d4c080e7          	jalr	-692(ra) # 800013fc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800026b8:	00092703          	lw	a4,0(s2)
    800026bc:	0027179b          	slliw	a5,a4,0x2
    800026c0:	00e787bb          	addw	a5,a5,a4
    800026c4:	02f4e7bb          	remw	a5,s1,a5
    800026c8:	fa0786e3          	beqz	a5,80002674 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800026cc:	05000793          	li	a5,80
    800026d0:	02f4e4bb          	remw	s1,s1,a5
    800026d4:	fa049ce3          	bnez	s1,8000268c <_ZL8consumerPv+0x40>
    800026d8:	fa9ff06f          	j	80002680 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800026dc:	00893503          	ld	a0,8(s2)
    800026e0:	00003097          	auipc	ra,0x3
    800026e4:	280080e7          	jalr	640(ra) # 80005960 <_ZN6Buffer3getEv>
        putc(key);
    800026e8:	0ff57513          	andi	a0,a0,255
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	d10080e7          	jalr	-752(ra) # 800013fc <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800026f4:	00893503          	ld	a0,8(s2)
    800026f8:	00003097          	auipc	ra,0x3
    800026fc:	2f4080e7          	jalr	756(ra) # 800059ec <_ZN6Buffer6getCntEv>
    80002700:	fca04ee3          	bgtz	a0,800026dc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002704:	01093503          	ld	a0,16(s2)
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	c5c080e7          	jalr	-932(ra) # 80001364 <_Z10sem_signalP4_sem>
}
    80002710:	02813083          	ld	ra,40(sp)
    80002714:	02013403          	ld	s0,32(sp)
    80002718:	01813483          	ld	s1,24(sp)
    8000271c:	01013903          	ld	s2,16(sp)
    80002720:	00813983          	ld	s3,8(sp)
    80002724:	03010113          	addi	sp,sp,48
    80002728:	00008067          	ret

000000008000272c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000272c:	f9010113          	addi	sp,sp,-112
    80002730:	06113423          	sd	ra,104(sp)
    80002734:	06813023          	sd	s0,96(sp)
    80002738:	04913c23          	sd	s1,88(sp)
    8000273c:	05213823          	sd	s2,80(sp)
    80002740:	05313423          	sd	s3,72(sp)
    80002744:	05413023          	sd	s4,64(sp)
    80002748:	03513c23          	sd	s5,56(sp)
    8000274c:	03613823          	sd	s6,48(sp)
    80002750:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002754:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002758:	00006517          	auipc	a0,0x6
    8000275c:	8c850513          	addi	a0,a0,-1848 # 80008020 <CONSOLE_STATUS+0x10>
    80002760:	00002097          	auipc	ra,0x2
    80002764:	220080e7          	jalr	544(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    80002768:	01e00593          	li	a1,30
    8000276c:	fa040493          	addi	s1,s0,-96
    80002770:	00048513          	mv	a0,s1
    80002774:	00002097          	auipc	ra,0x2
    80002778:	294080e7          	jalr	660(ra) # 80004a08 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000277c:	00048513          	mv	a0,s1
    80002780:	00002097          	auipc	ra,0x2
    80002784:	360080e7          	jalr	864(ra) # 80004ae0 <_Z11stringToIntPKc>
    80002788:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000278c:	00006517          	auipc	a0,0x6
    80002790:	8b450513          	addi	a0,a0,-1868 # 80008040 <CONSOLE_STATUS+0x30>
    80002794:	00002097          	auipc	ra,0x2
    80002798:	1ec080e7          	jalr	492(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    8000279c:	01e00593          	li	a1,30
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00002097          	auipc	ra,0x2
    800027a8:	264080e7          	jalr	612(ra) # 80004a08 <_Z9getStringPci>
    n = stringToInt(input);
    800027ac:	00048513          	mv	a0,s1
    800027b0:	00002097          	auipc	ra,0x2
    800027b4:	330080e7          	jalr	816(ra) # 80004ae0 <_Z11stringToIntPKc>
    800027b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800027bc:	00006517          	auipc	a0,0x6
    800027c0:	8a450513          	addi	a0,a0,-1884 # 80008060 <CONSOLE_STATUS+0x50>
    800027c4:	00002097          	auipc	ra,0x2
    800027c8:	1bc080e7          	jalr	444(ra) # 80004980 <_Z11printStringPKc>
    800027cc:	00000613          	li	a2,0
    800027d0:	00a00593          	li	a1,10
    800027d4:	00090513          	mv	a0,s2
    800027d8:	00002097          	auipc	ra,0x2
    800027dc:	358080e7          	jalr	856(ra) # 80004b30 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800027e0:	00006517          	auipc	a0,0x6
    800027e4:	89850513          	addi	a0,a0,-1896 # 80008078 <CONSOLE_STATUS+0x68>
    800027e8:	00002097          	auipc	ra,0x2
    800027ec:	198080e7          	jalr	408(ra) # 80004980 <_Z11printStringPKc>
    800027f0:	00000613          	li	a2,0
    800027f4:	00a00593          	li	a1,10
    800027f8:	00048513          	mv	a0,s1
    800027fc:	00002097          	auipc	ra,0x2
    80002800:	334080e7          	jalr	820(ra) # 80004b30 <_Z8printIntiii>
    printString(".\n");
    80002804:	00006517          	auipc	a0,0x6
    80002808:	88c50513          	addi	a0,a0,-1908 # 80008090 <CONSOLE_STATUS+0x80>
    8000280c:	00002097          	auipc	ra,0x2
    80002810:	174080e7          	jalr	372(ra) # 80004980 <_Z11printStringPKc>
    if(threadNum > n) {
    80002814:	0324c463          	blt	s1,s2,8000283c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002818:	03205c63          	blez	s2,80002850 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000281c:	03800513          	li	a0,56
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	120080e7          	jalr	288(ra) # 80001940 <_Znwm>
    80002828:	00050a13          	mv	s4,a0
    8000282c:	00048593          	mv	a1,s1
    80002830:	00003097          	auipc	ra,0x3
    80002834:	004080e7          	jalr	4(ra) # 80005834 <_ZN6BufferC1Ei>
    80002838:	0300006f          	j	80002868 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000283c:	00006517          	auipc	a0,0x6
    80002840:	85c50513          	addi	a0,a0,-1956 # 80008098 <CONSOLE_STATUS+0x88>
    80002844:	00002097          	auipc	ra,0x2
    80002848:	13c080e7          	jalr	316(ra) # 80004980 <_Z11printStringPKc>
        return;
    8000284c:	0140006f          	j	80002860 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002850:	00006517          	auipc	a0,0x6
    80002854:	88850513          	addi	a0,a0,-1912 # 800080d8 <CONSOLE_STATUS+0xc8>
    80002858:	00002097          	auipc	ra,0x2
    8000285c:	128080e7          	jalr	296(ra) # 80004980 <_Z11printStringPKc>
        return;
    80002860:	000b0113          	mv	sp,s6
    80002864:	1500006f          	j	800029b4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002868:	00000593          	li	a1,0
    8000286c:	00008517          	auipc	a0,0x8
    80002870:	d3c50513          	addi	a0,a0,-708 # 8000a5a8 <_ZL10waitForAll>
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	a9c080e7          	jalr	-1380(ra) # 80001310 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000287c:	00391793          	slli	a5,s2,0x3
    80002880:	00f78793          	addi	a5,a5,15
    80002884:	ff07f793          	andi	a5,a5,-16
    80002888:	40f10133          	sub	sp,sp,a5
    8000288c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002890:	0019071b          	addiw	a4,s2,1
    80002894:	00171793          	slli	a5,a4,0x1
    80002898:	00e787b3          	add	a5,a5,a4
    8000289c:	00379793          	slli	a5,a5,0x3
    800028a0:	00f78793          	addi	a5,a5,15
    800028a4:	ff07f793          	andi	a5,a5,-16
    800028a8:	40f10133          	sub	sp,sp,a5
    800028ac:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800028b0:	00191613          	slli	a2,s2,0x1
    800028b4:	012607b3          	add	a5,a2,s2
    800028b8:	00379793          	slli	a5,a5,0x3
    800028bc:	00f987b3          	add	a5,s3,a5
    800028c0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800028c4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800028c8:	00008717          	auipc	a4,0x8
    800028cc:	ce073703          	ld	a4,-800(a4) # 8000a5a8 <_ZL10waitForAll>
    800028d0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800028d4:	00078613          	mv	a2,a5
    800028d8:	00000597          	auipc	a1,0x0
    800028dc:	d7458593          	addi	a1,a1,-652 # 8000264c <_ZL8consumerPv>
    800028e0:	f9840513          	addi	a0,s0,-104
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	91c080e7          	jalr	-1764(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028ec:	00000493          	li	s1,0
    800028f0:	0280006f          	j	80002918 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800028f4:	00000597          	auipc	a1,0x0
    800028f8:	c1458593          	addi	a1,a1,-1004 # 80002508 <_ZL16producerKeyboardPv>
                      data + i);
    800028fc:	00179613          	slli	a2,a5,0x1
    80002900:	00f60633          	add	a2,a2,a5
    80002904:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002908:	00c98633          	add	a2,s3,a2
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	8f4080e7          	jalr	-1804(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002914:	0014849b          	addiw	s1,s1,1
    80002918:	0524d263          	bge	s1,s2,8000295c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000291c:	00149793          	slli	a5,s1,0x1
    80002920:	009787b3          	add	a5,a5,s1
    80002924:	00379793          	slli	a5,a5,0x3
    80002928:	00f987b3          	add	a5,s3,a5
    8000292c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002930:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002934:	00008717          	auipc	a4,0x8
    80002938:	c7473703          	ld	a4,-908(a4) # 8000a5a8 <_ZL10waitForAll>
    8000293c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002940:	00048793          	mv	a5,s1
    80002944:	00349513          	slli	a0,s1,0x3
    80002948:	00aa8533          	add	a0,s5,a0
    8000294c:	fa9054e3          	blez	s1,800028f4 <_Z22producerConsumer_C_APIv+0x1c8>
    80002950:	00000597          	auipc	a1,0x0
    80002954:	c6858593          	addi	a1,a1,-920 # 800025b8 <_ZL8producerPv>
    80002958:	fa5ff06f          	j	800028fc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	978080e7          	jalr	-1672(ra) # 800012d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002964:	00000493          	li	s1,0
    80002968:	00994e63          	blt	s2,s1,80002984 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000296c:	00008517          	auipc	a0,0x8
    80002970:	c3c53503          	ld	a0,-964(a0) # 8000a5a8 <_ZL10waitForAll>
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	9d4080e7          	jalr	-1580(ra) # 80001348 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000297c:	0014849b          	addiw	s1,s1,1
    80002980:	fe9ff06f          	j	80002968 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002984:	00008517          	auipc	a0,0x8
    80002988:	c2453503          	ld	a0,-988(a0) # 8000a5a8 <_ZL10waitForAll>
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	9a0080e7          	jalr	-1632(ra) # 8000132c <_Z9sem_closeP4_sem>
    delete buffer;
    80002994:	000a0e63          	beqz	s4,800029b0 <_Z22producerConsumer_C_APIv+0x284>
    80002998:	000a0513          	mv	a0,s4
    8000299c:	00003097          	auipc	ra,0x3
    800029a0:	0d8080e7          	jalr	216(ra) # 80005a74 <_ZN6BufferD1Ev>
    800029a4:	000a0513          	mv	a0,s4
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	fc0080e7          	jalr	-64(ra) # 80001968 <_ZdlPv>
    800029b0:	000b0113          	mv	sp,s6

}
    800029b4:	f9040113          	addi	sp,s0,-112
    800029b8:	06813083          	ld	ra,104(sp)
    800029bc:	06013403          	ld	s0,96(sp)
    800029c0:	05813483          	ld	s1,88(sp)
    800029c4:	05013903          	ld	s2,80(sp)
    800029c8:	04813983          	ld	s3,72(sp)
    800029cc:	04013a03          	ld	s4,64(sp)
    800029d0:	03813a83          	ld	s5,56(sp)
    800029d4:	03013b03          	ld	s6,48(sp)
    800029d8:	07010113          	addi	sp,sp,112
    800029dc:	00008067          	ret
    800029e0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800029e4:	000a0513          	mv	a0,s4
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	f80080e7          	jalr	-128(ra) # 80001968 <_ZdlPv>
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00009097          	auipc	ra,0x9
    800029f8:	cc4080e7          	jalr	-828(ra) # 8000b6b8 <_Unwind_Resume>

00000000800029fc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	01213023          	sd	s2,0(sp)
    80002a10:	02010413          	addi	s0,sp,32
    80002a14:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a18:	00100793          	li	a5,1
    80002a1c:	02a7f863          	bgeu	a5,a0,80002a4c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a20:	00a00793          	li	a5,10
    80002a24:	02f577b3          	remu	a5,a0,a5
    80002a28:	02078e63          	beqz	a5,80002a64 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002a2c:	fff48513          	addi	a0,s1,-1
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	fcc080e7          	jalr	-52(ra) # 800029fc <_ZL9fibonaccim>
    80002a38:	00050913          	mv	s2,a0
    80002a3c:	ffe48513          	addi	a0,s1,-2
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	fbc080e7          	jalr	-68(ra) # 800029fc <_ZL9fibonaccim>
    80002a48:	00a90533          	add	a0,s2,a0
}
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	00013903          	ld	s2,0(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	870080e7          	jalr	-1936(ra) # 800012d4 <_Z15thread_dispatchv>
    80002a6c:	fc1ff06f          	j	80002a2c <_ZL9fibonaccim+0x30>

0000000080002a70 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	01213023          	sd	s2,0(sp)
    80002a84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a88:	00000913          	li	s2,0
    80002a8c:	0380006f          	j	80002ac4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	844080e7          	jalr	-1980(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a98:	00148493          	addi	s1,s1,1
    80002a9c:	000027b7          	lui	a5,0x2
    80002aa0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002aa4:	0097ee63          	bltu	a5,s1,80002ac0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002aa8:	00000713          	li	a4,0
    80002aac:	000077b7          	lui	a5,0x7
    80002ab0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ab4:	fce7eee3          	bltu	a5,a4,80002a90 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002ab8:	00170713          	addi	a4,a4,1
    80002abc:	ff1ff06f          	j	80002aac <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ac0:	00190913          	addi	s2,s2,1
    80002ac4:	00900793          	li	a5,9
    80002ac8:	0527e063          	bltu	a5,s2,80002b08 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002acc:	00005517          	auipc	a0,0x5
    80002ad0:	63c50513          	addi	a0,a0,1596 # 80008108 <CONSOLE_STATUS+0xf8>
    80002ad4:	00002097          	auipc	ra,0x2
    80002ad8:	eac080e7          	jalr	-340(ra) # 80004980 <_Z11printStringPKc>
    80002adc:	00000613          	li	a2,0
    80002ae0:	00a00593          	li	a1,10
    80002ae4:	0009051b          	sext.w	a0,s2
    80002ae8:	00002097          	auipc	ra,0x2
    80002aec:	048080e7          	jalr	72(ra) # 80004b30 <_Z8printIntiii>
    80002af0:	00005517          	auipc	a0,0x5
    80002af4:	56850513          	addi	a0,a0,1384 # 80008058 <CONSOLE_STATUS+0x48>
    80002af8:	00002097          	auipc	ra,0x2
    80002afc:	e88080e7          	jalr	-376(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b00:	00000493          	li	s1,0
    80002b04:	f99ff06f          	j	80002a9c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002b08:	00005517          	auipc	a0,0x5
    80002b0c:	60850513          	addi	a0,a0,1544 # 80008110 <CONSOLE_STATUS+0x100>
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	e70080e7          	jalr	-400(ra) # 80004980 <_Z11printStringPKc>
    finishedA = true;
    80002b18:	00100793          	li	a5,1
    80002b1c:	00008717          	auipc	a4,0x8
    80002b20:	a8f70a23          	sb	a5,-1388(a4) # 8000a5b0 <_ZL9finishedA>
}
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	00813483          	ld	s1,8(sp)
    80002b30:	00013903          	ld	s2,0(sp)
    80002b34:	02010113          	addi	sp,sp,32
    80002b38:	00008067          	ret

0000000080002b3c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002b3c:	fe010113          	addi	sp,sp,-32
    80002b40:	00113c23          	sd	ra,24(sp)
    80002b44:	00813823          	sd	s0,16(sp)
    80002b48:	00913423          	sd	s1,8(sp)
    80002b4c:	01213023          	sd	s2,0(sp)
    80002b50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b54:	00000913          	li	s2,0
    80002b58:	0380006f          	j	80002b90 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b5c:	ffffe097          	auipc	ra,0xffffe
    80002b60:	778080e7          	jalr	1912(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b64:	00148493          	addi	s1,s1,1
    80002b68:	000027b7          	lui	a5,0x2
    80002b6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b70:	0097ee63          	bltu	a5,s1,80002b8c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b74:	00000713          	li	a4,0
    80002b78:	000077b7          	lui	a5,0x7
    80002b7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b80:	fce7eee3          	bltu	a5,a4,80002b5c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b84:	00170713          	addi	a4,a4,1
    80002b88:	ff1ff06f          	j	80002b78 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b8c:	00190913          	addi	s2,s2,1
    80002b90:	00f00793          	li	a5,15
    80002b94:	0527e063          	bltu	a5,s2,80002bd4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b98:	00005517          	auipc	a0,0x5
    80002b9c:	58850513          	addi	a0,a0,1416 # 80008120 <CONSOLE_STATUS+0x110>
    80002ba0:	00002097          	auipc	ra,0x2
    80002ba4:	de0080e7          	jalr	-544(ra) # 80004980 <_Z11printStringPKc>
    80002ba8:	00000613          	li	a2,0
    80002bac:	00a00593          	li	a1,10
    80002bb0:	0009051b          	sext.w	a0,s2
    80002bb4:	00002097          	auipc	ra,0x2
    80002bb8:	f7c080e7          	jalr	-132(ra) # 80004b30 <_Z8printIntiii>
    80002bbc:	00005517          	auipc	a0,0x5
    80002bc0:	49c50513          	addi	a0,a0,1180 # 80008058 <CONSOLE_STATUS+0x48>
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	dbc080e7          	jalr	-580(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002bcc:	00000493          	li	s1,0
    80002bd0:	f99ff06f          	j	80002b68 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002bd4:	00005517          	auipc	a0,0x5
    80002bd8:	55450513          	addi	a0,a0,1364 # 80008128 <CONSOLE_STATUS+0x118>
    80002bdc:	00002097          	auipc	ra,0x2
    80002be0:	da4080e7          	jalr	-604(ra) # 80004980 <_Z11printStringPKc>
    finishedB = true;
    80002be4:	00100793          	li	a5,1
    80002be8:	00008717          	auipc	a4,0x8
    80002bec:	9cf704a3          	sb	a5,-1591(a4) # 8000a5b1 <_ZL9finishedB>
    thread_dispatch();
    80002bf0:	ffffe097          	auipc	ra,0xffffe
    80002bf4:	6e4080e7          	jalr	1764(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80002bf8:	01813083          	ld	ra,24(sp)
    80002bfc:	01013403          	ld	s0,16(sp)
    80002c00:	00813483          	ld	s1,8(sp)
    80002c04:	00013903          	ld	s2,0(sp)
    80002c08:	02010113          	addi	sp,sp,32
    80002c0c:	00008067          	ret

0000000080002c10 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002c10:	fe010113          	addi	sp,sp,-32
    80002c14:	00113c23          	sd	ra,24(sp)
    80002c18:	00813823          	sd	s0,16(sp)
    80002c1c:	00913423          	sd	s1,8(sp)
    80002c20:	01213023          	sd	s2,0(sp)
    80002c24:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002c28:	00000493          	li	s1,0
    80002c2c:	0400006f          	j	80002c6c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002c30:	00005517          	auipc	a0,0x5
    80002c34:	50850513          	addi	a0,a0,1288 # 80008138 <CONSOLE_STATUS+0x128>
    80002c38:	00002097          	auipc	ra,0x2
    80002c3c:	d48080e7          	jalr	-696(ra) # 80004980 <_Z11printStringPKc>
    80002c40:	00000613          	li	a2,0
    80002c44:	00a00593          	li	a1,10
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00002097          	auipc	ra,0x2
    80002c50:	ee4080e7          	jalr	-284(ra) # 80004b30 <_Z8printIntiii>
    80002c54:	00005517          	auipc	a0,0x5
    80002c58:	40450513          	addi	a0,a0,1028 # 80008058 <CONSOLE_STATUS+0x48>
    80002c5c:	00002097          	auipc	ra,0x2
    80002c60:	d24080e7          	jalr	-732(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c64:	0014849b          	addiw	s1,s1,1
    80002c68:	0ff4f493          	andi	s1,s1,255
    80002c6c:	00200793          	li	a5,2
    80002c70:	fc97f0e3          	bgeu	a5,s1,80002c30 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c74:	00005517          	auipc	a0,0x5
    80002c78:	4cc50513          	addi	a0,a0,1228 # 80008140 <CONSOLE_STATUS+0x130>
    80002c7c:	00002097          	auipc	ra,0x2
    80002c80:	d04080e7          	jalr	-764(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c84:	00700313          	li	t1,7
    thread_dispatch();
    80002c88:	ffffe097          	auipc	ra,0xffffe
    80002c8c:	64c080e7          	jalr	1612(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c90:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c94:	00005517          	auipc	a0,0x5
    80002c98:	4bc50513          	addi	a0,a0,1212 # 80008150 <CONSOLE_STATUS+0x140>
    80002c9c:	00002097          	auipc	ra,0x2
    80002ca0:	ce4080e7          	jalr	-796(ra) # 80004980 <_Z11printStringPKc>
    80002ca4:	00000613          	li	a2,0
    80002ca8:	00a00593          	li	a1,10
    80002cac:	0009051b          	sext.w	a0,s2
    80002cb0:	00002097          	auipc	ra,0x2
    80002cb4:	e80080e7          	jalr	-384(ra) # 80004b30 <_Z8printIntiii>
    80002cb8:	00005517          	auipc	a0,0x5
    80002cbc:	3a050513          	addi	a0,a0,928 # 80008058 <CONSOLE_STATUS+0x48>
    80002cc0:	00002097          	auipc	ra,0x2
    80002cc4:	cc0080e7          	jalr	-832(ra) # 80004980 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002cc8:	00c00513          	li	a0,12
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	d30080e7          	jalr	-720(ra) # 800029fc <_ZL9fibonaccim>
    80002cd4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002cd8:	00005517          	auipc	a0,0x5
    80002cdc:	48050513          	addi	a0,a0,1152 # 80008158 <CONSOLE_STATUS+0x148>
    80002ce0:	00002097          	auipc	ra,0x2
    80002ce4:	ca0080e7          	jalr	-864(ra) # 80004980 <_Z11printStringPKc>
    80002ce8:	00000613          	li	a2,0
    80002cec:	00a00593          	li	a1,10
    80002cf0:	0009051b          	sext.w	a0,s2
    80002cf4:	00002097          	auipc	ra,0x2
    80002cf8:	e3c080e7          	jalr	-452(ra) # 80004b30 <_Z8printIntiii>
    80002cfc:	00005517          	auipc	a0,0x5
    80002d00:	35c50513          	addi	a0,a0,860 # 80008058 <CONSOLE_STATUS+0x48>
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	c7c080e7          	jalr	-900(ra) # 80004980 <_Z11printStringPKc>
    80002d0c:	0400006f          	j	80002d4c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d10:	00005517          	auipc	a0,0x5
    80002d14:	42850513          	addi	a0,a0,1064 # 80008138 <CONSOLE_STATUS+0x128>
    80002d18:	00002097          	auipc	ra,0x2
    80002d1c:	c68080e7          	jalr	-920(ra) # 80004980 <_Z11printStringPKc>
    80002d20:	00000613          	li	a2,0
    80002d24:	00a00593          	li	a1,10
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00002097          	auipc	ra,0x2
    80002d30:	e04080e7          	jalr	-508(ra) # 80004b30 <_Z8printIntiii>
    80002d34:	00005517          	auipc	a0,0x5
    80002d38:	32450513          	addi	a0,a0,804 # 80008058 <CONSOLE_STATUS+0x48>
    80002d3c:	00002097          	auipc	ra,0x2
    80002d40:	c44080e7          	jalr	-956(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d44:	0014849b          	addiw	s1,s1,1
    80002d48:	0ff4f493          	andi	s1,s1,255
    80002d4c:	00500793          	li	a5,5
    80002d50:	fc97f0e3          	bgeu	a5,s1,80002d10 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002d54:	00005517          	auipc	a0,0x5
    80002d58:	3bc50513          	addi	a0,a0,956 # 80008110 <CONSOLE_STATUS+0x100>
    80002d5c:	00002097          	auipc	ra,0x2
    80002d60:	c24080e7          	jalr	-988(ra) # 80004980 <_Z11printStringPKc>
    finishedC = true;
    80002d64:	00100793          	li	a5,1
    80002d68:	00008717          	auipc	a4,0x8
    80002d6c:	84f70523          	sb	a5,-1974(a4) # 8000a5b2 <_ZL9finishedC>
    thread_dispatch();
    80002d70:	ffffe097          	auipc	ra,0xffffe
    80002d74:	564080e7          	jalr	1380(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	00013903          	ld	s2,0(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	01213023          	sd	s2,0(sp)
    80002da4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002da8:	00a00493          	li	s1,10
    80002dac:	0400006f          	j	80002dec <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002db0:	00005517          	auipc	a0,0x5
    80002db4:	3b850513          	addi	a0,a0,952 # 80008168 <CONSOLE_STATUS+0x158>
    80002db8:	00002097          	auipc	ra,0x2
    80002dbc:	bc8080e7          	jalr	-1080(ra) # 80004980 <_Z11printStringPKc>
    80002dc0:	00000613          	li	a2,0
    80002dc4:	00a00593          	li	a1,10
    80002dc8:	00048513          	mv	a0,s1
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	d64080e7          	jalr	-668(ra) # 80004b30 <_Z8printIntiii>
    80002dd4:	00005517          	auipc	a0,0x5
    80002dd8:	28450513          	addi	a0,a0,644 # 80008058 <CONSOLE_STATUS+0x48>
    80002ddc:	00002097          	auipc	ra,0x2
    80002de0:	ba4080e7          	jalr	-1116(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002de4:	0014849b          	addiw	s1,s1,1
    80002de8:	0ff4f493          	andi	s1,s1,255
    80002dec:	00c00793          	li	a5,12
    80002df0:	fc97f0e3          	bgeu	a5,s1,80002db0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002df4:	00005517          	auipc	a0,0x5
    80002df8:	37c50513          	addi	a0,a0,892 # 80008170 <CONSOLE_STATUS+0x160>
    80002dfc:	00002097          	auipc	ra,0x2
    80002e00:	b84080e7          	jalr	-1148(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002e04:	00500313          	li	t1,5
    thread_dispatch();
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	4cc080e7          	jalr	1228(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002e10:	01000513          	li	a0,16
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	be8080e7          	jalr	-1048(ra) # 800029fc <_ZL9fibonaccim>
    80002e1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002e20:	00005517          	auipc	a0,0x5
    80002e24:	36050513          	addi	a0,a0,864 # 80008180 <CONSOLE_STATUS+0x170>
    80002e28:	00002097          	auipc	ra,0x2
    80002e2c:	b58080e7          	jalr	-1192(ra) # 80004980 <_Z11printStringPKc>
    80002e30:	00000613          	li	a2,0
    80002e34:	00a00593          	li	a1,10
    80002e38:	0009051b          	sext.w	a0,s2
    80002e3c:	00002097          	auipc	ra,0x2
    80002e40:	cf4080e7          	jalr	-780(ra) # 80004b30 <_Z8printIntiii>
    80002e44:	00005517          	auipc	a0,0x5
    80002e48:	21450513          	addi	a0,a0,532 # 80008058 <CONSOLE_STATUS+0x48>
    80002e4c:	00002097          	auipc	ra,0x2
    80002e50:	b34080e7          	jalr	-1228(ra) # 80004980 <_Z11printStringPKc>
    80002e54:	0400006f          	j	80002e94 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e58:	00005517          	auipc	a0,0x5
    80002e5c:	31050513          	addi	a0,a0,784 # 80008168 <CONSOLE_STATUS+0x158>
    80002e60:	00002097          	auipc	ra,0x2
    80002e64:	b20080e7          	jalr	-1248(ra) # 80004980 <_Z11printStringPKc>
    80002e68:	00000613          	li	a2,0
    80002e6c:	00a00593          	li	a1,10
    80002e70:	00048513          	mv	a0,s1
    80002e74:	00002097          	auipc	ra,0x2
    80002e78:	cbc080e7          	jalr	-836(ra) # 80004b30 <_Z8printIntiii>
    80002e7c:	00005517          	auipc	a0,0x5
    80002e80:	1dc50513          	addi	a0,a0,476 # 80008058 <CONSOLE_STATUS+0x48>
    80002e84:	00002097          	auipc	ra,0x2
    80002e88:	afc080e7          	jalr	-1284(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e8c:	0014849b          	addiw	s1,s1,1
    80002e90:	0ff4f493          	andi	s1,s1,255
    80002e94:	00f00793          	li	a5,15
    80002e98:	fc97f0e3          	bgeu	a5,s1,80002e58 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e9c:	00005517          	auipc	a0,0x5
    80002ea0:	2f450513          	addi	a0,a0,756 # 80008190 <CONSOLE_STATUS+0x180>
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	adc080e7          	jalr	-1316(ra) # 80004980 <_Z11printStringPKc>
    finishedD = true;
    80002eac:	00100793          	li	a5,1
    80002eb0:	00007717          	auipc	a4,0x7
    80002eb4:	70f701a3          	sb	a5,1795(a4) # 8000a5b3 <_ZL9finishedD>
    thread_dispatch();
    80002eb8:	ffffe097          	auipc	ra,0xffffe
    80002ebc:	41c080e7          	jalr	1052(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80002ec0:	01813083          	ld	ra,24(sp)
    80002ec4:	01013403          	ld	s0,16(sp)
    80002ec8:	00813483          	ld	s1,8(sp)
    80002ecc:	00013903          	ld	s2,0(sp)
    80002ed0:	02010113          	addi	sp,sp,32
    80002ed4:	00008067          	ret

0000000080002ed8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002ed8:	fc010113          	addi	sp,sp,-64
    80002edc:	02113c23          	sd	ra,56(sp)
    80002ee0:	02813823          	sd	s0,48(sp)
    80002ee4:	02913423          	sd	s1,40(sp)
    80002ee8:	03213023          	sd	s2,32(sp)
    80002eec:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002ef0:	02000513          	li	a0,32
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	a4c080e7          	jalr	-1460(ra) # 80001940 <_Znwm>
    80002efc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	b54080e7          	jalr	-1196(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80002f08:	00007797          	auipc	a5,0x7
    80002f0c:	45878793          	addi	a5,a5,1112 # 8000a360 <_ZTV7WorkerA+0x10>
    80002f10:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002f14:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002f18:	00005517          	auipc	a0,0x5
    80002f1c:	28850513          	addi	a0,a0,648 # 800081a0 <CONSOLE_STATUS+0x190>
    80002f20:	00002097          	auipc	ra,0x2
    80002f24:	a60080e7          	jalr	-1440(ra) # 80004980 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002f28:	02000513          	li	a0,32
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	a14080e7          	jalr	-1516(ra) # 80001940 <_Znwm>
    80002f34:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	b1c080e7          	jalr	-1252(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80002f40:	00007797          	auipc	a5,0x7
    80002f44:	44878793          	addi	a5,a5,1096 # 8000a388 <_ZTV7WorkerB+0x10>
    80002f48:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002f4c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002f50:	00005517          	auipc	a0,0x5
    80002f54:	26850513          	addi	a0,a0,616 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002f58:	00002097          	auipc	ra,0x2
    80002f5c:	a28080e7          	jalr	-1496(ra) # 80004980 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002f60:	02000513          	li	a0,32
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	9dc080e7          	jalr	-1572(ra) # 80001940 <_Znwm>
    80002f6c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	ae4080e7          	jalr	-1308(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80002f78:	00007797          	auipc	a5,0x7
    80002f7c:	43878793          	addi	a5,a5,1080 # 8000a3b0 <_ZTV7WorkerC+0x10>
    80002f80:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f84:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f88:	00005517          	auipc	a0,0x5
    80002f8c:	24850513          	addi	a0,a0,584 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80002f90:	00002097          	auipc	ra,0x2
    80002f94:	9f0080e7          	jalr	-1552(ra) # 80004980 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f98:	02000513          	li	a0,32
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	9a4080e7          	jalr	-1628(ra) # 80001940 <_Znwm>
    80002fa4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	aac080e7          	jalr	-1364(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80002fb0:	00007797          	auipc	a5,0x7
    80002fb4:	42878793          	addi	a5,a5,1064 # 8000a3d8 <_ZTV7WorkerD+0x10>
    80002fb8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002fbc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002fc0:	00005517          	auipc	a0,0x5
    80002fc4:	22850513          	addi	a0,a0,552 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002fc8:	00002097          	auipc	ra,0x2
    80002fcc:	9b8080e7          	jalr	-1608(ra) # 80004980 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002fd0:	00000493          	li	s1,0
    80002fd4:	00300793          	li	a5,3
    80002fd8:	0297c663          	blt	a5,s1,80003004 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002fdc:	00349793          	slli	a5,s1,0x3
    80002fe0:	fe040713          	addi	a4,s0,-32
    80002fe4:	00f707b3          	add	a5,a4,a5
    80002fe8:	fe07b503          	ld	a0,-32(a5)
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	a18080e7          	jalr	-1512(ra) # 80001a04 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002ff4:	0014849b          	addiw	s1,s1,1
    80002ff8:	fddff06f          	j	80002fd4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	a24080e7          	jalr	-1500(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003004:	00007797          	auipc	a5,0x7
    80003008:	5ac7c783          	lbu	a5,1452(a5) # 8000a5b0 <_ZL9finishedA>
    8000300c:	fe0788e3          	beqz	a5,80002ffc <_Z20Threads_CPP_API_testv+0x124>
    80003010:	00007797          	auipc	a5,0x7
    80003014:	5a17c783          	lbu	a5,1441(a5) # 8000a5b1 <_ZL9finishedB>
    80003018:	fe0782e3          	beqz	a5,80002ffc <_Z20Threads_CPP_API_testv+0x124>
    8000301c:	00007797          	auipc	a5,0x7
    80003020:	5967c783          	lbu	a5,1430(a5) # 8000a5b2 <_ZL9finishedC>
    80003024:	fc078ce3          	beqz	a5,80002ffc <_Z20Threads_CPP_API_testv+0x124>
    80003028:	00007797          	auipc	a5,0x7
    8000302c:	58b7c783          	lbu	a5,1419(a5) # 8000a5b3 <_ZL9finishedD>
    80003030:	fc0786e3          	beqz	a5,80002ffc <_Z20Threads_CPP_API_testv+0x124>
    80003034:	fc040493          	addi	s1,s0,-64
    80003038:	0080006f          	j	80003040 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000303c:	00848493          	addi	s1,s1,8
    80003040:	fe040793          	addi	a5,s0,-32
    80003044:	08f48663          	beq	s1,a5,800030d0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003048:	0004b503          	ld	a0,0(s1)
    8000304c:	fe0508e3          	beqz	a0,8000303c <_Z20Threads_CPP_API_testv+0x164>
    80003050:	00053783          	ld	a5,0(a0)
    80003054:	0087b783          	ld	a5,8(a5)
    80003058:	000780e7          	jalr	a5
    8000305c:	fe1ff06f          	j	8000303c <_Z20Threads_CPP_API_testv+0x164>
    80003060:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003064:	00048513          	mv	a0,s1
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	900080e7          	jalr	-1792(ra) # 80001968 <_ZdlPv>
    80003070:	00090513          	mv	a0,s2
    80003074:	00008097          	auipc	ra,0x8
    80003078:	644080e7          	jalr	1604(ra) # 8000b6b8 <_Unwind_Resume>
    8000307c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003080:	00048513          	mv	a0,s1
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	8e4080e7          	jalr	-1820(ra) # 80001968 <_ZdlPv>
    8000308c:	00090513          	mv	a0,s2
    80003090:	00008097          	auipc	ra,0x8
    80003094:	628080e7          	jalr	1576(ra) # 8000b6b8 <_Unwind_Resume>
    80003098:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000309c:	00048513          	mv	a0,s1
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	8c8080e7          	jalr	-1848(ra) # 80001968 <_ZdlPv>
    800030a8:	00090513          	mv	a0,s2
    800030ac:	00008097          	auipc	ra,0x8
    800030b0:	60c080e7          	jalr	1548(ra) # 8000b6b8 <_Unwind_Resume>
    800030b4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800030b8:	00048513          	mv	a0,s1
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	8ac080e7          	jalr	-1876(ra) # 80001968 <_ZdlPv>
    800030c4:	00090513          	mv	a0,s2
    800030c8:	00008097          	auipc	ra,0x8
    800030cc:	5f0080e7          	jalr	1520(ra) # 8000b6b8 <_Unwind_Resume>
}
    800030d0:	03813083          	ld	ra,56(sp)
    800030d4:	03013403          	ld	s0,48(sp)
    800030d8:	02813483          	ld	s1,40(sp)
    800030dc:	02013903          	ld	s2,32(sp)
    800030e0:	04010113          	addi	sp,sp,64
    800030e4:	00008067          	ret

00000000800030e8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800030e8:	ff010113          	addi	sp,sp,-16
    800030ec:	00113423          	sd	ra,8(sp)
    800030f0:	00813023          	sd	s0,0(sp)
    800030f4:	01010413          	addi	s0,sp,16
    800030f8:	00007797          	auipc	a5,0x7
    800030fc:	26878793          	addi	a5,a5,616 # 8000a360 <_ZTV7WorkerA+0x10>
    80003100:	00f53023          	sd	a5,0(a0)
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	80c080e7          	jalr	-2036(ra) # 80001910 <_ZN6ThreadD1Ev>
    8000310c:	00813083          	ld	ra,8(sp)
    80003110:	00013403          	ld	s0,0(sp)
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00008067          	ret

000000008000311c <_ZN7WorkerAD0Ev>:
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00050493          	mv	s1,a0
    80003134:	00007797          	auipc	a5,0x7
    80003138:	22c78793          	addi	a5,a5,556 # 8000a360 <_ZTV7WorkerA+0x10>
    8000313c:	00f53023          	sd	a5,0(a0)
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	7d0080e7          	jalr	2000(ra) # 80001910 <_ZN6ThreadD1Ev>
    80003148:	00048513          	mv	a0,s1
    8000314c:	fffff097          	auipc	ra,0xfffff
    80003150:	81c080e7          	jalr	-2020(ra) # 80001968 <_ZdlPv>
    80003154:	01813083          	ld	ra,24(sp)
    80003158:	01013403          	ld	s0,16(sp)
    8000315c:	00813483          	ld	s1,8(sp)
    80003160:	02010113          	addi	sp,sp,32
    80003164:	00008067          	ret

0000000080003168 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00113423          	sd	ra,8(sp)
    80003170:	00813023          	sd	s0,0(sp)
    80003174:	01010413          	addi	s0,sp,16
    80003178:	00007797          	auipc	a5,0x7
    8000317c:	21078793          	addi	a5,a5,528 # 8000a388 <_ZTV7WorkerB+0x10>
    80003180:	00f53023          	sd	a5,0(a0)
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	78c080e7          	jalr	1932(ra) # 80001910 <_ZN6ThreadD1Ev>
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN7WorkerBD0Ev>:
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00913423          	sd	s1,8(sp)
    800031ac:	02010413          	addi	s0,sp,32
    800031b0:	00050493          	mv	s1,a0
    800031b4:	00007797          	auipc	a5,0x7
    800031b8:	1d478793          	addi	a5,a5,468 # 8000a388 <_ZTV7WorkerB+0x10>
    800031bc:	00f53023          	sd	a5,0(a0)
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	750080e7          	jalr	1872(ra) # 80001910 <_ZN6ThreadD1Ev>
    800031c8:	00048513          	mv	a0,s1
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	79c080e7          	jalr	1948(ra) # 80001968 <_ZdlPv>
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	02010113          	addi	sp,sp,32
    800031e4:	00008067          	ret

00000000800031e8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800031e8:	ff010113          	addi	sp,sp,-16
    800031ec:	00113423          	sd	ra,8(sp)
    800031f0:	00813023          	sd	s0,0(sp)
    800031f4:	01010413          	addi	s0,sp,16
    800031f8:	00007797          	auipc	a5,0x7
    800031fc:	1b878793          	addi	a5,a5,440 # 8000a3b0 <_ZTV7WorkerC+0x10>
    80003200:	00f53023          	sd	a5,0(a0)
    80003204:	ffffe097          	auipc	ra,0xffffe
    80003208:	70c080e7          	jalr	1804(ra) # 80001910 <_ZN6ThreadD1Ev>
    8000320c:	00813083          	ld	ra,8(sp)
    80003210:	00013403          	ld	s0,0(sp)
    80003214:	01010113          	addi	sp,sp,16
    80003218:	00008067          	ret

000000008000321c <_ZN7WorkerCD0Ev>:
    8000321c:	fe010113          	addi	sp,sp,-32
    80003220:	00113c23          	sd	ra,24(sp)
    80003224:	00813823          	sd	s0,16(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	00050493          	mv	s1,a0
    80003234:	00007797          	auipc	a5,0x7
    80003238:	17c78793          	addi	a5,a5,380 # 8000a3b0 <_ZTV7WorkerC+0x10>
    8000323c:	00f53023          	sd	a5,0(a0)
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	6d0080e7          	jalr	1744(ra) # 80001910 <_ZN6ThreadD1Ev>
    80003248:	00048513          	mv	a0,s1
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	71c080e7          	jalr	1820(ra) # 80001968 <_ZdlPv>
    80003254:	01813083          	ld	ra,24(sp)
    80003258:	01013403          	ld	s0,16(sp)
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	02010113          	addi	sp,sp,32
    80003264:	00008067          	ret

0000000080003268 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003268:	ff010113          	addi	sp,sp,-16
    8000326c:	00113423          	sd	ra,8(sp)
    80003270:	00813023          	sd	s0,0(sp)
    80003274:	01010413          	addi	s0,sp,16
    80003278:	00007797          	auipc	a5,0x7
    8000327c:	16078793          	addi	a5,a5,352 # 8000a3d8 <_ZTV7WorkerD+0x10>
    80003280:	00f53023          	sd	a5,0(a0)
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	68c080e7          	jalr	1676(ra) # 80001910 <_ZN6ThreadD1Ev>
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN7WorkerDD0Ev>:
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	02010413          	addi	s0,sp,32
    800032b0:	00050493          	mv	s1,a0
    800032b4:	00007797          	auipc	a5,0x7
    800032b8:	12478793          	addi	a5,a5,292 # 8000a3d8 <_ZTV7WorkerD+0x10>
    800032bc:	00f53023          	sd	a5,0(a0)
    800032c0:	ffffe097          	auipc	ra,0xffffe
    800032c4:	650080e7          	jalr	1616(ra) # 80001910 <_ZN6ThreadD1Ev>
    800032c8:	00048513          	mv	a0,s1
    800032cc:	ffffe097          	auipc	ra,0xffffe
    800032d0:	69c080e7          	jalr	1692(ra) # 80001968 <_ZdlPv>
    800032d4:	01813083          	ld	ra,24(sp)
    800032d8:	01013403          	ld	s0,16(sp)
    800032dc:	00813483          	ld	s1,8(sp)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00008067          	ret

00000000800032e8 <_ZN7WorkerA3runEv>:
    void run() override {
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00113423          	sd	ra,8(sp)
    800032f0:	00813023          	sd	s0,0(sp)
    800032f4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800032f8:	00000593          	li	a1,0
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	774080e7          	jalr	1908(ra) # 80002a70 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003304:	00813083          	ld	ra,8(sp)
    80003308:	00013403          	ld	s0,0(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN7WorkerB3runEv>:
    void run() override {
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003324:	00000593          	li	a1,0
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	814080e7          	jalr	-2028(ra) # 80002b3c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003330:	00813083          	ld	ra,8(sp)
    80003334:	00013403          	ld	s0,0(sp)
    80003338:	01010113          	addi	sp,sp,16
    8000333c:	00008067          	ret

0000000080003340 <_ZN7WorkerC3runEv>:
    void run() override {
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00113423          	sd	ra,8(sp)
    80003348:	00813023          	sd	s0,0(sp)
    8000334c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003350:	00000593          	li	a1,0
    80003354:	00000097          	auipc	ra,0x0
    80003358:	8bc080e7          	jalr	-1860(ra) # 80002c10 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN7WorkerD3runEv>:
    void run() override {
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00113423          	sd	ra,8(sp)
    80003374:	00813023          	sd	s0,0(sp)
    80003378:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000337c:	00000593          	li	a1,0
    80003380:	00000097          	auipc	ra,0x0
    80003384:	a10080e7          	jalr	-1520(ra) # 80002d90 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003388:	00813083          	ld	ra,8(sp)
    8000338c:	00013403          	ld	s0,0(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003398:	f8010113          	addi	sp,sp,-128
    8000339c:	06113c23          	sd	ra,120(sp)
    800033a0:	06813823          	sd	s0,112(sp)
    800033a4:	06913423          	sd	s1,104(sp)
    800033a8:	07213023          	sd	s2,96(sp)
    800033ac:	05313c23          	sd	s3,88(sp)
    800033b0:	05413823          	sd	s4,80(sp)
    800033b4:	05513423          	sd	s5,72(sp)
    800033b8:	05613023          	sd	s6,64(sp)
    800033bc:	03713c23          	sd	s7,56(sp)
    800033c0:	03813823          	sd	s8,48(sp)
    800033c4:	03913423          	sd	s9,40(sp)
    800033c8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800033cc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800033d0:	00005517          	auipc	a0,0x5
    800033d4:	c5050513          	addi	a0,a0,-944 # 80008020 <CONSOLE_STATUS+0x10>
    800033d8:	00001097          	auipc	ra,0x1
    800033dc:	5a8080e7          	jalr	1448(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    800033e0:	01e00593          	li	a1,30
    800033e4:	f8040493          	addi	s1,s0,-128
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00001097          	auipc	ra,0x1
    800033f0:	61c080e7          	jalr	1564(ra) # 80004a08 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800033f4:	00048513          	mv	a0,s1
    800033f8:	00001097          	auipc	ra,0x1
    800033fc:	6e8080e7          	jalr	1768(ra) # 80004ae0 <_Z11stringToIntPKc>
    80003400:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003404:	00005517          	auipc	a0,0x5
    80003408:	c3c50513          	addi	a0,a0,-964 # 80008040 <CONSOLE_STATUS+0x30>
    8000340c:	00001097          	auipc	ra,0x1
    80003410:	574080e7          	jalr	1396(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    80003414:	01e00593          	li	a1,30
    80003418:	00048513          	mv	a0,s1
    8000341c:	00001097          	auipc	ra,0x1
    80003420:	5ec080e7          	jalr	1516(ra) # 80004a08 <_Z9getStringPci>
    n = stringToInt(input);
    80003424:	00048513          	mv	a0,s1
    80003428:	00001097          	auipc	ra,0x1
    8000342c:	6b8080e7          	jalr	1720(ra) # 80004ae0 <_Z11stringToIntPKc>
    80003430:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003434:	00005517          	auipc	a0,0x5
    80003438:	c2c50513          	addi	a0,a0,-980 # 80008060 <CONSOLE_STATUS+0x50>
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	544080e7          	jalr	1348(ra) # 80004980 <_Z11printStringPKc>
    printInt(threadNum);
    80003444:	00000613          	li	a2,0
    80003448:	00a00593          	li	a1,10
    8000344c:	00098513          	mv	a0,s3
    80003450:	00001097          	auipc	ra,0x1
    80003454:	6e0080e7          	jalr	1760(ra) # 80004b30 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003458:	00005517          	auipc	a0,0x5
    8000345c:	c2050513          	addi	a0,a0,-992 # 80008078 <CONSOLE_STATUS+0x68>
    80003460:	00001097          	auipc	ra,0x1
    80003464:	520080e7          	jalr	1312(ra) # 80004980 <_Z11printStringPKc>
    printInt(n);
    80003468:	00000613          	li	a2,0
    8000346c:	00a00593          	li	a1,10
    80003470:	00048513          	mv	a0,s1
    80003474:	00001097          	auipc	ra,0x1
    80003478:	6bc080e7          	jalr	1724(ra) # 80004b30 <_Z8printIntiii>
    printString(".\n");
    8000347c:	00005517          	auipc	a0,0x5
    80003480:	c1450513          	addi	a0,a0,-1004 # 80008090 <CONSOLE_STATUS+0x80>
    80003484:	00001097          	auipc	ra,0x1
    80003488:	4fc080e7          	jalr	1276(ra) # 80004980 <_Z11printStringPKc>
    if (threadNum > n) {
    8000348c:	0334c463          	blt	s1,s3,800034b4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003490:	03305c63          	blez	s3,800034c8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003494:	03800513          	li	a0,56
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	4a8080e7          	jalr	1192(ra) # 80001940 <_Znwm>
    800034a0:	00050a93          	mv	s5,a0
    800034a4:	00048593          	mv	a1,s1
    800034a8:	00001097          	auipc	ra,0x1
    800034ac:	7a8080e7          	jalr	1960(ra) # 80004c50 <_ZN9BufferCPPC1Ei>
    800034b0:	0300006f          	j	800034e0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800034b4:	00005517          	auipc	a0,0x5
    800034b8:	be450513          	addi	a0,a0,-1052 # 80008098 <CONSOLE_STATUS+0x88>
    800034bc:	00001097          	auipc	ra,0x1
    800034c0:	4c4080e7          	jalr	1220(ra) # 80004980 <_Z11printStringPKc>
        return;
    800034c4:	0140006f          	j	800034d8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800034c8:	00005517          	auipc	a0,0x5
    800034cc:	c1050513          	addi	a0,a0,-1008 # 800080d8 <CONSOLE_STATUS+0xc8>
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	4b0080e7          	jalr	1200(ra) # 80004980 <_Z11printStringPKc>
        return;
    800034d8:	000c0113          	mv	sp,s8
    800034dc:	2140006f          	j	800036f0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800034e0:	01000513          	li	a0,16
    800034e4:	ffffe097          	auipc	ra,0xffffe
    800034e8:	45c080e7          	jalr	1116(ra) # 80001940 <_Znwm>
    800034ec:	00050913          	mv	s2,a0
    800034f0:	00000593          	li	a1,0
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	584080e7          	jalr	1412(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    800034fc:	00007797          	auipc	a5,0x7
    80003500:	0d27b223          	sd	s2,196(a5) # 8000a5c0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003504:	00399793          	slli	a5,s3,0x3
    80003508:	00f78793          	addi	a5,a5,15
    8000350c:	ff07f793          	andi	a5,a5,-16
    80003510:	40f10133          	sub	sp,sp,a5
    80003514:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003518:	0019871b          	addiw	a4,s3,1
    8000351c:	00171793          	slli	a5,a4,0x1
    80003520:	00e787b3          	add	a5,a5,a4
    80003524:	00379793          	slli	a5,a5,0x3
    80003528:	00f78793          	addi	a5,a5,15
    8000352c:	ff07f793          	andi	a5,a5,-16
    80003530:	40f10133          	sub	sp,sp,a5
    80003534:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003538:	00199493          	slli	s1,s3,0x1
    8000353c:	013484b3          	add	s1,s1,s3
    80003540:	00349493          	slli	s1,s1,0x3
    80003544:	009b04b3          	add	s1,s6,s1
    80003548:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000354c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003550:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003554:	02800513          	li	a0,40
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	3e8080e7          	jalr	1000(ra) # 80001940 <_Znwm>
    80003560:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	4f0080e7          	jalr	1264(ra) # 80001a54 <_ZN6ThreadC1Ev>
    8000356c:	00007797          	auipc	a5,0x7
    80003570:	ee478793          	addi	a5,a5,-284 # 8000a450 <_ZTV8Consumer+0x10>
    80003574:	00fbb023          	sd	a5,0(s7)
    80003578:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000357c:	000b8513          	mv	a0,s7
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	484080e7          	jalr	1156(ra) # 80001a04 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003588:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000358c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003590:	00007797          	auipc	a5,0x7
    80003594:	0307b783          	ld	a5,48(a5) # 8000a5c0 <_ZL10waitForAll>
    80003598:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000359c:	02800513          	li	a0,40
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	3a0080e7          	jalr	928(ra) # 80001940 <_Znwm>
    800035a8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	4a8080e7          	jalr	1192(ra) # 80001a54 <_ZN6ThreadC1Ev>
    800035b4:	00007797          	auipc	a5,0x7
    800035b8:	e4c78793          	addi	a5,a5,-436 # 8000a400 <_ZTV16ProducerKeyborad+0x10>
    800035bc:	00f4b023          	sd	a5,0(s1)
    800035c0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800035c4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800035c8:	00048513          	mv	a0,s1
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	438080e7          	jalr	1080(ra) # 80001a04 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800035d4:	00100913          	li	s2,1
    800035d8:	0300006f          	j	80003608 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800035dc:	00007797          	auipc	a5,0x7
    800035e0:	e4c78793          	addi	a5,a5,-436 # 8000a428 <_ZTV8Producer+0x10>
    800035e4:	00fcb023          	sd	a5,0(s9)
    800035e8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800035ec:	00391793          	slli	a5,s2,0x3
    800035f0:	00fa07b3          	add	a5,s4,a5
    800035f4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800035f8:	000c8513          	mv	a0,s9
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	408080e7          	jalr	1032(ra) # 80001a04 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003604:	0019091b          	addiw	s2,s2,1
    80003608:	05395263          	bge	s2,s3,8000364c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000360c:	00191493          	slli	s1,s2,0x1
    80003610:	012484b3          	add	s1,s1,s2
    80003614:	00349493          	slli	s1,s1,0x3
    80003618:	009b04b3          	add	s1,s6,s1
    8000361c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003620:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003624:	00007797          	auipc	a5,0x7
    80003628:	f9c7b783          	ld	a5,-100(a5) # 8000a5c0 <_ZL10waitForAll>
    8000362c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003630:	02800513          	li	a0,40
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	30c080e7          	jalr	780(ra) # 80001940 <_Znwm>
    8000363c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	414080e7          	jalr	1044(ra) # 80001a54 <_ZN6ThreadC1Ev>
    80003648:	f95ff06f          	j	800035dc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	3d4080e7          	jalr	980(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003654:	00000493          	li	s1,0
    80003658:	0099ce63          	blt	s3,s1,80003674 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000365c:	00007517          	auipc	a0,0x7
    80003660:	f6453503          	ld	a0,-156(a0) # 8000a5c0 <_ZL10waitForAll>
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	438080e7          	jalr	1080(ra) # 80001a9c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000366c:	0014849b          	addiw	s1,s1,1
    80003670:	fe9ff06f          	j	80003658 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003674:	00007517          	auipc	a0,0x7
    80003678:	f4c53503          	ld	a0,-180(a0) # 8000a5c0 <_ZL10waitForAll>
    8000367c:	00050863          	beqz	a0,8000368c <_Z20testConsumerProducerv+0x2f4>
    80003680:	00053783          	ld	a5,0(a0)
    80003684:	0087b783          	ld	a5,8(a5)
    80003688:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000368c:	00000493          	li	s1,0
    80003690:	0080006f          	j	80003698 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003694:	0014849b          	addiw	s1,s1,1
    80003698:	0334d263          	bge	s1,s3,800036bc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000369c:	00349793          	slli	a5,s1,0x3
    800036a0:	00fa07b3          	add	a5,s4,a5
    800036a4:	0007b503          	ld	a0,0(a5)
    800036a8:	fe0506e3          	beqz	a0,80003694 <_Z20testConsumerProducerv+0x2fc>
    800036ac:	00053783          	ld	a5,0(a0)
    800036b0:	0087b783          	ld	a5,8(a5)
    800036b4:	000780e7          	jalr	a5
    800036b8:	fddff06f          	j	80003694 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800036bc:	000b8a63          	beqz	s7,800036d0 <_Z20testConsumerProducerv+0x338>
    800036c0:	000bb783          	ld	a5,0(s7)
    800036c4:	0087b783          	ld	a5,8(a5)
    800036c8:	000b8513          	mv	a0,s7
    800036cc:	000780e7          	jalr	a5
    delete buffer;
    800036d0:	000a8e63          	beqz	s5,800036ec <_Z20testConsumerProducerv+0x354>
    800036d4:	000a8513          	mv	a0,s5
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	870080e7          	jalr	-1936(ra) # 80004f48 <_ZN9BufferCPPD1Ev>
    800036e0:	000a8513          	mv	a0,s5
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	284080e7          	jalr	644(ra) # 80001968 <_ZdlPv>
    800036ec:	000c0113          	mv	sp,s8
}
    800036f0:	f8040113          	addi	sp,s0,-128
    800036f4:	07813083          	ld	ra,120(sp)
    800036f8:	07013403          	ld	s0,112(sp)
    800036fc:	06813483          	ld	s1,104(sp)
    80003700:	06013903          	ld	s2,96(sp)
    80003704:	05813983          	ld	s3,88(sp)
    80003708:	05013a03          	ld	s4,80(sp)
    8000370c:	04813a83          	ld	s5,72(sp)
    80003710:	04013b03          	ld	s6,64(sp)
    80003714:	03813b83          	ld	s7,56(sp)
    80003718:	03013c03          	ld	s8,48(sp)
    8000371c:	02813c83          	ld	s9,40(sp)
    80003720:	08010113          	addi	sp,sp,128
    80003724:	00008067          	ret
    80003728:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000372c:	000a8513          	mv	a0,s5
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	238080e7          	jalr	568(ra) # 80001968 <_ZdlPv>
    80003738:	00048513          	mv	a0,s1
    8000373c:	00008097          	auipc	ra,0x8
    80003740:	f7c080e7          	jalr	-132(ra) # 8000b6b8 <_Unwind_Resume>
    80003744:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003748:	00090513          	mv	a0,s2
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	21c080e7          	jalr	540(ra) # 80001968 <_ZdlPv>
    80003754:	00048513          	mv	a0,s1
    80003758:	00008097          	auipc	ra,0x8
    8000375c:	f60080e7          	jalr	-160(ra) # 8000b6b8 <_Unwind_Resume>
    80003760:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003764:	000b8513          	mv	a0,s7
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	200080e7          	jalr	512(ra) # 80001968 <_ZdlPv>
    80003770:	00048513          	mv	a0,s1
    80003774:	00008097          	auipc	ra,0x8
    80003778:	f44080e7          	jalr	-188(ra) # 8000b6b8 <_Unwind_Resume>
    8000377c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003780:	00048513          	mv	a0,s1
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	1e4080e7          	jalr	484(ra) # 80001968 <_ZdlPv>
    8000378c:	00090513          	mv	a0,s2
    80003790:	00008097          	auipc	ra,0x8
    80003794:	f28080e7          	jalr	-216(ra) # 8000b6b8 <_Unwind_Resume>
    80003798:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000379c:	000c8513          	mv	a0,s9
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	1c8080e7          	jalr	456(ra) # 80001968 <_ZdlPv>
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00008097          	auipc	ra,0x8
    800037b0:	f0c080e7          	jalr	-244(ra) # 8000b6b8 <_Unwind_Resume>

00000000800037b4 <_ZN8Consumer3runEv>:
    void run() override {
    800037b4:	fd010113          	addi	sp,sp,-48
    800037b8:	02113423          	sd	ra,40(sp)
    800037bc:	02813023          	sd	s0,32(sp)
    800037c0:	00913c23          	sd	s1,24(sp)
    800037c4:	01213823          	sd	s2,16(sp)
    800037c8:	01313423          	sd	s3,8(sp)
    800037cc:	03010413          	addi	s0,sp,48
    800037d0:	00050913          	mv	s2,a0
        int i = 0;
    800037d4:	00000993          	li	s3,0
    800037d8:	0100006f          	j	800037e8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800037dc:	00a00513          	li	a0,10
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	3a0080e7          	jalr	928(ra) # 80001b80 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800037e8:	00007797          	auipc	a5,0x7
    800037ec:	dd07a783          	lw	a5,-560(a5) # 8000a5b8 <_ZL9threadEnd>
    800037f0:	04079a63          	bnez	a5,80003844 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800037f4:	02093783          	ld	a5,32(s2)
    800037f8:	0087b503          	ld	a0,8(a5)
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	638080e7          	jalr	1592(ra) # 80004e34 <_ZN9BufferCPP3getEv>
            i++;
    80003804:	0019849b          	addiw	s1,s3,1
    80003808:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000380c:	0ff57513          	andi	a0,a0,255
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	370080e7          	jalr	880(ra) # 80001b80 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003818:	05000793          	li	a5,80
    8000381c:	02f4e4bb          	remw	s1,s1,a5
    80003820:	fc0494e3          	bnez	s1,800037e8 <_ZN8Consumer3runEv+0x34>
    80003824:	fb9ff06f          	j	800037dc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003828:	02093783          	ld	a5,32(s2)
    8000382c:	0087b503          	ld	a0,8(a5)
    80003830:	00001097          	auipc	ra,0x1
    80003834:	604080e7          	jalr	1540(ra) # 80004e34 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003838:	0ff57513          	andi	a0,a0,255
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	344080e7          	jalr	836(ra) # 80001b80 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003844:	02093783          	ld	a5,32(s2)
    80003848:	0087b503          	ld	a0,8(a5)
    8000384c:	00001097          	auipc	ra,0x1
    80003850:	674080e7          	jalr	1652(ra) # 80004ec0 <_ZN9BufferCPP6getCntEv>
    80003854:	fca04ae3          	bgtz	a0,80003828 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003858:	02093783          	ld	a5,32(s2)
    8000385c:	0107b503          	ld	a0,16(a5)
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	258080e7          	jalr	600(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
    }
    80003868:	02813083          	ld	ra,40(sp)
    8000386c:	02013403          	ld	s0,32(sp)
    80003870:	01813483          	ld	s1,24(sp)
    80003874:	01013903          	ld	s2,16(sp)
    80003878:	00813983          	ld	s3,8(sp)
    8000387c:	03010113          	addi	sp,sp,48
    80003880:	00008067          	ret

0000000080003884 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003884:	ff010113          	addi	sp,sp,-16
    80003888:	00113423          	sd	ra,8(sp)
    8000388c:	00813023          	sd	s0,0(sp)
    80003890:	01010413          	addi	s0,sp,16
    80003894:	00007797          	auipc	a5,0x7
    80003898:	bbc78793          	addi	a5,a5,-1092 # 8000a450 <_ZTV8Consumer+0x10>
    8000389c:	00f53023          	sd	a5,0(a0)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	070080e7          	jalr	112(ra) # 80001910 <_ZN6ThreadD1Ev>
    800038a8:	00813083          	ld	ra,8(sp)
    800038ac:	00013403          	ld	s0,0(sp)
    800038b0:	01010113          	addi	sp,sp,16
    800038b4:	00008067          	ret

00000000800038b8 <_ZN8ConsumerD0Ev>:
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	02010413          	addi	s0,sp,32
    800038cc:	00050493          	mv	s1,a0
    800038d0:	00007797          	auipc	a5,0x7
    800038d4:	b8078793          	addi	a5,a5,-1152 # 8000a450 <_ZTV8Consumer+0x10>
    800038d8:	00f53023          	sd	a5,0(a0)
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	034080e7          	jalr	52(ra) # 80001910 <_ZN6ThreadD1Ev>
    800038e4:	00048513          	mv	a0,s1
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	080080e7          	jalr	128(ra) # 80001968 <_ZdlPv>
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	00813483          	ld	s1,8(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	00813023          	sd	s0,0(sp)
    80003910:	01010413          	addi	s0,sp,16
    80003914:	00007797          	auipc	a5,0x7
    80003918:	aec78793          	addi	a5,a5,-1300 # 8000a400 <_ZTV16ProducerKeyborad+0x10>
    8000391c:	00f53023          	sd	a5,0(a0)
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	ff0080e7          	jalr	-16(ra) # 80001910 <_ZN6ThreadD1Ev>
    80003928:	00813083          	ld	ra,8(sp)
    8000392c:	00013403          	ld	s0,0(sp)
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret

0000000080003938 <_ZN16ProducerKeyboradD0Ev>:
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	00813823          	sd	s0,16(sp)
    80003944:	00913423          	sd	s1,8(sp)
    80003948:	02010413          	addi	s0,sp,32
    8000394c:	00050493          	mv	s1,a0
    80003950:	00007797          	auipc	a5,0x7
    80003954:	ab078793          	addi	a5,a5,-1360 # 8000a400 <_ZTV16ProducerKeyborad+0x10>
    80003958:	00f53023          	sd	a5,0(a0)
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	fb4080e7          	jalr	-76(ra) # 80001910 <_ZN6ThreadD1Ev>
    80003964:	00048513          	mv	a0,s1
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	000080e7          	jalr	ra # 80001968 <_ZdlPv>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret

0000000080003984 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	00007797          	auipc	a5,0x7
    80003998:	a9478793          	addi	a5,a5,-1388 # 8000a428 <_ZTV8Producer+0x10>
    8000399c:	00f53023          	sd	a5,0(a0)
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	f70080e7          	jalr	-144(ra) # 80001910 <_ZN6ThreadD1Ev>
    800039a8:	00813083          	ld	ra,8(sp)
    800039ac:	00013403          	ld	s0,0(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret

00000000800039b8 <_ZN8ProducerD0Ev>:
    800039b8:	fe010113          	addi	sp,sp,-32
    800039bc:	00113c23          	sd	ra,24(sp)
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	02010413          	addi	s0,sp,32
    800039cc:	00050493          	mv	s1,a0
    800039d0:	00007797          	auipc	a5,0x7
    800039d4:	a5878793          	addi	a5,a5,-1448 # 8000a428 <_ZTV8Producer+0x10>
    800039d8:	00f53023          	sd	a5,0(a0)
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	f34080e7          	jalr	-204(ra) # 80001910 <_ZN6ThreadD1Ev>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	f80080e7          	jalr	-128(ra) # 80001968 <_ZdlPv>
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret

0000000080003a04 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	9b8080e7          	jalr	-1608(ra) # 800013d4 <_Z4getcv>
    80003a24:	0005059b          	sext.w	a1,a0
    80003a28:	01b00793          	li	a5,27
    80003a2c:	00f58c63          	beq	a1,a5,80003a44 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003a30:	0204b783          	ld	a5,32(s1)
    80003a34:	0087b503          	ld	a0,8(a5)
    80003a38:	00001097          	auipc	ra,0x1
    80003a3c:	36c080e7          	jalr	876(ra) # 80004da4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003a40:	fddff06f          	j	80003a1c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003a44:	00100793          	li	a5,1
    80003a48:	00007717          	auipc	a4,0x7
    80003a4c:	b6f72823          	sw	a5,-1168(a4) # 8000a5b8 <_ZL9threadEnd>
        td->buffer->put('!');
    80003a50:	0204b783          	ld	a5,32(s1)
    80003a54:	02100593          	li	a1,33
    80003a58:	0087b503          	ld	a0,8(a5)
    80003a5c:	00001097          	auipc	ra,0x1
    80003a60:	348080e7          	jalr	840(ra) # 80004da4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003a64:	0204b783          	ld	a5,32(s1)
    80003a68:	0107b503          	ld	a0,16(a5)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	04c080e7          	jalr	76(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
    }
    80003a74:	01813083          	ld	ra,24(sp)
    80003a78:	01013403          	ld	s0,16(sp)
    80003a7c:	00813483          	ld	s1,8(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret

0000000080003a88 <_ZN8Producer3runEv>:
    void run() override {
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
        int i = 0;
    80003aa4:	00000913          	li	s2,0
        while (!threadEnd) {
    80003aa8:	00007797          	auipc	a5,0x7
    80003aac:	b107a783          	lw	a5,-1264(a5) # 8000a5b8 <_ZL9threadEnd>
    80003ab0:	04079263          	bnez	a5,80003af4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003ab4:	0204b783          	ld	a5,32(s1)
    80003ab8:	0007a583          	lw	a1,0(a5)
    80003abc:	0305859b          	addiw	a1,a1,48
    80003ac0:	0087b503          	ld	a0,8(a5)
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	2e0080e7          	jalr	736(ra) # 80004da4 <_ZN9BufferCPP3putEi>
            i++;
    80003acc:	0019071b          	addiw	a4,s2,1
    80003ad0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003ad4:	0204b783          	ld	a5,32(s1)
    80003ad8:	0007a783          	lw	a5,0(a5)
    80003adc:	00e787bb          	addw	a5,a5,a4
    80003ae0:	00500513          	li	a0,5
    80003ae4:	02a7e53b          	remw	a0,a5,a0
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	f50080e7          	jalr	-176(ra) # 80001a38 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003af0:	fb9ff06f          	j	80003aa8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003af4:	0204b783          	ld	a5,32(s1)
    80003af8:	0107b503          	ld	a0,16(a5)
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	fbc080e7          	jalr	-68(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
    }
    80003b04:	01813083          	ld	ra,24(sp)
    80003b08:	01013403          	ld	s0,16(sp)
    80003b0c:	00813483          	ld	s1,8(sp)
    80003b10:	00013903          	ld	s2,0(sp)
    80003b14:	02010113          	addi	sp,sp,32
    80003b18:	00008067          	ret

0000000080003b1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00113c23          	sd	ra,24(sp)
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	01213023          	sd	s2,0(sp)
    80003b30:	02010413          	addi	s0,sp,32
    80003b34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b38:	00100793          	li	a5,1
    80003b3c:	02a7f863          	bgeu	a5,a0,80003b6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b40:	00a00793          	li	a5,10
    80003b44:	02f577b3          	remu	a5,a0,a5
    80003b48:	02078e63          	beqz	a5,80003b84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b4c:	fff48513          	addi	a0,s1,-1
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	fcc080e7          	jalr	-52(ra) # 80003b1c <_ZL9fibonaccim>
    80003b58:	00050913          	mv	s2,a0
    80003b5c:	ffe48513          	addi	a0,s1,-2
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	fbc080e7          	jalr	-68(ra) # 80003b1c <_ZL9fibonaccim>
    80003b68:	00a90533          	add	a0,s2,a0
}
    80003b6c:	01813083          	ld	ra,24(sp)
    80003b70:	01013403          	ld	s0,16(sp)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	00013903          	ld	s2,0(sp)
    80003b7c:	02010113          	addi	sp,sp,32
    80003b80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b84:	ffffd097          	auipc	ra,0xffffd
    80003b88:	750080e7          	jalr	1872(ra) # 800012d4 <_Z15thread_dispatchv>
    80003b8c:	fc1ff06f          	j	80003b4c <_ZL9fibonaccim+0x30>

0000000080003b90 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00813823          	sd	s0,16(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	01213023          	sd	s2,0(sp)
    80003ba4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ba8:	00a00493          	li	s1,10
    80003bac:	0400006f          	j	80003bec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bb0:	00004517          	auipc	a0,0x4
    80003bb4:	5b850513          	addi	a0,a0,1464 # 80008168 <CONSOLE_STATUS+0x158>
    80003bb8:	00001097          	auipc	ra,0x1
    80003bbc:	dc8080e7          	jalr	-568(ra) # 80004980 <_Z11printStringPKc>
    80003bc0:	00000613          	li	a2,0
    80003bc4:	00a00593          	li	a1,10
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	f64080e7          	jalr	-156(ra) # 80004b30 <_Z8printIntiii>
    80003bd4:	00004517          	auipc	a0,0x4
    80003bd8:	48450513          	addi	a0,a0,1156 # 80008058 <CONSOLE_STATUS+0x48>
    80003bdc:	00001097          	auipc	ra,0x1
    80003be0:	da4080e7          	jalr	-604(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003be4:	0014849b          	addiw	s1,s1,1
    80003be8:	0ff4f493          	andi	s1,s1,255
    80003bec:	00c00793          	li	a5,12
    80003bf0:	fc97f0e3          	bgeu	a5,s1,80003bb0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003bf4:	00004517          	auipc	a0,0x4
    80003bf8:	57c50513          	addi	a0,a0,1404 # 80008170 <CONSOLE_STATUS+0x160>
    80003bfc:	00001097          	auipc	ra,0x1
    80003c00:	d84080e7          	jalr	-636(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c04:	00500313          	li	t1,5
    thread_dispatch();
    80003c08:	ffffd097          	auipc	ra,0xffffd
    80003c0c:	6cc080e7          	jalr	1740(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c10:	01000513          	li	a0,16
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	f08080e7          	jalr	-248(ra) # 80003b1c <_ZL9fibonaccim>
    80003c1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c20:	00004517          	auipc	a0,0x4
    80003c24:	56050513          	addi	a0,a0,1376 # 80008180 <CONSOLE_STATUS+0x170>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	d58080e7          	jalr	-680(ra) # 80004980 <_Z11printStringPKc>
    80003c30:	00000613          	li	a2,0
    80003c34:	00a00593          	li	a1,10
    80003c38:	0009051b          	sext.w	a0,s2
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	ef4080e7          	jalr	-268(ra) # 80004b30 <_Z8printIntiii>
    80003c44:	00004517          	auipc	a0,0x4
    80003c48:	41450513          	addi	a0,a0,1044 # 80008058 <CONSOLE_STATUS+0x48>
    80003c4c:	00001097          	auipc	ra,0x1
    80003c50:	d34080e7          	jalr	-716(ra) # 80004980 <_Z11printStringPKc>
    80003c54:	0400006f          	j	80003c94 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c58:	00004517          	auipc	a0,0x4
    80003c5c:	51050513          	addi	a0,a0,1296 # 80008168 <CONSOLE_STATUS+0x158>
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	d20080e7          	jalr	-736(ra) # 80004980 <_Z11printStringPKc>
    80003c68:	00000613          	li	a2,0
    80003c6c:	00a00593          	li	a1,10
    80003c70:	00048513          	mv	a0,s1
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	ebc080e7          	jalr	-324(ra) # 80004b30 <_Z8printIntiii>
    80003c7c:	00004517          	auipc	a0,0x4
    80003c80:	3dc50513          	addi	a0,a0,988 # 80008058 <CONSOLE_STATUS+0x48>
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	cfc080e7          	jalr	-772(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c8c:	0014849b          	addiw	s1,s1,1
    80003c90:	0ff4f493          	andi	s1,s1,255
    80003c94:	00f00793          	li	a5,15
    80003c98:	fc97f0e3          	bgeu	a5,s1,80003c58 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003c9c:	00004517          	auipc	a0,0x4
    80003ca0:	4f450513          	addi	a0,a0,1268 # 80008190 <CONSOLE_STATUS+0x180>
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	cdc080e7          	jalr	-804(ra) # 80004980 <_Z11printStringPKc>
    finishedD = true;
    80003cac:	00100793          	li	a5,1
    80003cb0:	00007717          	auipc	a4,0x7
    80003cb4:	90f70c23          	sb	a5,-1768(a4) # 8000a5c8 <_ZL9finishedD>
    thread_dispatch();
    80003cb8:	ffffd097          	auipc	ra,0xffffd
    80003cbc:	61c080e7          	jalr	1564(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	00013903          	ld	s2,0(sp)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00008067          	ret

0000000080003cd8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003cd8:	fe010113          	addi	sp,sp,-32
    80003cdc:	00113c23          	sd	ra,24(sp)
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	01213023          	sd	s2,0(sp)
    80003cec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003cf0:	00000493          	li	s1,0
    80003cf4:	0400006f          	j	80003d34 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003cf8:	00004517          	auipc	a0,0x4
    80003cfc:	44050513          	addi	a0,a0,1088 # 80008138 <CONSOLE_STATUS+0x128>
    80003d00:	00001097          	auipc	ra,0x1
    80003d04:	c80080e7          	jalr	-896(ra) # 80004980 <_Z11printStringPKc>
    80003d08:	00000613          	li	a2,0
    80003d0c:	00a00593          	li	a1,10
    80003d10:	00048513          	mv	a0,s1
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	e1c080e7          	jalr	-484(ra) # 80004b30 <_Z8printIntiii>
    80003d1c:	00004517          	auipc	a0,0x4
    80003d20:	33c50513          	addi	a0,a0,828 # 80008058 <CONSOLE_STATUS+0x48>
    80003d24:	00001097          	auipc	ra,0x1
    80003d28:	c5c080e7          	jalr	-932(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d2c:	0014849b          	addiw	s1,s1,1
    80003d30:	0ff4f493          	andi	s1,s1,255
    80003d34:	00200793          	li	a5,2
    80003d38:	fc97f0e3          	bgeu	a5,s1,80003cf8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d3c:	00004517          	auipc	a0,0x4
    80003d40:	40450513          	addi	a0,a0,1028 # 80008140 <CONSOLE_STATUS+0x130>
    80003d44:	00001097          	auipc	ra,0x1
    80003d48:	c3c080e7          	jalr	-964(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d4c:	00700313          	li	t1,7
    thread_dispatch();
    80003d50:	ffffd097          	auipc	ra,0xffffd
    80003d54:	584080e7          	jalr	1412(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d58:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003d5c:	00004517          	auipc	a0,0x4
    80003d60:	3f450513          	addi	a0,a0,1012 # 80008150 <CONSOLE_STATUS+0x140>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	c1c080e7          	jalr	-996(ra) # 80004980 <_Z11printStringPKc>
    80003d6c:	00000613          	li	a2,0
    80003d70:	00a00593          	li	a1,10
    80003d74:	0009051b          	sext.w	a0,s2
    80003d78:	00001097          	auipc	ra,0x1
    80003d7c:	db8080e7          	jalr	-584(ra) # 80004b30 <_Z8printIntiii>
    80003d80:	00004517          	auipc	a0,0x4
    80003d84:	2d850513          	addi	a0,a0,728 # 80008058 <CONSOLE_STATUS+0x48>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	bf8080e7          	jalr	-1032(ra) # 80004980 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003d90:	00c00513          	li	a0,12
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	d88080e7          	jalr	-632(ra) # 80003b1c <_ZL9fibonaccim>
    80003d9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003da0:	00004517          	auipc	a0,0x4
    80003da4:	3b850513          	addi	a0,a0,952 # 80008158 <CONSOLE_STATUS+0x148>
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	bd8080e7          	jalr	-1064(ra) # 80004980 <_Z11printStringPKc>
    80003db0:	00000613          	li	a2,0
    80003db4:	00a00593          	li	a1,10
    80003db8:	0009051b          	sext.w	a0,s2
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	d74080e7          	jalr	-652(ra) # 80004b30 <_Z8printIntiii>
    80003dc4:	00004517          	auipc	a0,0x4
    80003dc8:	29450513          	addi	a0,a0,660 # 80008058 <CONSOLE_STATUS+0x48>
    80003dcc:	00001097          	auipc	ra,0x1
    80003dd0:	bb4080e7          	jalr	-1100(ra) # 80004980 <_Z11printStringPKc>
    80003dd4:	0400006f          	j	80003e14 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003dd8:	00004517          	auipc	a0,0x4
    80003ddc:	36050513          	addi	a0,a0,864 # 80008138 <CONSOLE_STATUS+0x128>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	ba0080e7          	jalr	-1120(ra) # 80004980 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	d3c080e7          	jalr	-708(ra) # 80004b30 <_Z8printIntiii>
    80003dfc:	00004517          	auipc	a0,0x4
    80003e00:	25c50513          	addi	a0,a0,604 # 80008058 <CONSOLE_STATUS+0x48>
    80003e04:	00001097          	auipc	ra,0x1
    80003e08:	b7c080e7          	jalr	-1156(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	0ff4f493          	andi	s1,s1,255
    80003e14:	00500793          	li	a5,5
    80003e18:	fc97f0e3          	bgeu	a5,s1,80003dd8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003e1c:	00004517          	auipc	a0,0x4
    80003e20:	2f450513          	addi	a0,a0,756 # 80008110 <CONSOLE_STATUS+0x100>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	b5c080e7          	jalr	-1188(ra) # 80004980 <_Z11printStringPKc>
    finishedC = true;
    80003e2c:	00100793          	li	a5,1
    80003e30:	00006717          	auipc	a4,0x6
    80003e34:	78f70ca3          	sb	a5,1945(a4) # 8000a5c9 <_ZL9finishedC>
    thread_dispatch();
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	49c080e7          	jalr	1180(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00013903          	ld	s2,0(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e70:	00000913          	li	s2,0
    80003e74:	0380006f          	j	80003eac <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	45c080e7          	jalr	1116(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e80:	00148493          	addi	s1,s1,1
    80003e84:	000027b7          	lui	a5,0x2
    80003e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e8c:	0097ee63          	bltu	a5,s1,80003ea8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e90:	00000713          	li	a4,0
    80003e94:	000077b7          	lui	a5,0x7
    80003e98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e9c:	fce7eee3          	bltu	a5,a4,80003e78 <_ZL11workerBodyBPv+0x20>
    80003ea0:	00170713          	addi	a4,a4,1
    80003ea4:	ff1ff06f          	j	80003e94 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ea8:	00190913          	addi	s2,s2,1
    80003eac:	00f00793          	li	a5,15
    80003eb0:	0527e063          	bltu	a5,s2,80003ef0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003eb4:	00004517          	auipc	a0,0x4
    80003eb8:	26c50513          	addi	a0,a0,620 # 80008120 <CONSOLE_STATUS+0x110>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	ac4080e7          	jalr	-1340(ra) # 80004980 <_Z11printStringPKc>
    80003ec4:	00000613          	li	a2,0
    80003ec8:	00a00593          	li	a1,10
    80003ecc:	0009051b          	sext.w	a0,s2
    80003ed0:	00001097          	auipc	ra,0x1
    80003ed4:	c60080e7          	jalr	-928(ra) # 80004b30 <_Z8printIntiii>
    80003ed8:	00004517          	auipc	a0,0x4
    80003edc:	18050513          	addi	a0,a0,384 # 80008058 <CONSOLE_STATUS+0x48>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	aa0080e7          	jalr	-1376(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ee8:	00000493          	li	s1,0
    80003eec:	f99ff06f          	j	80003e84 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003ef0:	00004517          	auipc	a0,0x4
    80003ef4:	23850513          	addi	a0,a0,568 # 80008128 <CONSOLE_STATUS+0x118>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	a88080e7          	jalr	-1400(ra) # 80004980 <_Z11printStringPKc>
    finishedB = true;
    80003f00:	00100793          	li	a5,1
    80003f04:	00006717          	auipc	a4,0x6
    80003f08:	6cf70323          	sb	a5,1734(a4) # 8000a5ca <_ZL9finishedB>
    thread_dispatch();
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	3c8080e7          	jalr	968(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003f14:	01813083          	ld	ra,24(sp)
    80003f18:	01013403          	ld	s0,16(sp)
    80003f1c:	00813483          	ld	s1,8(sp)
    80003f20:	00013903          	ld	s2,0(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret

0000000080003f2c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003f2c:	fe010113          	addi	sp,sp,-32
    80003f30:	00113c23          	sd	ra,24(sp)
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	01213023          	sd	s2,0(sp)
    80003f40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f44:	00000913          	li	s2,0
    80003f48:	0380006f          	j	80003f80 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f4c:	ffffd097          	auipc	ra,0xffffd
    80003f50:	388080e7          	jalr	904(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f54:	00148493          	addi	s1,s1,1
    80003f58:	000027b7          	lui	a5,0x2
    80003f5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f60:	0097ee63          	bltu	a5,s1,80003f7c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f64:	00000713          	li	a4,0
    80003f68:	000077b7          	lui	a5,0x7
    80003f6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f70:	fce7eee3          	bltu	a5,a4,80003f4c <_ZL11workerBodyAPv+0x20>
    80003f74:	00170713          	addi	a4,a4,1
    80003f78:	ff1ff06f          	j	80003f68 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f7c:	00190913          	addi	s2,s2,1
    80003f80:	00900793          	li	a5,9
    80003f84:	0527e063          	bltu	a5,s2,80003fc4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f88:	00004517          	auipc	a0,0x4
    80003f8c:	18050513          	addi	a0,a0,384 # 80008108 <CONSOLE_STATUS+0xf8>
    80003f90:	00001097          	auipc	ra,0x1
    80003f94:	9f0080e7          	jalr	-1552(ra) # 80004980 <_Z11printStringPKc>
    80003f98:	00000613          	li	a2,0
    80003f9c:	00a00593          	li	a1,10
    80003fa0:	0009051b          	sext.w	a0,s2
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	b8c080e7          	jalr	-1140(ra) # 80004b30 <_Z8printIntiii>
    80003fac:	00004517          	auipc	a0,0x4
    80003fb0:	0ac50513          	addi	a0,a0,172 # 80008058 <CONSOLE_STATUS+0x48>
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	9cc080e7          	jalr	-1588(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fbc:	00000493          	li	s1,0
    80003fc0:	f99ff06f          	j	80003f58 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003fc4:	00004517          	auipc	a0,0x4
    80003fc8:	14c50513          	addi	a0,a0,332 # 80008110 <CONSOLE_STATUS+0x100>
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	9b4080e7          	jalr	-1612(ra) # 80004980 <_Z11printStringPKc>
    finishedA = true;
    80003fd4:	00100793          	li	a5,1
    80003fd8:	00006717          	auipc	a4,0x6
    80003fdc:	5ef709a3          	sb	a5,1523(a4) # 8000a5cb <_ZL9finishedA>
}
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	00013903          	ld	s2,0(sp)
    80003ff0:	02010113          	addi	sp,sp,32
    80003ff4:	00008067          	ret

0000000080003ff8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003ff8:	fd010113          	addi	sp,sp,-48
    80003ffc:	02113423          	sd	ra,40(sp)
    80004000:	02813023          	sd	s0,32(sp)
    80004004:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004008:	00000613          	li	a2,0
    8000400c:	00000597          	auipc	a1,0x0
    80004010:	f2058593          	addi	a1,a1,-224 # 80003f2c <_ZL11workerBodyAPv>
    80004014:	fd040513          	addi	a0,s0,-48
    80004018:	ffffd097          	auipc	ra,0xffffd
    8000401c:	1e8080e7          	jalr	488(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004020:	00004517          	auipc	a0,0x4
    80004024:	18050513          	addi	a0,a0,384 # 800081a0 <CONSOLE_STATUS+0x190>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	958080e7          	jalr	-1704(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004030:	00000613          	li	a2,0
    80004034:	00000597          	auipc	a1,0x0
    80004038:	e2458593          	addi	a1,a1,-476 # 80003e58 <_ZL11workerBodyBPv>
    8000403c:	fd840513          	addi	a0,s0,-40
    80004040:	ffffd097          	auipc	ra,0xffffd
    80004044:	1c0080e7          	jalr	448(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004048:	00004517          	auipc	a0,0x4
    8000404c:	17050513          	addi	a0,a0,368 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80004050:	00001097          	auipc	ra,0x1
    80004054:	930080e7          	jalr	-1744(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004058:	00000613          	li	a2,0
    8000405c:	00000597          	auipc	a1,0x0
    80004060:	c7c58593          	addi	a1,a1,-900 # 80003cd8 <_ZL11workerBodyCPv>
    80004064:	fe040513          	addi	a0,s0,-32
    80004068:	ffffd097          	auipc	ra,0xffffd
    8000406c:	198080e7          	jalr	408(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004070:	00004517          	auipc	a0,0x4
    80004074:	16050513          	addi	a0,a0,352 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	908080e7          	jalr	-1784(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004080:	00000613          	li	a2,0
    80004084:	00000597          	auipc	a1,0x0
    80004088:	b0c58593          	addi	a1,a1,-1268 # 80003b90 <_ZL11workerBodyDPv>
    8000408c:	fe840513          	addi	a0,s0,-24
    80004090:	ffffd097          	auipc	ra,0xffffd
    80004094:	170080e7          	jalr	368(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004098:	00004517          	auipc	a0,0x4
    8000409c:	15050513          	addi	a0,a0,336 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800040a0:	00001097          	auipc	ra,0x1
    800040a4:	8e0080e7          	jalr	-1824(ra) # 80004980 <_Z11printStringPKc>
    800040a8:	00c0006f          	j	800040b4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	228080e7          	jalr	552(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040b4:	00006797          	auipc	a5,0x6
    800040b8:	5177c783          	lbu	a5,1303(a5) # 8000a5cb <_ZL9finishedA>
    800040bc:	fe0788e3          	beqz	a5,800040ac <_Z18Threads_C_API_testv+0xb4>
    800040c0:	00006797          	auipc	a5,0x6
    800040c4:	50a7c783          	lbu	a5,1290(a5) # 8000a5ca <_ZL9finishedB>
    800040c8:	fe0782e3          	beqz	a5,800040ac <_Z18Threads_C_API_testv+0xb4>
    800040cc:	00006797          	auipc	a5,0x6
    800040d0:	4fd7c783          	lbu	a5,1277(a5) # 8000a5c9 <_ZL9finishedC>
    800040d4:	fc078ce3          	beqz	a5,800040ac <_Z18Threads_C_API_testv+0xb4>
    800040d8:	00006797          	auipc	a5,0x6
    800040dc:	4f07c783          	lbu	a5,1264(a5) # 8000a5c8 <_ZL9finishedD>
    800040e0:	fc0786e3          	beqz	a5,800040ac <_Z18Threads_C_API_testv+0xb4>
    }

}
    800040e4:	02813083          	ld	ra,40(sp)
    800040e8:	02013403          	ld	s0,32(sp)
    800040ec:	03010113          	addi	sp,sp,48
    800040f0:	00008067          	ret

00000000800040f4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800040f4:	fd010113          	addi	sp,sp,-48
    800040f8:	02113423          	sd	ra,40(sp)
    800040fc:	02813023          	sd	s0,32(sp)
    80004100:	00913c23          	sd	s1,24(sp)
    80004104:	01213823          	sd	s2,16(sp)
    80004108:	01313423          	sd	s3,8(sp)
    8000410c:	03010413          	addi	s0,sp,48
    80004110:	00050993          	mv	s3,a0
    80004114:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004118:	00000913          	li	s2,0
    8000411c:	00c0006f          	j	80004128 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	900080e7          	jalr	-1792(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004128:	ffffd097          	auipc	ra,0xffffd
    8000412c:	2ac080e7          	jalr	684(ra) # 800013d4 <_Z4getcv>
    80004130:	0005059b          	sext.w	a1,a0
    80004134:	01b00793          	li	a5,27
    80004138:	02f58a63          	beq	a1,a5,8000416c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000413c:	0084b503          	ld	a0,8(s1)
    80004140:	00001097          	auipc	ra,0x1
    80004144:	c64080e7          	jalr	-924(ra) # 80004da4 <_ZN9BufferCPP3putEi>
        i++;
    80004148:	0019071b          	addiw	a4,s2,1
    8000414c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004150:	0004a683          	lw	a3,0(s1)
    80004154:	0026979b          	slliw	a5,a3,0x2
    80004158:	00d787bb          	addw	a5,a5,a3
    8000415c:	0017979b          	slliw	a5,a5,0x1
    80004160:	02f767bb          	remw	a5,a4,a5
    80004164:	fc0792e3          	bnez	a5,80004128 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004168:	fb9ff06f          	j	80004120 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000416c:	00100793          	li	a5,1
    80004170:	00006717          	auipc	a4,0x6
    80004174:	46f72023          	sw	a5,1120(a4) # 8000a5d0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004178:	0209b783          	ld	a5,32(s3)
    8000417c:	02100593          	li	a1,33
    80004180:	0087b503          	ld	a0,8(a5)
    80004184:	00001097          	auipc	ra,0x1
    80004188:	c20080e7          	jalr	-992(ra) # 80004da4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000418c:	0104b503          	ld	a0,16(s1)
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	928080e7          	jalr	-1752(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
}
    80004198:	02813083          	ld	ra,40(sp)
    8000419c:	02013403          	ld	s0,32(sp)
    800041a0:	01813483          	ld	s1,24(sp)
    800041a4:	01013903          	ld	s2,16(sp)
    800041a8:	00813983          	ld	s3,8(sp)
    800041ac:	03010113          	addi	sp,sp,48
    800041b0:	00008067          	ret

00000000800041b4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800041b4:	fe010113          	addi	sp,sp,-32
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	00813823          	sd	s0,16(sp)
    800041c0:	00913423          	sd	s1,8(sp)
    800041c4:	01213023          	sd	s2,0(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800041d0:	00000913          	li	s2,0
    800041d4:	00c0006f          	j	800041e0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	848080e7          	jalr	-1976(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800041e0:	00006797          	auipc	a5,0x6
    800041e4:	3f07a783          	lw	a5,1008(a5) # 8000a5d0 <_ZL9threadEnd>
    800041e8:	02079e63          	bnez	a5,80004224 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800041ec:	0004a583          	lw	a1,0(s1)
    800041f0:	0305859b          	addiw	a1,a1,48
    800041f4:	0084b503          	ld	a0,8(s1)
    800041f8:	00001097          	auipc	ra,0x1
    800041fc:	bac080e7          	jalr	-1108(ra) # 80004da4 <_ZN9BufferCPP3putEi>
        i++;
    80004200:	0019071b          	addiw	a4,s2,1
    80004204:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004208:	0004a683          	lw	a3,0(s1)
    8000420c:	0026979b          	slliw	a5,a3,0x2
    80004210:	00d787bb          	addw	a5,a5,a3
    80004214:	0017979b          	slliw	a5,a5,0x1
    80004218:	02f767bb          	remw	a5,a4,a5
    8000421c:	fc0792e3          	bnez	a5,800041e0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004220:	fb9ff06f          	j	800041d8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004224:	0104b503          	ld	a0,16(s1)
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	890080e7          	jalr	-1904(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
}
    80004230:	01813083          	ld	ra,24(sp)
    80004234:	01013403          	ld	s0,16(sp)
    80004238:	00813483          	ld	s1,8(sp)
    8000423c:	00013903          	ld	s2,0(sp)
    80004240:	02010113          	addi	sp,sp,32
    80004244:	00008067          	ret

0000000080004248 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004248:	fd010113          	addi	sp,sp,-48
    8000424c:	02113423          	sd	ra,40(sp)
    80004250:	02813023          	sd	s0,32(sp)
    80004254:	00913c23          	sd	s1,24(sp)
    80004258:	01213823          	sd	s2,16(sp)
    8000425c:	01313423          	sd	s3,8(sp)
    80004260:	01413023          	sd	s4,0(sp)
    80004264:	03010413          	addi	s0,sp,48
    80004268:	00050993          	mv	s3,a0
    8000426c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004270:	00000a13          	li	s4,0
    80004274:	01c0006f          	j	80004290 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	7a8080e7          	jalr	1960(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    80004280:	0500006f          	j	800042d0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004284:	00a00513          	li	a0,10
    80004288:	ffffd097          	auipc	ra,0xffffd
    8000428c:	174080e7          	jalr	372(ra) # 800013fc <_Z4putcc>
    while (!threadEnd) {
    80004290:	00006797          	auipc	a5,0x6
    80004294:	3407a783          	lw	a5,832(a5) # 8000a5d0 <_ZL9threadEnd>
    80004298:	06079263          	bnez	a5,800042fc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000429c:	00893503          	ld	a0,8(s2)
    800042a0:	00001097          	auipc	ra,0x1
    800042a4:	b94080e7          	jalr	-1132(ra) # 80004e34 <_ZN9BufferCPP3getEv>
        i++;
    800042a8:	001a049b          	addiw	s1,s4,1
    800042ac:	00048a1b          	sext.w	s4,s1
        putc(key);
    800042b0:	0ff57513          	andi	a0,a0,255
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	148080e7          	jalr	328(ra) # 800013fc <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800042bc:	00092703          	lw	a4,0(s2)
    800042c0:	0027179b          	slliw	a5,a4,0x2
    800042c4:	00e787bb          	addw	a5,a5,a4
    800042c8:	02f4e7bb          	remw	a5,s1,a5
    800042cc:	fa0786e3          	beqz	a5,80004278 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800042d0:	05000793          	li	a5,80
    800042d4:	02f4e4bb          	remw	s1,s1,a5
    800042d8:	fa049ce3          	bnez	s1,80004290 <_ZN12ConsumerSync8consumerEPv+0x48>
    800042dc:	fa9ff06f          	j	80004284 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800042e0:	0209b783          	ld	a5,32(s3)
    800042e4:	0087b503          	ld	a0,8(a5)
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	b4c080e7          	jalr	-1204(ra) # 80004e34 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800042f0:	0ff57513          	andi	a0,a0,255
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	88c080e7          	jalr	-1908(ra) # 80001b80 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800042fc:	0209b783          	ld	a5,32(s3)
    80004300:	0087b503          	ld	a0,8(a5)
    80004304:	00001097          	auipc	ra,0x1
    80004308:	bbc080e7          	jalr	-1092(ra) # 80004ec0 <_ZN9BufferCPP6getCntEv>
    8000430c:	fca04ae3          	bgtz	a0,800042e0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004310:	01093503          	ld	a0,16(s2)
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	7a4080e7          	jalr	1956(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
}
    8000431c:	02813083          	ld	ra,40(sp)
    80004320:	02013403          	ld	s0,32(sp)
    80004324:	01813483          	ld	s1,24(sp)
    80004328:	01013903          	ld	s2,16(sp)
    8000432c:	00813983          	ld	s3,8(sp)
    80004330:	00013a03          	ld	s4,0(sp)
    80004334:	03010113          	addi	sp,sp,48
    80004338:	00008067          	ret

000000008000433c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000433c:	f8010113          	addi	sp,sp,-128
    80004340:	06113c23          	sd	ra,120(sp)
    80004344:	06813823          	sd	s0,112(sp)
    80004348:	06913423          	sd	s1,104(sp)
    8000434c:	07213023          	sd	s2,96(sp)
    80004350:	05313c23          	sd	s3,88(sp)
    80004354:	05413823          	sd	s4,80(sp)
    80004358:	05513423          	sd	s5,72(sp)
    8000435c:	05613023          	sd	s6,64(sp)
    80004360:	03713c23          	sd	s7,56(sp)
    80004364:	03813823          	sd	s8,48(sp)
    80004368:	03913423          	sd	s9,40(sp)
    8000436c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004370:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004374:	00004517          	auipc	a0,0x4
    80004378:	cac50513          	addi	a0,a0,-852 # 80008020 <CONSOLE_STATUS+0x10>
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	604080e7          	jalr	1540(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    80004384:	01e00593          	li	a1,30
    80004388:	f8040493          	addi	s1,s0,-128
    8000438c:	00048513          	mv	a0,s1
    80004390:	00000097          	auipc	ra,0x0
    80004394:	678080e7          	jalr	1656(ra) # 80004a08 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004398:	00048513          	mv	a0,s1
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	744080e7          	jalr	1860(ra) # 80004ae0 <_Z11stringToIntPKc>
    800043a4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800043a8:	00004517          	auipc	a0,0x4
    800043ac:	c9850513          	addi	a0,a0,-872 # 80008040 <CONSOLE_STATUS+0x30>
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	5d0080e7          	jalr	1488(ra) # 80004980 <_Z11printStringPKc>
    getString(input, 30);
    800043b8:	01e00593          	li	a1,30
    800043bc:	00048513          	mv	a0,s1
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	648080e7          	jalr	1608(ra) # 80004a08 <_Z9getStringPci>
    n = stringToInt(input);
    800043c8:	00048513          	mv	a0,s1
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	714080e7          	jalr	1812(ra) # 80004ae0 <_Z11stringToIntPKc>
    800043d4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800043d8:	00004517          	auipc	a0,0x4
    800043dc:	c8850513          	addi	a0,a0,-888 # 80008060 <CONSOLE_STATUS+0x50>
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	5a0080e7          	jalr	1440(ra) # 80004980 <_Z11printStringPKc>
    800043e8:	00000613          	li	a2,0
    800043ec:	00a00593          	li	a1,10
    800043f0:	00090513          	mv	a0,s2
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	73c080e7          	jalr	1852(ra) # 80004b30 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800043fc:	00004517          	auipc	a0,0x4
    80004400:	c7c50513          	addi	a0,a0,-900 # 80008078 <CONSOLE_STATUS+0x68>
    80004404:	00000097          	auipc	ra,0x0
    80004408:	57c080e7          	jalr	1404(ra) # 80004980 <_Z11printStringPKc>
    8000440c:	00000613          	li	a2,0
    80004410:	00a00593          	li	a1,10
    80004414:	00048513          	mv	a0,s1
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	718080e7          	jalr	1816(ra) # 80004b30 <_Z8printIntiii>
    printString(".\n");
    80004420:	00004517          	auipc	a0,0x4
    80004424:	c7050513          	addi	a0,a0,-912 # 80008090 <CONSOLE_STATUS+0x80>
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	558080e7          	jalr	1368(ra) # 80004980 <_Z11printStringPKc>
    if(threadNum > n) {
    80004430:	0324c463          	blt	s1,s2,80004458 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004434:	03205c63          	blez	s2,8000446c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004438:	03800513          	li	a0,56
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	504080e7          	jalr	1284(ra) # 80001940 <_Znwm>
    80004444:	00050a93          	mv	s5,a0
    80004448:	00048593          	mv	a1,s1
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	804080e7          	jalr	-2044(ra) # 80004c50 <_ZN9BufferCPPC1Ei>
    80004454:	0300006f          	j	80004484 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004458:	00004517          	auipc	a0,0x4
    8000445c:	c4050513          	addi	a0,a0,-960 # 80008098 <CONSOLE_STATUS+0x88>
    80004460:	00000097          	auipc	ra,0x0
    80004464:	520080e7          	jalr	1312(ra) # 80004980 <_Z11printStringPKc>
        return;
    80004468:	0140006f          	j	8000447c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000446c:	00004517          	auipc	a0,0x4
    80004470:	c6c50513          	addi	a0,a0,-916 # 800080d8 <CONSOLE_STATUS+0xc8>
    80004474:	00000097          	auipc	ra,0x0
    80004478:	50c080e7          	jalr	1292(ra) # 80004980 <_Z11printStringPKc>
        return;
    8000447c:	000b8113          	mv	sp,s7
    80004480:	2380006f          	j	800046b8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004484:	01000513          	li	a0,16
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	4b8080e7          	jalr	1208(ra) # 80001940 <_Znwm>
    80004490:	00050493          	mv	s1,a0
    80004494:	00000593          	li	a1,0
    80004498:	ffffd097          	auipc	ra,0xffffd
    8000449c:	5e0080e7          	jalr	1504(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    800044a0:	00006797          	auipc	a5,0x6
    800044a4:	1297bc23          	sd	s1,312(a5) # 8000a5d8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800044a8:	00391793          	slli	a5,s2,0x3
    800044ac:	00f78793          	addi	a5,a5,15
    800044b0:	ff07f793          	andi	a5,a5,-16
    800044b4:	40f10133          	sub	sp,sp,a5
    800044b8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800044bc:	0019071b          	addiw	a4,s2,1
    800044c0:	00171793          	slli	a5,a4,0x1
    800044c4:	00e787b3          	add	a5,a5,a4
    800044c8:	00379793          	slli	a5,a5,0x3
    800044cc:	00f78793          	addi	a5,a5,15
    800044d0:	ff07f793          	andi	a5,a5,-16
    800044d4:	40f10133          	sub	sp,sp,a5
    800044d8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800044dc:	00191c13          	slli	s8,s2,0x1
    800044e0:	012c07b3          	add	a5,s8,s2
    800044e4:	00379793          	slli	a5,a5,0x3
    800044e8:	00fa07b3          	add	a5,s4,a5
    800044ec:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800044f0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800044f4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800044f8:	02800513          	li	a0,40
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	444080e7          	jalr	1092(ra) # 80001940 <_Znwm>
    80004504:	00050b13          	mv	s6,a0
    80004508:	012c0c33          	add	s8,s8,s2
    8000450c:	003c1c13          	slli	s8,s8,0x3
    80004510:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	540080e7          	jalr	1344(ra) # 80001a54 <_ZN6ThreadC1Ev>
    8000451c:	00006797          	auipc	a5,0x6
    80004520:	fac78793          	addi	a5,a5,-84 # 8000a4c8 <_ZTV12ConsumerSync+0x10>
    80004524:	00fb3023          	sd	a5,0(s6)
    80004528:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000452c:	000b0513          	mv	a0,s6
    80004530:	ffffd097          	auipc	ra,0xffffd
    80004534:	4d4080e7          	jalr	1236(ra) # 80001a04 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004538:	00000493          	li	s1,0
    8000453c:	0380006f          	j	80004574 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004540:	00006797          	auipc	a5,0x6
    80004544:	f6078793          	addi	a5,a5,-160 # 8000a4a0 <_ZTV12ProducerSync+0x10>
    80004548:	00fcb023          	sd	a5,0(s9)
    8000454c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004550:	00349793          	slli	a5,s1,0x3
    80004554:	00f987b3          	add	a5,s3,a5
    80004558:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000455c:	00349793          	slli	a5,s1,0x3
    80004560:	00f987b3          	add	a5,s3,a5
    80004564:	0007b503          	ld	a0,0(a5)
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	49c080e7          	jalr	1180(ra) # 80001a04 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004570:	0014849b          	addiw	s1,s1,1
    80004574:	0b24d063          	bge	s1,s2,80004614 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004578:	00149793          	slli	a5,s1,0x1
    8000457c:	009787b3          	add	a5,a5,s1
    80004580:	00379793          	slli	a5,a5,0x3
    80004584:	00fa07b3          	add	a5,s4,a5
    80004588:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000458c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004590:	00006717          	auipc	a4,0x6
    80004594:	04873703          	ld	a4,72(a4) # 8000a5d8 <_ZL10waitForAll>
    80004598:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000459c:	02905863          	blez	s1,800045cc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800045a0:	02800513          	li	a0,40
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	39c080e7          	jalr	924(ra) # 80001940 <_Znwm>
    800045ac:	00050c93          	mv	s9,a0
    800045b0:	00149c13          	slli	s8,s1,0x1
    800045b4:	009c0c33          	add	s8,s8,s1
    800045b8:	003c1c13          	slli	s8,s8,0x3
    800045bc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800045c0:	ffffd097          	auipc	ra,0xffffd
    800045c4:	494080e7          	jalr	1172(ra) # 80001a54 <_ZN6ThreadC1Ev>
    800045c8:	f79ff06f          	j	80004540 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800045cc:	02800513          	li	a0,40
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	370080e7          	jalr	880(ra) # 80001940 <_Znwm>
    800045d8:	00050c93          	mv	s9,a0
    800045dc:	00149c13          	slli	s8,s1,0x1
    800045e0:	009c0c33          	add	s8,s8,s1
    800045e4:	003c1c13          	slli	s8,s8,0x3
    800045e8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	468080e7          	jalr	1128(ra) # 80001a54 <_ZN6ThreadC1Ev>
    800045f4:	00006797          	auipc	a5,0x6
    800045f8:	e8478793          	addi	a5,a5,-380 # 8000a478 <_ZTV16ProducerKeyboard+0x10>
    800045fc:	00fcb023          	sd	a5,0(s9)
    80004600:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004604:	00349793          	slli	a5,s1,0x3
    80004608:	00f987b3          	add	a5,s3,a5
    8000460c:	0197b023          	sd	s9,0(a5)
    80004610:	f4dff06f          	j	8000455c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004614:	ffffd097          	auipc	ra,0xffffd
    80004618:	40c080e7          	jalr	1036(ra) # 80001a20 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000461c:	00000493          	li	s1,0
    80004620:	00994e63          	blt	s2,s1,8000463c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004624:	00006517          	auipc	a0,0x6
    80004628:	fb453503          	ld	a0,-76(a0) # 8000a5d8 <_ZL10waitForAll>
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	470080e7          	jalr	1136(ra) # 80001a9c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004634:	0014849b          	addiw	s1,s1,1
    80004638:	fe9ff06f          	j	80004620 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000463c:	00000493          	li	s1,0
    80004640:	0080006f          	j	80004648 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004644:	0014849b          	addiw	s1,s1,1
    80004648:	0324d263          	bge	s1,s2,8000466c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000464c:	00349793          	slli	a5,s1,0x3
    80004650:	00f987b3          	add	a5,s3,a5
    80004654:	0007b503          	ld	a0,0(a5)
    80004658:	fe0506e3          	beqz	a0,80004644 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000465c:	00053783          	ld	a5,0(a0)
    80004660:	0087b783          	ld	a5,8(a5)
    80004664:	000780e7          	jalr	a5
    80004668:	fddff06f          	j	80004644 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000466c:	000b0a63          	beqz	s6,80004680 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004670:	000b3783          	ld	a5,0(s6)
    80004674:	0087b783          	ld	a5,8(a5)
    80004678:	000b0513          	mv	a0,s6
    8000467c:	000780e7          	jalr	a5
    delete waitForAll;
    80004680:	00006517          	auipc	a0,0x6
    80004684:	f5853503          	ld	a0,-168(a0) # 8000a5d8 <_ZL10waitForAll>
    80004688:	00050863          	beqz	a0,80004698 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000468c:	00053783          	ld	a5,0(a0)
    80004690:	0087b783          	ld	a5,8(a5)
    80004694:	000780e7          	jalr	a5
    delete buffer;
    80004698:	000a8e63          	beqz	s5,800046b4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000469c:	000a8513          	mv	a0,s5
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	8a8080e7          	jalr	-1880(ra) # 80004f48 <_ZN9BufferCPPD1Ev>
    800046a8:	000a8513          	mv	a0,s5
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	2bc080e7          	jalr	700(ra) # 80001968 <_ZdlPv>
    800046b4:	000b8113          	mv	sp,s7

}
    800046b8:	f8040113          	addi	sp,s0,-128
    800046bc:	07813083          	ld	ra,120(sp)
    800046c0:	07013403          	ld	s0,112(sp)
    800046c4:	06813483          	ld	s1,104(sp)
    800046c8:	06013903          	ld	s2,96(sp)
    800046cc:	05813983          	ld	s3,88(sp)
    800046d0:	05013a03          	ld	s4,80(sp)
    800046d4:	04813a83          	ld	s5,72(sp)
    800046d8:	04013b03          	ld	s6,64(sp)
    800046dc:	03813b83          	ld	s7,56(sp)
    800046e0:	03013c03          	ld	s8,48(sp)
    800046e4:	02813c83          	ld	s9,40(sp)
    800046e8:	08010113          	addi	sp,sp,128
    800046ec:	00008067          	ret
    800046f0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046f4:	000a8513          	mv	a0,s5
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	270080e7          	jalr	624(ra) # 80001968 <_ZdlPv>
    80004700:	00048513          	mv	a0,s1
    80004704:	00007097          	auipc	ra,0x7
    80004708:	fb4080e7          	jalr	-76(ra) # 8000b6b8 <_Unwind_Resume>
    8000470c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004710:	00048513          	mv	a0,s1
    80004714:	ffffd097          	auipc	ra,0xffffd
    80004718:	254080e7          	jalr	596(ra) # 80001968 <_ZdlPv>
    8000471c:	00090513          	mv	a0,s2
    80004720:	00007097          	auipc	ra,0x7
    80004724:	f98080e7          	jalr	-104(ra) # 8000b6b8 <_Unwind_Resume>
    80004728:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000472c:	000b0513          	mv	a0,s6
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	238080e7          	jalr	568(ra) # 80001968 <_ZdlPv>
    80004738:	00048513          	mv	a0,s1
    8000473c:	00007097          	auipc	ra,0x7
    80004740:	f7c080e7          	jalr	-132(ra) # 8000b6b8 <_Unwind_Resume>
    80004744:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004748:	000c8513          	mv	a0,s9
    8000474c:	ffffd097          	auipc	ra,0xffffd
    80004750:	21c080e7          	jalr	540(ra) # 80001968 <_ZdlPv>
    80004754:	00048513          	mv	a0,s1
    80004758:	00007097          	auipc	ra,0x7
    8000475c:	f60080e7          	jalr	-160(ra) # 8000b6b8 <_Unwind_Resume>
    80004760:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004764:	000c8513          	mv	a0,s9
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	200080e7          	jalr	512(ra) # 80001968 <_ZdlPv>
    80004770:	00048513          	mv	a0,s1
    80004774:	00007097          	auipc	ra,0x7
    80004778:	f44080e7          	jalr	-188(ra) # 8000b6b8 <_Unwind_Resume>

000000008000477c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000477c:	ff010113          	addi	sp,sp,-16
    80004780:	00113423          	sd	ra,8(sp)
    80004784:	00813023          	sd	s0,0(sp)
    80004788:	01010413          	addi	s0,sp,16
    8000478c:	00006797          	auipc	a5,0x6
    80004790:	d3c78793          	addi	a5,a5,-708 # 8000a4c8 <_ZTV12ConsumerSync+0x10>
    80004794:	00f53023          	sd	a5,0(a0)
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	178080e7          	jalr	376(ra) # 80001910 <_ZN6ThreadD1Ev>
    800047a0:	00813083          	ld	ra,8(sp)
    800047a4:	00013403          	ld	s0,0(sp)
    800047a8:	01010113          	addi	sp,sp,16
    800047ac:	00008067          	ret

00000000800047b0 <_ZN12ConsumerSyncD0Ev>:
    800047b0:	fe010113          	addi	sp,sp,-32
    800047b4:	00113c23          	sd	ra,24(sp)
    800047b8:	00813823          	sd	s0,16(sp)
    800047bc:	00913423          	sd	s1,8(sp)
    800047c0:	02010413          	addi	s0,sp,32
    800047c4:	00050493          	mv	s1,a0
    800047c8:	00006797          	auipc	a5,0x6
    800047cc:	d0078793          	addi	a5,a5,-768 # 8000a4c8 <_ZTV12ConsumerSync+0x10>
    800047d0:	00f53023          	sd	a5,0(a0)
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	13c080e7          	jalr	316(ra) # 80001910 <_ZN6ThreadD1Ev>
    800047dc:	00048513          	mv	a0,s1
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	188080e7          	jalr	392(ra) # 80001968 <_ZdlPv>
    800047e8:	01813083          	ld	ra,24(sp)
    800047ec:	01013403          	ld	s0,16(sp)
    800047f0:	00813483          	ld	s1,8(sp)
    800047f4:	02010113          	addi	sp,sp,32
    800047f8:	00008067          	ret

00000000800047fc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800047fc:	ff010113          	addi	sp,sp,-16
    80004800:	00113423          	sd	ra,8(sp)
    80004804:	00813023          	sd	s0,0(sp)
    80004808:	01010413          	addi	s0,sp,16
    8000480c:	00006797          	auipc	a5,0x6
    80004810:	c9478793          	addi	a5,a5,-876 # 8000a4a0 <_ZTV12ProducerSync+0x10>
    80004814:	00f53023          	sd	a5,0(a0)
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	0f8080e7          	jalr	248(ra) # 80001910 <_ZN6ThreadD1Ev>
    80004820:	00813083          	ld	ra,8(sp)
    80004824:	00013403          	ld	s0,0(sp)
    80004828:	01010113          	addi	sp,sp,16
    8000482c:	00008067          	ret

0000000080004830 <_ZN12ProducerSyncD0Ev>:
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00813823          	sd	s0,16(sp)
    8000483c:	00913423          	sd	s1,8(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	00050493          	mv	s1,a0
    80004848:	00006797          	auipc	a5,0x6
    8000484c:	c5878793          	addi	a5,a5,-936 # 8000a4a0 <_ZTV12ProducerSync+0x10>
    80004850:	00f53023          	sd	a5,0(a0)
    80004854:	ffffd097          	auipc	ra,0xffffd
    80004858:	0bc080e7          	jalr	188(ra) # 80001910 <_ZN6ThreadD1Ev>
    8000485c:	00048513          	mv	a0,s1
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	108080e7          	jalr	264(ra) # 80001968 <_ZdlPv>
    80004868:	01813083          	ld	ra,24(sp)
    8000486c:	01013403          	ld	s0,16(sp)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret

000000008000487c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00113423          	sd	ra,8(sp)
    80004884:	00813023          	sd	s0,0(sp)
    80004888:	01010413          	addi	s0,sp,16
    8000488c:	00006797          	auipc	a5,0x6
    80004890:	bec78793          	addi	a5,a5,-1044 # 8000a478 <_ZTV16ProducerKeyboard+0x10>
    80004894:	00f53023          	sd	a5,0(a0)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	078080e7          	jalr	120(ra) # 80001910 <_ZN6ThreadD1Ev>
    800048a0:	00813083          	ld	ra,8(sp)
    800048a4:	00013403          	ld	s0,0(sp)
    800048a8:	01010113          	addi	sp,sp,16
    800048ac:	00008067          	ret

00000000800048b0 <_ZN16ProducerKeyboardD0Ev>:
    800048b0:	fe010113          	addi	sp,sp,-32
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	00813823          	sd	s0,16(sp)
    800048bc:	00913423          	sd	s1,8(sp)
    800048c0:	02010413          	addi	s0,sp,32
    800048c4:	00050493          	mv	s1,a0
    800048c8:	00006797          	auipc	a5,0x6
    800048cc:	bb078793          	addi	a5,a5,-1104 # 8000a478 <_ZTV16ProducerKeyboard+0x10>
    800048d0:	00f53023          	sd	a5,0(a0)
    800048d4:	ffffd097          	auipc	ra,0xffffd
    800048d8:	03c080e7          	jalr	60(ra) # 80001910 <_ZN6ThreadD1Ev>
    800048dc:	00048513          	mv	a0,s1
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	088080e7          	jalr	136(ra) # 80001968 <_ZdlPv>
    800048e8:	01813083          	ld	ra,24(sp)
    800048ec:	01013403          	ld	s0,16(sp)
    800048f0:	00813483          	ld	s1,8(sp)
    800048f4:	02010113          	addi	sp,sp,32
    800048f8:	00008067          	ret

00000000800048fc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800048fc:	ff010113          	addi	sp,sp,-16
    80004900:	00113423          	sd	ra,8(sp)
    80004904:	00813023          	sd	s0,0(sp)
    80004908:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000490c:	02053583          	ld	a1,32(a0)
    80004910:	fffff097          	auipc	ra,0xfffff
    80004914:	7e4080e7          	jalr	2020(ra) # 800040f4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004918:	00813083          	ld	ra,8(sp)
    8000491c:	00013403          	ld	s0,0(sp)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret

0000000080004928 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004928:	ff010113          	addi	sp,sp,-16
    8000492c:	00113423          	sd	ra,8(sp)
    80004930:	00813023          	sd	s0,0(sp)
    80004934:	01010413          	addi	s0,sp,16
        producer(td);
    80004938:	02053583          	ld	a1,32(a0)
    8000493c:	00000097          	auipc	ra,0x0
    80004940:	878080e7          	jalr	-1928(ra) # 800041b4 <_ZN12ProducerSync8producerEPv>
    }
    80004944:	00813083          	ld	ra,8(sp)
    80004948:	00013403          	ld	s0,0(sp)
    8000494c:	01010113          	addi	sp,sp,16
    80004950:	00008067          	ret

0000000080004954 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004954:	ff010113          	addi	sp,sp,-16
    80004958:	00113423          	sd	ra,8(sp)
    8000495c:	00813023          	sd	s0,0(sp)
    80004960:	01010413          	addi	s0,sp,16
        consumer(td);
    80004964:	02053583          	ld	a1,32(a0)
    80004968:	00000097          	auipc	ra,0x0
    8000496c:	8e0080e7          	jalr	-1824(ra) # 80004248 <_ZN12ConsumerSync8consumerEPv>
    }
    80004970:	00813083          	ld	ra,8(sp)
    80004974:	00013403          	ld	s0,0(sp)
    80004978:	01010113          	addi	sp,sp,16
    8000497c:	00008067          	ret

0000000080004980 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	00813823          	sd	s0,16(sp)
    8000498c:	00913423          	sd	s1,8(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00050493          	mv	s1,a0
    LOCK();
    80004998:	00100613          	li	a2,1
    8000499c:	00000593          	li	a1,0
    800049a0:	00006517          	auipc	a0,0x6
    800049a4:	c4050513          	addi	a0,a0,-960 # 8000a5e0 <lockPrint>
    800049a8:	ffffc097          	auipc	ra,0xffffc
    800049ac:	77c080e7          	jalr	1916(ra) # 80001124 <copy_and_swap>
    800049b0:	00050863          	beqz	a0,800049c0 <_Z11printStringPKc+0x40>
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	920080e7          	jalr	-1760(ra) # 800012d4 <_Z15thread_dispatchv>
    800049bc:	fddff06f          	j	80004998 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800049c0:	0004c503          	lbu	a0,0(s1)
    800049c4:	00050a63          	beqz	a0,800049d8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	a34080e7          	jalr	-1484(ra) # 800013fc <_Z4putcc>
        string++;
    800049d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800049d4:	fedff06f          	j	800049c0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800049d8:	00000613          	li	a2,0
    800049dc:	00100593          	li	a1,1
    800049e0:	00006517          	auipc	a0,0x6
    800049e4:	c0050513          	addi	a0,a0,-1024 # 8000a5e0 <lockPrint>
    800049e8:	ffffc097          	auipc	ra,0xffffc
    800049ec:	73c080e7          	jalr	1852(ra) # 80001124 <copy_and_swap>
    800049f0:	fe0514e3          	bnez	a0,800049d8 <_Z11printStringPKc+0x58>
}
    800049f4:	01813083          	ld	ra,24(sp)
    800049f8:	01013403          	ld	s0,16(sp)
    800049fc:	00813483          	ld	s1,8(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret

0000000080004a08 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004a08:	fd010113          	addi	sp,sp,-48
    80004a0c:	02113423          	sd	ra,40(sp)
    80004a10:	02813023          	sd	s0,32(sp)
    80004a14:	00913c23          	sd	s1,24(sp)
    80004a18:	01213823          	sd	s2,16(sp)
    80004a1c:	01313423          	sd	s3,8(sp)
    80004a20:	01413023          	sd	s4,0(sp)
    80004a24:	03010413          	addi	s0,sp,48
    80004a28:	00050993          	mv	s3,a0
    80004a2c:	00058a13          	mv	s4,a1
    LOCK();
    80004a30:	00100613          	li	a2,1
    80004a34:	00000593          	li	a1,0
    80004a38:	00006517          	auipc	a0,0x6
    80004a3c:	ba850513          	addi	a0,a0,-1112 # 8000a5e0 <lockPrint>
    80004a40:	ffffc097          	auipc	ra,0xffffc
    80004a44:	6e4080e7          	jalr	1764(ra) # 80001124 <copy_and_swap>
    80004a48:	00050863          	beqz	a0,80004a58 <_Z9getStringPci+0x50>
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	888080e7          	jalr	-1912(ra) # 800012d4 <_Z15thread_dispatchv>
    80004a54:	fddff06f          	j	80004a30 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004a58:	00000913          	li	s2,0
    80004a5c:	00090493          	mv	s1,s2
    80004a60:	0019091b          	addiw	s2,s2,1
    80004a64:	03495a63          	bge	s2,s4,80004a98 <_Z9getStringPci+0x90>
        cc = getc();
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	96c080e7          	jalr	-1684(ra) # 800013d4 <_Z4getcv>
        if(cc < 1)
    80004a70:	02050463          	beqz	a0,80004a98 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004a74:	009984b3          	add	s1,s3,s1
    80004a78:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004a7c:	00a00793          	li	a5,10
    80004a80:	00f50a63          	beq	a0,a5,80004a94 <_Z9getStringPci+0x8c>
    80004a84:	00d00793          	li	a5,13
    80004a88:	fcf51ae3          	bne	a0,a5,80004a5c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004a8c:	00090493          	mv	s1,s2
    80004a90:	0080006f          	j	80004a98 <_Z9getStringPci+0x90>
    80004a94:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004a98:	009984b3          	add	s1,s3,s1
    80004a9c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004aa0:	00000613          	li	a2,0
    80004aa4:	00100593          	li	a1,1
    80004aa8:	00006517          	auipc	a0,0x6
    80004aac:	b3850513          	addi	a0,a0,-1224 # 8000a5e0 <lockPrint>
    80004ab0:	ffffc097          	auipc	ra,0xffffc
    80004ab4:	674080e7          	jalr	1652(ra) # 80001124 <copy_and_swap>
    80004ab8:	fe0514e3          	bnez	a0,80004aa0 <_Z9getStringPci+0x98>
    return buf;
}
    80004abc:	00098513          	mv	a0,s3
    80004ac0:	02813083          	ld	ra,40(sp)
    80004ac4:	02013403          	ld	s0,32(sp)
    80004ac8:	01813483          	ld	s1,24(sp)
    80004acc:	01013903          	ld	s2,16(sp)
    80004ad0:	00813983          	ld	s3,8(sp)
    80004ad4:	00013a03          	ld	s4,0(sp)
    80004ad8:	03010113          	addi	sp,sp,48
    80004adc:	00008067          	ret

0000000080004ae0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00813423          	sd	s0,8(sp)
    80004ae8:	01010413          	addi	s0,sp,16
    80004aec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004af0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004af4:	0006c603          	lbu	a2,0(a3)
    80004af8:	fd06071b          	addiw	a4,a2,-48
    80004afc:	0ff77713          	andi	a4,a4,255
    80004b00:	00900793          	li	a5,9
    80004b04:	02e7e063          	bltu	a5,a4,80004b24 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004b08:	0025179b          	slliw	a5,a0,0x2
    80004b0c:	00a787bb          	addw	a5,a5,a0
    80004b10:	0017979b          	slliw	a5,a5,0x1
    80004b14:	00168693          	addi	a3,a3,1
    80004b18:	00c787bb          	addw	a5,a5,a2
    80004b1c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004b20:	fd5ff06f          	j	80004af4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004b24:	00813403          	ld	s0,8(sp)
    80004b28:	01010113          	addi	sp,sp,16
    80004b2c:	00008067          	ret

0000000080004b30 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004b30:	fc010113          	addi	sp,sp,-64
    80004b34:	02113c23          	sd	ra,56(sp)
    80004b38:	02813823          	sd	s0,48(sp)
    80004b3c:	02913423          	sd	s1,40(sp)
    80004b40:	03213023          	sd	s2,32(sp)
    80004b44:	01313c23          	sd	s3,24(sp)
    80004b48:	04010413          	addi	s0,sp,64
    80004b4c:	00050493          	mv	s1,a0
    80004b50:	00058913          	mv	s2,a1
    80004b54:	00060993          	mv	s3,a2
    LOCK();
    80004b58:	00100613          	li	a2,1
    80004b5c:	00000593          	li	a1,0
    80004b60:	00006517          	auipc	a0,0x6
    80004b64:	a8050513          	addi	a0,a0,-1408 # 8000a5e0 <lockPrint>
    80004b68:	ffffc097          	auipc	ra,0xffffc
    80004b6c:	5bc080e7          	jalr	1468(ra) # 80001124 <copy_and_swap>
    80004b70:	00050863          	beqz	a0,80004b80 <_Z8printIntiii+0x50>
    80004b74:	ffffc097          	auipc	ra,0xffffc
    80004b78:	760080e7          	jalr	1888(ra) # 800012d4 <_Z15thread_dispatchv>
    80004b7c:	fddff06f          	j	80004b58 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004b80:	00098463          	beqz	s3,80004b88 <_Z8printIntiii+0x58>
    80004b84:	0804c463          	bltz	s1,80004c0c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004b88:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004b8c:	00000593          	li	a1,0
    }

    i = 0;
    80004b90:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004b94:	0009079b          	sext.w	a5,s2
    80004b98:	0325773b          	remuw	a4,a0,s2
    80004b9c:	00048613          	mv	a2,s1
    80004ba0:	0014849b          	addiw	s1,s1,1
    80004ba4:	02071693          	slli	a3,a4,0x20
    80004ba8:	0206d693          	srli	a3,a3,0x20
    80004bac:	00006717          	auipc	a4,0x6
    80004bb0:	93470713          	addi	a4,a4,-1740 # 8000a4e0 <digits>
    80004bb4:	00d70733          	add	a4,a4,a3
    80004bb8:	00074683          	lbu	a3,0(a4)
    80004bbc:	fd040713          	addi	a4,s0,-48
    80004bc0:	00c70733          	add	a4,a4,a2
    80004bc4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004bc8:	0005071b          	sext.w	a4,a0
    80004bcc:	0325553b          	divuw	a0,a0,s2
    80004bd0:	fcf772e3          	bgeu	a4,a5,80004b94 <_Z8printIntiii+0x64>
    if(neg)
    80004bd4:	00058c63          	beqz	a1,80004bec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004bd8:	fd040793          	addi	a5,s0,-48
    80004bdc:	009784b3          	add	s1,a5,s1
    80004be0:	02d00793          	li	a5,45
    80004be4:	fef48823          	sb	a5,-16(s1)
    80004be8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004bec:	fff4849b          	addiw	s1,s1,-1
    80004bf0:	0204c463          	bltz	s1,80004c18 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004bf4:	fd040793          	addi	a5,s0,-48
    80004bf8:	009787b3          	add	a5,a5,s1
    80004bfc:	ff07c503          	lbu	a0,-16(a5)
    80004c00:	ffffc097          	auipc	ra,0xffffc
    80004c04:	7fc080e7          	jalr	2044(ra) # 800013fc <_Z4putcc>
    80004c08:	fe5ff06f          	j	80004bec <_Z8printIntiii+0xbc>
        x = -xx;
    80004c0c:	4090053b          	negw	a0,s1
        neg = 1;
    80004c10:	00100593          	li	a1,1
        x = -xx;
    80004c14:	f7dff06f          	j	80004b90 <_Z8printIntiii+0x60>

    UNLOCK();
    80004c18:	00000613          	li	a2,0
    80004c1c:	00100593          	li	a1,1
    80004c20:	00006517          	auipc	a0,0x6
    80004c24:	9c050513          	addi	a0,a0,-1600 # 8000a5e0 <lockPrint>
    80004c28:	ffffc097          	auipc	ra,0xffffc
    80004c2c:	4fc080e7          	jalr	1276(ra) # 80001124 <copy_and_swap>
    80004c30:	fe0514e3          	bnez	a0,80004c18 <_Z8printIntiii+0xe8>
    80004c34:	03813083          	ld	ra,56(sp)
    80004c38:	03013403          	ld	s0,48(sp)
    80004c3c:	02813483          	ld	s1,40(sp)
    80004c40:	02013903          	ld	s2,32(sp)
    80004c44:	01813983          	ld	s3,24(sp)
    80004c48:	04010113          	addi	sp,sp,64
    80004c4c:	00008067          	ret

0000000080004c50 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c50:	fd010113          	addi	sp,sp,-48
    80004c54:	02113423          	sd	ra,40(sp)
    80004c58:	02813023          	sd	s0,32(sp)
    80004c5c:	00913c23          	sd	s1,24(sp)
    80004c60:	01213823          	sd	s2,16(sp)
    80004c64:	01313423          	sd	s3,8(sp)
    80004c68:	03010413          	addi	s0,sp,48
    80004c6c:	00050493          	mv	s1,a0
    80004c70:	00058913          	mv	s2,a1
    80004c74:	0015879b          	addiw	a5,a1,1
    80004c78:	0007851b          	sext.w	a0,a5
    80004c7c:	00f4a023          	sw	a5,0(s1)
    80004c80:	0004a823          	sw	zero,16(s1)
    80004c84:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c88:	00251513          	slli	a0,a0,0x2
    80004c8c:	ffffc097          	auipc	ra,0xffffc
    80004c90:	4d4080e7          	jalr	1236(ra) # 80001160 <_Z9mem_allocm>
    80004c94:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004c98:	01000513          	li	a0,16
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	ca4080e7          	jalr	-860(ra) # 80001940 <_Znwm>
    80004ca4:	00050993          	mv	s3,a0
    80004ca8:	00000593          	li	a1,0
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	dcc080e7          	jalr	-564(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    80004cb4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004cb8:	01000513          	li	a0,16
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	c84080e7          	jalr	-892(ra) # 80001940 <_Znwm>
    80004cc4:	00050993          	mv	s3,a0
    80004cc8:	00090593          	mv	a1,s2
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	dac080e7          	jalr	-596(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    80004cd4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004cd8:	01000513          	li	a0,16
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	c64080e7          	jalr	-924(ra) # 80001940 <_Znwm>
    80004ce4:	00050913          	mv	s2,a0
    80004ce8:	00100593          	li	a1,1
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	d8c080e7          	jalr	-628(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    80004cf4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004cf8:	01000513          	li	a0,16
    80004cfc:	ffffd097          	auipc	ra,0xffffd
    80004d00:	c44080e7          	jalr	-956(ra) # 80001940 <_Znwm>
    80004d04:	00050913          	mv	s2,a0
    80004d08:	00100593          	li	a1,1
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	d6c080e7          	jalr	-660(ra) # 80001a78 <_ZN9SemaphoreC1Ej>
    80004d14:	0324b823          	sd	s2,48(s1)
}
    80004d18:	02813083          	ld	ra,40(sp)
    80004d1c:	02013403          	ld	s0,32(sp)
    80004d20:	01813483          	ld	s1,24(sp)
    80004d24:	01013903          	ld	s2,16(sp)
    80004d28:	00813983          	ld	s3,8(sp)
    80004d2c:	03010113          	addi	sp,sp,48
    80004d30:	00008067          	ret
    80004d34:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004d38:	00098513          	mv	a0,s3
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	c2c080e7          	jalr	-980(ra) # 80001968 <_ZdlPv>
    80004d44:	00048513          	mv	a0,s1
    80004d48:	00007097          	auipc	ra,0x7
    80004d4c:	970080e7          	jalr	-1680(ra) # 8000b6b8 <_Unwind_Resume>
    80004d50:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004d54:	00098513          	mv	a0,s3
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	c10080e7          	jalr	-1008(ra) # 80001968 <_ZdlPv>
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00007097          	auipc	ra,0x7
    80004d68:	954080e7          	jalr	-1708(ra) # 8000b6b8 <_Unwind_Resume>
    80004d6c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004d70:	00090513          	mv	a0,s2
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	bf4080e7          	jalr	-1036(ra) # 80001968 <_ZdlPv>
    80004d7c:	00048513          	mv	a0,s1
    80004d80:	00007097          	auipc	ra,0x7
    80004d84:	938080e7          	jalr	-1736(ra) # 8000b6b8 <_Unwind_Resume>
    80004d88:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004d8c:	00090513          	mv	a0,s2
    80004d90:	ffffd097          	auipc	ra,0xffffd
    80004d94:	bd8080e7          	jalr	-1064(ra) # 80001968 <_ZdlPv>
    80004d98:	00048513          	mv	a0,s1
    80004d9c:	00007097          	auipc	ra,0x7
    80004da0:	91c080e7          	jalr	-1764(ra) # 8000b6b8 <_Unwind_Resume>

0000000080004da4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	01213023          	sd	s2,0(sp)
    80004db8:	02010413          	addi	s0,sp,32
    80004dbc:	00050493          	mv	s1,a0
    80004dc0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004dc4:	01853503          	ld	a0,24(a0)
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	cd4080e7          	jalr	-812(ra) # 80001a9c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004dd0:	0304b503          	ld	a0,48(s1)
    80004dd4:	ffffd097          	auipc	ra,0xffffd
    80004dd8:	cc8080e7          	jalr	-824(ra) # 80001a9c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004ddc:	0084b783          	ld	a5,8(s1)
    80004de0:	0144a703          	lw	a4,20(s1)
    80004de4:	00271713          	slli	a4,a4,0x2
    80004de8:	00e787b3          	add	a5,a5,a4
    80004dec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004df0:	0144a783          	lw	a5,20(s1)
    80004df4:	0017879b          	addiw	a5,a5,1
    80004df8:	0004a703          	lw	a4,0(s1)
    80004dfc:	02e7e7bb          	remw	a5,a5,a4
    80004e00:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004e04:	0304b503          	ld	a0,48(s1)
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	cb0080e7          	jalr	-848(ra) # 80001ab8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004e10:	0204b503          	ld	a0,32(s1)
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	ca4080e7          	jalr	-860(ra) # 80001ab8 <_ZN9Semaphore6signalEv>

}
    80004e1c:	01813083          	ld	ra,24(sp)
    80004e20:	01013403          	ld	s0,16(sp)
    80004e24:	00813483          	ld	s1,8(sp)
    80004e28:	00013903          	ld	s2,0(sp)
    80004e2c:	02010113          	addi	sp,sp,32
    80004e30:	00008067          	ret

0000000080004e34 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004e34:	fe010113          	addi	sp,sp,-32
    80004e38:	00113c23          	sd	ra,24(sp)
    80004e3c:	00813823          	sd	s0,16(sp)
    80004e40:	00913423          	sd	s1,8(sp)
    80004e44:	01213023          	sd	s2,0(sp)
    80004e48:	02010413          	addi	s0,sp,32
    80004e4c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004e50:	02053503          	ld	a0,32(a0)
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	c48080e7          	jalr	-952(ra) # 80001a9c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004e5c:	0284b503          	ld	a0,40(s1)
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	c3c080e7          	jalr	-964(ra) # 80001a9c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004e68:	0084b703          	ld	a4,8(s1)
    80004e6c:	0104a783          	lw	a5,16(s1)
    80004e70:	00279693          	slli	a3,a5,0x2
    80004e74:	00d70733          	add	a4,a4,a3
    80004e78:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004e7c:	0017879b          	addiw	a5,a5,1
    80004e80:	0004a703          	lw	a4,0(s1)
    80004e84:	02e7e7bb          	remw	a5,a5,a4
    80004e88:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004e8c:	0284b503          	ld	a0,40(s1)
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	c28080e7          	jalr	-984(ra) # 80001ab8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004e98:	0184b503          	ld	a0,24(s1)
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	c1c080e7          	jalr	-996(ra) # 80001ab8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ea4:	00090513          	mv	a0,s2
    80004ea8:	01813083          	ld	ra,24(sp)
    80004eac:	01013403          	ld	s0,16(sp)
    80004eb0:	00813483          	ld	s1,8(sp)
    80004eb4:	00013903          	ld	s2,0(sp)
    80004eb8:	02010113          	addi	sp,sp,32
    80004ebc:	00008067          	ret

0000000080004ec0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004ec0:	fe010113          	addi	sp,sp,-32
    80004ec4:	00113c23          	sd	ra,24(sp)
    80004ec8:	00813823          	sd	s0,16(sp)
    80004ecc:	00913423          	sd	s1,8(sp)
    80004ed0:	01213023          	sd	s2,0(sp)
    80004ed4:	02010413          	addi	s0,sp,32
    80004ed8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004edc:	02853503          	ld	a0,40(a0)
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	bbc080e7          	jalr	-1092(ra) # 80001a9c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004ee8:	0304b503          	ld	a0,48(s1)
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	bb0080e7          	jalr	-1104(ra) # 80001a9c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004ef4:	0144a783          	lw	a5,20(s1)
    80004ef8:	0104a903          	lw	s2,16(s1)
    80004efc:	0327ce63          	blt	a5,s2,80004f38 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004f00:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004f04:	0304b503          	ld	a0,48(s1)
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	bb0080e7          	jalr	-1104(ra) # 80001ab8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004f10:	0284b503          	ld	a0,40(s1)
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	ba4080e7          	jalr	-1116(ra) # 80001ab8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f1c:	00090513          	mv	a0,s2
    80004f20:	01813083          	ld	ra,24(sp)
    80004f24:	01013403          	ld	s0,16(sp)
    80004f28:	00813483          	ld	s1,8(sp)
    80004f2c:	00013903          	ld	s2,0(sp)
    80004f30:	02010113          	addi	sp,sp,32
    80004f34:	00008067          	ret
        ret = cap - head + tail;
    80004f38:	0004a703          	lw	a4,0(s1)
    80004f3c:	4127093b          	subw	s2,a4,s2
    80004f40:	00f9093b          	addw	s2,s2,a5
    80004f44:	fc1ff06f          	j	80004f04 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004f48 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004f48:	fe010113          	addi	sp,sp,-32
    80004f4c:	00113c23          	sd	ra,24(sp)
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00913423          	sd	s1,8(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004f60:	00a00513          	li	a0,10
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	c1c080e7          	jalr	-996(ra) # 80001b80 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004f6c:	00003517          	auipc	a0,0x3
    80004f70:	29450513          	addi	a0,a0,660 # 80008200 <CONSOLE_STATUS+0x1f0>
    80004f74:	00000097          	auipc	ra,0x0
    80004f78:	a0c080e7          	jalr	-1524(ra) # 80004980 <_Z11printStringPKc>
    while (getCnt()) {
    80004f7c:	00048513          	mv	a0,s1
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	f40080e7          	jalr	-192(ra) # 80004ec0 <_ZN9BufferCPP6getCntEv>
    80004f88:	02050c63          	beqz	a0,80004fc0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004f8c:	0084b783          	ld	a5,8(s1)
    80004f90:	0104a703          	lw	a4,16(s1)
    80004f94:	00271713          	slli	a4,a4,0x2
    80004f98:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004f9c:	0007c503          	lbu	a0,0(a5)
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	be0080e7          	jalr	-1056(ra) # 80001b80 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004fa8:	0104a783          	lw	a5,16(s1)
    80004fac:	0017879b          	addiw	a5,a5,1
    80004fb0:	0004a703          	lw	a4,0(s1)
    80004fb4:	02e7e7bb          	remw	a5,a5,a4
    80004fb8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004fbc:	fc1ff06f          	j	80004f7c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004fc0:	02100513          	li	a0,33
    80004fc4:	ffffd097          	auipc	ra,0xffffd
    80004fc8:	bbc080e7          	jalr	-1092(ra) # 80001b80 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004fcc:	00a00513          	li	a0,10
    80004fd0:	ffffd097          	auipc	ra,0xffffd
    80004fd4:	bb0080e7          	jalr	-1104(ra) # 80001b80 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004fd8:	0084b503          	ld	a0,8(s1)
    80004fdc:	ffffc097          	auipc	ra,0xffffc
    80004fe0:	1d8080e7          	jalr	472(ra) # 800011b4 <_Z8mem_freePv>
    delete itemAvailable;
    80004fe4:	0204b503          	ld	a0,32(s1)
    80004fe8:	00050863          	beqz	a0,80004ff8 <_ZN9BufferCPPD1Ev+0xb0>
    80004fec:	00053783          	ld	a5,0(a0)
    80004ff0:	0087b783          	ld	a5,8(a5)
    80004ff4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004ff8:	0184b503          	ld	a0,24(s1)
    80004ffc:	00050863          	beqz	a0,8000500c <_ZN9BufferCPPD1Ev+0xc4>
    80005000:	00053783          	ld	a5,0(a0)
    80005004:	0087b783          	ld	a5,8(a5)
    80005008:	000780e7          	jalr	a5
    delete mutexTail;
    8000500c:	0304b503          	ld	a0,48(s1)
    80005010:	00050863          	beqz	a0,80005020 <_ZN9BufferCPPD1Ev+0xd8>
    80005014:	00053783          	ld	a5,0(a0)
    80005018:	0087b783          	ld	a5,8(a5)
    8000501c:	000780e7          	jalr	a5
    delete mutexHead;
    80005020:	0284b503          	ld	a0,40(s1)
    80005024:	00050863          	beqz	a0,80005034 <_ZN9BufferCPPD1Ev+0xec>
    80005028:	00053783          	ld	a5,0(a0)
    8000502c:	0087b783          	ld	a5,8(a5)
    80005030:	000780e7          	jalr	a5
}
    80005034:	01813083          	ld	ra,24(sp)
    80005038:	01013403          	ld	s0,16(sp)
    8000503c:	00813483          	ld	s1,8(sp)
    80005040:	02010113          	addi	sp,sp,32
    80005044:	00008067          	ret

0000000080005048 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005048:	fe010113          	addi	sp,sp,-32
    8000504c:	00113c23          	sd	ra,24(sp)
    80005050:	00813823          	sd	s0,16(sp)
    80005054:	00913423          	sd	s1,8(sp)
    80005058:	01213023          	sd	s2,0(sp)
    8000505c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005060:	00003517          	auipc	a0,0x3
    80005064:	1b850513          	addi	a0,a0,440 # 80008218 <CONSOLE_STATUS+0x208>
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	918080e7          	jalr	-1768(ra) # 80004980 <_Z11printStringPKc>
    int test = getc() - '0';
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	364080e7          	jalr	868(ra) # 800013d4 <_Z4getcv>
    80005078:	0005091b          	sext.w	s2,a0
    8000507c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	354080e7          	jalr	852(ra) # 800013d4 <_Z4getcv>


    if ((test >= 1 && test <= 2) || test == 7) {
    80005088:	fcf9071b          	addiw	a4,s2,-49
    8000508c:	00100793          	li	a5,1
    80005090:	04e7f063          	bgeu	a5,a4,800050d0 <_Z8userMainv+0x88>
    80005094:	00700793          	li	a5,7
    80005098:	02f48c63          	beq	s1,a5,800050d0 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    8000509c:	fcd9079b          	addiw	a5,s2,-51
    800050a0:	00100693          	li	a3,1
    800050a4:	04f6fa63          	bgeu	a3,a5,800050f8 <_Z8userMainv+0xb0>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800050a8:	fcb9091b          	addiw	s2,s2,-53
    800050ac:	00100793          	li	a5,1
    800050b0:	0527fe63          	bgeu	a5,s2,8000510c <_Z8userMainv+0xc4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800050b4:	00600793          	li	a5,6
    800050b8:	02e7f463          	bgeu	a5,a4,800050e0 <_Z8userMainv+0x98>
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    800050bc:	00003517          	auipc	a0,0x3
    800050c0:	20c50513          	addi	a0,a0,524 # 800082c8 <CONSOLE_STATUS+0x2b8>
    800050c4:	00000097          	auipc	ra,0x0
    800050c8:	8bc080e7          	jalr	-1860(ra) # 80004980 <_Z11printStringPKc>
    800050cc:	0140006f          	j	800050e0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
    800050d0:	00003517          	auipc	a0,0x3
    800050d4:	16850513          	addi	a0,a0,360 # 80008238 <CONSOLE_STATUS+0x228>
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	8a8080e7          	jalr	-1880(ra) # 80004980 <_Z11printStringPKc>
    }
    800050e0:	01813083          	ld	ra,24(sp)
    800050e4:	01013403          	ld	s0,16(sp)
    800050e8:	00813483          	ld	s1,8(sp)
    800050ec:	00013903          	ld	s2,0(sp)
    800050f0:	02010113          	addi	sp,sp,32
    800050f4:	00008067          	ret
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800050f8:	00003517          	auipc	a0,0x3
    800050fc:	17050513          	addi	a0,a0,368 # 80008268 <CONSOLE_STATUS+0x258>
    80005100:	00000097          	auipc	ra,0x0
    80005104:	880080e7          	jalr	-1920(ra) # 80004980 <_Z11printStringPKc>
            return;
    80005108:	fd9ff06f          	j	800050e0 <_Z8userMainv+0x98>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000510c:	00003517          	auipc	a0,0x3
    80005110:	18c50513          	addi	a0,a0,396 # 80008298 <CONSOLE_STATUS+0x288>
    80005114:	00000097          	auipc	ra,0x0
    80005118:	86c080e7          	jalr	-1940(ra) # 80004980 <_Z11printStringPKc>
            return;
    8000511c:	fc5ff06f          	j	800050e0 <_Z8userMainv+0x98>

0000000080005120 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00113c23          	sd	ra,24(sp)
    80005128:	00813823          	sd	s0,16(sp)
    8000512c:	00913423          	sd	s1,8(sp)
    80005130:	01213023          	sd	s2,0(sp)
    80005134:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005138:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000513c:	00600493          	li	s1,6
    while (--i > 0) {
    80005140:	fff4849b          	addiw	s1,s1,-1
    80005144:	04905463          	blez	s1,8000518c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005148:	00003517          	auipc	a0,0x3
    8000514c:	1a850513          	addi	a0,a0,424 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80005150:	00000097          	auipc	ra,0x0
    80005154:	830080e7          	jalr	-2000(ra) # 80004980 <_Z11printStringPKc>
        printInt(sleep_time);
    80005158:	00000613          	li	a2,0
    8000515c:	00a00593          	li	a1,10
    80005160:	0009051b          	sext.w	a0,s2
    80005164:	00000097          	auipc	ra,0x0
    80005168:	9cc080e7          	jalr	-1588(ra) # 80004b30 <_Z8printIntiii>
        printString(" !\n");
    8000516c:	00003517          	auipc	a0,0x3
    80005170:	18c50513          	addi	a0,a0,396 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005174:	00000097          	auipc	ra,0x0
    80005178:	80c080e7          	jalr	-2036(ra) # 80004980 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000517c:	00090513          	mv	a0,s2
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	238080e7          	jalr	568(ra) # 800013b8 <_Z10time_sleepm>
    while (--i > 0) {
    80005188:	fb9ff06f          	j	80005140 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000518c:	00a00793          	li	a5,10
    80005190:	02f95933          	divu	s2,s2,a5
    80005194:	fff90913          	addi	s2,s2,-1
    80005198:	00005797          	auipc	a5,0x5
    8000519c:	45078793          	addi	a5,a5,1104 # 8000a5e8 <_ZL8finished>
    800051a0:	01278933          	add	s2,a5,s2
    800051a4:	00100793          	li	a5,1
    800051a8:	00f90023          	sb	a5,0(s2)
}
    800051ac:	01813083          	ld	ra,24(sp)
    800051b0:	01013403          	ld	s0,16(sp)
    800051b4:	00813483          	ld	s1,8(sp)
    800051b8:	00013903          	ld	s2,0(sp)
    800051bc:	02010113          	addi	sp,sp,32
    800051c0:	00008067          	ret

00000000800051c4 <_Z12testSleepingv>:

void testSleeping() {
    800051c4:	fc010113          	addi	sp,sp,-64
    800051c8:	02113c23          	sd	ra,56(sp)
    800051cc:	02813823          	sd	s0,48(sp)
    800051d0:	02913423          	sd	s1,40(sp)
    800051d4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800051d8:	00a00793          	li	a5,10
    800051dc:	fcf43823          	sd	a5,-48(s0)
    800051e0:	01400793          	li	a5,20
    800051e4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800051e8:	00000493          	li	s1,0
    800051ec:	02c0006f          	j	80005218 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800051f0:	00349793          	slli	a5,s1,0x3
    800051f4:	fd040613          	addi	a2,s0,-48
    800051f8:	00f60633          	add	a2,a2,a5
    800051fc:	00000597          	auipc	a1,0x0
    80005200:	f2458593          	addi	a1,a1,-220 # 80005120 <_ZL9sleepyRunPv>
    80005204:	fc040513          	addi	a0,s0,-64
    80005208:	00f50533          	add	a0,a0,a5
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	ff4080e7          	jalr	-12(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005214:	0014849b          	addiw	s1,s1,1
    80005218:	00100793          	li	a5,1
    8000521c:	fc97dae3          	bge	a5,s1,800051f0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005220:	00005797          	auipc	a5,0x5
    80005224:	3c87c783          	lbu	a5,968(a5) # 8000a5e8 <_ZL8finished>
    80005228:	fe078ce3          	beqz	a5,80005220 <_Z12testSleepingv+0x5c>
    8000522c:	00005797          	auipc	a5,0x5
    80005230:	3bd7c783          	lbu	a5,957(a5) # 8000a5e9 <_ZL8finished+0x1>
    80005234:	fe0786e3          	beqz	a5,80005220 <_Z12testSleepingv+0x5c>
}
    80005238:	03813083          	ld	ra,56(sp)
    8000523c:	03013403          	ld	s0,48(sp)
    80005240:	02813483          	ld	s1,40(sp)
    80005244:	04010113          	addi	sp,sp,64
    80005248:	00008067          	ret

000000008000524c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000524c:	fe010113          	addi	sp,sp,-32
    80005250:	00113c23          	sd	ra,24(sp)
    80005254:	00813823          	sd	s0,16(sp)
    80005258:	00913423          	sd	s1,8(sp)
    8000525c:	01213023          	sd	s2,0(sp)
    80005260:	02010413          	addi	s0,sp,32
    80005264:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005268:	00100793          	li	a5,1
    8000526c:	02a7f863          	bgeu	a5,a0,8000529c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005270:	00a00793          	li	a5,10
    80005274:	02f577b3          	remu	a5,a0,a5
    80005278:	02078e63          	beqz	a5,800052b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000527c:	fff48513          	addi	a0,s1,-1
    80005280:	00000097          	auipc	ra,0x0
    80005284:	fcc080e7          	jalr	-52(ra) # 8000524c <_ZL9fibonaccim>
    80005288:	00050913          	mv	s2,a0
    8000528c:	ffe48513          	addi	a0,s1,-2
    80005290:	00000097          	auipc	ra,0x0
    80005294:	fbc080e7          	jalr	-68(ra) # 8000524c <_ZL9fibonaccim>
    80005298:	00a90533          	add	a0,s2,a0
}
    8000529c:	01813083          	ld	ra,24(sp)
    800052a0:	01013403          	ld	s0,16(sp)
    800052a4:	00813483          	ld	s1,8(sp)
    800052a8:	00013903          	ld	s2,0(sp)
    800052ac:	02010113          	addi	sp,sp,32
    800052b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052b4:	ffffc097          	auipc	ra,0xffffc
    800052b8:	020080e7          	jalr	32(ra) # 800012d4 <_Z15thread_dispatchv>
    800052bc:	fc1ff06f          	j	8000527c <_ZL9fibonaccim+0x30>

00000000800052c0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00813823          	sd	s0,16(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	01213023          	sd	s2,0(sp)
    800052d4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800052d8:	00a00493          	li	s1,10
    800052dc:	0400006f          	j	8000531c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052e0:	00003517          	auipc	a0,0x3
    800052e4:	e8850513          	addi	a0,a0,-376 # 80008168 <CONSOLE_STATUS+0x158>
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	698080e7          	jalr	1688(ra) # 80004980 <_Z11printStringPKc>
    800052f0:	00000613          	li	a2,0
    800052f4:	00a00593          	li	a1,10
    800052f8:	00048513          	mv	a0,s1
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	834080e7          	jalr	-1996(ra) # 80004b30 <_Z8printIntiii>
    80005304:	00003517          	auipc	a0,0x3
    80005308:	d5450513          	addi	a0,a0,-684 # 80008058 <CONSOLE_STATUS+0x48>
    8000530c:	fffff097          	auipc	ra,0xfffff
    80005310:	674080e7          	jalr	1652(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005314:	0014849b          	addiw	s1,s1,1
    80005318:	0ff4f493          	andi	s1,s1,255
    8000531c:	00c00793          	li	a5,12
    80005320:	fc97f0e3          	bgeu	a5,s1,800052e0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005324:	00003517          	auipc	a0,0x3
    80005328:	e4c50513          	addi	a0,a0,-436 # 80008170 <CONSOLE_STATUS+0x160>
    8000532c:	fffff097          	auipc	ra,0xfffff
    80005330:	654080e7          	jalr	1620(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005334:	00500313          	li	t1,5
    thread_dispatch();
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	f9c080e7          	jalr	-100(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005340:	01000513          	li	a0,16
    80005344:	00000097          	auipc	ra,0x0
    80005348:	f08080e7          	jalr	-248(ra) # 8000524c <_ZL9fibonaccim>
    8000534c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005350:	00003517          	auipc	a0,0x3
    80005354:	e3050513          	addi	a0,a0,-464 # 80008180 <CONSOLE_STATUS+0x170>
    80005358:	fffff097          	auipc	ra,0xfffff
    8000535c:	628080e7          	jalr	1576(ra) # 80004980 <_Z11printStringPKc>
    80005360:	00000613          	li	a2,0
    80005364:	00a00593          	li	a1,10
    80005368:	0009051b          	sext.w	a0,s2
    8000536c:	fffff097          	auipc	ra,0xfffff
    80005370:	7c4080e7          	jalr	1988(ra) # 80004b30 <_Z8printIntiii>
    80005374:	00003517          	auipc	a0,0x3
    80005378:	ce450513          	addi	a0,a0,-796 # 80008058 <CONSOLE_STATUS+0x48>
    8000537c:	fffff097          	auipc	ra,0xfffff
    80005380:	604080e7          	jalr	1540(ra) # 80004980 <_Z11printStringPKc>
    80005384:	0400006f          	j	800053c4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005388:	00003517          	auipc	a0,0x3
    8000538c:	de050513          	addi	a0,a0,-544 # 80008168 <CONSOLE_STATUS+0x158>
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	5f0080e7          	jalr	1520(ra) # 80004980 <_Z11printStringPKc>
    80005398:	00000613          	li	a2,0
    8000539c:	00a00593          	li	a1,10
    800053a0:	00048513          	mv	a0,s1
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	78c080e7          	jalr	1932(ra) # 80004b30 <_Z8printIntiii>
    800053ac:	00003517          	auipc	a0,0x3
    800053b0:	cac50513          	addi	a0,a0,-852 # 80008058 <CONSOLE_STATUS+0x48>
    800053b4:	fffff097          	auipc	ra,0xfffff
    800053b8:	5cc080e7          	jalr	1484(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800053bc:	0014849b          	addiw	s1,s1,1
    800053c0:	0ff4f493          	andi	s1,s1,255
    800053c4:	00f00793          	li	a5,15
    800053c8:	fc97f0e3          	bgeu	a5,s1,80005388 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800053cc:	00003517          	auipc	a0,0x3
    800053d0:	dc450513          	addi	a0,a0,-572 # 80008190 <CONSOLE_STATUS+0x180>
    800053d4:	fffff097          	auipc	ra,0xfffff
    800053d8:	5ac080e7          	jalr	1452(ra) # 80004980 <_Z11printStringPKc>
    finishedD = true;
    800053dc:	00100793          	li	a5,1
    800053e0:	00005717          	auipc	a4,0x5
    800053e4:	20f70523          	sb	a5,522(a4) # 8000a5ea <_ZL9finishedD>
    thread_dispatch();
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	eec080e7          	jalr	-276(ra) # 800012d4 <_Z15thread_dispatchv>
}
    800053f0:	01813083          	ld	ra,24(sp)
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	00813483          	ld	s1,8(sp)
    800053fc:	00013903          	ld	s2,0(sp)
    80005400:	02010113          	addi	sp,sp,32
    80005404:	00008067          	ret

0000000080005408 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005408:	fe010113          	addi	sp,sp,-32
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00913423          	sd	s1,8(sp)
    80005418:	01213023          	sd	s2,0(sp)
    8000541c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005420:	00000493          	li	s1,0
    80005424:	0400006f          	j	80005464 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005428:	00003517          	auipc	a0,0x3
    8000542c:	d1050513          	addi	a0,a0,-752 # 80008138 <CONSOLE_STATUS+0x128>
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	550080e7          	jalr	1360(ra) # 80004980 <_Z11printStringPKc>
    80005438:	00000613          	li	a2,0
    8000543c:	00a00593          	li	a1,10
    80005440:	00048513          	mv	a0,s1
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	6ec080e7          	jalr	1772(ra) # 80004b30 <_Z8printIntiii>
    8000544c:	00003517          	auipc	a0,0x3
    80005450:	c0c50513          	addi	a0,a0,-1012 # 80008058 <CONSOLE_STATUS+0x48>
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	52c080e7          	jalr	1324(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000545c:	0014849b          	addiw	s1,s1,1
    80005460:	0ff4f493          	andi	s1,s1,255
    80005464:	00200793          	li	a5,2
    80005468:	fc97f0e3          	bgeu	a5,s1,80005428 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000546c:	00003517          	auipc	a0,0x3
    80005470:	cd450513          	addi	a0,a0,-812 # 80008140 <CONSOLE_STATUS+0x130>
    80005474:	fffff097          	auipc	ra,0xfffff
    80005478:	50c080e7          	jalr	1292(ra) # 80004980 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000547c:	00700313          	li	t1,7
    thread_dispatch();
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	e54080e7          	jalr	-428(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005488:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000548c:	00003517          	auipc	a0,0x3
    80005490:	cc450513          	addi	a0,a0,-828 # 80008150 <CONSOLE_STATUS+0x140>
    80005494:	fffff097          	auipc	ra,0xfffff
    80005498:	4ec080e7          	jalr	1260(ra) # 80004980 <_Z11printStringPKc>
    8000549c:	00000613          	li	a2,0
    800054a0:	00a00593          	li	a1,10
    800054a4:	0009051b          	sext.w	a0,s2
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	688080e7          	jalr	1672(ra) # 80004b30 <_Z8printIntiii>
    800054b0:	00003517          	auipc	a0,0x3
    800054b4:	ba850513          	addi	a0,a0,-1112 # 80008058 <CONSOLE_STATUS+0x48>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	4c8080e7          	jalr	1224(ra) # 80004980 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800054c0:	00c00513          	li	a0,12
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	d88080e7          	jalr	-632(ra) # 8000524c <_ZL9fibonaccim>
    800054cc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800054d0:	00003517          	auipc	a0,0x3
    800054d4:	c8850513          	addi	a0,a0,-888 # 80008158 <CONSOLE_STATUS+0x148>
    800054d8:	fffff097          	auipc	ra,0xfffff
    800054dc:	4a8080e7          	jalr	1192(ra) # 80004980 <_Z11printStringPKc>
    800054e0:	00000613          	li	a2,0
    800054e4:	00a00593          	li	a1,10
    800054e8:	0009051b          	sext.w	a0,s2
    800054ec:	fffff097          	auipc	ra,0xfffff
    800054f0:	644080e7          	jalr	1604(ra) # 80004b30 <_Z8printIntiii>
    800054f4:	00003517          	auipc	a0,0x3
    800054f8:	b6450513          	addi	a0,a0,-1180 # 80008058 <CONSOLE_STATUS+0x48>
    800054fc:	fffff097          	auipc	ra,0xfffff
    80005500:	484080e7          	jalr	1156(ra) # 80004980 <_Z11printStringPKc>
    80005504:	0400006f          	j	80005544 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005508:	00003517          	auipc	a0,0x3
    8000550c:	c3050513          	addi	a0,a0,-976 # 80008138 <CONSOLE_STATUS+0x128>
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	470080e7          	jalr	1136(ra) # 80004980 <_Z11printStringPKc>
    80005518:	00000613          	li	a2,0
    8000551c:	00a00593          	li	a1,10
    80005520:	00048513          	mv	a0,s1
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	60c080e7          	jalr	1548(ra) # 80004b30 <_Z8printIntiii>
    8000552c:	00003517          	auipc	a0,0x3
    80005530:	b2c50513          	addi	a0,a0,-1236 # 80008058 <CONSOLE_STATUS+0x48>
    80005534:	fffff097          	auipc	ra,0xfffff
    80005538:	44c080e7          	jalr	1100(ra) # 80004980 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000553c:	0014849b          	addiw	s1,s1,1
    80005540:	0ff4f493          	andi	s1,s1,255
    80005544:	00500793          	li	a5,5
    80005548:	fc97f0e3          	bgeu	a5,s1,80005508 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000554c:	00003517          	auipc	a0,0x3
    80005550:	bc450513          	addi	a0,a0,-1084 # 80008110 <CONSOLE_STATUS+0x100>
    80005554:	fffff097          	auipc	ra,0xfffff
    80005558:	42c080e7          	jalr	1068(ra) # 80004980 <_Z11printStringPKc>
    finishedC = true;
    8000555c:	00100793          	li	a5,1
    80005560:	00005717          	auipc	a4,0x5
    80005564:	08f705a3          	sb	a5,139(a4) # 8000a5eb <_ZL9finishedC>
    thread_dispatch();
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	d6c080e7          	jalr	-660(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80005570:	01813083          	ld	ra,24(sp)
    80005574:	01013403          	ld	s0,16(sp)
    80005578:	00813483          	ld	s1,8(sp)
    8000557c:	00013903          	ld	s2,0(sp)
    80005580:	02010113          	addi	sp,sp,32
    80005584:	00008067          	ret

0000000080005588 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00113c23          	sd	ra,24(sp)
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00913423          	sd	s1,8(sp)
    80005598:	01213023          	sd	s2,0(sp)
    8000559c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800055a0:	00000913          	li	s2,0
    800055a4:	0400006f          	j	800055e4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	d2c080e7          	jalr	-724(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055b0:	00148493          	addi	s1,s1,1
    800055b4:	000027b7          	lui	a5,0x2
    800055b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055bc:	0097ee63          	bltu	a5,s1,800055d8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055c0:	00000713          	li	a4,0
    800055c4:	000077b7          	lui	a5,0x7
    800055c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055cc:	fce7eee3          	bltu	a5,a4,800055a8 <_ZL11workerBodyBPv+0x20>
    800055d0:	00170713          	addi	a4,a4,1
    800055d4:	ff1ff06f          	j	800055c4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800055d8:	00a00793          	li	a5,10
    800055dc:	04f90663          	beq	s2,a5,80005628 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800055e0:	00190913          	addi	s2,s2,1
    800055e4:	00f00793          	li	a5,15
    800055e8:	0527e463          	bltu	a5,s2,80005630 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	b3450513          	addi	a0,a0,-1228 # 80008120 <CONSOLE_STATUS+0x110>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	38c080e7          	jalr	908(ra) # 80004980 <_Z11printStringPKc>
    800055fc:	00000613          	li	a2,0
    80005600:	00a00593          	li	a1,10
    80005604:	0009051b          	sext.w	a0,s2
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	528080e7          	jalr	1320(ra) # 80004b30 <_Z8printIntiii>
    80005610:	00003517          	auipc	a0,0x3
    80005614:	a4850513          	addi	a0,a0,-1464 # 80008058 <CONSOLE_STATUS+0x48>
    80005618:	fffff097          	auipc	ra,0xfffff
    8000561c:	368080e7          	jalr	872(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005620:	00000493          	li	s1,0
    80005624:	f91ff06f          	j	800055b4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005628:	14102ff3          	csrr	t6,sepc
    8000562c:	fb5ff06f          	j	800055e0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005630:	00003517          	auipc	a0,0x3
    80005634:	af850513          	addi	a0,a0,-1288 # 80008128 <CONSOLE_STATUS+0x118>
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	348080e7          	jalr	840(ra) # 80004980 <_Z11printStringPKc>
    finishedB = true;
    80005640:	00100793          	li	a5,1
    80005644:	00005717          	auipc	a4,0x5
    80005648:	faf70423          	sb	a5,-88(a4) # 8000a5ec <_ZL9finishedB>
    thread_dispatch();
    8000564c:	ffffc097          	auipc	ra,0xffffc
    80005650:	c88080e7          	jalr	-888(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80005654:	01813083          	ld	ra,24(sp)
    80005658:	01013403          	ld	s0,16(sp)
    8000565c:	00813483          	ld	s1,8(sp)
    80005660:	00013903          	ld	s2,0(sp)
    80005664:	02010113          	addi	sp,sp,32
    80005668:	00008067          	ret

000000008000566c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00113c23          	sd	ra,24(sp)
    80005674:	00813823          	sd	s0,16(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	01213023          	sd	s2,0(sp)
    80005680:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005684:	00000913          	li	s2,0
    80005688:	0380006f          	j	800056c0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	c48080e7          	jalr	-952(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005694:	00148493          	addi	s1,s1,1
    80005698:	000027b7          	lui	a5,0x2
    8000569c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056a0:	0097ee63          	bltu	a5,s1,800056bc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056a4:	00000713          	li	a4,0
    800056a8:	000077b7          	lui	a5,0x7
    800056ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056b0:	fce7eee3          	bltu	a5,a4,8000568c <_ZL11workerBodyAPv+0x20>
    800056b4:	00170713          	addi	a4,a4,1
    800056b8:	ff1ff06f          	j	800056a8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056bc:	00190913          	addi	s2,s2,1
    800056c0:	00900793          	li	a5,9
    800056c4:	0527e063          	bltu	a5,s2,80005704 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056c8:	00003517          	auipc	a0,0x3
    800056cc:	a4050513          	addi	a0,a0,-1472 # 80008108 <CONSOLE_STATUS+0xf8>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	2b0080e7          	jalr	688(ra) # 80004980 <_Z11printStringPKc>
    800056d8:	00000613          	li	a2,0
    800056dc:	00a00593          	li	a1,10
    800056e0:	0009051b          	sext.w	a0,s2
    800056e4:	fffff097          	auipc	ra,0xfffff
    800056e8:	44c080e7          	jalr	1100(ra) # 80004b30 <_Z8printIntiii>
    800056ec:	00003517          	auipc	a0,0x3
    800056f0:	96c50513          	addi	a0,a0,-1684 # 80008058 <CONSOLE_STATUS+0x48>
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	28c080e7          	jalr	652(ra) # 80004980 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056fc:	00000493          	li	s1,0
    80005700:	f99ff06f          	j	80005698 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005704:	00003517          	auipc	a0,0x3
    80005708:	a0c50513          	addi	a0,a0,-1524 # 80008110 <CONSOLE_STATUS+0x100>
    8000570c:	fffff097          	auipc	ra,0xfffff
    80005710:	274080e7          	jalr	628(ra) # 80004980 <_Z11printStringPKc>
    finishedA = true;
    80005714:	00100793          	li	a5,1
    80005718:	00005717          	auipc	a4,0x5
    8000571c:	ecf70aa3          	sb	a5,-299(a4) # 8000a5ed <_ZL9finishedA>
}
    80005720:	01813083          	ld	ra,24(sp)
    80005724:	01013403          	ld	s0,16(sp)
    80005728:	00813483          	ld	s1,8(sp)
    8000572c:	00013903          	ld	s2,0(sp)
    80005730:	02010113          	addi	sp,sp,32
    80005734:	00008067          	ret

0000000080005738 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005738:	fd010113          	addi	sp,sp,-48
    8000573c:	02113423          	sd	ra,40(sp)
    80005740:	02813023          	sd	s0,32(sp)
    80005744:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005748:	00000613          	li	a2,0
    8000574c:	00000597          	auipc	a1,0x0
    80005750:	f2058593          	addi	a1,a1,-224 # 8000566c <_ZL11workerBodyAPv>
    80005754:	fd040513          	addi	a0,s0,-48
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	aa8080e7          	jalr	-1368(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005760:	00003517          	auipc	a0,0x3
    80005764:	a4050513          	addi	a0,a0,-1472 # 800081a0 <CONSOLE_STATUS+0x190>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	218080e7          	jalr	536(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005770:	00000613          	li	a2,0
    80005774:	00000597          	auipc	a1,0x0
    80005778:	e1458593          	addi	a1,a1,-492 # 80005588 <_ZL11workerBodyBPv>
    8000577c:	fd840513          	addi	a0,s0,-40
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	a80080e7          	jalr	-1408(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005788:	00003517          	auipc	a0,0x3
    8000578c:	a3050513          	addi	a0,a0,-1488 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	1f0080e7          	jalr	496(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005798:	00000613          	li	a2,0
    8000579c:	00000597          	auipc	a1,0x0
    800057a0:	c6c58593          	addi	a1,a1,-916 # 80005408 <_ZL11workerBodyCPv>
    800057a4:	fe040513          	addi	a0,s0,-32
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	a58080e7          	jalr	-1448(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800057b0:	00003517          	auipc	a0,0x3
    800057b4:	a2050513          	addi	a0,a0,-1504 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	1c8080e7          	jalr	456(ra) # 80004980 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057c0:	00000613          	li	a2,0
    800057c4:	00000597          	auipc	a1,0x0
    800057c8:	afc58593          	addi	a1,a1,-1284 # 800052c0 <_ZL11workerBodyDPv>
    800057cc:	fe840513          	addi	a0,s0,-24
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	a30080e7          	jalr	-1488(ra) # 80001200 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800057d8:	00003517          	auipc	a0,0x3
    800057dc:	a1050513          	addi	a0,a0,-1520 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	1a0080e7          	jalr	416(ra) # 80004980 <_Z11printStringPKc>
    800057e8:	00c0006f          	j	800057f4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800057ec:	ffffc097          	auipc	ra,0xffffc
    800057f0:	ae8080e7          	jalr	-1304(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800057f4:	00005797          	auipc	a5,0x5
    800057f8:	df97c783          	lbu	a5,-519(a5) # 8000a5ed <_ZL9finishedA>
    800057fc:	fe0788e3          	beqz	a5,800057ec <_Z16System_Mode_testv+0xb4>
    80005800:	00005797          	auipc	a5,0x5
    80005804:	dec7c783          	lbu	a5,-532(a5) # 8000a5ec <_ZL9finishedB>
    80005808:	fe0782e3          	beqz	a5,800057ec <_Z16System_Mode_testv+0xb4>
    8000580c:	00005797          	auipc	a5,0x5
    80005810:	ddf7c783          	lbu	a5,-545(a5) # 8000a5eb <_ZL9finishedC>
    80005814:	fc078ce3          	beqz	a5,800057ec <_Z16System_Mode_testv+0xb4>
    80005818:	00005797          	auipc	a5,0x5
    8000581c:	dd27c783          	lbu	a5,-558(a5) # 8000a5ea <_ZL9finishedD>
    80005820:	fc0786e3          	beqz	a5,800057ec <_Z16System_Mode_testv+0xb4>
    }

}
    80005824:	02813083          	ld	ra,40(sp)
    80005828:	02013403          	ld	s0,32(sp)
    8000582c:	03010113          	addi	sp,sp,48
    80005830:	00008067          	ret

0000000080005834 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005834:	fe010113          	addi	sp,sp,-32
    80005838:	00113c23          	sd	ra,24(sp)
    8000583c:	00813823          	sd	s0,16(sp)
    80005840:	00913423          	sd	s1,8(sp)
    80005844:	01213023          	sd	s2,0(sp)
    80005848:	02010413          	addi	s0,sp,32
    8000584c:	00050493          	mv	s1,a0
    80005850:	00058913          	mv	s2,a1
    80005854:	0015879b          	addiw	a5,a1,1
    80005858:	0007851b          	sext.w	a0,a5
    8000585c:	00f4a023          	sw	a5,0(s1)
    80005860:	0004a823          	sw	zero,16(s1)
    80005864:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005868:	00251513          	slli	a0,a0,0x2
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	8f4080e7          	jalr	-1804(ra) # 80001160 <_Z9mem_allocm>
    80005874:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005878:	00000593          	li	a1,0
    8000587c:	02048513          	addi	a0,s1,32
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	a90080e7          	jalr	-1392(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005888:	00090593          	mv	a1,s2
    8000588c:	01848513          	addi	a0,s1,24
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	a80080e7          	jalr	-1408(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005898:	00100593          	li	a1,1
    8000589c:	02848513          	addi	a0,s1,40
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	a70080e7          	jalr	-1424(ra) # 80001310 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800058a8:	00100593          	li	a1,1
    800058ac:	03048513          	addi	a0,s1,48
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	a60080e7          	jalr	-1440(ra) # 80001310 <_Z8sem_openPP4_semj>
}
    800058b8:	01813083          	ld	ra,24(sp)
    800058bc:	01013403          	ld	s0,16(sp)
    800058c0:	00813483          	ld	s1,8(sp)
    800058c4:	00013903          	ld	s2,0(sp)
    800058c8:	02010113          	addi	sp,sp,32
    800058cc:	00008067          	ret

00000000800058d0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800058d0:	fe010113          	addi	sp,sp,-32
    800058d4:	00113c23          	sd	ra,24(sp)
    800058d8:	00813823          	sd	s0,16(sp)
    800058dc:	00913423          	sd	s1,8(sp)
    800058e0:	01213023          	sd	s2,0(sp)
    800058e4:	02010413          	addi	s0,sp,32
    800058e8:	00050493          	mv	s1,a0
    800058ec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800058f0:	01853503          	ld	a0,24(a0)
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	a54080e7          	jalr	-1452(ra) # 80001348 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800058fc:	0304b503          	ld	a0,48(s1)
    80005900:	ffffc097          	auipc	ra,0xffffc
    80005904:	a48080e7          	jalr	-1464(ra) # 80001348 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005908:	0084b783          	ld	a5,8(s1)
    8000590c:	0144a703          	lw	a4,20(s1)
    80005910:	00271713          	slli	a4,a4,0x2
    80005914:	00e787b3          	add	a5,a5,a4
    80005918:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000591c:	0144a783          	lw	a5,20(s1)
    80005920:	0017879b          	addiw	a5,a5,1
    80005924:	0004a703          	lw	a4,0(s1)
    80005928:	02e7e7bb          	remw	a5,a5,a4
    8000592c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005930:	0304b503          	ld	a0,48(s1)
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	a30080e7          	jalr	-1488(ra) # 80001364 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000593c:	0204b503          	ld	a0,32(s1)
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	a24080e7          	jalr	-1500(ra) # 80001364 <_Z10sem_signalP4_sem>

}
    80005948:	01813083          	ld	ra,24(sp)
    8000594c:	01013403          	ld	s0,16(sp)
    80005950:	00813483          	ld	s1,8(sp)
    80005954:	00013903          	ld	s2,0(sp)
    80005958:	02010113          	addi	sp,sp,32
    8000595c:	00008067          	ret

0000000080005960 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005960:	fe010113          	addi	sp,sp,-32
    80005964:	00113c23          	sd	ra,24(sp)
    80005968:	00813823          	sd	s0,16(sp)
    8000596c:	00913423          	sd	s1,8(sp)
    80005970:	01213023          	sd	s2,0(sp)
    80005974:	02010413          	addi	s0,sp,32
    80005978:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000597c:	02053503          	ld	a0,32(a0)
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	9c8080e7          	jalr	-1592(ra) # 80001348 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005988:	0284b503          	ld	a0,40(s1)
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	9bc080e7          	jalr	-1604(ra) # 80001348 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005994:	0084b703          	ld	a4,8(s1)
    80005998:	0104a783          	lw	a5,16(s1)
    8000599c:	00279693          	slli	a3,a5,0x2
    800059a0:	00d70733          	add	a4,a4,a3
    800059a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059a8:	0017879b          	addiw	a5,a5,1
    800059ac:	0004a703          	lw	a4,0(s1)
    800059b0:	02e7e7bb          	remw	a5,a5,a4
    800059b4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800059b8:	0284b503          	ld	a0,40(s1)
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	9a8080e7          	jalr	-1624(ra) # 80001364 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800059c4:	0184b503          	ld	a0,24(s1)
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	99c080e7          	jalr	-1636(ra) # 80001364 <_Z10sem_signalP4_sem>

    return ret;
}
    800059d0:	00090513          	mv	a0,s2
    800059d4:	01813083          	ld	ra,24(sp)
    800059d8:	01013403          	ld	s0,16(sp)
    800059dc:	00813483          	ld	s1,8(sp)
    800059e0:	00013903          	ld	s2,0(sp)
    800059e4:	02010113          	addi	sp,sp,32
    800059e8:	00008067          	ret

00000000800059ec <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800059ec:	fe010113          	addi	sp,sp,-32
    800059f0:	00113c23          	sd	ra,24(sp)
    800059f4:	00813823          	sd	s0,16(sp)
    800059f8:	00913423          	sd	s1,8(sp)
    800059fc:	01213023          	sd	s2,0(sp)
    80005a00:	02010413          	addi	s0,sp,32
    80005a04:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005a08:	02853503          	ld	a0,40(a0)
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	93c080e7          	jalr	-1732(ra) # 80001348 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005a14:	0304b503          	ld	a0,48(s1)
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	930080e7          	jalr	-1744(ra) # 80001348 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005a20:	0144a783          	lw	a5,20(s1)
    80005a24:	0104a903          	lw	s2,16(s1)
    80005a28:	0327ce63          	blt	a5,s2,80005a64 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005a2c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005a30:	0304b503          	ld	a0,48(s1)
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	930080e7          	jalr	-1744(ra) # 80001364 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005a3c:	0284b503          	ld	a0,40(s1)
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	924080e7          	jalr	-1756(ra) # 80001364 <_Z10sem_signalP4_sem>

    return ret;
}
    80005a48:	00090513          	mv	a0,s2
    80005a4c:	01813083          	ld	ra,24(sp)
    80005a50:	01013403          	ld	s0,16(sp)
    80005a54:	00813483          	ld	s1,8(sp)
    80005a58:	00013903          	ld	s2,0(sp)
    80005a5c:	02010113          	addi	sp,sp,32
    80005a60:	00008067          	ret
        ret = cap - head + tail;
    80005a64:	0004a703          	lw	a4,0(s1)
    80005a68:	4127093b          	subw	s2,a4,s2
    80005a6c:	00f9093b          	addw	s2,s2,a5
    80005a70:	fc1ff06f          	j	80005a30 <_ZN6Buffer6getCntEv+0x44>

0000000080005a74 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005a74:	fe010113          	addi	sp,sp,-32
    80005a78:	00113c23          	sd	ra,24(sp)
    80005a7c:	00813823          	sd	s0,16(sp)
    80005a80:	00913423          	sd	s1,8(sp)
    80005a84:	02010413          	addi	s0,sp,32
    80005a88:	00050493          	mv	s1,a0
    putc('\n');
    80005a8c:	00a00513          	li	a0,10
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	96c080e7          	jalr	-1684(ra) # 800013fc <_Z4putcc>
    printString("Buffer deleted!\n");
    80005a98:	00002517          	auipc	a0,0x2
    80005a9c:	76850513          	addi	a0,a0,1896 # 80008200 <CONSOLE_STATUS+0x1f0>
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	ee0080e7          	jalr	-288(ra) # 80004980 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005aa8:	00048513          	mv	a0,s1
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	f40080e7          	jalr	-192(ra) # 800059ec <_ZN6Buffer6getCntEv>
    80005ab4:	02a05c63          	blez	a0,80005aec <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005ab8:	0084b783          	ld	a5,8(s1)
    80005abc:	0104a703          	lw	a4,16(s1)
    80005ac0:	00271713          	slli	a4,a4,0x2
    80005ac4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005ac8:	0007c503          	lbu	a0,0(a5)
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	930080e7          	jalr	-1744(ra) # 800013fc <_Z4putcc>
        head = (head + 1) % cap;
    80005ad4:	0104a783          	lw	a5,16(s1)
    80005ad8:	0017879b          	addiw	a5,a5,1
    80005adc:	0004a703          	lw	a4,0(s1)
    80005ae0:	02e7e7bb          	remw	a5,a5,a4
    80005ae4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005ae8:	fc1ff06f          	j	80005aa8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005aec:	02100513          	li	a0,33
    80005af0:	ffffc097          	auipc	ra,0xffffc
    80005af4:	90c080e7          	jalr	-1780(ra) # 800013fc <_Z4putcc>
    putc('\n');
    80005af8:	00a00513          	li	a0,10
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	900080e7          	jalr	-1792(ra) # 800013fc <_Z4putcc>
    mem_free(buffer);
    80005b04:	0084b503          	ld	a0,8(s1)
    80005b08:	ffffb097          	auipc	ra,0xffffb
    80005b0c:	6ac080e7          	jalr	1708(ra) # 800011b4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005b10:	0204b503          	ld	a0,32(s1)
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	818080e7          	jalr	-2024(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005b1c:	0184b503          	ld	a0,24(s1)
    80005b20:	ffffc097          	auipc	ra,0xffffc
    80005b24:	80c080e7          	jalr	-2036(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005b28:	0304b503          	ld	a0,48(s1)
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	800080e7          	jalr	-2048(ra) # 8000132c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005b34:	0284b503          	ld	a0,40(s1)
    80005b38:	ffffb097          	auipc	ra,0xffffb
    80005b3c:	7f4080e7          	jalr	2036(ra) # 8000132c <_Z9sem_closeP4_sem>
}
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	01013403          	ld	s0,16(sp)
    80005b48:	00813483          	ld	s1,8(sp)
    80005b4c:	02010113          	addi	sp,sp,32
    80005b50:	00008067          	ret

0000000080005b54 <start>:
    80005b54:	ff010113          	addi	sp,sp,-16
    80005b58:	00813423          	sd	s0,8(sp)
    80005b5c:	01010413          	addi	s0,sp,16
    80005b60:	300027f3          	csrr	a5,mstatus
    80005b64:	ffffe737          	lui	a4,0xffffe
    80005b68:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2faf>
    80005b6c:	00e7f7b3          	and	a5,a5,a4
    80005b70:	00001737          	lui	a4,0x1
    80005b74:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005b78:	00e7e7b3          	or	a5,a5,a4
    80005b7c:	30079073          	csrw	mstatus,a5
    80005b80:	00000797          	auipc	a5,0x0
    80005b84:	16078793          	addi	a5,a5,352 # 80005ce0 <system_main>
    80005b88:	34179073          	csrw	mepc,a5
    80005b8c:	00000793          	li	a5,0
    80005b90:	18079073          	csrw	satp,a5
    80005b94:	000107b7          	lui	a5,0x10
    80005b98:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005b9c:	30279073          	csrw	medeleg,a5
    80005ba0:	30379073          	csrw	mideleg,a5
    80005ba4:	104027f3          	csrr	a5,sie
    80005ba8:	2227e793          	ori	a5,a5,546
    80005bac:	10479073          	csrw	sie,a5
    80005bb0:	fff00793          	li	a5,-1
    80005bb4:	00a7d793          	srli	a5,a5,0xa
    80005bb8:	3b079073          	csrw	pmpaddr0,a5
    80005bbc:	00f00793          	li	a5,15
    80005bc0:	3a079073          	csrw	pmpcfg0,a5
    80005bc4:	f14027f3          	csrr	a5,mhartid
    80005bc8:	0200c737          	lui	a4,0x200c
    80005bcc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bd0:	0007869b          	sext.w	a3,a5
    80005bd4:	00269713          	slli	a4,a3,0x2
    80005bd8:	000f4637          	lui	a2,0xf4
    80005bdc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005be0:	00d70733          	add	a4,a4,a3
    80005be4:	0037979b          	slliw	a5,a5,0x3
    80005be8:	020046b7          	lui	a3,0x2004
    80005bec:	00d787b3          	add	a5,a5,a3
    80005bf0:	00c585b3          	add	a1,a1,a2
    80005bf4:	00371693          	slli	a3,a4,0x3
    80005bf8:	00005717          	auipc	a4,0x5
    80005bfc:	9f870713          	addi	a4,a4,-1544 # 8000a5f0 <timer_scratch>
    80005c00:	00b7b023          	sd	a1,0(a5)
    80005c04:	00d70733          	add	a4,a4,a3
    80005c08:	00f73c23          	sd	a5,24(a4)
    80005c0c:	02c73023          	sd	a2,32(a4)
    80005c10:	34071073          	csrw	mscratch,a4
    80005c14:	00000797          	auipc	a5,0x0
    80005c18:	6ec78793          	addi	a5,a5,1772 # 80006300 <timervec>
    80005c1c:	30579073          	csrw	mtvec,a5
    80005c20:	300027f3          	csrr	a5,mstatus
    80005c24:	0087e793          	ori	a5,a5,8
    80005c28:	30079073          	csrw	mstatus,a5
    80005c2c:	304027f3          	csrr	a5,mie
    80005c30:	0807e793          	ori	a5,a5,128
    80005c34:	30479073          	csrw	mie,a5
    80005c38:	f14027f3          	csrr	a5,mhartid
    80005c3c:	0007879b          	sext.w	a5,a5
    80005c40:	00078213          	mv	tp,a5
    80005c44:	30200073          	mret
    80005c48:	00813403          	ld	s0,8(sp)
    80005c4c:	01010113          	addi	sp,sp,16
    80005c50:	00008067          	ret

0000000080005c54 <timerinit>:
    80005c54:	ff010113          	addi	sp,sp,-16
    80005c58:	00813423          	sd	s0,8(sp)
    80005c5c:	01010413          	addi	s0,sp,16
    80005c60:	f14027f3          	csrr	a5,mhartid
    80005c64:	0200c737          	lui	a4,0x200c
    80005c68:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c6c:	0007869b          	sext.w	a3,a5
    80005c70:	00269713          	slli	a4,a3,0x2
    80005c74:	000f4637          	lui	a2,0xf4
    80005c78:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c7c:	00d70733          	add	a4,a4,a3
    80005c80:	0037979b          	slliw	a5,a5,0x3
    80005c84:	020046b7          	lui	a3,0x2004
    80005c88:	00d787b3          	add	a5,a5,a3
    80005c8c:	00c585b3          	add	a1,a1,a2
    80005c90:	00371693          	slli	a3,a4,0x3
    80005c94:	00005717          	auipc	a4,0x5
    80005c98:	95c70713          	addi	a4,a4,-1700 # 8000a5f0 <timer_scratch>
    80005c9c:	00b7b023          	sd	a1,0(a5)
    80005ca0:	00d70733          	add	a4,a4,a3
    80005ca4:	00f73c23          	sd	a5,24(a4)
    80005ca8:	02c73023          	sd	a2,32(a4)
    80005cac:	34071073          	csrw	mscratch,a4
    80005cb0:	00000797          	auipc	a5,0x0
    80005cb4:	65078793          	addi	a5,a5,1616 # 80006300 <timervec>
    80005cb8:	30579073          	csrw	mtvec,a5
    80005cbc:	300027f3          	csrr	a5,mstatus
    80005cc0:	0087e793          	ori	a5,a5,8
    80005cc4:	30079073          	csrw	mstatus,a5
    80005cc8:	304027f3          	csrr	a5,mie
    80005ccc:	0807e793          	ori	a5,a5,128
    80005cd0:	30479073          	csrw	mie,a5
    80005cd4:	00813403          	ld	s0,8(sp)
    80005cd8:	01010113          	addi	sp,sp,16
    80005cdc:	00008067          	ret

0000000080005ce0 <system_main>:
    80005ce0:	fe010113          	addi	sp,sp,-32
    80005ce4:	00813823          	sd	s0,16(sp)
    80005ce8:	00913423          	sd	s1,8(sp)
    80005cec:	00113c23          	sd	ra,24(sp)
    80005cf0:	02010413          	addi	s0,sp,32
    80005cf4:	00000097          	auipc	ra,0x0
    80005cf8:	0c4080e7          	jalr	196(ra) # 80005db8 <cpuid>
    80005cfc:	00005497          	auipc	s1,0x5
    80005d00:	83448493          	addi	s1,s1,-1996 # 8000a530 <started>
    80005d04:	02050263          	beqz	a0,80005d28 <system_main+0x48>
    80005d08:	0004a783          	lw	a5,0(s1)
    80005d0c:	0007879b          	sext.w	a5,a5
    80005d10:	fe078ce3          	beqz	a5,80005d08 <system_main+0x28>
    80005d14:	0ff0000f          	fence
    80005d18:	00002517          	auipc	a0,0x2
    80005d1c:	61850513          	addi	a0,a0,1560 # 80008330 <CONSOLE_STATUS+0x320>
    80005d20:	00001097          	auipc	ra,0x1
    80005d24:	a7c080e7          	jalr	-1412(ra) # 8000679c <panic>
    80005d28:	00001097          	auipc	ra,0x1
    80005d2c:	9d0080e7          	jalr	-1584(ra) # 800066f8 <consoleinit>
    80005d30:	00001097          	auipc	ra,0x1
    80005d34:	15c080e7          	jalr	348(ra) # 80006e8c <printfinit>
    80005d38:	00002517          	auipc	a0,0x2
    80005d3c:	32050513          	addi	a0,a0,800 # 80008058 <CONSOLE_STATUS+0x48>
    80005d40:	00001097          	auipc	ra,0x1
    80005d44:	ab8080e7          	jalr	-1352(ra) # 800067f8 <__printf>
    80005d48:	00002517          	auipc	a0,0x2
    80005d4c:	5b850513          	addi	a0,a0,1464 # 80008300 <CONSOLE_STATUS+0x2f0>
    80005d50:	00001097          	auipc	ra,0x1
    80005d54:	aa8080e7          	jalr	-1368(ra) # 800067f8 <__printf>
    80005d58:	00002517          	auipc	a0,0x2
    80005d5c:	30050513          	addi	a0,a0,768 # 80008058 <CONSOLE_STATUS+0x48>
    80005d60:	00001097          	auipc	ra,0x1
    80005d64:	a98080e7          	jalr	-1384(ra) # 800067f8 <__printf>
    80005d68:	00001097          	auipc	ra,0x1
    80005d6c:	4b0080e7          	jalr	1200(ra) # 80007218 <kinit>
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	148080e7          	jalr	328(ra) # 80005eb8 <trapinit>
    80005d78:	00000097          	auipc	ra,0x0
    80005d7c:	16c080e7          	jalr	364(ra) # 80005ee4 <trapinithart>
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	5c0080e7          	jalr	1472(ra) # 80006340 <plicinit>
    80005d88:	00000097          	auipc	ra,0x0
    80005d8c:	5e0080e7          	jalr	1504(ra) # 80006368 <plicinithart>
    80005d90:	00000097          	auipc	ra,0x0
    80005d94:	078080e7          	jalr	120(ra) # 80005e08 <userinit>
    80005d98:	0ff0000f          	fence
    80005d9c:	00100793          	li	a5,1
    80005da0:	00002517          	auipc	a0,0x2
    80005da4:	57850513          	addi	a0,a0,1400 # 80008318 <CONSOLE_STATUS+0x308>
    80005da8:	00f4a023          	sw	a5,0(s1)
    80005dac:	00001097          	auipc	ra,0x1
    80005db0:	a4c080e7          	jalr	-1460(ra) # 800067f8 <__printf>
    80005db4:	0000006f          	j	80005db4 <system_main+0xd4>

0000000080005db8 <cpuid>:
    80005db8:	ff010113          	addi	sp,sp,-16
    80005dbc:	00813423          	sd	s0,8(sp)
    80005dc0:	01010413          	addi	s0,sp,16
    80005dc4:	00020513          	mv	a0,tp
    80005dc8:	00813403          	ld	s0,8(sp)
    80005dcc:	0005051b          	sext.w	a0,a0
    80005dd0:	01010113          	addi	sp,sp,16
    80005dd4:	00008067          	ret

0000000080005dd8 <mycpu>:
    80005dd8:	ff010113          	addi	sp,sp,-16
    80005ddc:	00813423          	sd	s0,8(sp)
    80005de0:	01010413          	addi	s0,sp,16
    80005de4:	00020793          	mv	a5,tp
    80005de8:	00813403          	ld	s0,8(sp)
    80005dec:	0007879b          	sext.w	a5,a5
    80005df0:	00779793          	slli	a5,a5,0x7
    80005df4:	00006517          	auipc	a0,0x6
    80005df8:	82c50513          	addi	a0,a0,-2004 # 8000b620 <cpus>
    80005dfc:	00f50533          	add	a0,a0,a5
    80005e00:	01010113          	addi	sp,sp,16
    80005e04:	00008067          	ret

0000000080005e08 <userinit>:
    80005e08:	ff010113          	addi	sp,sp,-16
    80005e0c:	00813423          	sd	s0,8(sp)
    80005e10:	01010413          	addi	s0,sp,16
    80005e14:	00813403          	ld	s0,8(sp)
    80005e18:	01010113          	addi	sp,sp,16
    80005e1c:	ffffb317          	auipc	t1,0xffffb
    80005e20:	6b430067          	jr	1716(t1) # 800014d0 <main>

0000000080005e24 <either_copyout>:
    80005e24:	ff010113          	addi	sp,sp,-16
    80005e28:	00813023          	sd	s0,0(sp)
    80005e2c:	00113423          	sd	ra,8(sp)
    80005e30:	01010413          	addi	s0,sp,16
    80005e34:	02051663          	bnez	a0,80005e60 <either_copyout+0x3c>
    80005e38:	00058513          	mv	a0,a1
    80005e3c:	00060593          	mv	a1,a2
    80005e40:	0006861b          	sext.w	a2,a3
    80005e44:	00002097          	auipc	ra,0x2
    80005e48:	c60080e7          	jalr	-928(ra) # 80007aa4 <__memmove>
    80005e4c:	00813083          	ld	ra,8(sp)
    80005e50:	00013403          	ld	s0,0(sp)
    80005e54:	00000513          	li	a0,0
    80005e58:	01010113          	addi	sp,sp,16
    80005e5c:	00008067          	ret
    80005e60:	00002517          	auipc	a0,0x2
    80005e64:	4f850513          	addi	a0,a0,1272 # 80008358 <CONSOLE_STATUS+0x348>
    80005e68:	00001097          	auipc	ra,0x1
    80005e6c:	934080e7          	jalr	-1740(ra) # 8000679c <panic>

0000000080005e70 <either_copyin>:
    80005e70:	ff010113          	addi	sp,sp,-16
    80005e74:	00813023          	sd	s0,0(sp)
    80005e78:	00113423          	sd	ra,8(sp)
    80005e7c:	01010413          	addi	s0,sp,16
    80005e80:	02059463          	bnez	a1,80005ea8 <either_copyin+0x38>
    80005e84:	00060593          	mv	a1,a2
    80005e88:	0006861b          	sext.w	a2,a3
    80005e8c:	00002097          	auipc	ra,0x2
    80005e90:	c18080e7          	jalr	-1000(ra) # 80007aa4 <__memmove>
    80005e94:	00813083          	ld	ra,8(sp)
    80005e98:	00013403          	ld	s0,0(sp)
    80005e9c:	00000513          	li	a0,0
    80005ea0:	01010113          	addi	sp,sp,16
    80005ea4:	00008067          	ret
    80005ea8:	00002517          	auipc	a0,0x2
    80005eac:	4d850513          	addi	a0,a0,1240 # 80008380 <CONSOLE_STATUS+0x370>
    80005eb0:	00001097          	auipc	ra,0x1
    80005eb4:	8ec080e7          	jalr	-1812(ra) # 8000679c <panic>

0000000080005eb8 <trapinit>:
    80005eb8:	ff010113          	addi	sp,sp,-16
    80005ebc:	00813423          	sd	s0,8(sp)
    80005ec0:	01010413          	addi	s0,sp,16
    80005ec4:	00813403          	ld	s0,8(sp)
    80005ec8:	00002597          	auipc	a1,0x2
    80005ecc:	4e058593          	addi	a1,a1,1248 # 800083a8 <CONSOLE_STATUS+0x398>
    80005ed0:	00005517          	auipc	a0,0x5
    80005ed4:	7d050513          	addi	a0,a0,2000 # 8000b6a0 <tickslock>
    80005ed8:	01010113          	addi	sp,sp,16
    80005edc:	00001317          	auipc	t1,0x1
    80005ee0:	5cc30067          	jr	1484(t1) # 800074a8 <initlock>

0000000080005ee4 <trapinithart>:
    80005ee4:	ff010113          	addi	sp,sp,-16
    80005ee8:	00813423          	sd	s0,8(sp)
    80005eec:	01010413          	addi	s0,sp,16
    80005ef0:	00000797          	auipc	a5,0x0
    80005ef4:	30078793          	addi	a5,a5,768 # 800061f0 <kernelvec>
    80005ef8:	10579073          	csrw	stvec,a5
    80005efc:	00813403          	ld	s0,8(sp)
    80005f00:	01010113          	addi	sp,sp,16
    80005f04:	00008067          	ret

0000000080005f08 <usertrap>:
    80005f08:	ff010113          	addi	sp,sp,-16
    80005f0c:	00813423          	sd	s0,8(sp)
    80005f10:	01010413          	addi	s0,sp,16
    80005f14:	00813403          	ld	s0,8(sp)
    80005f18:	01010113          	addi	sp,sp,16
    80005f1c:	00008067          	ret

0000000080005f20 <usertrapret>:
    80005f20:	ff010113          	addi	sp,sp,-16
    80005f24:	00813423          	sd	s0,8(sp)
    80005f28:	01010413          	addi	s0,sp,16
    80005f2c:	00813403          	ld	s0,8(sp)
    80005f30:	01010113          	addi	sp,sp,16
    80005f34:	00008067          	ret

0000000080005f38 <kerneltrap>:
    80005f38:	fe010113          	addi	sp,sp,-32
    80005f3c:	00813823          	sd	s0,16(sp)
    80005f40:	00113c23          	sd	ra,24(sp)
    80005f44:	00913423          	sd	s1,8(sp)
    80005f48:	02010413          	addi	s0,sp,32
    80005f4c:	142025f3          	csrr	a1,scause
    80005f50:	100027f3          	csrr	a5,sstatus
    80005f54:	0027f793          	andi	a5,a5,2
    80005f58:	10079c63          	bnez	a5,80006070 <kerneltrap+0x138>
    80005f5c:	142027f3          	csrr	a5,scause
    80005f60:	0207ce63          	bltz	a5,80005f9c <kerneltrap+0x64>
    80005f64:	00002517          	auipc	a0,0x2
    80005f68:	48c50513          	addi	a0,a0,1164 # 800083f0 <CONSOLE_STATUS+0x3e0>
    80005f6c:	00001097          	auipc	ra,0x1
    80005f70:	88c080e7          	jalr	-1908(ra) # 800067f8 <__printf>
    80005f74:	141025f3          	csrr	a1,sepc
    80005f78:	14302673          	csrr	a2,stval
    80005f7c:	00002517          	auipc	a0,0x2
    80005f80:	48450513          	addi	a0,a0,1156 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005f84:	00001097          	auipc	ra,0x1
    80005f88:	874080e7          	jalr	-1932(ra) # 800067f8 <__printf>
    80005f8c:	00002517          	auipc	a0,0x2
    80005f90:	48c50513          	addi	a0,a0,1164 # 80008418 <CONSOLE_STATUS+0x408>
    80005f94:	00001097          	auipc	ra,0x1
    80005f98:	808080e7          	jalr	-2040(ra) # 8000679c <panic>
    80005f9c:	0ff7f713          	andi	a4,a5,255
    80005fa0:	00900693          	li	a3,9
    80005fa4:	04d70063          	beq	a4,a3,80005fe4 <kerneltrap+0xac>
    80005fa8:	fff00713          	li	a4,-1
    80005fac:	03f71713          	slli	a4,a4,0x3f
    80005fb0:	00170713          	addi	a4,a4,1
    80005fb4:	fae798e3          	bne	a5,a4,80005f64 <kerneltrap+0x2c>
    80005fb8:	00000097          	auipc	ra,0x0
    80005fbc:	e00080e7          	jalr	-512(ra) # 80005db8 <cpuid>
    80005fc0:	06050663          	beqz	a0,8000602c <kerneltrap+0xf4>
    80005fc4:	144027f3          	csrr	a5,sip
    80005fc8:	ffd7f793          	andi	a5,a5,-3
    80005fcc:	14479073          	csrw	sip,a5
    80005fd0:	01813083          	ld	ra,24(sp)
    80005fd4:	01013403          	ld	s0,16(sp)
    80005fd8:	00813483          	ld	s1,8(sp)
    80005fdc:	02010113          	addi	sp,sp,32
    80005fe0:	00008067          	ret
    80005fe4:	00000097          	auipc	ra,0x0
    80005fe8:	3d0080e7          	jalr	976(ra) # 800063b4 <plic_claim>
    80005fec:	00a00793          	li	a5,10
    80005ff0:	00050493          	mv	s1,a0
    80005ff4:	06f50863          	beq	a0,a5,80006064 <kerneltrap+0x12c>
    80005ff8:	fc050ce3          	beqz	a0,80005fd0 <kerneltrap+0x98>
    80005ffc:	00050593          	mv	a1,a0
    80006000:	00002517          	auipc	a0,0x2
    80006004:	3d050513          	addi	a0,a0,976 # 800083d0 <CONSOLE_STATUS+0x3c0>
    80006008:	00000097          	auipc	ra,0x0
    8000600c:	7f0080e7          	jalr	2032(ra) # 800067f8 <__printf>
    80006010:	01013403          	ld	s0,16(sp)
    80006014:	01813083          	ld	ra,24(sp)
    80006018:	00048513          	mv	a0,s1
    8000601c:	00813483          	ld	s1,8(sp)
    80006020:	02010113          	addi	sp,sp,32
    80006024:	00000317          	auipc	t1,0x0
    80006028:	3c830067          	jr	968(t1) # 800063ec <plic_complete>
    8000602c:	00005517          	auipc	a0,0x5
    80006030:	67450513          	addi	a0,a0,1652 # 8000b6a0 <tickslock>
    80006034:	00001097          	auipc	ra,0x1
    80006038:	498080e7          	jalr	1176(ra) # 800074cc <acquire>
    8000603c:	00004717          	auipc	a4,0x4
    80006040:	4f870713          	addi	a4,a4,1272 # 8000a534 <ticks>
    80006044:	00072783          	lw	a5,0(a4)
    80006048:	00005517          	auipc	a0,0x5
    8000604c:	65850513          	addi	a0,a0,1624 # 8000b6a0 <tickslock>
    80006050:	0017879b          	addiw	a5,a5,1
    80006054:	00f72023          	sw	a5,0(a4)
    80006058:	00001097          	auipc	ra,0x1
    8000605c:	540080e7          	jalr	1344(ra) # 80007598 <release>
    80006060:	f65ff06f          	j	80005fc4 <kerneltrap+0x8c>
    80006064:	00001097          	auipc	ra,0x1
    80006068:	09c080e7          	jalr	156(ra) # 80007100 <uartintr>
    8000606c:	fa5ff06f          	j	80006010 <kerneltrap+0xd8>
    80006070:	00002517          	auipc	a0,0x2
    80006074:	34050513          	addi	a0,a0,832 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	724080e7          	jalr	1828(ra) # 8000679c <panic>

0000000080006080 <clockintr>:
    80006080:	fe010113          	addi	sp,sp,-32
    80006084:	00813823          	sd	s0,16(sp)
    80006088:	00913423          	sd	s1,8(sp)
    8000608c:	00113c23          	sd	ra,24(sp)
    80006090:	02010413          	addi	s0,sp,32
    80006094:	00005497          	auipc	s1,0x5
    80006098:	60c48493          	addi	s1,s1,1548 # 8000b6a0 <tickslock>
    8000609c:	00048513          	mv	a0,s1
    800060a0:	00001097          	auipc	ra,0x1
    800060a4:	42c080e7          	jalr	1068(ra) # 800074cc <acquire>
    800060a8:	00004717          	auipc	a4,0x4
    800060ac:	48c70713          	addi	a4,a4,1164 # 8000a534 <ticks>
    800060b0:	00072783          	lw	a5,0(a4)
    800060b4:	01013403          	ld	s0,16(sp)
    800060b8:	01813083          	ld	ra,24(sp)
    800060bc:	00048513          	mv	a0,s1
    800060c0:	0017879b          	addiw	a5,a5,1
    800060c4:	00813483          	ld	s1,8(sp)
    800060c8:	00f72023          	sw	a5,0(a4)
    800060cc:	02010113          	addi	sp,sp,32
    800060d0:	00001317          	auipc	t1,0x1
    800060d4:	4c830067          	jr	1224(t1) # 80007598 <release>

00000000800060d8 <devintr>:
    800060d8:	142027f3          	csrr	a5,scause
    800060dc:	00000513          	li	a0,0
    800060e0:	0007c463          	bltz	a5,800060e8 <devintr+0x10>
    800060e4:	00008067          	ret
    800060e8:	fe010113          	addi	sp,sp,-32
    800060ec:	00813823          	sd	s0,16(sp)
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00913423          	sd	s1,8(sp)
    800060f8:	02010413          	addi	s0,sp,32
    800060fc:	0ff7f713          	andi	a4,a5,255
    80006100:	00900693          	li	a3,9
    80006104:	04d70c63          	beq	a4,a3,8000615c <devintr+0x84>
    80006108:	fff00713          	li	a4,-1
    8000610c:	03f71713          	slli	a4,a4,0x3f
    80006110:	00170713          	addi	a4,a4,1
    80006114:	00e78c63          	beq	a5,a4,8000612c <devintr+0x54>
    80006118:	01813083          	ld	ra,24(sp)
    8000611c:	01013403          	ld	s0,16(sp)
    80006120:	00813483          	ld	s1,8(sp)
    80006124:	02010113          	addi	sp,sp,32
    80006128:	00008067          	ret
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	c8c080e7          	jalr	-884(ra) # 80005db8 <cpuid>
    80006134:	06050663          	beqz	a0,800061a0 <devintr+0xc8>
    80006138:	144027f3          	csrr	a5,sip
    8000613c:	ffd7f793          	andi	a5,a5,-3
    80006140:	14479073          	csrw	sip,a5
    80006144:	01813083          	ld	ra,24(sp)
    80006148:	01013403          	ld	s0,16(sp)
    8000614c:	00813483          	ld	s1,8(sp)
    80006150:	00200513          	li	a0,2
    80006154:	02010113          	addi	sp,sp,32
    80006158:	00008067          	ret
    8000615c:	00000097          	auipc	ra,0x0
    80006160:	258080e7          	jalr	600(ra) # 800063b4 <plic_claim>
    80006164:	00a00793          	li	a5,10
    80006168:	00050493          	mv	s1,a0
    8000616c:	06f50663          	beq	a0,a5,800061d8 <devintr+0x100>
    80006170:	00100513          	li	a0,1
    80006174:	fa0482e3          	beqz	s1,80006118 <devintr+0x40>
    80006178:	00048593          	mv	a1,s1
    8000617c:	00002517          	auipc	a0,0x2
    80006180:	25450513          	addi	a0,a0,596 # 800083d0 <CONSOLE_STATUS+0x3c0>
    80006184:	00000097          	auipc	ra,0x0
    80006188:	674080e7          	jalr	1652(ra) # 800067f8 <__printf>
    8000618c:	00048513          	mv	a0,s1
    80006190:	00000097          	auipc	ra,0x0
    80006194:	25c080e7          	jalr	604(ra) # 800063ec <plic_complete>
    80006198:	00100513          	li	a0,1
    8000619c:	f7dff06f          	j	80006118 <devintr+0x40>
    800061a0:	00005517          	auipc	a0,0x5
    800061a4:	50050513          	addi	a0,a0,1280 # 8000b6a0 <tickslock>
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	324080e7          	jalr	804(ra) # 800074cc <acquire>
    800061b0:	00004717          	auipc	a4,0x4
    800061b4:	38470713          	addi	a4,a4,900 # 8000a534 <ticks>
    800061b8:	00072783          	lw	a5,0(a4)
    800061bc:	00005517          	auipc	a0,0x5
    800061c0:	4e450513          	addi	a0,a0,1252 # 8000b6a0 <tickslock>
    800061c4:	0017879b          	addiw	a5,a5,1
    800061c8:	00f72023          	sw	a5,0(a4)
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	3cc080e7          	jalr	972(ra) # 80007598 <release>
    800061d4:	f65ff06f          	j	80006138 <devintr+0x60>
    800061d8:	00001097          	auipc	ra,0x1
    800061dc:	f28080e7          	jalr	-216(ra) # 80007100 <uartintr>
    800061e0:	fadff06f          	j	8000618c <devintr+0xb4>
	...

00000000800061f0 <kernelvec>:
    800061f0:	f0010113          	addi	sp,sp,-256
    800061f4:	00113023          	sd	ra,0(sp)
    800061f8:	00213423          	sd	sp,8(sp)
    800061fc:	00313823          	sd	gp,16(sp)
    80006200:	00413c23          	sd	tp,24(sp)
    80006204:	02513023          	sd	t0,32(sp)
    80006208:	02613423          	sd	t1,40(sp)
    8000620c:	02713823          	sd	t2,48(sp)
    80006210:	02813c23          	sd	s0,56(sp)
    80006214:	04913023          	sd	s1,64(sp)
    80006218:	04a13423          	sd	a0,72(sp)
    8000621c:	04b13823          	sd	a1,80(sp)
    80006220:	04c13c23          	sd	a2,88(sp)
    80006224:	06d13023          	sd	a3,96(sp)
    80006228:	06e13423          	sd	a4,104(sp)
    8000622c:	06f13823          	sd	a5,112(sp)
    80006230:	07013c23          	sd	a6,120(sp)
    80006234:	09113023          	sd	a7,128(sp)
    80006238:	09213423          	sd	s2,136(sp)
    8000623c:	09313823          	sd	s3,144(sp)
    80006240:	09413c23          	sd	s4,152(sp)
    80006244:	0b513023          	sd	s5,160(sp)
    80006248:	0b613423          	sd	s6,168(sp)
    8000624c:	0b713823          	sd	s7,176(sp)
    80006250:	0b813c23          	sd	s8,184(sp)
    80006254:	0d913023          	sd	s9,192(sp)
    80006258:	0da13423          	sd	s10,200(sp)
    8000625c:	0db13823          	sd	s11,208(sp)
    80006260:	0dc13c23          	sd	t3,216(sp)
    80006264:	0fd13023          	sd	t4,224(sp)
    80006268:	0fe13423          	sd	t5,232(sp)
    8000626c:	0ff13823          	sd	t6,240(sp)
    80006270:	cc9ff0ef          	jal	ra,80005f38 <kerneltrap>
    80006274:	00013083          	ld	ra,0(sp)
    80006278:	00813103          	ld	sp,8(sp)
    8000627c:	01013183          	ld	gp,16(sp)
    80006280:	02013283          	ld	t0,32(sp)
    80006284:	02813303          	ld	t1,40(sp)
    80006288:	03013383          	ld	t2,48(sp)
    8000628c:	03813403          	ld	s0,56(sp)
    80006290:	04013483          	ld	s1,64(sp)
    80006294:	04813503          	ld	a0,72(sp)
    80006298:	05013583          	ld	a1,80(sp)
    8000629c:	05813603          	ld	a2,88(sp)
    800062a0:	06013683          	ld	a3,96(sp)
    800062a4:	06813703          	ld	a4,104(sp)
    800062a8:	07013783          	ld	a5,112(sp)
    800062ac:	07813803          	ld	a6,120(sp)
    800062b0:	08013883          	ld	a7,128(sp)
    800062b4:	08813903          	ld	s2,136(sp)
    800062b8:	09013983          	ld	s3,144(sp)
    800062bc:	09813a03          	ld	s4,152(sp)
    800062c0:	0a013a83          	ld	s5,160(sp)
    800062c4:	0a813b03          	ld	s6,168(sp)
    800062c8:	0b013b83          	ld	s7,176(sp)
    800062cc:	0b813c03          	ld	s8,184(sp)
    800062d0:	0c013c83          	ld	s9,192(sp)
    800062d4:	0c813d03          	ld	s10,200(sp)
    800062d8:	0d013d83          	ld	s11,208(sp)
    800062dc:	0d813e03          	ld	t3,216(sp)
    800062e0:	0e013e83          	ld	t4,224(sp)
    800062e4:	0e813f03          	ld	t5,232(sp)
    800062e8:	0f013f83          	ld	t6,240(sp)
    800062ec:	10010113          	addi	sp,sp,256
    800062f0:	10200073          	sret
    800062f4:	00000013          	nop
    800062f8:	00000013          	nop
    800062fc:	00000013          	nop

0000000080006300 <timervec>:
    80006300:	34051573          	csrrw	a0,mscratch,a0
    80006304:	00b53023          	sd	a1,0(a0)
    80006308:	00c53423          	sd	a2,8(a0)
    8000630c:	00d53823          	sd	a3,16(a0)
    80006310:	01853583          	ld	a1,24(a0)
    80006314:	02053603          	ld	a2,32(a0)
    80006318:	0005b683          	ld	a3,0(a1)
    8000631c:	00c686b3          	add	a3,a3,a2
    80006320:	00d5b023          	sd	a3,0(a1)
    80006324:	00200593          	li	a1,2
    80006328:	14459073          	csrw	sip,a1
    8000632c:	01053683          	ld	a3,16(a0)
    80006330:	00853603          	ld	a2,8(a0)
    80006334:	00053583          	ld	a1,0(a0)
    80006338:	34051573          	csrrw	a0,mscratch,a0
    8000633c:	30200073          	mret

0000000080006340 <plicinit>:
    80006340:	ff010113          	addi	sp,sp,-16
    80006344:	00813423          	sd	s0,8(sp)
    80006348:	01010413          	addi	s0,sp,16
    8000634c:	00813403          	ld	s0,8(sp)
    80006350:	0c0007b7          	lui	a5,0xc000
    80006354:	00100713          	li	a4,1
    80006358:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000635c:	00e7a223          	sw	a4,4(a5)
    80006360:	01010113          	addi	sp,sp,16
    80006364:	00008067          	ret

0000000080006368 <plicinithart>:
    80006368:	ff010113          	addi	sp,sp,-16
    8000636c:	00813023          	sd	s0,0(sp)
    80006370:	00113423          	sd	ra,8(sp)
    80006374:	01010413          	addi	s0,sp,16
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	a40080e7          	jalr	-1472(ra) # 80005db8 <cpuid>
    80006380:	0085171b          	slliw	a4,a0,0x8
    80006384:	0c0027b7          	lui	a5,0xc002
    80006388:	00e787b3          	add	a5,a5,a4
    8000638c:	40200713          	li	a4,1026
    80006390:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006394:	00813083          	ld	ra,8(sp)
    80006398:	00013403          	ld	s0,0(sp)
    8000639c:	00d5151b          	slliw	a0,a0,0xd
    800063a0:	0c2017b7          	lui	a5,0xc201
    800063a4:	00a78533          	add	a0,a5,a0
    800063a8:	00052023          	sw	zero,0(a0)
    800063ac:	01010113          	addi	sp,sp,16
    800063b0:	00008067          	ret

00000000800063b4 <plic_claim>:
    800063b4:	ff010113          	addi	sp,sp,-16
    800063b8:	00813023          	sd	s0,0(sp)
    800063bc:	00113423          	sd	ra,8(sp)
    800063c0:	01010413          	addi	s0,sp,16
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	9f4080e7          	jalr	-1548(ra) # 80005db8 <cpuid>
    800063cc:	00813083          	ld	ra,8(sp)
    800063d0:	00013403          	ld	s0,0(sp)
    800063d4:	00d5151b          	slliw	a0,a0,0xd
    800063d8:	0c2017b7          	lui	a5,0xc201
    800063dc:	00a78533          	add	a0,a5,a0
    800063e0:	00452503          	lw	a0,4(a0)
    800063e4:	01010113          	addi	sp,sp,16
    800063e8:	00008067          	ret

00000000800063ec <plic_complete>:
    800063ec:	fe010113          	addi	sp,sp,-32
    800063f0:	00813823          	sd	s0,16(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	00113c23          	sd	ra,24(sp)
    800063fc:	02010413          	addi	s0,sp,32
    80006400:	00050493          	mv	s1,a0
    80006404:	00000097          	auipc	ra,0x0
    80006408:	9b4080e7          	jalr	-1612(ra) # 80005db8 <cpuid>
    8000640c:	01813083          	ld	ra,24(sp)
    80006410:	01013403          	ld	s0,16(sp)
    80006414:	00d5179b          	slliw	a5,a0,0xd
    80006418:	0c201737          	lui	a4,0xc201
    8000641c:	00f707b3          	add	a5,a4,a5
    80006420:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006424:	00813483          	ld	s1,8(sp)
    80006428:	02010113          	addi	sp,sp,32
    8000642c:	00008067          	ret

0000000080006430 <consolewrite>:
    80006430:	fb010113          	addi	sp,sp,-80
    80006434:	04813023          	sd	s0,64(sp)
    80006438:	04113423          	sd	ra,72(sp)
    8000643c:	02913c23          	sd	s1,56(sp)
    80006440:	03213823          	sd	s2,48(sp)
    80006444:	03313423          	sd	s3,40(sp)
    80006448:	03413023          	sd	s4,32(sp)
    8000644c:	01513c23          	sd	s5,24(sp)
    80006450:	05010413          	addi	s0,sp,80
    80006454:	06c05c63          	blez	a2,800064cc <consolewrite+0x9c>
    80006458:	00060993          	mv	s3,a2
    8000645c:	00050a13          	mv	s4,a0
    80006460:	00058493          	mv	s1,a1
    80006464:	00000913          	li	s2,0
    80006468:	fff00a93          	li	s5,-1
    8000646c:	01c0006f          	j	80006488 <consolewrite+0x58>
    80006470:	fbf44503          	lbu	a0,-65(s0)
    80006474:	0019091b          	addiw	s2,s2,1
    80006478:	00148493          	addi	s1,s1,1
    8000647c:	00001097          	auipc	ra,0x1
    80006480:	a9c080e7          	jalr	-1380(ra) # 80006f18 <uartputc>
    80006484:	03298063          	beq	s3,s2,800064a4 <consolewrite+0x74>
    80006488:	00048613          	mv	a2,s1
    8000648c:	00100693          	li	a3,1
    80006490:	000a0593          	mv	a1,s4
    80006494:	fbf40513          	addi	a0,s0,-65
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	9d8080e7          	jalr	-1576(ra) # 80005e70 <either_copyin>
    800064a0:	fd5518e3          	bne	a0,s5,80006470 <consolewrite+0x40>
    800064a4:	04813083          	ld	ra,72(sp)
    800064a8:	04013403          	ld	s0,64(sp)
    800064ac:	03813483          	ld	s1,56(sp)
    800064b0:	02813983          	ld	s3,40(sp)
    800064b4:	02013a03          	ld	s4,32(sp)
    800064b8:	01813a83          	ld	s5,24(sp)
    800064bc:	00090513          	mv	a0,s2
    800064c0:	03013903          	ld	s2,48(sp)
    800064c4:	05010113          	addi	sp,sp,80
    800064c8:	00008067          	ret
    800064cc:	00000913          	li	s2,0
    800064d0:	fd5ff06f          	j	800064a4 <consolewrite+0x74>

00000000800064d4 <consoleread>:
    800064d4:	f9010113          	addi	sp,sp,-112
    800064d8:	06813023          	sd	s0,96(sp)
    800064dc:	04913c23          	sd	s1,88(sp)
    800064e0:	05213823          	sd	s2,80(sp)
    800064e4:	05313423          	sd	s3,72(sp)
    800064e8:	05413023          	sd	s4,64(sp)
    800064ec:	03513c23          	sd	s5,56(sp)
    800064f0:	03613823          	sd	s6,48(sp)
    800064f4:	03713423          	sd	s7,40(sp)
    800064f8:	03813023          	sd	s8,32(sp)
    800064fc:	06113423          	sd	ra,104(sp)
    80006500:	01913c23          	sd	s9,24(sp)
    80006504:	07010413          	addi	s0,sp,112
    80006508:	00060b93          	mv	s7,a2
    8000650c:	00050913          	mv	s2,a0
    80006510:	00058c13          	mv	s8,a1
    80006514:	00060b1b          	sext.w	s6,a2
    80006518:	00005497          	auipc	s1,0x5
    8000651c:	1b048493          	addi	s1,s1,432 # 8000b6c8 <cons>
    80006520:	00400993          	li	s3,4
    80006524:	fff00a13          	li	s4,-1
    80006528:	00a00a93          	li	s5,10
    8000652c:	05705e63          	blez	s7,80006588 <consoleread+0xb4>
    80006530:	09c4a703          	lw	a4,156(s1)
    80006534:	0984a783          	lw	a5,152(s1)
    80006538:	0007071b          	sext.w	a4,a4
    8000653c:	08e78463          	beq	a5,a4,800065c4 <consoleread+0xf0>
    80006540:	07f7f713          	andi	a4,a5,127
    80006544:	00e48733          	add	a4,s1,a4
    80006548:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000654c:	0017869b          	addiw	a3,a5,1
    80006550:	08d4ac23          	sw	a3,152(s1)
    80006554:	00070c9b          	sext.w	s9,a4
    80006558:	0b370663          	beq	a4,s3,80006604 <consoleread+0x130>
    8000655c:	00100693          	li	a3,1
    80006560:	f9f40613          	addi	a2,s0,-97
    80006564:	000c0593          	mv	a1,s8
    80006568:	00090513          	mv	a0,s2
    8000656c:	f8e40fa3          	sb	a4,-97(s0)
    80006570:	00000097          	auipc	ra,0x0
    80006574:	8b4080e7          	jalr	-1868(ra) # 80005e24 <either_copyout>
    80006578:	01450863          	beq	a0,s4,80006588 <consoleread+0xb4>
    8000657c:	001c0c13          	addi	s8,s8,1
    80006580:	fffb8b9b          	addiw	s7,s7,-1
    80006584:	fb5c94e3          	bne	s9,s5,8000652c <consoleread+0x58>
    80006588:	000b851b          	sext.w	a0,s7
    8000658c:	06813083          	ld	ra,104(sp)
    80006590:	06013403          	ld	s0,96(sp)
    80006594:	05813483          	ld	s1,88(sp)
    80006598:	05013903          	ld	s2,80(sp)
    8000659c:	04813983          	ld	s3,72(sp)
    800065a0:	04013a03          	ld	s4,64(sp)
    800065a4:	03813a83          	ld	s5,56(sp)
    800065a8:	02813b83          	ld	s7,40(sp)
    800065ac:	02013c03          	ld	s8,32(sp)
    800065b0:	01813c83          	ld	s9,24(sp)
    800065b4:	40ab053b          	subw	a0,s6,a0
    800065b8:	03013b03          	ld	s6,48(sp)
    800065bc:	07010113          	addi	sp,sp,112
    800065c0:	00008067          	ret
    800065c4:	00001097          	auipc	ra,0x1
    800065c8:	1d8080e7          	jalr	472(ra) # 8000779c <push_on>
    800065cc:	0984a703          	lw	a4,152(s1)
    800065d0:	09c4a783          	lw	a5,156(s1)
    800065d4:	0007879b          	sext.w	a5,a5
    800065d8:	fef70ce3          	beq	a4,a5,800065d0 <consoleread+0xfc>
    800065dc:	00001097          	auipc	ra,0x1
    800065e0:	234080e7          	jalr	564(ra) # 80007810 <pop_on>
    800065e4:	0984a783          	lw	a5,152(s1)
    800065e8:	07f7f713          	andi	a4,a5,127
    800065ec:	00e48733          	add	a4,s1,a4
    800065f0:	01874703          	lbu	a4,24(a4)
    800065f4:	0017869b          	addiw	a3,a5,1
    800065f8:	08d4ac23          	sw	a3,152(s1)
    800065fc:	00070c9b          	sext.w	s9,a4
    80006600:	f5371ee3          	bne	a4,s3,8000655c <consoleread+0x88>
    80006604:	000b851b          	sext.w	a0,s7
    80006608:	f96bf2e3          	bgeu	s7,s6,8000658c <consoleread+0xb8>
    8000660c:	08f4ac23          	sw	a5,152(s1)
    80006610:	f7dff06f          	j	8000658c <consoleread+0xb8>

0000000080006614 <consputc>:
    80006614:	10000793          	li	a5,256
    80006618:	00f50663          	beq	a0,a5,80006624 <consputc+0x10>
    8000661c:	00001317          	auipc	t1,0x1
    80006620:	9f430067          	jr	-1548(t1) # 80007010 <uartputc_sync>
    80006624:	ff010113          	addi	sp,sp,-16
    80006628:	00113423          	sd	ra,8(sp)
    8000662c:	00813023          	sd	s0,0(sp)
    80006630:	01010413          	addi	s0,sp,16
    80006634:	00800513          	li	a0,8
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	9d8080e7          	jalr	-1576(ra) # 80007010 <uartputc_sync>
    80006640:	02000513          	li	a0,32
    80006644:	00001097          	auipc	ra,0x1
    80006648:	9cc080e7          	jalr	-1588(ra) # 80007010 <uartputc_sync>
    8000664c:	00013403          	ld	s0,0(sp)
    80006650:	00813083          	ld	ra,8(sp)
    80006654:	00800513          	li	a0,8
    80006658:	01010113          	addi	sp,sp,16
    8000665c:	00001317          	auipc	t1,0x1
    80006660:	9b430067          	jr	-1612(t1) # 80007010 <uartputc_sync>

0000000080006664 <consoleintr>:
    80006664:	fe010113          	addi	sp,sp,-32
    80006668:	00813823          	sd	s0,16(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	01213023          	sd	s2,0(sp)
    80006674:	00113c23          	sd	ra,24(sp)
    80006678:	02010413          	addi	s0,sp,32
    8000667c:	00005917          	auipc	s2,0x5
    80006680:	04c90913          	addi	s2,s2,76 # 8000b6c8 <cons>
    80006684:	00050493          	mv	s1,a0
    80006688:	00090513          	mv	a0,s2
    8000668c:	00001097          	auipc	ra,0x1
    80006690:	e40080e7          	jalr	-448(ra) # 800074cc <acquire>
    80006694:	02048c63          	beqz	s1,800066cc <consoleintr+0x68>
    80006698:	0a092783          	lw	a5,160(s2)
    8000669c:	09892703          	lw	a4,152(s2)
    800066a0:	07f00693          	li	a3,127
    800066a4:	40e7873b          	subw	a4,a5,a4
    800066a8:	02e6e263          	bltu	a3,a4,800066cc <consoleintr+0x68>
    800066ac:	00d00713          	li	a4,13
    800066b0:	04e48063          	beq	s1,a4,800066f0 <consoleintr+0x8c>
    800066b4:	07f7f713          	andi	a4,a5,127
    800066b8:	00e90733          	add	a4,s2,a4
    800066bc:	0017879b          	addiw	a5,a5,1
    800066c0:	0af92023          	sw	a5,160(s2)
    800066c4:	00970c23          	sb	s1,24(a4)
    800066c8:	08f92e23          	sw	a5,156(s2)
    800066cc:	01013403          	ld	s0,16(sp)
    800066d0:	01813083          	ld	ra,24(sp)
    800066d4:	00813483          	ld	s1,8(sp)
    800066d8:	00013903          	ld	s2,0(sp)
    800066dc:	00005517          	auipc	a0,0x5
    800066e0:	fec50513          	addi	a0,a0,-20 # 8000b6c8 <cons>
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00001317          	auipc	t1,0x1
    800066ec:	eb030067          	jr	-336(t1) # 80007598 <release>
    800066f0:	00a00493          	li	s1,10
    800066f4:	fc1ff06f          	j	800066b4 <consoleintr+0x50>

00000000800066f8 <consoleinit>:
    800066f8:	fe010113          	addi	sp,sp,-32
    800066fc:	00113c23          	sd	ra,24(sp)
    80006700:	00813823          	sd	s0,16(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	02010413          	addi	s0,sp,32
    8000670c:	00005497          	auipc	s1,0x5
    80006710:	fbc48493          	addi	s1,s1,-68 # 8000b6c8 <cons>
    80006714:	00048513          	mv	a0,s1
    80006718:	00002597          	auipc	a1,0x2
    8000671c:	d1058593          	addi	a1,a1,-752 # 80008428 <CONSOLE_STATUS+0x418>
    80006720:	00001097          	auipc	ra,0x1
    80006724:	d88080e7          	jalr	-632(ra) # 800074a8 <initlock>
    80006728:	00000097          	auipc	ra,0x0
    8000672c:	7ac080e7          	jalr	1964(ra) # 80006ed4 <uartinit>
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00000797          	auipc	a5,0x0
    8000673c:	d9c78793          	addi	a5,a5,-612 # 800064d4 <consoleread>
    80006740:	0af4bc23          	sd	a5,184(s1)
    80006744:	00000797          	auipc	a5,0x0
    80006748:	cec78793          	addi	a5,a5,-788 # 80006430 <consolewrite>
    8000674c:	0cf4b023          	sd	a5,192(s1)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	02010113          	addi	sp,sp,32
    80006758:	00008067          	ret

000000008000675c <console_read>:
    8000675c:	ff010113          	addi	sp,sp,-16
    80006760:	00813423          	sd	s0,8(sp)
    80006764:	01010413          	addi	s0,sp,16
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	00005317          	auipc	t1,0x5
    80006770:	01433303          	ld	t1,20(t1) # 8000b780 <devsw+0x10>
    80006774:	01010113          	addi	sp,sp,16
    80006778:	00030067          	jr	t1

000000008000677c <console_write>:
    8000677c:	ff010113          	addi	sp,sp,-16
    80006780:	00813423          	sd	s0,8(sp)
    80006784:	01010413          	addi	s0,sp,16
    80006788:	00813403          	ld	s0,8(sp)
    8000678c:	00005317          	auipc	t1,0x5
    80006790:	ffc33303          	ld	t1,-4(t1) # 8000b788 <devsw+0x18>
    80006794:	01010113          	addi	sp,sp,16
    80006798:	00030067          	jr	t1

000000008000679c <panic>:
    8000679c:	fe010113          	addi	sp,sp,-32
    800067a0:	00113c23          	sd	ra,24(sp)
    800067a4:	00813823          	sd	s0,16(sp)
    800067a8:	00913423          	sd	s1,8(sp)
    800067ac:	02010413          	addi	s0,sp,32
    800067b0:	00050493          	mv	s1,a0
    800067b4:	00002517          	auipc	a0,0x2
    800067b8:	c7c50513          	addi	a0,a0,-900 # 80008430 <CONSOLE_STATUS+0x420>
    800067bc:	00005797          	auipc	a5,0x5
    800067c0:	0607a623          	sw	zero,108(a5) # 8000b828 <pr+0x18>
    800067c4:	00000097          	auipc	ra,0x0
    800067c8:	034080e7          	jalr	52(ra) # 800067f8 <__printf>
    800067cc:	00048513          	mv	a0,s1
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	028080e7          	jalr	40(ra) # 800067f8 <__printf>
    800067d8:	00002517          	auipc	a0,0x2
    800067dc:	88050513          	addi	a0,a0,-1920 # 80008058 <CONSOLE_STATUS+0x48>
    800067e0:	00000097          	auipc	ra,0x0
    800067e4:	018080e7          	jalr	24(ra) # 800067f8 <__printf>
    800067e8:	00100793          	li	a5,1
    800067ec:	00004717          	auipc	a4,0x4
    800067f0:	d4f72623          	sw	a5,-692(a4) # 8000a538 <panicked>
    800067f4:	0000006f          	j	800067f4 <panic+0x58>

00000000800067f8 <__printf>:
    800067f8:	f3010113          	addi	sp,sp,-208
    800067fc:	08813023          	sd	s0,128(sp)
    80006800:	07313423          	sd	s3,104(sp)
    80006804:	09010413          	addi	s0,sp,144
    80006808:	05813023          	sd	s8,64(sp)
    8000680c:	08113423          	sd	ra,136(sp)
    80006810:	06913c23          	sd	s1,120(sp)
    80006814:	07213823          	sd	s2,112(sp)
    80006818:	07413023          	sd	s4,96(sp)
    8000681c:	05513c23          	sd	s5,88(sp)
    80006820:	05613823          	sd	s6,80(sp)
    80006824:	05713423          	sd	s7,72(sp)
    80006828:	03913c23          	sd	s9,56(sp)
    8000682c:	03a13823          	sd	s10,48(sp)
    80006830:	03b13423          	sd	s11,40(sp)
    80006834:	00005317          	auipc	t1,0x5
    80006838:	fdc30313          	addi	t1,t1,-36 # 8000b810 <pr>
    8000683c:	01832c03          	lw	s8,24(t1)
    80006840:	00b43423          	sd	a1,8(s0)
    80006844:	00c43823          	sd	a2,16(s0)
    80006848:	00d43c23          	sd	a3,24(s0)
    8000684c:	02e43023          	sd	a4,32(s0)
    80006850:	02f43423          	sd	a5,40(s0)
    80006854:	03043823          	sd	a6,48(s0)
    80006858:	03143c23          	sd	a7,56(s0)
    8000685c:	00050993          	mv	s3,a0
    80006860:	4a0c1663          	bnez	s8,80006d0c <__printf+0x514>
    80006864:	60098c63          	beqz	s3,80006e7c <__printf+0x684>
    80006868:	0009c503          	lbu	a0,0(s3)
    8000686c:	00840793          	addi	a5,s0,8
    80006870:	f6f43c23          	sd	a5,-136(s0)
    80006874:	00000493          	li	s1,0
    80006878:	22050063          	beqz	a0,80006a98 <__printf+0x2a0>
    8000687c:	00002a37          	lui	s4,0x2
    80006880:	00018ab7          	lui	s5,0x18
    80006884:	000f4b37          	lui	s6,0xf4
    80006888:	00989bb7          	lui	s7,0x989
    8000688c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006890:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006894:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006898:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000689c:	00148c9b          	addiw	s9,s1,1
    800068a0:	02500793          	li	a5,37
    800068a4:	01998933          	add	s2,s3,s9
    800068a8:	38f51263          	bne	a0,a5,80006c2c <__printf+0x434>
    800068ac:	00094783          	lbu	a5,0(s2)
    800068b0:	00078c9b          	sext.w	s9,a5
    800068b4:	1e078263          	beqz	a5,80006a98 <__printf+0x2a0>
    800068b8:	0024849b          	addiw	s1,s1,2
    800068bc:	07000713          	li	a4,112
    800068c0:	00998933          	add	s2,s3,s1
    800068c4:	38e78a63          	beq	a5,a4,80006c58 <__printf+0x460>
    800068c8:	20f76863          	bltu	a4,a5,80006ad8 <__printf+0x2e0>
    800068cc:	42a78863          	beq	a5,a0,80006cfc <__printf+0x504>
    800068d0:	06400713          	li	a4,100
    800068d4:	40e79663          	bne	a5,a4,80006ce0 <__printf+0x4e8>
    800068d8:	f7843783          	ld	a5,-136(s0)
    800068dc:	0007a603          	lw	a2,0(a5)
    800068e0:	00878793          	addi	a5,a5,8
    800068e4:	f6f43c23          	sd	a5,-136(s0)
    800068e8:	42064a63          	bltz	a2,80006d1c <__printf+0x524>
    800068ec:	00a00713          	li	a4,10
    800068f0:	02e677bb          	remuw	a5,a2,a4
    800068f4:	00002d97          	auipc	s11,0x2
    800068f8:	b64d8d93          	addi	s11,s11,-1180 # 80008458 <digits>
    800068fc:	00900593          	li	a1,9
    80006900:	0006051b          	sext.w	a0,a2
    80006904:	00000c93          	li	s9,0
    80006908:	02079793          	slli	a5,a5,0x20
    8000690c:	0207d793          	srli	a5,a5,0x20
    80006910:	00fd87b3          	add	a5,s11,a5
    80006914:	0007c783          	lbu	a5,0(a5)
    80006918:	02e656bb          	divuw	a3,a2,a4
    8000691c:	f8f40023          	sb	a5,-128(s0)
    80006920:	14c5d863          	bge	a1,a2,80006a70 <__printf+0x278>
    80006924:	06300593          	li	a1,99
    80006928:	00100c93          	li	s9,1
    8000692c:	02e6f7bb          	remuw	a5,a3,a4
    80006930:	02079793          	slli	a5,a5,0x20
    80006934:	0207d793          	srli	a5,a5,0x20
    80006938:	00fd87b3          	add	a5,s11,a5
    8000693c:	0007c783          	lbu	a5,0(a5)
    80006940:	02e6d73b          	divuw	a4,a3,a4
    80006944:	f8f400a3          	sb	a5,-127(s0)
    80006948:	12a5f463          	bgeu	a1,a0,80006a70 <__printf+0x278>
    8000694c:	00a00693          	li	a3,10
    80006950:	00900593          	li	a1,9
    80006954:	02d777bb          	remuw	a5,a4,a3
    80006958:	02079793          	slli	a5,a5,0x20
    8000695c:	0207d793          	srli	a5,a5,0x20
    80006960:	00fd87b3          	add	a5,s11,a5
    80006964:	0007c503          	lbu	a0,0(a5)
    80006968:	02d757bb          	divuw	a5,a4,a3
    8000696c:	f8a40123          	sb	a0,-126(s0)
    80006970:	48e5f263          	bgeu	a1,a4,80006df4 <__printf+0x5fc>
    80006974:	06300513          	li	a0,99
    80006978:	02d7f5bb          	remuw	a1,a5,a3
    8000697c:	02059593          	slli	a1,a1,0x20
    80006980:	0205d593          	srli	a1,a1,0x20
    80006984:	00bd85b3          	add	a1,s11,a1
    80006988:	0005c583          	lbu	a1,0(a1)
    8000698c:	02d7d7bb          	divuw	a5,a5,a3
    80006990:	f8b401a3          	sb	a1,-125(s0)
    80006994:	48e57263          	bgeu	a0,a4,80006e18 <__printf+0x620>
    80006998:	3e700513          	li	a0,999
    8000699c:	02d7f5bb          	remuw	a1,a5,a3
    800069a0:	02059593          	slli	a1,a1,0x20
    800069a4:	0205d593          	srli	a1,a1,0x20
    800069a8:	00bd85b3          	add	a1,s11,a1
    800069ac:	0005c583          	lbu	a1,0(a1)
    800069b0:	02d7d7bb          	divuw	a5,a5,a3
    800069b4:	f8b40223          	sb	a1,-124(s0)
    800069b8:	46e57663          	bgeu	a0,a4,80006e24 <__printf+0x62c>
    800069bc:	02d7f5bb          	remuw	a1,a5,a3
    800069c0:	02059593          	slli	a1,a1,0x20
    800069c4:	0205d593          	srli	a1,a1,0x20
    800069c8:	00bd85b3          	add	a1,s11,a1
    800069cc:	0005c583          	lbu	a1,0(a1)
    800069d0:	02d7d7bb          	divuw	a5,a5,a3
    800069d4:	f8b402a3          	sb	a1,-123(s0)
    800069d8:	46ea7863          	bgeu	s4,a4,80006e48 <__printf+0x650>
    800069dc:	02d7f5bb          	remuw	a1,a5,a3
    800069e0:	02059593          	slli	a1,a1,0x20
    800069e4:	0205d593          	srli	a1,a1,0x20
    800069e8:	00bd85b3          	add	a1,s11,a1
    800069ec:	0005c583          	lbu	a1,0(a1)
    800069f0:	02d7d7bb          	divuw	a5,a5,a3
    800069f4:	f8b40323          	sb	a1,-122(s0)
    800069f8:	3eeaf863          	bgeu	s5,a4,80006de8 <__printf+0x5f0>
    800069fc:	02d7f5bb          	remuw	a1,a5,a3
    80006a00:	02059593          	slli	a1,a1,0x20
    80006a04:	0205d593          	srli	a1,a1,0x20
    80006a08:	00bd85b3          	add	a1,s11,a1
    80006a0c:	0005c583          	lbu	a1,0(a1)
    80006a10:	02d7d7bb          	divuw	a5,a5,a3
    80006a14:	f8b403a3          	sb	a1,-121(s0)
    80006a18:	42eb7e63          	bgeu	s6,a4,80006e54 <__printf+0x65c>
    80006a1c:	02d7f5bb          	remuw	a1,a5,a3
    80006a20:	02059593          	slli	a1,a1,0x20
    80006a24:	0205d593          	srli	a1,a1,0x20
    80006a28:	00bd85b3          	add	a1,s11,a1
    80006a2c:	0005c583          	lbu	a1,0(a1)
    80006a30:	02d7d7bb          	divuw	a5,a5,a3
    80006a34:	f8b40423          	sb	a1,-120(s0)
    80006a38:	42ebfc63          	bgeu	s7,a4,80006e70 <__printf+0x678>
    80006a3c:	02079793          	slli	a5,a5,0x20
    80006a40:	0207d793          	srli	a5,a5,0x20
    80006a44:	00fd8db3          	add	s11,s11,a5
    80006a48:	000dc703          	lbu	a4,0(s11)
    80006a4c:	00a00793          	li	a5,10
    80006a50:	00900c93          	li	s9,9
    80006a54:	f8e404a3          	sb	a4,-119(s0)
    80006a58:	00065c63          	bgez	a2,80006a70 <__printf+0x278>
    80006a5c:	f9040713          	addi	a4,s0,-112
    80006a60:	00f70733          	add	a4,a4,a5
    80006a64:	02d00693          	li	a3,45
    80006a68:	fed70823          	sb	a3,-16(a4)
    80006a6c:	00078c93          	mv	s9,a5
    80006a70:	f8040793          	addi	a5,s0,-128
    80006a74:	01978cb3          	add	s9,a5,s9
    80006a78:	f7f40d13          	addi	s10,s0,-129
    80006a7c:	000cc503          	lbu	a0,0(s9)
    80006a80:	fffc8c93          	addi	s9,s9,-1
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	b90080e7          	jalr	-1136(ra) # 80006614 <consputc>
    80006a8c:	ffac98e3          	bne	s9,s10,80006a7c <__printf+0x284>
    80006a90:	00094503          	lbu	a0,0(s2)
    80006a94:	e00514e3          	bnez	a0,8000689c <__printf+0xa4>
    80006a98:	1a0c1663          	bnez	s8,80006c44 <__printf+0x44c>
    80006a9c:	08813083          	ld	ra,136(sp)
    80006aa0:	08013403          	ld	s0,128(sp)
    80006aa4:	07813483          	ld	s1,120(sp)
    80006aa8:	07013903          	ld	s2,112(sp)
    80006aac:	06813983          	ld	s3,104(sp)
    80006ab0:	06013a03          	ld	s4,96(sp)
    80006ab4:	05813a83          	ld	s5,88(sp)
    80006ab8:	05013b03          	ld	s6,80(sp)
    80006abc:	04813b83          	ld	s7,72(sp)
    80006ac0:	04013c03          	ld	s8,64(sp)
    80006ac4:	03813c83          	ld	s9,56(sp)
    80006ac8:	03013d03          	ld	s10,48(sp)
    80006acc:	02813d83          	ld	s11,40(sp)
    80006ad0:	0d010113          	addi	sp,sp,208
    80006ad4:	00008067          	ret
    80006ad8:	07300713          	li	a4,115
    80006adc:	1ce78a63          	beq	a5,a4,80006cb0 <__printf+0x4b8>
    80006ae0:	07800713          	li	a4,120
    80006ae4:	1ee79e63          	bne	a5,a4,80006ce0 <__printf+0x4e8>
    80006ae8:	f7843783          	ld	a5,-136(s0)
    80006aec:	0007a703          	lw	a4,0(a5)
    80006af0:	00878793          	addi	a5,a5,8
    80006af4:	f6f43c23          	sd	a5,-136(s0)
    80006af8:	28074263          	bltz	a4,80006d7c <__printf+0x584>
    80006afc:	00002d97          	auipc	s11,0x2
    80006b00:	95cd8d93          	addi	s11,s11,-1700 # 80008458 <digits>
    80006b04:	00f77793          	andi	a5,a4,15
    80006b08:	00fd87b3          	add	a5,s11,a5
    80006b0c:	0007c683          	lbu	a3,0(a5)
    80006b10:	00f00613          	li	a2,15
    80006b14:	0007079b          	sext.w	a5,a4
    80006b18:	f8d40023          	sb	a3,-128(s0)
    80006b1c:	0047559b          	srliw	a1,a4,0x4
    80006b20:	0047569b          	srliw	a3,a4,0x4
    80006b24:	00000c93          	li	s9,0
    80006b28:	0ee65063          	bge	a2,a4,80006c08 <__printf+0x410>
    80006b2c:	00f6f693          	andi	a3,a3,15
    80006b30:	00dd86b3          	add	a3,s11,a3
    80006b34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006b38:	0087d79b          	srliw	a5,a5,0x8
    80006b3c:	00100c93          	li	s9,1
    80006b40:	f8d400a3          	sb	a3,-127(s0)
    80006b44:	0cb67263          	bgeu	a2,a1,80006c08 <__printf+0x410>
    80006b48:	00f7f693          	andi	a3,a5,15
    80006b4c:	00dd86b3          	add	a3,s11,a3
    80006b50:	0006c583          	lbu	a1,0(a3)
    80006b54:	00f00613          	li	a2,15
    80006b58:	0047d69b          	srliw	a3,a5,0x4
    80006b5c:	f8b40123          	sb	a1,-126(s0)
    80006b60:	0047d593          	srli	a1,a5,0x4
    80006b64:	28f67e63          	bgeu	a2,a5,80006e00 <__printf+0x608>
    80006b68:	00f6f693          	andi	a3,a3,15
    80006b6c:	00dd86b3          	add	a3,s11,a3
    80006b70:	0006c503          	lbu	a0,0(a3)
    80006b74:	0087d813          	srli	a6,a5,0x8
    80006b78:	0087d69b          	srliw	a3,a5,0x8
    80006b7c:	f8a401a3          	sb	a0,-125(s0)
    80006b80:	28b67663          	bgeu	a2,a1,80006e0c <__printf+0x614>
    80006b84:	00f6f693          	andi	a3,a3,15
    80006b88:	00dd86b3          	add	a3,s11,a3
    80006b8c:	0006c583          	lbu	a1,0(a3)
    80006b90:	00c7d513          	srli	a0,a5,0xc
    80006b94:	00c7d69b          	srliw	a3,a5,0xc
    80006b98:	f8b40223          	sb	a1,-124(s0)
    80006b9c:	29067a63          	bgeu	a2,a6,80006e30 <__printf+0x638>
    80006ba0:	00f6f693          	andi	a3,a3,15
    80006ba4:	00dd86b3          	add	a3,s11,a3
    80006ba8:	0006c583          	lbu	a1,0(a3)
    80006bac:	0107d813          	srli	a6,a5,0x10
    80006bb0:	0107d69b          	srliw	a3,a5,0x10
    80006bb4:	f8b402a3          	sb	a1,-123(s0)
    80006bb8:	28a67263          	bgeu	a2,a0,80006e3c <__printf+0x644>
    80006bbc:	00f6f693          	andi	a3,a3,15
    80006bc0:	00dd86b3          	add	a3,s11,a3
    80006bc4:	0006c683          	lbu	a3,0(a3)
    80006bc8:	0147d79b          	srliw	a5,a5,0x14
    80006bcc:	f8d40323          	sb	a3,-122(s0)
    80006bd0:	21067663          	bgeu	a2,a6,80006ddc <__printf+0x5e4>
    80006bd4:	02079793          	slli	a5,a5,0x20
    80006bd8:	0207d793          	srli	a5,a5,0x20
    80006bdc:	00fd8db3          	add	s11,s11,a5
    80006be0:	000dc683          	lbu	a3,0(s11)
    80006be4:	00800793          	li	a5,8
    80006be8:	00700c93          	li	s9,7
    80006bec:	f8d403a3          	sb	a3,-121(s0)
    80006bf0:	00075c63          	bgez	a4,80006c08 <__printf+0x410>
    80006bf4:	f9040713          	addi	a4,s0,-112
    80006bf8:	00f70733          	add	a4,a4,a5
    80006bfc:	02d00693          	li	a3,45
    80006c00:	fed70823          	sb	a3,-16(a4)
    80006c04:	00078c93          	mv	s9,a5
    80006c08:	f8040793          	addi	a5,s0,-128
    80006c0c:	01978cb3          	add	s9,a5,s9
    80006c10:	f7f40d13          	addi	s10,s0,-129
    80006c14:	000cc503          	lbu	a0,0(s9)
    80006c18:	fffc8c93          	addi	s9,s9,-1
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	9f8080e7          	jalr	-1544(ra) # 80006614 <consputc>
    80006c24:	ff9d18e3          	bne	s10,s9,80006c14 <__printf+0x41c>
    80006c28:	0100006f          	j	80006c38 <__printf+0x440>
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	9e8080e7          	jalr	-1560(ra) # 80006614 <consputc>
    80006c34:	000c8493          	mv	s1,s9
    80006c38:	00094503          	lbu	a0,0(s2)
    80006c3c:	c60510e3          	bnez	a0,8000689c <__printf+0xa4>
    80006c40:	e40c0ee3          	beqz	s8,80006a9c <__printf+0x2a4>
    80006c44:	00005517          	auipc	a0,0x5
    80006c48:	bcc50513          	addi	a0,a0,-1076 # 8000b810 <pr>
    80006c4c:	00001097          	auipc	ra,0x1
    80006c50:	94c080e7          	jalr	-1716(ra) # 80007598 <release>
    80006c54:	e49ff06f          	j	80006a9c <__printf+0x2a4>
    80006c58:	f7843783          	ld	a5,-136(s0)
    80006c5c:	03000513          	li	a0,48
    80006c60:	01000d13          	li	s10,16
    80006c64:	00878713          	addi	a4,a5,8
    80006c68:	0007bc83          	ld	s9,0(a5)
    80006c6c:	f6e43c23          	sd	a4,-136(s0)
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	9a4080e7          	jalr	-1628(ra) # 80006614 <consputc>
    80006c78:	07800513          	li	a0,120
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	998080e7          	jalr	-1640(ra) # 80006614 <consputc>
    80006c84:	00001d97          	auipc	s11,0x1
    80006c88:	7d4d8d93          	addi	s11,s11,2004 # 80008458 <digits>
    80006c8c:	03ccd793          	srli	a5,s9,0x3c
    80006c90:	00fd87b3          	add	a5,s11,a5
    80006c94:	0007c503          	lbu	a0,0(a5)
    80006c98:	fffd0d1b          	addiw	s10,s10,-1
    80006c9c:	004c9c93          	slli	s9,s9,0x4
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	974080e7          	jalr	-1676(ra) # 80006614 <consputc>
    80006ca8:	fe0d12e3          	bnez	s10,80006c8c <__printf+0x494>
    80006cac:	f8dff06f          	j	80006c38 <__printf+0x440>
    80006cb0:	f7843783          	ld	a5,-136(s0)
    80006cb4:	0007bc83          	ld	s9,0(a5)
    80006cb8:	00878793          	addi	a5,a5,8
    80006cbc:	f6f43c23          	sd	a5,-136(s0)
    80006cc0:	000c9a63          	bnez	s9,80006cd4 <__printf+0x4dc>
    80006cc4:	1080006f          	j	80006dcc <__printf+0x5d4>
    80006cc8:	001c8c93          	addi	s9,s9,1
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	948080e7          	jalr	-1720(ra) # 80006614 <consputc>
    80006cd4:	000cc503          	lbu	a0,0(s9)
    80006cd8:	fe0518e3          	bnez	a0,80006cc8 <__printf+0x4d0>
    80006cdc:	f5dff06f          	j	80006c38 <__printf+0x440>
    80006ce0:	02500513          	li	a0,37
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	930080e7          	jalr	-1744(ra) # 80006614 <consputc>
    80006cec:	000c8513          	mv	a0,s9
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	924080e7          	jalr	-1756(ra) # 80006614 <consputc>
    80006cf8:	f41ff06f          	j	80006c38 <__printf+0x440>
    80006cfc:	02500513          	li	a0,37
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	914080e7          	jalr	-1772(ra) # 80006614 <consputc>
    80006d08:	f31ff06f          	j	80006c38 <__printf+0x440>
    80006d0c:	00030513          	mv	a0,t1
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	7bc080e7          	jalr	1980(ra) # 800074cc <acquire>
    80006d18:	b4dff06f          	j	80006864 <__printf+0x6c>
    80006d1c:	40c0053b          	negw	a0,a2
    80006d20:	00a00713          	li	a4,10
    80006d24:	02e576bb          	remuw	a3,a0,a4
    80006d28:	00001d97          	auipc	s11,0x1
    80006d2c:	730d8d93          	addi	s11,s11,1840 # 80008458 <digits>
    80006d30:	ff700593          	li	a1,-9
    80006d34:	02069693          	slli	a3,a3,0x20
    80006d38:	0206d693          	srli	a3,a3,0x20
    80006d3c:	00dd86b3          	add	a3,s11,a3
    80006d40:	0006c683          	lbu	a3,0(a3)
    80006d44:	02e557bb          	divuw	a5,a0,a4
    80006d48:	f8d40023          	sb	a3,-128(s0)
    80006d4c:	10b65e63          	bge	a2,a1,80006e68 <__printf+0x670>
    80006d50:	06300593          	li	a1,99
    80006d54:	02e7f6bb          	remuw	a3,a5,a4
    80006d58:	02069693          	slli	a3,a3,0x20
    80006d5c:	0206d693          	srli	a3,a3,0x20
    80006d60:	00dd86b3          	add	a3,s11,a3
    80006d64:	0006c683          	lbu	a3,0(a3)
    80006d68:	02e7d73b          	divuw	a4,a5,a4
    80006d6c:	00200793          	li	a5,2
    80006d70:	f8d400a3          	sb	a3,-127(s0)
    80006d74:	bca5ece3          	bltu	a1,a0,8000694c <__printf+0x154>
    80006d78:	ce5ff06f          	j	80006a5c <__printf+0x264>
    80006d7c:	40e007bb          	negw	a5,a4
    80006d80:	00001d97          	auipc	s11,0x1
    80006d84:	6d8d8d93          	addi	s11,s11,1752 # 80008458 <digits>
    80006d88:	00f7f693          	andi	a3,a5,15
    80006d8c:	00dd86b3          	add	a3,s11,a3
    80006d90:	0006c583          	lbu	a1,0(a3)
    80006d94:	ff100613          	li	a2,-15
    80006d98:	0047d69b          	srliw	a3,a5,0x4
    80006d9c:	f8b40023          	sb	a1,-128(s0)
    80006da0:	0047d59b          	srliw	a1,a5,0x4
    80006da4:	0ac75e63          	bge	a4,a2,80006e60 <__printf+0x668>
    80006da8:	00f6f693          	andi	a3,a3,15
    80006dac:	00dd86b3          	add	a3,s11,a3
    80006db0:	0006c603          	lbu	a2,0(a3)
    80006db4:	00f00693          	li	a3,15
    80006db8:	0087d79b          	srliw	a5,a5,0x8
    80006dbc:	f8c400a3          	sb	a2,-127(s0)
    80006dc0:	d8b6e4e3          	bltu	a3,a1,80006b48 <__printf+0x350>
    80006dc4:	00200793          	li	a5,2
    80006dc8:	e2dff06f          	j	80006bf4 <__printf+0x3fc>
    80006dcc:	00001c97          	auipc	s9,0x1
    80006dd0:	66cc8c93          	addi	s9,s9,1644 # 80008438 <CONSOLE_STATUS+0x428>
    80006dd4:	02800513          	li	a0,40
    80006dd8:	ef1ff06f          	j	80006cc8 <__printf+0x4d0>
    80006ddc:	00700793          	li	a5,7
    80006de0:	00600c93          	li	s9,6
    80006de4:	e0dff06f          	j	80006bf0 <__printf+0x3f8>
    80006de8:	00700793          	li	a5,7
    80006dec:	00600c93          	li	s9,6
    80006df0:	c69ff06f          	j	80006a58 <__printf+0x260>
    80006df4:	00300793          	li	a5,3
    80006df8:	00200c93          	li	s9,2
    80006dfc:	c5dff06f          	j	80006a58 <__printf+0x260>
    80006e00:	00300793          	li	a5,3
    80006e04:	00200c93          	li	s9,2
    80006e08:	de9ff06f          	j	80006bf0 <__printf+0x3f8>
    80006e0c:	00400793          	li	a5,4
    80006e10:	00300c93          	li	s9,3
    80006e14:	dddff06f          	j	80006bf0 <__printf+0x3f8>
    80006e18:	00400793          	li	a5,4
    80006e1c:	00300c93          	li	s9,3
    80006e20:	c39ff06f          	j	80006a58 <__printf+0x260>
    80006e24:	00500793          	li	a5,5
    80006e28:	00400c93          	li	s9,4
    80006e2c:	c2dff06f          	j	80006a58 <__printf+0x260>
    80006e30:	00500793          	li	a5,5
    80006e34:	00400c93          	li	s9,4
    80006e38:	db9ff06f          	j	80006bf0 <__printf+0x3f8>
    80006e3c:	00600793          	li	a5,6
    80006e40:	00500c93          	li	s9,5
    80006e44:	dadff06f          	j	80006bf0 <__printf+0x3f8>
    80006e48:	00600793          	li	a5,6
    80006e4c:	00500c93          	li	s9,5
    80006e50:	c09ff06f          	j	80006a58 <__printf+0x260>
    80006e54:	00800793          	li	a5,8
    80006e58:	00700c93          	li	s9,7
    80006e5c:	bfdff06f          	j	80006a58 <__printf+0x260>
    80006e60:	00100793          	li	a5,1
    80006e64:	d91ff06f          	j	80006bf4 <__printf+0x3fc>
    80006e68:	00100793          	li	a5,1
    80006e6c:	bf1ff06f          	j	80006a5c <__printf+0x264>
    80006e70:	00900793          	li	a5,9
    80006e74:	00800c93          	li	s9,8
    80006e78:	be1ff06f          	j	80006a58 <__printf+0x260>
    80006e7c:	00001517          	auipc	a0,0x1
    80006e80:	5c450513          	addi	a0,a0,1476 # 80008440 <CONSOLE_STATUS+0x430>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	918080e7          	jalr	-1768(ra) # 8000679c <panic>

0000000080006e8c <printfinit>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00913423          	sd	s1,8(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00005497          	auipc	s1,0x5
    80006ea4:	97048493          	addi	s1,s1,-1680 # 8000b810 <pr>
    80006ea8:	00048513          	mv	a0,s1
    80006eac:	00001597          	auipc	a1,0x1
    80006eb0:	5a458593          	addi	a1,a1,1444 # 80008450 <CONSOLE_STATUS+0x440>
    80006eb4:	00000097          	auipc	ra,0x0
    80006eb8:	5f4080e7          	jalr	1524(ra) # 800074a8 <initlock>
    80006ebc:	01813083          	ld	ra,24(sp)
    80006ec0:	01013403          	ld	s0,16(sp)
    80006ec4:	0004ac23          	sw	zero,24(s1)
    80006ec8:	00813483          	ld	s1,8(sp)
    80006ecc:	02010113          	addi	sp,sp,32
    80006ed0:	00008067          	ret

0000000080006ed4 <uartinit>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813423          	sd	s0,8(sp)
    80006edc:	01010413          	addi	s0,sp,16
    80006ee0:	100007b7          	lui	a5,0x10000
    80006ee4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006ee8:	f8000713          	li	a4,-128
    80006eec:	00e781a3          	sb	a4,3(a5)
    80006ef0:	00300713          	li	a4,3
    80006ef4:	00e78023          	sb	a4,0(a5)
    80006ef8:	000780a3          	sb	zero,1(a5)
    80006efc:	00e781a3          	sb	a4,3(a5)
    80006f00:	00700693          	li	a3,7
    80006f04:	00d78123          	sb	a3,2(a5)
    80006f08:	00e780a3          	sb	a4,1(a5)
    80006f0c:	00813403          	ld	s0,8(sp)
    80006f10:	01010113          	addi	sp,sp,16
    80006f14:	00008067          	ret

0000000080006f18 <uartputc>:
    80006f18:	00003797          	auipc	a5,0x3
    80006f1c:	6207a783          	lw	a5,1568(a5) # 8000a538 <panicked>
    80006f20:	00078463          	beqz	a5,80006f28 <uartputc+0x10>
    80006f24:	0000006f          	j	80006f24 <uartputc+0xc>
    80006f28:	fd010113          	addi	sp,sp,-48
    80006f2c:	02813023          	sd	s0,32(sp)
    80006f30:	00913c23          	sd	s1,24(sp)
    80006f34:	01213823          	sd	s2,16(sp)
    80006f38:	01313423          	sd	s3,8(sp)
    80006f3c:	02113423          	sd	ra,40(sp)
    80006f40:	03010413          	addi	s0,sp,48
    80006f44:	00003917          	auipc	s2,0x3
    80006f48:	5fc90913          	addi	s2,s2,1532 # 8000a540 <uart_tx_r>
    80006f4c:	00093783          	ld	a5,0(s2)
    80006f50:	00003497          	auipc	s1,0x3
    80006f54:	5f848493          	addi	s1,s1,1528 # 8000a548 <uart_tx_w>
    80006f58:	0004b703          	ld	a4,0(s1)
    80006f5c:	02078693          	addi	a3,a5,32
    80006f60:	00050993          	mv	s3,a0
    80006f64:	02e69c63          	bne	a3,a4,80006f9c <uartputc+0x84>
    80006f68:	00001097          	auipc	ra,0x1
    80006f6c:	834080e7          	jalr	-1996(ra) # 8000779c <push_on>
    80006f70:	00093783          	ld	a5,0(s2)
    80006f74:	0004b703          	ld	a4,0(s1)
    80006f78:	02078793          	addi	a5,a5,32
    80006f7c:	00e79463          	bne	a5,a4,80006f84 <uartputc+0x6c>
    80006f80:	0000006f          	j	80006f80 <uartputc+0x68>
    80006f84:	00001097          	auipc	ra,0x1
    80006f88:	88c080e7          	jalr	-1908(ra) # 80007810 <pop_on>
    80006f8c:	00093783          	ld	a5,0(s2)
    80006f90:	0004b703          	ld	a4,0(s1)
    80006f94:	02078693          	addi	a3,a5,32
    80006f98:	fce688e3          	beq	a3,a4,80006f68 <uartputc+0x50>
    80006f9c:	01f77693          	andi	a3,a4,31
    80006fa0:	00005597          	auipc	a1,0x5
    80006fa4:	89058593          	addi	a1,a1,-1904 # 8000b830 <uart_tx_buf>
    80006fa8:	00d586b3          	add	a3,a1,a3
    80006fac:	00170713          	addi	a4,a4,1
    80006fb0:	01368023          	sb	s3,0(a3)
    80006fb4:	00e4b023          	sd	a4,0(s1)
    80006fb8:	10000637          	lui	a2,0x10000
    80006fbc:	02f71063          	bne	a4,a5,80006fdc <uartputc+0xc4>
    80006fc0:	0340006f          	j	80006ff4 <uartputc+0xdc>
    80006fc4:	00074703          	lbu	a4,0(a4)
    80006fc8:	00f93023          	sd	a5,0(s2)
    80006fcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006fd0:	00093783          	ld	a5,0(s2)
    80006fd4:	0004b703          	ld	a4,0(s1)
    80006fd8:	00f70e63          	beq	a4,a5,80006ff4 <uartputc+0xdc>
    80006fdc:	00564683          	lbu	a3,5(a2)
    80006fe0:	01f7f713          	andi	a4,a5,31
    80006fe4:	00e58733          	add	a4,a1,a4
    80006fe8:	0206f693          	andi	a3,a3,32
    80006fec:	00178793          	addi	a5,a5,1
    80006ff0:	fc069ae3          	bnez	a3,80006fc4 <uartputc+0xac>
    80006ff4:	02813083          	ld	ra,40(sp)
    80006ff8:	02013403          	ld	s0,32(sp)
    80006ffc:	01813483          	ld	s1,24(sp)
    80007000:	01013903          	ld	s2,16(sp)
    80007004:	00813983          	ld	s3,8(sp)
    80007008:	03010113          	addi	sp,sp,48
    8000700c:	00008067          	ret

0000000080007010 <uartputc_sync>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813423          	sd	s0,8(sp)
    80007018:	01010413          	addi	s0,sp,16
    8000701c:	00003717          	auipc	a4,0x3
    80007020:	51c72703          	lw	a4,1308(a4) # 8000a538 <panicked>
    80007024:	02071663          	bnez	a4,80007050 <uartputc_sync+0x40>
    80007028:	00050793          	mv	a5,a0
    8000702c:	100006b7          	lui	a3,0x10000
    80007030:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007034:	02077713          	andi	a4,a4,32
    80007038:	fe070ce3          	beqz	a4,80007030 <uartputc_sync+0x20>
    8000703c:	0ff7f793          	andi	a5,a5,255
    80007040:	00f68023          	sb	a5,0(a3)
    80007044:	00813403          	ld	s0,8(sp)
    80007048:	01010113          	addi	sp,sp,16
    8000704c:	00008067          	ret
    80007050:	0000006f          	j	80007050 <uartputc_sync+0x40>

0000000080007054 <uartstart>:
    80007054:	ff010113          	addi	sp,sp,-16
    80007058:	00813423          	sd	s0,8(sp)
    8000705c:	01010413          	addi	s0,sp,16
    80007060:	00003617          	auipc	a2,0x3
    80007064:	4e060613          	addi	a2,a2,1248 # 8000a540 <uart_tx_r>
    80007068:	00003517          	auipc	a0,0x3
    8000706c:	4e050513          	addi	a0,a0,1248 # 8000a548 <uart_tx_w>
    80007070:	00063783          	ld	a5,0(a2)
    80007074:	00053703          	ld	a4,0(a0)
    80007078:	04f70263          	beq	a4,a5,800070bc <uartstart+0x68>
    8000707c:	100005b7          	lui	a1,0x10000
    80007080:	00004817          	auipc	a6,0x4
    80007084:	7b080813          	addi	a6,a6,1968 # 8000b830 <uart_tx_buf>
    80007088:	01c0006f          	j	800070a4 <uartstart+0x50>
    8000708c:	0006c703          	lbu	a4,0(a3)
    80007090:	00f63023          	sd	a5,0(a2)
    80007094:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007098:	00063783          	ld	a5,0(a2)
    8000709c:	00053703          	ld	a4,0(a0)
    800070a0:	00f70e63          	beq	a4,a5,800070bc <uartstart+0x68>
    800070a4:	01f7f713          	andi	a4,a5,31
    800070a8:	00e806b3          	add	a3,a6,a4
    800070ac:	0055c703          	lbu	a4,5(a1)
    800070b0:	00178793          	addi	a5,a5,1
    800070b4:	02077713          	andi	a4,a4,32
    800070b8:	fc071ae3          	bnez	a4,8000708c <uartstart+0x38>
    800070bc:	00813403          	ld	s0,8(sp)
    800070c0:	01010113          	addi	sp,sp,16
    800070c4:	00008067          	ret

00000000800070c8 <uartgetc>:
    800070c8:	ff010113          	addi	sp,sp,-16
    800070cc:	00813423          	sd	s0,8(sp)
    800070d0:	01010413          	addi	s0,sp,16
    800070d4:	10000737          	lui	a4,0x10000
    800070d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800070dc:	0017f793          	andi	a5,a5,1
    800070e0:	00078c63          	beqz	a5,800070f8 <uartgetc+0x30>
    800070e4:	00074503          	lbu	a0,0(a4)
    800070e8:	0ff57513          	andi	a0,a0,255
    800070ec:	00813403          	ld	s0,8(sp)
    800070f0:	01010113          	addi	sp,sp,16
    800070f4:	00008067          	ret
    800070f8:	fff00513          	li	a0,-1
    800070fc:	ff1ff06f          	j	800070ec <uartgetc+0x24>

0000000080007100 <uartintr>:
    80007100:	100007b7          	lui	a5,0x10000
    80007104:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007108:	0017f793          	andi	a5,a5,1
    8000710c:	0a078463          	beqz	a5,800071b4 <uartintr+0xb4>
    80007110:	fe010113          	addi	sp,sp,-32
    80007114:	00813823          	sd	s0,16(sp)
    80007118:	00913423          	sd	s1,8(sp)
    8000711c:	00113c23          	sd	ra,24(sp)
    80007120:	02010413          	addi	s0,sp,32
    80007124:	100004b7          	lui	s1,0x10000
    80007128:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000712c:	0ff57513          	andi	a0,a0,255
    80007130:	fffff097          	auipc	ra,0xfffff
    80007134:	534080e7          	jalr	1332(ra) # 80006664 <consoleintr>
    80007138:	0054c783          	lbu	a5,5(s1)
    8000713c:	0017f793          	andi	a5,a5,1
    80007140:	fe0794e3          	bnez	a5,80007128 <uartintr+0x28>
    80007144:	00003617          	auipc	a2,0x3
    80007148:	3fc60613          	addi	a2,a2,1020 # 8000a540 <uart_tx_r>
    8000714c:	00003517          	auipc	a0,0x3
    80007150:	3fc50513          	addi	a0,a0,1020 # 8000a548 <uart_tx_w>
    80007154:	00063783          	ld	a5,0(a2)
    80007158:	00053703          	ld	a4,0(a0)
    8000715c:	04f70263          	beq	a4,a5,800071a0 <uartintr+0xa0>
    80007160:	100005b7          	lui	a1,0x10000
    80007164:	00004817          	auipc	a6,0x4
    80007168:	6cc80813          	addi	a6,a6,1740 # 8000b830 <uart_tx_buf>
    8000716c:	01c0006f          	j	80007188 <uartintr+0x88>
    80007170:	0006c703          	lbu	a4,0(a3)
    80007174:	00f63023          	sd	a5,0(a2)
    80007178:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000717c:	00063783          	ld	a5,0(a2)
    80007180:	00053703          	ld	a4,0(a0)
    80007184:	00f70e63          	beq	a4,a5,800071a0 <uartintr+0xa0>
    80007188:	01f7f713          	andi	a4,a5,31
    8000718c:	00e806b3          	add	a3,a6,a4
    80007190:	0055c703          	lbu	a4,5(a1)
    80007194:	00178793          	addi	a5,a5,1
    80007198:	02077713          	andi	a4,a4,32
    8000719c:	fc071ae3          	bnez	a4,80007170 <uartintr+0x70>
    800071a0:	01813083          	ld	ra,24(sp)
    800071a4:	01013403          	ld	s0,16(sp)
    800071a8:	00813483          	ld	s1,8(sp)
    800071ac:	02010113          	addi	sp,sp,32
    800071b0:	00008067          	ret
    800071b4:	00003617          	auipc	a2,0x3
    800071b8:	38c60613          	addi	a2,a2,908 # 8000a540 <uart_tx_r>
    800071bc:	00003517          	auipc	a0,0x3
    800071c0:	38c50513          	addi	a0,a0,908 # 8000a548 <uart_tx_w>
    800071c4:	00063783          	ld	a5,0(a2)
    800071c8:	00053703          	ld	a4,0(a0)
    800071cc:	04f70263          	beq	a4,a5,80007210 <uartintr+0x110>
    800071d0:	100005b7          	lui	a1,0x10000
    800071d4:	00004817          	auipc	a6,0x4
    800071d8:	65c80813          	addi	a6,a6,1628 # 8000b830 <uart_tx_buf>
    800071dc:	01c0006f          	j	800071f8 <uartintr+0xf8>
    800071e0:	0006c703          	lbu	a4,0(a3)
    800071e4:	00f63023          	sd	a5,0(a2)
    800071e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071ec:	00063783          	ld	a5,0(a2)
    800071f0:	00053703          	ld	a4,0(a0)
    800071f4:	02f70063          	beq	a4,a5,80007214 <uartintr+0x114>
    800071f8:	01f7f713          	andi	a4,a5,31
    800071fc:	00e806b3          	add	a3,a6,a4
    80007200:	0055c703          	lbu	a4,5(a1)
    80007204:	00178793          	addi	a5,a5,1
    80007208:	02077713          	andi	a4,a4,32
    8000720c:	fc071ae3          	bnez	a4,800071e0 <uartintr+0xe0>
    80007210:	00008067          	ret
    80007214:	00008067          	ret

0000000080007218 <kinit>:
    80007218:	fc010113          	addi	sp,sp,-64
    8000721c:	02913423          	sd	s1,40(sp)
    80007220:	fffff7b7          	lui	a5,0xfffff
    80007224:	00005497          	auipc	s1,0x5
    80007228:	62b48493          	addi	s1,s1,1579 # 8000c84f <end+0xfff>
    8000722c:	02813823          	sd	s0,48(sp)
    80007230:	01313c23          	sd	s3,24(sp)
    80007234:	00f4f4b3          	and	s1,s1,a5
    80007238:	02113c23          	sd	ra,56(sp)
    8000723c:	03213023          	sd	s2,32(sp)
    80007240:	01413823          	sd	s4,16(sp)
    80007244:	01513423          	sd	s5,8(sp)
    80007248:	04010413          	addi	s0,sp,64
    8000724c:	000017b7          	lui	a5,0x1
    80007250:	01100993          	li	s3,17
    80007254:	00f487b3          	add	a5,s1,a5
    80007258:	01b99993          	slli	s3,s3,0x1b
    8000725c:	06f9e063          	bltu	s3,a5,800072bc <kinit+0xa4>
    80007260:	00004a97          	auipc	s5,0x4
    80007264:	5f0a8a93          	addi	s5,s5,1520 # 8000b850 <end>
    80007268:	0754ec63          	bltu	s1,s5,800072e0 <kinit+0xc8>
    8000726c:	0734fa63          	bgeu	s1,s3,800072e0 <kinit+0xc8>
    80007270:	00088a37          	lui	s4,0x88
    80007274:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007278:	00003917          	auipc	s2,0x3
    8000727c:	2d890913          	addi	s2,s2,728 # 8000a550 <kmem>
    80007280:	00ca1a13          	slli	s4,s4,0xc
    80007284:	0140006f          	j	80007298 <kinit+0x80>
    80007288:	000017b7          	lui	a5,0x1
    8000728c:	00f484b3          	add	s1,s1,a5
    80007290:	0554e863          	bltu	s1,s5,800072e0 <kinit+0xc8>
    80007294:	0534f663          	bgeu	s1,s3,800072e0 <kinit+0xc8>
    80007298:	00001637          	lui	a2,0x1
    8000729c:	00100593          	li	a1,1
    800072a0:	00048513          	mv	a0,s1
    800072a4:	00000097          	auipc	ra,0x0
    800072a8:	5e4080e7          	jalr	1508(ra) # 80007888 <__memset>
    800072ac:	00093783          	ld	a5,0(s2)
    800072b0:	00f4b023          	sd	a5,0(s1)
    800072b4:	00993023          	sd	s1,0(s2)
    800072b8:	fd4498e3          	bne	s1,s4,80007288 <kinit+0x70>
    800072bc:	03813083          	ld	ra,56(sp)
    800072c0:	03013403          	ld	s0,48(sp)
    800072c4:	02813483          	ld	s1,40(sp)
    800072c8:	02013903          	ld	s2,32(sp)
    800072cc:	01813983          	ld	s3,24(sp)
    800072d0:	01013a03          	ld	s4,16(sp)
    800072d4:	00813a83          	ld	s5,8(sp)
    800072d8:	04010113          	addi	sp,sp,64
    800072dc:	00008067          	ret
    800072e0:	00001517          	auipc	a0,0x1
    800072e4:	19050513          	addi	a0,a0,400 # 80008470 <digits+0x18>
    800072e8:	fffff097          	auipc	ra,0xfffff
    800072ec:	4b4080e7          	jalr	1204(ra) # 8000679c <panic>

00000000800072f0 <freerange>:
    800072f0:	fc010113          	addi	sp,sp,-64
    800072f4:	000017b7          	lui	a5,0x1
    800072f8:	02913423          	sd	s1,40(sp)
    800072fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007300:	009504b3          	add	s1,a0,s1
    80007304:	fffff537          	lui	a0,0xfffff
    80007308:	02813823          	sd	s0,48(sp)
    8000730c:	02113c23          	sd	ra,56(sp)
    80007310:	03213023          	sd	s2,32(sp)
    80007314:	01313c23          	sd	s3,24(sp)
    80007318:	01413823          	sd	s4,16(sp)
    8000731c:	01513423          	sd	s5,8(sp)
    80007320:	01613023          	sd	s6,0(sp)
    80007324:	04010413          	addi	s0,sp,64
    80007328:	00a4f4b3          	and	s1,s1,a0
    8000732c:	00f487b3          	add	a5,s1,a5
    80007330:	06f5e463          	bltu	a1,a5,80007398 <freerange+0xa8>
    80007334:	00004a97          	auipc	s5,0x4
    80007338:	51ca8a93          	addi	s5,s5,1308 # 8000b850 <end>
    8000733c:	0954e263          	bltu	s1,s5,800073c0 <freerange+0xd0>
    80007340:	01100993          	li	s3,17
    80007344:	01b99993          	slli	s3,s3,0x1b
    80007348:	0734fc63          	bgeu	s1,s3,800073c0 <freerange+0xd0>
    8000734c:	00058a13          	mv	s4,a1
    80007350:	00003917          	auipc	s2,0x3
    80007354:	20090913          	addi	s2,s2,512 # 8000a550 <kmem>
    80007358:	00002b37          	lui	s6,0x2
    8000735c:	0140006f          	j	80007370 <freerange+0x80>
    80007360:	000017b7          	lui	a5,0x1
    80007364:	00f484b3          	add	s1,s1,a5
    80007368:	0554ec63          	bltu	s1,s5,800073c0 <freerange+0xd0>
    8000736c:	0534fa63          	bgeu	s1,s3,800073c0 <freerange+0xd0>
    80007370:	00001637          	lui	a2,0x1
    80007374:	00100593          	li	a1,1
    80007378:	00048513          	mv	a0,s1
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	50c080e7          	jalr	1292(ra) # 80007888 <__memset>
    80007384:	00093703          	ld	a4,0(s2)
    80007388:	016487b3          	add	a5,s1,s6
    8000738c:	00e4b023          	sd	a4,0(s1)
    80007390:	00993023          	sd	s1,0(s2)
    80007394:	fcfa76e3          	bgeu	s4,a5,80007360 <freerange+0x70>
    80007398:	03813083          	ld	ra,56(sp)
    8000739c:	03013403          	ld	s0,48(sp)
    800073a0:	02813483          	ld	s1,40(sp)
    800073a4:	02013903          	ld	s2,32(sp)
    800073a8:	01813983          	ld	s3,24(sp)
    800073ac:	01013a03          	ld	s4,16(sp)
    800073b0:	00813a83          	ld	s5,8(sp)
    800073b4:	00013b03          	ld	s6,0(sp)
    800073b8:	04010113          	addi	sp,sp,64
    800073bc:	00008067          	ret
    800073c0:	00001517          	auipc	a0,0x1
    800073c4:	0b050513          	addi	a0,a0,176 # 80008470 <digits+0x18>
    800073c8:	fffff097          	auipc	ra,0xfffff
    800073cc:	3d4080e7          	jalr	980(ra) # 8000679c <panic>

00000000800073d0 <kfree>:
    800073d0:	fe010113          	addi	sp,sp,-32
    800073d4:	00813823          	sd	s0,16(sp)
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	00913423          	sd	s1,8(sp)
    800073e0:	02010413          	addi	s0,sp,32
    800073e4:	03451793          	slli	a5,a0,0x34
    800073e8:	04079c63          	bnez	a5,80007440 <kfree+0x70>
    800073ec:	00004797          	auipc	a5,0x4
    800073f0:	46478793          	addi	a5,a5,1124 # 8000b850 <end>
    800073f4:	00050493          	mv	s1,a0
    800073f8:	04f56463          	bltu	a0,a5,80007440 <kfree+0x70>
    800073fc:	01100793          	li	a5,17
    80007400:	01b79793          	slli	a5,a5,0x1b
    80007404:	02f57e63          	bgeu	a0,a5,80007440 <kfree+0x70>
    80007408:	00001637          	lui	a2,0x1
    8000740c:	00100593          	li	a1,1
    80007410:	00000097          	auipc	ra,0x0
    80007414:	478080e7          	jalr	1144(ra) # 80007888 <__memset>
    80007418:	00003797          	auipc	a5,0x3
    8000741c:	13878793          	addi	a5,a5,312 # 8000a550 <kmem>
    80007420:	0007b703          	ld	a4,0(a5)
    80007424:	01813083          	ld	ra,24(sp)
    80007428:	01013403          	ld	s0,16(sp)
    8000742c:	00e4b023          	sd	a4,0(s1)
    80007430:	0097b023          	sd	s1,0(a5)
    80007434:	00813483          	ld	s1,8(sp)
    80007438:	02010113          	addi	sp,sp,32
    8000743c:	00008067          	ret
    80007440:	00001517          	auipc	a0,0x1
    80007444:	03050513          	addi	a0,a0,48 # 80008470 <digits+0x18>
    80007448:	fffff097          	auipc	ra,0xfffff
    8000744c:	354080e7          	jalr	852(ra) # 8000679c <panic>

0000000080007450 <kalloc>:
    80007450:	fe010113          	addi	sp,sp,-32
    80007454:	00813823          	sd	s0,16(sp)
    80007458:	00913423          	sd	s1,8(sp)
    8000745c:	00113c23          	sd	ra,24(sp)
    80007460:	02010413          	addi	s0,sp,32
    80007464:	00003797          	auipc	a5,0x3
    80007468:	0ec78793          	addi	a5,a5,236 # 8000a550 <kmem>
    8000746c:	0007b483          	ld	s1,0(a5)
    80007470:	02048063          	beqz	s1,80007490 <kalloc+0x40>
    80007474:	0004b703          	ld	a4,0(s1)
    80007478:	00001637          	lui	a2,0x1
    8000747c:	00500593          	li	a1,5
    80007480:	00048513          	mv	a0,s1
    80007484:	00e7b023          	sd	a4,0(a5)
    80007488:	00000097          	auipc	ra,0x0
    8000748c:	400080e7          	jalr	1024(ra) # 80007888 <__memset>
    80007490:	01813083          	ld	ra,24(sp)
    80007494:	01013403          	ld	s0,16(sp)
    80007498:	00048513          	mv	a0,s1
    8000749c:	00813483          	ld	s1,8(sp)
    800074a0:	02010113          	addi	sp,sp,32
    800074a4:	00008067          	ret

00000000800074a8 <initlock>:
    800074a8:	ff010113          	addi	sp,sp,-16
    800074ac:	00813423          	sd	s0,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	00813403          	ld	s0,8(sp)
    800074b8:	00b53423          	sd	a1,8(a0)
    800074bc:	00052023          	sw	zero,0(a0)
    800074c0:	00053823          	sd	zero,16(a0)
    800074c4:	01010113          	addi	sp,sp,16
    800074c8:	00008067          	ret

00000000800074cc <acquire>:
    800074cc:	fe010113          	addi	sp,sp,-32
    800074d0:	00813823          	sd	s0,16(sp)
    800074d4:	00913423          	sd	s1,8(sp)
    800074d8:	00113c23          	sd	ra,24(sp)
    800074dc:	01213023          	sd	s2,0(sp)
    800074e0:	02010413          	addi	s0,sp,32
    800074e4:	00050493          	mv	s1,a0
    800074e8:	10002973          	csrr	s2,sstatus
    800074ec:	100027f3          	csrr	a5,sstatus
    800074f0:	ffd7f793          	andi	a5,a5,-3
    800074f4:	10079073          	csrw	sstatus,a5
    800074f8:	fffff097          	auipc	ra,0xfffff
    800074fc:	8e0080e7          	jalr	-1824(ra) # 80005dd8 <mycpu>
    80007500:	07852783          	lw	a5,120(a0)
    80007504:	06078e63          	beqz	a5,80007580 <acquire+0xb4>
    80007508:	fffff097          	auipc	ra,0xfffff
    8000750c:	8d0080e7          	jalr	-1840(ra) # 80005dd8 <mycpu>
    80007510:	07852783          	lw	a5,120(a0)
    80007514:	0004a703          	lw	a4,0(s1)
    80007518:	0017879b          	addiw	a5,a5,1
    8000751c:	06f52c23          	sw	a5,120(a0)
    80007520:	04071063          	bnez	a4,80007560 <acquire+0x94>
    80007524:	00100713          	li	a4,1
    80007528:	00070793          	mv	a5,a4
    8000752c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007530:	0007879b          	sext.w	a5,a5
    80007534:	fe079ae3          	bnez	a5,80007528 <acquire+0x5c>
    80007538:	0ff0000f          	fence
    8000753c:	fffff097          	auipc	ra,0xfffff
    80007540:	89c080e7          	jalr	-1892(ra) # 80005dd8 <mycpu>
    80007544:	01813083          	ld	ra,24(sp)
    80007548:	01013403          	ld	s0,16(sp)
    8000754c:	00a4b823          	sd	a0,16(s1)
    80007550:	00013903          	ld	s2,0(sp)
    80007554:	00813483          	ld	s1,8(sp)
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret
    80007560:	0104b903          	ld	s2,16(s1)
    80007564:	fffff097          	auipc	ra,0xfffff
    80007568:	874080e7          	jalr	-1932(ra) # 80005dd8 <mycpu>
    8000756c:	faa91ce3          	bne	s2,a0,80007524 <acquire+0x58>
    80007570:	00001517          	auipc	a0,0x1
    80007574:	f0850513          	addi	a0,a0,-248 # 80008478 <digits+0x20>
    80007578:	fffff097          	auipc	ra,0xfffff
    8000757c:	224080e7          	jalr	548(ra) # 8000679c <panic>
    80007580:	00195913          	srli	s2,s2,0x1
    80007584:	fffff097          	auipc	ra,0xfffff
    80007588:	854080e7          	jalr	-1964(ra) # 80005dd8 <mycpu>
    8000758c:	00197913          	andi	s2,s2,1
    80007590:	07252e23          	sw	s2,124(a0)
    80007594:	f75ff06f          	j	80007508 <acquire+0x3c>

0000000080007598 <release>:
    80007598:	fe010113          	addi	sp,sp,-32
    8000759c:	00813823          	sd	s0,16(sp)
    800075a0:	00113c23          	sd	ra,24(sp)
    800075a4:	00913423          	sd	s1,8(sp)
    800075a8:	01213023          	sd	s2,0(sp)
    800075ac:	02010413          	addi	s0,sp,32
    800075b0:	00052783          	lw	a5,0(a0)
    800075b4:	00079a63          	bnez	a5,800075c8 <release+0x30>
    800075b8:	00001517          	auipc	a0,0x1
    800075bc:	ec850513          	addi	a0,a0,-312 # 80008480 <digits+0x28>
    800075c0:	fffff097          	auipc	ra,0xfffff
    800075c4:	1dc080e7          	jalr	476(ra) # 8000679c <panic>
    800075c8:	01053903          	ld	s2,16(a0)
    800075cc:	00050493          	mv	s1,a0
    800075d0:	fffff097          	auipc	ra,0xfffff
    800075d4:	808080e7          	jalr	-2040(ra) # 80005dd8 <mycpu>
    800075d8:	fea910e3          	bne	s2,a0,800075b8 <release+0x20>
    800075dc:	0004b823          	sd	zero,16(s1)
    800075e0:	0ff0000f          	fence
    800075e4:	0f50000f          	fence	iorw,ow
    800075e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800075ec:	ffffe097          	auipc	ra,0xffffe
    800075f0:	7ec080e7          	jalr	2028(ra) # 80005dd8 <mycpu>
    800075f4:	100027f3          	csrr	a5,sstatus
    800075f8:	0027f793          	andi	a5,a5,2
    800075fc:	04079a63          	bnez	a5,80007650 <release+0xb8>
    80007600:	07852783          	lw	a5,120(a0)
    80007604:	02f05e63          	blez	a5,80007640 <release+0xa8>
    80007608:	fff7871b          	addiw	a4,a5,-1
    8000760c:	06e52c23          	sw	a4,120(a0)
    80007610:	00071c63          	bnez	a4,80007628 <release+0x90>
    80007614:	07c52783          	lw	a5,124(a0)
    80007618:	00078863          	beqz	a5,80007628 <release+0x90>
    8000761c:	100027f3          	csrr	a5,sstatus
    80007620:	0027e793          	ori	a5,a5,2
    80007624:	10079073          	csrw	sstatus,a5
    80007628:	01813083          	ld	ra,24(sp)
    8000762c:	01013403          	ld	s0,16(sp)
    80007630:	00813483          	ld	s1,8(sp)
    80007634:	00013903          	ld	s2,0(sp)
    80007638:	02010113          	addi	sp,sp,32
    8000763c:	00008067          	ret
    80007640:	00001517          	auipc	a0,0x1
    80007644:	e6050513          	addi	a0,a0,-416 # 800084a0 <digits+0x48>
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	154080e7          	jalr	340(ra) # 8000679c <panic>
    80007650:	00001517          	auipc	a0,0x1
    80007654:	e3850513          	addi	a0,a0,-456 # 80008488 <digits+0x30>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	144080e7          	jalr	324(ra) # 8000679c <panic>

0000000080007660 <holding>:
    80007660:	00052783          	lw	a5,0(a0)
    80007664:	00079663          	bnez	a5,80007670 <holding+0x10>
    80007668:	00000513          	li	a0,0
    8000766c:	00008067          	ret
    80007670:	fe010113          	addi	sp,sp,-32
    80007674:	00813823          	sd	s0,16(sp)
    80007678:	00913423          	sd	s1,8(sp)
    8000767c:	00113c23          	sd	ra,24(sp)
    80007680:	02010413          	addi	s0,sp,32
    80007684:	01053483          	ld	s1,16(a0)
    80007688:	ffffe097          	auipc	ra,0xffffe
    8000768c:	750080e7          	jalr	1872(ra) # 80005dd8 <mycpu>
    80007690:	01813083          	ld	ra,24(sp)
    80007694:	01013403          	ld	s0,16(sp)
    80007698:	40a48533          	sub	a0,s1,a0
    8000769c:	00153513          	seqz	a0,a0
    800076a0:	00813483          	ld	s1,8(sp)
    800076a4:	02010113          	addi	sp,sp,32
    800076a8:	00008067          	ret

00000000800076ac <push_off>:
    800076ac:	fe010113          	addi	sp,sp,-32
    800076b0:	00813823          	sd	s0,16(sp)
    800076b4:	00113c23          	sd	ra,24(sp)
    800076b8:	00913423          	sd	s1,8(sp)
    800076bc:	02010413          	addi	s0,sp,32
    800076c0:	100024f3          	csrr	s1,sstatus
    800076c4:	100027f3          	csrr	a5,sstatus
    800076c8:	ffd7f793          	andi	a5,a5,-3
    800076cc:	10079073          	csrw	sstatus,a5
    800076d0:	ffffe097          	auipc	ra,0xffffe
    800076d4:	708080e7          	jalr	1800(ra) # 80005dd8 <mycpu>
    800076d8:	07852783          	lw	a5,120(a0)
    800076dc:	02078663          	beqz	a5,80007708 <push_off+0x5c>
    800076e0:	ffffe097          	auipc	ra,0xffffe
    800076e4:	6f8080e7          	jalr	1784(ra) # 80005dd8 <mycpu>
    800076e8:	07852783          	lw	a5,120(a0)
    800076ec:	01813083          	ld	ra,24(sp)
    800076f0:	01013403          	ld	s0,16(sp)
    800076f4:	0017879b          	addiw	a5,a5,1
    800076f8:	06f52c23          	sw	a5,120(a0)
    800076fc:	00813483          	ld	s1,8(sp)
    80007700:	02010113          	addi	sp,sp,32
    80007704:	00008067          	ret
    80007708:	0014d493          	srli	s1,s1,0x1
    8000770c:	ffffe097          	auipc	ra,0xffffe
    80007710:	6cc080e7          	jalr	1740(ra) # 80005dd8 <mycpu>
    80007714:	0014f493          	andi	s1,s1,1
    80007718:	06952e23          	sw	s1,124(a0)
    8000771c:	fc5ff06f          	j	800076e0 <push_off+0x34>

0000000080007720 <pop_off>:
    80007720:	ff010113          	addi	sp,sp,-16
    80007724:	00813023          	sd	s0,0(sp)
    80007728:	00113423          	sd	ra,8(sp)
    8000772c:	01010413          	addi	s0,sp,16
    80007730:	ffffe097          	auipc	ra,0xffffe
    80007734:	6a8080e7          	jalr	1704(ra) # 80005dd8 <mycpu>
    80007738:	100027f3          	csrr	a5,sstatus
    8000773c:	0027f793          	andi	a5,a5,2
    80007740:	04079663          	bnez	a5,8000778c <pop_off+0x6c>
    80007744:	07852783          	lw	a5,120(a0)
    80007748:	02f05a63          	blez	a5,8000777c <pop_off+0x5c>
    8000774c:	fff7871b          	addiw	a4,a5,-1
    80007750:	06e52c23          	sw	a4,120(a0)
    80007754:	00071c63          	bnez	a4,8000776c <pop_off+0x4c>
    80007758:	07c52783          	lw	a5,124(a0)
    8000775c:	00078863          	beqz	a5,8000776c <pop_off+0x4c>
    80007760:	100027f3          	csrr	a5,sstatus
    80007764:	0027e793          	ori	a5,a5,2
    80007768:	10079073          	csrw	sstatus,a5
    8000776c:	00813083          	ld	ra,8(sp)
    80007770:	00013403          	ld	s0,0(sp)
    80007774:	01010113          	addi	sp,sp,16
    80007778:	00008067          	ret
    8000777c:	00001517          	auipc	a0,0x1
    80007780:	d2450513          	addi	a0,a0,-732 # 800084a0 <digits+0x48>
    80007784:	fffff097          	auipc	ra,0xfffff
    80007788:	018080e7          	jalr	24(ra) # 8000679c <panic>
    8000778c:	00001517          	auipc	a0,0x1
    80007790:	cfc50513          	addi	a0,a0,-772 # 80008488 <digits+0x30>
    80007794:	fffff097          	auipc	ra,0xfffff
    80007798:	008080e7          	jalr	8(ra) # 8000679c <panic>

000000008000779c <push_on>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	00913423          	sd	s1,8(sp)
    800077ac:	02010413          	addi	s0,sp,32
    800077b0:	100024f3          	csrr	s1,sstatus
    800077b4:	100027f3          	csrr	a5,sstatus
    800077b8:	0027e793          	ori	a5,a5,2
    800077bc:	10079073          	csrw	sstatus,a5
    800077c0:	ffffe097          	auipc	ra,0xffffe
    800077c4:	618080e7          	jalr	1560(ra) # 80005dd8 <mycpu>
    800077c8:	07852783          	lw	a5,120(a0)
    800077cc:	02078663          	beqz	a5,800077f8 <push_on+0x5c>
    800077d0:	ffffe097          	auipc	ra,0xffffe
    800077d4:	608080e7          	jalr	1544(ra) # 80005dd8 <mycpu>
    800077d8:	07852783          	lw	a5,120(a0)
    800077dc:	01813083          	ld	ra,24(sp)
    800077e0:	01013403          	ld	s0,16(sp)
    800077e4:	0017879b          	addiw	a5,a5,1
    800077e8:	06f52c23          	sw	a5,120(a0)
    800077ec:	00813483          	ld	s1,8(sp)
    800077f0:	02010113          	addi	sp,sp,32
    800077f4:	00008067          	ret
    800077f8:	0014d493          	srli	s1,s1,0x1
    800077fc:	ffffe097          	auipc	ra,0xffffe
    80007800:	5dc080e7          	jalr	1500(ra) # 80005dd8 <mycpu>
    80007804:	0014f493          	andi	s1,s1,1
    80007808:	06952e23          	sw	s1,124(a0)
    8000780c:	fc5ff06f          	j	800077d0 <push_on+0x34>

0000000080007810 <pop_on>:
    80007810:	ff010113          	addi	sp,sp,-16
    80007814:	00813023          	sd	s0,0(sp)
    80007818:	00113423          	sd	ra,8(sp)
    8000781c:	01010413          	addi	s0,sp,16
    80007820:	ffffe097          	auipc	ra,0xffffe
    80007824:	5b8080e7          	jalr	1464(ra) # 80005dd8 <mycpu>
    80007828:	100027f3          	csrr	a5,sstatus
    8000782c:	0027f793          	andi	a5,a5,2
    80007830:	04078463          	beqz	a5,80007878 <pop_on+0x68>
    80007834:	07852783          	lw	a5,120(a0)
    80007838:	02f05863          	blez	a5,80007868 <pop_on+0x58>
    8000783c:	fff7879b          	addiw	a5,a5,-1
    80007840:	06f52c23          	sw	a5,120(a0)
    80007844:	07853783          	ld	a5,120(a0)
    80007848:	00079863          	bnez	a5,80007858 <pop_on+0x48>
    8000784c:	100027f3          	csrr	a5,sstatus
    80007850:	ffd7f793          	andi	a5,a5,-3
    80007854:	10079073          	csrw	sstatus,a5
    80007858:	00813083          	ld	ra,8(sp)
    8000785c:	00013403          	ld	s0,0(sp)
    80007860:	01010113          	addi	sp,sp,16
    80007864:	00008067          	ret
    80007868:	00001517          	auipc	a0,0x1
    8000786c:	c6050513          	addi	a0,a0,-928 # 800084c8 <digits+0x70>
    80007870:	fffff097          	auipc	ra,0xfffff
    80007874:	f2c080e7          	jalr	-212(ra) # 8000679c <panic>
    80007878:	00001517          	auipc	a0,0x1
    8000787c:	c3050513          	addi	a0,a0,-976 # 800084a8 <digits+0x50>
    80007880:	fffff097          	auipc	ra,0xfffff
    80007884:	f1c080e7          	jalr	-228(ra) # 8000679c <panic>

0000000080007888 <__memset>:
    80007888:	ff010113          	addi	sp,sp,-16
    8000788c:	00813423          	sd	s0,8(sp)
    80007890:	01010413          	addi	s0,sp,16
    80007894:	1a060e63          	beqz	a2,80007a50 <__memset+0x1c8>
    80007898:	40a007b3          	neg	a5,a0
    8000789c:	0077f793          	andi	a5,a5,7
    800078a0:	00778693          	addi	a3,a5,7
    800078a4:	00b00813          	li	a6,11
    800078a8:	0ff5f593          	andi	a1,a1,255
    800078ac:	fff6071b          	addiw	a4,a2,-1
    800078b0:	1b06e663          	bltu	a3,a6,80007a5c <__memset+0x1d4>
    800078b4:	1cd76463          	bltu	a4,a3,80007a7c <__memset+0x1f4>
    800078b8:	1a078e63          	beqz	a5,80007a74 <__memset+0x1ec>
    800078bc:	00b50023          	sb	a1,0(a0)
    800078c0:	00100713          	li	a4,1
    800078c4:	1ae78463          	beq	a5,a4,80007a6c <__memset+0x1e4>
    800078c8:	00b500a3          	sb	a1,1(a0)
    800078cc:	00200713          	li	a4,2
    800078d0:	1ae78a63          	beq	a5,a4,80007a84 <__memset+0x1fc>
    800078d4:	00b50123          	sb	a1,2(a0)
    800078d8:	00300713          	li	a4,3
    800078dc:	18e78463          	beq	a5,a4,80007a64 <__memset+0x1dc>
    800078e0:	00b501a3          	sb	a1,3(a0)
    800078e4:	00400713          	li	a4,4
    800078e8:	1ae78263          	beq	a5,a4,80007a8c <__memset+0x204>
    800078ec:	00b50223          	sb	a1,4(a0)
    800078f0:	00500713          	li	a4,5
    800078f4:	1ae78063          	beq	a5,a4,80007a94 <__memset+0x20c>
    800078f8:	00b502a3          	sb	a1,5(a0)
    800078fc:	00700713          	li	a4,7
    80007900:	18e79e63          	bne	a5,a4,80007a9c <__memset+0x214>
    80007904:	00b50323          	sb	a1,6(a0)
    80007908:	00700e93          	li	t4,7
    8000790c:	00859713          	slli	a4,a1,0x8
    80007910:	00e5e733          	or	a4,a1,a4
    80007914:	01059e13          	slli	t3,a1,0x10
    80007918:	01c76e33          	or	t3,a4,t3
    8000791c:	01859313          	slli	t1,a1,0x18
    80007920:	006e6333          	or	t1,t3,t1
    80007924:	02059893          	slli	a7,a1,0x20
    80007928:	40f60e3b          	subw	t3,a2,a5
    8000792c:	011368b3          	or	a7,t1,a7
    80007930:	02859813          	slli	a6,a1,0x28
    80007934:	0108e833          	or	a6,a7,a6
    80007938:	03059693          	slli	a3,a1,0x30
    8000793c:	003e589b          	srliw	a7,t3,0x3
    80007940:	00d866b3          	or	a3,a6,a3
    80007944:	03859713          	slli	a4,a1,0x38
    80007948:	00389813          	slli	a6,a7,0x3
    8000794c:	00f507b3          	add	a5,a0,a5
    80007950:	00e6e733          	or	a4,a3,a4
    80007954:	000e089b          	sext.w	a7,t3
    80007958:	00f806b3          	add	a3,a6,a5
    8000795c:	00e7b023          	sd	a4,0(a5)
    80007960:	00878793          	addi	a5,a5,8
    80007964:	fed79ce3          	bne	a5,a3,8000795c <__memset+0xd4>
    80007968:	ff8e7793          	andi	a5,t3,-8
    8000796c:	0007871b          	sext.w	a4,a5
    80007970:	01d787bb          	addw	a5,a5,t4
    80007974:	0ce88e63          	beq	a7,a4,80007a50 <__memset+0x1c8>
    80007978:	00f50733          	add	a4,a0,a5
    8000797c:	00b70023          	sb	a1,0(a4)
    80007980:	0017871b          	addiw	a4,a5,1
    80007984:	0cc77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007988:	00e50733          	add	a4,a0,a4
    8000798c:	00b70023          	sb	a1,0(a4)
    80007990:	0027871b          	addiw	a4,a5,2
    80007994:	0ac77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007998:	00e50733          	add	a4,a0,a4
    8000799c:	00b70023          	sb	a1,0(a4)
    800079a0:	0037871b          	addiw	a4,a5,3
    800079a4:	0ac77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079a8:	00e50733          	add	a4,a0,a4
    800079ac:	00b70023          	sb	a1,0(a4)
    800079b0:	0047871b          	addiw	a4,a5,4
    800079b4:	08c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079b8:	00e50733          	add	a4,a0,a4
    800079bc:	00b70023          	sb	a1,0(a4)
    800079c0:	0057871b          	addiw	a4,a5,5
    800079c4:	08c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079c8:	00e50733          	add	a4,a0,a4
    800079cc:	00b70023          	sb	a1,0(a4)
    800079d0:	0067871b          	addiw	a4,a5,6
    800079d4:	06c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079d8:	00e50733          	add	a4,a0,a4
    800079dc:	00b70023          	sb	a1,0(a4)
    800079e0:	0077871b          	addiw	a4,a5,7
    800079e4:	06c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	0087871b          	addiw	a4,a5,8
    800079f4:	04c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	0097871b          	addiw	a4,a5,9
    80007a04:	04c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	00a7871b          	addiw	a4,a5,10
    80007a14:	02c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	00b7871b          	addiw	a4,a5,11
    80007a24:	02c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a28:	00e50733          	add	a4,a0,a4
    80007a2c:	00b70023          	sb	a1,0(a4)
    80007a30:	00c7871b          	addiw	a4,a5,12
    80007a34:	00c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a38:	00e50733          	add	a4,a0,a4
    80007a3c:	00b70023          	sb	a1,0(a4)
    80007a40:	00d7879b          	addiw	a5,a5,13
    80007a44:	00c7f663          	bgeu	a5,a2,80007a50 <__memset+0x1c8>
    80007a48:	00f507b3          	add	a5,a0,a5
    80007a4c:	00b78023          	sb	a1,0(a5)
    80007a50:	00813403          	ld	s0,8(sp)
    80007a54:	01010113          	addi	sp,sp,16
    80007a58:	00008067          	ret
    80007a5c:	00b00693          	li	a3,11
    80007a60:	e55ff06f          	j	800078b4 <__memset+0x2c>
    80007a64:	00300e93          	li	t4,3
    80007a68:	ea5ff06f          	j	8000790c <__memset+0x84>
    80007a6c:	00100e93          	li	t4,1
    80007a70:	e9dff06f          	j	8000790c <__memset+0x84>
    80007a74:	00000e93          	li	t4,0
    80007a78:	e95ff06f          	j	8000790c <__memset+0x84>
    80007a7c:	00000793          	li	a5,0
    80007a80:	ef9ff06f          	j	80007978 <__memset+0xf0>
    80007a84:	00200e93          	li	t4,2
    80007a88:	e85ff06f          	j	8000790c <__memset+0x84>
    80007a8c:	00400e93          	li	t4,4
    80007a90:	e7dff06f          	j	8000790c <__memset+0x84>
    80007a94:	00500e93          	li	t4,5
    80007a98:	e75ff06f          	j	8000790c <__memset+0x84>
    80007a9c:	00600e93          	li	t4,6
    80007aa0:	e6dff06f          	j	8000790c <__memset+0x84>

0000000080007aa4 <__memmove>:
    80007aa4:	ff010113          	addi	sp,sp,-16
    80007aa8:	00813423          	sd	s0,8(sp)
    80007aac:	01010413          	addi	s0,sp,16
    80007ab0:	0e060863          	beqz	a2,80007ba0 <__memmove+0xfc>
    80007ab4:	fff6069b          	addiw	a3,a2,-1
    80007ab8:	0006881b          	sext.w	a6,a3
    80007abc:	0ea5e863          	bltu	a1,a0,80007bac <__memmove+0x108>
    80007ac0:	00758713          	addi	a4,a1,7
    80007ac4:	00a5e7b3          	or	a5,a1,a0
    80007ac8:	40a70733          	sub	a4,a4,a0
    80007acc:	0077f793          	andi	a5,a5,7
    80007ad0:	00f73713          	sltiu	a4,a4,15
    80007ad4:	00174713          	xori	a4,a4,1
    80007ad8:	0017b793          	seqz	a5,a5
    80007adc:	00e7f7b3          	and	a5,a5,a4
    80007ae0:	10078863          	beqz	a5,80007bf0 <__memmove+0x14c>
    80007ae4:	00900793          	li	a5,9
    80007ae8:	1107f463          	bgeu	a5,a6,80007bf0 <__memmove+0x14c>
    80007aec:	0036581b          	srliw	a6,a2,0x3
    80007af0:	fff8081b          	addiw	a6,a6,-1
    80007af4:	02081813          	slli	a6,a6,0x20
    80007af8:	01d85893          	srli	a7,a6,0x1d
    80007afc:	00858813          	addi	a6,a1,8
    80007b00:	00058793          	mv	a5,a1
    80007b04:	00050713          	mv	a4,a0
    80007b08:	01088833          	add	a6,a7,a6
    80007b0c:	0007b883          	ld	a7,0(a5)
    80007b10:	00878793          	addi	a5,a5,8
    80007b14:	00870713          	addi	a4,a4,8
    80007b18:	ff173c23          	sd	a7,-8(a4)
    80007b1c:	ff0798e3          	bne	a5,a6,80007b0c <__memmove+0x68>
    80007b20:	ff867713          	andi	a4,a2,-8
    80007b24:	02071793          	slli	a5,a4,0x20
    80007b28:	0207d793          	srli	a5,a5,0x20
    80007b2c:	00f585b3          	add	a1,a1,a5
    80007b30:	40e686bb          	subw	a3,a3,a4
    80007b34:	00f507b3          	add	a5,a0,a5
    80007b38:	06e60463          	beq	a2,a4,80007ba0 <__memmove+0xfc>
    80007b3c:	0005c703          	lbu	a4,0(a1)
    80007b40:	00e78023          	sb	a4,0(a5)
    80007b44:	04068e63          	beqz	a3,80007ba0 <__memmove+0xfc>
    80007b48:	0015c603          	lbu	a2,1(a1)
    80007b4c:	00100713          	li	a4,1
    80007b50:	00c780a3          	sb	a2,1(a5)
    80007b54:	04e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b58:	0025c603          	lbu	a2,2(a1)
    80007b5c:	00200713          	li	a4,2
    80007b60:	00c78123          	sb	a2,2(a5)
    80007b64:	02e68e63          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b68:	0035c603          	lbu	a2,3(a1)
    80007b6c:	00300713          	li	a4,3
    80007b70:	00c781a3          	sb	a2,3(a5)
    80007b74:	02e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b78:	0045c603          	lbu	a2,4(a1)
    80007b7c:	00400713          	li	a4,4
    80007b80:	00c78223          	sb	a2,4(a5)
    80007b84:	00e68e63          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b88:	0055c603          	lbu	a2,5(a1)
    80007b8c:	00500713          	li	a4,5
    80007b90:	00c782a3          	sb	a2,5(a5)
    80007b94:	00e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b98:	0065c703          	lbu	a4,6(a1)
    80007b9c:	00e78323          	sb	a4,6(a5)
    80007ba0:	00813403          	ld	s0,8(sp)
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00008067          	ret
    80007bac:	02061713          	slli	a4,a2,0x20
    80007bb0:	02075713          	srli	a4,a4,0x20
    80007bb4:	00e587b3          	add	a5,a1,a4
    80007bb8:	f0f574e3          	bgeu	a0,a5,80007ac0 <__memmove+0x1c>
    80007bbc:	02069613          	slli	a2,a3,0x20
    80007bc0:	02065613          	srli	a2,a2,0x20
    80007bc4:	fff64613          	not	a2,a2
    80007bc8:	00e50733          	add	a4,a0,a4
    80007bcc:	00c78633          	add	a2,a5,a2
    80007bd0:	fff7c683          	lbu	a3,-1(a5)
    80007bd4:	fff78793          	addi	a5,a5,-1
    80007bd8:	fff70713          	addi	a4,a4,-1
    80007bdc:	00d70023          	sb	a3,0(a4)
    80007be0:	fec798e3          	bne	a5,a2,80007bd0 <__memmove+0x12c>
    80007be4:	00813403          	ld	s0,8(sp)
    80007be8:	01010113          	addi	sp,sp,16
    80007bec:	00008067          	ret
    80007bf0:	02069713          	slli	a4,a3,0x20
    80007bf4:	02075713          	srli	a4,a4,0x20
    80007bf8:	00170713          	addi	a4,a4,1
    80007bfc:	00e50733          	add	a4,a0,a4
    80007c00:	00050793          	mv	a5,a0
    80007c04:	0005c683          	lbu	a3,0(a1)
    80007c08:	00178793          	addi	a5,a5,1
    80007c0c:	00158593          	addi	a1,a1,1
    80007c10:	fed78fa3          	sb	a3,-1(a5)
    80007c14:	fee798e3          	bne	a5,a4,80007c04 <__memmove+0x160>
    80007c18:	f89ff06f          	j	80007ba0 <__memmove+0xfc>

0000000080007c1c <__putc>:
    80007c1c:	fe010113          	addi	sp,sp,-32
    80007c20:	00813823          	sd	s0,16(sp)
    80007c24:	00113c23          	sd	ra,24(sp)
    80007c28:	02010413          	addi	s0,sp,32
    80007c2c:	00050793          	mv	a5,a0
    80007c30:	fef40593          	addi	a1,s0,-17
    80007c34:	00100613          	li	a2,1
    80007c38:	00000513          	li	a0,0
    80007c3c:	fef407a3          	sb	a5,-17(s0)
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	b3c080e7          	jalr	-1220(ra) # 8000677c <console_write>
    80007c48:	01813083          	ld	ra,24(sp)
    80007c4c:	01013403          	ld	s0,16(sp)
    80007c50:	02010113          	addi	sp,sp,32
    80007c54:	00008067          	ret

0000000080007c58 <__getc>:
    80007c58:	fe010113          	addi	sp,sp,-32
    80007c5c:	00813823          	sd	s0,16(sp)
    80007c60:	00113c23          	sd	ra,24(sp)
    80007c64:	02010413          	addi	s0,sp,32
    80007c68:	fe840593          	addi	a1,s0,-24
    80007c6c:	00100613          	li	a2,1
    80007c70:	00000513          	li	a0,0
    80007c74:	fffff097          	auipc	ra,0xfffff
    80007c78:	ae8080e7          	jalr	-1304(ra) # 8000675c <console_read>
    80007c7c:	fe844503          	lbu	a0,-24(s0)
    80007c80:	01813083          	ld	ra,24(sp)
    80007c84:	01013403          	ld	s0,16(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret

0000000080007c90 <console_handler>:
    80007c90:	fe010113          	addi	sp,sp,-32
    80007c94:	00813823          	sd	s0,16(sp)
    80007c98:	00113c23          	sd	ra,24(sp)
    80007c9c:	00913423          	sd	s1,8(sp)
    80007ca0:	02010413          	addi	s0,sp,32
    80007ca4:	14202773          	csrr	a4,scause
    80007ca8:	100027f3          	csrr	a5,sstatus
    80007cac:	0027f793          	andi	a5,a5,2
    80007cb0:	06079e63          	bnez	a5,80007d2c <console_handler+0x9c>
    80007cb4:	00074c63          	bltz	a4,80007ccc <console_handler+0x3c>
    80007cb8:	01813083          	ld	ra,24(sp)
    80007cbc:	01013403          	ld	s0,16(sp)
    80007cc0:	00813483          	ld	s1,8(sp)
    80007cc4:	02010113          	addi	sp,sp,32
    80007cc8:	00008067          	ret
    80007ccc:	0ff77713          	andi	a4,a4,255
    80007cd0:	00900793          	li	a5,9
    80007cd4:	fef712e3          	bne	a4,a5,80007cb8 <console_handler+0x28>
    80007cd8:	ffffe097          	auipc	ra,0xffffe
    80007cdc:	6dc080e7          	jalr	1756(ra) # 800063b4 <plic_claim>
    80007ce0:	00a00793          	li	a5,10
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	02f50c63          	beq	a0,a5,80007d20 <console_handler+0x90>
    80007cec:	fc0506e3          	beqz	a0,80007cb8 <console_handler+0x28>
    80007cf0:	00050593          	mv	a1,a0
    80007cf4:	00000517          	auipc	a0,0x0
    80007cf8:	6dc50513          	addi	a0,a0,1756 # 800083d0 <CONSOLE_STATUS+0x3c0>
    80007cfc:	fffff097          	auipc	ra,0xfffff
    80007d00:	afc080e7          	jalr	-1284(ra) # 800067f8 <__printf>
    80007d04:	01013403          	ld	s0,16(sp)
    80007d08:	01813083          	ld	ra,24(sp)
    80007d0c:	00048513          	mv	a0,s1
    80007d10:	00813483          	ld	s1,8(sp)
    80007d14:	02010113          	addi	sp,sp,32
    80007d18:	ffffe317          	auipc	t1,0xffffe
    80007d1c:	6d430067          	jr	1748(t1) # 800063ec <plic_complete>
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	3e0080e7          	jalr	992(ra) # 80007100 <uartintr>
    80007d28:	fddff06f          	j	80007d04 <console_handler+0x74>
    80007d2c:	00000517          	auipc	a0,0x0
    80007d30:	7a450513          	addi	a0,a0,1956 # 800084d0 <digits+0x78>
    80007d34:	fffff097          	auipc	ra,0xfffff
    80007d38:	a68080e7          	jalr	-1432(ra) # 8000679c <panic>
	...
