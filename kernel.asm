
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	ee813103          	ld	sp,-280(sp) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	040070ef          	jal	ra,8000705c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV16handle_interruptEv>:
.global _ZN5RiscV16handle_interruptEv
.type _ZN5RiscV16handle_interruptEv, @function
_ZN5RiscV16handle_interruptEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RiscV22handle_supervisor_trapEv
    80001080:	6a9010ef          	jal	ra,80002f28 <_ZN5RiscV22handle_supervisor_trapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    sret
    80001104:	10200073          	sret

0000000080001108 <_ZN5RiscV14push_registersEv>:

.global _ZN5RiscV14push_registersEv
.type _ZN5RiscV14push_registersEv, @function
_ZN5RiscV14push_registersEv:

    addi sp, sp, -256
    80001108:	f0010113          	addi	sp,sp,-256
    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    ret
    80001184:	00008067          	ret

0000000080001188 <_ZN5RiscV13pop_registersEv>:
.type _ZN5RiscV13pop_registersEv, @function
_ZN5RiscV13pop_registersEv:

    .irp index, 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	01013103          	ld	sp,16(sp)
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256

    80001204:	00008067          	ret

0000000080001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:

    #store old -> context
	sd ra, 0 * 8(a0)
    80001208:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
	sd sp, 1 * 8(a0)
    8000120c:	00253423          	sd	sp,8(a0)

    #load running -> context
	ld ra, 0 * 8(a1)
    80001210:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001214:	0085b103          	ld	sp,8(a1)

    80001218:	00008067          	ret

000000008000121c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000121c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001220:	00b29a63          	bne	t0,a1,80001234 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001224:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001228:	fe029ae3          	bnez	t0,8000121c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000122c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001230:	00008067          	ret

0000000080001234 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001234:	00100513          	li	a0,1
    80001238:	00008067          	ret

000000008000123c <_Z7syscallmmmmm>:
#include "../h/syscall_c.h"

void syscall(uint64 syscall_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size == 0) return nullptr;
    80001258:	04050663          	beqz	a0,800012a4 <_Z9mem_allocm+0x4c>
void* mem_alloc (size_t size) {
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00113423          	sd	ra,8(sp)
    80001264:	00813023          	sd	s0,0(sp)
    80001268:	01010413          	addi	s0,sp,16
    size = MemoryAllocator::get_number_of_blocks(size);
    8000126c:	00001097          	auipc	ra,0x1
    80001270:	600080e7          	jalr	1536(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001274:	00050593          	mv	a1,a0
    void volatile *addr;
    syscall(MEM_ALLOC, size);
    80001278:	00000713          	li	a4,0
    8000127c:	00000693          	li	a3,0
    80001280:	00000613          	li	a2,0
    80001284:	00100513          	li	a0,1
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	fb4080e7          	jalr	-76(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(addr));
    80001290:	00050513          	mv	a0,a0
    return (void*) addr;
}
    80001294:	00813083          	ld	ra,8(sp)
    80001298:	00013403          	ld	s0,0(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret
    if (size == 0) return nullptr;
    800012a4:	00000513          	li	a0,0
}
    800012a8:	00008067          	ret

00000000800012ac <_Z8mem_freePv>:

int mem_free (void* addr) {
    800012ac:	fe010113          	addi	sp,sp,-32
    800012b0:	00113c23          	sd	ra,24(sp)
    800012b4:	00813823          	sd	s0,16(sp)
    800012b8:	02010413          	addi	s0,sp,32
    800012bc:	00050593          	mv	a1,a0
    int volatile success;
    syscall(MEM_FREE, (uint64) addr);
    800012c0:	00000713          	li	a4,0
    800012c4:	00000693          	li	a3,0
    800012c8:	00000613          	li	a2,0
    800012cc:	00200513          	li	a0,2
    800012d0:	00000097          	auipc	ra,0x0
    800012d4:	f6c080e7          	jalr	-148(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile ("mv %0, a0" : "=r"(success));
    800012d8:	00050793          	mv	a5,a0
    800012dc:	fef42623          	sw	a5,-20(s0)
    return success;
    800012e0:	fec42503          	lw	a0,-20(s0)
}
    800012e4:	0005051b          	sext.w	a0,a0
    800012e8:	01813083          	ld	ra,24(sp)
    800012ec:	01013403          	ld	s0,16(sp)
    800012f0:	02010113          	addi	sp,sp,32
    800012f4:	00008067          	ret

00000000800012f8 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800012f8:	fc010113          	addi	sp,sp,-64
    800012fc:	02113c23          	sd	ra,56(sp)
    80001300:	02813823          	sd	s0,48(sp)
    80001304:	02913423          	sd	s1,40(sp)
    80001308:	03213023          	sd	s2,32(sp)
    8000130c:	01313c23          	sd	s3,24(sp)
    80001310:	04010413          	addi	s0,sp,64
    80001314:	00050913          	mv	s2,a0
    80001318:	00058493          	mv	s1,a1
    8000131c:	00060993          	mv	s3,a2
    void* stack_space = nullptr;
    /// main thread alredy has it's stack
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001320:	04058c63          	beqz	a1,80001378 <_Z13thread_createPP3TCBPFvPvES2_+0x80>
    80001324:	00001537          	lui	a0,0x1
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	f30080e7          	jalr	-208(ra) # 80001258 <_Z9mem_allocm>
    80001330:	00050713          	mv	a4,a0
    int volatile status;
    syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
    80001334:	00098693          	mv	a3,s3
    80001338:	00048613          	mv	a2,s1
    8000133c:	00090593          	mv	a1,s2
    80001340:	01100513          	li	a0,17
    80001344:	00000097          	auipc	ra,0x0
    80001348:	ef8080e7          	jalr	-264(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    8000134c:	00050793          	mv	a5,a0
    80001350:	fcf42623          	sw	a5,-52(s0)
    return status;
    80001354:	fcc42503          	lw	a0,-52(s0)
}
    80001358:	0005051b          	sext.w	a0,a0
    8000135c:	03813083          	ld	ra,56(sp)
    80001360:	03013403          	ld	s0,48(sp)
    80001364:	02813483          	ld	s1,40(sp)
    80001368:	02013903          	ld	s2,32(sp)
    8000136c:	01813983          	ld	s3,24(sp)
    80001370:	04010113          	addi	sp,sp,64
    80001374:	00008067          	ret
    void* stack_space = nullptr;
    80001378:	00000713          	li	a4,0
    8000137c:	fb9ff06f          	j	80001334 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

0000000080001380 <_Z11thread_exitv>:

int thread_exit () {
    80001380:	fe010113          	addi	sp,sp,-32
    80001384:	00113c23          	sd	ra,24(sp)
    80001388:	00813823          	sd	s0,16(sp)
    8000138c:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(THREAD_EXIT);
    80001390:	00000713          	li	a4,0
    80001394:	00000693          	li	a3,0
    80001398:	00000613          	li	a2,0
    8000139c:	00000593          	li	a1,0
    800013a0:	01200513          	li	a0,18
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	e98080e7          	jalr	-360(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800013ac:	00050793          	mv	a5,a0
    800013b0:	fef42623          	sw	a5,-20(s0)
    return status;
    800013b4:	fec42503          	lw	a0,-20(s0)
}
    800013b8:	0005051b          	sext.w	a0,a0
    800013bc:	01813083          	ld	ra,24(sp)
    800013c0:	01013403          	ld	s0,16(sp)
    800013c4:	02010113          	addi	sp,sp,32
    800013c8:	00008067          	ret

00000000800013cc <_Z15thread_dispatchv>:

void thread_dispatch () {
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00113423          	sd	ra,8(sp)
    800013d4:	00813023          	sd	s0,0(sp)
    800013d8:	01010413          	addi	s0,sp,16
    syscall(THREAD_DISPATCH);
    800013dc:	00000713          	li	a4,0
    800013e0:	00000693          	li	a3,0
    800013e4:	00000613          	li	a2,0
    800013e8:	00000593          	li	a1,0
    800013ec:	01300513          	li	a0,19
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	e4c080e7          	jalr	-436(ra) # 8000123c <_Z7syscallmmmmm>
}
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init) {
    80001408:	fe010113          	addi	sp,sp,-32
    8000140c:	00113c23          	sd	ra,24(sp)
    80001410:	00813823          	sd	s0,16(sp)
    80001414:	02010413          	addi	s0,sp,32
    int volatile status;
    syscall(SEM_OPEN, (uint64) handle, (uint64) init);
    80001418:	00000713          	li	a4,0
    8000141c:	00000693          	li	a3,0
    80001420:	02059613          	slli	a2,a1,0x20
    80001424:	02065613          	srli	a2,a2,0x20
    80001428:	00050593          	mv	a1,a0
    8000142c:	02100513          	li	a0,33
    80001430:	00000097          	auipc	ra,0x0
    80001434:	e0c080e7          	jalr	-500(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001438:	00050793          	mv	a5,a0
    8000143c:	fef42623          	sw	a5,-20(s0)
    return status;
    80001440:	fec42503          	lw	a0,-20(s0)
}
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	01813083          	ld	ra,24(sp)
    8000144c:	01013403          	ld	s0,16(sp)
    80001450:	02010113          	addi	sp,sp,32
    80001454:	00008067          	ret

0000000080001458 <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle) {
    80001458:	fe010113          	addi	sp,sp,-32
    8000145c:	00113c23          	sd	ra,24(sp)
    80001460:	00813823          	sd	s0,16(sp)
    80001464:	02010413          	addi	s0,sp,32
    80001468:	00050593          	mv	a1,a0
    int volatile status;
    syscall(SEM_CLOSE, (uint64) handle);
    8000146c:	00000713          	li	a4,0
    80001470:	00000693          	li	a3,0
    80001474:	00000613          	li	a2,0
    80001478:	02200513          	li	a0,34
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	dc0080e7          	jalr	-576(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001484:	00050793          	mv	a5,a0
    80001488:	fef42623          	sw	a5,-20(s0)
    return status;
    8000148c:	fec42503          	lw	a0,-20(s0)
}
    80001490:	0005051b          	sext.w	a0,a0
    80001494:	01813083          	ld	ra,24(sp)
    80001498:	01013403          	ld	s0,16(sp)
    8000149c:	02010113          	addi	sp,sp,32
    800014a0:	00008067          	ret

00000000800014a4 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id) {
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00113c23          	sd	ra,24(sp)
    800014ac:	00813823          	sd	s0,16(sp)
    800014b0:	02010413          	addi	s0,sp,32
    800014b4:	00050593          	mv	a1,a0
    int volatile status;
    syscall(SEM_WAIT, (uint64) id);
    800014b8:	00000713          	li	a4,0
    800014bc:	00000693          	li	a3,0
    800014c0:	00000613          	li	a2,0
    800014c4:	02300513          	li	a0,35
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	d74080e7          	jalr	-652(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800014d0:	00050793          	mv	a5,a0
    800014d4:	fef42623          	sw	a5,-20(s0)
    return status;
    800014d8:	fec42503          	lw	a0,-20(s0)
}
    800014dc:	0005051b          	sext.w	a0,a0
    800014e0:	01813083          	ld	ra,24(sp)
    800014e4:	01013403          	ld	s0,16(sp)
    800014e8:	02010113          	addi	sp,sp,32
    800014ec:	00008067          	ret

00000000800014f0 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id) {
    800014f0:	fe010113          	addi	sp,sp,-32
    800014f4:	00113c23          	sd	ra,24(sp)
    800014f8:	00813823          	sd	s0,16(sp)
    800014fc:	02010413          	addi	s0,sp,32
    80001500:	00050593          	mv	a1,a0
    int volatile status;
    syscall(SEM_SIGNAL, (uint64) id);
    80001504:	00000713          	li	a4,0
    80001508:	00000693          	li	a3,0
    8000150c:	00000613          	li	a2,0
    80001510:	02400513          	li	a0,36
    80001514:	00000097          	auipc	ra,0x0
    80001518:	d28080e7          	jalr	-728(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    8000151c:	00050793          	mv	a5,a0
    80001520:	fef42623          	sw	a5,-20(s0)
    return status;
    80001524:	fec42503          	lw	a0,-20(s0)
}
    80001528:	0005051b          	sext.w	a0,a0
    8000152c:	01813083          	ld	ra,24(sp)
    80001530:	01013403          	ld	s0,16(sp)
    80001534:	02010113          	addi	sp,sp,32
    80001538:	00008067          	ret

000000008000153c <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout) {
    8000153c:	fe010113          	addi	sp,sp,-32
    80001540:	00113c23          	sd	ra,24(sp)
    80001544:	00813823          	sd	s0,16(sp)
    80001548:	02010413          	addi	s0,sp,32
    8000154c:	00058613          	mv	a2,a1
    int volatile status;
    syscall(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout);
    80001550:	00000713          	li	a4,0
    80001554:	00000693          	li	a3,0
    80001558:	00050593          	mv	a1,a0
    8000155c:	02500513          	li	a0,37
    80001560:	00000097          	auipc	ra,0x0
    80001564:	cdc080e7          	jalr	-804(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001568:	00050793          	mv	a5,a0
    8000156c:	fef42623          	sw	a5,-20(s0)
    return status;
    80001570:	fec42503          	lw	a0,-20(s0)
}
    80001574:	0005051b          	sext.w	a0,a0
    80001578:	01813083          	ld	ra,24(sp)
    8000157c:	01013403          	ld	s0,16(sp)
    80001580:	02010113          	addi	sp,sp,32
    80001584:	00008067          	ret

0000000080001588 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    80001588:	fe010113          	addi	sp,sp,-32
    8000158c:	00113c23          	sd	ra,24(sp)
    80001590:	00813823          	sd	s0,16(sp)
    80001594:	02010413          	addi	s0,sp,32
    80001598:	00050593          	mv	a1,a0
    int volatile status;
    syscall(SEM_TRYWAIT, (uint64) id);
    8000159c:	00000713          	li	a4,0
    800015a0:	00000693          	li	a3,0
    800015a4:	00000613          	li	a2,0
    800015a8:	02600513          	li	a0,38
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	c90080e7          	jalr	-880(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    800015b4:	00050793          	mv	a5,a0
    800015b8:	fef42623          	sw	a5,-20(s0)
    return status;
    800015bc:	fec42503          	lw	a0,-20(s0)
}
    800015c0:	0005051b          	sext.w	a0,a0
    800015c4:	01813083          	ld	ra,24(sp)
    800015c8:	01013403          	ld	s0,16(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret

00000000800015d4 <_Z10time_sleepm>:

int time_sleep (time_t time) {
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	02010413          	addi	s0,sp,32
    800015e4:	00050593          	mv	a1,a0
    int volatile status;
    syscall(TIME_SLEEP, (uint64) time);
    800015e8:	00000713          	li	a4,0
    800015ec:	00000693          	li	a3,0
    800015f0:	00000613          	li	a2,0
    800015f4:	03100513          	li	a0,49
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	c44080e7          	jalr	-956(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(status));
    80001600:	00050793          	mv	a5,a0
    80001604:	fef42623          	sw	a5,-20(s0)
    return status;
    80001608:	fec42503          	lw	a0,-20(s0)
}
    8000160c:	0005051b          	sext.w	a0,a0
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret

0000000080001620 <_Z4getcv>:

char getc () {
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	02010413          	addi	s0,sp,32
    char volatile c;
    syscall(GETC);
    80001630:	00000713          	li	a4,0
    80001634:	00000693          	li	a3,0
    80001638:	00000613          	li	a2,0
    8000163c:	00000593          	li	a1,0
    80001640:	04100513          	li	a0,65
    80001644:	00000097          	auipc	ra,0x0
    80001648:	bf8080e7          	jalr	-1032(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(c));
    8000164c:	00050793          	mv	a5,a0
    80001650:	fef407a3          	sb	a5,-17(s0)
    return c;
    80001654:	fef44503          	lbu	a0,-17(s0)
}
    80001658:	0ff57513          	andi	a0,a0,255
    8000165c:	01813083          	ld	ra,24(sp)
    80001660:	01013403          	ld	s0,16(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret

000000008000166c <_Z4putcc>:

void putc (char c) {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    8000167c:	00050593          	mv	a1,a0
    syscall(PUTC, (uint64) c);
    80001680:	00000713          	li	a4,0
    80001684:	00000693          	li	a3,0
    80001688:	00000613          	li	a2,0
    8000168c:	04200513          	li	a0,66
    80001690:	00000097          	auipc	ra,0x0
    80001694:	bac080e7          	jalr	-1108(ra) # 8000123c <_Z7syscallmmmmm>
}
    80001698:	00813083          	ld	ra,8(sp)
    8000169c:	00013403          	ld	s0,0(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_Z13get_thread_idv>:

int get_thread_id() {
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	02010413          	addi	s0,sp,32
    int volatile thread_id;
    syscall(GET_THREAD_ID);
    800016b8:	00000713          	li	a4,0
    800016bc:	00000693          	li	a3,0
    800016c0:	00000613          	li	a2,0
    800016c4:	00000593          	li	a1,0
    800016c8:	09900513          	li	a0,153
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	b70080e7          	jalr	-1168(ra) # 8000123c <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(thread_id));
    800016d4:	00050793          	mv	a5,a0
    800016d8:	fef42623          	sw	a5,-20(s0)
    return thread_id;
    800016dc:	fec42503          	lw	a0,-20(s0)
    800016e0:	0005051b          	sext.w	a0,a0
    800016e4:	01813083          	ld	ra,24(sp)
    800016e8:	01013403          	ld	s0,16(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret

00000000800016f4 <_ZN3SemD1Ev>:
int Sem::tryWait(Sem *handle) {
    if (handle -> value > 0) return wait(handle);
    return 1;
}

Sem::~Sem() {
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	02010413          	addi	s0,sp,32
    80001708:	00050493          	mv	s1,a0
    8000170c:	0000b797          	auipc	a5,0xb
    80001710:	56478793          	addi	a5,a5,1380 # 8000cc70 <_ZTV3Sem+0x10>
    80001714:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    80001718:	00853503          	ld	a0,8(a0)
    8000171c:	00002097          	auipc	ra,0x2
    80001720:	d3c080e7          	jalr	-708(ra) # 80003458 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    80001724:	0084b503          	ld	a0,8(s1)
    80001728:	00050663          	beqz	a0,80001734 <_ZN3SemD1Ev+0x40>
    8000172c:	00002097          	auipc	ra,0x2
    80001730:	bf0080e7          	jalr	-1040(ra) # 8000331c <_ZN10ThreadListdlEPv>
}
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret

0000000080001748 <_ZN3SemC1Ej>:
Sem::Sem(unsigned int init) : value((int) init) {
    80001748:	fe010113          	addi	sp,sp,-32
    8000174c:	00113c23          	sd	ra,24(sp)
    80001750:	00813823          	sd	s0,16(sp)
    80001754:	00913423          	sd	s1,8(sp)
    80001758:	02010413          	addi	s0,sp,32
    8000175c:	00050493          	mv	s1,a0
    80001760:	0000b797          	auipc	a5,0xb
    80001764:	51078793          	addi	a5,a5,1296 # 8000cc70 <_ZTV3Sem+0x10>
    80001768:	00f53023          	sd	a5,0(a0)
    8000176c:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001770:	01000513          	li	a0,16
    80001774:	00002097          	auipc	ra,0x2
    80001778:	b78080e7          	jalr	-1160(ra) # 800032ec <_ZN10ThreadListnwEm>
    8000177c:	00053023          	sd	zero,0(a0)
    80001780:	00053423          	sd	zero,8(a0)
    80001784:	00a4b423          	sd	a0,8(s1)
}
    80001788:	01813083          	ld	ra,24(sp)
    8000178c:	01013403          	ld	s0,16(sp)
    80001790:	00813483          	ld	s1,8(sp)
    80001794:	02010113          	addi	sp,sp,32
    80001798:	00008067          	ret

000000008000179c <_ZN3Sem5blockEv>:
void Sem::block() {
    8000179c:	fe010113          	addi	sp,sp,-32
    800017a0:	00113c23          	sd	ra,24(sp)
    800017a4:	00813823          	sd	s0,16(sp)
    800017a8:	00913423          	sd	s1,8(sp)
    800017ac:	01213023          	sd	s2,0(sp)
    800017b0:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800017b4:	0000b917          	auipc	s2,0xb
    800017b8:	74c93903          	ld	s2,1868(s2) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    800017bc:	00093483          	ld	s1,0(s2)
    old -> sem = this;
    800017c0:	06a4b023          	sd	a0,96(s1)
    old -> status = TCB::BLOCKED;
    800017c4:	00200793          	li	a5,2
    800017c8:	02f4a023          	sw	a5,32(s1)
    blocked_threads -> push_back(old);
    800017cc:	00048593          	mv	a1,s1
    800017d0:	00853503          	ld	a0,8(a0)
    800017d4:	00002097          	auipc	ra,0x2
    800017d8:	ba0080e7          	jalr	-1120(ra) # 80003374 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	3d0080e7          	jalr	976(ra) # 80002bac <_ZN9Scheduler3getEv>
    800017e4:	00050593          	mv	a1,a0
    800017e8:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	d98080e7          	jalr	-616(ra) # 80003588 <_ZN3TCB5yieldEPS_S0_>
}
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	00013903          	ld	s2,0(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret

0000000080001810 <_ZN3Sem7unblockEv>:
void Sem::unblock() {
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00113c23          	sd	ra,24(sp)
    80001818:	00813823          	sd	s0,16(sp)
    8000181c:	00913423          	sd	s1,8(sp)
    80001820:	02010413          	addi	s0,sp,32
    TCB* thread = blocked_threads -> remove_first();
    80001824:	00853503          	ld	a0,8(a0)
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	bdc080e7          	jalr	-1060(ra) # 80003404 <_ZN10ThreadList12remove_firstEv>
    80001830:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001834:	00001097          	auipc	ra,0x1
    80001838:	3e4080e7          	jalr	996(ra) # 80002c18 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000183c:	00000593          	li	a1,0
    80001840:	00048513          	mv	a0,s1
    80001844:	00002097          	auipc	ra,0x2
    80001848:	0bc080e7          	jalr	188(ra) # 80003900 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    8000184c:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001850:	00048513          	mv	a0,s1
    80001854:	00001097          	auipc	ra,0x1
    80001858:	2e4080e7          	jalr	740(ra) # 80002b38 <_ZN9Scheduler3putEP3TCB>
}
    8000185c:	01813083          	ld	ra,24(sp)
    80001860:	01013403          	ld	s0,16(sp)
    80001864:	00813483          	ld	s1,8(sp)
    80001868:	02010113          	addi	sp,sp,32
    8000186c:	00008067          	ret

0000000080001870 <_ZN3Sem5closeEPS_>:
int Sem::close(Sem *handle) {
    80001870:	fe010113          	addi	sp,sp,-32
    80001874:	00113c23          	sd	ra,24(sp)
    80001878:	00813823          	sd	s0,16(sp)
    8000187c:	00913423          	sd	s1,8(sp)
    80001880:	02010413          	addi	s0,sp,32
    80001884:	00050493          	mv	s1,a0
    if (!handle) return -1;
    80001888:	04050663          	beqz	a0,800018d4 <_ZN3Sem5closeEPS_+0x64>
    while (handle -> blocked_threads -> get_first()) handle -> unblock();
    8000188c:	0084b503          	ld	a0,8(s1)
    80001890:	00002097          	auipc	ra,0x2
    80001894:	9c8080e7          	jalr	-1592(ra) # 80003258 <_ZN10ThreadList9get_firstEv>
    80001898:	00050a63          	beqz	a0,800018ac <_ZN3Sem5closeEPS_+0x3c>
    8000189c:	00048513          	mv	a0,s1
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	f70080e7          	jalr	-144(ra) # 80001810 <_ZN3Sem7unblockEv>
    800018a8:	fe5ff06f          	j	8000188c <_ZN3Sem5closeEPS_+0x1c>
    delete handle;
    800018ac:	0004b783          	ld	a5,0(s1)
    800018b0:	0087b783          	ld	a5,8(a5)
    800018b4:	00048513          	mv	a0,s1
    800018b8:	000780e7          	jalr	a5
    return 0;
    800018bc:	00000513          	li	a0,0
}
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	02010113          	addi	sp,sp,32
    800018d0:	00008067          	ret
    if (!handle) return -1;
    800018d4:	fff00513          	li	a0,-1
    800018d8:	fe9ff06f          	j	800018c0 <_ZN3Sem5closeEPS_+0x50>

00000000800018dc <_ZN3Sem4waitEPS_>:
    if (!handle) return -1;
    800018dc:	04050663          	beqz	a0,80001928 <_ZN3Sem4waitEPS_+0x4c>
    if (--handle -> value < 0) {
    800018e0:	01052783          	lw	a5,16(a0)
    800018e4:	fff7879b          	addiw	a5,a5,-1
    800018e8:	00f52823          	sw	a5,16(a0)
    800018ec:	02079713          	slli	a4,a5,0x20
    800018f0:	00074663          	bltz	a4,800018fc <_ZN3Sem4waitEPS_+0x20>
    return 0;
    800018f4:	00000513          	li	a0,0
}
    800018f8:	00008067          	ret
int Sem::wait(Sem *handle) {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00113423          	sd	ra,8(sp)
    80001904:	00813023          	sd	s0,0(sp)
    80001908:	01010413          	addi	s0,sp,16
        handle -> block();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	e90080e7          	jalr	-368(ra) # 8000179c <_ZN3Sem5blockEv>
    return 0;
    80001914:	00000513          	li	a0,0
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret
    if (!handle) return -1;
    80001928:	fff00513          	li	a0,-1
    8000192c:	00008067          	ret

0000000080001930 <_ZN3Sem6signalEPS_>:
    if (!handle) return -1;
    80001930:	04050663          	beqz	a0,8000197c <_ZN3Sem6signalEPS_+0x4c>
    if (++handle -> value <= 0) handle -> unblock();
    80001934:	01052783          	lw	a5,16(a0)
    80001938:	0017879b          	addiw	a5,a5,1
    8000193c:	0007871b          	sext.w	a4,a5
    80001940:	00f52823          	sw	a5,16(a0)
    80001944:	00e05663          	blez	a4,80001950 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001948:	00000513          	li	a0,0
}
    8000194c:	00008067          	ret
int Sem::signal(Sem *handle) {
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    if (++handle -> value <= 0) handle -> unblock();
    80001960:	00000097          	auipc	ra,0x0
    80001964:	eb0080e7          	jalr	-336(ra) # 80001810 <_ZN3Sem7unblockEv>
    return 0;
    80001968:	00000513          	li	a0,0
}
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret
    if (!handle) return -1;
    8000197c:	fff00513          	li	a0,-1
    80001980:	00008067          	ret

0000000080001984 <_ZN3Sem9timedWaitEPS_m>:
int Sem::timedWait(Sem *handle, time_t time) {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	01213023          	sd	s2,0(sp)
    80001998:	02010413          	addi	s0,sp,32
    8000199c:	00050913          	mv	s2,a0
    800019a0:	00058513          	mv	a0,a1
    TCB *thread = TCB::running;
    800019a4:	0000b797          	auipc	a5,0xb
    800019a8:	55c7b783          	ld	a5,1372(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    800019ac:	0007b483          	ld	s1,0(a5)
    thread -> timed_wait = true;
    800019b0:	00100793          	li	a5,1
    800019b4:	04f48423          	sb	a5,72(s1)
    Scheduler::put_to_sleep(time, false);
    800019b8:	00000593          	li	a1,0
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	360080e7          	jalr	864(ra) # 80002d1c <_ZN9Scheduler12put_to_sleepEmb>
    int status = wait(handle);
    800019c4:	00090513          	mv	a0,s2
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	f14080e7          	jalr	-236(ra) # 800018dc <_ZN3Sem4waitEPS_>
    800019d0:	00050913          	mv	s2,a0
    Scheduler::remove_from_sleep(thread);
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	240080e7          	jalr	576(ra) # 80002c18 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    800019e0:	00000593          	li	a1,0
    800019e4:	00048513          	mv	a0,s1
    800019e8:	00002097          	auipc	ra,0x2
    800019ec:	f18080e7          	jalr	-232(ra) # 80003900 <_ZN3TCB21clear_from_timed_waitEb>
    if (thread -> time_to_sleep == 0) return -2;
    800019f0:	0504b783          	ld	a5,80(s1)
    800019f4:	02078063          	beqz	a5,80001a14 <_ZN3Sem9timedWaitEPS_m+0x90>
}
    800019f8:	00090513          	mv	a0,s2
    800019fc:	01813083          	ld	ra,24(sp)
    80001a00:	01013403          	ld	s0,16(sp)
    80001a04:	00813483          	ld	s1,8(sp)
    80001a08:	00013903          	ld	s2,0(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret
    if (thread -> time_to_sleep == 0) return -2;
    80001a14:	ffe00913          	li	s2,-2
    80001a18:	fe1ff06f          	j	800019f8 <_ZN3Sem9timedWaitEPS_m+0x74>

0000000080001a1c <_ZN3Sem7tryWaitEPS_>:
    if (handle -> value > 0) return wait(handle);
    80001a1c:	01052783          	lw	a5,16(a0)
    80001a20:	00f04663          	bgtz	a5,80001a2c <_ZN3Sem7tryWaitEPS_+0x10>
    return 1;
    80001a24:	00100513          	li	a0,1
}
    80001a28:	00008067          	ret
int Sem::tryWait(Sem *handle) {
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00113423          	sd	ra,8(sp)
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	01010413          	addi	s0,sp,16
    if (handle -> value > 0) return wait(handle);
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	ea0080e7          	jalr	-352(ra) # 800018dc <_ZN3Sem4waitEPS_>
}
    80001a44:	00813083          	ld	ra,8(sp)
    80001a48:	00013403          	ld	s0,0(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret

0000000080001a54 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00113423          	sd	ra,8(sp)
    80001a5c:	00813023          	sd	s0,0(sp)
    80001a60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	e08080e7          	jalr	-504(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	af8080e7          	jalr	-1288(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN3SemdlEPv>:

void Sem::operator delete(void *addr) {
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00113423          	sd	ra,8(sp)
    80001a8c:	00813023          	sd	s0,0(sp)
    80001a90:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	c44080e7          	jalr	-956(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001a9c:	00813083          	ld	ra,8(sp)
    80001aa0:	00013403          	ld	s0,0(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    80001aac:	fd010113          	addi	sp,sp,-48
    80001ab0:	02113423          	sd	ra,40(sp)
    80001ab4:	02813023          	sd	s0,32(sp)
    80001ab8:	00913c23          	sd	s1,24(sp)
    80001abc:	01213823          	sd	s2,16(sp)
    80001ac0:	01313423          	sd	s3,8(sp)
    80001ac4:	03010413          	addi	s0,sp,48
    80001ac8:	00050913          	mv	s2,a0
    80001acc:	00058993          	mv	s3,a1
    *handle = new Sem(init);
    80001ad0:	01800513          	li	a0,24
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	f80080e7          	jalr	-128(ra) # 80001a54 <_ZN3SemnwEm>
    80001adc:	00050493          	mv	s1,a0
    80001ae0:	00098593          	mv	a1,s3
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	c64080e7          	jalr	-924(ra) # 80001748 <_ZN3SemC1Ej>
    80001aec:	00993023          	sd	s1,0(s2)
    if (!(*handle)) return -1;
    80001af0:	02048263          	beqz	s1,80001b14 <_ZN3Sem4openEPPS_j+0x68>
    return 0;
    80001af4:	00000513          	li	a0,0
}
    80001af8:	02813083          	ld	ra,40(sp)
    80001afc:	02013403          	ld	s0,32(sp)
    80001b00:	01813483          	ld	s1,24(sp)
    80001b04:	01013903          	ld	s2,16(sp)
    80001b08:	00813983          	ld	s3,8(sp)
    80001b0c:	03010113          	addi	sp,sp,48
    80001b10:	00008067          	ret
    if (!(*handle)) return -1;
    80001b14:	fff00513          	li	a0,-1
    80001b18:	fe1ff06f          	j	80001af8 <_ZN3Sem4openEPPS_j+0x4c>
    80001b1c:	00050913          	mv	s2,a0
    *handle = new Sem(init);
    80001b20:	00048513          	mv	a0,s1
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	f60080e7          	jalr	-160(ra) # 80001a84 <_ZN3SemdlEPv>
    80001b2c:	00090513          	mv	a0,s2
    80001b30:	0000c097          	auipc	ra,0xc
    80001b34:	5f8080e7          	jalr	1528(ra) # 8000e128 <_Unwind_Resume>

0000000080001b38 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    80001b4c:	00050493          	mv	s1,a0
}
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	ba4080e7          	jalr	-1116(ra) # 800016f4 <_ZN3SemD1Ev>
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	f28080e7          	jalr	-216(ra) # 80001a84 <_ZN3SemdlEPv>
    80001b64:	01813083          	ld	ra,24(sp)
    80001b68:	01013403          	ld	s0,16(sp)
    80001b6c:	00813483          	ld	s1,8(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00008067          	ret

0000000080001b78 <_Z19kernelConsoleOutputPv>:
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00113423          	sd	ra,8(sp)
    80001b80:	00813023          	sd	s0,0(sp)
    80001b84:	01010413          	addi	s0,sp,16
    80001b88:	01c0006f          	j	80001ba4 <_Z19kernelConsoleOutputPv+0x2c>
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            char c = Con::getc_output();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	334080e7          	jalr	820(ra) # 80001ec0 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b94:	0000b797          	auipc	a5,0xb
    80001b98:	3447b783          	ld	a5,836(a5) # 8000ced8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b9c:	0007b783          	ld	a5,0(a5)
    80001ba0:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001ba4:	0000b797          	auipc	a5,0xb
    80001ba8:	31c7b783          	ld	a5,796(a5) # 8000cec0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001bac:	0007b783          	ld	a5,0(a5)
    80001bb0:	0007c783          	lbu	a5,0(a5)
    80001bb4:	0207f793          	andi	a5,a5,32
    80001bb8:	fc079ae3          	bnez	a5,80001b8c <_Z19kernelConsoleOutputPv+0x14>
        }
        /// if there isn't ready data, dispatch in order not to occupy CPU for the DEFAULT_TIME_SLICE
        thread_dispatch();
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	810080e7          	jalr	-2032(ra) # 800013cc <_Z15thread_dispatchv>
    }
    80001bc4:	fe1ff06f          	j	80001ba4 <_Z19kernelConsoleOutputPv+0x2c>

0000000080001bc8 <_Z6workerPv>:
    userMain();
}

sem_t sem;

void worker(void*) {
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	01213023          	sd	s2,0(sp)
    80001bdc:	02010413          	addi	s0,sp,32
    int i = 3;
    80001be0:	00300913          	li	s2,3
    80001be4:	0740006f          	j	80001c58 <_Z6workerPv+0x90>
    while (i > 0) {
        int id = get_thread_id();
        int status = sem_timedwait(sem, id);
        if (status == 0) {
            printString("\nUSAO ");
    80001be8:	00008517          	auipc	a0,0x8
    80001bec:	43850513          	addi	a0,a0,1080 # 8000a020 <CONSOLE_STATUS+0x10>
    80001bf0:	00004097          	auipc	ra,0x4
    80001bf4:	21c080e7          	jalr	540(ra) # 80005e0c <_Z11printStringPKc>
            printInt(id);
    80001bf8:	00000613          	li	a2,0
    80001bfc:	00a00593          	li	a1,10
    80001c00:	00048513          	mv	a0,s1
    80001c04:	00004097          	auipc	ra,0x4
    80001c08:	3b8080e7          	jalr	952(ra) # 80005fbc <_Z8printIntiii>
            time_sleep(id);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	9c4080e7          	jalr	-1596(ra) # 800015d4 <_Z10time_sleepm>
            printString("\nIZASAO ");
    80001c18:	00008517          	auipc	a0,0x8
    80001c1c:	41050513          	addi	a0,a0,1040 # 8000a028 <CONSOLE_STATUS+0x18>
    80001c20:	00004097          	auipc	ra,0x4
    80001c24:	1ec080e7          	jalr	492(ra) # 80005e0c <_Z11printStringPKc>
            printInt(id);
    80001c28:	00000613          	li	a2,0
    80001c2c:	00a00593          	li	a1,10
    80001c30:	00048513          	mv	a0,s1
    80001c34:	00004097          	auipc	ra,0x4
    80001c38:	388080e7          	jalr	904(ra) # 80005fbc <_Z8printIntiii>
            sem_signal(sem);
    80001c3c:	0000b517          	auipc	a0,0xb
    80001c40:	31453503          	ld	a0,788(a0) # 8000cf50 <sem>
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	8ac080e7          	jalr	-1876(ra) # 800014f0 <_Z10sem_signalP3Sem>
            --i;
    80001c4c:	fff9091b          	addiw	s2,s2,-1
        }
        else if (status == -2) {
            printString("\nCEKAO ");
            printInt(id);
        }
        thread_dispatch();
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	77c080e7          	jalr	1916(ra) # 800013cc <_Z15thread_dispatchv>
    while (i > 0) {
    80001c58:	05205c63          	blez	s2,80001cb0 <_Z6workerPv+0xe8>
        int id = get_thread_id();
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	a4c080e7          	jalr	-1460(ra) # 800016a8 <_Z13get_thread_idv>
    80001c64:	00050493          	mv	s1,a0
        int status = sem_timedwait(sem, id);
    80001c68:	00050593          	mv	a1,a0
    80001c6c:	0000b517          	auipc	a0,0xb
    80001c70:	2e453503          	ld	a0,740(a0) # 8000cf50 <sem>
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	8c8080e7          	jalr	-1848(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
        if (status == 0) {
    80001c7c:	f60506e3          	beqz	a0,80001be8 <_Z6workerPv+0x20>
        else if (status == -2) {
    80001c80:	ffe00793          	li	a5,-2
    80001c84:	fcf516e3          	bne	a0,a5,80001c50 <_Z6workerPv+0x88>
            printString("\nCEKAO ");
    80001c88:	00008517          	auipc	a0,0x8
    80001c8c:	3b050513          	addi	a0,a0,944 # 8000a038 <CONSOLE_STATUS+0x28>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	17c080e7          	jalr	380(ra) # 80005e0c <_Z11printStringPKc>
            printInt(id);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00a00593          	li	a1,10
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	00004097          	auipc	ra,0x4
    80001ca8:	318080e7          	jalr	792(ra) # 80005fbc <_Z8printIntiii>
    80001cac:	fa5ff06f          	j	80001c50 <_Z6workerPv+0x88>
    }
}
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00813483          	ld	s1,8(sp)
    80001cbc:	00013903          	ld	s2,0(sp)
    80001cc0:	02010113          	addi	sp,sp,32
    80001cc4:	00008067          	ret

0000000080001cc8 <_Z11userWrapperPv>:
void userWrapper(void *args) {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    userMain();
    80001cd8:	00004097          	auipc	ra,0x4
    80001cdc:	7fc080e7          	jalr	2044(ra) # 800064d4 <_Z8userMainv>
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <main>:

thread_t threads[12];

int main() {
    80001cf0:	fe010113          	addi	sp,sp,-32
    80001cf4:	00113c23          	sd	ra,24(sp)
    80001cf8:	00813823          	sd	s0,16(sp)
    80001cfc:	00913423          	sd	s1,8(sp)
    80001d00:	02010413          	addi	s0,sp,32
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d04:	0000b797          	auipc	a5,0xb
    80001d08:	1dc7b783          	ld	a5,476(a5) # 8000cee0 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d0c:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	b7c080e7          	jalr	-1156(ra) # 8000288c <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	0b0080e7          	jalr	176(ra) # 80001dc8 <_ZN3Con10initializeEv>

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001d20:	0000b497          	auipc	s1,0xb
    80001d24:	23048493          	addi	s1,s1,560 # 8000cf50 <sem>
    80001d28:	00000613          	li	a2,0
    80001d2c:	00000593          	li	a1,0
    80001d30:	0000b517          	auipc	a0,0xb
    80001d34:	22850513          	addi	a0,a0,552 # 8000cf58 <threads>
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	5c0080e7          	jalr	1472(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d40:	0084b703          	ld	a4,8(s1)
    80001d44:	0000b797          	auipc	a5,0xb
    80001d48:	1bc7b783          	ld	a5,444(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d4c:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d50:	00200793          	li	a5,2
    80001d54:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d58:	00000613          	li	a2,0
    80001d5c:	00000597          	auipc	a1,0x0
    80001d60:	e1c58593          	addi	a1,a1,-484 # 80001b78 <_Z19kernelConsoleOutputPv>
    80001d64:	0000b517          	auipc	a0,0xb
    80001d68:	1fc50513          	addi	a0,a0,508 # 8000cf60 <threads+0x8>
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	58c080e7          	jalr	1420(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    sem_open(&sem, 1);
    80001d74:	00100593          	li	a1,1
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	68c080e7          	jalr	1676(ra) # 80001408 <_Z8sem_openPP3Semj>
    for (int i = 2; i < 5; ++i) thread_create(&threads[i], worker, nullptr);
    80001d84:	00200493          	li	s1,2
    80001d88:	00400793          	li	a5,4
    80001d8c:	0297c863          	blt	a5,s1,80001dbc <main+0xcc>
    80001d90:	00349793          	slli	a5,s1,0x3
    80001d94:	00000613          	li	a2,0
    80001d98:	00000597          	auipc	a1,0x0
    80001d9c:	e3058593          	addi	a1,a1,-464 # 80001bc8 <_Z6workerPv>
    80001da0:	0000b517          	auipc	a0,0xb
    80001da4:	1b850513          	addi	a0,a0,440 # 8000cf58 <threads>
    80001da8:	00f50533          	add	a0,a0,a5
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	54c080e7          	jalr	1356(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001db4:	0014849b          	addiw	s1,s1,1
    80001db8:	fd1ff06f          	j	80001d88 <main+0x98>

    while (true) thread_dispatch();
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	610080e7          	jalr	1552(ra) # 800013cc <_Z15thread_dispatchv>
    80001dc4:	ff9ff06f          	j	80001dbc <main+0xcc>

0000000080001dc8 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001dc8:	0000b797          	auipc	a5,0xb
    80001dcc:	1f07c783          	lbu	a5,496(a5) # 8000cfb8 <_ZN3Con11initializedE>
    80001dd0:	00078463          	beqz	a5,80001dd8 <_ZN3Con10initializeEv+0x10>
    80001dd4:	00008067          	ret
void Con::initialize() {
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	01213023          	sd	s2,0(sp)
    80001dec:	02010413          	addi	s0,sp,32
        initialized = true;
    80001df0:	00100793          	li	a5,1
    80001df4:	0000b717          	auipc	a4,0xb
    80001df8:	1cf70223          	sb	a5,452(a4) # 8000cfb8 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001dfc:	21000513          	li	a0,528
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	bac080e7          	jalr	-1108(ra) # 800029ac <_ZN13BoundedBuffernwEm>
    80001e08:	00050493          	mv	s1,a0
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	b08080e7          	jalr	-1272(ra) # 80002914 <_ZN13BoundedBufferC1Ev>
    80001e14:	0000b797          	auipc	a5,0xb
    80001e18:	1a97b623          	sd	s1,428(a5) # 8000cfc0 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001e1c:	21000513          	li	a0,528
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	b8c080e7          	jalr	-1140(ra) # 800029ac <_ZN13BoundedBuffernwEm>
    80001e28:	00050493          	mv	s1,a0
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	ae8080e7          	jalr	-1304(ra) # 80002914 <_ZN13BoundedBufferC1Ev>
    80001e34:	0000b797          	auipc	a5,0xb
    80001e38:	1897ba23          	sd	s1,404(a5) # 8000cfc8 <_ZN3Con13output_bufferE>
    }
}
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	00013903          	ld	s2,0(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret
    80001e54:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001e58:	00048513          	mv	a0,s1
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	b80080e7          	jalr	-1152(ra) # 800029dc <_ZN13BoundedBufferdlEPv>
    80001e64:	00090513          	mv	a0,s2
    80001e68:	0000c097          	auipc	ra,0xc
    80001e6c:	2c0080e7          	jalr	704(ra) # 8000e128 <_Unwind_Resume>
    80001e70:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e74:	00048513          	mv	a0,s1
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	b64080e7          	jalr	-1180(ra) # 800029dc <_ZN13BoundedBufferdlEPv>
    80001e80:	00090513          	mv	a0,s2
    80001e84:	0000c097          	auipc	ra,0xc
    80001e88:	2a4080e7          	jalr	676(ra) # 8000e128 <_Unwind_Resume>

0000000080001e8c <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001ea0:	0000b517          	auipc	a0,0xb
    80001ea4:	12853503          	ld	a0,296(a0) # 8000cfc8 <_ZN3Con13output_bufferE>
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	b5c080e7          	jalr	-1188(ra) # 80002a04 <_ZN13BoundedBuffer4putcEc>
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001ed0:	0000b517          	auipc	a0,0xb
    80001ed4:	0f853503          	ld	a0,248(a0) # 8000cfc8 <_ZN3Con13output_bufferE>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	b98080e7          	jalr	-1128(ra) # 80002a70 <_ZN13BoundedBuffer4getcEv>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001f04:	0000b517          	auipc	a0,0xb
    80001f08:	0bc53503          	ld	a0,188(a0) # 8000cfc0 <_ZN3Con12input_bufferE>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	af8080e7          	jalr	-1288(ra) # 80002a04 <_ZN13BoundedBuffer4putcEc>
}
    80001f14:	00813083          	ld	ra,8(sp)
    80001f18:	00013403          	ld	s0,0(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00113423          	sd	ra,8(sp)
    80001f2c:	00813023          	sd	s0,0(sp)
    80001f30:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001f34:	0000b517          	auipc	a0,0xb
    80001f38:	08c53503          	ld	a0,140(a0) # 8000cfc0 <_ZN3Con12input_bufferE>
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	b34080e7          	jalr	-1228(ra) # 80002a70 <_ZN13BoundedBuffer4getcEv>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN3Con19isOutputBufferEmptyEv>:

bool Con::isOutputBufferEmpty() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    return output_buffer -> isEmpty();
    80001f64:	0000b517          	auipc	a0,0xb
    80001f68:	06453503          	ld	a0,100(a0) # 8000cfc8 <_ZN3Con13output_bufferE>
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	b70080e7          	jalr	-1168(ra) # 80002adc <_ZN13BoundedBuffer7isEmptyEv>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN3Con18isOutputBufferFullEv>:

bool Con::isOutputBufferFull() {
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00113423          	sd	ra,8(sp)
    80001f8c:	00813023          	sd	s0,0(sp)
    80001f90:	01010413          	addi	s0,sp,16
    return output_buffer -> isFull();
    80001f94:	0000b517          	auipc	a0,0xb
    80001f98:	03453503          	ld	a0,52(a0) # 8000cfc8 <_ZN3Con13output_bufferE>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	b68080e7          	jalr	-1176(ra) # 80002b04 <_ZN13BoundedBuffer6isFullEv>
}
    80001fa4:	00813083          	ld	ra,8(sp)
    80001fa8:	00013403          	ld	s0,0(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001fc4:	01053783          	ld	a5,16(a0)
    80001fc8:	00078e63          	beqz	a5,80001fe4 <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001fcc:	01853503          	ld	a0,24(a0)
    80001fd0:	000780e7          	jalr	a5
}
    80001fd4:	00813083          	ld	ra,8(sp)
    80001fd8:	00013403          	ld	s0,0(sp)
    80001fdc:	01010113          	addi	sp,sp,16
    80001fe0:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001fe4:	00053783          	ld	a5,0(a0)
    80001fe8:	0107b783          	ld	a5,16(a5)
    80001fec:	000780e7          	jalr	a5
    80001ff0:	fe5ff06f          	j	80001fd4 <_ZN6Thread12start_helperEPv+0x20>

0000000080001ff4 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001ff4:	fe010113          	addi	sp,sp,-32
    80001ff8:	00113c23          	sd	ra,24(sp)
    80001ffc:	00813823          	sd	s0,16(sp)
    80002000:	00913423          	sd	s1,8(sp)
    80002004:	02010413          	addi	s0,sp,32
    80002008:	00050493          	mv	s1,a0
    8000200c:	0000b797          	auipc	a5,0xb
    80002010:	c8c78793          	addi	a5,a5,-884 # 8000cc98 <_ZTV6Thread+0x10>
    80002014:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80002018:	00853503          	ld	a0,8(a0)
    8000201c:	00002097          	auipc	ra,0x2
    80002020:	8c0080e7          	jalr	-1856(ra) # 800038dc <_ZNK3TCB11is_finishedEv>
    80002024:	00050a63          	beqz	a0,80002038 <_ZN6ThreadD1Ev+0x44>
    80002028:	0084b503          	ld	a0,8(s1)
    8000202c:	00050663          	beqz	a0,80002038 <_ZN6ThreadD1Ev+0x44>
    80002030:	00001097          	auipc	ra,0x1
    80002034:	780080e7          	jalr	1920(ra) # 800037b0 <_ZN3TCBdlEPv>
}
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = period;
}

void PeriodicThread::run() {
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	02010413          	addi	s0,sp,32
    80002060:	00050493          	mv	s1,a0
    while (period != (time_t) -1) {
    80002064:	0204b703          	ld	a4,32(s1)
    80002068:	fff00793          	li	a5,-1
    8000206c:	02f70263          	beq	a4,a5,80002090 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80002070:	0004b783          	ld	a5,0(s1)
    80002074:	0187b783          	ld	a5,24(a5)
    80002078:	00048513          	mv	a0,s1
    8000207c:	000780e7          	jalr	a5
        time_sleep(period);
    80002080:	0204b503          	ld	a0,32(s1)
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	550080e7          	jalr	1360(ra) # 800015d4 <_Z10time_sleepm>
    while (period != (time_t) -1) {
    8000208c:	fd9ff06f          	j	80002064 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002090:	01813083          	ld	ra,24(sp)
    80002094:	01013403          	ld	s0,16(sp)
    80002098:	00813483          	ld	s1,8(sp)
    8000209c:	02010113          	addi	sp,sp,32
    800020a0:	00008067          	ret

00000000800020a4 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800020a4:	0000b797          	auipc	a5,0xb
    800020a8:	c1c78793          	addi	a5,a5,-996 # 8000ccc0 <_ZTV9Semaphore+0x10>
    800020ac:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    800020b0:	00853503          	ld	a0,8(a0)
    800020b4:	02050663          	beqz	a0,800020e0 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	390080e7          	jalr	912(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret
    800020e0:	00008067          	ret

00000000800020e4 <_Znwm>:
void* operator new(size_t size){
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	164080e7          	jalr	356(ra) # 80001258 <_Z9mem_allocm>
}
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_ZdlPv>:
void operator delete(void* p) noexcept {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	190080e7          	jalr	400(ra) # 800012ac <_Z8mem_freePv>
}
    80002124:	00813083          	ld	ra,8(sp)
    80002128:	00013403          	ld	s0,0(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
    80002148:	00050493          	mv	s1,a0
}
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	ea8080e7          	jalr	-344(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80002154:	00048513          	mv	a0,s1
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	fb4080e7          	jalr	-76(ra) # 8000210c <_ZdlPv>
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret

0000000080002174 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
    80002188:	00050493          	mv	s1,a0
}
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	f18080e7          	jalr	-232(ra) # 800020a4 <_ZN9SemaphoreD1Ev>
    80002194:	00048513          	mv	a0,s1
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	f74080e7          	jalr	-140(ra) # 8000210c <_ZdlPv>
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	01013403          	ld	s0,16(sp)
    800021a8:	00813483          	ld	s1,8(sp)
    800021ac:	02010113          	addi	sp,sp,32
    800021b0:	00008067          	ret

00000000800021b4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00813423          	sd	s0,8(sp)
    800021bc:	01010413          	addi	s0,sp,16
    800021c0:	0000b797          	auipc	a5,0xb
    800021c4:	ad878793          	addi	a5,a5,-1320 # 8000cc98 <_ZTV6Thread+0x10>
    800021c8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021cc:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800021d0:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800021d4:	00c53c23          	sd	a2,24(a0)
}
    800021d8:	00813403          	ld	s0,8(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16
    800021f0:	0000b797          	auipc	a5,0xb
    800021f4:	aa878793          	addi	a5,a5,-1368 # 8000cc98 <_ZTV6Thread+0x10>
    800021f8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021fc:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002200:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80002204:	00053c23          	sd	zero,24(a0)
}
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret

0000000080002214 <_ZN6Thread5startEv>:
int Thread::start() {
    80002214:	ff010113          	addi	sp,sp,-16
    80002218:	00113423          	sd	ra,8(sp)
    8000221c:	00813023          	sd	s0,0(sp)
    80002220:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80002224:	00050613          	mv	a2,a0
    80002228:	00000597          	auipc	a1,0x0
    8000222c:	d8c58593          	addi	a1,a1,-628 # 80001fb4 <_ZN6Thread12start_helperEPv>
    80002230:	00850513          	addi	a0,a0,8
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	0c4080e7          	jalr	196(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000223c:	00813083          	ld	ra,8(sp)
    80002240:	00013403          	ld	s0,0(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	170080e7          	jalr	368(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002284:	fffff097          	auipc	ra,0xfffff
    80002288:	350080e7          	jalr	848(ra) # 800015d4 <_Z10time_sleepm>
}
    8000228c:	00813083          	ld	ra,8(sp)
    80002290:	00013403          	ld	s0,0(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	0000b797          	auipc	a5,0xb
    800022b0:	a1478793          	addi	a5,a5,-1516 # 8000ccc0 <_ZTV9Semaphore+0x10>
    800022b4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800022b8:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800022bc:	00850513          	addi	a0,a0,8
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	148080e7          	jalr	328(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    800022d8:	00853503          	ld	a0,8(a0)
    800022dc:	02050663          	beqz	a0,80002308 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00113423          	sd	ra,8(sp)
    800022e8:	00813023          	sd	s0,0(sp)
    800022ec:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	1b4080e7          	jalr	436(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret
    return -1;
    80002308:	fff00513          	li	a0,-1
}
    8000230c:	00008067          	ret

0000000080002310 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002310:	00853503          	ld	a0,8(a0)
    80002314:	02050663          	beqz	a0,80002340 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	00813023          	sd	s0,0(sp)
    80002324:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	1c8080e7          	jalr	456(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80002330:	00813083          	ld	ra,8(sp)
    80002334:	00013403          	ld	s0,0(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret
    return -1;
    80002340:	fff00513          	li	a0,-1
}
    80002344:	00008067          	ret

0000000080002348 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002358:	00853503          	ld	a0,8(a0)
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	1e0080e7          	jalr	480(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002384:	00853503          	ld	a0,8(a0)
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	200080e7          	jalr	512(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    period = (time_t) -1;
    800023ac:	fff00793          	li	a5,-1
    800023b0:	02f53023          	sd	a5,32(a0)
}
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800023c0:	fe010113          	addi	sp,sp,-32
    800023c4:	00113c23          	sd	ra,24(sp)
    800023c8:	00813823          	sd	s0,16(sp)
    800023cc:	00913423          	sd	s1,8(sp)
    800023d0:	01213023          	sd	s2,0(sp)
    800023d4:	02010413          	addi	s0,sp,32
    800023d8:	00050493          	mv	s1,a0
    800023dc:	00058913          	mv	s2,a1
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	e04080e7          	jalr	-508(ra) # 800021e4 <_ZN6ThreadC1Ev>
    800023e8:	0000b797          	auipc	a5,0xb
    800023ec:	8f878793          	addi	a5,a5,-1800 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    800023f0:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    800023f4:	0324b023          	sd	s2,32(s1)
}
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	00013903          	ld	s2,0(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret

0000000080002410 <_ZN7Console4getcEv>:

char Console::getc() {
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	200080e7          	jalr	512(ra) # 80001620 <_Z4getcv>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	224080e7          	jalr	548(ra) # 8000166c <_Z4putcc>
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00813423          	sd	s0,8(sp)
    80002468:	01010413          	addi	s0,sp,16
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    virtual void run() override;
    virtual void periodicActivation () {}
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813423          	sd	s0,8(sp)
    80002480:	01010413          	addi	s0,sp,16
    80002484:	00813403          	ld	s0,8(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	01010413          	addi	s0,sp,16
    800024a0:	0000b797          	auipc	a5,0xb
    800024a4:	84078793          	addi	a5,a5,-1984 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    800024a8:	00f53023          	sd	a5,0(a0)
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	b48080e7          	jalr	-1208(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    800024b4:	00813083          	ld	ra,8(sp)
    800024b8:	00013403          	ld	s0,0(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN14PeriodicThreadD0Ev>:
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	02010413          	addi	s0,sp,32
    800024d8:	00050493          	mv	s1,a0
    800024dc:	0000b797          	auipc	a5,0xb
    800024e0:	80478793          	addi	a5,a5,-2044 # 8000cce0 <_ZTV14PeriodicThread+0x10>
    800024e4:	00f53023          	sd	a5,0(a0)
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	b0c080e7          	jalr	-1268(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    800024f0:	00048513          	mv	a0,s1
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	c18080e7          	jalr	-1000(ra) # 8000210c <_ZdlPv>
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00813423          	sd	s0,8(sp)
    80002518:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000251c:	00853783          	ld	a5,8(a0)
    80002520:	02078463          	beqz	a5,80002548 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002524:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    80002528:	01053783          	ld	a5,16(a0)
    8000252c:	00078863          	beqz	a5,8000253c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002530:	00061463          	bnez	a2,80002538 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002534:	00853583          	ld	a1,8(a0)
    80002538:	00b7b423          	sd	a1,8(a5)
}
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    80002548:	00068863          	beqz	a3,80002558 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    8000254c:	0000b797          	auipc	a5,0xb
    80002550:	a8b7b223          	sd	a1,-1404(a5) # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
    80002554:	fd5ff06f          	j	80002528 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    80002558:	0000b797          	auipc	a5,0xb
    8000255c:	a8b7b023          	sd	a1,-1408(a5) # 8000cfd8 <_ZN15MemoryAllocator11usedSegHeadE>
    80002560:	fc9ff06f          	j	80002528 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002564 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	01213023          	sd	s2,0(sp)
    80002578:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    8000257c:	10050263          	beqz	a0,80002680 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002580:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002584:	0000b497          	auipc	s1,0xb
    80002588:	a4c4b483          	ld	s1,-1460(s1) # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    8000258c:	0c048263          	beqz	s1,80002650 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    80002590:	0004b783          	ld	a5,0(s1)
    80002594:	0527e663          	bltu	a5,s2,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002598:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    8000259c:	01800713          	li	a4,24
    800025a0:	04f76463          	bltu	a4,a5,800025e8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800025a4:	00100693          	li	a3,1
    800025a8:	00000613          	li	a2,0
    800025ac:	0104b583          	ld	a1,16(s1)
    800025b0:	00048513          	mv	a0,s1
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	f5c080e7          	jalr	-164(ra) # 80002510 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800025bc:	0000b797          	auipc	a5,0xb
    800025c0:	a1c7b783          	ld	a5,-1508(a5) # 8000cfd8 <_ZN15MemoryAllocator11usedSegHeadE>
    800025c4:	04078a63          	beqz	a5,80002618 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800025c8:	0497fc63          	bgeu	a5,s1,80002620 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800025cc:	00078713          	mv	a4,a5
    800025d0:	0107b783          	ld	a5,16(a5)
    800025d4:	04078863          	beqz	a5,80002624 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800025d8:	fe97eae3          	bltu	a5,s1,800025cc <_ZN15MemoryAllocator9mem_allocEm+0x68>
    800025dc:	0480006f          	j	80002624 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    800025e0:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800025e4:	fa9ff06f          	j	8000258c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800025e8:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800025ec:	0084b703          	ld	a4,8(s1)
    800025f0:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800025f4:	0104b703          	ld	a4,16(s1)
    800025f8:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800025fc:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    80002600:	00100693          	li	a3,1
    80002604:	00100613          	li	a2,1
    80002608:	00048513          	mv	a0,s1
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	f04080e7          	jalr	-252(ra) # 80002510 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    80002614:	fa9ff06f          	j	800025bc <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    80002618:	00078713          	mv	a4,a5
    8000261c:	0080006f          	j	80002624 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002620:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002624:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002628:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000262c:	04070063          	beqz	a4,8000266c <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002630:	01073783          	ld	a5,16(a4)
    80002634:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002638:	02070e63          	beqz	a4,80002674 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    8000263c:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002640:	0104b783          	ld	a5,16(s1)
    80002644:	00078463          	beqz	a5,8000264c <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002648:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    8000264c:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002650:	00048513          	mv	a0,s1
    80002654:	01813083          	ld	ra,24(sp)
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	00813483          	ld	s1,8(sp)
    80002660:	00013903          	ld	s2,0(sp)
    80002664:	02010113          	addi	sp,sp,32
    80002668:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000266c:	00070793          	mv	a5,a4
    80002670:	fc5ff06f          	j	80002634 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002674:	0000b797          	auipc	a5,0xb
    80002678:	9697b223          	sd	s1,-1692(a5) # 8000cfd8 <_ZN15MemoryAllocator11usedSegHeadE>
    8000267c:	fc5ff06f          	j	80002640 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002680:	00000493          	li	s1,0
    80002684:	fcdff06f          	j	80002650 <_ZN15MemoryAllocator9mem_allocEm+0xec>

0000000080002688 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002694:	01053783          	ld	a5,16(a0)
    80002698:	00078863          	beqz	a5,800026a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    8000269c:	00053703          	ld	a4,0(a0)
    800026a0:	00e506b3          	add	a3,a0,a4
    800026a4:	00d78863          	beq	a5,a3,800026b4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800026a8:	00813403          	ld	s0,8(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800026b4:	0007b683          	ld	a3,0(a5)
    800026b8:	00d70733          	add	a4,a4,a3
    800026bc:	01870713          	addi	a4,a4,24
    800026c0:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800026c4:	0107b783          	ld	a5,16(a5)
    800026c8:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800026cc:	fc078ee3          	beqz	a5,800026a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800026d0:	00a7b423          	sd	a0,8(a5)
}
    800026d4:	fd5ff06f          	j	800026a8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800026d8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026d8:	14050a63          	beqz	a0,8000282c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    800026dc:	fd010113          	addi	sp,sp,-48
    800026e0:	02113423          	sd	ra,40(sp)
    800026e4:	02813023          	sd	s0,32(sp)
    800026e8:	00913c23          	sd	s1,24(sp)
    800026ec:	01213823          	sd	s2,16(sp)
    800026f0:	01313423          	sd	s3,8(sp)
    800026f4:	03010413          	addi	s0,sp,48
    800026f8:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800026fc:	0000a797          	auipc	a5,0xa
    80002700:	7cc7b783          	ld	a5,1996(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002704:	0007b783          	ld	a5,0(a5)
    80002708:	12f56663          	bltu	a0,a5,80002834 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    8000270c:	0000a797          	auipc	a5,0xa
    80002710:	7fc7b783          	ld	a5,2044(a5) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002714:	0007b783          	ld	a5,0(a5)
    80002718:	12a7e263          	bltu	a5,a0,8000283c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    8000271c:	0000b797          	auipc	a5,0xb
    80002720:	8bc7b783          	ld	a5,-1860(a5) # 8000cfd8 <_ZN15MemoryAllocator11usedSegHeadE>
    80002724:	12078063          	beqz	a5,80002844 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002728:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000272c:	00078863          	beqz	a5,8000273c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002730:	0a978663          	beq	a5,s1,800027dc <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002734:	0107b783          	ld	a5,16(a5)
    80002738:	ff5ff06f          	j	8000272c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000273c:	00000793          	li	a5,0
    if (!found) return -3;
    80002740:	10078663          	beqz	a5,8000284c <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002744:	00000693          	li	a3,0
    80002748:	00000613          	li	a2,0
    8000274c:	ff893583          	ld	a1,-8(s2)
    80002750:	00048513          	mv	a0,s1
    80002754:	00000097          	auipc	ra,0x0
    80002758:	dbc080e7          	jalr	-580(ra) # 80002510 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    8000275c:	fe893783          	ld	a5,-24(s2)
    80002760:	01878793          	addi	a5,a5,24
    80002764:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    80002768:	0000b797          	auipc	a5,0xb
    8000276c:	8687b783          	ld	a5,-1944(a5) # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
    80002770:	06078a63          	beqz	a5,800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002774:	08f4e463          	bltu	s1,a5,800027fc <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002778:	00078993          	mv	s3,a5
    8000277c:	0107b783          	ld	a5,16(a5)
    80002780:	00078463          	beqz	a5,80002788 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002784:	fe97eae3          	bltu	a5,s1,80002778 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    80002788:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    8000278c:	0109b783          	ld	a5,16(s3)
    80002790:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002794:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002798:	ff893783          	ld	a5,-8(s2)
    8000279c:	00078463          	beqz	a5,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    800027a0:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800027a4:	00048513          	mv	a0,s1
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	ee0080e7          	jalr	-288(ra) # 80002688 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800027b0:	00098513          	mv	a0,s3
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	ed4080e7          	jalr	-300(ra) # 80002688 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800027bc:	00000513          	li	a0,0
}
    800027c0:	02813083          	ld	ra,40(sp)
    800027c4:	02013403          	ld	s0,32(sp)
    800027c8:	01813483          	ld	s1,24(sp)
    800027cc:	01013903          	ld	s2,16(sp)
    800027d0:	00813983          	ld	s3,8(sp)
    800027d4:	03010113          	addi	sp,sp,48
    800027d8:	00008067          	ret
            found = true;
    800027dc:	00100793          	li	a5,1
    800027e0:	f61ff06f          	j	80002740 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800027e4:	0000a797          	auipc	a5,0xa
    800027e8:	7e97b623          	sd	s1,2028(a5) # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800027ec:	fe093c23          	sd	zero,-8(s2)
    800027f0:	fe093823          	sd	zero,-16(s2)
    return 0;
    800027f4:	00000513          	li	a0,0
    800027f8:	fc9ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    800027fc:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002800:	0000a797          	auipc	a5,0xa
    80002804:	7d078793          	addi	a5,a5,2000 # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
    80002808:	0007b703          	ld	a4,0(a5)
    8000280c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002810:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002814:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002818:	00048513          	mv	a0,s1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	e6c080e7          	jalr	-404(ra) # 80002688 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002824:	00000513          	li	a0,0
    80002828:	f99ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000282c:	fff00513          	li	a0,-1
}
    80002830:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002834:	fff00513          	li	a0,-1
    80002838:	f89ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000283c:	fff00513          	li	a0,-1
    80002840:	f81ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002844:	ffe00513          	li	a0,-2
    80002848:	f79ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    8000284c:	ffd00513          	li	a0,-3
    80002850:	f71ff06f          	j	800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002854 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00813423          	sd	s0,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
//    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
//        printNumber(tmp -> size);
//        putc(' ');
//        putc('u');
//    }
}
    80002860:	00813403          	ld	s0,8(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00813423          	sd	s0,8(sp)
    80002874:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002878:	05750513          	addi	a0,a0,87
}
    8000287c:	00655513          	srli	a0,a0,0x6
    80002880:	00813403          	ld	s0,8(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    8000288c:	0000a797          	auipc	a5,0xa
    80002890:	7547b783          	ld	a5,1876(a5) # 8000cfe0 <_ZN15MemoryAllocator8instanceE>
    80002894:	00078463          	beqz	a5,8000289c <_ZN15MemoryAllocator10initializeEv+0x10>
    80002898:	00008067          	ret
void MemoryAllocator::initialize() {
    8000289c:	fe010113          	addi	sp,sp,-32
    800028a0:	00113c23          	sd	ra,24(sp)
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00913423          	sd	s1,8(sp)
    800028ac:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800028b0:	0000a797          	auipc	a5,0xa
    800028b4:	6187b783          	ld	a5,1560(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800028b8:	0007b783          	ld	a5,0(a5)
    800028bc:	0000a497          	auipc	s1,0xa
    800028c0:	71448493          	addi	s1,s1,1812 # 8000cfd0 <_ZN15MemoryAllocator11freeSegHeadE>
    800028c4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800028c8:	0000a717          	auipc	a4,0xa
    800028cc:	64073703          	ld	a4,1600(a4) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x58>
    800028d0:	00073703          	ld	a4,0(a4)
    800028d4:	40f70733          	sub	a4,a4,a5
    800028d8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800028dc:	0004b783          	ld	a5,0(s1)
    800028e0:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800028e4:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800028e8:	00100513          	li	a0,1
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	f80080e7          	jalr	-128(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	c70080e7          	jalr	-912(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
    800028fc:	00a4b823          	sd	a0,16(s1)
}
    80002900:	01813083          	ld	ra,24(sp)
    80002904:	01013403          	ld	s0,16(sp)
    80002908:	00813483          	ld	s1,8(sp)
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret

0000000080002914 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_buffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	00813823          	sd	s0,16(sp)
    80002920:	00913423          	sd	s1,8(sp)
    80002924:	02010413          	addi	s0,sp,32
    80002928:	00050493          	mv	s1,a0
    8000292c:	00052023          	sw	zero,0(a0)
    80002930:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    80002934:	00000593          	li	a1,0
    80002938:	01050513          	addi	a0,a0,16
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	170080e7          	jalr	368(ra) # 80001aac <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002944:	1f400593          	li	a1,500
    80002948:	00848513          	addi	a0,s1,8
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	160080e7          	jalr	352(ra) # 80001aac <_ZN3Sem4openEPPS_j>
}
    80002954:	01813083          	ld	ra,24(sp)
    80002958:	01013403          	ld	s0,16(sp)
    8000295c:	00813483          	ld	s1,8(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret

0000000080002968 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002980:	01053503          	ld	a0,16(a0)
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	eec080e7          	jalr	-276(ra) # 80001870 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    8000298c:	0084b503          	ld	a0,8(s1)
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	ee0080e7          	jalr	-288(ra) # 80001870 <_ZN3Sem5closeEPS_>
}
    80002998:	01813083          	ld	ra,24(sp)
    8000299c:	01013403          	ld	s0,16(sp)
    800029a0:	00813483          	ld	s1,8(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret

00000000800029ac <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	eb0080e7          	jalr	-336(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	ba0080e7          	jalr	-1120(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    800029cc:	00813083          	ld	ra,8(sp)
    800029d0:	00013403          	ld	s0,0(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00113423          	sd	ra,8(sp)
    800029e4:	00813023          	sd	s0,0(sp)
    800029e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	cec080e7          	jalr	-788(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800029f4:	00813083          	ld	ra,8(sp)
    800029f8:	00013403          	ld	s0,0(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret

0000000080002a04 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00050493          	mv	s1,a0
    80002a20:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002a24:	00853503          	ld	a0,8(a0)
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	eb4080e7          	jalr	-332(ra) # 800018dc <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002a30:	0044a783          	lw	a5,4(s1)
    80002a34:	00f48733          	add	a4,s1,a5
    80002a38:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002a3c:	0017879b          	addiw	a5,a5,1
    80002a40:	1f400713          	li	a4,500
    80002a44:	02e7e7bb          	remw	a5,a5,a4
    80002a48:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002a4c:	0104b503          	ld	a0,16(s1)
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	ee0080e7          	jalr	-288(ra) # 80001930 <_ZN3Sem6signalEPS_>
}
    80002a58:	01813083          	ld	ra,24(sp)
    80002a5c:	01013403          	ld	s0,16(sp)
    80002a60:	00813483          	ld	s1,8(sp)
    80002a64:	00013903          	ld	s2,0(sp)
    80002a68:	02010113          	addi	sp,sp,32
    80002a6c:	00008067          	ret

0000000080002a70 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a70:	fe010113          	addi	sp,sp,-32
    80002a74:	00113c23          	sd	ra,24(sp)
    80002a78:	00813823          	sd	s0,16(sp)
    80002a7c:	00913423          	sd	s1,8(sp)
    80002a80:	01213023          	sd	s2,0(sp)
    80002a84:	02010413          	addi	s0,sp,32
    80002a88:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002a8c:	01053503          	ld	a0,16(a0)
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	e4c080e7          	jalr	-436(ra) # 800018dc <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002a98:	0004a783          	lw	a5,0(s1)
    80002a9c:	00f48733          	add	a4,s1,a5
    80002aa0:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002aa4:	0017879b          	addiw	a5,a5,1
    80002aa8:	1f400713          	li	a4,500
    80002aac:	02e7e7bb          	remw	a5,a5,a4
    80002ab0:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002ab4:	0084b503          	ld	a0,8(s1)
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	e78080e7          	jalr	-392(ra) # 80001930 <_ZN3Sem6signalEPS_>
    return c;
}
    80002ac0:	00090513          	mv	a0,s2
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	00013903          	ld	s2,0(sp)
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret

0000000080002adc <_ZN13BoundedBuffer7isEmptyEv>:

bool BoundedBuffer::isEmpty() {
    80002adc:	ff010113          	addi	sp,sp,-16
    80002ae0:	00813423          	sd	s0,8(sp)
    80002ae4:	01010413          	addi	s0,sp,16
    return head == tail;
    80002ae8:	00052783          	lw	a5,0(a0)
    80002aec:	00452503          	lw	a0,4(a0)
    80002af0:	40f50533          	sub	a0,a0,a5
}
    80002af4:	00153513          	seqz	a0,a0
    80002af8:	00813403          	ld	s0,8(sp)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <_ZN13BoundedBuffer6isFullEv>:

bool BoundedBuffer::isFull() {
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813423          	sd	s0,8(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    return head == (tail + 1) % CAPACITY;
    80002b10:	00052783          	lw	a5,0(a0)
    80002b14:	00452503          	lw	a0,4(a0)
    80002b18:	0015051b          	addiw	a0,a0,1
    80002b1c:	1f400713          	li	a4,500
    80002b20:	02e5653b          	remw	a0,a0,a4
    80002b24:	40a78533          	sub	a0,a5,a0
}
    80002b28:	00153513          	seqz	a0,a0
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_ZN9Scheduler3putEP3TCB>:
TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00050493          	mv	s1,a0
    thread -> status = TCB::RUNNABLE;
    80002b50:	02052023          	sw	zero,32(a0)
    if (tail_ready) {
    80002b54:	0000a517          	auipc	a0,0xa
    80002b58:	49453503          	ld	a0,1172(a0) # 8000cfe8 <_ZN9Scheduler10tail_readyE>
    80002b5c:	02050e63          	beqz	a0,80002b98 <_ZN9Scheduler3putEP3TCB+0x60>
        tail_ready -> set_next_ready(thread);
    80002b60:	00048593          	mv	a1,s1
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	b28080e7          	jalr	-1240(ra) # 8000368c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002b6c:	0000a797          	auipc	a5,0xa
    80002b70:	4697be23          	sd	s1,1148(a5) # 8000cfe8 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002b74:	00000593          	li	a1,0
    80002b78:	00048513          	mv	a0,s1
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	b10080e7          	jalr	-1264(ra) # 8000368c <_ZN3TCB14set_next_readyEPS_>
}
    80002b84:	01813083          	ld	ra,24(sp)
    80002b88:	01013403          	ld	s0,16(sp)
    80002b8c:	00813483          	ld	s1,8(sp)
    80002b90:	02010113          	addi	sp,sp,32
    80002b94:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002b98:	0000a797          	auipc	a5,0xa
    80002b9c:	45078793          	addi	a5,a5,1104 # 8000cfe8 <_ZN9Scheduler10tail_readyE>
    80002ba0:	0097b023          	sd	s1,0(a5)
    80002ba4:	0097b423          	sd	s1,8(a5)
    80002ba8:	fcdff06f          	j	80002b74 <_ZN9Scheduler3putEP3TCB+0x3c>

0000000080002bac <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002bc0:	0000a497          	auipc	s1,0xa
    80002bc4:	4304b483          	ld	s1,1072(s1) # 8000cff0 <_ZN9Scheduler10head_readyE>
    80002bc8:	02048663          	beqz	s1,80002bf4 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002bcc:	00048513          	mv	a0,s1
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	aa0080e7          	jalr	-1376(ra) # 80003670 <_ZNK3TCB14get_next_readyEv>
    80002bd8:	0000a797          	auipc	a5,0xa
    80002bdc:	40a7bc23          	sd	a0,1048(a5) # 8000cff0 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002be0:	02050663          	beqz	a0,80002c0c <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002be4:	00000593          	li	a1,0
    80002be8:	00048513          	mv	a0,s1
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	aa0080e7          	jalr	-1376(ra) # 8000368c <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	01813083          	ld	ra,24(sp)
    80002bfc:	01013403          	ld	s0,16(sp)
    80002c00:	00813483          	ld	s1,8(sp)
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002c0c:	0000a797          	auipc	a5,0xa
    80002c10:	3c07be23          	sd	zero,988(a5) # 8000cfe8 <_ZN9Scheduler10tail_readyE>
    80002c14:	fd1ff06f          	j	80002be4 <_ZN9Scheduler3getEv+0x38>

0000000080002c18 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    if (execute_yield) change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00813423          	sd	s0,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002c24:	06050863          	beqz	a0,80002c94 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002c28:	0000a797          	auipc	a5,0xa
    80002c2c:	3d07b783          	ld	a5,976(a5) # 8000cff8 <_ZN9Scheduler13head_sleepingE>
    80002c30:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002c34:	00078a63          	beqz	a5,80002c48 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002c38:	00a78863          	beq	a5,a0,80002c48 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002c3c:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002c40:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002c44:	ff1ff06f          	j	80002c34 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002c48:	04078a63          	beqz	a5,80002c9c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002c4c:	02070c63          	beqz	a4,80002c84 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002c50:	0587b683          	ld	a3,88(a5)
    80002c54:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002c58:	0587b703          	ld	a4,88(a5)
    80002c5c:	00070a63          	beqz	a4,80002c70 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002c60:	0507b603          	ld	a2,80(a5)
    80002c64:	05073683          	ld	a3,80(a4)
    80002c68:	00c686b3          	add	a3,a3,a2
    80002c6c:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002c70:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002c74:	00000513          	li	a0,0
}
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002c84:	0587b703          	ld	a4,88(a5)
    80002c88:	0000a697          	auipc	a3,0xa
    80002c8c:	36e6b823          	sd	a4,880(a3) # 8000cff8 <_ZN9Scheduler13head_sleepingE>
    80002c90:	fc9ff06f          	j	80002c58 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002c94:	fff00513          	li	a0,-1
    80002c98:	fe1ff06f          	j	80002c78 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002c9c:	ffe00513          	li	a0,-2
    80002ca0:	fd9ff06f          	j	80002c78 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002ca4 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002ca4:	fe010113          	addi	sp,sp,-32
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	00813823          	sd	s0,16(sp)
    80002cb0:	00913423          	sd	s1,8(sp)
    80002cb4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002cb8:	0000a797          	auipc	a5,0xa
    80002cbc:	2487b783          	ld	a5,584(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cc0:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002cc4:	00100593          	li	a1,1
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	a4c080e7          	jalr	-1460(ra) # 80003718 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002cd4:	0484c783          	lbu	a5,72(s1)
    80002cd8:	00078c63          	beqz	a5,80002cf0 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002cdc:	01813083          	ld	ra,24(sp)
    80002ce0:	01013403          	ld	s0,16(sp)
    80002ce4:	00813483          	ld	s1,8(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret
        TCB::running = Scheduler::get();
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	ebc080e7          	jalr	-324(ra) # 80002bac <_ZN9Scheduler3getEv>
    80002cf8:	00050593          	mv	a1,a0
    80002cfc:	0000a797          	auipc	a5,0xa
    80002d00:	2047b783          	ld	a5,516(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d04:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002d08:	fca48ae3          	beq	s1,a0,80002cdc <_ZN9Scheduler13change_threadEv+0x38>
    80002d0c:	00048513          	mv	a0,s1
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	878080e7          	jalr	-1928(ra) # 80003588 <_ZN3TCB5yieldEPS_S0_>
}
    80002d18:	fc5ff06f          	j	80002cdc <_ZN9Scheduler13change_threadEv+0x38>

0000000080002d1c <_ZN9Scheduler12put_to_sleepEmb>:
    if (time <= 0) return -1;
    80002d1c:	1a050e63          	beqz	a0,80002ed8 <_ZN9Scheduler12put_to_sleepEmb+0x1bc>
int Scheduler::put_to_sleep(time_t time, bool execute_yield = true) {
    80002d20:	fc010113          	addi	sp,sp,-64
    80002d24:	02113c23          	sd	ra,56(sp)
    80002d28:	02813823          	sd	s0,48(sp)
    80002d2c:	02913423          	sd	s1,40(sp)
    80002d30:	03213023          	sd	s2,32(sp)
    80002d34:	01313c23          	sd	s3,24(sp)
    80002d38:	01413823          	sd	s4,16(sp)
    80002d3c:	01513423          	sd	s5,8(sp)
    80002d40:	01613023          	sd	s6,0(sp)
    80002d44:	04010413          	addi	s0,sp,64
    80002d48:	00050993          	mv	s3,a0
    80002d4c:	00058b13          	mv	s6,a1
    TCB* thread = TCB::running;
    80002d50:	0000a797          	auipc	a5,0xa
    80002d54:	1b07b783          	ld	a5,432(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d58:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002d5c:	0000a497          	auipc	s1,0xa
    80002d60:	29c4b483          	ld	s1,668(s1) # 8000cff8 <_ZN9Scheduler13head_sleepingE>
    80002d64:	02048e63          	beqz	s1,80002da0 <_ZN9Scheduler12put_to_sleepEmb+0x84>
    time_t current_time = 0;
    80002d68:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002d6c:	00000a13          	li	s4,0
    while (tmp) {
    80002d70:	10048e63          	beqz	s1,80002e8c <_ZN9Scheduler12put_to_sleepEmb+0x170>
        current_time += tmp -> get_time_to_sleep();
    80002d74:	00048513          	mv	a0,s1
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	984080e7          	jalr	-1660(ra) # 800036fc <_ZNK3TCB17get_time_to_sleepEv>
    80002d80:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002d84:	0529ee63          	bltu	s3,s2,80002de0 <_ZN9Scheduler12put_to_sleepEmb+0xc4>
        tmp = tmp -> get_next_sleeping();
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	938080e7          	jalr	-1736(ra) # 800036c4 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002d94:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002d98:	00050493          	mv	s1,a0
    while (tmp) {
    80002d9c:	fd5ff06f          	j	80002d70 <_ZN9Scheduler12put_to_sleepEmb+0x54>
        head_sleeping = thread;
    80002da0:	0000a797          	auipc	a5,0xa
    80002da4:	2557bc23          	sd	s5,600(a5) # 8000cff8 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002da8:	00000593          	li	a1,0
    80002dac:	000a8513          	mv	a0,s5
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	8f8080e7          	jalr	-1800(ra) # 800036a8 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002db8:	00098593          	mv	a1,s3
    80002dbc:	000a8513          	mv	a0,s5
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	920080e7          	jalr	-1760(ra) # 800036e0 <_ZN3TCB17set_time_to_sleepEm>
        if (execute_yield) change_thread();
    80002dc8:	000b1663          	bnez	s6,80002dd4 <_ZN9Scheduler12put_to_sleepEmb+0xb8>
        return 0;
    80002dcc:	00000513          	li	a0,0
    80002dd0:	07c0006f          	j	80002e4c <_ZN9Scheduler12put_to_sleepEmb+0x130>
        if (execute_yield) change_thread();
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	ed0080e7          	jalr	-304(ra) # 80002ca4 <_ZN9Scheduler13change_threadEv>
    80002ddc:	ff1ff06f          	j	80002dcc <_ZN9Scheduler12put_to_sleepEmb+0xb0>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	918080e7          	jalr	-1768(ra) # 800036fc <_ZNK3TCB17get_time_to_sleepEv>
    80002dec:	41250933          	sub	s2,a0,s2
    80002df0:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002df4:	00098593          	mv	a1,s3
    80002df8:	000a8513          	mv	a0,s5
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	8e4080e7          	jalr	-1820(ra) # 800036e0 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002e04:	00048593          	mv	a1,s1
    80002e08:	000a8513          	mv	a0,s5
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	89c080e7          	jalr	-1892(ra) # 800036a8 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002e14:	060a0063          	beqz	s4,80002e74 <_ZN9Scheduler12put_to_sleepEmb+0x158>
    80002e18:	000a8593          	mv	a1,s5
    80002e1c:	000a0513          	mv	a0,s4
    80002e20:	00001097          	auipc	ra,0x1
    80002e24:	888080e7          	jalr	-1912(ra) # 800036a8 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	8d0080e7          	jalr	-1840(ra) # 800036fc <_ZNK3TCB17get_time_to_sleepEv>
    80002e34:	413505b3          	sub	a1,a0,s3
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	8a4080e7          	jalr	-1884(ra) # 800036e0 <_ZN3TCB17set_time_to_sleepEm>
            if (execute_yield) change_thread();
    80002e44:	020b1e63          	bnez	s6,80002e80 <_ZN9Scheduler12put_to_sleepEmb+0x164>
            return 0;
    80002e48:	00000513          	li	a0,0
}
    80002e4c:	03813083          	ld	ra,56(sp)
    80002e50:	03013403          	ld	s0,48(sp)
    80002e54:	02813483          	ld	s1,40(sp)
    80002e58:	02013903          	ld	s2,32(sp)
    80002e5c:	01813983          	ld	s3,24(sp)
    80002e60:	01013a03          	ld	s4,16(sp)
    80002e64:	00813a83          	ld	s5,8(sp)
    80002e68:	00013b03          	ld	s6,0(sp)
    80002e6c:	04010113          	addi	sp,sp,64
    80002e70:	00008067          	ret
            else head_sleeping = thread;
    80002e74:	0000a797          	auipc	a5,0xa
    80002e78:	1957b223          	sd	s5,388(a5) # 8000cff8 <_ZN9Scheduler13head_sleepingE>
    80002e7c:	fadff06f          	j	80002e28 <_ZN9Scheduler12put_to_sleepEmb+0x10c>
            if (execute_yield) change_thread();
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	e24080e7          	jalr	-476(ra) # 80002ca4 <_ZN9Scheduler13change_threadEv>
    80002e88:	fc1ff06f          	j	80002e48 <_ZN9Scheduler12put_to_sleepEmb+0x12c>
    thread -> set_time_to_sleep(time - current_time);
    80002e8c:	412985b3          	sub	a1,s3,s2
    80002e90:	000a8513          	mv	a0,s5
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	84c080e7          	jalr	-1972(ra) # 800036e0 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002e9c:	000a8593          	mv	a1,s5
    80002ea0:	000a0513          	mv	a0,s4
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	804080e7          	jalr	-2044(ra) # 800036a8 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002eac:	00000593          	li	a1,0
    80002eb0:	000a8513          	mv	a0,s5
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	7f4080e7          	jalr	2036(ra) # 800036a8 <_ZN3TCB17set_next_sleepingEPS_>
    if (execute_yield) change_thread();
    80002ebc:	000b1663          	bnez	s6,80002ec8 <_ZN9Scheduler12put_to_sleepEmb+0x1ac>
    return 0;
    80002ec0:	00000513          	li	a0,0
    80002ec4:	f89ff06f          	j	80002e4c <_ZN9Scheduler12put_to_sleepEmb+0x130>
    if (execute_yield) change_thread();
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	ddc080e7          	jalr	-548(ra) # 80002ca4 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002ed0:	00000513          	li	a0,0
    80002ed4:	f79ff06f          	j	80002e4c <_ZN9Scheduler12put_to_sleepEmb+0x130>
    if (time <= 0) return -1;
    80002ed8:	fff00513          	li	a0,-1
}
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00813423          	sd	s0,8(sp)
    80002ee8:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002eec:	0000a797          	auipc	a5,0xa
    80002ef0:	0147b783          	ld	a5,20(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ef4:	0007b783          	ld	a5,0(a5)
    80002ef8:	0287b783          	ld	a5,40(a5)
    80002efc:	00078c63          	beqz	a5,80002f14 <_ZN5RiscV10popSppSpieEv+0x34>
    80002f00:	0000a717          	auipc	a4,0xa
    80002f04:	ff873703          	ld	a4,-8(a4) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002f08:	00e78663          	beq	a5,a4,80002f14 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002f0c:	10000793          	li	a5,256
    80002f10:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002f14:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002f18:	10200073          	sret
}
    80002f1c:	00813403          	ld	s0,8(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002f28:	f9010113          	addi	sp,sp,-112
    80002f2c:	06113423          	sd	ra,104(sp)
    80002f30:	06813023          	sd	s0,96(sp)
    80002f34:	04913c23          	sd	s1,88(sp)
    80002f38:	05213823          	sd	s2,80(sp)
    80002f3c:	05313423          	sd	s3,72(sp)
    80002f40:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002f44:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002f48:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002f4c:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002f50:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002f54:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002f58:	14202773          	csrr	a4,scause
    80002f5c:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002f60:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002f64:	ff870893          	addi	a7,a4,-8
    80002f68:	00100813          	li	a6,1
    80002f6c:	05187663          	bgeu	a6,a7,80002fb8 <_ZN5RiscV22handle_supervisor_trapEv+0x90>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002f70:	fff00793          	li	a5,-1
    80002f74:	03f79793          	slli	a5,a5,0x3f
    80002f78:	00178793          	addi	a5,a5,1
    80002f7c:	16f70663          	beq	a4,a5,800030e8 <_ZN5RiscV22handle_supervisor_trapEv+0x1c0>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002f80:	fff00793          	li	a5,-1
    80002f84:	03f79793          	slli	a5,a5,0x3f
    80002f88:	00978793          	addi	a5,a5,9
    80002f8c:	24f70063          	beq	a4,a5,800031cc <_ZN5RiscV22handle_supervisor_trapEv+0x2a4>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        putc('!');
    80002f90:	02100513          	li	a0,33
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	6d8080e7          	jalr	1752(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002f9c:	03f00513          	li	a0,63
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	6cc080e7          	jalr	1740(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002fa8:	02100513          	li	a0,33
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	6c0080e7          	jalr	1728(ra) # 8000166c <_Z4putcc>
    }
    80002fb4:	0700006f          	j	80003024 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002fb8:	14102773          	csrr	a4,sepc
    80002fbc:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002fc0:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002fc4:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002fc8:	10002773          	csrr	a4,sstatus
    80002fcc:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002fd0:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002fd4:	04200713          	li	a4,66
    80002fd8:	02f76463          	bltu	a4,a5,80003000 <_ZN5RiscV22handle_supervisor_trapEv+0xd8>
    80002fdc:	04078063          	beqz	a5,8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    80002fe0:	02f76e63          	bltu	a4,a5,8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    80002fe4:	00279793          	slli	a5,a5,0x2
    80002fe8:	00007717          	auipc	a4,0x7
    80002fec:	05870713          	addi	a4,a4,88 # 8000a040 <CONSOLE_STATUS+0x30>
    80002ff0:	00e787b3          	add	a5,a5,a4
    80002ff4:	0007a783          	lw	a5,0(a5)
    80002ff8:	00e787b3          	add	a5,a5,a4
    80002ffc:	00078067          	jr	a5
    80003000:	09900713          	li	a4,153
    80003004:	00e79c63          	bne	a5,a4,8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::getID();
    80003008:	00001097          	auipc	ra,0x1
    8000300c:	958080e7          	jalr	-1704(ra) # 80003960 <_ZN3TCB5getIDEv>
                break;
    80003010:	00c0006f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                MemoryAllocator::mem_alloc((size_t) a1);
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	550080e7          	jalr	1360(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    8000301c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003020:	10091073          	csrw	sstatus,s2
    80003024:	06813083          	ld	ra,104(sp)
    80003028:	06013403          	ld	s0,96(sp)
    8000302c:	05813483          	ld	s1,88(sp)
    80003030:	05013903          	ld	s2,80(sp)
    80003034:	04813983          	ld	s3,72(sp)
    80003038:	07010113          	addi	sp,sp,112
    8000303c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	698080e7          	jalr	1688(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80003048:	fd5ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	78c080e7          	jalr	1932(ra) # 800037d8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003054:	fc9ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::thread_exit();
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	6dc080e7          	jalr	1756(ra) # 80003734 <_ZN3TCB11thread_exitEv>
                break;
    80003060:	fbdff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                TCB::dispatch();
    80003064:	00000097          	auipc	ra,0x0
    80003068:	580080e7          	jalr	1408(ra) # 800035e4 <_ZN3TCB8dispatchEv>
                break;
    8000306c:	fb1ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::open((sem_t *) a1, a2);
    80003070:	0005859b          	sext.w	a1,a1
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	a38080e7          	jalr	-1480(ra) # 80001aac <_ZN3Sem4openEPPS_j>
                break;
    8000307c:	fa1ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::close((sem_t) a1);
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	7f0080e7          	jalr	2032(ra) # 80001870 <_ZN3Sem5closeEPS_>
                break;
    80003088:	f95ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::wait((sem_t) a1);
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	850080e7          	jalr	-1968(ra) # 800018dc <_ZN3Sem4waitEPS_>
                break;
    80003094:	f89ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::signal((sem_t) a1);
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	898080e7          	jalr	-1896(ra) # 80001930 <_ZN3Sem6signalEPS_>
                break;
    800030a0:	f7dff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	8e0080e7          	jalr	-1824(ra) # 80001984 <_ZN3Sem9timedWaitEPS_m>
                break;
    800030ac:	f71ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Sem::tryWait((sem_t) a1);
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	96c080e7          	jalr	-1684(ra) # 80001a1c <_ZN3Sem7tryWaitEPS_>
                break;
    800030b8:	f65ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Scheduler::put_to_sleep((time_t) a1, (bool) true);
    800030bc:	00100593          	li	a1,1
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	c5c080e7          	jalr	-932(ra) # 80002d1c <_ZN9Scheduler12put_to_sleepEmb>
                break;
    800030c8:	f55ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Con::getc_input();
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	e58080e7          	jalr	-424(ra) # 80001f24 <_ZN3Con10getc_inputEv>
                break;
    800030d4:	f49ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
                Con::putc_output((char) a1);
    800030d8:	0ff57513          	andi	a0,a0,255
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	db0080e7          	jalr	-592(ra) # 80001e8c <_ZN3Con11putc_outputEc>
                break;
    800030e4:	f39ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    800030e8:	00200793          	li	a5,2
    800030ec:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    800030f0:	0000a797          	auipc	a5,0xa
    800030f4:	de07b783          	ld	a5,-544(a5) # 8000ced0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800030f8:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    800030fc:	06048863          	beqz	s1,8000316c <_ZN5RiscV22handle_supervisor_trapEv+0x244>
            --first_waiting -> time_to_sleep;
    80003100:	0504b783          	ld	a5,80(s1)
    80003104:	fff78793          	addi	a5,a5,-1
    80003108:	04f4b823          	sd	a5,80(s1)
    8000310c:	03c0006f          	j	80003148 <_ZN5RiscV22handle_supervisor_trapEv+0x220>
                if (first_waiting -> timed_wait || first_waiting -> status == TCB::BLOCKED) first_waiting -> clear_from_timed_wait(true);
    80003110:	00100593          	li	a1,1
    80003114:	00048513          	mv	a0,s1
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	7e8080e7          	jalr	2024(ra) # 80003900 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    80003120:	00048513          	mv	a0,s1
    80003124:	00000097          	auipc	ra,0x0
    80003128:	a14080e7          	jalr	-1516(ra) # 80002b38 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    8000312c:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    80003130:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003134:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003138:	0000a717          	auipc	a4,0xa
    8000313c:	d9873703          	ld	a4,-616(a4) # 8000ced0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003140:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003144:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003148:	02048263          	beqz	s1,8000316c <_ZN5RiscV22handle_supervisor_trapEv+0x244>
    8000314c:	0504b783          	ld	a5,80(s1)
    80003150:	00079e63          	bnez	a5,8000316c <_ZN5RiscV22handle_supervisor_trapEv+0x244>
                if (first_waiting -> timed_wait || first_waiting -> status == TCB::BLOCKED) first_waiting -> clear_from_timed_wait(true);
    80003154:	0484c783          	lbu	a5,72(s1)
    80003158:	fa079ce3          	bnez	a5,80003110 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
    8000315c:	0204a703          	lw	a4,32(s1)
    80003160:	00200793          	li	a5,2
    80003164:	faf71ee3          	bne	a4,a5,80003120 <_ZN5RiscV22handle_supervisor_trapEv+0x1f8>
    80003168:	fa9ff06f          	j	80003110 <_ZN5RiscV22handle_supervisor_trapEv+0x1e8>
        ++TCB::time_slice_counter;
    8000316c:	0000a717          	auipc	a4,0xa
    80003170:	d8473703          	ld	a4,-636(a4) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003174:	00073783          	ld	a5,0(a4)
    80003178:	00178793          	addi	a5,a5,1
    8000317c:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80003180:	0000a717          	auipc	a4,0xa
    80003184:	d8073703          	ld	a4,-640(a4) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003188:	00073703          	ld	a4,0(a4)
    8000318c:	00073703          	ld	a4,0(a4)
    80003190:	e8e7eae3          	bltu	a5,a4,80003024 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003194:	141027f3          	csrr	a5,sepc
    80003198:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000319c:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800031a0:	100027f3          	csrr	a5,sstatus
    800031a4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800031a8:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800031ac:	0000a797          	auipc	a5,0xa
    800031b0:	d447b783          	ld	a5,-700(a5) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800031b4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	42c080e7          	jalr	1068(ra) # 800035e4 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    800031c0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    800031c4:	14149073          	csrw	sepc,s1
}
    800031c8:	e5dff06f          	j	80003024 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800031cc:	141027f3          	csrr	a5,sepc
    800031d0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800031d4:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800031d8:	100027f3          	csrr	a5,sstatus
    800031dc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800031e0:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    800031e4:	00004097          	auipc	ra,0x4
    800031e8:	6d0080e7          	jalr	1744(ra) # 800078b4 <plic_claim>
    800031ec:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    800031f0:	00a00793          	li	a5,10
    800031f4:	02f50263          	beq	a0,a5,80003218 <_ZN5RiscV22handle_supervisor_trapEv+0x2f0>
        plic_complete(irq);
    800031f8:	00048513          	mv	a0,s1
    800031fc:	00004097          	auipc	ra,0x4
    80003200:	6f0080e7          	jalr	1776(ra) # 800078ec <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003204:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003208:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    8000320c:	20000793          	li	a5,512
    80003210:	1447b073          	csrc	sip,a5
}
    80003214:	e11ff06f          	j	80003024 <_ZN5RiscV22handle_supervisor_trapEv+0xfc>
            while (!Con::isOutputBufferFull() && *(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	d6c080e7          	jalr	-660(ra) # 80001f84 <_ZN3Con18isOutputBufferFullEv>
    80003220:	fc051ce3          	bnez	a0,800031f8 <_ZN5RiscV22handle_supervisor_trapEv+0x2d0>
    80003224:	0000a797          	auipc	a5,0xa
    80003228:	c9c7b783          	ld	a5,-868(a5) # 8000cec0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000322c:	0007b783          	ld	a5,0(a5)
    80003230:	0007c783          	lbu	a5,0(a5)
    80003234:	0017f793          	andi	a5,a5,1
    80003238:	fc0780e3          	beqz	a5,800031f8 <_ZN5RiscV22handle_supervisor_trapEv+0x2d0>
                char c = *(char *) CONSOLE_RX_DATA;
    8000323c:	0000a797          	auipc	a5,0xa
    80003240:	c7c7b783          	ld	a5,-900(a5) # 8000ceb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003244:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80003248:	0007c503          	lbu	a0,0(a5)
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	ca4080e7          	jalr	-860(ra) # 80001ef0 <_ZN3Con10putc_inputEc>
            while (!Con::isOutputBufferFull() && *(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003254:	fc5ff06f          	j	80003218 <_ZN5RiscV22handle_supervisor_trapEv+0x2f0>

0000000080003258 <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813423          	sd	s0,8(sp)
    80003260:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003264:	00053503          	ld	a0,0(a0)
    80003268:	00050463          	beqz	a0,80003270 <_ZN10ThreadList9get_firstEv+0x18>
    8000326c:	00053503          	ld	a0,0(a0)
}
    80003270:	00813403          	ld	s0,8(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80003288:	04058a63          	beqz	a1,800032dc <_ZN10ThreadList6removeEP3TCB+0x60>
    Node *tmp = head, *prev = nullptr;
    8000328c:	00053783          	ld	a5,0(a0)
    80003290:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    80003294:	00078c63          	beqz	a5,800032ac <_ZN10ThreadList6removeEP3TCB+0x30>
    80003298:	0007b703          	ld	a4,0(a5)
    8000329c:	00b70863          	beq	a4,a1,800032ac <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    800032a0:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    800032a4:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800032a8:	fedff06f          	j	80003294 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800032ac:	02078c63          	beqz	a5,800032e4 <_ZN10ThreadList6removeEP3TCB+0x68>
    if (prev) prev -> next = tmp -> next;
    800032b0:	00068e63          	beqz	a3,800032cc <_ZN10ThreadList6removeEP3TCB+0x50>
    800032b4:	0087b783          	ld	a5,8(a5)
    800032b8:	00f6b423          	sd	a5,8(a3)
    else head = tmp -> next;
    return 0;
    800032bc:	00000513          	li	a0,0
}
    800032c0:	00813403          	ld	s0,8(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret
    else head = tmp -> next;
    800032cc:	0087b783          	ld	a5,8(a5)
    800032d0:	00f53023          	sd	a5,0(a0)
    return 0;
    800032d4:	00000513          	li	a0,0
    800032d8:	fe9ff06f          	j	800032c0 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    800032dc:	fff00513          	li	a0,-1
    800032e0:	fe1ff06f          	j	800032c0 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    800032e4:	ffe00513          	li	a0,-2
    800032e8:	fd9ff06f          	j	800032c0 <_ZN10ThreadList6removeEP3TCB+0x44>

00000000800032ec <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032fc:	fffff097          	auipc	ra,0xfffff
    80003300:	570080e7          	jalr	1392(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	260080e7          	jalr	608(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000330c:	00813083          	ld	ra,8(sp)
    80003310:	00013403          	ld	s0,0(sp)
    80003314:	01010113          	addi	sp,sp,16
    80003318:	00008067          	ret

000000008000331c <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00113423          	sd	ra,8(sp)
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	3ac080e7          	jalr	940(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	518080e7          	jalr	1304(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000335c:	fffff097          	auipc	ra,0xfffff
    80003360:	208080e7          	jalr	520(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	01213023          	sd	s2,0(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    80003390:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003394:	01000513          	li	a0,16
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	fac080e7          	jalr	-84(ra) # 80003344 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    800033a0:	01253023          	sd	s2,0(a0)
    800033a4:	00053423          	sd	zero,8(a0)
    800033a8:	0004b783          	ld	a5,0(s1)
    800033ac:	02078463          	beqz	a5,800033d4 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800033b0:	0084b783          	ld	a5,8(s1)
    800033b4:	00a7b423          	sd	a0,8(a5)
    800033b8:	00a4b423          	sd	a0,8(s1)
}
    800033bc:	01813083          	ld	ra,24(sp)
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	00813483          	ld	s1,8(sp)
    800033c8:	00013903          	ld	s2,0(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    800033d4:	00a4b023          	sd	a0,0(s1)
    800033d8:	fe1ff06f          	j	800033b8 <_ZN10ThreadList9push_backEP3TCB+0x44>

00000000800033dc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00113423          	sd	ra,8(sp)
    800033e4:	00813023          	sd	s0,0(sp)
    800033e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800033ec:	fffff097          	auipc	ra,0xfffff
    800033f0:	2ec080e7          	jalr	748(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800033f4:	00813083          	ld	ra,8(sp)
    800033f8:	00013403          	ld	s0,0(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00813823          	sd	s0,16(sp)
    80003410:	00913423          	sd	s1,8(sp)
    80003414:	02010413          	addi	s0,sp,32
    80003418:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000341c:	00053503          	ld	a0,0(a0)
    80003420:	02050863          	beqz	a0,80003450 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003424:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003428:	00853703          	ld	a4,8(a0)
    8000342c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003430:	00000097          	auipc	ra,0x0
    80003434:	fac080e7          	jalr	-84(ra) # 800033dc <_ZN10ThreadList4NodedlEPv>
}
    80003438:	00048513          	mv	a0,s1
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	02010113          	addi	sp,sp,32
    8000344c:	00008067          	ret
    if (!head) return nullptr;
    80003450:	00050493          	mv	s1,a0
    80003454:	fe5ff06f          	j	80003438 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003458 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003470:	00048513          	mv	a0,s1
    80003474:	00000097          	auipc	ra,0x0
    80003478:	de4080e7          	jalr	-540(ra) # 80003258 <_ZN10ThreadList9get_firstEv>
    8000347c:	00050a63          	beqz	a0,80003490 <_ZN10ThreadList4freeEv+0x38>
    80003480:	00048513          	mv	a0,s1
    80003484:	00000097          	auipc	ra,0x0
    80003488:	f80080e7          	jalr	-128(ra) # 80003404 <_ZN10ThreadList12remove_firstEv>
    8000348c:	fe5ff06f          	j	80003470 <_ZN10ThreadList4freeEv+0x18>
}
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00813483          	ld	s1,8(sp)
    8000349c:	02010113          	addi	sp,sp,32
    800034a0:	00008067          	ret

00000000800034a4 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	00813023          	sd	s0,0(sp)
    800034b0:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	a2c080e7          	jalr	-1492(ra) # 80002ee0 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800034bc:	0000a717          	auipc	a4,0xa
    800034c0:	b4473703          	ld	a4,-1212(a4) # 8000d000 <_ZN3TCB7runningE>
    800034c4:	02873783          	ld	a5,40(a4)
    800034c8:	00078663          	beqz	a5,800034d4 <_ZN3TCB16wrapper_functionEv+0x30>
    800034cc:	03073503          	ld	a0,48(a4)
    800034d0:	000780e7          	jalr	a5
    ::thread_exit();
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	eac080e7          	jalr	-340(ra) # 80001380 <_Z11thread_exitv>
}
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800034ec:	08068863          	beqz	a3,8000357c <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    800034f0:	000017b7          	lui	a5,0x1
    800034f4:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800034f8:	00f687b3          	add	a5,a3,a5
    context = {
    800034fc:	00000717          	auipc	a4,0x0
    80003500:	fa870713          	addi	a4,a4,-88 # 800034a4 <_ZN3TCB16wrapper_functionEv>
    80003504:	00e53823          	sd	a4,16(a0)
    80003508:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    8000350c:	00009717          	auipc	a4,0x9
    80003510:	7f470713          	addi	a4,a4,2036 # 8000cd00 <_ZN3TCB3cntE>
    80003514:	00072783          	lw	a5,0(a4)
    80003518:	0017881b          	addiw	a6,a5,1
    8000351c:	01072023          	sw	a6,0(a4)
    80003520:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003524:	00200793          	li	a5,2
    80003528:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    8000352c:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    80003530:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    80003534:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    80003538:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    8000353c:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    80003540:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    80003544:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003548:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    8000354c:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    80003550:	02058a63          	beqz	a1,80003584 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00113423          	sd	ra,8(sp)
    8000355c:	00813023          	sd	s0,0(sp)
    80003560:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	5d4080e7          	jalr	1492(ra) # 80002b38 <_ZN9Scheduler3putEP3TCB>
}
    8000356c:	00813083          	ld	ra,8(sp)
    80003570:	00013403          	ld	s0,0(sp)
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    8000357c:	00000793          	li	a5,0
    80003580:	f7dff06f          	j	800034fc <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003584:	00008067          	ret

0000000080003588 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	01213023          	sd	s2,0(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
    800035a4:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	b60080e7          	jalr	-1184(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800035b0:	01248a63          	beq	s1,s2,800035c4 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800035b4:	01090593          	addi	a1,s2,16
    800035b8:	01048513          	addi	a0,s1,16
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	c4c080e7          	jalr	-948(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	bc4080e7          	jalr	-1084(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	00013903          	ld	s2,0(sp)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00008067          	ret

00000000800035e4 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00913423          	sd	s1,8(sp)
    800035f4:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800035f8:	0000a497          	auipc	s1,0xa
    800035fc:	a084b483          	ld	s1,-1528(s1) # 8000d000 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003600:	0204a783          	lw	a5,32(s1)
    80003604:	04078663          	beqz	a5,80003650 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003608:	00300713          	li	a4,3
    8000360c:	04e78a63          	beq	a5,a4,80003660 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	59c080e7          	jalr	1436(ra) # 80002bac <_ZN9Scheduler3getEv>
    80003618:	00050593          	mv	a1,a0
    8000361c:	0000a797          	auipc	a5,0xa
    80003620:	9e478793          	addi	a5,a5,-1564 # 8000d000 <_ZN3TCB7runningE>
    80003624:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    80003628:	0007b423          	sd	zero,8(a5)
    if (old != running) yield(old, running);
    8000362c:	00a48863          	beq	s1,a0,8000363c <_ZN3TCB8dispatchEv+0x58>
    80003630:	00048513          	mv	a0,s1
    80003634:	00000097          	auipc	ra,0x0
    80003638:	f54080e7          	jalr	-172(ra) # 80003588 <_ZN3TCB5yieldEPS_S0_>
}
    8000363c:	01813083          	ld	ra,24(sp)
    80003640:	01013403          	ld	s0,16(sp)
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	02010113          	addi	sp,sp,32
    8000364c:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003650:	00048513          	mv	a0,s1
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	4e4080e7          	jalr	1252(ra) # 80002b38 <_ZN9Scheduler3putEP3TCB>
    8000365c:	fb5ff06f          	j	80003610 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003660:	0384b503          	ld	a0,56(s1)
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	074080e7          	jalr	116(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000366c:	fa5ff06f          	j	80003610 <_ZN3TCB8dispatchEv+0x2c>

0000000080003670 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00813423          	sd	s0,8(sp)
    80003678:	01010413          	addi	s0,sp,16
    return next_ready;
}
    8000367c:	04053503          	ld	a0,64(a0)
    80003680:	00813403          	ld	s0,8(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00813423          	sd	s0,8(sp)
    80003694:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003698:	04b53023          	sd	a1,64(a0)
}
    8000369c:	00813403          	ld	s0,8(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800036a8:	ff010113          	addi	sp,sp,-16
    800036ac:	00813423          	sd	s0,8(sp)
    800036b0:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800036b4:	04b53c23          	sd	a1,88(a0)
}
    800036b8:	00813403          	ld	s0,8(sp)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800036c4:	ff010113          	addi	sp,sp,-16
    800036c8:	00813423          	sd	s0,8(sp)
    800036cc:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800036d0:	05853503          	ld	a0,88(a0)
    800036d4:	00813403          	ld	s0,8(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret

00000000800036e0 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00813423          	sd	s0,8(sp)
    800036e8:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800036ec:	04b53823          	sd	a1,80(a0)
}
    800036f0:	00813403          	ld	s0,8(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret

00000000800036fc <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800036fc:	ff010113          	addi	sp,sp,-16
    80003700:	00813423          	sd	s0,8(sp)
    80003704:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003708:	05053503          	ld	a0,80(a0)
    8000370c:	00813403          	ld	s0,8(sp)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret

0000000080003718 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00813423          	sd	s0,8(sp)
    80003720:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003724:	02b52023          	sw	a1,32(a0)
}
    80003728:	00813403          	ld	s0,8(sp)
    8000372c:	01010113          	addi	sp,sp,16
    80003730:	00008067          	ret

0000000080003734 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    80003734:	0000a517          	auipc	a0,0xa
    80003738:	8cc53503          	ld	a0,-1844(a0) # 8000d000 <_ZN3TCB7runningE>
    8000373c:	02050e63          	beqz	a0,80003778 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003750:	00300593          	li	a1,3
    80003754:	00000097          	auipc	ra,0x0
    80003758:	fc4080e7          	jalr	-60(ra) # 80003718 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	e88080e7          	jalr	-376(ra) # 800035e4 <_ZN3TCB8dispatchEv>
    return 0;
    80003764:	00000513          	li	a0,0
}
    80003768:	00813083          	ld	ra,8(sp)
    8000376c:	00013403          	ld	s0,0(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret
    if (!running) return -1;
    80003778:	fff00513          	li	a0,-1
}
    8000377c:	00008067          	ret

0000000080003780 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	0dc080e7          	jalr	220(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	dcc080e7          	jalr	-564(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    800037a0:	00813083          	ld	ra,8(sp)
    800037a4:	00013403          	ld	s0,0(sp)
    800037a8:	01010113          	addi	sp,sp,16
    800037ac:	00008067          	ret

00000000800037b0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800037b0:	ff010113          	addi	sp,sp,-16
    800037b4:	00113423          	sd	ra,8(sp)
    800037b8:	00813023          	sd	s0,0(sp)
    800037bc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	f18080e7          	jalr	-232(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037c8:	00813083          	ld	ra,8(sp)
    800037cc:	00013403          	ld	s0,0(sp)
    800037d0:	01010113          	addi	sp,sp,16
    800037d4:	00008067          	ret

00000000800037d8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800037d8:	fc010113          	addi	sp,sp,-64
    800037dc:	02113c23          	sd	ra,56(sp)
    800037e0:	02813823          	sd	s0,48(sp)
    800037e4:	02913423          	sd	s1,40(sp)
    800037e8:	03213023          	sd	s2,32(sp)
    800037ec:	01313c23          	sd	s3,24(sp)
    800037f0:	01413823          	sd	s4,16(sp)
    800037f4:	01513423          	sd	s5,8(sp)
    800037f8:	04010413          	addi	s0,sp,64
    800037fc:	00050913          	mv	s2,a0
    80003800:	00058993          	mv	s3,a1
    80003804:	00060a13          	mv	s4,a2
    80003808:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000380c:	06800513          	li	a0,104
    80003810:	00000097          	auipc	ra,0x0
    80003814:	f70080e7          	jalr	-144(ra) # 80003780 <_ZN3TCBnwEm>
    80003818:	00050493          	mv	s1,a0
    8000381c:	000a8693          	mv	a3,s5
    80003820:	000a0613          	mv	a2,s4
    80003824:	00098593          	mv	a1,s3
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	cc4080e7          	jalr	-828(ra) # 800034ec <_ZN3TCBC1EPFvPvES0_S0_>
    80003830:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    80003834:	02048663          	beqz	s1,80003860 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    80003838:	00000513          	li	a0,0
}
    8000383c:	03813083          	ld	ra,56(sp)
    80003840:	03013403          	ld	s0,48(sp)
    80003844:	02813483          	ld	s1,40(sp)
    80003848:	02013903          	ld	s2,32(sp)
    8000384c:	01813983          	ld	s3,24(sp)
    80003850:	01013a03          	ld	s4,16(sp)
    80003854:	00813a83          	ld	s5,8(sp)
    80003858:	04010113          	addi	sp,sp,64
    8000385c:	00008067          	ret
    if (!*handle) return -1;
    80003860:	fff00513          	li	a0,-1
    80003864:	fd9ff06f          	j	8000383c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    80003868:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000386c:	00048513          	mv	a0,s1
    80003870:	00000097          	auipc	ra,0x0
    80003874:	f40080e7          	jalr	-192(ra) # 800037b0 <_ZN3TCBdlEPv>
    80003878:	00090513          	mv	a0,s2
    8000387c:	0000b097          	auipc	ra,0xb
    80003880:	8ac080e7          	jalr	-1876(ra) # 8000e128 <_Unwind_Resume>

0000000080003884 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    80003884:	ff010113          	addi	sp,sp,-16
    80003888:	00113423          	sd	ra,8(sp)
    8000388c:	00813023          	sd	s0,0(sp)
    80003890:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	fd8080e7          	jalr	-40(ra) # 8000286c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000389c:	fffff097          	auipc	ra,0xfffff
    800038a0:	cc8080e7          	jalr	-824(ra) # 80002564 <_ZN15MemoryAllocator9mem_allocEm>
}
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	01010113          	addi	sp,sp,16
    800038b0:	00008067          	ret

00000000800038b4 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00113423          	sd	ra,8(sp)
    800038bc:	00813023          	sd	s0,0(sp)
    800038c0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	e14080e7          	jalr	-492(ra) # 800026d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800038cc:	00813083          	ld	ra,8(sp)
    800038d0:	00013403          	ld	s0,0(sp)
    800038d4:	01010113          	addi	sp,sp,16
    800038d8:	00008067          	ret

00000000800038dc <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800038dc:	ff010113          	addi	sp,sp,-16
    800038e0:	00813423          	sd	s0,8(sp)
    800038e4:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800038e8:	02052503          	lw	a0,32(a0)
    800038ec:	ffd50513          	addi	a0,a0,-3
}
    800038f0:	00153513          	seqz	a0,a0
    800038f4:	00813403          	ld	s0,8(sp)
    800038f8:	01010113          	addi	sp,sp,16
    800038fc:	00008067          	ret

0000000080003900 <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003900:	fe010113          	addi	sp,sp,-32
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	00813823          	sd	s0,16(sp)
    8000390c:	00913423          	sd	s1,8(sp)
    80003910:	02010413          	addi	s0,sp,32
    80003914:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003918:	02059063          	bnez	a1,80003938 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    8000391c:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003920:	0604b023          	sd	zero,96(s1)
}
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003938:	06053783          	ld	a5,96(a0)
    8000393c:	00050593          	mv	a1,a0
    80003940:	0087b503          	ld	a0,8(a5)
    80003944:	00000097          	auipc	ra,0x0
    80003948:	938080e7          	jalr	-1736(ra) # 8000327c <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    8000394c:	0604b703          	ld	a4,96(s1)
    80003950:	01072783          	lw	a5,16(a4)
    80003954:	0017879b          	addiw	a5,a5,1
    80003958:	00f72823          	sw	a5,16(a4)
    8000395c:	fc1ff06f          	j	8000391c <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003960 <_ZN3TCB5getIDEv>:

int TCB::getID() {
    80003960:	ff010113          	addi	sp,sp,-16
    80003964:	00113423          	sd	ra,8(sp)
    80003968:	00813023          	sd	s0,0(sp)
    8000396c:	01010413          	addi	s0,sp,16
    dispatch();
    80003970:	00000097          	auipc	ra,0x0
    80003974:	c74080e7          	jalr	-908(ra) # 800035e4 <_ZN3TCB8dispatchEv>
    return running -> id;
}
    80003978:	00009797          	auipc	a5,0x9
    8000397c:	6887b783          	ld	a5,1672(a5) # 8000d000 <_ZN3TCB7runningE>
    80003980:	0087a503          	lw	a0,8(a5)
    80003984:	00813083          	ld	ra,8(sp)
    80003988:	00013403          	ld	s0,0(sp)
    8000398c:	01010113          	addi	sp,sp,16
    80003990:	00008067          	ret

0000000080003994 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003994:	fe010113          	addi	sp,sp,-32
    80003998:	00113c23          	sd	ra,24(sp)
    8000399c:	00813823          	sd	s0,16(sp)
    800039a0:	00913423          	sd	s1,8(sp)
    800039a4:	01213023          	sd	s2,0(sp)
    800039a8:	02010413          	addi	s0,sp,32
    800039ac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800039b0:	00000913          	li	s2,0
    800039b4:	00c0006f          	j	800039c0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	a14080e7          	jalr	-1516(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	c60080e7          	jalr	-928(ra) # 80001620 <_Z4getcv>
    800039c8:	0005059b          	sext.w	a1,a0
    800039cc:	01b00793          	li	a5,27
    800039d0:	02f58a63          	beq	a1,a5,80003a04 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800039d4:	0084b503          	ld	a0,8(s1)
    800039d8:	00003097          	auipc	ra,0x3
    800039dc:	400080e7          	jalr	1024(ra) # 80006dd8 <_ZN6Buffer3putEi>
        i++;
    800039e0:	0019071b          	addiw	a4,s2,1
    800039e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039e8:	0004a683          	lw	a3,0(s1)
    800039ec:	0026979b          	slliw	a5,a3,0x2
    800039f0:	00d787bb          	addw	a5,a5,a3
    800039f4:	0017979b          	slliw	a5,a5,0x1
    800039f8:	02f767bb          	remw	a5,a4,a5
    800039fc:	fc0792e3          	bnez	a5,800039c0 <_ZL16producerKeyboardPv+0x2c>
    80003a00:	fb9ff06f          	j	800039b8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003a04:	00100793          	li	a5,1
    80003a08:	00009717          	auipc	a4,0x9
    80003a0c:	60f72423          	sw	a5,1544(a4) # 8000d010 <_ZL9threadEnd>
    data->buffer->put('!');
    80003a10:	02100593          	li	a1,33
    80003a14:	0084b503          	ld	a0,8(s1)
    80003a18:	00003097          	auipc	ra,0x3
    80003a1c:	3c0080e7          	jalr	960(ra) # 80006dd8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003a20:	0104b503          	ld	a0,16(s1)
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	acc080e7          	jalr	-1332(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a2c:	01813083          	ld	ra,24(sp)
    80003a30:	01013403          	ld	s0,16(sp)
    80003a34:	00813483          	ld	s1,8(sp)
    80003a38:	00013903          	ld	s2,0(sp)
    80003a3c:	02010113          	addi	sp,sp,32
    80003a40:	00008067          	ret

0000000080003a44 <_ZL8producerPv>:

static void producer(void *arg) {
    80003a44:	fe010113          	addi	sp,sp,-32
    80003a48:	00113c23          	sd	ra,24(sp)
    80003a4c:	00813823          	sd	s0,16(sp)
    80003a50:	00913423          	sd	s1,8(sp)
    80003a54:	01213023          	sd	s2,0(sp)
    80003a58:	02010413          	addi	s0,sp,32
    80003a5c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a60:	00000913          	li	s2,0
    80003a64:	00c0006f          	j	80003a70 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	964080e7          	jalr	-1692(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003a70:	00009797          	auipc	a5,0x9
    80003a74:	5a07a783          	lw	a5,1440(a5) # 8000d010 <_ZL9threadEnd>
    80003a78:	02079e63          	bnez	a5,80003ab4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003a7c:	0004a583          	lw	a1,0(s1)
    80003a80:	0305859b          	addiw	a1,a1,48
    80003a84:	0084b503          	ld	a0,8(s1)
    80003a88:	00003097          	auipc	ra,0x3
    80003a8c:	350080e7          	jalr	848(ra) # 80006dd8 <_ZN6Buffer3putEi>
        i++;
    80003a90:	0019071b          	addiw	a4,s2,1
    80003a94:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a98:	0004a683          	lw	a3,0(s1)
    80003a9c:	0026979b          	slliw	a5,a3,0x2
    80003aa0:	00d787bb          	addw	a5,a5,a3
    80003aa4:	0017979b          	slliw	a5,a5,0x1
    80003aa8:	02f767bb          	remw	a5,a4,a5
    80003aac:	fc0792e3          	bnez	a5,80003a70 <_ZL8producerPv+0x2c>
    80003ab0:	fb9ff06f          	j	80003a68 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003ab4:	0104b503          	ld	a0,16(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	a38080e7          	jalr	-1480(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	00013903          	ld	s2,0(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003ad8:	fd010113          	addi	sp,sp,-48
    80003adc:	02113423          	sd	ra,40(sp)
    80003ae0:	02813023          	sd	s0,32(sp)
    80003ae4:	00913c23          	sd	s1,24(sp)
    80003ae8:	01213823          	sd	s2,16(sp)
    80003aec:	01313423          	sd	s3,8(sp)
    80003af0:	03010413          	addi	s0,sp,48
    80003af4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003af8:	00000993          	li	s3,0
    80003afc:	01c0006f          	j	80003b18 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	8cc080e7          	jalr	-1844(ra) # 800013cc <_Z15thread_dispatchv>
    80003b08:	0500006f          	j	80003b58 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003b0c:	00a00513          	li	a0,10
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	b5c080e7          	jalr	-1188(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003b18:	00009797          	auipc	a5,0x9
    80003b1c:	4f87a783          	lw	a5,1272(a5) # 8000d010 <_ZL9threadEnd>
    80003b20:	06079063          	bnez	a5,80003b80 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003b24:	00893503          	ld	a0,8(s2)
    80003b28:	00003097          	auipc	ra,0x3
    80003b2c:	340080e7          	jalr	832(ra) # 80006e68 <_ZN6Buffer3getEv>
        i++;
    80003b30:	0019849b          	addiw	s1,s3,1
    80003b34:	0004899b          	sext.w	s3,s1
        putc(key);
    80003b38:	0ff57513          	andi	a0,a0,255
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	b30080e7          	jalr	-1232(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b44:	00092703          	lw	a4,0(s2)
    80003b48:	0027179b          	slliw	a5,a4,0x2
    80003b4c:	00e787bb          	addw	a5,a5,a4
    80003b50:	02f4e7bb          	remw	a5,s1,a5
    80003b54:	fa0786e3          	beqz	a5,80003b00 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003b58:	05000793          	li	a5,80
    80003b5c:	02f4e4bb          	remw	s1,s1,a5
    80003b60:	fa049ce3          	bnez	s1,80003b18 <_ZL8consumerPv+0x40>
    80003b64:	fa9ff06f          	j	80003b0c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003b68:	00893503          	ld	a0,8(s2)
    80003b6c:	00003097          	auipc	ra,0x3
    80003b70:	2fc080e7          	jalr	764(ra) # 80006e68 <_ZN6Buffer3getEv>
        putc(key);
    80003b74:	0ff57513          	andi	a0,a0,255
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	af4080e7          	jalr	-1292(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003b80:	00893503          	ld	a0,8(s2)
    80003b84:	00003097          	auipc	ra,0x3
    80003b88:	370080e7          	jalr	880(ra) # 80006ef4 <_ZN6Buffer6getCntEv>
    80003b8c:	fca04ee3          	bgtz	a0,80003b68 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003b90:	01093503          	ld	a0,16(s2)
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	95c080e7          	jalr	-1700(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003b9c:	02813083          	ld	ra,40(sp)
    80003ba0:	02013403          	ld	s0,32(sp)
    80003ba4:	01813483          	ld	s1,24(sp)
    80003ba8:	01013903          	ld	s2,16(sp)
    80003bac:	00813983          	ld	s3,8(sp)
    80003bb0:	03010113          	addi	sp,sp,48
    80003bb4:	00008067          	ret

0000000080003bb8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003bb8:	f9010113          	addi	sp,sp,-112
    80003bbc:	06113423          	sd	ra,104(sp)
    80003bc0:	06813023          	sd	s0,96(sp)
    80003bc4:	04913c23          	sd	s1,88(sp)
    80003bc8:	05213823          	sd	s2,80(sp)
    80003bcc:	05313423          	sd	s3,72(sp)
    80003bd0:	05413023          	sd	s4,64(sp)
    80003bd4:	03513c23          	sd	s5,56(sp)
    80003bd8:	03613823          	sd	s6,48(sp)
    80003bdc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003be0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003be4:	00006517          	auipc	a0,0x6
    80003be8:	56c50513          	addi	a0,a0,1388 # 8000a150 <CONSOLE_STATUS+0x140>
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	220080e7          	jalr	544(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    80003bf4:	01e00593          	li	a1,30
    80003bf8:	fa040493          	addi	s1,s0,-96
    80003bfc:	00048513          	mv	a0,s1
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	294080e7          	jalr	660(ra) # 80005e94 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	360080e7          	jalr	864(ra) # 80005f6c <_Z11stringToIntPKc>
    80003c14:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003c18:	00006517          	auipc	a0,0x6
    80003c1c:	55850513          	addi	a0,a0,1368 # 8000a170 <CONSOLE_STATUS+0x160>
    80003c20:	00002097          	auipc	ra,0x2
    80003c24:	1ec080e7          	jalr	492(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    80003c28:	01e00593          	li	a1,30
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	264080e7          	jalr	612(ra) # 80005e94 <_Z9getStringPci>
    n = stringToInt(input);
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	330080e7          	jalr	816(ra) # 80005f6c <_Z11stringToIntPKc>
    80003c44:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c48:	00006517          	auipc	a0,0x6
    80003c4c:	54850513          	addi	a0,a0,1352 # 8000a190 <CONSOLE_STATUS+0x180>
    80003c50:	00002097          	auipc	ra,0x2
    80003c54:	1bc080e7          	jalr	444(ra) # 80005e0c <_Z11printStringPKc>
    80003c58:	00000613          	li	a2,0
    80003c5c:	00a00593          	li	a1,10
    80003c60:	00090513          	mv	a0,s2
    80003c64:	00002097          	auipc	ra,0x2
    80003c68:	358080e7          	jalr	856(ra) # 80005fbc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c6c:	00006517          	auipc	a0,0x6
    80003c70:	53c50513          	addi	a0,a0,1340 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003c74:	00002097          	auipc	ra,0x2
    80003c78:	198080e7          	jalr	408(ra) # 80005e0c <_Z11printStringPKc>
    80003c7c:	00000613          	li	a2,0
    80003c80:	00a00593          	li	a1,10
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	334080e7          	jalr	820(ra) # 80005fbc <_Z8printIntiii>
    printString(".\n");
    80003c90:	00006517          	auipc	a0,0x6
    80003c94:	53050513          	addi	a0,a0,1328 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	174080e7          	jalr	372(ra) # 80005e0c <_Z11printStringPKc>
    if(threadNum > n) {
    80003ca0:	0324c463          	blt	s1,s2,80003cc8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003ca4:	03205c63          	blez	s2,80003cdc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003ca8:	03800513          	li	a0,56
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	438080e7          	jalr	1080(ra) # 800020e4 <_Znwm>
    80003cb4:	00050a13          	mv	s4,a0
    80003cb8:	00048593          	mv	a1,s1
    80003cbc:	00003097          	auipc	ra,0x3
    80003cc0:	080080e7          	jalr	128(ra) # 80006d3c <_ZN6BufferC1Ei>
    80003cc4:	0300006f          	j	80003cf4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003cc8:	00006517          	auipc	a0,0x6
    80003ccc:	50050513          	addi	a0,a0,1280 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80003cd0:	00002097          	auipc	ra,0x2
    80003cd4:	13c080e7          	jalr	316(ra) # 80005e0c <_Z11printStringPKc>
        return;
    80003cd8:	0140006f          	j	80003cec <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cdc:	00006517          	auipc	a0,0x6
    80003ce0:	52c50513          	addi	a0,a0,1324 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	128080e7          	jalr	296(ra) # 80005e0c <_Z11printStringPKc>
        return;
    80003cec:	000b0113          	mv	sp,s6
    80003cf0:	1500006f          	j	80003e40 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003cf4:	00000593          	li	a1,0
    80003cf8:	00009517          	auipc	a0,0x9
    80003cfc:	32050513          	addi	a0,a0,800 # 8000d018 <_ZL10waitForAll>
    80003d00:	ffffd097          	auipc	ra,0xffffd
    80003d04:	708080e7          	jalr	1800(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003d08:	00391793          	slli	a5,s2,0x3
    80003d0c:	00f78793          	addi	a5,a5,15
    80003d10:	ff07f793          	andi	a5,a5,-16
    80003d14:	40f10133          	sub	sp,sp,a5
    80003d18:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003d1c:	0019071b          	addiw	a4,s2,1
    80003d20:	00171793          	slli	a5,a4,0x1
    80003d24:	00e787b3          	add	a5,a5,a4
    80003d28:	00379793          	slli	a5,a5,0x3
    80003d2c:	00f78793          	addi	a5,a5,15
    80003d30:	ff07f793          	andi	a5,a5,-16
    80003d34:	40f10133          	sub	sp,sp,a5
    80003d38:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003d3c:	00191613          	slli	a2,s2,0x1
    80003d40:	012607b3          	add	a5,a2,s2
    80003d44:	00379793          	slli	a5,a5,0x3
    80003d48:	00f987b3          	add	a5,s3,a5
    80003d4c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d50:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003d54:	00009717          	auipc	a4,0x9
    80003d58:	2c473703          	ld	a4,708(a4) # 8000d018 <_ZL10waitForAll>
    80003d5c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003d60:	00078613          	mv	a2,a5
    80003d64:	00000597          	auipc	a1,0x0
    80003d68:	d7458593          	addi	a1,a1,-652 # 80003ad8 <_ZL8consumerPv>
    80003d6c:	f9840513          	addi	a0,s0,-104
    80003d70:	ffffd097          	auipc	ra,0xffffd
    80003d74:	588080e7          	jalr	1416(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d78:	00000493          	li	s1,0
    80003d7c:	0280006f          	j	80003da4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003d80:	00000597          	auipc	a1,0x0
    80003d84:	c1458593          	addi	a1,a1,-1004 # 80003994 <_ZL16producerKeyboardPv>
                      data + i);
    80003d88:	00179613          	slli	a2,a5,0x1
    80003d8c:	00f60633          	add	a2,a2,a5
    80003d90:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003d94:	00c98633          	add	a2,s3,a2
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	560080e7          	jalr	1376(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003da0:	0014849b          	addiw	s1,s1,1
    80003da4:	0524d263          	bge	s1,s2,80003de8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003da8:	00149793          	slli	a5,s1,0x1
    80003dac:	009787b3          	add	a5,a5,s1
    80003db0:	00379793          	slli	a5,a5,0x3
    80003db4:	00f987b3          	add	a5,s3,a5
    80003db8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003dbc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003dc0:	00009717          	auipc	a4,0x9
    80003dc4:	25873703          	ld	a4,600(a4) # 8000d018 <_ZL10waitForAll>
    80003dc8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003dcc:	00048793          	mv	a5,s1
    80003dd0:	00349513          	slli	a0,s1,0x3
    80003dd4:	00aa8533          	add	a0,s5,a0
    80003dd8:	fa9054e3          	blez	s1,80003d80 <_Z22producerConsumer_C_APIv+0x1c8>
    80003ddc:	00000597          	auipc	a1,0x0
    80003de0:	c6858593          	addi	a1,a1,-920 # 80003a44 <_ZL8producerPv>
    80003de4:	fa5ff06f          	j	80003d88 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003de8:	ffffd097          	auipc	ra,0xffffd
    80003dec:	5e4080e7          	jalr	1508(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003df0:	00000493          	li	s1,0
    80003df4:	00994e63          	blt	s2,s1,80003e10 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003df8:	00009517          	auipc	a0,0x9
    80003dfc:	22053503          	ld	a0,544(a0) # 8000d018 <_ZL10waitForAll>
    80003e00:	ffffd097          	auipc	ra,0xffffd
    80003e04:	6a4080e7          	jalr	1700(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003e08:	0014849b          	addiw	s1,s1,1
    80003e0c:	fe9ff06f          	j	80003df4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003e10:	00009517          	auipc	a0,0x9
    80003e14:	20853503          	ld	a0,520(a0) # 8000d018 <_ZL10waitForAll>
    80003e18:	ffffd097          	auipc	ra,0xffffd
    80003e1c:	640080e7          	jalr	1600(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003e20:	000a0e63          	beqz	s4,80003e3c <_Z22producerConsumer_C_APIv+0x284>
    80003e24:	000a0513          	mv	a0,s4
    80003e28:	00003097          	auipc	ra,0x3
    80003e2c:	154080e7          	jalr	340(ra) # 80006f7c <_ZN6BufferD1Ev>
    80003e30:	000a0513          	mv	a0,s4
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	2d8080e7          	jalr	728(ra) # 8000210c <_ZdlPv>
    80003e3c:	000b0113          	mv	sp,s6

}
    80003e40:	f9040113          	addi	sp,s0,-112
    80003e44:	06813083          	ld	ra,104(sp)
    80003e48:	06013403          	ld	s0,96(sp)
    80003e4c:	05813483          	ld	s1,88(sp)
    80003e50:	05013903          	ld	s2,80(sp)
    80003e54:	04813983          	ld	s3,72(sp)
    80003e58:	04013a03          	ld	s4,64(sp)
    80003e5c:	03813a83          	ld	s5,56(sp)
    80003e60:	03013b03          	ld	s6,48(sp)
    80003e64:	07010113          	addi	sp,sp,112
    80003e68:	00008067          	ret
    80003e6c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003e70:	000a0513          	mv	a0,s4
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	298080e7          	jalr	664(ra) # 8000210c <_ZdlPv>
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	0000a097          	auipc	ra,0xa
    80003e84:	2a8080e7          	jalr	680(ra) # 8000e128 <_Unwind_Resume>

0000000080003e88 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003e88:	fe010113          	addi	sp,sp,-32
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00913423          	sd	s1,8(sp)
    80003e98:	01213023          	sd	s2,0(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003ea4:	00100793          	li	a5,1
    80003ea8:	02a7f863          	bgeu	a5,a0,80003ed8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003eac:	00a00793          	li	a5,10
    80003eb0:	02f577b3          	remu	a5,a0,a5
    80003eb4:	02078e63          	beqz	a5,80003ef0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003eb8:	fff48513          	addi	a0,s1,-1
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	fcc080e7          	jalr	-52(ra) # 80003e88 <_ZL9fibonaccim>
    80003ec4:	00050913          	mv	s2,a0
    80003ec8:	ffe48513          	addi	a0,s1,-2
    80003ecc:	00000097          	auipc	ra,0x0
    80003ed0:	fbc080e7          	jalr	-68(ra) # 80003e88 <_ZL9fibonaccim>
    80003ed4:	00a90533          	add	a0,s2,a0
}
    80003ed8:	01813083          	ld	ra,24(sp)
    80003edc:	01013403          	ld	s0,16(sp)
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	00013903          	ld	s2,0(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ef0:	ffffd097          	auipc	ra,0xffffd
    80003ef4:	4dc080e7          	jalr	1244(ra) # 800013cc <_Z15thread_dispatchv>
    80003ef8:	fc1ff06f          	j	80003eb8 <_ZL9fibonaccim+0x30>

0000000080003efc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00113c23          	sd	ra,24(sp)
    80003f04:	00813823          	sd	s0,16(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	01213023          	sd	s2,0(sp)
    80003f10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f14:	00000913          	li	s2,0
    80003f18:	0380006f          	j	80003f50 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f1c:	ffffd097          	auipc	ra,0xffffd
    80003f20:	4b0080e7          	jalr	1200(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f24:	00148493          	addi	s1,s1,1
    80003f28:	000027b7          	lui	a5,0x2
    80003f2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f30:	0097ee63          	bltu	a5,s1,80003f4c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f34:	00000713          	li	a4,0
    80003f38:	000077b7          	lui	a5,0x7
    80003f3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f40:	fce7eee3          	bltu	a5,a4,80003f1c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003f44:	00170713          	addi	a4,a4,1
    80003f48:	ff1ff06f          	j	80003f38 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f4c:	00190913          	addi	s2,s2,1
    80003f50:	00900793          	li	a5,9
    80003f54:	0527e063          	bltu	a5,s2,80003f94 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f58:	00006517          	auipc	a0,0x6
    80003f5c:	2e050513          	addi	a0,a0,736 # 8000a238 <CONSOLE_STATUS+0x228>
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	eac080e7          	jalr	-340(ra) # 80005e0c <_Z11printStringPKc>
    80003f68:	00000613          	li	a2,0
    80003f6c:	00a00593          	li	a1,10
    80003f70:	0009051b          	sext.w	a0,s2
    80003f74:	00002097          	auipc	ra,0x2
    80003f78:	048080e7          	jalr	72(ra) # 80005fbc <_Z8printIntiii>
    80003f7c:	00006517          	auipc	a0,0x6
    80003f80:	50c50513          	addi	a0,a0,1292 # 8000a488 <CONSOLE_STATUS+0x478>
    80003f84:	00002097          	auipc	ra,0x2
    80003f88:	e88080e7          	jalr	-376(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f8c:	00000493          	li	s1,0
    80003f90:	f99ff06f          	j	80003f28 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003f94:	00006517          	auipc	a0,0x6
    80003f98:	2ac50513          	addi	a0,a0,684 # 8000a240 <CONSOLE_STATUS+0x230>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	e70080e7          	jalr	-400(ra) # 80005e0c <_Z11printStringPKc>
    finishedA = true;
    80003fa4:	00100793          	li	a5,1
    80003fa8:	00009717          	auipc	a4,0x9
    80003fac:	06f70c23          	sb	a5,120(a4) # 8000d020 <_ZL9finishedA>
}
    80003fb0:	01813083          	ld	ra,24(sp)
    80003fb4:	01013403          	ld	s0,16(sp)
    80003fb8:	00813483          	ld	s1,8(sp)
    80003fbc:	00013903          	ld	s2,0(sp)
    80003fc0:	02010113          	addi	sp,sp,32
    80003fc4:	00008067          	ret

0000000080003fc8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003fc8:	fe010113          	addi	sp,sp,-32
    80003fcc:	00113c23          	sd	ra,24(sp)
    80003fd0:	00813823          	sd	s0,16(sp)
    80003fd4:	00913423          	sd	s1,8(sp)
    80003fd8:	01213023          	sd	s2,0(sp)
    80003fdc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003fe0:	00000913          	li	s2,0
    80003fe4:	0380006f          	j	8000401c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fe8:	ffffd097          	auipc	ra,0xffffd
    80003fec:	3e4080e7          	jalr	996(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ff0:	00148493          	addi	s1,s1,1
    80003ff4:	000027b7          	lui	a5,0x2
    80003ff8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ffc:	0097ee63          	bltu	a5,s1,80004018 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004000:	00000713          	li	a4,0
    80004004:	000077b7          	lui	a5,0x7
    80004008:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000400c:	fce7eee3          	bltu	a5,a4,80003fe8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004010:	00170713          	addi	a4,a4,1
    80004014:	ff1ff06f          	j	80004004 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004018:	00190913          	addi	s2,s2,1
    8000401c:	00f00793          	li	a5,15
    80004020:	0527e063          	bltu	a5,s2,80004060 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004024:	00006517          	auipc	a0,0x6
    80004028:	22c50513          	addi	a0,a0,556 # 8000a250 <CONSOLE_STATUS+0x240>
    8000402c:	00002097          	auipc	ra,0x2
    80004030:	de0080e7          	jalr	-544(ra) # 80005e0c <_Z11printStringPKc>
    80004034:	00000613          	li	a2,0
    80004038:	00a00593          	li	a1,10
    8000403c:	0009051b          	sext.w	a0,s2
    80004040:	00002097          	auipc	ra,0x2
    80004044:	f7c080e7          	jalr	-132(ra) # 80005fbc <_Z8printIntiii>
    80004048:	00006517          	auipc	a0,0x6
    8000404c:	44050513          	addi	a0,a0,1088 # 8000a488 <CONSOLE_STATUS+0x478>
    80004050:	00002097          	auipc	ra,0x2
    80004054:	dbc080e7          	jalr	-580(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004058:	00000493          	li	s1,0
    8000405c:	f99ff06f          	j	80003ff4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004060:	00006517          	auipc	a0,0x6
    80004064:	1f850513          	addi	a0,a0,504 # 8000a258 <CONSOLE_STATUS+0x248>
    80004068:	00002097          	auipc	ra,0x2
    8000406c:	da4080e7          	jalr	-604(ra) # 80005e0c <_Z11printStringPKc>
    finishedB = true;
    80004070:	00100793          	li	a5,1
    80004074:	00009717          	auipc	a4,0x9
    80004078:	faf706a3          	sb	a5,-83(a4) # 8000d021 <_ZL9finishedB>
    thread_dispatch();
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	350080e7          	jalr	848(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004084:	01813083          	ld	ra,24(sp)
    80004088:	01013403          	ld	s0,16(sp)
    8000408c:	00813483          	ld	s1,8(sp)
    80004090:	00013903          	ld	s2,0(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret

000000008000409c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00113c23          	sd	ra,24(sp)
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	01213023          	sd	s2,0(sp)
    800040b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800040b4:	00000493          	li	s1,0
    800040b8:	0400006f          	j	800040f8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040bc:	00006517          	auipc	a0,0x6
    800040c0:	1ac50513          	addi	a0,a0,428 # 8000a268 <CONSOLE_STATUS+0x258>
    800040c4:	00002097          	auipc	ra,0x2
    800040c8:	d48080e7          	jalr	-696(ra) # 80005e0c <_Z11printStringPKc>
    800040cc:	00000613          	li	a2,0
    800040d0:	00a00593          	li	a1,10
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00002097          	auipc	ra,0x2
    800040dc:	ee4080e7          	jalr	-284(ra) # 80005fbc <_Z8printIntiii>
    800040e0:	00006517          	auipc	a0,0x6
    800040e4:	3a850513          	addi	a0,a0,936 # 8000a488 <CONSOLE_STATUS+0x478>
    800040e8:	00002097          	auipc	ra,0x2
    800040ec:	d24080e7          	jalr	-732(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800040f0:	0014849b          	addiw	s1,s1,1
    800040f4:	0ff4f493          	andi	s1,s1,255
    800040f8:	00200793          	li	a5,2
    800040fc:	fc97f0e3          	bgeu	a5,s1,800040bc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004100:	00006517          	auipc	a0,0x6
    80004104:	17050513          	addi	a0,a0,368 # 8000a270 <CONSOLE_STATUS+0x260>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	d04080e7          	jalr	-764(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004110:	00700313          	li	t1,7
    thread_dispatch();
    80004114:	ffffd097          	auipc	ra,0xffffd
    80004118:	2b8080e7          	jalr	696(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000411c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004120:	00006517          	auipc	a0,0x6
    80004124:	16050513          	addi	a0,a0,352 # 8000a280 <CONSOLE_STATUS+0x270>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	ce4080e7          	jalr	-796(ra) # 80005e0c <_Z11printStringPKc>
    80004130:	00000613          	li	a2,0
    80004134:	00a00593          	li	a1,10
    80004138:	0009051b          	sext.w	a0,s2
    8000413c:	00002097          	auipc	ra,0x2
    80004140:	e80080e7          	jalr	-384(ra) # 80005fbc <_Z8printIntiii>
    80004144:	00006517          	auipc	a0,0x6
    80004148:	34450513          	addi	a0,a0,836 # 8000a488 <CONSOLE_STATUS+0x478>
    8000414c:	00002097          	auipc	ra,0x2
    80004150:	cc0080e7          	jalr	-832(ra) # 80005e0c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004154:	00c00513          	li	a0,12
    80004158:	00000097          	auipc	ra,0x0
    8000415c:	d30080e7          	jalr	-720(ra) # 80003e88 <_ZL9fibonaccim>
    80004160:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004164:	00006517          	auipc	a0,0x6
    80004168:	12450513          	addi	a0,a0,292 # 8000a288 <CONSOLE_STATUS+0x278>
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	ca0080e7          	jalr	-864(ra) # 80005e0c <_Z11printStringPKc>
    80004174:	00000613          	li	a2,0
    80004178:	00a00593          	li	a1,10
    8000417c:	0009051b          	sext.w	a0,s2
    80004180:	00002097          	auipc	ra,0x2
    80004184:	e3c080e7          	jalr	-452(ra) # 80005fbc <_Z8printIntiii>
    80004188:	00006517          	auipc	a0,0x6
    8000418c:	30050513          	addi	a0,a0,768 # 8000a488 <CONSOLE_STATUS+0x478>
    80004190:	00002097          	auipc	ra,0x2
    80004194:	c7c080e7          	jalr	-900(ra) # 80005e0c <_Z11printStringPKc>
    80004198:	0400006f          	j	800041d8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000419c:	00006517          	auipc	a0,0x6
    800041a0:	0cc50513          	addi	a0,a0,204 # 8000a268 <CONSOLE_STATUS+0x258>
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	c68080e7          	jalr	-920(ra) # 80005e0c <_Z11printStringPKc>
    800041ac:	00000613          	li	a2,0
    800041b0:	00a00593          	li	a1,10
    800041b4:	00048513          	mv	a0,s1
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	e04080e7          	jalr	-508(ra) # 80005fbc <_Z8printIntiii>
    800041c0:	00006517          	auipc	a0,0x6
    800041c4:	2c850513          	addi	a0,a0,712 # 8000a488 <CONSOLE_STATUS+0x478>
    800041c8:	00002097          	auipc	ra,0x2
    800041cc:	c44080e7          	jalr	-956(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800041d0:	0014849b          	addiw	s1,s1,1
    800041d4:	0ff4f493          	andi	s1,s1,255
    800041d8:	00500793          	li	a5,5
    800041dc:	fc97f0e3          	bgeu	a5,s1,8000419c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800041e0:	00006517          	auipc	a0,0x6
    800041e4:	06050513          	addi	a0,a0,96 # 8000a240 <CONSOLE_STATUS+0x230>
    800041e8:	00002097          	auipc	ra,0x2
    800041ec:	c24080e7          	jalr	-988(ra) # 80005e0c <_Z11printStringPKc>
    finishedC = true;
    800041f0:	00100793          	li	a5,1
    800041f4:	00009717          	auipc	a4,0x9
    800041f8:	e2f70723          	sb	a5,-466(a4) # 8000d022 <_ZL9finishedC>
    thread_dispatch();
    800041fc:	ffffd097          	auipc	ra,0xffffd
    80004200:	1d0080e7          	jalr	464(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004204:	01813083          	ld	ra,24(sp)
    80004208:	01013403          	ld	s0,16(sp)
    8000420c:	00813483          	ld	s1,8(sp)
    80004210:	00013903          	ld	s2,0(sp)
    80004214:	02010113          	addi	sp,sp,32
    80004218:	00008067          	ret

000000008000421c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000421c:	fe010113          	addi	sp,sp,-32
    80004220:	00113c23          	sd	ra,24(sp)
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	01213023          	sd	s2,0(sp)
    80004230:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004234:	00a00493          	li	s1,10
    80004238:	0400006f          	j	80004278 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000423c:	00006517          	auipc	a0,0x6
    80004240:	05c50513          	addi	a0,a0,92 # 8000a298 <CONSOLE_STATUS+0x288>
    80004244:	00002097          	auipc	ra,0x2
    80004248:	bc8080e7          	jalr	-1080(ra) # 80005e0c <_Z11printStringPKc>
    8000424c:	00000613          	li	a2,0
    80004250:	00a00593          	li	a1,10
    80004254:	00048513          	mv	a0,s1
    80004258:	00002097          	auipc	ra,0x2
    8000425c:	d64080e7          	jalr	-668(ra) # 80005fbc <_Z8printIntiii>
    80004260:	00006517          	auipc	a0,0x6
    80004264:	22850513          	addi	a0,a0,552 # 8000a488 <CONSOLE_STATUS+0x478>
    80004268:	00002097          	auipc	ra,0x2
    8000426c:	ba4080e7          	jalr	-1116(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004270:	0014849b          	addiw	s1,s1,1
    80004274:	0ff4f493          	andi	s1,s1,255
    80004278:	00c00793          	li	a5,12
    8000427c:	fc97f0e3          	bgeu	a5,s1,8000423c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004280:	00006517          	auipc	a0,0x6
    80004284:	02050513          	addi	a0,a0,32 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004288:	00002097          	auipc	ra,0x2
    8000428c:	b84080e7          	jalr	-1148(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004290:	00500313          	li	t1,5
    thread_dispatch();
    80004294:	ffffd097          	auipc	ra,0xffffd
    80004298:	138080e7          	jalr	312(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000429c:	01000513          	li	a0,16
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	be8080e7          	jalr	-1048(ra) # 80003e88 <_ZL9fibonaccim>
    800042a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800042ac:	00006517          	auipc	a0,0x6
    800042b0:	00450513          	addi	a0,a0,4 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800042b4:	00002097          	auipc	ra,0x2
    800042b8:	b58080e7          	jalr	-1192(ra) # 80005e0c <_Z11printStringPKc>
    800042bc:	00000613          	li	a2,0
    800042c0:	00a00593          	li	a1,10
    800042c4:	0009051b          	sext.w	a0,s2
    800042c8:	00002097          	auipc	ra,0x2
    800042cc:	cf4080e7          	jalr	-780(ra) # 80005fbc <_Z8printIntiii>
    800042d0:	00006517          	auipc	a0,0x6
    800042d4:	1b850513          	addi	a0,a0,440 # 8000a488 <CONSOLE_STATUS+0x478>
    800042d8:	00002097          	auipc	ra,0x2
    800042dc:	b34080e7          	jalr	-1228(ra) # 80005e0c <_Z11printStringPKc>
    800042e0:	0400006f          	j	80004320 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042e4:	00006517          	auipc	a0,0x6
    800042e8:	fb450513          	addi	a0,a0,-76 # 8000a298 <CONSOLE_STATUS+0x288>
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	b20080e7          	jalr	-1248(ra) # 80005e0c <_Z11printStringPKc>
    800042f4:	00000613          	li	a2,0
    800042f8:	00a00593          	li	a1,10
    800042fc:	00048513          	mv	a0,s1
    80004300:	00002097          	auipc	ra,0x2
    80004304:	cbc080e7          	jalr	-836(ra) # 80005fbc <_Z8printIntiii>
    80004308:	00006517          	auipc	a0,0x6
    8000430c:	18050513          	addi	a0,a0,384 # 8000a488 <CONSOLE_STATUS+0x478>
    80004310:	00002097          	auipc	ra,0x2
    80004314:	afc080e7          	jalr	-1284(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004318:	0014849b          	addiw	s1,s1,1
    8000431c:	0ff4f493          	andi	s1,s1,255
    80004320:	00f00793          	li	a5,15
    80004324:	fc97f0e3          	bgeu	a5,s1,800042e4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004328:	00006517          	auipc	a0,0x6
    8000432c:	f9850513          	addi	a0,a0,-104 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80004330:	00002097          	auipc	ra,0x2
    80004334:	adc080e7          	jalr	-1316(ra) # 80005e0c <_Z11printStringPKc>
    finishedD = true;
    80004338:	00100793          	li	a5,1
    8000433c:	00009717          	auipc	a4,0x9
    80004340:	cef703a3          	sb	a5,-793(a4) # 8000d023 <_ZL9finishedD>
    thread_dispatch();
    80004344:	ffffd097          	auipc	ra,0xffffd
    80004348:	088080e7          	jalr	136(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	00013903          	ld	s2,0(sp)
    8000435c:	02010113          	addi	sp,sp,32
    80004360:	00008067          	ret

0000000080004364 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004364:	fc010113          	addi	sp,sp,-64
    80004368:	02113c23          	sd	ra,56(sp)
    8000436c:	02813823          	sd	s0,48(sp)
    80004370:	02913423          	sd	s1,40(sp)
    80004374:	03213023          	sd	s2,32(sp)
    80004378:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000437c:	02000513          	li	a0,32
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	d64080e7          	jalr	-668(ra) # 800020e4 <_Znwm>
    80004388:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	e58080e7          	jalr	-424(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80004394:	00009797          	auipc	a5,0x9
    80004398:	98478793          	addi	a5,a5,-1660 # 8000cd18 <_ZTV7WorkerA+0x10>
    8000439c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800043a0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800043a4:	00006517          	auipc	a0,0x6
    800043a8:	f2c50513          	addi	a0,a0,-212 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    800043ac:	00002097          	auipc	ra,0x2
    800043b0:	a60080e7          	jalr	-1440(ra) # 80005e0c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800043b4:	02000513          	li	a0,32
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	d2c080e7          	jalr	-724(ra) # 800020e4 <_Znwm>
    800043c0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	e20080e7          	jalr	-480(ra) # 800021e4 <_ZN6ThreadC1Ev>
    800043cc:	00009797          	auipc	a5,0x9
    800043d0:	97478793          	addi	a5,a5,-1676 # 8000cd40 <_ZTV7WorkerB+0x10>
    800043d4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800043d8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800043dc:	00006517          	auipc	a0,0x6
    800043e0:	f0c50513          	addi	a0,a0,-244 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    800043e4:	00002097          	auipc	ra,0x2
    800043e8:	a28080e7          	jalr	-1496(ra) # 80005e0c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800043ec:	02000513          	li	a0,32
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	cf4080e7          	jalr	-780(ra) # 800020e4 <_Znwm>
    800043f8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	de8080e7          	jalr	-536(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80004404:	00009797          	auipc	a5,0x9
    80004408:	96478793          	addi	a5,a5,-1692 # 8000cd68 <_ZTV7WorkerC+0x10>
    8000440c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004410:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004414:	00006517          	auipc	a0,0x6
    80004418:	eec50513          	addi	a0,a0,-276 # 8000a300 <CONSOLE_STATUS+0x2f0>
    8000441c:	00002097          	auipc	ra,0x2
    80004420:	9f0080e7          	jalr	-1552(ra) # 80005e0c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004424:	02000513          	li	a0,32
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	cbc080e7          	jalr	-836(ra) # 800020e4 <_Znwm>
    80004430:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004434:	ffffe097          	auipc	ra,0xffffe
    80004438:	db0080e7          	jalr	-592(ra) # 800021e4 <_ZN6ThreadC1Ev>
    8000443c:	00009797          	auipc	a5,0x9
    80004440:	95478793          	addi	a5,a5,-1708 # 8000cd90 <_ZTV7WorkerD+0x10>
    80004444:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004448:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000444c:	00006517          	auipc	a0,0x6
    80004450:	ecc50513          	addi	a0,a0,-308 # 8000a318 <CONSOLE_STATUS+0x308>
    80004454:	00002097          	auipc	ra,0x2
    80004458:	9b8080e7          	jalr	-1608(ra) # 80005e0c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000445c:	00000493          	li	s1,0
    80004460:	00300793          	li	a5,3
    80004464:	0297c663          	blt	a5,s1,80004490 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004468:	00349793          	slli	a5,s1,0x3
    8000446c:	fe040713          	addi	a4,s0,-32
    80004470:	00f707b3          	add	a5,a4,a5
    80004474:	fe07b503          	ld	a0,-32(a5)
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	d9c080e7          	jalr	-612(ra) # 80002214 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004480:	0014849b          	addiw	s1,s1,1
    80004484:	fddff06f          	j	80004460 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	dc4080e7          	jalr	-572(ra) # 8000224c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004490:	00009797          	auipc	a5,0x9
    80004494:	b907c783          	lbu	a5,-1136(a5) # 8000d020 <_ZL9finishedA>
    80004498:	fe0788e3          	beqz	a5,80004488 <_Z20Threads_CPP_API_testv+0x124>
    8000449c:	00009797          	auipc	a5,0x9
    800044a0:	b857c783          	lbu	a5,-1147(a5) # 8000d021 <_ZL9finishedB>
    800044a4:	fe0782e3          	beqz	a5,80004488 <_Z20Threads_CPP_API_testv+0x124>
    800044a8:	00009797          	auipc	a5,0x9
    800044ac:	b7a7c783          	lbu	a5,-1158(a5) # 8000d022 <_ZL9finishedC>
    800044b0:	fc078ce3          	beqz	a5,80004488 <_Z20Threads_CPP_API_testv+0x124>
    800044b4:	00009797          	auipc	a5,0x9
    800044b8:	b6f7c783          	lbu	a5,-1169(a5) # 8000d023 <_ZL9finishedD>
    800044bc:	fc0786e3          	beqz	a5,80004488 <_Z20Threads_CPP_API_testv+0x124>
    800044c0:	fc040493          	addi	s1,s0,-64
    800044c4:	0080006f          	j	800044cc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800044c8:	00848493          	addi	s1,s1,8
    800044cc:	fe040793          	addi	a5,s0,-32
    800044d0:	08f48663          	beq	s1,a5,8000455c <_Z20Threads_CPP_API_testv+0x1f8>
    800044d4:	0004b503          	ld	a0,0(s1)
    800044d8:	fe0508e3          	beqz	a0,800044c8 <_Z20Threads_CPP_API_testv+0x164>
    800044dc:	00053783          	ld	a5,0(a0)
    800044e0:	0087b783          	ld	a5,8(a5)
    800044e4:	000780e7          	jalr	a5
    800044e8:	fe1ff06f          	j	800044c8 <_Z20Threads_CPP_API_testv+0x164>
    800044ec:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800044f0:	00048513          	mv	a0,s1
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	c18080e7          	jalr	-1000(ra) # 8000210c <_ZdlPv>
    800044fc:	00090513          	mv	a0,s2
    80004500:	0000a097          	auipc	ra,0xa
    80004504:	c28080e7          	jalr	-984(ra) # 8000e128 <_Unwind_Resume>
    80004508:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000450c:	00048513          	mv	a0,s1
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	bfc080e7          	jalr	-1028(ra) # 8000210c <_ZdlPv>
    80004518:	00090513          	mv	a0,s2
    8000451c:	0000a097          	auipc	ra,0xa
    80004520:	c0c080e7          	jalr	-1012(ra) # 8000e128 <_Unwind_Resume>
    80004524:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004528:	00048513          	mv	a0,s1
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	be0080e7          	jalr	-1056(ra) # 8000210c <_ZdlPv>
    80004534:	00090513          	mv	a0,s2
    80004538:	0000a097          	auipc	ra,0xa
    8000453c:	bf0080e7          	jalr	-1040(ra) # 8000e128 <_Unwind_Resume>
    80004540:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004544:	00048513          	mv	a0,s1
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	bc4080e7          	jalr	-1084(ra) # 8000210c <_ZdlPv>
    80004550:	00090513          	mv	a0,s2
    80004554:	0000a097          	auipc	ra,0xa
    80004558:	bd4080e7          	jalr	-1068(ra) # 8000e128 <_Unwind_Resume>
}
    8000455c:	03813083          	ld	ra,56(sp)
    80004560:	03013403          	ld	s0,48(sp)
    80004564:	02813483          	ld	s1,40(sp)
    80004568:	02013903          	ld	s2,32(sp)
    8000456c:	04010113          	addi	sp,sp,64
    80004570:	00008067          	ret

0000000080004574 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004574:	ff010113          	addi	sp,sp,-16
    80004578:	00113423          	sd	ra,8(sp)
    8000457c:	00813023          	sd	s0,0(sp)
    80004580:	01010413          	addi	s0,sp,16
    80004584:	00008797          	auipc	a5,0x8
    80004588:	79478793          	addi	a5,a5,1940 # 8000cd18 <_ZTV7WorkerA+0x10>
    8000458c:	00f53023          	sd	a5,0(a0)
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	a64080e7          	jalr	-1436(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004598:	00813083          	ld	ra,8(sp)
    8000459c:	00013403          	ld	s0,0(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret

00000000800045a8 <_ZN7WorkerAD0Ev>:
    800045a8:	fe010113          	addi	sp,sp,-32
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	02010413          	addi	s0,sp,32
    800045bc:	00050493          	mv	s1,a0
    800045c0:	00008797          	auipc	a5,0x8
    800045c4:	75878793          	addi	a5,a5,1880 # 8000cd18 <_ZTV7WorkerA+0x10>
    800045c8:	00f53023          	sd	a5,0(a0)
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	a28080e7          	jalr	-1496(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    800045d4:	00048513          	mv	a0,s1
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	b34080e7          	jalr	-1228(ra) # 8000210c <_ZdlPv>
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	00813483          	ld	s1,8(sp)
    800045ec:	02010113          	addi	sp,sp,32
    800045f0:	00008067          	ret

00000000800045f4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800045f4:	ff010113          	addi	sp,sp,-16
    800045f8:	00113423          	sd	ra,8(sp)
    800045fc:	00813023          	sd	s0,0(sp)
    80004600:	01010413          	addi	s0,sp,16
    80004604:	00008797          	auipc	a5,0x8
    80004608:	73c78793          	addi	a5,a5,1852 # 8000cd40 <_ZTV7WorkerB+0x10>
    8000460c:	00f53023          	sd	a5,0(a0)
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	9e4080e7          	jalr	-1564(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004618:	00813083          	ld	ra,8(sp)
    8000461c:	00013403          	ld	s0,0(sp)
    80004620:	01010113          	addi	sp,sp,16
    80004624:	00008067          	ret

0000000080004628 <_ZN7WorkerBD0Ev>:
    80004628:	fe010113          	addi	sp,sp,-32
    8000462c:	00113c23          	sd	ra,24(sp)
    80004630:	00813823          	sd	s0,16(sp)
    80004634:	00913423          	sd	s1,8(sp)
    80004638:	02010413          	addi	s0,sp,32
    8000463c:	00050493          	mv	s1,a0
    80004640:	00008797          	auipc	a5,0x8
    80004644:	70078793          	addi	a5,a5,1792 # 8000cd40 <_ZTV7WorkerB+0x10>
    80004648:	00f53023          	sd	a5,0(a0)
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	9a8080e7          	jalr	-1624(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004654:	00048513          	mv	a0,s1
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	ab4080e7          	jalr	-1356(ra) # 8000210c <_ZdlPv>
    80004660:	01813083          	ld	ra,24(sp)
    80004664:	01013403          	ld	s0,16(sp)
    80004668:	00813483          	ld	s1,8(sp)
    8000466c:	02010113          	addi	sp,sp,32
    80004670:	00008067          	ret

0000000080004674 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004674:	ff010113          	addi	sp,sp,-16
    80004678:	00113423          	sd	ra,8(sp)
    8000467c:	00813023          	sd	s0,0(sp)
    80004680:	01010413          	addi	s0,sp,16
    80004684:	00008797          	auipc	a5,0x8
    80004688:	6e478793          	addi	a5,a5,1764 # 8000cd68 <_ZTV7WorkerC+0x10>
    8000468c:	00f53023          	sd	a5,0(a0)
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	964080e7          	jalr	-1692(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004698:	00813083          	ld	ra,8(sp)
    8000469c:	00013403          	ld	s0,0(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret

00000000800046a8 <_ZN7WorkerCD0Ev>:
    800046a8:	fe010113          	addi	sp,sp,-32
    800046ac:	00113c23          	sd	ra,24(sp)
    800046b0:	00813823          	sd	s0,16(sp)
    800046b4:	00913423          	sd	s1,8(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00050493          	mv	s1,a0
    800046c0:	00008797          	auipc	a5,0x8
    800046c4:	6a878793          	addi	a5,a5,1704 # 8000cd68 <_ZTV7WorkerC+0x10>
    800046c8:	00f53023          	sd	a5,0(a0)
    800046cc:	ffffe097          	auipc	ra,0xffffe
    800046d0:	928080e7          	jalr	-1752(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    800046d4:	00048513          	mv	a0,s1
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	a34080e7          	jalr	-1484(ra) # 8000210c <_ZdlPv>
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	00813483          	ld	s1,8(sp)
    800046ec:	02010113          	addi	sp,sp,32
    800046f0:	00008067          	ret

00000000800046f4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00113423          	sd	ra,8(sp)
    800046fc:	00813023          	sd	s0,0(sp)
    80004700:	01010413          	addi	s0,sp,16
    80004704:	00008797          	auipc	a5,0x8
    80004708:	68c78793          	addi	a5,a5,1676 # 8000cd90 <_ZTV7WorkerD+0x10>
    8000470c:	00f53023          	sd	a5,0(a0)
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	8e4080e7          	jalr	-1820(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN7WorkerDD0Ev>:
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00913423          	sd	s1,8(sp)
    80004738:	02010413          	addi	s0,sp,32
    8000473c:	00050493          	mv	s1,a0
    80004740:	00008797          	auipc	a5,0x8
    80004744:	65078793          	addi	a5,a5,1616 # 8000cd90 <_ZTV7WorkerD+0x10>
    80004748:	00f53023          	sd	a5,0(a0)
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	8a8080e7          	jalr	-1880(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004754:	00048513          	mv	a0,s1
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	9b4080e7          	jalr	-1612(ra) # 8000210c <_ZdlPv>
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	02010113          	addi	sp,sp,32
    80004770:	00008067          	ret

0000000080004774 <_ZN7WorkerA3runEv>:
    void run() override {
    80004774:	ff010113          	addi	sp,sp,-16
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	00813023          	sd	s0,0(sp)
    80004780:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004784:	00000593          	li	a1,0
    80004788:	fffff097          	auipc	ra,0xfffff
    8000478c:	774080e7          	jalr	1908(ra) # 80003efc <_ZN7WorkerA11workerBodyAEPv>
    }
    80004790:	00813083          	ld	ra,8(sp)
    80004794:	00013403          	ld	s0,0(sp)
    80004798:	01010113          	addi	sp,sp,16
    8000479c:	00008067          	ret

00000000800047a0 <_ZN7WorkerB3runEv>:
    void run() override {
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00113423          	sd	ra,8(sp)
    800047a8:	00813023          	sd	s0,0(sp)
    800047ac:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800047b0:	00000593          	li	a1,0
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	814080e7          	jalr	-2028(ra) # 80003fc8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800047bc:	00813083          	ld	ra,8(sp)
    800047c0:	00013403          	ld	s0,0(sp)
    800047c4:	01010113          	addi	sp,sp,16
    800047c8:	00008067          	ret

00000000800047cc <_ZN7WorkerC3runEv>:
    void run() override {
    800047cc:	ff010113          	addi	sp,sp,-16
    800047d0:	00113423          	sd	ra,8(sp)
    800047d4:	00813023          	sd	s0,0(sp)
    800047d8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800047dc:	00000593          	li	a1,0
    800047e0:	00000097          	auipc	ra,0x0
    800047e4:	8bc080e7          	jalr	-1860(ra) # 8000409c <_ZN7WorkerC11workerBodyCEPv>
    }
    800047e8:	00813083          	ld	ra,8(sp)
    800047ec:	00013403          	ld	s0,0(sp)
    800047f0:	01010113          	addi	sp,sp,16
    800047f4:	00008067          	ret

00000000800047f8 <_ZN7WorkerD3runEv>:
    void run() override {
    800047f8:	ff010113          	addi	sp,sp,-16
    800047fc:	00113423          	sd	ra,8(sp)
    80004800:	00813023          	sd	s0,0(sp)
    80004804:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004808:	00000593          	li	a1,0
    8000480c:	00000097          	auipc	ra,0x0
    80004810:	a10080e7          	jalr	-1520(ra) # 8000421c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004814:	00813083          	ld	ra,8(sp)
    80004818:	00013403          	ld	s0,0(sp)
    8000481c:	01010113          	addi	sp,sp,16
    80004820:	00008067          	ret

0000000080004824 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004824:	f8010113          	addi	sp,sp,-128
    80004828:	06113c23          	sd	ra,120(sp)
    8000482c:	06813823          	sd	s0,112(sp)
    80004830:	06913423          	sd	s1,104(sp)
    80004834:	07213023          	sd	s2,96(sp)
    80004838:	05313c23          	sd	s3,88(sp)
    8000483c:	05413823          	sd	s4,80(sp)
    80004840:	05513423          	sd	s5,72(sp)
    80004844:	05613023          	sd	s6,64(sp)
    80004848:	03713c23          	sd	s7,56(sp)
    8000484c:	03813823          	sd	s8,48(sp)
    80004850:	03913423          	sd	s9,40(sp)
    80004854:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004858:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000485c:	00006517          	auipc	a0,0x6
    80004860:	8f450513          	addi	a0,a0,-1804 # 8000a150 <CONSOLE_STATUS+0x140>
    80004864:	00001097          	auipc	ra,0x1
    80004868:	5a8080e7          	jalr	1448(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    8000486c:	01e00593          	li	a1,30
    80004870:	f8040493          	addi	s1,s0,-128
    80004874:	00048513          	mv	a0,s1
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	61c080e7          	jalr	1564(ra) # 80005e94 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004880:	00048513          	mv	a0,s1
    80004884:	00001097          	auipc	ra,0x1
    80004888:	6e8080e7          	jalr	1768(ra) # 80005f6c <_Z11stringToIntPKc>
    8000488c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004890:	00006517          	auipc	a0,0x6
    80004894:	8e050513          	addi	a0,a0,-1824 # 8000a170 <CONSOLE_STATUS+0x160>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	574080e7          	jalr	1396(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    800048a0:	01e00593          	li	a1,30
    800048a4:	00048513          	mv	a0,s1
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	5ec080e7          	jalr	1516(ra) # 80005e94 <_Z9getStringPci>
    n = stringToInt(input);
    800048b0:	00048513          	mv	a0,s1
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	6b8080e7          	jalr	1720(ra) # 80005f6c <_Z11stringToIntPKc>
    800048bc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800048c0:	00006517          	auipc	a0,0x6
    800048c4:	8d050513          	addi	a0,a0,-1840 # 8000a190 <CONSOLE_STATUS+0x180>
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	544080e7          	jalr	1348(ra) # 80005e0c <_Z11printStringPKc>
    printInt(threadNum);
    800048d0:	00000613          	li	a2,0
    800048d4:	00a00593          	li	a1,10
    800048d8:	00098513          	mv	a0,s3
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	6e0080e7          	jalr	1760(ra) # 80005fbc <_Z8printIntiii>
    printString(" i velicina bafera ");
    800048e4:	00006517          	auipc	a0,0x6
    800048e8:	8c450513          	addi	a0,a0,-1852 # 8000a1a8 <CONSOLE_STATUS+0x198>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	520080e7          	jalr	1312(ra) # 80005e0c <_Z11printStringPKc>
    printInt(n);
    800048f4:	00000613          	li	a2,0
    800048f8:	00a00593          	li	a1,10
    800048fc:	00048513          	mv	a0,s1
    80004900:	00001097          	auipc	ra,0x1
    80004904:	6bc080e7          	jalr	1724(ra) # 80005fbc <_Z8printIntiii>
    printString(".\n");
    80004908:	00006517          	auipc	a0,0x6
    8000490c:	8b850513          	addi	a0,a0,-1864 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	4fc080e7          	jalr	1276(ra) # 80005e0c <_Z11printStringPKc>
    if (threadNum > n) {
    80004918:	0334c463          	blt	s1,s3,80004940 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000491c:	03305c63          	blez	s3,80004954 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004920:	03800513          	li	a0,56
    80004924:	ffffd097          	auipc	ra,0xffffd
    80004928:	7c0080e7          	jalr	1984(ra) # 800020e4 <_Znwm>
    8000492c:	00050a93          	mv	s5,a0
    80004930:	00048593          	mv	a1,s1
    80004934:	00001097          	auipc	ra,0x1
    80004938:	7a8080e7          	jalr	1960(ra) # 800060dc <_ZN9BufferCPPC1Ei>
    8000493c:	0300006f          	j	8000496c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004940:	00006517          	auipc	a0,0x6
    80004944:	88850513          	addi	a0,a0,-1912 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	4c4080e7          	jalr	1220(ra) # 80005e0c <_Z11printStringPKc>
        return;
    80004950:	0140006f          	j	80004964 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004954:	00006517          	auipc	a0,0x6
    80004958:	8b450513          	addi	a0,a0,-1868 # 8000a208 <CONSOLE_STATUS+0x1f8>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	4b0080e7          	jalr	1200(ra) # 80005e0c <_Z11printStringPKc>
        return;
    80004964:	000c0113          	mv	sp,s8
    80004968:	2140006f          	j	80004b7c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000496c:	01000513          	li	a0,16
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	774080e7          	jalr	1908(ra) # 800020e4 <_Znwm>
    80004978:	00050913          	mv	s2,a0
    8000497c:	00000593          	li	a1,0
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	91c080e7          	jalr	-1764(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    80004988:	00008797          	auipc	a5,0x8
    8000498c:	6b27b423          	sd	s2,1704(a5) # 8000d030 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004990:	00399793          	slli	a5,s3,0x3
    80004994:	00f78793          	addi	a5,a5,15
    80004998:	ff07f793          	andi	a5,a5,-16
    8000499c:	40f10133          	sub	sp,sp,a5
    800049a0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800049a4:	0019871b          	addiw	a4,s3,1
    800049a8:	00171793          	slli	a5,a4,0x1
    800049ac:	00e787b3          	add	a5,a5,a4
    800049b0:	00379793          	slli	a5,a5,0x3
    800049b4:	00f78793          	addi	a5,a5,15
    800049b8:	ff07f793          	andi	a5,a5,-16
    800049bc:	40f10133          	sub	sp,sp,a5
    800049c0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800049c4:	00199493          	slli	s1,s3,0x1
    800049c8:	013484b3          	add	s1,s1,s3
    800049cc:	00349493          	slli	s1,s1,0x3
    800049d0:	009b04b3          	add	s1,s6,s1
    800049d4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800049d8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800049dc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800049e0:	02800513          	li	a0,40
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	700080e7          	jalr	1792(ra) # 800020e4 <_Znwm>
    800049ec:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	7f4080e7          	jalr	2036(ra) # 800021e4 <_ZN6ThreadC1Ev>
    800049f8:	00008797          	auipc	a5,0x8
    800049fc:	41078793          	addi	a5,a5,1040 # 8000ce08 <_ZTV8Consumer+0x10>
    80004a00:	00fbb023          	sd	a5,0(s7)
    80004a04:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004a08:	000b8513          	mv	a0,s7
    80004a0c:	ffffe097          	auipc	ra,0xffffe
    80004a10:	808080e7          	jalr	-2040(ra) # 80002214 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004a14:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004a18:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004a1c:	00008797          	auipc	a5,0x8
    80004a20:	6147b783          	ld	a5,1556(a5) # 8000d030 <_ZL10waitForAll>
    80004a24:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a28:	02800513          	li	a0,40
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	6b8080e7          	jalr	1720(ra) # 800020e4 <_Znwm>
    80004a34:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	7ac080e7          	jalr	1964(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80004a40:	00008797          	auipc	a5,0x8
    80004a44:	37878793          	addi	a5,a5,888 # 8000cdb8 <_ZTV16ProducerKeyborad+0x10>
    80004a48:	00f4b023          	sd	a5,0(s1)
    80004a4c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a50:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004a54:	00048513          	mv	a0,s1
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	7bc080e7          	jalr	1980(ra) # 80002214 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a60:	00100913          	li	s2,1
    80004a64:	0300006f          	j	80004a94 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a68:	00008797          	auipc	a5,0x8
    80004a6c:	37878793          	addi	a5,a5,888 # 8000cde0 <_ZTV8Producer+0x10>
    80004a70:	00fcb023          	sd	a5,0(s9)
    80004a74:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004a78:	00391793          	slli	a5,s2,0x3
    80004a7c:	00fa07b3          	add	a5,s4,a5
    80004a80:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004a84:	000c8513          	mv	a0,s9
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	78c080e7          	jalr	1932(ra) # 80002214 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004a90:	0019091b          	addiw	s2,s2,1
    80004a94:	05395263          	bge	s2,s3,80004ad8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004a98:	00191493          	slli	s1,s2,0x1
    80004a9c:	012484b3          	add	s1,s1,s2
    80004aa0:	00349493          	slli	s1,s1,0x3
    80004aa4:	009b04b3          	add	s1,s6,s1
    80004aa8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004aac:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004ab0:	00008797          	auipc	a5,0x8
    80004ab4:	5807b783          	ld	a5,1408(a5) # 8000d030 <_ZL10waitForAll>
    80004ab8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004abc:	02800513          	li	a0,40
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	624080e7          	jalr	1572(ra) # 800020e4 <_Znwm>
    80004ac8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	718080e7          	jalr	1816(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80004ad4:	f95ff06f          	j	80004a68 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	774080e7          	jalr	1908(ra) # 8000224c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ae0:	00000493          	li	s1,0
    80004ae4:	0099ce63          	blt	s3,s1,80004b00 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004ae8:	00008517          	auipc	a0,0x8
    80004aec:	54853503          	ld	a0,1352(a0) # 8000d030 <_ZL10waitForAll>
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	7e8080e7          	jalr	2024(ra) # 800022d8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004af8:	0014849b          	addiw	s1,s1,1
    80004afc:	fe9ff06f          	j	80004ae4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004b00:	00008517          	auipc	a0,0x8
    80004b04:	53053503          	ld	a0,1328(a0) # 8000d030 <_ZL10waitForAll>
    80004b08:	00050863          	beqz	a0,80004b18 <_Z20testConsumerProducerv+0x2f4>
    80004b0c:	00053783          	ld	a5,0(a0)
    80004b10:	0087b783          	ld	a5,8(a5)
    80004b14:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004b18:	00000493          	li	s1,0
    80004b1c:	0080006f          	j	80004b24 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004b20:	0014849b          	addiw	s1,s1,1
    80004b24:	0334d263          	bge	s1,s3,80004b48 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004b28:	00349793          	slli	a5,s1,0x3
    80004b2c:	00fa07b3          	add	a5,s4,a5
    80004b30:	0007b503          	ld	a0,0(a5)
    80004b34:	fe0506e3          	beqz	a0,80004b20 <_Z20testConsumerProducerv+0x2fc>
    80004b38:	00053783          	ld	a5,0(a0)
    80004b3c:	0087b783          	ld	a5,8(a5)
    80004b40:	000780e7          	jalr	a5
    80004b44:	fddff06f          	j	80004b20 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004b48:	000b8a63          	beqz	s7,80004b5c <_Z20testConsumerProducerv+0x338>
    80004b4c:	000bb783          	ld	a5,0(s7)
    80004b50:	0087b783          	ld	a5,8(a5)
    80004b54:	000b8513          	mv	a0,s7
    80004b58:	000780e7          	jalr	a5
    delete buffer;
    80004b5c:	000a8e63          	beqz	s5,80004b78 <_Z20testConsumerProducerv+0x354>
    80004b60:	000a8513          	mv	a0,s5
    80004b64:	00002097          	auipc	ra,0x2
    80004b68:	870080e7          	jalr	-1936(ra) # 800063d4 <_ZN9BufferCPPD1Ev>
    80004b6c:	000a8513          	mv	a0,s5
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	59c080e7          	jalr	1436(ra) # 8000210c <_ZdlPv>
    80004b78:	000c0113          	mv	sp,s8
}
    80004b7c:	f8040113          	addi	sp,s0,-128
    80004b80:	07813083          	ld	ra,120(sp)
    80004b84:	07013403          	ld	s0,112(sp)
    80004b88:	06813483          	ld	s1,104(sp)
    80004b8c:	06013903          	ld	s2,96(sp)
    80004b90:	05813983          	ld	s3,88(sp)
    80004b94:	05013a03          	ld	s4,80(sp)
    80004b98:	04813a83          	ld	s5,72(sp)
    80004b9c:	04013b03          	ld	s6,64(sp)
    80004ba0:	03813b83          	ld	s7,56(sp)
    80004ba4:	03013c03          	ld	s8,48(sp)
    80004ba8:	02813c83          	ld	s9,40(sp)
    80004bac:	08010113          	addi	sp,sp,128
    80004bb0:	00008067          	ret
    80004bb4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004bb8:	000a8513          	mv	a0,s5
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	550080e7          	jalr	1360(ra) # 8000210c <_ZdlPv>
    80004bc4:	00048513          	mv	a0,s1
    80004bc8:	00009097          	auipc	ra,0x9
    80004bcc:	560080e7          	jalr	1376(ra) # 8000e128 <_Unwind_Resume>
    80004bd0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004bd4:	00090513          	mv	a0,s2
    80004bd8:	ffffd097          	auipc	ra,0xffffd
    80004bdc:	534080e7          	jalr	1332(ra) # 8000210c <_ZdlPv>
    80004be0:	00048513          	mv	a0,s1
    80004be4:	00009097          	auipc	ra,0x9
    80004be8:	544080e7          	jalr	1348(ra) # 8000e128 <_Unwind_Resume>
    80004bec:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004bf0:	000b8513          	mv	a0,s7
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	518080e7          	jalr	1304(ra) # 8000210c <_ZdlPv>
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00009097          	auipc	ra,0x9
    80004c04:	528080e7          	jalr	1320(ra) # 8000e128 <_Unwind_Resume>
    80004c08:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c0c:	00048513          	mv	a0,s1
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	4fc080e7          	jalr	1276(ra) # 8000210c <_ZdlPv>
    80004c18:	00090513          	mv	a0,s2
    80004c1c:	00009097          	auipc	ra,0x9
    80004c20:	50c080e7          	jalr	1292(ra) # 8000e128 <_Unwind_Resume>
    80004c24:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004c28:	000c8513          	mv	a0,s9
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	4e0080e7          	jalr	1248(ra) # 8000210c <_ZdlPv>
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00009097          	auipc	ra,0x9
    80004c3c:	4f0080e7          	jalr	1264(ra) # 8000e128 <_Unwind_Resume>

0000000080004c40 <_ZN8Consumer3runEv>:
    void run() override {
    80004c40:	fd010113          	addi	sp,sp,-48
    80004c44:	02113423          	sd	ra,40(sp)
    80004c48:	02813023          	sd	s0,32(sp)
    80004c4c:	00913c23          	sd	s1,24(sp)
    80004c50:	01213823          	sd	s2,16(sp)
    80004c54:	01313423          	sd	s3,8(sp)
    80004c58:	03010413          	addi	s0,sp,48
    80004c5c:	00050913          	mv	s2,a0
        int i = 0;
    80004c60:	00000993          	li	s3,0
    80004c64:	0100006f          	j	80004c74 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004c68:	00a00513          	li	a0,10
    80004c6c:	ffffd097          	auipc	ra,0xffffd
    80004c70:	7cc080e7          	jalr	1996(ra) # 80002438 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004c74:	00008797          	auipc	a5,0x8
    80004c78:	3b47a783          	lw	a5,948(a5) # 8000d028 <_ZL9threadEnd>
    80004c7c:	04079a63          	bnez	a5,80004cd0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004c80:	02093783          	ld	a5,32(s2)
    80004c84:	0087b503          	ld	a0,8(a5)
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	638080e7          	jalr	1592(ra) # 800062c0 <_ZN9BufferCPP3getEv>
            i++;
    80004c90:	0019849b          	addiw	s1,s3,1
    80004c94:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004c98:	0ff57513          	andi	a0,a0,255
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	79c080e7          	jalr	1948(ra) # 80002438 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004ca4:	05000793          	li	a5,80
    80004ca8:	02f4e4bb          	remw	s1,s1,a5
    80004cac:	fc0494e3          	bnez	s1,80004c74 <_ZN8Consumer3runEv+0x34>
    80004cb0:	fb9ff06f          	j	80004c68 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004cb4:	02093783          	ld	a5,32(s2)
    80004cb8:	0087b503          	ld	a0,8(a5)
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	604080e7          	jalr	1540(ra) # 800062c0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004cc4:	0ff57513          	andi	a0,a0,255
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	770080e7          	jalr	1904(ra) # 80002438 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004cd0:	02093783          	ld	a5,32(s2)
    80004cd4:	0087b503          	ld	a0,8(a5)
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	674080e7          	jalr	1652(ra) # 8000634c <_ZN9BufferCPP6getCntEv>
    80004ce0:	fca04ae3          	bgtz	a0,80004cb4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004ce4:	02093783          	ld	a5,32(s2)
    80004ce8:	0107b503          	ld	a0,16(a5)
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	624080e7          	jalr	1572(ra) # 80002310 <_ZN9Semaphore6signalEv>
    }
    80004cf4:	02813083          	ld	ra,40(sp)
    80004cf8:	02013403          	ld	s0,32(sp)
    80004cfc:	01813483          	ld	s1,24(sp)
    80004d00:	01013903          	ld	s2,16(sp)
    80004d04:	00813983          	ld	s3,8(sp)
    80004d08:	03010113          	addi	sp,sp,48
    80004d0c:	00008067          	ret

0000000080004d10 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004d10:	ff010113          	addi	sp,sp,-16
    80004d14:	00113423          	sd	ra,8(sp)
    80004d18:	00813023          	sd	s0,0(sp)
    80004d1c:	01010413          	addi	s0,sp,16
    80004d20:	00008797          	auipc	a5,0x8
    80004d24:	0e878793          	addi	a5,a5,232 # 8000ce08 <_ZTV8Consumer+0x10>
    80004d28:	00f53023          	sd	a5,0(a0)
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	2c8080e7          	jalr	712(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004d34:	00813083          	ld	ra,8(sp)
    80004d38:	00013403          	ld	s0,0(sp)
    80004d3c:	01010113          	addi	sp,sp,16
    80004d40:	00008067          	ret

0000000080004d44 <_ZN8ConsumerD0Ev>:
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	02010413          	addi	s0,sp,32
    80004d58:	00050493          	mv	s1,a0
    80004d5c:	00008797          	auipc	a5,0x8
    80004d60:	0ac78793          	addi	a5,a5,172 # 8000ce08 <_ZTV8Consumer+0x10>
    80004d64:	00f53023          	sd	a5,0(a0)
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	28c080e7          	jalr	652(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004d70:	00048513          	mv	a0,s1
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	398080e7          	jalr	920(ra) # 8000210c <_ZdlPv>
    80004d7c:	01813083          	ld	ra,24(sp)
    80004d80:	01013403          	ld	s0,16(sp)
    80004d84:	00813483          	ld	s1,8(sp)
    80004d88:	02010113          	addi	sp,sp,32
    80004d8c:	00008067          	ret

0000000080004d90 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004d90:	ff010113          	addi	sp,sp,-16
    80004d94:	00113423          	sd	ra,8(sp)
    80004d98:	00813023          	sd	s0,0(sp)
    80004d9c:	01010413          	addi	s0,sp,16
    80004da0:	00008797          	auipc	a5,0x8
    80004da4:	01878793          	addi	a5,a5,24 # 8000cdb8 <_ZTV16ProducerKeyborad+0x10>
    80004da8:	00f53023          	sd	a5,0(a0)
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	248080e7          	jalr	584(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004db4:	00813083          	ld	ra,8(sp)
    80004db8:	00013403          	ld	s0,0(sp)
    80004dbc:	01010113          	addi	sp,sp,16
    80004dc0:	00008067          	ret

0000000080004dc4 <_ZN16ProducerKeyboradD0Ev>:
    80004dc4:	fe010113          	addi	sp,sp,-32
    80004dc8:	00113c23          	sd	ra,24(sp)
    80004dcc:	00813823          	sd	s0,16(sp)
    80004dd0:	00913423          	sd	s1,8(sp)
    80004dd4:	02010413          	addi	s0,sp,32
    80004dd8:	00050493          	mv	s1,a0
    80004ddc:	00008797          	auipc	a5,0x8
    80004de0:	fdc78793          	addi	a5,a5,-36 # 8000cdb8 <_ZTV16ProducerKeyborad+0x10>
    80004de4:	00f53023          	sd	a5,0(a0)
    80004de8:	ffffd097          	auipc	ra,0xffffd
    80004dec:	20c080e7          	jalr	524(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004df0:	00048513          	mv	a0,s1
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	318080e7          	jalr	792(ra) # 8000210c <_ZdlPv>
    80004dfc:	01813083          	ld	ra,24(sp)
    80004e00:	01013403          	ld	s0,16(sp)
    80004e04:	00813483          	ld	s1,8(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret

0000000080004e10 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004e10:	ff010113          	addi	sp,sp,-16
    80004e14:	00113423          	sd	ra,8(sp)
    80004e18:	00813023          	sd	s0,0(sp)
    80004e1c:	01010413          	addi	s0,sp,16
    80004e20:	00008797          	auipc	a5,0x8
    80004e24:	fc078793          	addi	a5,a5,-64 # 8000cde0 <_ZTV8Producer+0x10>
    80004e28:	00f53023          	sd	a5,0(a0)
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	1c8080e7          	jalr	456(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004e34:	00813083          	ld	ra,8(sp)
    80004e38:	00013403          	ld	s0,0(sp)
    80004e3c:	01010113          	addi	sp,sp,16
    80004e40:	00008067          	ret

0000000080004e44 <_ZN8ProducerD0Ev>:
    80004e44:	fe010113          	addi	sp,sp,-32
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00813823          	sd	s0,16(sp)
    80004e50:	00913423          	sd	s1,8(sp)
    80004e54:	02010413          	addi	s0,sp,32
    80004e58:	00050493          	mv	s1,a0
    80004e5c:	00008797          	auipc	a5,0x8
    80004e60:	f8478793          	addi	a5,a5,-124 # 8000cde0 <_ZTV8Producer+0x10>
    80004e64:	00f53023          	sd	a5,0(a0)
    80004e68:	ffffd097          	auipc	ra,0xffffd
    80004e6c:	18c080e7          	jalr	396(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80004e70:	00048513          	mv	a0,s1
    80004e74:	ffffd097          	auipc	ra,0xffffd
    80004e78:	298080e7          	jalr	664(ra) # 8000210c <_ZdlPv>
    80004e7c:	01813083          	ld	ra,24(sp)
    80004e80:	01013403          	ld	s0,16(sp)
    80004e84:	00813483          	ld	s1,8(sp)
    80004e88:	02010113          	addi	sp,sp,32
    80004e8c:	00008067          	ret

0000000080004e90 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004e90:	fe010113          	addi	sp,sp,-32
    80004e94:	00113c23          	sd	ra,24(sp)
    80004e98:	00813823          	sd	s0,16(sp)
    80004e9c:	00913423          	sd	s1,8(sp)
    80004ea0:	02010413          	addi	s0,sp,32
    80004ea4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	778080e7          	jalr	1912(ra) # 80001620 <_Z4getcv>
    80004eb0:	0005059b          	sext.w	a1,a0
    80004eb4:	01b00793          	li	a5,27
    80004eb8:	00f58c63          	beq	a1,a5,80004ed0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004ebc:	0204b783          	ld	a5,32(s1)
    80004ec0:	0087b503          	ld	a0,8(a5)
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	36c080e7          	jalr	876(ra) # 80006230 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004ecc:	fddff06f          	j	80004ea8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004ed0:	00100793          	li	a5,1
    80004ed4:	00008717          	auipc	a4,0x8
    80004ed8:	14f72a23          	sw	a5,340(a4) # 8000d028 <_ZL9threadEnd>
        td->buffer->put('!');
    80004edc:	0204b783          	ld	a5,32(s1)
    80004ee0:	02100593          	li	a1,33
    80004ee4:	0087b503          	ld	a0,8(a5)
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	348080e7          	jalr	840(ra) # 80006230 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ef0:	0204b783          	ld	a5,32(s1)
    80004ef4:	0107b503          	ld	a0,16(a5)
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	418080e7          	jalr	1048(ra) # 80002310 <_ZN9Semaphore6signalEv>
    }
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN8Producer3runEv>:
    void run() override {
    80004f14:	fe010113          	addi	sp,sp,-32
    80004f18:	00113c23          	sd	ra,24(sp)
    80004f1c:	00813823          	sd	s0,16(sp)
    80004f20:	00913423          	sd	s1,8(sp)
    80004f24:	01213023          	sd	s2,0(sp)
    80004f28:	02010413          	addi	s0,sp,32
    80004f2c:	00050493          	mv	s1,a0
        int i = 0;
    80004f30:	00000913          	li	s2,0
        while (!threadEnd) {
    80004f34:	00008797          	auipc	a5,0x8
    80004f38:	0f47a783          	lw	a5,244(a5) # 8000d028 <_ZL9threadEnd>
    80004f3c:	04079263          	bnez	a5,80004f80 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004f40:	0204b783          	ld	a5,32(s1)
    80004f44:	0007a583          	lw	a1,0(a5)
    80004f48:	0305859b          	addiw	a1,a1,48
    80004f4c:	0087b503          	ld	a0,8(a5)
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	2e0080e7          	jalr	736(ra) # 80006230 <_ZN9BufferCPP3putEi>
            i++;
    80004f58:	0019071b          	addiw	a4,s2,1
    80004f5c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004f60:	0204b783          	ld	a5,32(s1)
    80004f64:	0007a783          	lw	a5,0(a5)
    80004f68:	00e787bb          	addw	a5,a5,a4
    80004f6c:	00500513          	li	a0,5
    80004f70:	02a7e53b          	remw	a0,a5,a0
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	300080e7          	jalr	768(ra) # 80002274 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004f7c:	fb9ff06f          	j	80004f34 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004f80:	0204b783          	ld	a5,32(s1)
    80004f84:	0107b503          	ld	a0,16(a5)
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	388080e7          	jalr	904(ra) # 80002310 <_ZN9Semaphore6signalEv>
    }
    80004f90:	01813083          	ld	ra,24(sp)
    80004f94:	01013403          	ld	s0,16(sp)
    80004f98:	00813483          	ld	s1,8(sp)
    80004f9c:	00013903          	ld	s2,0(sp)
    80004fa0:	02010113          	addi	sp,sp,32
    80004fa4:	00008067          	ret

0000000080004fa8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00113c23          	sd	ra,24(sp)
    80004fb0:	00813823          	sd	s0,16(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	01213023          	sd	s2,0(sp)
    80004fbc:	02010413          	addi	s0,sp,32
    80004fc0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004fc4:	00100793          	li	a5,1
    80004fc8:	02a7f863          	bgeu	a5,a0,80004ff8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004fcc:	00a00793          	li	a5,10
    80004fd0:	02f577b3          	remu	a5,a0,a5
    80004fd4:	02078e63          	beqz	a5,80005010 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004fd8:	fff48513          	addi	a0,s1,-1
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	fcc080e7          	jalr	-52(ra) # 80004fa8 <_ZL9fibonaccim>
    80004fe4:	00050913          	mv	s2,a0
    80004fe8:	ffe48513          	addi	a0,s1,-2
    80004fec:	00000097          	auipc	ra,0x0
    80004ff0:	fbc080e7          	jalr	-68(ra) # 80004fa8 <_ZL9fibonaccim>
    80004ff4:	00a90533          	add	a0,s2,a0
}
    80004ff8:	01813083          	ld	ra,24(sp)
    80004ffc:	01013403          	ld	s0,16(sp)
    80005000:	00813483          	ld	s1,8(sp)
    80005004:	00013903          	ld	s2,0(sp)
    80005008:	02010113          	addi	sp,sp,32
    8000500c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005010:	ffffc097          	auipc	ra,0xffffc
    80005014:	3bc080e7          	jalr	956(ra) # 800013cc <_Z15thread_dispatchv>
    80005018:	fc1ff06f          	j	80004fd8 <_ZL9fibonaccim+0x30>

000000008000501c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00113c23          	sd	ra,24(sp)
    80005024:	00813823          	sd	s0,16(sp)
    80005028:	00913423          	sd	s1,8(sp)
    8000502c:	01213023          	sd	s2,0(sp)
    80005030:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005034:	00a00493          	li	s1,10
    80005038:	0400006f          	j	80005078 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000503c:	00005517          	auipc	a0,0x5
    80005040:	25c50513          	addi	a0,a0,604 # 8000a298 <CONSOLE_STATUS+0x288>
    80005044:	00001097          	auipc	ra,0x1
    80005048:	dc8080e7          	jalr	-568(ra) # 80005e0c <_Z11printStringPKc>
    8000504c:	00000613          	li	a2,0
    80005050:	00a00593          	li	a1,10
    80005054:	00048513          	mv	a0,s1
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	f64080e7          	jalr	-156(ra) # 80005fbc <_Z8printIntiii>
    80005060:	00005517          	auipc	a0,0x5
    80005064:	42850513          	addi	a0,a0,1064 # 8000a488 <CONSOLE_STATUS+0x478>
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	da4080e7          	jalr	-604(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005070:	0014849b          	addiw	s1,s1,1
    80005074:	0ff4f493          	andi	s1,s1,255
    80005078:	00c00793          	li	a5,12
    8000507c:	fc97f0e3          	bgeu	a5,s1,8000503c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005080:	00005517          	auipc	a0,0x5
    80005084:	22050513          	addi	a0,a0,544 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	d84080e7          	jalr	-636(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005090:	00500313          	li	t1,5
    thread_dispatch();
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	338080e7          	jalr	824(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000509c:	01000513          	li	a0,16
    800050a0:	00000097          	auipc	ra,0x0
    800050a4:	f08080e7          	jalr	-248(ra) # 80004fa8 <_ZL9fibonaccim>
    800050a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800050ac:	00005517          	auipc	a0,0x5
    800050b0:	20450513          	addi	a0,a0,516 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	d58080e7          	jalr	-680(ra) # 80005e0c <_Z11printStringPKc>
    800050bc:	00000613          	li	a2,0
    800050c0:	00a00593          	li	a1,10
    800050c4:	0009051b          	sext.w	a0,s2
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	ef4080e7          	jalr	-268(ra) # 80005fbc <_Z8printIntiii>
    800050d0:	00005517          	auipc	a0,0x5
    800050d4:	3b850513          	addi	a0,a0,952 # 8000a488 <CONSOLE_STATUS+0x478>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	d34080e7          	jalr	-716(ra) # 80005e0c <_Z11printStringPKc>
    800050e0:	0400006f          	j	80005120 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050e4:	00005517          	auipc	a0,0x5
    800050e8:	1b450513          	addi	a0,a0,436 # 8000a298 <CONSOLE_STATUS+0x288>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	d20080e7          	jalr	-736(ra) # 80005e0c <_Z11printStringPKc>
    800050f4:	00000613          	li	a2,0
    800050f8:	00a00593          	li	a1,10
    800050fc:	00048513          	mv	a0,s1
    80005100:	00001097          	auipc	ra,0x1
    80005104:	ebc080e7          	jalr	-324(ra) # 80005fbc <_Z8printIntiii>
    80005108:	00005517          	auipc	a0,0x5
    8000510c:	38050513          	addi	a0,a0,896 # 8000a488 <CONSOLE_STATUS+0x478>
    80005110:	00001097          	auipc	ra,0x1
    80005114:	cfc080e7          	jalr	-772(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005118:	0014849b          	addiw	s1,s1,1
    8000511c:	0ff4f493          	andi	s1,s1,255
    80005120:	00f00793          	li	a5,15
    80005124:	fc97f0e3          	bgeu	a5,s1,800050e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005128:	00005517          	auipc	a0,0x5
    8000512c:	19850513          	addi	a0,a0,408 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	cdc080e7          	jalr	-804(ra) # 80005e0c <_Z11printStringPKc>
    finishedD = true;
    80005138:	00100793          	li	a5,1
    8000513c:	00008717          	auipc	a4,0x8
    80005140:	eef70e23          	sb	a5,-260(a4) # 8000d038 <_ZL9finishedD>
    thread_dispatch();
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	288080e7          	jalr	648(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000514c:	01813083          	ld	ra,24(sp)
    80005150:	01013403          	ld	s0,16(sp)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	00013903          	ld	s2,0(sp)
    8000515c:	02010113          	addi	sp,sp,32
    80005160:	00008067          	ret

0000000080005164 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005164:	fe010113          	addi	sp,sp,-32
    80005168:	00113c23          	sd	ra,24(sp)
    8000516c:	00813823          	sd	s0,16(sp)
    80005170:	00913423          	sd	s1,8(sp)
    80005174:	01213023          	sd	s2,0(sp)
    80005178:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000517c:	00000493          	li	s1,0
    80005180:	0400006f          	j	800051c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005184:	00005517          	auipc	a0,0x5
    80005188:	0e450513          	addi	a0,a0,228 # 8000a268 <CONSOLE_STATUS+0x258>
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	c80080e7          	jalr	-896(ra) # 80005e0c <_Z11printStringPKc>
    80005194:	00000613          	li	a2,0
    80005198:	00a00593          	li	a1,10
    8000519c:	00048513          	mv	a0,s1
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	e1c080e7          	jalr	-484(ra) # 80005fbc <_Z8printIntiii>
    800051a8:	00005517          	auipc	a0,0x5
    800051ac:	2e050513          	addi	a0,a0,736 # 8000a488 <CONSOLE_STATUS+0x478>
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	c5c080e7          	jalr	-932(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800051b8:	0014849b          	addiw	s1,s1,1
    800051bc:	0ff4f493          	andi	s1,s1,255
    800051c0:	00200793          	li	a5,2
    800051c4:	fc97f0e3          	bgeu	a5,s1,80005184 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800051c8:	00005517          	auipc	a0,0x5
    800051cc:	0a850513          	addi	a0,a0,168 # 8000a270 <CONSOLE_STATUS+0x260>
    800051d0:	00001097          	auipc	ra,0x1
    800051d4:	c3c080e7          	jalr	-964(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800051d8:	00700313          	li	t1,7
    thread_dispatch();
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	1f0080e7          	jalr	496(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800051e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800051e8:	00005517          	auipc	a0,0x5
    800051ec:	09850513          	addi	a0,a0,152 # 8000a280 <CONSOLE_STATUS+0x270>
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	c1c080e7          	jalr	-996(ra) # 80005e0c <_Z11printStringPKc>
    800051f8:	00000613          	li	a2,0
    800051fc:	00a00593          	li	a1,10
    80005200:	0009051b          	sext.w	a0,s2
    80005204:	00001097          	auipc	ra,0x1
    80005208:	db8080e7          	jalr	-584(ra) # 80005fbc <_Z8printIntiii>
    8000520c:	00005517          	auipc	a0,0x5
    80005210:	27c50513          	addi	a0,a0,636 # 8000a488 <CONSOLE_STATUS+0x478>
    80005214:	00001097          	auipc	ra,0x1
    80005218:	bf8080e7          	jalr	-1032(ra) # 80005e0c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000521c:	00c00513          	li	a0,12
    80005220:	00000097          	auipc	ra,0x0
    80005224:	d88080e7          	jalr	-632(ra) # 80004fa8 <_ZL9fibonaccim>
    80005228:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000522c:	00005517          	auipc	a0,0x5
    80005230:	05c50513          	addi	a0,a0,92 # 8000a288 <CONSOLE_STATUS+0x278>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	bd8080e7          	jalr	-1064(ra) # 80005e0c <_Z11printStringPKc>
    8000523c:	00000613          	li	a2,0
    80005240:	00a00593          	li	a1,10
    80005244:	0009051b          	sext.w	a0,s2
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	d74080e7          	jalr	-652(ra) # 80005fbc <_Z8printIntiii>
    80005250:	00005517          	auipc	a0,0x5
    80005254:	23850513          	addi	a0,a0,568 # 8000a488 <CONSOLE_STATUS+0x478>
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	bb4080e7          	jalr	-1100(ra) # 80005e0c <_Z11printStringPKc>
    80005260:	0400006f          	j	800052a0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005264:	00005517          	auipc	a0,0x5
    80005268:	00450513          	addi	a0,a0,4 # 8000a268 <CONSOLE_STATUS+0x258>
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	ba0080e7          	jalr	-1120(ra) # 80005e0c <_Z11printStringPKc>
    80005274:	00000613          	li	a2,0
    80005278:	00a00593          	li	a1,10
    8000527c:	00048513          	mv	a0,s1
    80005280:	00001097          	auipc	ra,0x1
    80005284:	d3c080e7          	jalr	-708(ra) # 80005fbc <_Z8printIntiii>
    80005288:	00005517          	auipc	a0,0x5
    8000528c:	20050513          	addi	a0,a0,512 # 8000a488 <CONSOLE_STATUS+0x478>
    80005290:	00001097          	auipc	ra,0x1
    80005294:	b7c080e7          	jalr	-1156(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005298:	0014849b          	addiw	s1,s1,1
    8000529c:	0ff4f493          	andi	s1,s1,255
    800052a0:	00500793          	li	a5,5
    800052a4:	fc97f0e3          	bgeu	a5,s1,80005264 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800052a8:	00005517          	auipc	a0,0x5
    800052ac:	f9850513          	addi	a0,a0,-104 # 8000a240 <CONSOLE_STATUS+0x230>
    800052b0:	00001097          	auipc	ra,0x1
    800052b4:	b5c080e7          	jalr	-1188(ra) # 80005e0c <_Z11printStringPKc>
    finishedC = true;
    800052b8:	00100793          	li	a5,1
    800052bc:	00008717          	auipc	a4,0x8
    800052c0:	d6f70ea3          	sb	a5,-643(a4) # 8000d039 <_ZL9finishedC>
    thread_dispatch();
    800052c4:	ffffc097          	auipc	ra,0xffffc
    800052c8:	108080e7          	jalr	264(ra) # 800013cc <_Z15thread_dispatchv>
}
    800052cc:	01813083          	ld	ra,24(sp)
    800052d0:	01013403          	ld	s0,16(sp)
    800052d4:	00813483          	ld	s1,8(sp)
    800052d8:	00013903          	ld	s2,0(sp)
    800052dc:	02010113          	addi	sp,sp,32
    800052e0:	00008067          	ret

00000000800052e4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	01213023          	sd	s2,0(sp)
    800052f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800052fc:	00000913          	li	s2,0
    80005300:	0380006f          	j	80005338 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005304:	ffffc097          	auipc	ra,0xffffc
    80005308:	0c8080e7          	jalr	200(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000530c:	00148493          	addi	s1,s1,1
    80005310:	000027b7          	lui	a5,0x2
    80005314:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005318:	0097ee63          	bltu	a5,s1,80005334 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000531c:	00000713          	li	a4,0
    80005320:	000077b7          	lui	a5,0x7
    80005324:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005328:	fce7eee3          	bltu	a5,a4,80005304 <_ZL11workerBodyBPv+0x20>
    8000532c:	00170713          	addi	a4,a4,1
    80005330:	ff1ff06f          	j	80005320 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005334:	00190913          	addi	s2,s2,1
    80005338:	00f00793          	li	a5,15
    8000533c:	0527e063          	bltu	a5,s2,8000537c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005340:	00005517          	auipc	a0,0x5
    80005344:	f1050513          	addi	a0,a0,-240 # 8000a250 <CONSOLE_STATUS+0x240>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	ac4080e7          	jalr	-1340(ra) # 80005e0c <_Z11printStringPKc>
    80005350:	00000613          	li	a2,0
    80005354:	00a00593          	li	a1,10
    80005358:	0009051b          	sext.w	a0,s2
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	c60080e7          	jalr	-928(ra) # 80005fbc <_Z8printIntiii>
    80005364:	00005517          	auipc	a0,0x5
    80005368:	12450513          	addi	a0,a0,292 # 8000a488 <CONSOLE_STATUS+0x478>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	aa0080e7          	jalr	-1376(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005374:	00000493          	li	s1,0
    80005378:	f99ff06f          	j	80005310 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000537c:	00005517          	auipc	a0,0x5
    80005380:	edc50513          	addi	a0,a0,-292 # 8000a258 <CONSOLE_STATUS+0x248>
    80005384:	00001097          	auipc	ra,0x1
    80005388:	a88080e7          	jalr	-1400(ra) # 80005e0c <_Z11printStringPKc>
    finishedB = true;
    8000538c:	00100793          	li	a5,1
    80005390:	00008717          	auipc	a4,0x8
    80005394:	caf70523          	sb	a5,-854(a4) # 8000d03a <_ZL9finishedB>
    thread_dispatch();
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	034080e7          	jalr	52(ra) # 800013cc <_Z15thread_dispatchv>
}
    800053a0:	01813083          	ld	ra,24(sp)
    800053a4:	01013403          	ld	s0,16(sp)
    800053a8:	00813483          	ld	s1,8(sp)
    800053ac:	00013903          	ld	s2,0(sp)
    800053b0:	02010113          	addi	sp,sp,32
    800053b4:	00008067          	ret

00000000800053b8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800053b8:	fe010113          	addi	sp,sp,-32
    800053bc:	00113c23          	sd	ra,24(sp)
    800053c0:	00813823          	sd	s0,16(sp)
    800053c4:	00913423          	sd	s1,8(sp)
    800053c8:	01213023          	sd	s2,0(sp)
    800053cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800053d0:	00000913          	li	s2,0
    800053d4:	0380006f          	j	8000540c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	ff4080e7          	jalr	-12(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800053e0:	00148493          	addi	s1,s1,1
    800053e4:	000027b7          	lui	a5,0x2
    800053e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053ec:	0097ee63          	bltu	a5,s1,80005408 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053f0:	00000713          	li	a4,0
    800053f4:	000077b7          	lui	a5,0x7
    800053f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053fc:	fce7eee3          	bltu	a5,a4,800053d8 <_ZL11workerBodyAPv+0x20>
    80005400:	00170713          	addi	a4,a4,1
    80005404:	ff1ff06f          	j	800053f4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005408:	00190913          	addi	s2,s2,1
    8000540c:	00900793          	li	a5,9
    80005410:	0527e063          	bltu	a5,s2,80005450 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005414:	00005517          	auipc	a0,0x5
    80005418:	e2450513          	addi	a0,a0,-476 # 8000a238 <CONSOLE_STATUS+0x228>
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	9f0080e7          	jalr	-1552(ra) # 80005e0c <_Z11printStringPKc>
    80005424:	00000613          	li	a2,0
    80005428:	00a00593          	li	a1,10
    8000542c:	0009051b          	sext.w	a0,s2
    80005430:	00001097          	auipc	ra,0x1
    80005434:	b8c080e7          	jalr	-1140(ra) # 80005fbc <_Z8printIntiii>
    80005438:	00005517          	auipc	a0,0x5
    8000543c:	05050513          	addi	a0,a0,80 # 8000a488 <CONSOLE_STATUS+0x478>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	9cc080e7          	jalr	-1588(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005448:	00000493          	li	s1,0
    8000544c:	f99ff06f          	j	800053e4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005450:	00005517          	auipc	a0,0x5
    80005454:	df050513          	addi	a0,a0,-528 # 8000a240 <CONSOLE_STATUS+0x230>
    80005458:	00001097          	auipc	ra,0x1
    8000545c:	9b4080e7          	jalr	-1612(ra) # 80005e0c <_Z11printStringPKc>
    finishedA = true;
    80005460:	00100793          	li	a5,1
    80005464:	00008717          	auipc	a4,0x8
    80005468:	bcf70ba3          	sb	a5,-1065(a4) # 8000d03b <_ZL9finishedA>
}
    8000546c:	01813083          	ld	ra,24(sp)
    80005470:	01013403          	ld	s0,16(sp)
    80005474:	00813483          	ld	s1,8(sp)
    80005478:	00013903          	ld	s2,0(sp)
    8000547c:	02010113          	addi	sp,sp,32
    80005480:	00008067          	ret

0000000080005484 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005484:	fd010113          	addi	sp,sp,-48
    80005488:	02113423          	sd	ra,40(sp)
    8000548c:	02813023          	sd	s0,32(sp)
    80005490:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005494:	00000613          	li	a2,0
    80005498:	00000597          	auipc	a1,0x0
    8000549c:	f2058593          	addi	a1,a1,-224 # 800053b8 <_ZL11workerBodyAPv>
    800054a0:	fd040513          	addi	a0,s0,-48
    800054a4:	ffffc097          	auipc	ra,0xffffc
    800054a8:	e54080e7          	jalr	-428(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800054ac:	00005517          	auipc	a0,0x5
    800054b0:	e2450513          	addi	a0,a0,-476 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	958080e7          	jalr	-1704(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800054bc:	00000613          	li	a2,0
    800054c0:	00000597          	auipc	a1,0x0
    800054c4:	e2458593          	addi	a1,a1,-476 # 800052e4 <_ZL11workerBodyBPv>
    800054c8:	fd840513          	addi	a0,s0,-40
    800054cc:	ffffc097          	auipc	ra,0xffffc
    800054d0:	e2c080e7          	jalr	-468(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800054d4:	00005517          	auipc	a0,0x5
    800054d8:	e1450513          	addi	a0,a0,-492 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    800054dc:	00001097          	auipc	ra,0x1
    800054e0:	930080e7          	jalr	-1744(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800054e4:	00000613          	li	a2,0
    800054e8:	00000597          	auipc	a1,0x0
    800054ec:	c7c58593          	addi	a1,a1,-900 # 80005164 <_ZL11workerBodyCPv>
    800054f0:	fe040513          	addi	a0,s0,-32
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	e04080e7          	jalr	-508(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800054fc:	00005517          	auipc	a0,0x5
    80005500:	e0450513          	addi	a0,a0,-508 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80005504:	00001097          	auipc	ra,0x1
    80005508:	908080e7          	jalr	-1784(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000550c:	00000613          	li	a2,0
    80005510:	00000597          	auipc	a1,0x0
    80005514:	b0c58593          	addi	a1,a1,-1268 # 8000501c <_ZL11workerBodyDPv>
    80005518:	fe840513          	addi	a0,s0,-24
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	ddc080e7          	jalr	-548(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005524:	00005517          	auipc	a0,0x5
    80005528:	df450513          	addi	a0,a0,-524 # 8000a318 <CONSOLE_STATUS+0x308>
    8000552c:	00001097          	auipc	ra,0x1
    80005530:	8e0080e7          	jalr	-1824(ra) # 80005e0c <_Z11printStringPKc>
    80005534:	00c0006f          	j	80005540 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	e94080e7          	jalr	-364(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005540:	00008797          	auipc	a5,0x8
    80005544:	afb7c783          	lbu	a5,-1285(a5) # 8000d03b <_ZL9finishedA>
    80005548:	fe0788e3          	beqz	a5,80005538 <_Z18Threads_C_API_testv+0xb4>
    8000554c:	00008797          	auipc	a5,0x8
    80005550:	aee7c783          	lbu	a5,-1298(a5) # 8000d03a <_ZL9finishedB>
    80005554:	fe0782e3          	beqz	a5,80005538 <_Z18Threads_C_API_testv+0xb4>
    80005558:	00008797          	auipc	a5,0x8
    8000555c:	ae17c783          	lbu	a5,-1311(a5) # 8000d039 <_ZL9finishedC>
    80005560:	fc078ce3          	beqz	a5,80005538 <_Z18Threads_C_API_testv+0xb4>
    80005564:	00008797          	auipc	a5,0x8
    80005568:	ad47c783          	lbu	a5,-1324(a5) # 8000d038 <_ZL9finishedD>
    8000556c:	fc0786e3          	beqz	a5,80005538 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005570:	02813083          	ld	ra,40(sp)
    80005574:	02013403          	ld	s0,32(sp)
    80005578:	03010113          	addi	sp,sp,48
    8000557c:	00008067          	ret

0000000080005580 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005580:	fd010113          	addi	sp,sp,-48
    80005584:	02113423          	sd	ra,40(sp)
    80005588:	02813023          	sd	s0,32(sp)
    8000558c:	00913c23          	sd	s1,24(sp)
    80005590:	01213823          	sd	s2,16(sp)
    80005594:	01313423          	sd	s3,8(sp)
    80005598:	03010413          	addi	s0,sp,48
    8000559c:	00050993          	mv	s3,a0
    800055a0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800055a4:	00000913          	li	s2,0
    800055a8:	00c0006f          	j	800055b4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	ca0080e7          	jalr	-864(ra) # 8000224c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	06c080e7          	jalr	108(ra) # 80001620 <_Z4getcv>
    800055bc:	0005059b          	sext.w	a1,a0
    800055c0:	01b00793          	li	a5,27
    800055c4:	02f58a63          	beq	a1,a5,800055f8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800055c8:	0084b503          	ld	a0,8(s1)
    800055cc:	00001097          	auipc	ra,0x1
    800055d0:	c64080e7          	jalr	-924(ra) # 80006230 <_ZN9BufferCPP3putEi>
        i++;
    800055d4:	0019071b          	addiw	a4,s2,1
    800055d8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800055dc:	0004a683          	lw	a3,0(s1)
    800055e0:	0026979b          	slliw	a5,a3,0x2
    800055e4:	00d787bb          	addw	a5,a5,a3
    800055e8:	0017979b          	slliw	a5,a5,0x1
    800055ec:	02f767bb          	remw	a5,a4,a5
    800055f0:	fc0792e3          	bnez	a5,800055b4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800055f4:	fb9ff06f          	j	800055ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800055f8:	00100793          	li	a5,1
    800055fc:	00008717          	auipc	a4,0x8
    80005600:	a4f72223          	sw	a5,-1468(a4) # 8000d040 <_ZL9threadEnd>
    td->buffer->put('!');
    80005604:	0209b783          	ld	a5,32(s3)
    80005608:	02100593          	li	a1,33
    8000560c:	0087b503          	ld	a0,8(a5)
    80005610:	00001097          	auipc	ra,0x1
    80005614:	c20080e7          	jalr	-992(ra) # 80006230 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005618:	0104b503          	ld	a0,16(s1)
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	cf4080e7          	jalr	-780(ra) # 80002310 <_ZN9Semaphore6signalEv>
}
    80005624:	02813083          	ld	ra,40(sp)
    80005628:	02013403          	ld	s0,32(sp)
    8000562c:	01813483          	ld	s1,24(sp)
    80005630:	01013903          	ld	s2,16(sp)
    80005634:	00813983          	ld	s3,8(sp)
    80005638:	03010113          	addi	sp,sp,48
    8000563c:	00008067          	ret

0000000080005640 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005640:	fe010113          	addi	sp,sp,-32
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	00813823          	sd	s0,16(sp)
    8000564c:	00913423          	sd	s1,8(sp)
    80005650:	01213023          	sd	s2,0(sp)
    80005654:	02010413          	addi	s0,sp,32
    80005658:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000565c:	00000913          	li	s2,0
    80005660:	00c0006f          	j	8000566c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	be8080e7          	jalr	-1048(ra) # 8000224c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000566c:	00008797          	auipc	a5,0x8
    80005670:	9d47a783          	lw	a5,-1580(a5) # 8000d040 <_ZL9threadEnd>
    80005674:	02079e63          	bnez	a5,800056b0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005678:	0004a583          	lw	a1,0(s1)
    8000567c:	0305859b          	addiw	a1,a1,48
    80005680:	0084b503          	ld	a0,8(s1)
    80005684:	00001097          	auipc	ra,0x1
    80005688:	bac080e7          	jalr	-1108(ra) # 80006230 <_ZN9BufferCPP3putEi>
        i++;
    8000568c:	0019071b          	addiw	a4,s2,1
    80005690:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005694:	0004a683          	lw	a3,0(s1)
    80005698:	0026979b          	slliw	a5,a3,0x2
    8000569c:	00d787bb          	addw	a5,a5,a3
    800056a0:	0017979b          	slliw	a5,a5,0x1
    800056a4:	02f767bb          	remw	a5,a4,a5
    800056a8:	fc0792e3          	bnez	a5,8000566c <_ZN12ProducerSync8producerEPv+0x2c>
    800056ac:	fb9ff06f          	j	80005664 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800056b0:	0104b503          	ld	a0,16(s1)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	c5c080e7          	jalr	-932(ra) # 80002310 <_ZN9Semaphore6signalEv>
}
    800056bc:	01813083          	ld	ra,24(sp)
    800056c0:	01013403          	ld	s0,16(sp)
    800056c4:	00813483          	ld	s1,8(sp)
    800056c8:	00013903          	ld	s2,0(sp)
    800056cc:	02010113          	addi	sp,sp,32
    800056d0:	00008067          	ret

00000000800056d4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800056d4:	fd010113          	addi	sp,sp,-48
    800056d8:	02113423          	sd	ra,40(sp)
    800056dc:	02813023          	sd	s0,32(sp)
    800056e0:	00913c23          	sd	s1,24(sp)
    800056e4:	01213823          	sd	s2,16(sp)
    800056e8:	01313423          	sd	s3,8(sp)
    800056ec:	01413023          	sd	s4,0(sp)
    800056f0:	03010413          	addi	s0,sp,48
    800056f4:	00050993          	mv	s3,a0
    800056f8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056fc:	00000a13          	li	s4,0
    80005700:	01c0006f          	j	8000571c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005704:	ffffd097          	auipc	ra,0xffffd
    80005708:	b48080e7          	jalr	-1208(ra) # 8000224c <_ZN6Thread8dispatchEv>
    8000570c:	0500006f          	j	8000575c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005710:	00a00513          	li	a0,10
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	f58080e7          	jalr	-168(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    8000571c:	00008797          	auipc	a5,0x8
    80005720:	9247a783          	lw	a5,-1756(a5) # 8000d040 <_ZL9threadEnd>
    80005724:	06079263          	bnez	a5,80005788 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005728:	00893503          	ld	a0,8(s2)
    8000572c:	00001097          	auipc	ra,0x1
    80005730:	b94080e7          	jalr	-1132(ra) # 800062c0 <_ZN9BufferCPP3getEv>
        i++;
    80005734:	001a049b          	addiw	s1,s4,1
    80005738:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000573c:	0ff57513          	andi	a0,a0,255
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	f2c080e7          	jalr	-212(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005748:	00092703          	lw	a4,0(s2)
    8000574c:	0027179b          	slliw	a5,a4,0x2
    80005750:	00e787bb          	addw	a5,a5,a4
    80005754:	02f4e7bb          	remw	a5,s1,a5
    80005758:	fa0786e3          	beqz	a5,80005704 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000575c:	05000793          	li	a5,80
    80005760:	02f4e4bb          	remw	s1,s1,a5
    80005764:	fa049ce3          	bnez	s1,8000571c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005768:	fa9ff06f          	j	80005710 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000576c:	0209b783          	ld	a5,32(s3)
    80005770:	0087b503          	ld	a0,8(a5)
    80005774:	00001097          	auipc	ra,0x1
    80005778:	b4c080e7          	jalr	-1204(ra) # 800062c0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000577c:	0ff57513          	andi	a0,a0,255
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	cb8080e7          	jalr	-840(ra) # 80002438 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005788:	0209b783          	ld	a5,32(s3)
    8000578c:	0087b503          	ld	a0,8(a5)
    80005790:	00001097          	auipc	ra,0x1
    80005794:	bbc080e7          	jalr	-1092(ra) # 8000634c <_ZN9BufferCPP6getCntEv>
    80005798:	fca04ae3          	bgtz	a0,8000576c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000579c:	01093503          	ld	a0,16(s2)
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	b70080e7          	jalr	-1168(ra) # 80002310 <_ZN9Semaphore6signalEv>
}
    800057a8:	02813083          	ld	ra,40(sp)
    800057ac:	02013403          	ld	s0,32(sp)
    800057b0:	01813483          	ld	s1,24(sp)
    800057b4:	01013903          	ld	s2,16(sp)
    800057b8:	00813983          	ld	s3,8(sp)
    800057bc:	00013a03          	ld	s4,0(sp)
    800057c0:	03010113          	addi	sp,sp,48
    800057c4:	00008067          	ret

00000000800057c8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800057c8:	f8010113          	addi	sp,sp,-128
    800057cc:	06113c23          	sd	ra,120(sp)
    800057d0:	06813823          	sd	s0,112(sp)
    800057d4:	06913423          	sd	s1,104(sp)
    800057d8:	07213023          	sd	s2,96(sp)
    800057dc:	05313c23          	sd	s3,88(sp)
    800057e0:	05413823          	sd	s4,80(sp)
    800057e4:	05513423          	sd	s5,72(sp)
    800057e8:	05613023          	sd	s6,64(sp)
    800057ec:	03713c23          	sd	s7,56(sp)
    800057f0:	03813823          	sd	s8,48(sp)
    800057f4:	03913423          	sd	s9,40(sp)
    800057f8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800057fc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005800:	00005517          	auipc	a0,0x5
    80005804:	95050513          	addi	a0,a0,-1712 # 8000a150 <CONSOLE_STATUS+0x140>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	604080e7          	jalr	1540(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    80005810:	01e00593          	li	a1,30
    80005814:	f8040493          	addi	s1,s0,-128
    80005818:	00048513          	mv	a0,s1
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	678080e7          	jalr	1656(ra) # 80005e94 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005824:	00048513          	mv	a0,s1
    80005828:	00000097          	auipc	ra,0x0
    8000582c:	744080e7          	jalr	1860(ra) # 80005f6c <_Z11stringToIntPKc>
    80005830:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005834:	00005517          	auipc	a0,0x5
    80005838:	93c50513          	addi	a0,a0,-1732 # 8000a170 <CONSOLE_STATUS+0x160>
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	5d0080e7          	jalr	1488(ra) # 80005e0c <_Z11printStringPKc>
    getString(input, 30);
    80005844:	01e00593          	li	a1,30
    80005848:	00048513          	mv	a0,s1
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	648080e7          	jalr	1608(ra) # 80005e94 <_Z9getStringPci>
    n = stringToInt(input);
    80005854:	00048513          	mv	a0,s1
    80005858:	00000097          	auipc	ra,0x0
    8000585c:	714080e7          	jalr	1812(ra) # 80005f6c <_Z11stringToIntPKc>
    80005860:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005864:	00005517          	auipc	a0,0x5
    80005868:	92c50513          	addi	a0,a0,-1748 # 8000a190 <CONSOLE_STATUS+0x180>
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	5a0080e7          	jalr	1440(ra) # 80005e0c <_Z11printStringPKc>
    80005874:	00000613          	li	a2,0
    80005878:	00a00593          	li	a1,10
    8000587c:	00090513          	mv	a0,s2
    80005880:	00000097          	auipc	ra,0x0
    80005884:	73c080e7          	jalr	1852(ra) # 80005fbc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005888:	00005517          	auipc	a0,0x5
    8000588c:	92050513          	addi	a0,a0,-1760 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005890:	00000097          	auipc	ra,0x0
    80005894:	57c080e7          	jalr	1404(ra) # 80005e0c <_Z11printStringPKc>
    80005898:	00000613          	li	a2,0
    8000589c:	00a00593          	li	a1,10
    800058a0:	00048513          	mv	a0,s1
    800058a4:	00000097          	auipc	ra,0x0
    800058a8:	718080e7          	jalr	1816(ra) # 80005fbc <_Z8printIntiii>
    printString(".\n");
    800058ac:	00005517          	auipc	a0,0x5
    800058b0:	91450513          	addi	a0,a0,-1772 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    800058b4:	00000097          	auipc	ra,0x0
    800058b8:	558080e7          	jalr	1368(ra) # 80005e0c <_Z11printStringPKc>
    if(threadNum > n) {
    800058bc:	0324c463          	blt	s1,s2,800058e4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800058c0:	03205c63          	blez	s2,800058f8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800058c4:	03800513          	li	a0,56
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	81c080e7          	jalr	-2020(ra) # 800020e4 <_Znwm>
    800058d0:	00050a93          	mv	s5,a0
    800058d4:	00048593          	mv	a1,s1
    800058d8:	00001097          	auipc	ra,0x1
    800058dc:	804080e7          	jalr	-2044(ra) # 800060dc <_ZN9BufferCPPC1Ei>
    800058e0:	0300006f          	j	80005910 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800058e4:	00005517          	auipc	a0,0x5
    800058e8:	8e450513          	addi	a0,a0,-1820 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	520080e7          	jalr	1312(ra) # 80005e0c <_Z11printStringPKc>
        return;
    800058f4:	0140006f          	j	80005908 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800058f8:	00005517          	auipc	a0,0x5
    800058fc:	91050513          	addi	a0,a0,-1776 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80005900:	00000097          	auipc	ra,0x0
    80005904:	50c080e7          	jalr	1292(ra) # 80005e0c <_Z11printStringPKc>
        return;
    80005908:	000b8113          	mv	sp,s7
    8000590c:	2380006f          	j	80005b44 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005910:	01000513          	li	a0,16
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	7d0080e7          	jalr	2000(ra) # 800020e4 <_Znwm>
    8000591c:	00050493          	mv	s1,a0
    80005920:	00000593          	li	a1,0
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	978080e7          	jalr	-1672(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    8000592c:	00007797          	auipc	a5,0x7
    80005930:	7097be23          	sd	s1,1820(a5) # 8000d048 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005934:	00391793          	slli	a5,s2,0x3
    80005938:	00f78793          	addi	a5,a5,15
    8000593c:	ff07f793          	andi	a5,a5,-16
    80005940:	40f10133          	sub	sp,sp,a5
    80005944:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005948:	0019071b          	addiw	a4,s2,1
    8000594c:	00171793          	slli	a5,a4,0x1
    80005950:	00e787b3          	add	a5,a5,a4
    80005954:	00379793          	slli	a5,a5,0x3
    80005958:	00f78793          	addi	a5,a5,15
    8000595c:	ff07f793          	andi	a5,a5,-16
    80005960:	40f10133          	sub	sp,sp,a5
    80005964:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005968:	00191c13          	slli	s8,s2,0x1
    8000596c:	012c07b3          	add	a5,s8,s2
    80005970:	00379793          	slli	a5,a5,0x3
    80005974:	00fa07b3          	add	a5,s4,a5
    80005978:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000597c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005980:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005984:	02800513          	li	a0,40
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	75c080e7          	jalr	1884(ra) # 800020e4 <_Znwm>
    80005990:	00050b13          	mv	s6,a0
    80005994:	012c0c33          	add	s8,s8,s2
    80005998:	003c1c13          	slli	s8,s8,0x3
    8000599c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800059a0:	ffffd097          	auipc	ra,0xffffd
    800059a4:	844080e7          	jalr	-1980(ra) # 800021e4 <_ZN6ThreadC1Ev>
    800059a8:	00007797          	auipc	a5,0x7
    800059ac:	4d878793          	addi	a5,a5,1240 # 8000ce80 <_ZTV12ConsumerSync+0x10>
    800059b0:	00fb3023          	sd	a5,0(s6)
    800059b4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800059b8:	000b0513          	mv	a0,s6
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	858080e7          	jalr	-1960(ra) # 80002214 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059c4:	00000493          	li	s1,0
    800059c8:	0380006f          	j	80005a00 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800059cc:	00007797          	auipc	a5,0x7
    800059d0:	48c78793          	addi	a5,a5,1164 # 8000ce58 <_ZTV12ProducerSync+0x10>
    800059d4:	00fcb023          	sd	a5,0(s9)
    800059d8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800059dc:	00349793          	slli	a5,s1,0x3
    800059e0:	00f987b3          	add	a5,s3,a5
    800059e4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800059e8:	00349793          	slli	a5,s1,0x3
    800059ec:	00f987b3          	add	a5,s3,a5
    800059f0:	0007b503          	ld	a0,0(a5)
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	820080e7          	jalr	-2016(ra) # 80002214 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059fc:	0014849b          	addiw	s1,s1,1
    80005a00:	0b24d063          	bge	s1,s2,80005aa0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a04:	00149793          	slli	a5,s1,0x1
    80005a08:	009787b3          	add	a5,a5,s1
    80005a0c:	00379793          	slli	a5,a5,0x3
    80005a10:	00fa07b3          	add	a5,s4,a5
    80005a14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005a18:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005a1c:	00007717          	auipc	a4,0x7
    80005a20:	62c73703          	ld	a4,1580(a4) # 8000d048 <_ZL10waitForAll>
    80005a24:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005a28:	02905863          	blez	s1,80005a58 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005a2c:	02800513          	li	a0,40
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	6b4080e7          	jalr	1716(ra) # 800020e4 <_Znwm>
    80005a38:	00050c93          	mv	s9,a0
    80005a3c:	00149c13          	slli	s8,s1,0x1
    80005a40:	009c0c33          	add	s8,s8,s1
    80005a44:	003c1c13          	slli	s8,s8,0x3
    80005a48:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	798080e7          	jalr	1944(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80005a54:	f79ff06f          	j	800059cc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005a58:	02800513          	li	a0,40
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	688080e7          	jalr	1672(ra) # 800020e4 <_Znwm>
    80005a64:	00050c93          	mv	s9,a0
    80005a68:	00149c13          	slli	s8,s1,0x1
    80005a6c:	009c0c33          	add	s8,s8,s1
    80005a70:	003c1c13          	slli	s8,s8,0x3
    80005a74:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	76c080e7          	jalr	1900(ra) # 800021e4 <_ZN6ThreadC1Ev>
    80005a80:	00007797          	auipc	a5,0x7
    80005a84:	3b078793          	addi	a5,a5,944 # 8000ce30 <_ZTV16ProducerKeyboard+0x10>
    80005a88:	00fcb023          	sd	a5,0(s9)
    80005a8c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005a90:	00349793          	slli	a5,s1,0x3
    80005a94:	00f987b3          	add	a5,s3,a5
    80005a98:	0197b023          	sd	s9,0(a5)
    80005a9c:	f4dff06f          	j	800059e8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	7ac080e7          	jalr	1964(ra) # 8000224c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005aa8:	00000493          	li	s1,0
    80005aac:	00994e63          	blt	s2,s1,80005ac8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ab0:	00007517          	auipc	a0,0x7
    80005ab4:	59853503          	ld	a0,1432(a0) # 8000d048 <_ZL10waitForAll>
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	820080e7          	jalr	-2016(ra) # 800022d8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ac0:	0014849b          	addiw	s1,s1,1
    80005ac4:	fe9ff06f          	j	80005aac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005ac8:	00000493          	li	s1,0
    80005acc:	0080006f          	j	80005ad4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005ad0:	0014849b          	addiw	s1,s1,1
    80005ad4:	0324d263          	bge	s1,s2,80005af8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005ad8:	00349793          	slli	a5,s1,0x3
    80005adc:	00f987b3          	add	a5,s3,a5
    80005ae0:	0007b503          	ld	a0,0(a5)
    80005ae4:	fe0506e3          	beqz	a0,80005ad0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005ae8:	00053783          	ld	a5,0(a0)
    80005aec:	0087b783          	ld	a5,8(a5)
    80005af0:	000780e7          	jalr	a5
    80005af4:	fddff06f          	j	80005ad0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005af8:	000b0a63          	beqz	s6,80005b0c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005afc:	000b3783          	ld	a5,0(s6)
    80005b00:	0087b783          	ld	a5,8(a5)
    80005b04:	000b0513          	mv	a0,s6
    80005b08:	000780e7          	jalr	a5
    delete waitForAll;
    80005b0c:	00007517          	auipc	a0,0x7
    80005b10:	53c53503          	ld	a0,1340(a0) # 8000d048 <_ZL10waitForAll>
    80005b14:	00050863          	beqz	a0,80005b24 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005b18:	00053783          	ld	a5,0(a0)
    80005b1c:	0087b783          	ld	a5,8(a5)
    80005b20:	000780e7          	jalr	a5
    delete buffer;
    80005b24:	000a8e63          	beqz	s5,80005b40 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005b28:	000a8513          	mv	a0,s5
    80005b2c:	00001097          	auipc	ra,0x1
    80005b30:	8a8080e7          	jalr	-1880(ra) # 800063d4 <_ZN9BufferCPPD1Ev>
    80005b34:	000a8513          	mv	a0,s5
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	5d4080e7          	jalr	1492(ra) # 8000210c <_ZdlPv>
    80005b40:	000b8113          	mv	sp,s7

}
    80005b44:	f8040113          	addi	sp,s0,-128
    80005b48:	07813083          	ld	ra,120(sp)
    80005b4c:	07013403          	ld	s0,112(sp)
    80005b50:	06813483          	ld	s1,104(sp)
    80005b54:	06013903          	ld	s2,96(sp)
    80005b58:	05813983          	ld	s3,88(sp)
    80005b5c:	05013a03          	ld	s4,80(sp)
    80005b60:	04813a83          	ld	s5,72(sp)
    80005b64:	04013b03          	ld	s6,64(sp)
    80005b68:	03813b83          	ld	s7,56(sp)
    80005b6c:	03013c03          	ld	s8,48(sp)
    80005b70:	02813c83          	ld	s9,40(sp)
    80005b74:	08010113          	addi	sp,sp,128
    80005b78:	00008067          	ret
    80005b7c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005b80:	000a8513          	mv	a0,s5
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	588080e7          	jalr	1416(ra) # 8000210c <_ZdlPv>
    80005b8c:	00048513          	mv	a0,s1
    80005b90:	00008097          	auipc	ra,0x8
    80005b94:	598080e7          	jalr	1432(ra) # 8000e128 <_Unwind_Resume>
    80005b98:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005b9c:	00048513          	mv	a0,s1
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	56c080e7          	jalr	1388(ra) # 8000210c <_ZdlPv>
    80005ba8:	00090513          	mv	a0,s2
    80005bac:	00008097          	auipc	ra,0x8
    80005bb0:	57c080e7          	jalr	1404(ra) # 8000e128 <_Unwind_Resume>
    80005bb4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005bb8:	000b0513          	mv	a0,s6
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	550080e7          	jalr	1360(ra) # 8000210c <_ZdlPv>
    80005bc4:	00048513          	mv	a0,s1
    80005bc8:	00008097          	auipc	ra,0x8
    80005bcc:	560080e7          	jalr	1376(ra) # 8000e128 <_Unwind_Resume>
    80005bd0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005bd4:	000c8513          	mv	a0,s9
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	534080e7          	jalr	1332(ra) # 8000210c <_ZdlPv>
    80005be0:	00048513          	mv	a0,s1
    80005be4:	00008097          	auipc	ra,0x8
    80005be8:	544080e7          	jalr	1348(ra) # 8000e128 <_Unwind_Resume>
    80005bec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005bf0:	000c8513          	mv	a0,s9
    80005bf4:	ffffc097          	auipc	ra,0xffffc
    80005bf8:	518080e7          	jalr	1304(ra) # 8000210c <_ZdlPv>
    80005bfc:	00048513          	mv	a0,s1
    80005c00:	00008097          	auipc	ra,0x8
    80005c04:	528080e7          	jalr	1320(ra) # 8000e128 <_Unwind_Resume>

0000000080005c08 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c08:	ff010113          	addi	sp,sp,-16
    80005c0c:	00113423          	sd	ra,8(sp)
    80005c10:	00813023          	sd	s0,0(sp)
    80005c14:	01010413          	addi	s0,sp,16
    80005c18:	00007797          	auipc	a5,0x7
    80005c1c:	26878793          	addi	a5,a5,616 # 8000ce80 <_ZTV12ConsumerSync+0x10>
    80005c20:	00f53023          	sd	a5,0(a0)
    80005c24:	ffffc097          	auipc	ra,0xffffc
    80005c28:	3d0080e7          	jalr	976(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005c2c:	00813083          	ld	ra,8(sp)
    80005c30:	00013403          	ld	s0,0(sp)
    80005c34:	01010113          	addi	sp,sp,16
    80005c38:	00008067          	ret

0000000080005c3c <_ZN12ConsumerSyncD0Ev>:
    80005c3c:	fe010113          	addi	sp,sp,-32
    80005c40:	00113c23          	sd	ra,24(sp)
    80005c44:	00813823          	sd	s0,16(sp)
    80005c48:	00913423          	sd	s1,8(sp)
    80005c4c:	02010413          	addi	s0,sp,32
    80005c50:	00050493          	mv	s1,a0
    80005c54:	00007797          	auipc	a5,0x7
    80005c58:	22c78793          	addi	a5,a5,556 # 8000ce80 <_ZTV12ConsumerSync+0x10>
    80005c5c:	00f53023          	sd	a5,0(a0)
    80005c60:	ffffc097          	auipc	ra,0xffffc
    80005c64:	394080e7          	jalr	916(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005c68:	00048513          	mv	a0,s1
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	4a0080e7          	jalr	1184(ra) # 8000210c <_ZdlPv>
    80005c74:	01813083          	ld	ra,24(sp)
    80005c78:	01013403          	ld	s0,16(sp)
    80005c7c:	00813483          	ld	s1,8(sp)
    80005c80:	02010113          	addi	sp,sp,32
    80005c84:	00008067          	ret

0000000080005c88 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005c88:	ff010113          	addi	sp,sp,-16
    80005c8c:	00113423          	sd	ra,8(sp)
    80005c90:	00813023          	sd	s0,0(sp)
    80005c94:	01010413          	addi	s0,sp,16
    80005c98:	00007797          	auipc	a5,0x7
    80005c9c:	1c078793          	addi	a5,a5,448 # 8000ce58 <_ZTV12ProducerSync+0x10>
    80005ca0:	00f53023          	sd	a5,0(a0)
    80005ca4:	ffffc097          	auipc	ra,0xffffc
    80005ca8:	350080e7          	jalr	848(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005cac:	00813083          	ld	ra,8(sp)
    80005cb0:	00013403          	ld	s0,0(sp)
    80005cb4:	01010113          	addi	sp,sp,16
    80005cb8:	00008067          	ret

0000000080005cbc <_ZN12ProducerSyncD0Ev>:
    80005cbc:	fe010113          	addi	sp,sp,-32
    80005cc0:	00113c23          	sd	ra,24(sp)
    80005cc4:	00813823          	sd	s0,16(sp)
    80005cc8:	00913423          	sd	s1,8(sp)
    80005ccc:	02010413          	addi	s0,sp,32
    80005cd0:	00050493          	mv	s1,a0
    80005cd4:	00007797          	auipc	a5,0x7
    80005cd8:	18478793          	addi	a5,a5,388 # 8000ce58 <_ZTV12ProducerSync+0x10>
    80005cdc:	00f53023          	sd	a5,0(a0)
    80005ce0:	ffffc097          	auipc	ra,0xffffc
    80005ce4:	314080e7          	jalr	788(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005ce8:	00048513          	mv	a0,s1
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	420080e7          	jalr	1056(ra) # 8000210c <_ZdlPv>
    80005cf4:	01813083          	ld	ra,24(sp)
    80005cf8:	01013403          	ld	s0,16(sp)
    80005cfc:	00813483          	ld	s1,8(sp)
    80005d00:	02010113          	addi	sp,sp,32
    80005d04:	00008067          	ret

0000000080005d08 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d08:	ff010113          	addi	sp,sp,-16
    80005d0c:	00113423          	sd	ra,8(sp)
    80005d10:	00813023          	sd	s0,0(sp)
    80005d14:	01010413          	addi	s0,sp,16
    80005d18:	00007797          	auipc	a5,0x7
    80005d1c:	11878793          	addi	a5,a5,280 # 8000ce30 <_ZTV16ProducerKeyboard+0x10>
    80005d20:	00f53023          	sd	a5,0(a0)
    80005d24:	ffffc097          	auipc	ra,0xffffc
    80005d28:	2d0080e7          	jalr	720(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005d2c:	00813083          	ld	ra,8(sp)
    80005d30:	00013403          	ld	s0,0(sp)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret

0000000080005d3c <_ZN16ProducerKeyboardD0Ev>:
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00113c23          	sd	ra,24(sp)
    80005d44:	00813823          	sd	s0,16(sp)
    80005d48:	00913423          	sd	s1,8(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00007797          	auipc	a5,0x7
    80005d58:	0dc78793          	addi	a5,a5,220 # 8000ce30 <_ZTV16ProducerKeyboard+0x10>
    80005d5c:	00f53023          	sd	a5,0(a0)
    80005d60:	ffffc097          	auipc	ra,0xffffc
    80005d64:	294080e7          	jalr	660(ra) # 80001ff4 <_ZN6ThreadD1Ev>
    80005d68:	00048513          	mv	a0,s1
    80005d6c:	ffffc097          	auipc	ra,0xffffc
    80005d70:	3a0080e7          	jalr	928(ra) # 8000210c <_ZdlPv>
    80005d74:	01813083          	ld	ra,24(sp)
    80005d78:	01013403          	ld	s0,16(sp)
    80005d7c:	00813483          	ld	s1,8(sp)
    80005d80:	02010113          	addi	sp,sp,32
    80005d84:	00008067          	ret

0000000080005d88 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005d88:	ff010113          	addi	sp,sp,-16
    80005d8c:	00113423          	sd	ra,8(sp)
    80005d90:	00813023          	sd	s0,0(sp)
    80005d94:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005d98:	02053583          	ld	a1,32(a0)
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	7e4080e7          	jalr	2020(ra) # 80005580 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005da4:	00813083          	ld	ra,8(sp)
    80005da8:	00013403          	ld	s0,0(sp)
    80005dac:	01010113          	addi	sp,sp,16
    80005db0:	00008067          	ret

0000000080005db4 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00113423          	sd	ra,8(sp)
    80005dbc:	00813023          	sd	s0,0(sp)
    80005dc0:	01010413          	addi	s0,sp,16
        producer(td);
    80005dc4:	02053583          	ld	a1,32(a0)
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	878080e7          	jalr	-1928(ra) # 80005640 <_ZN12ProducerSync8producerEPv>
    }
    80005dd0:	00813083          	ld	ra,8(sp)
    80005dd4:	00013403          	ld	s0,0(sp)
    80005dd8:	01010113          	addi	sp,sp,16
    80005ddc:	00008067          	ret

0000000080005de0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005de0:	ff010113          	addi	sp,sp,-16
    80005de4:	00113423          	sd	ra,8(sp)
    80005de8:	00813023          	sd	s0,0(sp)
    80005dec:	01010413          	addi	s0,sp,16
        consumer(td);
    80005df0:	02053583          	ld	a1,32(a0)
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	8e0080e7          	jalr	-1824(ra) # 800056d4 <_ZN12ConsumerSync8consumerEPv>
    }
    80005dfc:	00813083          	ld	ra,8(sp)
    80005e00:	00013403          	ld	s0,0(sp)
    80005e04:	01010113          	addi	sp,sp,16
    80005e08:	00008067          	ret

0000000080005e0c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005e0c:	fe010113          	addi	sp,sp,-32
    80005e10:	00113c23          	sd	ra,24(sp)
    80005e14:	00813823          	sd	s0,16(sp)
    80005e18:	00913423          	sd	s1,8(sp)
    80005e1c:	02010413          	addi	s0,sp,32
    80005e20:	00050493          	mv	s1,a0
    LOCK();
    80005e24:	00100613          	li	a2,1
    80005e28:	00000593          	li	a1,0
    80005e2c:	00007517          	auipc	a0,0x7
    80005e30:	22450513          	addi	a0,a0,548 # 8000d050 <lockPrint>
    80005e34:	ffffb097          	auipc	ra,0xffffb
    80005e38:	3e8080e7          	jalr	1000(ra) # 8000121c <copy_and_swap>
    80005e3c:	00050863          	beqz	a0,80005e4c <_Z11printStringPKc+0x40>
    80005e40:	ffffb097          	auipc	ra,0xffffb
    80005e44:	58c080e7          	jalr	1420(ra) # 800013cc <_Z15thread_dispatchv>
    80005e48:	fddff06f          	j	80005e24 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005e4c:	0004c503          	lbu	a0,0(s1)
    80005e50:	00050a63          	beqz	a0,80005e64 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005e54:	ffffc097          	auipc	ra,0xffffc
    80005e58:	818080e7          	jalr	-2024(ra) # 8000166c <_Z4putcc>
        string++;
    80005e5c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005e60:	fedff06f          	j	80005e4c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005e64:	00000613          	li	a2,0
    80005e68:	00100593          	li	a1,1
    80005e6c:	00007517          	auipc	a0,0x7
    80005e70:	1e450513          	addi	a0,a0,484 # 8000d050 <lockPrint>
    80005e74:	ffffb097          	auipc	ra,0xffffb
    80005e78:	3a8080e7          	jalr	936(ra) # 8000121c <copy_and_swap>
    80005e7c:	fe0514e3          	bnez	a0,80005e64 <_Z11printStringPKc+0x58>
}
    80005e80:	01813083          	ld	ra,24(sp)
    80005e84:	01013403          	ld	s0,16(sp)
    80005e88:	00813483          	ld	s1,8(sp)
    80005e8c:	02010113          	addi	sp,sp,32
    80005e90:	00008067          	ret

0000000080005e94 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005e94:	fd010113          	addi	sp,sp,-48
    80005e98:	02113423          	sd	ra,40(sp)
    80005e9c:	02813023          	sd	s0,32(sp)
    80005ea0:	00913c23          	sd	s1,24(sp)
    80005ea4:	01213823          	sd	s2,16(sp)
    80005ea8:	01313423          	sd	s3,8(sp)
    80005eac:	01413023          	sd	s4,0(sp)
    80005eb0:	03010413          	addi	s0,sp,48
    80005eb4:	00050993          	mv	s3,a0
    80005eb8:	00058a13          	mv	s4,a1
    LOCK();
    80005ebc:	00100613          	li	a2,1
    80005ec0:	00000593          	li	a1,0
    80005ec4:	00007517          	auipc	a0,0x7
    80005ec8:	18c50513          	addi	a0,a0,396 # 8000d050 <lockPrint>
    80005ecc:	ffffb097          	auipc	ra,0xffffb
    80005ed0:	350080e7          	jalr	848(ra) # 8000121c <copy_and_swap>
    80005ed4:	00050863          	beqz	a0,80005ee4 <_Z9getStringPci+0x50>
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	4f4080e7          	jalr	1268(ra) # 800013cc <_Z15thread_dispatchv>
    80005ee0:	fddff06f          	j	80005ebc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005ee4:	00000913          	li	s2,0
    80005ee8:	00090493          	mv	s1,s2
    80005eec:	0019091b          	addiw	s2,s2,1
    80005ef0:	03495a63          	bge	s2,s4,80005f24 <_Z9getStringPci+0x90>
        cc = getc();
    80005ef4:	ffffb097          	auipc	ra,0xffffb
    80005ef8:	72c080e7          	jalr	1836(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005efc:	02050463          	beqz	a0,80005f24 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f00:	009984b3          	add	s1,s3,s1
    80005f04:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f08:	00a00793          	li	a5,10
    80005f0c:	00f50a63          	beq	a0,a5,80005f20 <_Z9getStringPci+0x8c>
    80005f10:	00d00793          	li	a5,13
    80005f14:	fcf51ae3          	bne	a0,a5,80005ee8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005f18:	00090493          	mv	s1,s2
    80005f1c:	0080006f          	j	80005f24 <_Z9getStringPci+0x90>
    80005f20:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005f24:	009984b3          	add	s1,s3,s1
    80005f28:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005f2c:	00000613          	li	a2,0
    80005f30:	00100593          	li	a1,1
    80005f34:	00007517          	auipc	a0,0x7
    80005f38:	11c50513          	addi	a0,a0,284 # 8000d050 <lockPrint>
    80005f3c:	ffffb097          	auipc	ra,0xffffb
    80005f40:	2e0080e7          	jalr	736(ra) # 8000121c <copy_and_swap>
    80005f44:	fe0514e3          	bnez	a0,80005f2c <_Z9getStringPci+0x98>
    return buf;
}
    80005f48:	00098513          	mv	a0,s3
    80005f4c:	02813083          	ld	ra,40(sp)
    80005f50:	02013403          	ld	s0,32(sp)
    80005f54:	01813483          	ld	s1,24(sp)
    80005f58:	01013903          	ld	s2,16(sp)
    80005f5c:	00813983          	ld	s3,8(sp)
    80005f60:	00013a03          	ld	s4,0(sp)
    80005f64:	03010113          	addi	sp,sp,48
    80005f68:	00008067          	ret

0000000080005f6c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005f6c:	ff010113          	addi	sp,sp,-16
    80005f70:	00813423          	sd	s0,8(sp)
    80005f74:	01010413          	addi	s0,sp,16
    80005f78:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f7c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005f80:	0006c603          	lbu	a2,0(a3)
    80005f84:	fd06071b          	addiw	a4,a2,-48
    80005f88:	0ff77713          	andi	a4,a4,255
    80005f8c:	00900793          	li	a5,9
    80005f90:	02e7e063          	bltu	a5,a4,80005fb0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005f94:	0025179b          	slliw	a5,a0,0x2
    80005f98:	00a787bb          	addw	a5,a5,a0
    80005f9c:	0017979b          	slliw	a5,a5,0x1
    80005fa0:	00168693          	addi	a3,a3,1
    80005fa4:	00c787bb          	addw	a5,a5,a2
    80005fa8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005fac:	fd5ff06f          	j	80005f80 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005fb0:	00813403          	ld	s0,8(sp)
    80005fb4:	01010113          	addi	sp,sp,16
    80005fb8:	00008067          	ret

0000000080005fbc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005fbc:	fc010113          	addi	sp,sp,-64
    80005fc0:	02113c23          	sd	ra,56(sp)
    80005fc4:	02813823          	sd	s0,48(sp)
    80005fc8:	02913423          	sd	s1,40(sp)
    80005fcc:	03213023          	sd	s2,32(sp)
    80005fd0:	01313c23          	sd	s3,24(sp)
    80005fd4:	04010413          	addi	s0,sp,64
    80005fd8:	00050493          	mv	s1,a0
    80005fdc:	00058913          	mv	s2,a1
    80005fe0:	00060993          	mv	s3,a2
    LOCK();
    80005fe4:	00100613          	li	a2,1
    80005fe8:	00000593          	li	a1,0
    80005fec:	00007517          	auipc	a0,0x7
    80005ff0:	06450513          	addi	a0,a0,100 # 8000d050 <lockPrint>
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	228080e7          	jalr	552(ra) # 8000121c <copy_and_swap>
    80005ffc:	00050863          	beqz	a0,8000600c <_Z8printIntiii+0x50>
    80006000:	ffffb097          	auipc	ra,0xffffb
    80006004:	3cc080e7          	jalr	972(ra) # 800013cc <_Z15thread_dispatchv>
    80006008:	fddff06f          	j	80005fe4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000600c:	00098463          	beqz	s3,80006014 <_Z8printIntiii+0x58>
    80006010:	0804c463          	bltz	s1,80006098 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006014:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006018:	00000593          	li	a1,0
    }

    i = 0;
    8000601c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006020:	0009079b          	sext.w	a5,s2
    80006024:	0325773b          	remuw	a4,a0,s2
    80006028:	00048613          	mv	a2,s1
    8000602c:	0014849b          	addiw	s1,s1,1
    80006030:	02071693          	slli	a3,a4,0x20
    80006034:	0206d693          	srli	a3,a3,0x20
    80006038:	00007717          	auipc	a4,0x7
    8000603c:	e6070713          	addi	a4,a4,-416 # 8000ce98 <digits>
    80006040:	00d70733          	add	a4,a4,a3
    80006044:	00074683          	lbu	a3,0(a4)
    80006048:	fd040713          	addi	a4,s0,-48
    8000604c:	00c70733          	add	a4,a4,a2
    80006050:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006054:	0005071b          	sext.w	a4,a0
    80006058:	0325553b          	divuw	a0,a0,s2
    8000605c:	fcf772e3          	bgeu	a4,a5,80006020 <_Z8printIntiii+0x64>
    if(neg)
    80006060:	00058c63          	beqz	a1,80006078 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006064:	fd040793          	addi	a5,s0,-48
    80006068:	009784b3          	add	s1,a5,s1
    8000606c:	02d00793          	li	a5,45
    80006070:	fef48823          	sb	a5,-16(s1)
    80006074:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006078:	fff4849b          	addiw	s1,s1,-1
    8000607c:	0204c463          	bltz	s1,800060a4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006080:	fd040793          	addi	a5,s0,-48
    80006084:	009787b3          	add	a5,a5,s1
    80006088:	ff07c503          	lbu	a0,-16(a5)
    8000608c:	ffffb097          	auipc	ra,0xffffb
    80006090:	5e0080e7          	jalr	1504(ra) # 8000166c <_Z4putcc>
    80006094:	fe5ff06f          	j	80006078 <_Z8printIntiii+0xbc>
        x = -xx;
    80006098:	4090053b          	negw	a0,s1
        neg = 1;
    8000609c:	00100593          	li	a1,1
        x = -xx;
    800060a0:	f7dff06f          	j	8000601c <_Z8printIntiii+0x60>

    UNLOCK();
    800060a4:	00000613          	li	a2,0
    800060a8:	00100593          	li	a1,1
    800060ac:	00007517          	auipc	a0,0x7
    800060b0:	fa450513          	addi	a0,a0,-92 # 8000d050 <lockPrint>
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	168080e7          	jalr	360(ra) # 8000121c <copy_and_swap>
    800060bc:	fe0514e3          	bnez	a0,800060a4 <_Z8printIntiii+0xe8>
    800060c0:	03813083          	ld	ra,56(sp)
    800060c4:	03013403          	ld	s0,48(sp)
    800060c8:	02813483          	ld	s1,40(sp)
    800060cc:	02013903          	ld	s2,32(sp)
    800060d0:	01813983          	ld	s3,24(sp)
    800060d4:	04010113          	addi	sp,sp,64
    800060d8:	00008067          	ret

00000000800060dc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060dc:	fd010113          	addi	sp,sp,-48
    800060e0:	02113423          	sd	ra,40(sp)
    800060e4:	02813023          	sd	s0,32(sp)
    800060e8:	00913c23          	sd	s1,24(sp)
    800060ec:	01213823          	sd	s2,16(sp)
    800060f0:	01313423          	sd	s3,8(sp)
    800060f4:	03010413          	addi	s0,sp,48
    800060f8:	00050493          	mv	s1,a0
    800060fc:	00058913          	mv	s2,a1
    80006100:	0015879b          	addiw	a5,a1,1
    80006104:	0007851b          	sext.w	a0,a5
    80006108:	00f4a023          	sw	a5,0(s1)
    8000610c:	0004a823          	sw	zero,16(s1)
    80006110:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006114:	00251513          	slli	a0,a0,0x2
    80006118:	ffffb097          	auipc	ra,0xffffb
    8000611c:	140080e7          	jalr	320(ra) # 80001258 <_Z9mem_allocm>
    80006120:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006124:	01000513          	li	a0,16
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	fbc080e7          	jalr	-68(ra) # 800020e4 <_Znwm>
    80006130:	00050993          	mv	s3,a0
    80006134:	00000593          	li	a1,0
    80006138:	ffffc097          	auipc	ra,0xffffc
    8000613c:	164080e7          	jalr	356(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    80006140:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006144:	01000513          	li	a0,16
    80006148:	ffffc097          	auipc	ra,0xffffc
    8000614c:	f9c080e7          	jalr	-100(ra) # 800020e4 <_Znwm>
    80006150:	00050993          	mv	s3,a0
    80006154:	00090593          	mv	a1,s2
    80006158:	ffffc097          	auipc	ra,0xffffc
    8000615c:	144080e7          	jalr	324(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    80006160:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006164:	01000513          	li	a0,16
    80006168:	ffffc097          	auipc	ra,0xffffc
    8000616c:	f7c080e7          	jalr	-132(ra) # 800020e4 <_Znwm>
    80006170:	00050913          	mv	s2,a0
    80006174:	00100593          	li	a1,1
    80006178:	ffffc097          	auipc	ra,0xffffc
    8000617c:	124080e7          	jalr	292(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    80006180:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006184:	01000513          	li	a0,16
    80006188:	ffffc097          	auipc	ra,0xffffc
    8000618c:	f5c080e7          	jalr	-164(ra) # 800020e4 <_Znwm>
    80006190:	00050913          	mv	s2,a0
    80006194:	00100593          	li	a1,1
    80006198:	ffffc097          	auipc	ra,0xffffc
    8000619c:	104080e7          	jalr	260(ra) # 8000229c <_ZN9SemaphoreC1Ej>
    800061a0:	0324b823          	sd	s2,48(s1)
}
    800061a4:	02813083          	ld	ra,40(sp)
    800061a8:	02013403          	ld	s0,32(sp)
    800061ac:	01813483          	ld	s1,24(sp)
    800061b0:	01013903          	ld	s2,16(sp)
    800061b4:	00813983          	ld	s3,8(sp)
    800061b8:	03010113          	addi	sp,sp,48
    800061bc:	00008067          	ret
    800061c0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800061c4:	00098513          	mv	a0,s3
    800061c8:	ffffc097          	auipc	ra,0xffffc
    800061cc:	f44080e7          	jalr	-188(ra) # 8000210c <_ZdlPv>
    800061d0:	00048513          	mv	a0,s1
    800061d4:	00008097          	auipc	ra,0x8
    800061d8:	f54080e7          	jalr	-172(ra) # 8000e128 <_Unwind_Resume>
    800061dc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800061e0:	00098513          	mv	a0,s3
    800061e4:	ffffc097          	auipc	ra,0xffffc
    800061e8:	f28080e7          	jalr	-216(ra) # 8000210c <_ZdlPv>
    800061ec:	00048513          	mv	a0,s1
    800061f0:	00008097          	auipc	ra,0x8
    800061f4:	f38080e7          	jalr	-200(ra) # 8000e128 <_Unwind_Resume>
    800061f8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800061fc:	00090513          	mv	a0,s2
    80006200:	ffffc097          	auipc	ra,0xffffc
    80006204:	f0c080e7          	jalr	-244(ra) # 8000210c <_ZdlPv>
    80006208:	00048513          	mv	a0,s1
    8000620c:	00008097          	auipc	ra,0x8
    80006210:	f1c080e7          	jalr	-228(ra) # 8000e128 <_Unwind_Resume>
    80006214:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006218:	00090513          	mv	a0,s2
    8000621c:	ffffc097          	auipc	ra,0xffffc
    80006220:	ef0080e7          	jalr	-272(ra) # 8000210c <_ZdlPv>
    80006224:	00048513          	mv	a0,s1
    80006228:	00008097          	auipc	ra,0x8
    8000622c:	f00080e7          	jalr	-256(ra) # 8000e128 <_Unwind_Resume>

0000000080006230 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006230:	fe010113          	addi	sp,sp,-32
    80006234:	00113c23          	sd	ra,24(sp)
    80006238:	00813823          	sd	s0,16(sp)
    8000623c:	00913423          	sd	s1,8(sp)
    80006240:	01213023          	sd	s2,0(sp)
    80006244:	02010413          	addi	s0,sp,32
    80006248:	00050493          	mv	s1,a0
    8000624c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006250:	01853503          	ld	a0,24(a0)
    80006254:	ffffc097          	auipc	ra,0xffffc
    80006258:	084080e7          	jalr	132(ra) # 800022d8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000625c:	0304b503          	ld	a0,48(s1)
    80006260:	ffffc097          	auipc	ra,0xffffc
    80006264:	078080e7          	jalr	120(ra) # 800022d8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006268:	0084b783          	ld	a5,8(s1)
    8000626c:	0144a703          	lw	a4,20(s1)
    80006270:	00271713          	slli	a4,a4,0x2
    80006274:	00e787b3          	add	a5,a5,a4
    80006278:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000627c:	0144a783          	lw	a5,20(s1)
    80006280:	0017879b          	addiw	a5,a5,1
    80006284:	0004a703          	lw	a4,0(s1)
    80006288:	02e7e7bb          	remw	a5,a5,a4
    8000628c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006290:	0304b503          	ld	a0,48(s1)
    80006294:	ffffc097          	auipc	ra,0xffffc
    80006298:	07c080e7          	jalr	124(ra) # 80002310 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000629c:	0204b503          	ld	a0,32(s1)
    800062a0:	ffffc097          	auipc	ra,0xffffc
    800062a4:	070080e7          	jalr	112(ra) # 80002310 <_ZN9Semaphore6signalEv>

}
    800062a8:	01813083          	ld	ra,24(sp)
    800062ac:	01013403          	ld	s0,16(sp)
    800062b0:	00813483          	ld	s1,8(sp)
    800062b4:	00013903          	ld	s2,0(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret

00000000800062c0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800062c0:	fe010113          	addi	sp,sp,-32
    800062c4:	00113c23          	sd	ra,24(sp)
    800062c8:	00813823          	sd	s0,16(sp)
    800062cc:	00913423          	sd	s1,8(sp)
    800062d0:	01213023          	sd	s2,0(sp)
    800062d4:	02010413          	addi	s0,sp,32
    800062d8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800062dc:	02053503          	ld	a0,32(a0)
    800062e0:	ffffc097          	auipc	ra,0xffffc
    800062e4:	ff8080e7          	jalr	-8(ra) # 800022d8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800062e8:	0284b503          	ld	a0,40(s1)
    800062ec:	ffffc097          	auipc	ra,0xffffc
    800062f0:	fec080e7          	jalr	-20(ra) # 800022d8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800062f4:	0084b703          	ld	a4,8(s1)
    800062f8:	0104a783          	lw	a5,16(s1)
    800062fc:	00279693          	slli	a3,a5,0x2
    80006300:	00d70733          	add	a4,a4,a3
    80006304:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006308:	0017879b          	addiw	a5,a5,1
    8000630c:	0004a703          	lw	a4,0(s1)
    80006310:	02e7e7bb          	remw	a5,a5,a4
    80006314:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006318:	0284b503          	ld	a0,40(s1)
    8000631c:	ffffc097          	auipc	ra,0xffffc
    80006320:	ff4080e7          	jalr	-12(ra) # 80002310 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006324:	0184b503          	ld	a0,24(s1)
    80006328:	ffffc097          	auipc	ra,0xffffc
    8000632c:	fe8080e7          	jalr	-24(ra) # 80002310 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006330:	00090513          	mv	a0,s2
    80006334:	01813083          	ld	ra,24(sp)
    80006338:	01013403          	ld	s0,16(sp)
    8000633c:	00813483          	ld	s1,8(sp)
    80006340:	00013903          	ld	s2,0(sp)
    80006344:	02010113          	addi	sp,sp,32
    80006348:	00008067          	ret

000000008000634c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000634c:	fe010113          	addi	sp,sp,-32
    80006350:	00113c23          	sd	ra,24(sp)
    80006354:	00813823          	sd	s0,16(sp)
    80006358:	00913423          	sd	s1,8(sp)
    8000635c:	01213023          	sd	s2,0(sp)
    80006360:	02010413          	addi	s0,sp,32
    80006364:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006368:	02853503          	ld	a0,40(a0)
    8000636c:	ffffc097          	auipc	ra,0xffffc
    80006370:	f6c080e7          	jalr	-148(ra) # 800022d8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006374:	0304b503          	ld	a0,48(s1)
    80006378:	ffffc097          	auipc	ra,0xffffc
    8000637c:	f60080e7          	jalr	-160(ra) # 800022d8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006380:	0144a783          	lw	a5,20(s1)
    80006384:	0104a903          	lw	s2,16(s1)
    80006388:	0327ce63          	blt	a5,s2,800063c4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000638c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006390:	0304b503          	ld	a0,48(s1)
    80006394:	ffffc097          	auipc	ra,0xffffc
    80006398:	f7c080e7          	jalr	-132(ra) # 80002310 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000639c:	0284b503          	ld	a0,40(s1)
    800063a0:	ffffc097          	auipc	ra,0xffffc
    800063a4:	f70080e7          	jalr	-144(ra) # 80002310 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063a8:	00090513          	mv	a0,s2
    800063ac:	01813083          	ld	ra,24(sp)
    800063b0:	01013403          	ld	s0,16(sp)
    800063b4:	00813483          	ld	s1,8(sp)
    800063b8:	00013903          	ld	s2,0(sp)
    800063bc:	02010113          	addi	sp,sp,32
    800063c0:	00008067          	ret
        ret = cap - head + tail;
    800063c4:	0004a703          	lw	a4,0(s1)
    800063c8:	4127093b          	subw	s2,a4,s2
    800063cc:	00f9093b          	addw	s2,s2,a5
    800063d0:	fc1ff06f          	j	80006390 <_ZN9BufferCPP6getCntEv+0x44>

00000000800063d4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800063d4:	fe010113          	addi	sp,sp,-32
    800063d8:	00113c23          	sd	ra,24(sp)
    800063dc:	00813823          	sd	s0,16(sp)
    800063e0:	00913423          	sd	s1,8(sp)
    800063e4:	02010413          	addi	s0,sp,32
    800063e8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800063ec:	00a00513          	li	a0,10
    800063f0:	ffffc097          	auipc	ra,0xffffc
    800063f4:	048080e7          	jalr	72(ra) # 80002438 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800063f8:	00004517          	auipc	a0,0x4
    800063fc:	f3850513          	addi	a0,a0,-200 # 8000a330 <CONSOLE_STATUS+0x320>
    80006400:	00000097          	auipc	ra,0x0
    80006404:	a0c080e7          	jalr	-1524(ra) # 80005e0c <_Z11printStringPKc>
    while (getCnt()) {
    80006408:	00048513          	mv	a0,s1
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	f40080e7          	jalr	-192(ra) # 8000634c <_ZN9BufferCPP6getCntEv>
    80006414:	02050c63          	beqz	a0,8000644c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006418:	0084b783          	ld	a5,8(s1)
    8000641c:	0104a703          	lw	a4,16(s1)
    80006420:	00271713          	slli	a4,a4,0x2
    80006424:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006428:	0007c503          	lbu	a0,0(a5)
    8000642c:	ffffc097          	auipc	ra,0xffffc
    80006430:	00c080e7          	jalr	12(ra) # 80002438 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006434:	0104a783          	lw	a5,16(s1)
    80006438:	0017879b          	addiw	a5,a5,1
    8000643c:	0004a703          	lw	a4,0(s1)
    80006440:	02e7e7bb          	remw	a5,a5,a4
    80006444:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006448:	fc1ff06f          	j	80006408 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000644c:	02100513          	li	a0,33
    80006450:	ffffc097          	auipc	ra,0xffffc
    80006454:	fe8080e7          	jalr	-24(ra) # 80002438 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006458:	00a00513          	li	a0,10
    8000645c:	ffffc097          	auipc	ra,0xffffc
    80006460:	fdc080e7          	jalr	-36(ra) # 80002438 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006464:	0084b503          	ld	a0,8(s1)
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	e44080e7          	jalr	-444(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006470:	0204b503          	ld	a0,32(s1)
    80006474:	00050863          	beqz	a0,80006484 <_ZN9BufferCPPD1Ev+0xb0>
    80006478:	00053783          	ld	a5,0(a0)
    8000647c:	0087b783          	ld	a5,8(a5)
    80006480:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006484:	0184b503          	ld	a0,24(s1)
    80006488:	00050863          	beqz	a0,80006498 <_ZN9BufferCPPD1Ev+0xc4>
    8000648c:	00053783          	ld	a5,0(a0)
    80006490:	0087b783          	ld	a5,8(a5)
    80006494:	000780e7          	jalr	a5
    delete mutexTail;
    80006498:	0304b503          	ld	a0,48(s1)
    8000649c:	00050863          	beqz	a0,800064ac <_ZN9BufferCPPD1Ev+0xd8>
    800064a0:	00053783          	ld	a5,0(a0)
    800064a4:	0087b783          	ld	a5,8(a5)
    800064a8:	000780e7          	jalr	a5
    delete mutexHead;
    800064ac:	0284b503          	ld	a0,40(s1)
    800064b0:	00050863          	beqz	a0,800064c0 <_ZN9BufferCPPD1Ev+0xec>
    800064b4:	00053783          	ld	a5,0(a0)
    800064b8:	0087b783          	ld	a5,8(a5)
    800064bc:	000780e7          	jalr	a5
}
    800064c0:	01813083          	ld	ra,24(sp)
    800064c4:	01013403          	ld	s0,16(sp)
    800064c8:	00813483          	ld	s1,8(sp)
    800064cc:	02010113          	addi	sp,sp,32
    800064d0:	00008067          	ret

00000000800064d4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800064d4:	fe010113          	addi	sp,sp,-32
    800064d8:	00113c23          	sd	ra,24(sp)
    800064dc:	00813823          	sd	s0,16(sp)
    800064e0:	00913423          	sd	s1,8(sp)
    800064e4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800064e8:	00004517          	auipc	a0,0x4
    800064ec:	e6050513          	addi	a0,a0,-416 # 8000a348 <CONSOLE_STATUS+0x338>
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	91c080e7          	jalr	-1764(ra) # 80005e0c <_Z11printStringPKc>
    int test = getc() - '0';
    800064f8:	ffffb097          	auipc	ra,0xffffb
    800064fc:	128080e7          	jalr	296(ra) # 80001620 <_Z4getcv>
    80006500:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006504:	ffffb097          	auipc	ra,0xffffb
    80006508:	11c080e7          	jalr	284(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000650c:	00700793          	li	a5,7
    80006510:	1097e263          	bltu	a5,s1,80006614 <_Z8userMainv+0x140>
    80006514:	00249493          	slli	s1,s1,0x2
    80006518:	00004717          	auipc	a4,0x4
    8000651c:	08870713          	addi	a4,a4,136 # 8000a5a0 <CONSOLE_STATUS+0x590>
    80006520:	00e484b3          	add	s1,s1,a4
    80006524:	0004a783          	lw	a5,0(s1)
    80006528:	00e787b3          	add	a5,a5,a4
    8000652c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	f54080e7          	jalr	-172(ra) # 80005484 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006538:	00004517          	auipc	a0,0x4
    8000653c:	e3050513          	addi	a0,a0,-464 # 8000a368 <CONSOLE_STATUS+0x358>
    80006540:	00000097          	auipc	ra,0x0
    80006544:	8cc080e7          	jalr	-1844(ra) # 80005e0c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006548:	01813083          	ld	ra,24(sp)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	00813483          	ld	s1,8(sp)
    80006554:	02010113          	addi	sp,sp,32
    80006558:	00008067          	ret
            Threads_CPP_API_test();
    8000655c:	ffffe097          	auipc	ra,0xffffe
    80006560:	e08080e7          	jalr	-504(ra) # 80004364 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006564:	00004517          	auipc	a0,0x4
    80006568:	e4450513          	addi	a0,a0,-444 # 8000a3a8 <CONSOLE_STATUS+0x398>
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	8a0080e7          	jalr	-1888(ra) # 80005e0c <_Z11printStringPKc>
            break;
    80006574:	fd5ff06f          	j	80006548 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006578:	ffffd097          	auipc	ra,0xffffd
    8000657c:	640080e7          	jalr	1600(ra) # 80003bb8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006580:	00004517          	auipc	a0,0x4
    80006584:	e6850513          	addi	a0,a0,-408 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80006588:	00000097          	auipc	ra,0x0
    8000658c:	884080e7          	jalr	-1916(ra) # 80005e0c <_Z11printStringPKc>
            break;
    80006590:	fb9ff06f          	j	80006548 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	234080e7          	jalr	564(ra) # 800057c8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000659c:	00004517          	auipc	a0,0x4
    800065a0:	e9c50513          	addi	a0,a0,-356 # 8000a438 <CONSOLE_STATUS+0x428>
    800065a4:	00000097          	auipc	ra,0x0
    800065a8:	868080e7          	jalr	-1944(ra) # 80005e0c <_Z11printStringPKc>
            break;
    800065ac:	f9dff06f          	j	80006548 <_Z8userMainv+0x74>
            testSleeping();
    800065b0:	00000097          	auipc	ra,0x0
    800065b4:	11c080e7          	jalr	284(ra) # 800066cc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800065b8:	00004517          	auipc	a0,0x4
    800065bc:	ed850513          	addi	a0,a0,-296 # 8000a490 <CONSOLE_STATUS+0x480>
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	84c080e7          	jalr	-1972(ra) # 80005e0c <_Z11printStringPKc>
            break;
    800065c8:	f81ff06f          	j	80006548 <_Z8userMainv+0x74>
            testConsumerProducer();
    800065cc:	ffffe097          	auipc	ra,0xffffe
    800065d0:	258080e7          	jalr	600(ra) # 80004824 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800065d4:	00004517          	auipc	a0,0x4
    800065d8:	eec50513          	addi	a0,a0,-276 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	830080e7          	jalr	-2000(ra) # 80005e0c <_Z11printStringPKc>
            break;
    800065e4:	f65ff06f          	j	80006548 <_Z8userMainv+0x74>
            System_Mode_test();
    800065e8:	00000097          	auipc	ra,0x0
    800065ec:	658080e7          	jalr	1624(ra) # 80006c40 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800065f0:	00004517          	auipc	a0,0x4
    800065f4:	f1050513          	addi	a0,a0,-240 # 8000a500 <CONSOLE_STATUS+0x4f0>
    800065f8:	00000097          	auipc	ra,0x0
    800065fc:	814080e7          	jalr	-2028(ra) # 80005e0c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006600:	00004517          	auipc	a0,0x4
    80006604:	f2050513          	addi	a0,a0,-224 # 8000a520 <CONSOLE_STATUS+0x510>
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	804080e7          	jalr	-2044(ra) # 80005e0c <_Z11printStringPKc>
            break;
    80006610:	f39ff06f          	j	80006548 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006614:	00004517          	auipc	a0,0x4
    80006618:	f6450513          	addi	a0,a0,-156 # 8000a578 <CONSOLE_STATUS+0x568>
    8000661c:	fffff097          	auipc	ra,0xfffff
    80006620:	7f0080e7          	jalr	2032(ra) # 80005e0c <_Z11printStringPKc>
    80006624:	f25ff06f          	j	80006548 <_Z8userMainv+0x74>

0000000080006628 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006628:	fe010113          	addi	sp,sp,-32
    8000662c:	00113c23          	sd	ra,24(sp)
    80006630:	00813823          	sd	s0,16(sp)
    80006634:	00913423          	sd	s1,8(sp)
    80006638:	01213023          	sd	s2,0(sp)
    8000663c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006640:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006644:	00600493          	li	s1,6
    while (--i > 0) {
    80006648:	fff4849b          	addiw	s1,s1,-1
    8000664c:	04905463          	blez	s1,80006694 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006650:	00004517          	auipc	a0,0x4
    80006654:	f7050513          	addi	a0,a0,-144 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80006658:	fffff097          	auipc	ra,0xfffff
    8000665c:	7b4080e7          	jalr	1972(ra) # 80005e0c <_Z11printStringPKc>
        printInt(sleep_time);
    80006660:	00000613          	li	a2,0
    80006664:	00a00593          	li	a1,10
    80006668:	0009051b          	sext.w	a0,s2
    8000666c:	00000097          	auipc	ra,0x0
    80006670:	950080e7          	jalr	-1712(ra) # 80005fbc <_Z8printIntiii>
        printString(" !\n");
    80006674:	00004517          	auipc	a0,0x4
    80006678:	f5450513          	addi	a0,a0,-172 # 8000a5c8 <CONSOLE_STATUS+0x5b8>
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	790080e7          	jalr	1936(ra) # 80005e0c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006684:	00090513          	mv	a0,s2
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	f4c080e7          	jalr	-180(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006690:	fb9ff06f          	j	80006648 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006694:	00a00793          	li	a5,10
    80006698:	02f95933          	divu	s2,s2,a5
    8000669c:	fff90913          	addi	s2,s2,-1
    800066a0:	00007797          	auipc	a5,0x7
    800066a4:	9b878793          	addi	a5,a5,-1608 # 8000d058 <_ZL8finished>
    800066a8:	01278933          	add	s2,a5,s2
    800066ac:	00100793          	li	a5,1
    800066b0:	00f90023          	sb	a5,0(s2)
}
    800066b4:	01813083          	ld	ra,24(sp)
    800066b8:	01013403          	ld	s0,16(sp)
    800066bc:	00813483          	ld	s1,8(sp)
    800066c0:	00013903          	ld	s2,0(sp)
    800066c4:	02010113          	addi	sp,sp,32
    800066c8:	00008067          	ret

00000000800066cc <_Z12testSleepingv>:

void testSleeping() {
    800066cc:	fc010113          	addi	sp,sp,-64
    800066d0:	02113c23          	sd	ra,56(sp)
    800066d4:	02813823          	sd	s0,48(sp)
    800066d8:	02913423          	sd	s1,40(sp)
    800066dc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800066e0:	00a00793          	li	a5,10
    800066e4:	fcf43823          	sd	a5,-48(s0)
    800066e8:	01400793          	li	a5,20
    800066ec:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800066f0:	00000493          	li	s1,0
    800066f4:	02c0006f          	j	80006720 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800066f8:	00349793          	slli	a5,s1,0x3
    800066fc:	fd040613          	addi	a2,s0,-48
    80006700:	00f60633          	add	a2,a2,a5
    80006704:	00000597          	auipc	a1,0x0
    80006708:	f2458593          	addi	a1,a1,-220 # 80006628 <_ZL9sleepyRunPv>
    8000670c:	fc040513          	addi	a0,s0,-64
    80006710:	00f50533          	add	a0,a0,a5
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	be4080e7          	jalr	-1052(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000671c:	0014849b          	addiw	s1,s1,1
    80006720:	00100793          	li	a5,1
    80006724:	fc97dae3          	bge	a5,s1,800066f8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006728:	00007797          	auipc	a5,0x7
    8000672c:	9307c783          	lbu	a5,-1744(a5) # 8000d058 <_ZL8finished>
    80006730:	fe078ce3          	beqz	a5,80006728 <_Z12testSleepingv+0x5c>
    80006734:	00007797          	auipc	a5,0x7
    80006738:	9257c783          	lbu	a5,-1755(a5) # 8000d059 <_ZL8finished+0x1>
    8000673c:	fe0786e3          	beqz	a5,80006728 <_Z12testSleepingv+0x5c>
}
    80006740:	03813083          	ld	ra,56(sp)
    80006744:	03013403          	ld	s0,48(sp)
    80006748:	02813483          	ld	s1,40(sp)
    8000674c:	04010113          	addi	sp,sp,64
    80006750:	00008067          	ret

0000000080006754 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006754:	fe010113          	addi	sp,sp,-32
    80006758:	00113c23          	sd	ra,24(sp)
    8000675c:	00813823          	sd	s0,16(sp)
    80006760:	00913423          	sd	s1,8(sp)
    80006764:	01213023          	sd	s2,0(sp)
    80006768:	02010413          	addi	s0,sp,32
    8000676c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006770:	00100793          	li	a5,1
    80006774:	02a7f863          	bgeu	a5,a0,800067a4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006778:	00a00793          	li	a5,10
    8000677c:	02f577b3          	remu	a5,a0,a5
    80006780:	02078e63          	beqz	a5,800067bc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006784:	fff48513          	addi	a0,s1,-1
    80006788:	00000097          	auipc	ra,0x0
    8000678c:	fcc080e7          	jalr	-52(ra) # 80006754 <_ZL9fibonaccim>
    80006790:	00050913          	mv	s2,a0
    80006794:	ffe48513          	addi	a0,s1,-2
    80006798:	00000097          	auipc	ra,0x0
    8000679c:	fbc080e7          	jalr	-68(ra) # 80006754 <_ZL9fibonaccim>
    800067a0:	00a90533          	add	a0,s2,a0
}
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00013903          	ld	s2,0(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	c10080e7          	jalr	-1008(ra) # 800013cc <_Z15thread_dispatchv>
    800067c4:	fc1ff06f          	j	80006784 <_ZL9fibonaccim+0x30>

00000000800067c8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800067c8:	fe010113          	addi	sp,sp,-32
    800067cc:	00113c23          	sd	ra,24(sp)
    800067d0:	00813823          	sd	s0,16(sp)
    800067d4:	00913423          	sd	s1,8(sp)
    800067d8:	01213023          	sd	s2,0(sp)
    800067dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800067e0:	00a00493          	li	s1,10
    800067e4:	0400006f          	j	80006824 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800067e8:	00004517          	auipc	a0,0x4
    800067ec:	ab050513          	addi	a0,a0,-1360 # 8000a298 <CONSOLE_STATUS+0x288>
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	61c080e7          	jalr	1564(ra) # 80005e0c <_Z11printStringPKc>
    800067f8:	00000613          	li	a2,0
    800067fc:	00a00593          	li	a1,10
    80006800:	00048513          	mv	a0,s1
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	7b8080e7          	jalr	1976(ra) # 80005fbc <_Z8printIntiii>
    8000680c:	00004517          	auipc	a0,0x4
    80006810:	c7c50513          	addi	a0,a0,-900 # 8000a488 <CONSOLE_STATUS+0x478>
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	5f8080e7          	jalr	1528(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000681c:	0014849b          	addiw	s1,s1,1
    80006820:	0ff4f493          	andi	s1,s1,255
    80006824:	00c00793          	li	a5,12
    80006828:	fc97f0e3          	bgeu	a5,s1,800067e8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000682c:	00004517          	auipc	a0,0x4
    80006830:	a7450513          	addi	a0,a0,-1420 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	5d8080e7          	jalr	1496(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000683c:	00500313          	li	t1,5
    thread_dispatch();
    80006840:	ffffb097          	auipc	ra,0xffffb
    80006844:	b8c080e7          	jalr	-1140(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006848:	01000513          	li	a0,16
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	f08080e7          	jalr	-248(ra) # 80006754 <_ZL9fibonaccim>
    80006854:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006858:	00004517          	auipc	a0,0x4
    8000685c:	a5850513          	addi	a0,a0,-1448 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	5ac080e7          	jalr	1452(ra) # 80005e0c <_Z11printStringPKc>
    80006868:	00000613          	li	a2,0
    8000686c:	00a00593          	li	a1,10
    80006870:	0009051b          	sext.w	a0,s2
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	748080e7          	jalr	1864(ra) # 80005fbc <_Z8printIntiii>
    8000687c:	00004517          	auipc	a0,0x4
    80006880:	c0c50513          	addi	a0,a0,-1012 # 8000a488 <CONSOLE_STATUS+0x478>
    80006884:	fffff097          	auipc	ra,0xfffff
    80006888:	588080e7          	jalr	1416(ra) # 80005e0c <_Z11printStringPKc>
    8000688c:	0400006f          	j	800068cc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006890:	00004517          	auipc	a0,0x4
    80006894:	a0850513          	addi	a0,a0,-1528 # 8000a298 <CONSOLE_STATUS+0x288>
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	574080e7          	jalr	1396(ra) # 80005e0c <_Z11printStringPKc>
    800068a0:	00000613          	li	a2,0
    800068a4:	00a00593          	li	a1,10
    800068a8:	00048513          	mv	a0,s1
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	710080e7          	jalr	1808(ra) # 80005fbc <_Z8printIntiii>
    800068b4:	00004517          	auipc	a0,0x4
    800068b8:	bd450513          	addi	a0,a0,-1068 # 8000a488 <CONSOLE_STATUS+0x478>
    800068bc:	fffff097          	auipc	ra,0xfffff
    800068c0:	550080e7          	jalr	1360(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800068c4:	0014849b          	addiw	s1,s1,1
    800068c8:	0ff4f493          	andi	s1,s1,255
    800068cc:	00f00793          	li	a5,15
    800068d0:	fc97f0e3          	bgeu	a5,s1,80006890 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800068d4:	00004517          	auipc	a0,0x4
    800068d8:	9ec50513          	addi	a0,a0,-1556 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    800068dc:	fffff097          	auipc	ra,0xfffff
    800068e0:	530080e7          	jalr	1328(ra) # 80005e0c <_Z11printStringPKc>
    finishedD = true;
    800068e4:	00100793          	li	a5,1
    800068e8:	00006717          	auipc	a4,0x6
    800068ec:	76f70923          	sb	a5,1906(a4) # 8000d05a <_ZL9finishedD>
    thread_dispatch();
    800068f0:	ffffb097          	auipc	ra,0xffffb
    800068f4:	adc080e7          	jalr	-1316(ra) # 800013cc <_Z15thread_dispatchv>
}
    800068f8:	01813083          	ld	ra,24(sp)
    800068fc:	01013403          	ld	s0,16(sp)
    80006900:	00813483          	ld	s1,8(sp)
    80006904:	00013903          	ld	s2,0(sp)
    80006908:	02010113          	addi	sp,sp,32
    8000690c:	00008067          	ret

0000000080006910 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006910:	fe010113          	addi	sp,sp,-32
    80006914:	00113c23          	sd	ra,24(sp)
    80006918:	00813823          	sd	s0,16(sp)
    8000691c:	00913423          	sd	s1,8(sp)
    80006920:	01213023          	sd	s2,0(sp)
    80006924:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006928:	00000493          	li	s1,0
    8000692c:	0400006f          	j	8000696c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006930:	00004517          	auipc	a0,0x4
    80006934:	93850513          	addi	a0,a0,-1736 # 8000a268 <CONSOLE_STATUS+0x258>
    80006938:	fffff097          	auipc	ra,0xfffff
    8000693c:	4d4080e7          	jalr	1236(ra) # 80005e0c <_Z11printStringPKc>
    80006940:	00000613          	li	a2,0
    80006944:	00a00593          	li	a1,10
    80006948:	00048513          	mv	a0,s1
    8000694c:	fffff097          	auipc	ra,0xfffff
    80006950:	670080e7          	jalr	1648(ra) # 80005fbc <_Z8printIntiii>
    80006954:	00004517          	auipc	a0,0x4
    80006958:	b3450513          	addi	a0,a0,-1228 # 8000a488 <CONSOLE_STATUS+0x478>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	4b0080e7          	jalr	1200(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006964:	0014849b          	addiw	s1,s1,1
    80006968:	0ff4f493          	andi	s1,s1,255
    8000696c:	00200793          	li	a5,2
    80006970:	fc97f0e3          	bgeu	a5,s1,80006930 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006974:	00004517          	auipc	a0,0x4
    80006978:	8fc50513          	addi	a0,a0,-1796 # 8000a270 <CONSOLE_STATUS+0x260>
    8000697c:	fffff097          	auipc	ra,0xfffff
    80006980:	490080e7          	jalr	1168(ra) # 80005e0c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006984:	00700313          	li	t1,7
    thread_dispatch();
    80006988:	ffffb097          	auipc	ra,0xffffb
    8000698c:	a44080e7          	jalr	-1468(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006990:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006994:	00004517          	auipc	a0,0x4
    80006998:	8ec50513          	addi	a0,a0,-1812 # 8000a280 <CONSOLE_STATUS+0x270>
    8000699c:	fffff097          	auipc	ra,0xfffff
    800069a0:	470080e7          	jalr	1136(ra) # 80005e0c <_Z11printStringPKc>
    800069a4:	00000613          	li	a2,0
    800069a8:	00a00593          	li	a1,10
    800069ac:	0009051b          	sext.w	a0,s2
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	60c080e7          	jalr	1548(ra) # 80005fbc <_Z8printIntiii>
    800069b8:	00004517          	auipc	a0,0x4
    800069bc:	ad050513          	addi	a0,a0,-1328 # 8000a488 <CONSOLE_STATUS+0x478>
    800069c0:	fffff097          	auipc	ra,0xfffff
    800069c4:	44c080e7          	jalr	1100(ra) # 80005e0c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800069c8:	00c00513          	li	a0,12
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	d88080e7          	jalr	-632(ra) # 80006754 <_ZL9fibonaccim>
    800069d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800069d8:	00004517          	auipc	a0,0x4
    800069dc:	8b050513          	addi	a0,a0,-1872 # 8000a288 <CONSOLE_STATUS+0x278>
    800069e0:	fffff097          	auipc	ra,0xfffff
    800069e4:	42c080e7          	jalr	1068(ra) # 80005e0c <_Z11printStringPKc>
    800069e8:	00000613          	li	a2,0
    800069ec:	00a00593          	li	a1,10
    800069f0:	0009051b          	sext.w	a0,s2
    800069f4:	fffff097          	auipc	ra,0xfffff
    800069f8:	5c8080e7          	jalr	1480(ra) # 80005fbc <_Z8printIntiii>
    800069fc:	00004517          	auipc	a0,0x4
    80006a00:	a8c50513          	addi	a0,a0,-1396 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a04:	fffff097          	auipc	ra,0xfffff
    80006a08:	408080e7          	jalr	1032(ra) # 80005e0c <_Z11printStringPKc>
    80006a0c:	0400006f          	j	80006a4c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006a10:	00004517          	auipc	a0,0x4
    80006a14:	85850513          	addi	a0,a0,-1960 # 8000a268 <CONSOLE_STATUS+0x258>
    80006a18:	fffff097          	auipc	ra,0xfffff
    80006a1c:	3f4080e7          	jalr	1012(ra) # 80005e0c <_Z11printStringPKc>
    80006a20:	00000613          	li	a2,0
    80006a24:	00a00593          	li	a1,10
    80006a28:	00048513          	mv	a0,s1
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	590080e7          	jalr	1424(ra) # 80005fbc <_Z8printIntiii>
    80006a34:	00004517          	auipc	a0,0x4
    80006a38:	a5450513          	addi	a0,a0,-1452 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a3c:	fffff097          	auipc	ra,0xfffff
    80006a40:	3d0080e7          	jalr	976(ra) # 80005e0c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006a44:	0014849b          	addiw	s1,s1,1
    80006a48:	0ff4f493          	andi	s1,s1,255
    80006a4c:	00500793          	li	a5,5
    80006a50:	fc97f0e3          	bgeu	a5,s1,80006a10 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006a54:	00003517          	auipc	a0,0x3
    80006a58:	7ec50513          	addi	a0,a0,2028 # 8000a240 <CONSOLE_STATUS+0x230>
    80006a5c:	fffff097          	auipc	ra,0xfffff
    80006a60:	3b0080e7          	jalr	944(ra) # 80005e0c <_Z11printStringPKc>
    finishedC = true;
    80006a64:	00100793          	li	a5,1
    80006a68:	00006717          	auipc	a4,0x6
    80006a6c:	5ef709a3          	sb	a5,1523(a4) # 8000d05b <_ZL9finishedC>
    thread_dispatch();
    80006a70:	ffffb097          	auipc	ra,0xffffb
    80006a74:	95c080e7          	jalr	-1700(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006a78:	01813083          	ld	ra,24(sp)
    80006a7c:	01013403          	ld	s0,16(sp)
    80006a80:	00813483          	ld	s1,8(sp)
    80006a84:	00013903          	ld	s2,0(sp)
    80006a88:	02010113          	addi	sp,sp,32
    80006a8c:	00008067          	ret

0000000080006a90 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006a90:	fe010113          	addi	sp,sp,-32
    80006a94:	00113c23          	sd	ra,24(sp)
    80006a98:	00813823          	sd	s0,16(sp)
    80006a9c:	00913423          	sd	s1,8(sp)
    80006aa0:	01213023          	sd	s2,0(sp)
    80006aa4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006aa8:	00000913          	li	s2,0
    80006aac:	0400006f          	j	80006aec <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ab0:	ffffb097          	auipc	ra,0xffffb
    80006ab4:	91c080e7          	jalr	-1764(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ab8:	00148493          	addi	s1,s1,1
    80006abc:	000027b7          	lui	a5,0x2
    80006ac0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ac4:	0097ee63          	bltu	a5,s1,80006ae0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ac8:	00000713          	li	a4,0
    80006acc:	000077b7          	lui	a5,0x7
    80006ad0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ad4:	fce7eee3          	bltu	a5,a4,80006ab0 <_ZL11workerBodyBPv+0x20>
    80006ad8:	00170713          	addi	a4,a4,1
    80006adc:	ff1ff06f          	j	80006acc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006ae0:	00a00793          	li	a5,10
    80006ae4:	04f90663          	beq	s2,a5,80006b30 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006ae8:	00190913          	addi	s2,s2,1
    80006aec:	00f00793          	li	a5,15
    80006af0:	0527e463          	bltu	a5,s2,80006b38 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006af4:	00003517          	auipc	a0,0x3
    80006af8:	75c50513          	addi	a0,a0,1884 # 8000a250 <CONSOLE_STATUS+0x240>
    80006afc:	fffff097          	auipc	ra,0xfffff
    80006b00:	310080e7          	jalr	784(ra) # 80005e0c <_Z11printStringPKc>
    80006b04:	00000613          	li	a2,0
    80006b08:	00a00593          	li	a1,10
    80006b0c:	0009051b          	sext.w	a0,s2
    80006b10:	fffff097          	auipc	ra,0xfffff
    80006b14:	4ac080e7          	jalr	1196(ra) # 80005fbc <_Z8printIntiii>
    80006b18:	00004517          	auipc	a0,0x4
    80006b1c:	97050513          	addi	a0,a0,-1680 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	2ec080e7          	jalr	748(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b28:	00000493          	li	s1,0
    80006b2c:	f91ff06f          	j	80006abc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006b30:	14102ff3          	csrr	t6,sepc
    80006b34:	fb5ff06f          	j	80006ae8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006b38:	00003517          	auipc	a0,0x3
    80006b3c:	72050513          	addi	a0,a0,1824 # 8000a258 <CONSOLE_STATUS+0x248>
    80006b40:	fffff097          	auipc	ra,0xfffff
    80006b44:	2cc080e7          	jalr	716(ra) # 80005e0c <_Z11printStringPKc>
    finishedB = true;
    80006b48:	00100793          	li	a5,1
    80006b4c:	00006717          	auipc	a4,0x6
    80006b50:	50f70823          	sb	a5,1296(a4) # 8000d05c <_ZL9finishedB>
    thread_dispatch();
    80006b54:	ffffb097          	auipc	ra,0xffffb
    80006b58:	878080e7          	jalr	-1928(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006b5c:	01813083          	ld	ra,24(sp)
    80006b60:	01013403          	ld	s0,16(sp)
    80006b64:	00813483          	ld	s1,8(sp)
    80006b68:	00013903          	ld	s2,0(sp)
    80006b6c:	02010113          	addi	sp,sp,32
    80006b70:	00008067          	ret

0000000080006b74 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006b74:	fe010113          	addi	sp,sp,-32
    80006b78:	00113c23          	sd	ra,24(sp)
    80006b7c:	00813823          	sd	s0,16(sp)
    80006b80:	00913423          	sd	s1,8(sp)
    80006b84:	01213023          	sd	s2,0(sp)
    80006b88:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006b8c:	00000913          	li	s2,0
    80006b90:	0380006f          	j	80006bc8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006b94:	ffffb097          	auipc	ra,0xffffb
    80006b98:	838080e7          	jalr	-1992(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b9c:	00148493          	addi	s1,s1,1
    80006ba0:	000027b7          	lui	a5,0x2
    80006ba4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ba8:	0097ee63          	bltu	a5,s1,80006bc4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006bac:	00000713          	li	a4,0
    80006bb0:	000077b7          	lui	a5,0x7
    80006bb4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006bb8:	fce7eee3          	bltu	a5,a4,80006b94 <_ZL11workerBodyAPv+0x20>
    80006bbc:	00170713          	addi	a4,a4,1
    80006bc0:	ff1ff06f          	j	80006bb0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006bc4:	00190913          	addi	s2,s2,1
    80006bc8:	00900793          	li	a5,9
    80006bcc:	0527e063          	bltu	a5,s2,80006c0c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006bd0:	00003517          	auipc	a0,0x3
    80006bd4:	66850513          	addi	a0,a0,1640 # 8000a238 <CONSOLE_STATUS+0x228>
    80006bd8:	fffff097          	auipc	ra,0xfffff
    80006bdc:	234080e7          	jalr	564(ra) # 80005e0c <_Z11printStringPKc>
    80006be0:	00000613          	li	a2,0
    80006be4:	00a00593          	li	a1,10
    80006be8:	0009051b          	sext.w	a0,s2
    80006bec:	fffff097          	auipc	ra,0xfffff
    80006bf0:	3d0080e7          	jalr	976(ra) # 80005fbc <_Z8printIntiii>
    80006bf4:	00004517          	auipc	a0,0x4
    80006bf8:	89450513          	addi	a0,a0,-1900 # 8000a488 <CONSOLE_STATUS+0x478>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	210080e7          	jalr	528(ra) # 80005e0c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c04:	00000493          	li	s1,0
    80006c08:	f99ff06f          	j	80006ba0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006c0c:	00003517          	auipc	a0,0x3
    80006c10:	63450513          	addi	a0,a0,1588 # 8000a240 <CONSOLE_STATUS+0x230>
    80006c14:	fffff097          	auipc	ra,0xfffff
    80006c18:	1f8080e7          	jalr	504(ra) # 80005e0c <_Z11printStringPKc>
    finishedA = true;
    80006c1c:	00100793          	li	a5,1
    80006c20:	00006717          	auipc	a4,0x6
    80006c24:	42f70ea3          	sb	a5,1085(a4) # 8000d05d <_ZL9finishedA>
}
    80006c28:	01813083          	ld	ra,24(sp)
    80006c2c:	01013403          	ld	s0,16(sp)
    80006c30:	00813483          	ld	s1,8(sp)
    80006c34:	00013903          	ld	s2,0(sp)
    80006c38:	02010113          	addi	sp,sp,32
    80006c3c:	00008067          	ret

0000000080006c40 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006c40:	fd010113          	addi	sp,sp,-48
    80006c44:	02113423          	sd	ra,40(sp)
    80006c48:	02813023          	sd	s0,32(sp)
    80006c4c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006c50:	00000613          	li	a2,0
    80006c54:	00000597          	auipc	a1,0x0
    80006c58:	f2058593          	addi	a1,a1,-224 # 80006b74 <_ZL11workerBodyAPv>
    80006c5c:	fd040513          	addi	a0,s0,-48
    80006c60:	ffffa097          	auipc	ra,0xffffa
    80006c64:	698080e7          	jalr	1688(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006c68:	00003517          	auipc	a0,0x3
    80006c6c:	66850513          	addi	a0,a0,1640 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80006c70:	fffff097          	auipc	ra,0xfffff
    80006c74:	19c080e7          	jalr	412(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006c78:	00000613          	li	a2,0
    80006c7c:	00000597          	auipc	a1,0x0
    80006c80:	e1458593          	addi	a1,a1,-492 # 80006a90 <_ZL11workerBodyBPv>
    80006c84:	fd840513          	addi	a0,s0,-40
    80006c88:	ffffa097          	auipc	ra,0xffffa
    80006c8c:	670080e7          	jalr	1648(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006c90:	00003517          	auipc	a0,0x3
    80006c94:	65850513          	addi	a0,a0,1624 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    80006c98:	fffff097          	auipc	ra,0xfffff
    80006c9c:	174080e7          	jalr	372(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006ca0:	00000613          	li	a2,0
    80006ca4:	00000597          	auipc	a1,0x0
    80006ca8:	c6c58593          	addi	a1,a1,-916 # 80006910 <_ZL11workerBodyCPv>
    80006cac:	fe040513          	addi	a0,s0,-32
    80006cb0:	ffffa097          	auipc	ra,0xffffa
    80006cb4:	648080e7          	jalr	1608(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	64850513          	addi	a0,a0,1608 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80006cc0:	fffff097          	auipc	ra,0xfffff
    80006cc4:	14c080e7          	jalr	332(ra) # 80005e0c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006cc8:	00000613          	li	a2,0
    80006ccc:	00000597          	auipc	a1,0x0
    80006cd0:	afc58593          	addi	a1,a1,-1284 # 800067c8 <_ZL11workerBodyDPv>
    80006cd4:	fe840513          	addi	a0,s0,-24
    80006cd8:	ffffa097          	auipc	ra,0xffffa
    80006cdc:	620080e7          	jalr	1568(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006ce0:	00003517          	auipc	a0,0x3
    80006ce4:	63850513          	addi	a0,a0,1592 # 8000a318 <CONSOLE_STATUS+0x308>
    80006ce8:	fffff097          	auipc	ra,0xfffff
    80006cec:	124080e7          	jalr	292(ra) # 80005e0c <_Z11printStringPKc>
    80006cf0:	00c0006f          	j	80006cfc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006cf4:	ffffa097          	auipc	ra,0xffffa
    80006cf8:	6d8080e7          	jalr	1752(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006cfc:	00006797          	auipc	a5,0x6
    80006d00:	3617c783          	lbu	a5,865(a5) # 8000d05d <_ZL9finishedA>
    80006d04:	fe0788e3          	beqz	a5,80006cf4 <_Z16System_Mode_testv+0xb4>
    80006d08:	00006797          	auipc	a5,0x6
    80006d0c:	3547c783          	lbu	a5,852(a5) # 8000d05c <_ZL9finishedB>
    80006d10:	fe0782e3          	beqz	a5,80006cf4 <_Z16System_Mode_testv+0xb4>
    80006d14:	00006797          	auipc	a5,0x6
    80006d18:	3477c783          	lbu	a5,839(a5) # 8000d05b <_ZL9finishedC>
    80006d1c:	fc078ce3          	beqz	a5,80006cf4 <_Z16System_Mode_testv+0xb4>
    80006d20:	00006797          	auipc	a5,0x6
    80006d24:	33a7c783          	lbu	a5,826(a5) # 8000d05a <_ZL9finishedD>
    80006d28:	fc0786e3          	beqz	a5,80006cf4 <_Z16System_Mode_testv+0xb4>
    }

}
    80006d2c:	02813083          	ld	ra,40(sp)
    80006d30:	02013403          	ld	s0,32(sp)
    80006d34:	03010113          	addi	sp,sp,48
    80006d38:	00008067          	ret

0000000080006d3c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006d3c:	fe010113          	addi	sp,sp,-32
    80006d40:	00113c23          	sd	ra,24(sp)
    80006d44:	00813823          	sd	s0,16(sp)
    80006d48:	00913423          	sd	s1,8(sp)
    80006d4c:	01213023          	sd	s2,0(sp)
    80006d50:	02010413          	addi	s0,sp,32
    80006d54:	00050493          	mv	s1,a0
    80006d58:	00058913          	mv	s2,a1
    80006d5c:	0015879b          	addiw	a5,a1,1
    80006d60:	0007851b          	sext.w	a0,a5
    80006d64:	00f4a023          	sw	a5,0(s1)
    80006d68:	0004a823          	sw	zero,16(s1)
    80006d6c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006d70:	00251513          	slli	a0,a0,0x2
    80006d74:	ffffa097          	auipc	ra,0xffffa
    80006d78:	4e4080e7          	jalr	1252(ra) # 80001258 <_Z9mem_allocm>
    80006d7c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006d80:	00000593          	li	a1,0
    80006d84:	02048513          	addi	a0,s1,32
    80006d88:	ffffa097          	auipc	ra,0xffffa
    80006d8c:	680080e7          	jalr	1664(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006d90:	00090593          	mv	a1,s2
    80006d94:	01848513          	addi	a0,s1,24
    80006d98:	ffffa097          	auipc	ra,0xffffa
    80006d9c:	670080e7          	jalr	1648(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006da0:	00100593          	li	a1,1
    80006da4:	02848513          	addi	a0,s1,40
    80006da8:	ffffa097          	auipc	ra,0xffffa
    80006dac:	660080e7          	jalr	1632(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006db0:	00100593          	li	a1,1
    80006db4:	03048513          	addi	a0,s1,48
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	650080e7          	jalr	1616(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80006dc0:	01813083          	ld	ra,24(sp)
    80006dc4:	01013403          	ld	s0,16(sp)
    80006dc8:	00813483          	ld	s1,8(sp)
    80006dcc:	00013903          	ld	s2,0(sp)
    80006dd0:	02010113          	addi	sp,sp,32
    80006dd4:	00008067          	ret

0000000080006dd8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006dd8:	fe010113          	addi	sp,sp,-32
    80006ddc:	00113c23          	sd	ra,24(sp)
    80006de0:	00813823          	sd	s0,16(sp)
    80006de4:	00913423          	sd	s1,8(sp)
    80006de8:	01213023          	sd	s2,0(sp)
    80006dec:	02010413          	addi	s0,sp,32
    80006df0:	00050493          	mv	s1,a0
    80006df4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006df8:	01853503          	ld	a0,24(a0)
    80006dfc:	ffffa097          	auipc	ra,0xffffa
    80006e00:	6a8080e7          	jalr	1704(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006e04:	0304b503          	ld	a0,48(s1)
    80006e08:	ffffa097          	auipc	ra,0xffffa
    80006e0c:	69c080e7          	jalr	1692(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006e10:	0084b783          	ld	a5,8(s1)
    80006e14:	0144a703          	lw	a4,20(s1)
    80006e18:	00271713          	slli	a4,a4,0x2
    80006e1c:	00e787b3          	add	a5,a5,a4
    80006e20:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006e24:	0144a783          	lw	a5,20(s1)
    80006e28:	0017879b          	addiw	a5,a5,1
    80006e2c:	0004a703          	lw	a4,0(s1)
    80006e30:	02e7e7bb          	remw	a5,a5,a4
    80006e34:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006e38:	0304b503          	ld	a0,48(s1)
    80006e3c:	ffffa097          	auipc	ra,0xffffa
    80006e40:	6b4080e7          	jalr	1716(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006e44:	0204b503          	ld	a0,32(s1)
    80006e48:	ffffa097          	auipc	ra,0xffffa
    80006e4c:	6a8080e7          	jalr	1704(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80006e50:	01813083          	ld	ra,24(sp)
    80006e54:	01013403          	ld	s0,16(sp)
    80006e58:	00813483          	ld	s1,8(sp)
    80006e5c:	00013903          	ld	s2,0(sp)
    80006e60:	02010113          	addi	sp,sp,32
    80006e64:	00008067          	ret

0000000080006e68 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006e68:	fe010113          	addi	sp,sp,-32
    80006e6c:	00113c23          	sd	ra,24(sp)
    80006e70:	00813823          	sd	s0,16(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	01213023          	sd	s2,0(sp)
    80006e7c:	02010413          	addi	s0,sp,32
    80006e80:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006e84:	02053503          	ld	a0,32(a0)
    80006e88:	ffffa097          	auipc	ra,0xffffa
    80006e8c:	61c080e7          	jalr	1564(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006e90:	0284b503          	ld	a0,40(s1)
    80006e94:	ffffa097          	auipc	ra,0xffffa
    80006e98:	610080e7          	jalr	1552(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006e9c:	0084b703          	ld	a4,8(s1)
    80006ea0:	0104a783          	lw	a5,16(s1)
    80006ea4:	00279693          	slli	a3,a5,0x2
    80006ea8:	00d70733          	add	a4,a4,a3
    80006eac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006eb0:	0017879b          	addiw	a5,a5,1
    80006eb4:	0004a703          	lw	a4,0(s1)
    80006eb8:	02e7e7bb          	remw	a5,a5,a4
    80006ebc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006ec0:	0284b503          	ld	a0,40(s1)
    80006ec4:	ffffa097          	auipc	ra,0xffffa
    80006ec8:	62c080e7          	jalr	1580(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80006ecc:	0184b503          	ld	a0,24(s1)
    80006ed0:	ffffa097          	auipc	ra,0xffffa
    80006ed4:	620080e7          	jalr	1568(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80006ed8:	00090513          	mv	a0,s2
    80006edc:	01813083          	ld	ra,24(sp)
    80006ee0:	01013403          	ld	s0,16(sp)
    80006ee4:	00813483          	ld	s1,8(sp)
    80006ee8:	00013903          	ld	s2,0(sp)
    80006eec:	02010113          	addi	sp,sp,32
    80006ef0:	00008067          	ret

0000000080006ef4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006ef4:	fe010113          	addi	sp,sp,-32
    80006ef8:	00113c23          	sd	ra,24(sp)
    80006efc:	00813823          	sd	s0,16(sp)
    80006f00:	00913423          	sd	s1,8(sp)
    80006f04:	01213023          	sd	s2,0(sp)
    80006f08:	02010413          	addi	s0,sp,32
    80006f0c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006f10:	02853503          	ld	a0,40(a0)
    80006f14:	ffffa097          	auipc	ra,0xffffa
    80006f18:	590080e7          	jalr	1424(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80006f1c:	0304b503          	ld	a0,48(s1)
    80006f20:	ffffa097          	auipc	ra,0xffffa
    80006f24:	584080e7          	jalr	1412(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006f28:	0144a783          	lw	a5,20(s1)
    80006f2c:	0104a903          	lw	s2,16(s1)
    80006f30:	0327ce63          	blt	a5,s2,80006f6c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006f34:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006f38:	0304b503          	ld	a0,48(s1)
    80006f3c:	ffffa097          	auipc	ra,0xffffa
    80006f40:	5b4080e7          	jalr	1460(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80006f44:	0284b503          	ld	a0,40(s1)
    80006f48:	ffffa097          	auipc	ra,0xffffa
    80006f4c:	5a8080e7          	jalr	1448(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80006f50:	00090513          	mv	a0,s2
    80006f54:	01813083          	ld	ra,24(sp)
    80006f58:	01013403          	ld	s0,16(sp)
    80006f5c:	00813483          	ld	s1,8(sp)
    80006f60:	00013903          	ld	s2,0(sp)
    80006f64:	02010113          	addi	sp,sp,32
    80006f68:	00008067          	ret
        ret = cap - head + tail;
    80006f6c:	0004a703          	lw	a4,0(s1)
    80006f70:	4127093b          	subw	s2,a4,s2
    80006f74:	00f9093b          	addw	s2,s2,a5
    80006f78:	fc1ff06f          	j	80006f38 <_ZN6Buffer6getCntEv+0x44>

0000000080006f7c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006f7c:	fe010113          	addi	sp,sp,-32
    80006f80:	00113c23          	sd	ra,24(sp)
    80006f84:	00813823          	sd	s0,16(sp)
    80006f88:	00913423          	sd	s1,8(sp)
    80006f8c:	02010413          	addi	s0,sp,32
    80006f90:	00050493          	mv	s1,a0
    putc('\n');
    80006f94:	00a00513          	li	a0,10
    80006f98:	ffffa097          	auipc	ra,0xffffa
    80006f9c:	6d4080e7          	jalr	1748(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006fa0:	00003517          	auipc	a0,0x3
    80006fa4:	39050513          	addi	a0,a0,912 # 8000a330 <CONSOLE_STATUS+0x320>
    80006fa8:	fffff097          	auipc	ra,0xfffff
    80006fac:	e64080e7          	jalr	-412(ra) # 80005e0c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006fb0:	00048513          	mv	a0,s1
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	f40080e7          	jalr	-192(ra) # 80006ef4 <_ZN6Buffer6getCntEv>
    80006fbc:	02a05c63          	blez	a0,80006ff4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006fc0:	0084b783          	ld	a5,8(s1)
    80006fc4:	0104a703          	lw	a4,16(s1)
    80006fc8:	00271713          	slli	a4,a4,0x2
    80006fcc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006fd0:	0007c503          	lbu	a0,0(a5)
    80006fd4:	ffffa097          	auipc	ra,0xffffa
    80006fd8:	698080e7          	jalr	1688(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80006fdc:	0104a783          	lw	a5,16(s1)
    80006fe0:	0017879b          	addiw	a5,a5,1
    80006fe4:	0004a703          	lw	a4,0(s1)
    80006fe8:	02e7e7bb          	remw	a5,a5,a4
    80006fec:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006ff0:	fc1ff06f          	j	80006fb0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006ff4:	02100513          	li	a0,33
    80006ff8:	ffffa097          	auipc	ra,0xffffa
    80006ffc:	674080e7          	jalr	1652(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80007000:	00a00513          	li	a0,10
    80007004:	ffffa097          	auipc	ra,0xffffa
    80007008:	668080e7          	jalr	1640(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    8000700c:	0084b503          	ld	a0,8(s1)
    80007010:	ffffa097          	auipc	ra,0xffffa
    80007014:	29c080e7          	jalr	668(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007018:	0204b503          	ld	a0,32(s1)
    8000701c:	ffffa097          	auipc	ra,0xffffa
    80007020:	43c080e7          	jalr	1084(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80007024:	0184b503          	ld	a0,24(s1)
    80007028:	ffffa097          	auipc	ra,0xffffa
    8000702c:	430080e7          	jalr	1072(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80007030:	0304b503          	ld	a0,48(s1)
    80007034:	ffffa097          	auipc	ra,0xffffa
    80007038:	424080e7          	jalr	1060(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    8000703c:	0284b503          	ld	a0,40(s1)
    80007040:	ffffa097          	auipc	ra,0xffffa
    80007044:	418080e7          	jalr	1048(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80007048:	01813083          	ld	ra,24(sp)
    8000704c:	01013403          	ld	s0,16(sp)
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00008067          	ret

000000008000705c <start>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813423          	sd	s0,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	300027f3          	csrr	a5,mstatus
    8000706c:	ffffe737          	lui	a4,0xffffe
    80007070:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff053f>
    80007074:	00e7f7b3          	and	a5,a5,a4
    80007078:	00001737          	lui	a4,0x1
    8000707c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007080:	00e7e7b3          	or	a5,a5,a4
    80007084:	30079073          	csrw	mstatus,a5
    80007088:	00000797          	auipc	a5,0x0
    8000708c:	16078793          	addi	a5,a5,352 # 800071e8 <system_main>
    80007090:	34179073          	csrw	mepc,a5
    80007094:	00000793          	li	a5,0
    80007098:	18079073          	csrw	satp,a5
    8000709c:	000107b7          	lui	a5,0x10
    800070a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800070a4:	30279073          	csrw	medeleg,a5
    800070a8:	30379073          	csrw	mideleg,a5
    800070ac:	104027f3          	csrr	a5,sie
    800070b0:	2227e793          	ori	a5,a5,546
    800070b4:	10479073          	csrw	sie,a5
    800070b8:	fff00793          	li	a5,-1
    800070bc:	00a7d793          	srli	a5,a5,0xa
    800070c0:	3b079073          	csrw	pmpaddr0,a5
    800070c4:	00f00793          	li	a5,15
    800070c8:	3a079073          	csrw	pmpcfg0,a5
    800070cc:	f14027f3          	csrr	a5,mhartid
    800070d0:	0200c737          	lui	a4,0x200c
    800070d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070d8:	0007869b          	sext.w	a3,a5
    800070dc:	00269713          	slli	a4,a3,0x2
    800070e0:	000f4637          	lui	a2,0xf4
    800070e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070e8:	00d70733          	add	a4,a4,a3
    800070ec:	0037979b          	slliw	a5,a5,0x3
    800070f0:	020046b7          	lui	a3,0x2004
    800070f4:	00d787b3          	add	a5,a5,a3
    800070f8:	00c585b3          	add	a1,a1,a2
    800070fc:	00371693          	slli	a3,a4,0x3
    80007100:	00006717          	auipc	a4,0x6
    80007104:	f6070713          	addi	a4,a4,-160 # 8000d060 <timer_scratch>
    80007108:	00b7b023          	sd	a1,0(a5)
    8000710c:	00d70733          	add	a4,a4,a3
    80007110:	00f73c23          	sd	a5,24(a4)
    80007114:	02c73023          	sd	a2,32(a4)
    80007118:	34071073          	csrw	mscratch,a4
    8000711c:	00000797          	auipc	a5,0x0
    80007120:	6e478793          	addi	a5,a5,1764 # 80007800 <timervec>
    80007124:	30579073          	csrw	mtvec,a5
    80007128:	300027f3          	csrr	a5,mstatus
    8000712c:	0087e793          	ori	a5,a5,8
    80007130:	30079073          	csrw	mstatus,a5
    80007134:	304027f3          	csrr	a5,mie
    80007138:	0807e793          	ori	a5,a5,128
    8000713c:	30479073          	csrw	mie,a5
    80007140:	f14027f3          	csrr	a5,mhartid
    80007144:	0007879b          	sext.w	a5,a5
    80007148:	00078213          	mv	tp,a5
    8000714c:	30200073          	mret
    80007150:	00813403          	ld	s0,8(sp)
    80007154:	01010113          	addi	sp,sp,16
    80007158:	00008067          	ret

000000008000715c <timerinit>:
    8000715c:	ff010113          	addi	sp,sp,-16
    80007160:	00813423          	sd	s0,8(sp)
    80007164:	01010413          	addi	s0,sp,16
    80007168:	f14027f3          	csrr	a5,mhartid
    8000716c:	0200c737          	lui	a4,0x200c
    80007170:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007174:	0007869b          	sext.w	a3,a5
    80007178:	00269713          	slli	a4,a3,0x2
    8000717c:	000f4637          	lui	a2,0xf4
    80007180:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007184:	00d70733          	add	a4,a4,a3
    80007188:	0037979b          	slliw	a5,a5,0x3
    8000718c:	020046b7          	lui	a3,0x2004
    80007190:	00d787b3          	add	a5,a5,a3
    80007194:	00c585b3          	add	a1,a1,a2
    80007198:	00371693          	slli	a3,a4,0x3
    8000719c:	00006717          	auipc	a4,0x6
    800071a0:	ec470713          	addi	a4,a4,-316 # 8000d060 <timer_scratch>
    800071a4:	00b7b023          	sd	a1,0(a5)
    800071a8:	00d70733          	add	a4,a4,a3
    800071ac:	00f73c23          	sd	a5,24(a4)
    800071b0:	02c73023          	sd	a2,32(a4)
    800071b4:	34071073          	csrw	mscratch,a4
    800071b8:	00000797          	auipc	a5,0x0
    800071bc:	64878793          	addi	a5,a5,1608 # 80007800 <timervec>
    800071c0:	30579073          	csrw	mtvec,a5
    800071c4:	300027f3          	csrr	a5,mstatus
    800071c8:	0087e793          	ori	a5,a5,8
    800071cc:	30079073          	csrw	mstatus,a5
    800071d0:	304027f3          	csrr	a5,mie
    800071d4:	0807e793          	ori	a5,a5,128
    800071d8:	30479073          	csrw	mie,a5
    800071dc:	00813403          	ld	s0,8(sp)
    800071e0:	01010113          	addi	sp,sp,16
    800071e4:	00008067          	ret

00000000800071e8 <system_main>:
    800071e8:	fe010113          	addi	sp,sp,-32
    800071ec:	00813823          	sd	s0,16(sp)
    800071f0:	00913423          	sd	s1,8(sp)
    800071f4:	00113c23          	sd	ra,24(sp)
    800071f8:	02010413          	addi	s0,sp,32
    800071fc:	00000097          	auipc	ra,0x0
    80007200:	0c4080e7          	jalr	196(ra) # 800072c0 <cpuid>
    80007204:	00006497          	auipc	s1,0x6
    80007208:	d1c48493          	addi	s1,s1,-740 # 8000cf20 <started>
    8000720c:	02050263          	beqz	a0,80007230 <system_main+0x48>
    80007210:	0004a783          	lw	a5,0(s1)
    80007214:	0007879b          	sext.w	a5,a5
    80007218:	fe078ce3          	beqz	a5,80007210 <system_main+0x28>
    8000721c:	0ff0000f          	fence
    80007220:	00003517          	auipc	a0,0x3
    80007224:	3e050513          	addi	a0,a0,992 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	a74080e7          	jalr	-1420(ra) # 80007c9c <panic>
    80007230:	00001097          	auipc	ra,0x1
    80007234:	9c8080e7          	jalr	-1592(ra) # 80007bf8 <consoleinit>
    80007238:	00001097          	auipc	ra,0x1
    8000723c:	154080e7          	jalr	340(ra) # 8000838c <printfinit>
    80007240:	00003517          	auipc	a0,0x3
    80007244:	24850513          	addi	a0,a0,584 # 8000a488 <CONSOLE_STATUS+0x478>
    80007248:	00001097          	auipc	ra,0x1
    8000724c:	ab0080e7          	jalr	-1360(ra) # 80007cf8 <__printf>
    80007250:	00003517          	auipc	a0,0x3
    80007254:	38050513          	addi	a0,a0,896 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80007258:	00001097          	auipc	ra,0x1
    8000725c:	aa0080e7          	jalr	-1376(ra) # 80007cf8 <__printf>
    80007260:	00003517          	auipc	a0,0x3
    80007264:	22850513          	addi	a0,a0,552 # 8000a488 <CONSOLE_STATUS+0x478>
    80007268:	00001097          	auipc	ra,0x1
    8000726c:	a90080e7          	jalr	-1392(ra) # 80007cf8 <__printf>
    80007270:	00001097          	auipc	ra,0x1
    80007274:	4a8080e7          	jalr	1192(ra) # 80008718 <kinit>
    80007278:	00000097          	auipc	ra,0x0
    8000727c:	148080e7          	jalr	328(ra) # 800073c0 <trapinit>
    80007280:	00000097          	auipc	ra,0x0
    80007284:	16c080e7          	jalr	364(ra) # 800073ec <trapinithart>
    80007288:	00000097          	auipc	ra,0x0
    8000728c:	5b8080e7          	jalr	1464(ra) # 80007840 <plicinit>
    80007290:	00000097          	auipc	ra,0x0
    80007294:	5d8080e7          	jalr	1496(ra) # 80007868 <plicinithart>
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	078080e7          	jalr	120(ra) # 80007310 <userinit>
    800072a0:	0ff0000f          	fence
    800072a4:	00100793          	li	a5,1
    800072a8:	00003517          	auipc	a0,0x3
    800072ac:	34050513          	addi	a0,a0,832 # 8000a5e8 <CONSOLE_STATUS+0x5d8>
    800072b0:	00f4a023          	sw	a5,0(s1)
    800072b4:	00001097          	auipc	ra,0x1
    800072b8:	a44080e7          	jalr	-1468(ra) # 80007cf8 <__printf>
    800072bc:	0000006f          	j	800072bc <system_main+0xd4>

00000000800072c0 <cpuid>:
    800072c0:	ff010113          	addi	sp,sp,-16
    800072c4:	00813423          	sd	s0,8(sp)
    800072c8:	01010413          	addi	s0,sp,16
    800072cc:	00020513          	mv	a0,tp
    800072d0:	00813403          	ld	s0,8(sp)
    800072d4:	0005051b          	sext.w	a0,a0
    800072d8:	01010113          	addi	sp,sp,16
    800072dc:	00008067          	ret

00000000800072e0 <mycpu>:
    800072e0:	ff010113          	addi	sp,sp,-16
    800072e4:	00813423          	sd	s0,8(sp)
    800072e8:	01010413          	addi	s0,sp,16
    800072ec:	00020793          	mv	a5,tp
    800072f0:	00813403          	ld	s0,8(sp)
    800072f4:	0007879b          	sext.w	a5,a5
    800072f8:	00779793          	slli	a5,a5,0x7
    800072fc:	00007517          	auipc	a0,0x7
    80007300:	d9450513          	addi	a0,a0,-620 # 8000e090 <cpus>
    80007304:	00f50533          	add	a0,a0,a5
    80007308:	01010113          	addi	sp,sp,16
    8000730c:	00008067          	ret

0000000080007310 <userinit>:
    80007310:	ff010113          	addi	sp,sp,-16
    80007314:	00813423          	sd	s0,8(sp)
    80007318:	01010413          	addi	s0,sp,16
    8000731c:	00813403          	ld	s0,8(sp)
    80007320:	01010113          	addi	sp,sp,16
    80007324:	ffffb317          	auipc	t1,0xffffb
    80007328:	9cc30067          	jr	-1588(t1) # 80001cf0 <main>

000000008000732c <either_copyout>:
    8000732c:	ff010113          	addi	sp,sp,-16
    80007330:	00813023          	sd	s0,0(sp)
    80007334:	00113423          	sd	ra,8(sp)
    80007338:	01010413          	addi	s0,sp,16
    8000733c:	02051663          	bnez	a0,80007368 <either_copyout+0x3c>
    80007340:	00058513          	mv	a0,a1
    80007344:	00060593          	mv	a1,a2
    80007348:	0006861b          	sext.w	a2,a3
    8000734c:	00002097          	auipc	ra,0x2
    80007350:	c58080e7          	jalr	-936(ra) # 80008fa4 <__memmove>
    80007354:	00813083          	ld	ra,8(sp)
    80007358:	00013403          	ld	s0,0(sp)
    8000735c:	00000513          	li	a0,0
    80007360:	01010113          	addi	sp,sp,16
    80007364:	00008067          	ret
    80007368:	00003517          	auipc	a0,0x3
    8000736c:	2c050513          	addi	a0,a0,704 # 8000a628 <CONSOLE_STATUS+0x618>
    80007370:	00001097          	auipc	ra,0x1
    80007374:	92c080e7          	jalr	-1748(ra) # 80007c9c <panic>

0000000080007378 <either_copyin>:
    80007378:	ff010113          	addi	sp,sp,-16
    8000737c:	00813023          	sd	s0,0(sp)
    80007380:	00113423          	sd	ra,8(sp)
    80007384:	01010413          	addi	s0,sp,16
    80007388:	02059463          	bnez	a1,800073b0 <either_copyin+0x38>
    8000738c:	00060593          	mv	a1,a2
    80007390:	0006861b          	sext.w	a2,a3
    80007394:	00002097          	auipc	ra,0x2
    80007398:	c10080e7          	jalr	-1008(ra) # 80008fa4 <__memmove>
    8000739c:	00813083          	ld	ra,8(sp)
    800073a0:	00013403          	ld	s0,0(sp)
    800073a4:	00000513          	li	a0,0
    800073a8:	01010113          	addi	sp,sp,16
    800073ac:	00008067          	ret
    800073b0:	00003517          	auipc	a0,0x3
    800073b4:	2a050513          	addi	a0,a0,672 # 8000a650 <CONSOLE_STATUS+0x640>
    800073b8:	00001097          	auipc	ra,0x1
    800073bc:	8e4080e7          	jalr	-1820(ra) # 80007c9c <panic>

00000000800073c0 <trapinit>:
    800073c0:	ff010113          	addi	sp,sp,-16
    800073c4:	00813423          	sd	s0,8(sp)
    800073c8:	01010413          	addi	s0,sp,16
    800073cc:	00813403          	ld	s0,8(sp)
    800073d0:	00003597          	auipc	a1,0x3
    800073d4:	2a858593          	addi	a1,a1,680 # 8000a678 <CONSOLE_STATUS+0x668>
    800073d8:	00007517          	auipc	a0,0x7
    800073dc:	d3850513          	addi	a0,a0,-712 # 8000e110 <tickslock>
    800073e0:	01010113          	addi	sp,sp,16
    800073e4:	00001317          	auipc	t1,0x1
    800073e8:	5c430067          	jr	1476(t1) # 800089a8 <initlock>

00000000800073ec <trapinithart>:
    800073ec:	ff010113          	addi	sp,sp,-16
    800073f0:	00813423          	sd	s0,8(sp)
    800073f4:	01010413          	addi	s0,sp,16
    800073f8:	00000797          	auipc	a5,0x0
    800073fc:	2f878793          	addi	a5,a5,760 # 800076f0 <kernelvec>
    80007400:	10579073          	csrw	stvec,a5
    80007404:	00813403          	ld	s0,8(sp)
    80007408:	01010113          	addi	sp,sp,16
    8000740c:	00008067          	ret

0000000080007410 <usertrap>:
    80007410:	ff010113          	addi	sp,sp,-16
    80007414:	00813423          	sd	s0,8(sp)
    80007418:	01010413          	addi	s0,sp,16
    8000741c:	00813403          	ld	s0,8(sp)
    80007420:	01010113          	addi	sp,sp,16
    80007424:	00008067          	ret

0000000080007428 <usertrapret>:
    80007428:	ff010113          	addi	sp,sp,-16
    8000742c:	00813423          	sd	s0,8(sp)
    80007430:	01010413          	addi	s0,sp,16
    80007434:	00813403          	ld	s0,8(sp)
    80007438:	01010113          	addi	sp,sp,16
    8000743c:	00008067          	ret

0000000080007440 <kerneltrap>:
    80007440:	fe010113          	addi	sp,sp,-32
    80007444:	00813823          	sd	s0,16(sp)
    80007448:	00113c23          	sd	ra,24(sp)
    8000744c:	00913423          	sd	s1,8(sp)
    80007450:	02010413          	addi	s0,sp,32
    80007454:	142025f3          	csrr	a1,scause
    80007458:	100027f3          	csrr	a5,sstatus
    8000745c:	0027f793          	andi	a5,a5,2
    80007460:	10079c63          	bnez	a5,80007578 <kerneltrap+0x138>
    80007464:	142027f3          	csrr	a5,scause
    80007468:	0207ce63          	bltz	a5,800074a4 <kerneltrap+0x64>
    8000746c:	00003517          	auipc	a0,0x3
    80007470:	25450513          	addi	a0,a0,596 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007474:	00001097          	auipc	ra,0x1
    80007478:	884080e7          	jalr	-1916(ra) # 80007cf8 <__printf>
    8000747c:	141025f3          	csrr	a1,sepc
    80007480:	14302673          	csrr	a2,stval
    80007484:	00003517          	auipc	a0,0x3
    80007488:	24c50513          	addi	a0,a0,588 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    8000748c:	00001097          	auipc	ra,0x1
    80007490:	86c080e7          	jalr	-1940(ra) # 80007cf8 <__printf>
    80007494:	00003517          	auipc	a0,0x3
    80007498:	25450513          	addi	a0,a0,596 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    8000749c:	00001097          	auipc	ra,0x1
    800074a0:	800080e7          	jalr	-2048(ra) # 80007c9c <panic>
    800074a4:	0ff7f713          	andi	a4,a5,255
    800074a8:	00900693          	li	a3,9
    800074ac:	04d70063          	beq	a4,a3,800074ec <kerneltrap+0xac>
    800074b0:	fff00713          	li	a4,-1
    800074b4:	03f71713          	slli	a4,a4,0x3f
    800074b8:	00170713          	addi	a4,a4,1
    800074bc:	fae798e3          	bne	a5,a4,8000746c <kerneltrap+0x2c>
    800074c0:	00000097          	auipc	ra,0x0
    800074c4:	e00080e7          	jalr	-512(ra) # 800072c0 <cpuid>
    800074c8:	06050663          	beqz	a0,80007534 <kerneltrap+0xf4>
    800074cc:	144027f3          	csrr	a5,sip
    800074d0:	ffd7f793          	andi	a5,a5,-3
    800074d4:	14479073          	csrw	sip,a5
    800074d8:	01813083          	ld	ra,24(sp)
    800074dc:	01013403          	ld	s0,16(sp)
    800074e0:	00813483          	ld	s1,8(sp)
    800074e4:	02010113          	addi	sp,sp,32
    800074e8:	00008067          	ret
    800074ec:	00000097          	auipc	ra,0x0
    800074f0:	3c8080e7          	jalr	968(ra) # 800078b4 <plic_claim>
    800074f4:	00a00793          	li	a5,10
    800074f8:	00050493          	mv	s1,a0
    800074fc:	06f50863          	beq	a0,a5,8000756c <kerneltrap+0x12c>
    80007500:	fc050ce3          	beqz	a0,800074d8 <kerneltrap+0x98>
    80007504:	00050593          	mv	a1,a0
    80007508:	00003517          	auipc	a0,0x3
    8000750c:	19850513          	addi	a0,a0,408 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80007510:	00000097          	auipc	ra,0x0
    80007514:	7e8080e7          	jalr	2024(ra) # 80007cf8 <__printf>
    80007518:	01013403          	ld	s0,16(sp)
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	00048513          	mv	a0,s1
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00000317          	auipc	t1,0x0
    80007530:	3c030067          	jr	960(t1) # 800078ec <plic_complete>
    80007534:	00007517          	auipc	a0,0x7
    80007538:	bdc50513          	addi	a0,a0,-1060 # 8000e110 <tickslock>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	490080e7          	jalr	1168(ra) # 800089cc <acquire>
    80007544:	00006717          	auipc	a4,0x6
    80007548:	9e070713          	addi	a4,a4,-1568 # 8000cf24 <ticks>
    8000754c:	00072783          	lw	a5,0(a4)
    80007550:	00007517          	auipc	a0,0x7
    80007554:	bc050513          	addi	a0,a0,-1088 # 8000e110 <tickslock>
    80007558:	0017879b          	addiw	a5,a5,1
    8000755c:	00f72023          	sw	a5,0(a4)
    80007560:	00001097          	auipc	ra,0x1
    80007564:	538080e7          	jalr	1336(ra) # 80008a98 <release>
    80007568:	f65ff06f          	j	800074cc <kerneltrap+0x8c>
    8000756c:	00001097          	auipc	ra,0x1
    80007570:	094080e7          	jalr	148(ra) # 80008600 <uartintr>
    80007574:	fa5ff06f          	j	80007518 <kerneltrap+0xd8>
    80007578:	00003517          	auipc	a0,0x3
    8000757c:	10850513          	addi	a0,a0,264 # 8000a680 <CONSOLE_STATUS+0x670>
    80007580:	00000097          	auipc	ra,0x0
    80007584:	71c080e7          	jalr	1820(ra) # 80007c9c <panic>

0000000080007588 <clockintr>:
    80007588:	fe010113          	addi	sp,sp,-32
    8000758c:	00813823          	sd	s0,16(sp)
    80007590:	00913423          	sd	s1,8(sp)
    80007594:	00113c23          	sd	ra,24(sp)
    80007598:	02010413          	addi	s0,sp,32
    8000759c:	00007497          	auipc	s1,0x7
    800075a0:	b7448493          	addi	s1,s1,-1164 # 8000e110 <tickslock>
    800075a4:	00048513          	mv	a0,s1
    800075a8:	00001097          	auipc	ra,0x1
    800075ac:	424080e7          	jalr	1060(ra) # 800089cc <acquire>
    800075b0:	00006717          	auipc	a4,0x6
    800075b4:	97470713          	addi	a4,a4,-1676 # 8000cf24 <ticks>
    800075b8:	00072783          	lw	a5,0(a4)
    800075bc:	01013403          	ld	s0,16(sp)
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	00048513          	mv	a0,s1
    800075c8:	0017879b          	addiw	a5,a5,1
    800075cc:	00813483          	ld	s1,8(sp)
    800075d0:	00f72023          	sw	a5,0(a4)
    800075d4:	02010113          	addi	sp,sp,32
    800075d8:	00001317          	auipc	t1,0x1
    800075dc:	4c030067          	jr	1216(t1) # 80008a98 <release>

00000000800075e0 <devintr>:
    800075e0:	142027f3          	csrr	a5,scause
    800075e4:	00000513          	li	a0,0
    800075e8:	0007c463          	bltz	a5,800075f0 <devintr+0x10>
    800075ec:	00008067          	ret
    800075f0:	fe010113          	addi	sp,sp,-32
    800075f4:	00813823          	sd	s0,16(sp)
    800075f8:	00113c23          	sd	ra,24(sp)
    800075fc:	00913423          	sd	s1,8(sp)
    80007600:	02010413          	addi	s0,sp,32
    80007604:	0ff7f713          	andi	a4,a5,255
    80007608:	00900693          	li	a3,9
    8000760c:	04d70c63          	beq	a4,a3,80007664 <devintr+0x84>
    80007610:	fff00713          	li	a4,-1
    80007614:	03f71713          	slli	a4,a4,0x3f
    80007618:	00170713          	addi	a4,a4,1
    8000761c:	00e78c63          	beq	a5,a4,80007634 <devintr+0x54>
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	01013403          	ld	s0,16(sp)
    80007628:	00813483          	ld	s1,8(sp)
    8000762c:	02010113          	addi	sp,sp,32
    80007630:	00008067          	ret
    80007634:	00000097          	auipc	ra,0x0
    80007638:	c8c080e7          	jalr	-884(ra) # 800072c0 <cpuid>
    8000763c:	06050663          	beqz	a0,800076a8 <devintr+0xc8>
    80007640:	144027f3          	csrr	a5,sip
    80007644:	ffd7f793          	andi	a5,a5,-3
    80007648:	14479073          	csrw	sip,a5
    8000764c:	01813083          	ld	ra,24(sp)
    80007650:	01013403          	ld	s0,16(sp)
    80007654:	00813483          	ld	s1,8(sp)
    80007658:	00200513          	li	a0,2
    8000765c:	02010113          	addi	sp,sp,32
    80007660:	00008067          	ret
    80007664:	00000097          	auipc	ra,0x0
    80007668:	250080e7          	jalr	592(ra) # 800078b4 <plic_claim>
    8000766c:	00a00793          	li	a5,10
    80007670:	00050493          	mv	s1,a0
    80007674:	06f50663          	beq	a0,a5,800076e0 <devintr+0x100>
    80007678:	00100513          	li	a0,1
    8000767c:	fa0482e3          	beqz	s1,80007620 <devintr+0x40>
    80007680:	00048593          	mv	a1,s1
    80007684:	00003517          	auipc	a0,0x3
    80007688:	01c50513          	addi	a0,a0,28 # 8000a6a0 <CONSOLE_STATUS+0x690>
    8000768c:	00000097          	auipc	ra,0x0
    80007690:	66c080e7          	jalr	1644(ra) # 80007cf8 <__printf>
    80007694:	00048513          	mv	a0,s1
    80007698:	00000097          	auipc	ra,0x0
    8000769c:	254080e7          	jalr	596(ra) # 800078ec <plic_complete>
    800076a0:	00100513          	li	a0,1
    800076a4:	f7dff06f          	j	80007620 <devintr+0x40>
    800076a8:	00007517          	auipc	a0,0x7
    800076ac:	a6850513          	addi	a0,a0,-1432 # 8000e110 <tickslock>
    800076b0:	00001097          	auipc	ra,0x1
    800076b4:	31c080e7          	jalr	796(ra) # 800089cc <acquire>
    800076b8:	00006717          	auipc	a4,0x6
    800076bc:	86c70713          	addi	a4,a4,-1940 # 8000cf24 <ticks>
    800076c0:	00072783          	lw	a5,0(a4)
    800076c4:	00007517          	auipc	a0,0x7
    800076c8:	a4c50513          	addi	a0,a0,-1460 # 8000e110 <tickslock>
    800076cc:	0017879b          	addiw	a5,a5,1
    800076d0:	00f72023          	sw	a5,0(a4)
    800076d4:	00001097          	auipc	ra,0x1
    800076d8:	3c4080e7          	jalr	964(ra) # 80008a98 <release>
    800076dc:	f65ff06f          	j	80007640 <devintr+0x60>
    800076e0:	00001097          	auipc	ra,0x1
    800076e4:	f20080e7          	jalr	-224(ra) # 80008600 <uartintr>
    800076e8:	fadff06f          	j	80007694 <devintr+0xb4>
    800076ec:	0000                	unimp
	...

00000000800076f0 <kernelvec>:
    800076f0:	f0010113          	addi	sp,sp,-256
    800076f4:	00113023          	sd	ra,0(sp)
    800076f8:	00213423          	sd	sp,8(sp)
    800076fc:	00313823          	sd	gp,16(sp)
    80007700:	00413c23          	sd	tp,24(sp)
    80007704:	02513023          	sd	t0,32(sp)
    80007708:	02613423          	sd	t1,40(sp)
    8000770c:	02713823          	sd	t2,48(sp)
    80007710:	02813c23          	sd	s0,56(sp)
    80007714:	04913023          	sd	s1,64(sp)
    80007718:	04a13423          	sd	a0,72(sp)
    8000771c:	04b13823          	sd	a1,80(sp)
    80007720:	04c13c23          	sd	a2,88(sp)
    80007724:	06d13023          	sd	a3,96(sp)
    80007728:	06e13423          	sd	a4,104(sp)
    8000772c:	06f13823          	sd	a5,112(sp)
    80007730:	07013c23          	sd	a6,120(sp)
    80007734:	09113023          	sd	a7,128(sp)
    80007738:	09213423          	sd	s2,136(sp)
    8000773c:	09313823          	sd	s3,144(sp)
    80007740:	09413c23          	sd	s4,152(sp)
    80007744:	0b513023          	sd	s5,160(sp)
    80007748:	0b613423          	sd	s6,168(sp)
    8000774c:	0b713823          	sd	s7,176(sp)
    80007750:	0b813c23          	sd	s8,184(sp)
    80007754:	0d913023          	sd	s9,192(sp)
    80007758:	0da13423          	sd	s10,200(sp)
    8000775c:	0db13823          	sd	s11,208(sp)
    80007760:	0dc13c23          	sd	t3,216(sp)
    80007764:	0fd13023          	sd	t4,224(sp)
    80007768:	0fe13423          	sd	t5,232(sp)
    8000776c:	0ff13823          	sd	t6,240(sp)
    80007770:	cd1ff0ef          	jal	ra,80007440 <kerneltrap>
    80007774:	00013083          	ld	ra,0(sp)
    80007778:	00813103          	ld	sp,8(sp)
    8000777c:	01013183          	ld	gp,16(sp)
    80007780:	02013283          	ld	t0,32(sp)
    80007784:	02813303          	ld	t1,40(sp)
    80007788:	03013383          	ld	t2,48(sp)
    8000778c:	03813403          	ld	s0,56(sp)
    80007790:	04013483          	ld	s1,64(sp)
    80007794:	04813503          	ld	a0,72(sp)
    80007798:	05013583          	ld	a1,80(sp)
    8000779c:	05813603          	ld	a2,88(sp)
    800077a0:	06013683          	ld	a3,96(sp)
    800077a4:	06813703          	ld	a4,104(sp)
    800077a8:	07013783          	ld	a5,112(sp)
    800077ac:	07813803          	ld	a6,120(sp)
    800077b0:	08013883          	ld	a7,128(sp)
    800077b4:	08813903          	ld	s2,136(sp)
    800077b8:	09013983          	ld	s3,144(sp)
    800077bc:	09813a03          	ld	s4,152(sp)
    800077c0:	0a013a83          	ld	s5,160(sp)
    800077c4:	0a813b03          	ld	s6,168(sp)
    800077c8:	0b013b83          	ld	s7,176(sp)
    800077cc:	0b813c03          	ld	s8,184(sp)
    800077d0:	0c013c83          	ld	s9,192(sp)
    800077d4:	0c813d03          	ld	s10,200(sp)
    800077d8:	0d013d83          	ld	s11,208(sp)
    800077dc:	0d813e03          	ld	t3,216(sp)
    800077e0:	0e013e83          	ld	t4,224(sp)
    800077e4:	0e813f03          	ld	t5,232(sp)
    800077e8:	0f013f83          	ld	t6,240(sp)
    800077ec:	10010113          	addi	sp,sp,256
    800077f0:	10200073          	sret
    800077f4:	00000013          	nop
    800077f8:	00000013          	nop
    800077fc:	00000013          	nop

0000000080007800 <timervec>:
    80007800:	34051573          	csrrw	a0,mscratch,a0
    80007804:	00b53023          	sd	a1,0(a0)
    80007808:	00c53423          	sd	a2,8(a0)
    8000780c:	00d53823          	sd	a3,16(a0)
    80007810:	01853583          	ld	a1,24(a0)
    80007814:	02053603          	ld	a2,32(a0)
    80007818:	0005b683          	ld	a3,0(a1)
    8000781c:	00c686b3          	add	a3,a3,a2
    80007820:	00d5b023          	sd	a3,0(a1)
    80007824:	00200593          	li	a1,2
    80007828:	14459073          	csrw	sip,a1
    8000782c:	01053683          	ld	a3,16(a0)
    80007830:	00853603          	ld	a2,8(a0)
    80007834:	00053583          	ld	a1,0(a0)
    80007838:	34051573          	csrrw	a0,mscratch,a0
    8000783c:	30200073          	mret

0000000080007840 <plicinit>:
    80007840:	ff010113          	addi	sp,sp,-16
    80007844:	00813423          	sd	s0,8(sp)
    80007848:	01010413          	addi	s0,sp,16
    8000784c:	00813403          	ld	s0,8(sp)
    80007850:	0c0007b7          	lui	a5,0xc000
    80007854:	00100713          	li	a4,1
    80007858:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000785c:	00e7a223          	sw	a4,4(a5)
    80007860:	01010113          	addi	sp,sp,16
    80007864:	00008067          	ret

0000000080007868 <plicinithart>:
    80007868:	ff010113          	addi	sp,sp,-16
    8000786c:	00813023          	sd	s0,0(sp)
    80007870:	00113423          	sd	ra,8(sp)
    80007874:	01010413          	addi	s0,sp,16
    80007878:	00000097          	auipc	ra,0x0
    8000787c:	a48080e7          	jalr	-1464(ra) # 800072c0 <cpuid>
    80007880:	0085171b          	slliw	a4,a0,0x8
    80007884:	0c0027b7          	lui	a5,0xc002
    80007888:	00e787b3          	add	a5,a5,a4
    8000788c:	40200713          	li	a4,1026
    80007890:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007894:	00813083          	ld	ra,8(sp)
    80007898:	00013403          	ld	s0,0(sp)
    8000789c:	00d5151b          	slliw	a0,a0,0xd
    800078a0:	0c2017b7          	lui	a5,0xc201
    800078a4:	00a78533          	add	a0,a5,a0
    800078a8:	00052023          	sw	zero,0(a0)
    800078ac:	01010113          	addi	sp,sp,16
    800078b0:	00008067          	ret

00000000800078b4 <plic_claim>:
    800078b4:	ff010113          	addi	sp,sp,-16
    800078b8:	00813023          	sd	s0,0(sp)
    800078bc:	00113423          	sd	ra,8(sp)
    800078c0:	01010413          	addi	s0,sp,16
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	9fc080e7          	jalr	-1540(ra) # 800072c0 <cpuid>
    800078cc:	00813083          	ld	ra,8(sp)
    800078d0:	00013403          	ld	s0,0(sp)
    800078d4:	00d5151b          	slliw	a0,a0,0xd
    800078d8:	0c2017b7          	lui	a5,0xc201
    800078dc:	00a78533          	add	a0,a5,a0
    800078e0:	00452503          	lw	a0,4(a0)
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00008067          	ret

00000000800078ec <plic_complete>:
    800078ec:	fe010113          	addi	sp,sp,-32
    800078f0:	00813823          	sd	s0,16(sp)
    800078f4:	00913423          	sd	s1,8(sp)
    800078f8:	00113c23          	sd	ra,24(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	00050493          	mv	s1,a0
    80007904:	00000097          	auipc	ra,0x0
    80007908:	9bc080e7          	jalr	-1604(ra) # 800072c0 <cpuid>
    8000790c:	01813083          	ld	ra,24(sp)
    80007910:	01013403          	ld	s0,16(sp)
    80007914:	00d5179b          	slliw	a5,a0,0xd
    80007918:	0c201737          	lui	a4,0xc201
    8000791c:	00f707b3          	add	a5,a4,a5
    80007920:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007924:	00813483          	ld	s1,8(sp)
    80007928:	02010113          	addi	sp,sp,32
    8000792c:	00008067          	ret

0000000080007930 <consolewrite>:
    80007930:	fb010113          	addi	sp,sp,-80
    80007934:	04813023          	sd	s0,64(sp)
    80007938:	04113423          	sd	ra,72(sp)
    8000793c:	02913c23          	sd	s1,56(sp)
    80007940:	03213823          	sd	s2,48(sp)
    80007944:	03313423          	sd	s3,40(sp)
    80007948:	03413023          	sd	s4,32(sp)
    8000794c:	01513c23          	sd	s5,24(sp)
    80007950:	05010413          	addi	s0,sp,80
    80007954:	06c05c63          	blez	a2,800079cc <consolewrite+0x9c>
    80007958:	00060993          	mv	s3,a2
    8000795c:	00050a13          	mv	s4,a0
    80007960:	00058493          	mv	s1,a1
    80007964:	00000913          	li	s2,0
    80007968:	fff00a93          	li	s5,-1
    8000796c:	01c0006f          	j	80007988 <consolewrite+0x58>
    80007970:	fbf44503          	lbu	a0,-65(s0)
    80007974:	0019091b          	addiw	s2,s2,1
    80007978:	00148493          	addi	s1,s1,1
    8000797c:	00001097          	auipc	ra,0x1
    80007980:	a9c080e7          	jalr	-1380(ra) # 80008418 <uartputc>
    80007984:	03298063          	beq	s3,s2,800079a4 <consolewrite+0x74>
    80007988:	00048613          	mv	a2,s1
    8000798c:	00100693          	li	a3,1
    80007990:	000a0593          	mv	a1,s4
    80007994:	fbf40513          	addi	a0,s0,-65
    80007998:	00000097          	auipc	ra,0x0
    8000799c:	9e0080e7          	jalr	-1568(ra) # 80007378 <either_copyin>
    800079a0:	fd5518e3          	bne	a0,s5,80007970 <consolewrite+0x40>
    800079a4:	04813083          	ld	ra,72(sp)
    800079a8:	04013403          	ld	s0,64(sp)
    800079ac:	03813483          	ld	s1,56(sp)
    800079b0:	02813983          	ld	s3,40(sp)
    800079b4:	02013a03          	ld	s4,32(sp)
    800079b8:	01813a83          	ld	s5,24(sp)
    800079bc:	00090513          	mv	a0,s2
    800079c0:	03013903          	ld	s2,48(sp)
    800079c4:	05010113          	addi	sp,sp,80
    800079c8:	00008067          	ret
    800079cc:	00000913          	li	s2,0
    800079d0:	fd5ff06f          	j	800079a4 <consolewrite+0x74>

00000000800079d4 <consoleread>:
    800079d4:	f9010113          	addi	sp,sp,-112
    800079d8:	06813023          	sd	s0,96(sp)
    800079dc:	04913c23          	sd	s1,88(sp)
    800079e0:	05213823          	sd	s2,80(sp)
    800079e4:	05313423          	sd	s3,72(sp)
    800079e8:	05413023          	sd	s4,64(sp)
    800079ec:	03513c23          	sd	s5,56(sp)
    800079f0:	03613823          	sd	s6,48(sp)
    800079f4:	03713423          	sd	s7,40(sp)
    800079f8:	03813023          	sd	s8,32(sp)
    800079fc:	06113423          	sd	ra,104(sp)
    80007a00:	01913c23          	sd	s9,24(sp)
    80007a04:	07010413          	addi	s0,sp,112
    80007a08:	00060b93          	mv	s7,a2
    80007a0c:	00050913          	mv	s2,a0
    80007a10:	00058c13          	mv	s8,a1
    80007a14:	00060b1b          	sext.w	s6,a2
    80007a18:	00006497          	auipc	s1,0x6
    80007a1c:	72048493          	addi	s1,s1,1824 # 8000e138 <cons>
    80007a20:	00400993          	li	s3,4
    80007a24:	fff00a13          	li	s4,-1
    80007a28:	00a00a93          	li	s5,10
    80007a2c:	05705e63          	blez	s7,80007a88 <consoleread+0xb4>
    80007a30:	09c4a703          	lw	a4,156(s1)
    80007a34:	0984a783          	lw	a5,152(s1)
    80007a38:	0007071b          	sext.w	a4,a4
    80007a3c:	08e78463          	beq	a5,a4,80007ac4 <consoleread+0xf0>
    80007a40:	07f7f713          	andi	a4,a5,127
    80007a44:	00e48733          	add	a4,s1,a4
    80007a48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007a4c:	0017869b          	addiw	a3,a5,1
    80007a50:	08d4ac23          	sw	a3,152(s1)
    80007a54:	00070c9b          	sext.w	s9,a4
    80007a58:	0b370663          	beq	a4,s3,80007b04 <consoleread+0x130>
    80007a5c:	00100693          	li	a3,1
    80007a60:	f9f40613          	addi	a2,s0,-97
    80007a64:	000c0593          	mv	a1,s8
    80007a68:	00090513          	mv	a0,s2
    80007a6c:	f8e40fa3          	sb	a4,-97(s0)
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	8bc080e7          	jalr	-1860(ra) # 8000732c <either_copyout>
    80007a78:	01450863          	beq	a0,s4,80007a88 <consoleread+0xb4>
    80007a7c:	001c0c13          	addi	s8,s8,1
    80007a80:	fffb8b9b          	addiw	s7,s7,-1
    80007a84:	fb5c94e3          	bne	s9,s5,80007a2c <consoleread+0x58>
    80007a88:	000b851b          	sext.w	a0,s7
    80007a8c:	06813083          	ld	ra,104(sp)
    80007a90:	06013403          	ld	s0,96(sp)
    80007a94:	05813483          	ld	s1,88(sp)
    80007a98:	05013903          	ld	s2,80(sp)
    80007a9c:	04813983          	ld	s3,72(sp)
    80007aa0:	04013a03          	ld	s4,64(sp)
    80007aa4:	03813a83          	ld	s5,56(sp)
    80007aa8:	02813b83          	ld	s7,40(sp)
    80007aac:	02013c03          	ld	s8,32(sp)
    80007ab0:	01813c83          	ld	s9,24(sp)
    80007ab4:	40ab053b          	subw	a0,s6,a0
    80007ab8:	03013b03          	ld	s6,48(sp)
    80007abc:	07010113          	addi	sp,sp,112
    80007ac0:	00008067          	ret
    80007ac4:	00001097          	auipc	ra,0x1
    80007ac8:	1d8080e7          	jalr	472(ra) # 80008c9c <push_on>
    80007acc:	0984a703          	lw	a4,152(s1)
    80007ad0:	09c4a783          	lw	a5,156(s1)
    80007ad4:	0007879b          	sext.w	a5,a5
    80007ad8:	fef70ce3          	beq	a4,a5,80007ad0 <consoleread+0xfc>
    80007adc:	00001097          	auipc	ra,0x1
    80007ae0:	234080e7          	jalr	564(ra) # 80008d10 <pop_on>
    80007ae4:	0984a783          	lw	a5,152(s1)
    80007ae8:	07f7f713          	andi	a4,a5,127
    80007aec:	00e48733          	add	a4,s1,a4
    80007af0:	01874703          	lbu	a4,24(a4)
    80007af4:	0017869b          	addiw	a3,a5,1
    80007af8:	08d4ac23          	sw	a3,152(s1)
    80007afc:	00070c9b          	sext.w	s9,a4
    80007b00:	f5371ee3          	bne	a4,s3,80007a5c <consoleread+0x88>
    80007b04:	000b851b          	sext.w	a0,s7
    80007b08:	f96bf2e3          	bgeu	s7,s6,80007a8c <consoleread+0xb8>
    80007b0c:	08f4ac23          	sw	a5,152(s1)
    80007b10:	f7dff06f          	j	80007a8c <consoleread+0xb8>

0000000080007b14 <consputc>:
    80007b14:	10000793          	li	a5,256
    80007b18:	00f50663          	beq	a0,a5,80007b24 <consputc+0x10>
    80007b1c:	00001317          	auipc	t1,0x1
    80007b20:	9f430067          	jr	-1548(t1) # 80008510 <uartputc_sync>
    80007b24:	ff010113          	addi	sp,sp,-16
    80007b28:	00113423          	sd	ra,8(sp)
    80007b2c:	00813023          	sd	s0,0(sp)
    80007b30:	01010413          	addi	s0,sp,16
    80007b34:	00800513          	li	a0,8
    80007b38:	00001097          	auipc	ra,0x1
    80007b3c:	9d8080e7          	jalr	-1576(ra) # 80008510 <uartputc_sync>
    80007b40:	02000513          	li	a0,32
    80007b44:	00001097          	auipc	ra,0x1
    80007b48:	9cc080e7          	jalr	-1588(ra) # 80008510 <uartputc_sync>
    80007b4c:	00013403          	ld	s0,0(sp)
    80007b50:	00813083          	ld	ra,8(sp)
    80007b54:	00800513          	li	a0,8
    80007b58:	01010113          	addi	sp,sp,16
    80007b5c:	00001317          	auipc	t1,0x1
    80007b60:	9b430067          	jr	-1612(t1) # 80008510 <uartputc_sync>

0000000080007b64 <consoleintr>:
    80007b64:	fe010113          	addi	sp,sp,-32
    80007b68:	00813823          	sd	s0,16(sp)
    80007b6c:	00913423          	sd	s1,8(sp)
    80007b70:	01213023          	sd	s2,0(sp)
    80007b74:	00113c23          	sd	ra,24(sp)
    80007b78:	02010413          	addi	s0,sp,32
    80007b7c:	00006917          	auipc	s2,0x6
    80007b80:	5bc90913          	addi	s2,s2,1468 # 8000e138 <cons>
    80007b84:	00050493          	mv	s1,a0
    80007b88:	00090513          	mv	a0,s2
    80007b8c:	00001097          	auipc	ra,0x1
    80007b90:	e40080e7          	jalr	-448(ra) # 800089cc <acquire>
    80007b94:	02048c63          	beqz	s1,80007bcc <consoleintr+0x68>
    80007b98:	0a092783          	lw	a5,160(s2)
    80007b9c:	09892703          	lw	a4,152(s2)
    80007ba0:	07f00693          	li	a3,127
    80007ba4:	40e7873b          	subw	a4,a5,a4
    80007ba8:	02e6e263          	bltu	a3,a4,80007bcc <consoleintr+0x68>
    80007bac:	00d00713          	li	a4,13
    80007bb0:	04e48063          	beq	s1,a4,80007bf0 <consoleintr+0x8c>
    80007bb4:	07f7f713          	andi	a4,a5,127
    80007bb8:	00e90733          	add	a4,s2,a4
    80007bbc:	0017879b          	addiw	a5,a5,1
    80007bc0:	0af92023          	sw	a5,160(s2)
    80007bc4:	00970c23          	sb	s1,24(a4)
    80007bc8:	08f92e23          	sw	a5,156(s2)
    80007bcc:	01013403          	ld	s0,16(sp)
    80007bd0:	01813083          	ld	ra,24(sp)
    80007bd4:	00813483          	ld	s1,8(sp)
    80007bd8:	00013903          	ld	s2,0(sp)
    80007bdc:	00006517          	auipc	a0,0x6
    80007be0:	55c50513          	addi	a0,a0,1372 # 8000e138 <cons>
    80007be4:	02010113          	addi	sp,sp,32
    80007be8:	00001317          	auipc	t1,0x1
    80007bec:	eb030067          	jr	-336(t1) # 80008a98 <release>
    80007bf0:	00a00493          	li	s1,10
    80007bf4:	fc1ff06f          	j	80007bb4 <consoleintr+0x50>

0000000080007bf8 <consoleinit>:
    80007bf8:	fe010113          	addi	sp,sp,-32
    80007bfc:	00113c23          	sd	ra,24(sp)
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	02010413          	addi	s0,sp,32
    80007c0c:	00006497          	auipc	s1,0x6
    80007c10:	52c48493          	addi	s1,s1,1324 # 8000e138 <cons>
    80007c14:	00048513          	mv	a0,s1
    80007c18:	00003597          	auipc	a1,0x3
    80007c1c:	ae058593          	addi	a1,a1,-1312 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80007c20:	00001097          	auipc	ra,0x1
    80007c24:	d88080e7          	jalr	-632(ra) # 800089a8 <initlock>
    80007c28:	00000097          	auipc	ra,0x0
    80007c2c:	7ac080e7          	jalr	1964(ra) # 800083d4 <uartinit>
    80007c30:	01813083          	ld	ra,24(sp)
    80007c34:	01013403          	ld	s0,16(sp)
    80007c38:	00000797          	auipc	a5,0x0
    80007c3c:	d9c78793          	addi	a5,a5,-612 # 800079d4 <consoleread>
    80007c40:	0af4bc23          	sd	a5,184(s1)
    80007c44:	00000797          	auipc	a5,0x0
    80007c48:	cec78793          	addi	a5,a5,-788 # 80007930 <consolewrite>
    80007c4c:	0cf4b023          	sd	a5,192(s1)
    80007c50:	00813483          	ld	s1,8(sp)
    80007c54:	02010113          	addi	sp,sp,32
    80007c58:	00008067          	ret

0000000080007c5c <console_read>:
    80007c5c:	ff010113          	addi	sp,sp,-16
    80007c60:	00813423          	sd	s0,8(sp)
    80007c64:	01010413          	addi	s0,sp,16
    80007c68:	00813403          	ld	s0,8(sp)
    80007c6c:	00006317          	auipc	t1,0x6
    80007c70:	58433303          	ld	t1,1412(t1) # 8000e1f0 <devsw+0x10>
    80007c74:	01010113          	addi	sp,sp,16
    80007c78:	00030067          	jr	t1

0000000080007c7c <console_write>:
    80007c7c:	ff010113          	addi	sp,sp,-16
    80007c80:	00813423          	sd	s0,8(sp)
    80007c84:	01010413          	addi	s0,sp,16
    80007c88:	00813403          	ld	s0,8(sp)
    80007c8c:	00006317          	auipc	t1,0x6
    80007c90:	56c33303          	ld	t1,1388(t1) # 8000e1f8 <devsw+0x18>
    80007c94:	01010113          	addi	sp,sp,16
    80007c98:	00030067          	jr	t1

0000000080007c9c <panic>:
    80007c9c:	fe010113          	addi	sp,sp,-32
    80007ca0:	00113c23          	sd	ra,24(sp)
    80007ca4:	00813823          	sd	s0,16(sp)
    80007ca8:	00913423          	sd	s1,8(sp)
    80007cac:	02010413          	addi	s0,sp,32
    80007cb0:	00050493          	mv	s1,a0
    80007cb4:	00003517          	auipc	a0,0x3
    80007cb8:	a4c50513          	addi	a0,a0,-1460 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007cbc:	00006797          	auipc	a5,0x6
    80007cc0:	5c07ae23          	sw	zero,1500(a5) # 8000e298 <pr+0x18>
    80007cc4:	00000097          	auipc	ra,0x0
    80007cc8:	034080e7          	jalr	52(ra) # 80007cf8 <__printf>
    80007ccc:	00048513          	mv	a0,s1
    80007cd0:	00000097          	auipc	ra,0x0
    80007cd4:	028080e7          	jalr	40(ra) # 80007cf8 <__printf>
    80007cd8:	00002517          	auipc	a0,0x2
    80007cdc:	7b050513          	addi	a0,a0,1968 # 8000a488 <CONSOLE_STATUS+0x478>
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	018080e7          	jalr	24(ra) # 80007cf8 <__printf>
    80007ce8:	00100793          	li	a5,1
    80007cec:	00005717          	auipc	a4,0x5
    80007cf0:	22f72e23          	sw	a5,572(a4) # 8000cf28 <panicked>
    80007cf4:	0000006f          	j	80007cf4 <panic+0x58>

0000000080007cf8 <__printf>:
    80007cf8:	f3010113          	addi	sp,sp,-208
    80007cfc:	08813023          	sd	s0,128(sp)
    80007d00:	07313423          	sd	s3,104(sp)
    80007d04:	09010413          	addi	s0,sp,144
    80007d08:	05813023          	sd	s8,64(sp)
    80007d0c:	08113423          	sd	ra,136(sp)
    80007d10:	06913c23          	sd	s1,120(sp)
    80007d14:	07213823          	sd	s2,112(sp)
    80007d18:	07413023          	sd	s4,96(sp)
    80007d1c:	05513c23          	sd	s5,88(sp)
    80007d20:	05613823          	sd	s6,80(sp)
    80007d24:	05713423          	sd	s7,72(sp)
    80007d28:	03913c23          	sd	s9,56(sp)
    80007d2c:	03a13823          	sd	s10,48(sp)
    80007d30:	03b13423          	sd	s11,40(sp)
    80007d34:	00006317          	auipc	t1,0x6
    80007d38:	54c30313          	addi	t1,t1,1356 # 8000e280 <pr>
    80007d3c:	01832c03          	lw	s8,24(t1)
    80007d40:	00b43423          	sd	a1,8(s0)
    80007d44:	00c43823          	sd	a2,16(s0)
    80007d48:	00d43c23          	sd	a3,24(s0)
    80007d4c:	02e43023          	sd	a4,32(s0)
    80007d50:	02f43423          	sd	a5,40(s0)
    80007d54:	03043823          	sd	a6,48(s0)
    80007d58:	03143c23          	sd	a7,56(s0)
    80007d5c:	00050993          	mv	s3,a0
    80007d60:	4a0c1663          	bnez	s8,8000820c <__printf+0x514>
    80007d64:	60098c63          	beqz	s3,8000837c <__printf+0x684>
    80007d68:	0009c503          	lbu	a0,0(s3)
    80007d6c:	00840793          	addi	a5,s0,8
    80007d70:	f6f43c23          	sd	a5,-136(s0)
    80007d74:	00000493          	li	s1,0
    80007d78:	22050063          	beqz	a0,80007f98 <__printf+0x2a0>
    80007d7c:	00002a37          	lui	s4,0x2
    80007d80:	00018ab7          	lui	s5,0x18
    80007d84:	000f4b37          	lui	s6,0xf4
    80007d88:	00989bb7          	lui	s7,0x989
    80007d8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007d90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007d94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007d98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007d9c:	00148c9b          	addiw	s9,s1,1
    80007da0:	02500793          	li	a5,37
    80007da4:	01998933          	add	s2,s3,s9
    80007da8:	38f51263          	bne	a0,a5,8000812c <__printf+0x434>
    80007dac:	00094783          	lbu	a5,0(s2)
    80007db0:	00078c9b          	sext.w	s9,a5
    80007db4:	1e078263          	beqz	a5,80007f98 <__printf+0x2a0>
    80007db8:	0024849b          	addiw	s1,s1,2
    80007dbc:	07000713          	li	a4,112
    80007dc0:	00998933          	add	s2,s3,s1
    80007dc4:	38e78a63          	beq	a5,a4,80008158 <__printf+0x460>
    80007dc8:	20f76863          	bltu	a4,a5,80007fd8 <__printf+0x2e0>
    80007dcc:	42a78863          	beq	a5,a0,800081fc <__printf+0x504>
    80007dd0:	06400713          	li	a4,100
    80007dd4:	40e79663          	bne	a5,a4,800081e0 <__printf+0x4e8>
    80007dd8:	f7843783          	ld	a5,-136(s0)
    80007ddc:	0007a603          	lw	a2,0(a5)
    80007de0:	00878793          	addi	a5,a5,8
    80007de4:	f6f43c23          	sd	a5,-136(s0)
    80007de8:	42064a63          	bltz	a2,8000821c <__printf+0x524>
    80007dec:	00a00713          	li	a4,10
    80007df0:	02e677bb          	remuw	a5,a2,a4
    80007df4:	00003d97          	auipc	s11,0x3
    80007df8:	934d8d93          	addi	s11,s11,-1740 # 8000a728 <digits>
    80007dfc:	00900593          	li	a1,9
    80007e00:	0006051b          	sext.w	a0,a2
    80007e04:	00000c93          	li	s9,0
    80007e08:	02079793          	slli	a5,a5,0x20
    80007e0c:	0207d793          	srli	a5,a5,0x20
    80007e10:	00fd87b3          	add	a5,s11,a5
    80007e14:	0007c783          	lbu	a5,0(a5)
    80007e18:	02e656bb          	divuw	a3,a2,a4
    80007e1c:	f8f40023          	sb	a5,-128(s0)
    80007e20:	14c5d863          	bge	a1,a2,80007f70 <__printf+0x278>
    80007e24:	06300593          	li	a1,99
    80007e28:	00100c93          	li	s9,1
    80007e2c:	02e6f7bb          	remuw	a5,a3,a4
    80007e30:	02079793          	slli	a5,a5,0x20
    80007e34:	0207d793          	srli	a5,a5,0x20
    80007e38:	00fd87b3          	add	a5,s11,a5
    80007e3c:	0007c783          	lbu	a5,0(a5)
    80007e40:	02e6d73b          	divuw	a4,a3,a4
    80007e44:	f8f400a3          	sb	a5,-127(s0)
    80007e48:	12a5f463          	bgeu	a1,a0,80007f70 <__printf+0x278>
    80007e4c:	00a00693          	li	a3,10
    80007e50:	00900593          	li	a1,9
    80007e54:	02d777bb          	remuw	a5,a4,a3
    80007e58:	02079793          	slli	a5,a5,0x20
    80007e5c:	0207d793          	srli	a5,a5,0x20
    80007e60:	00fd87b3          	add	a5,s11,a5
    80007e64:	0007c503          	lbu	a0,0(a5)
    80007e68:	02d757bb          	divuw	a5,a4,a3
    80007e6c:	f8a40123          	sb	a0,-126(s0)
    80007e70:	48e5f263          	bgeu	a1,a4,800082f4 <__printf+0x5fc>
    80007e74:	06300513          	li	a0,99
    80007e78:	02d7f5bb          	remuw	a1,a5,a3
    80007e7c:	02059593          	slli	a1,a1,0x20
    80007e80:	0205d593          	srli	a1,a1,0x20
    80007e84:	00bd85b3          	add	a1,s11,a1
    80007e88:	0005c583          	lbu	a1,0(a1)
    80007e8c:	02d7d7bb          	divuw	a5,a5,a3
    80007e90:	f8b401a3          	sb	a1,-125(s0)
    80007e94:	48e57263          	bgeu	a0,a4,80008318 <__printf+0x620>
    80007e98:	3e700513          	li	a0,999
    80007e9c:	02d7f5bb          	remuw	a1,a5,a3
    80007ea0:	02059593          	slli	a1,a1,0x20
    80007ea4:	0205d593          	srli	a1,a1,0x20
    80007ea8:	00bd85b3          	add	a1,s11,a1
    80007eac:	0005c583          	lbu	a1,0(a1)
    80007eb0:	02d7d7bb          	divuw	a5,a5,a3
    80007eb4:	f8b40223          	sb	a1,-124(s0)
    80007eb8:	46e57663          	bgeu	a0,a4,80008324 <__printf+0x62c>
    80007ebc:	02d7f5bb          	remuw	a1,a5,a3
    80007ec0:	02059593          	slli	a1,a1,0x20
    80007ec4:	0205d593          	srli	a1,a1,0x20
    80007ec8:	00bd85b3          	add	a1,s11,a1
    80007ecc:	0005c583          	lbu	a1,0(a1)
    80007ed0:	02d7d7bb          	divuw	a5,a5,a3
    80007ed4:	f8b402a3          	sb	a1,-123(s0)
    80007ed8:	46ea7863          	bgeu	s4,a4,80008348 <__printf+0x650>
    80007edc:	02d7f5bb          	remuw	a1,a5,a3
    80007ee0:	02059593          	slli	a1,a1,0x20
    80007ee4:	0205d593          	srli	a1,a1,0x20
    80007ee8:	00bd85b3          	add	a1,s11,a1
    80007eec:	0005c583          	lbu	a1,0(a1)
    80007ef0:	02d7d7bb          	divuw	a5,a5,a3
    80007ef4:	f8b40323          	sb	a1,-122(s0)
    80007ef8:	3eeaf863          	bgeu	s5,a4,800082e8 <__printf+0x5f0>
    80007efc:	02d7f5bb          	remuw	a1,a5,a3
    80007f00:	02059593          	slli	a1,a1,0x20
    80007f04:	0205d593          	srli	a1,a1,0x20
    80007f08:	00bd85b3          	add	a1,s11,a1
    80007f0c:	0005c583          	lbu	a1,0(a1)
    80007f10:	02d7d7bb          	divuw	a5,a5,a3
    80007f14:	f8b403a3          	sb	a1,-121(s0)
    80007f18:	42eb7e63          	bgeu	s6,a4,80008354 <__printf+0x65c>
    80007f1c:	02d7f5bb          	remuw	a1,a5,a3
    80007f20:	02059593          	slli	a1,a1,0x20
    80007f24:	0205d593          	srli	a1,a1,0x20
    80007f28:	00bd85b3          	add	a1,s11,a1
    80007f2c:	0005c583          	lbu	a1,0(a1)
    80007f30:	02d7d7bb          	divuw	a5,a5,a3
    80007f34:	f8b40423          	sb	a1,-120(s0)
    80007f38:	42ebfc63          	bgeu	s7,a4,80008370 <__printf+0x678>
    80007f3c:	02079793          	slli	a5,a5,0x20
    80007f40:	0207d793          	srli	a5,a5,0x20
    80007f44:	00fd8db3          	add	s11,s11,a5
    80007f48:	000dc703          	lbu	a4,0(s11)
    80007f4c:	00a00793          	li	a5,10
    80007f50:	00900c93          	li	s9,9
    80007f54:	f8e404a3          	sb	a4,-119(s0)
    80007f58:	00065c63          	bgez	a2,80007f70 <__printf+0x278>
    80007f5c:	f9040713          	addi	a4,s0,-112
    80007f60:	00f70733          	add	a4,a4,a5
    80007f64:	02d00693          	li	a3,45
    80007f68:	fed70823          	sb	a3,-16(a4)
    80007f6c:	00078c93          	mv	s9,a5
    80007f70:	f8040793          	addi	a5,s0,-128
    80007f74:	01978cb3          	add	s9,a5,s9
    80007f78:	f7f40d13          	addi	s10,s0,-129
    80007f7c:	000cc503          	lbu	a0,0(s9)
    80007f80:	fffc8c93          	addi	s9,s9,-1
    80007f84:	00000097          	auipc	ra,0x0
    80007f88:	b90080e7          	jalr	-1136(ra) # 80007b14 <consputc>
    80007f8c:	ffac98e3          	bne	s9,s10,80007f7c <__printf+0x284>
    80007f90:	00094503          	lbu	a0,0(s2)
    80007f94:	e00514e3          	bnez	a0,80007d9c <__printf+0xa4>
    80007f98:	1a0c1663          	bnez	s8,80008144 <__printf+0x44c>
    80007f9c:	08813083          	ld	ra,136(sp)
    80007fa0:	08013403          	ld	s0,128(sp)
    80007fa4:	07813483          	ld	s1,120(sp)
    80007fa8:	07013903          	ld	s2,112(sp)
    80007fac:	06813983          	ld	s3,104(sp)
    80007fb0:	06013a03          	ld	s4,96(sp)
    80007fb4:	05813a83          	ld	s5,88(sp)
    80007fb8:	05013b03          	ld	s6,80(sp)
    80007fbc:	04813b83          	ld	s7,72(sp)
    80007fc0:	04013c03          	ld	s8,64(sp)
    80007fc4:	03813c83          	ld	s9,56(sp)
    80007fc8:	03013d03          	ld	s10,48(sp)
    80007fcc:	02813d83          	ld	s11,40(sp)
    80007fd0:	0d010113          	addi	sp,sp,208
    80007fd4:	00008067          	ret
    80007fd8:	07300713          	li	a4,115
    80007fdc:	1ce78a63          	beq	a5,a4,800081b0 <__printf+0x4b8>
    80007fe0:	07800713          	li	a4,120
    80007fe4:	1ee79e63          	bne	a5,a4,800081e0 <__printf+0x4e8>
    80007fe8:	f7843783          	ld	a5,-136(s0)
    80007fec:	0007a703          	lw	a4,0(a5)
    80007ff0:	00878793          	addi	a5,a5,8
    80007ff4:	f6f43c23          	sd	a5,-136(s0)
    80007ff8:	28074263          	bltz	a4,8000827c <__printf+0x584>
    80007ffc:	00002d97          	auipc	s11,0x2
    80008000:	72cd8d93          	addi	s11,s11,1836 # 8000a728 <digits>
    80008004:	00f77793          	andi	a5,a4,15
    80008008:	00fd87b3          	add	a5,s11,a5
    8000800c:	0007c683          	lbu	a3,0(a5)
    80008010:	00f00613          	li	a2,15
    80008014:	0007079b          	sext.w	a5,a4
    80008018:	f8d40023          	sb	a3,-128(s0)
    8000801c:	0047559b          	srliw	a1,a4,0x4
    80008020:	0047569b          	srliw	a3,a4,0x4
    80008024:	00000c93          	li	s9,0
    80008028:	0ee65063          	bge	a2,a4,80008108 <__printf+0x410>
    8000802c:	00f6f693          	andi	a3,a3,15
    80008030:	00dd86b3          	add	a3,s11,a3
    80008034:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008038:	0087d79b          	srliw	a5,a5,0x8
    8000803c:	00100c93          	li	s9,1
    80008040:	f8d400a3          	sb	a3,-127(s0)
    80008044:	0cb67263          	bgeu	a2,a1,80008108 <__printf+0x410>
    80008048:	00f7f693          	andi	a3,a5,15
    8000804c:	00dd86b3          	add	a3,s11,a3
    80008050:	0006c583          	lbu	a1,0(a3)
    80008054:	00f00613          	li	a2,15
    80008058:	0047d69b          	srliw	a3,a5,0x4
    8000805c:	f8b40123          	sb	a1,-126(s0)
    80008060:	0047d593          	srli	a1,a5,0x4
    80008064:	28f67e63          	bgeu	a2,a5,80008300 <__printf+0x608>
    80008068:	00f6f693          	andi	a3,a3,15
    8000806c:	00dd86b3          	add	a3,s11,a3
    80008070:	0006c503          	lbu	a0,0(a3)
    80008074:	0087d813          	srli	a6,a5,0x8
    80008078:	0087d69b          	srliw	a3,a5,0x8
    8000807c:	f8a401a3          	sb	a0,-125(s0)
    80008080:	28b67663          	bgeu	a2,a1,8000830c <__printf+0x614>
    80008084:	00f6f693          	andi	a3,a3,15
    80008088:	00dd86b3          	add	a3,s11,a3
    8000808c:	0006c583          	lbu	a1,0(a3)
    80008090:	00c7d513          	srli	a0,a5,0xc
    80008094:	00c7d69b          	srliw	a3,a5,0xc
    80008098:	f8b40223          	sb	a1,-124(s0)
    8000809c:	29067a63          	bgeu	a2,a6,80008330 <__printf+0x638>
    800080a0:	00f6f693          	andi	a3,a3,15
    800080a4:	00dd86b3          	add	a3,s11,a3
    800080a8:	0006c583          	lbu	a1,0(a3)
    800080ac:	0107d813          	srli	a6,a5,0x10
    800080b0:	0107d69b          	srliw	a3,a5,0x10
    800080b4:	f8b402a3          	sb	a1,-123(s0)
    800080b8:	28a67263          	bgeu	a2,a0,8000833c <__printf+0x644>
    800080bc:	00f6f693          	andi	a3,a3,15
    800080c0:	00dd86b3          	add	a3,s11,a3
    800080c4:	0006c683          	lbu	a3,0(a3)
    800080c8:	0147d79b          	srliw	a5,a5,0x14
    800080cc:	f8d40323          	sb	a3,-122(s0)
    800080d0:	21067663          	bgeu	a2,a6,800082dc <__printf+0x5e4>
    800080d4:	02079793          	slli	a5,a5,0x20
    800080d8:	0207d793          	srli	a5,a5,0x20
    800080dc:	00fd8db3          	add	s11,s11,a5
    800080e0:	000dc683          	lbu	a3,0(s11)
    800080e4:	00800793          	li	a5,8
    800080e8:	00700c93          	li	s9,7
    800080ec:	f8d403a3          	sb	a3,-121(s0)
    800080f0:	00075c63          	bgez	a4,80008108 <__printf+0x410>
    800080f4:	f9040713          	addi	a4,s0,-112
    800080f8:	00f70733          	add	a4,a4,a5
    800080fc:	02d00693          	li	a3,45
    80008100:	fed70823          	sb	a3,-16(a4)
    80008104:	00078c93          	mv	s9,a5
    80008108:	f8040793          	addi	a5,s0,-128
    8000810c:	01978cb3          	add	s9,a5,s9
    80008110:	f7f40d13          	addi	s10,s0,-129
    80008114:	000cc503          	lbu	a0,0(s9)
    80008118:	fffc8c93          	addi	s9,s9,-1
    8000811c:	00000097          	auipc	ra,0x0
    80008120:	9f8080e7          	jalr	-1544(ra) # 80007b14 <consputc>
    80008124:	ff9d18e3          	bne	s10,s9,80008114 <__printf+0x41c>
    80008128:	0100006f          	j	80008138 <__printf+0x440>
    8000812c:	00000097          	auipc	ra,0x0
    80008130:	9e8080e7          	jalr	-1560(ra) # 80007b14 <consputc>
    80008134:	000c8493          	mv	s1,s9
    80008138:	00094503          	lbu	a0,0(s2)
    8000813c:	c60510e3          	bnez	a0,80007d9c <__printf+0xa4>
    80008140:	e40c0ee3          	beqz	s8,80007f9c <__printf+0x2a4>
    80008144:	00006517          	auipc	a0,0x6
    80008148:	13c50513          	addi	a0,a0,316 # 8000e280 <pr>
    8000814c:	00001097          	auipc	ra,0x1
    80008150:	94c080e7          	jalr	-1716(ra) # 80008a98 <release>
    80008154:	e49ff06f          	j	80007f9c <__printf+0x2a4>
    80008158:	f7843783          	ld	a5,-136(s0)
    8000815c:	03000513          	li	a0,48
    80008160:	01000d13          	li	s10,16
    80008164:	00878713          	addi	a4,a5,8
    80008168:	0007bc83          	ld	s9,0(a5)
    8000816c:	f6e43c23          	sd	a4,-136(s0)
    80008170:	00000097          	auipc	ra,0x0
    80008174:	9a4080e7          	jalr	-1628(ra) # 80007b14 <consputc>
    80008178:	07800513          	li	a0,120
    8000817c:	00000097          	auipc	ra,0x0
    80008180:	998080e7          	jalr	-1640(ra) # 80007b14 <consputc>
    80008184:	00002d97          	auipc	s11,0x2
    80008188:	5a4d8d93          	addi	s11,s11,1444 # 8000a728 <digits>
    8000818c:	03ccd793          	srli	a5,s9,0x3c
    80008190:	00fd87b3          	add	a5,s11,a5
    80008194:	0007c503          	lbu	a0,0(a5)
    80008198:	fffd0d1b          	addiw	s10,s10,-1
    8000819c:	004c9c93          	slli	s9,s9,0x4
    800081a0:	00000097          	auipc	ra,0x0
    800081a4:	974080e7          	jalr	-1676(ra) # 80007b14 <consputc>
    800081a8:	fe0d12e3          	bnez	s10,8000818c <__printf+0x494>
    800081ac:	f8dff06f          	j	80008138 <__printf+0x440>
    800081b0:	f7843783          	ld	a5,-136(s0)
    800081b4:	0007bc83          	ld	s9,0(a5)
    800081b8:	00878793          	addi	a5,a5,8
    800081bc:	f6f43c23          	sd	a5,-136(s0)
    800081c0:	000c9a63          	bnez	s9,800081d4 <__printf+0x4dc>
    800081c4:	1080006f          	j	800082cc <__printf+0x5d4>
    800081c8:	001c8c93          	addi	s9,s9,1
    800081cc:	00000097          	auipc	ra,0x0
    800081d0:	948080e7          	jalr	-1720(ra) # 80007b14 <consputc>
    800081d4:	000cc503          	lbu	a0,0(s9)
    800081d8:	fe0518e3          	bnez	a0,800081c8 <__printf+0x4d0>
    800081dc:	f5dff06f          	j	80008138 <__printf+0x440>
    800081e0:	02500513          	li	a0,37
    800081e4:	00000097          	auipc	ra,0x0
    800081e8:	930080e7          	jalr	-1744(ra) # 80007b14 <consputc>
    800081ec:	000c8513          	mv	a0,s9
    800081f0:	00000097          	auipc	ra,0x0
    800081f4:	924080e7          	jalr	-1756(ra) # 80007b14 <consputc>
    800081f8:	f41ff06f          	j	80008138 <__printf+0x440>
    800081fc:	02500513          	li	a0,37
    80008200:	00000097          	auipc	ra,0x0
    80008204:	914080e7          	jalr	-1772(ra) # 80007b14 <consputc>
    80008208:	f31ff06f          	j	80008138 <__printf+0x440>
    8000820c:	00030513          	mv	a0,t1
    80008210:	00000097          	auipc	ra,0x0
    80008214:	7bc080e7          	jalr	1980(ra) # 800089cc <acquire>
    80008218:	b4dff06f          	j	80007d64 <__printf+0x6c>
    8000821c:	40c0053b          	negw	a0,a2
    80008220:	00a00713          	li	a4,10
    80008224:	02e576bb          	remuw	a3,a0,a4
    80008228:	00002d97          	auipc	s11,0x2
    8000822c:	500d8d93          	addi	s11,s11,1280 # 8000a728 <digits>
    80008230:	ff700593          	li	a1,-9
    80008234:	02069693          	slli	a3,a3,0x20
    80008238:	0206d693          	srli	a3,a3,0x20
    8000823c:	00dd86b3          	add	a3,s11,a3
    80008240:	0006c683          	lbu	a3,0(a3)
    80008244:	02e557bb          	divuw	a5,a0,a4
    80008248:	f8d40023          	sb	a3,-128(s0)
    8000824c:	10b65e63          	bge	a2,a1,80008368 <__printf+0x670>
    80008250:	06300593          	li	a1,99
    80008254:	02e7f6bb          	remuw	a3,a5,a4
    80008258:	02069693          	slli	a3,a3,0x20
    8000825c:	0206d693          	srli	a3,a3,0x20
    80008260:	00dd86b3          	add	a3,s11,a3
    80008264:	0006c683          	lbu	a3,0(a3)
    80008268:	02e7d73b          	divuw	a4,a5,a4
    8000826c:	00200793          	li	a5,2
    80008270:	f8d400a3          	sb	a3,-127(s0)
    80008274:	bca5ece3          	bltu	a1,a0,80007e4c <__printf+0x154>
    80008278:	ce5ff06f          	j	80007f5c <__printf+0x264>
    8000827c:	40e007bb          	negw	a5,a4
    80008280:	00002d97          	auipc	s11,0x2
    80008284:	4a8d8d93          	addi	s11,s11,1192 # 8000a728 <digits>
    80008288:	00f7f693          	andi	a3,a5,15
    8000828c:	00dd86b3          	add	a3,s11,a3
    80008290:	0006c583          	lbu	a1,0(a3)
    80008294:	ff100613          	li	a2,-15
    80008298:	0047d69b          	srliw	a3,a5,0x4
    8000829c:	f8b40023          	sb	a1,-128(s0)
    800082a0:	0047d59b          	srliw	a1,a5,0x4
    800082a4:	0ac75e63          	bge	a4,a2,80008360 <__printf+0x668>
    800082a8:	00f6f693          	andi	a3,a3,15
    800082ac:	00dd86b3          	add	a3,s11,a3
    800082b0:	0006c603          	lbu	a2,0(a3)
    800082b4:	00f00693          	li	a3,15
    800082b8:	0087d79b          	srliw	a5,a5,0x8
    800082bc:	f8c400a3          	sb	a2,-127(s0)
    800082c0:	d8b6e4e3          	bltu	a3,a1,80008048 <__printf+0x350>
    800082c4:	00200793          	li	a5,2
    800082c8:	e2dff06f          	j	800080f4 <__printf+0x3fc>
    800082cc:	00002c97          	auipc	s9,0x2
    800082d0:	43cc8c93          	addi	s9,s9,1084 # 8000a708 <CONSOLE_STATUS+0x6f8>
    800082d4:	02800513          	li	a0,40
    800082d8:	ef1ff06f          	j	800081c8 <__printf+0x4d0>
    800082dc:	00700793          	li	a5,7
    800082e0:	00600c93          	li	s9,6
    800082e4:	e0dff06f          	j	800080f0 <__printf+0x3f8>
    800082e8:	00700793          	li	a5,7
    800082ec:	00600c93          	li	s9,6
    800082f0:	c69ff06f          	j	80007f58 <__printf+0x260>
    800082f4:	00300793          	li	a5,3
    800082f8:	00200c93          	li	s9,2
    800082fc:	c5dff06f          	j	80007f58 <__printf+0x260>
    80008300:	00300793          	li	a5,3
    80008304:	00200c93          	li	s9,2
    80008308:	de9ff06f          	j	800080f0 <__printf+0x3f8>
    8000830c:	00400793          	li	a5,4
    80008310:	00300c93          	li	s9,3
    80008314:	dddff06f          	j	800080f0 <__printf+0x3f8>
    80008318:	00400793          	li	a5,4
    8000831c:	00300c93          	li	s9,3
    80008320:	c39ff06f          	j	80007f58 <__printf+0x260>
    80008324:	00500793          	li	a5,5
    80008328:	00400c93          	li	s9,4
    8000832c:	c2dff06f          	j	80007f58 <__printf+0x260>
    80008330:	00500793          	li	a5,5
    80008334:	00400c93          	li	s9,4
    80008338:	db9ff06f          	j	800080f0 <__printf+0x3f8>
    8000833c:	00600793          	li	a5,6
    80008340:	00500c93          	li	s9,5
    80008344:	dadff06f          	j	800080f0 <__printf+0x3f8>
    80008348:	00600793          	li	a5,6
    8000834c:	00500c93          	li	s9,5
    80008350:	c09ff06f          	j	80007f58 <__printf+0x260>
    80008354:	00800793          	li	a5,8
    80008358:	00700c93          	li	s9,7
    8000835c:	bfdff06f          	j	80007f58 <__printf+0x260>
    80008360:	00100793          	li	a5,1
    80008364:	d91ff06f          	j	800080f4 <__printf+0x3fc>
    80008368:	00100793          	li	a5,1
    8000836c:	bf1ff06f          	j	80007f5c <__printf+0x264>
    80008370:	00900793          	li	a5,9
    80008374:	00800c93          	li	s9,8
    80008378:	be1ff06f          	j	80007f58 <__printf+0x260>
    8000837c:	00002517          	auipc	a0,0x2
    80008380:	39450513          	addi	a0,a0,916 # 8000a710 <CONSOLE_STATUS+0x700>
    80008384:	00000097          	auipc	ra,0x0
    80008388:	918080e7          	jalr	-1768(ra) # 80007c9c <panic>

000000008000838c <printfinit>:
    8000838c:	fe010113          	addi	sp,sp,-32
    80008390:	00813823          	sd	s0,16(sp)
    80008394:	00913423          	sd	s1,8(sp)
    80008398:	00113c23          	sd	ra,24(sp)
    8000839c:	02010413          	addi	s0,sp,32
    800083a0:	00006497          	auipc	s1,0x6
    800083a4:	ee048493          	addi	s1,s1,-288 # 8000e280 <pr>
    800083a8:	00048513          	mv	a0,s1
    800083ac:	00002597          	auipc	a1,0x2
    800083b0:	37458593          	addi	a1,a1,884 # 8000a720 <CONSOLE_STATUS+0x710>
    800083b4:	00000097          	auipc	ra,0x0
    800083b8:	5f4080e7          	jalr	1524(ra) # 800089a8 <initlock>
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	0004ac23          	sw	zero,24(s1)
    800083c8:	00813483          	ld	s1,8(sp)
    800083cc:	02010113          	addi	sp,sp,32
    800083d0:	00008067          	ret

00000000800083d4 <uartinit>:
    800083d4:	ff010113          	addi	sp,sp,-16
    800083d8:	00813423          	sd	s0,8(sp)
    800083dc:	01010413          	addi	s0,sp,16
    800083e0:	100007b7          	lui	a5,0x10000
    800083e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800083e8:	f8000713          	li	a4,-128
    800083ec:	00e781a3          	sb	a4,3(a5)
    800083f0:	00300713          	li	a4,3
    800083f4:	00e78023          	sb	a4,0(a5)
    800083f8:	000780a3          	sb	zero,1(a5)
    800083fc:	00e781a3          	sb	a4,3(a5)
    80008400:	00700693          	li	a3,7
    80008404:	00d78123          	sb	a3,2(a5)
    80008408:	00e780a3          	sb	a4,1(a5)
    8000840c:	00813403          	ld	s0,8(sp)
    80008410:	01010113          	addi	sp,sp,16
    80008414:	00008067          	ret

0000000080008418 <uartputc>:
    80008418:	00005797          	auipc	a5,0x5
    8000841c:	b107a783          	lw	a5,-1264(a5) # 8000cf28 <panicked>
    80008420:	00078463          	beqz	a5,80008428 <uartputc+0x10>
    80008424:	0000006f          	j	80008424 <uartputc+0xc>
    80008428:	fd010113          	addi	sp,sp,-48
    8000842c:	02813023          	sd	s0,32(sp)
    80008430:	00913c23          	sd	s1,24(sp)
    80008434:	01213823          	sd	s2,16(sp)
    80008438:	01313423          	sd	s3,8(sp)
    8000843c:	02113423          	sd	ra,40(sp)
    80008440:	03010413          	addi	s0,sp,48
    80008444:	00005917          	auipc	s2,0x5
    80008448:	aec90913          	addi	s2,s2,-1300 # 8000cf30 <uart_tx_r>
    8000844c:	00093783          	ld	a5,0(s2)
    80008450:	00005497          	auipc	s1,0x5
    80008454:	ae848493          	addi	s1,s1,-1304 # 8000cf38 <uart_tx_w>
    80008458:	0004b703          	ld	a4,0(s1)
    8000845c:	02078693          	addi	a3,a5,32
    80008460:	00050993          	mv	s3,a0
    80008464:	02e69c63          	bne	a3,a4,8000849c <uartputc+0x84>
    80008468:	00001097          	auipc	ra,0x1
    8000846c:	834080e7          	jalr	-1996(ra) # 80008c9c <push_on>
    80008470:	00093783          	ld	a5,0(s2)
    80008474:	0004b703          	ld	a4,0(s1)
    80008478:	02078793          	addi	a5,a5,32
    8000847c:	00e79463          	bne	a5,a4,80008484 <uartputc+0x6c>
    80008480:	0000006f          	j	80008480 <uartputc+0x68>
    80008484:	00001097          	auipc	ra,0x1
    80008488:	88c080e7          	jalr	-1908(ra) # 80008d10 <pop_on>
    8000848c:	00093783          	ld	a5,0(s2)
    80008490:	0004b703          	ld	a4,0(s1)
    80008494:	02078693          	addi	a3,a5,32
    80008498:	fce688e3          	beq	a3,a4,80008468 <uartputc+0x50>
    8000849c:	01f77693          	andi	a3,a4,31
    800084a0:	00006597          	auipc	a1,0x6
    800084a4:	e0058593          	addi	a1,a1,-512 # 8000e2a0 <uart_tx_buf>
    800084a8:	00d586b3          	add	a3,a1,a3
    800084ac:	00170713          	addi	a4,a4,1
    800084b0:	01368023          	sb	s3,0(a3)
    800084b4:	00e4b023          	sd	a4,0(s1)
    800084b8:	10000637          	lui	a2,0x10000
    800084bc:	02f71063          	bne	a4,a5,800084dc <uartputc+0xc4>
    800084c0:	0340006f          	j	800084f4 <uartputc+0xdc>
    800084c4:	00074703          	lbu	a4,0(a4)
    800084c8:	00f93023          	sd	a5,0(s2)
    800084cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800084d0:	00093783          	ld	a5,0(s2)
    800084d4:	0004b703          	ld	a4,0(s1)
    800084d8:	00f70e63          	beq	a4,a5,800084f4 <uartputc+0xdc>
    800084dc:	00564683          	lbu	a3,5(a2)
    800084e0:	01f7f713          	andi	a4,a5,31
    800084e4:	00e58733          	add	a4,a1,a4
    800084e8:	0206f693          	andi	a3,a3,32
    800084ec:	00178793          	addi	a5,a5,1
    800084f0:	fc069ae3          	bnez	a3,800084c4 <uartputc+0xac>
    800084f4:	02813083          	ld	ra,40(sp)
    800084f8:	02013403          	ld	s0,32(sp)
    800084fc:	01813483          	ld	s1,24(sp)
    80008500:	01013903          	ld	s2,16(sp)
    80008504:	00813983          	ld	s3,8(sp)
    80008508:	03010113          	addi	sp,sp,48
    8000850c:	00008067          	ret

0000000080008510 <uartputc_sync>:
    80008510:	ff010113          	addi	sp,sp,-16
    80008514:	00813423          	sd	s0,8(sp)
    80008518:	01010413          	addi	s0,sp,16
    8000851c:	00005717          	auipc	a4,0x5
    80008520:	a0c72703          	lw	a4,-1524(a4) # 8000cf28 <panicked>
    80008524:	02071663          	bnez	a4,80008550 <uartputc_sync+0x40>
    80008528:	00050793          	mv	a5,a0
    8000852c:	100006b7          	lui	a3,0x10000
    80008530:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008534:	02077713          	andi	a4,a4,32
    80008538:	fe070ce3          	beqz	a4,80008530 <uartputc_sync+0x20>
    8000853c:	0ff7f793          	andi	a5,a5,255
    80008540:	00f68023          	sb	a5,0(a3)
    80008544:	00813403          	ld	s0,8(sp)
    80008548:	01010113          	addi	sp,sp,16
    8000854c:	00008067          	ret
    80008550:	0000006f          	j	80008550 <uartputc_sync+0x40>

0000000080008554 <uartstart>:
    80008554:	ff010113          	addi	sp,sp,-16
    80008558:	00813423          	sd	s0,8(sp)
    8000855c:	01010413          	addi	s0,sp,16
    80008560:	00005617          	auipc	a2,0x5
    80008564:	9d060613          	addi	a2,a2,-1584 # 8000cf30 <uart_tx_r>
    80008568:	00005517          	auipc	a0,0x5
    8000856c:	9d050513          	addi	a0,a0,-1584 # 8000cf38 <uart_tx_w>
    80008570:	00063783          	ld	a5,0(a2)
    80008574:	00053703          	ld	a4,0(a0)
    80008578:	04f70263          	beq	a4,a5,800085bc <uartstart+0x68>
    8000857c:	100005b7          	lui	a1,0x10000
    80008580:	00006817          	auipc	a6,0x6
    80008584:	d2080813          	addi	a6,a6,-736 # 8000e2a0 <uart_tx_buf>
    80008588:	01c0006f          	j	800085a4 <uartstart+0x50>
    8000858c:	0006c703          	lbu	a4,0(a3)
    80008590:	00f63023          	sd	a5,0(a2)
    80008594:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008598:	00063783          	ld	a5,0(a2)
    8000859c:	00053703          	ld	a4,0(a0)
    800085a0:	00f70e63          	beq	a4,a5,800085bc <uartstart+0x68>
    800085a4:	01f7f713          	andi	a4,a5,31
    800085a8:	00e806b3          	add	a3,a6,a4
    800085ac:	0055c703          	lbu	a4,5(a1)
    800085b0:	00178793          	addi	a5,a5,1
    800085b4:	02077713          	andi	a4,a4,32
    800085b8:	fc071ae3          	bnez	a4,8000858c <uartstart+0x38>
    800085bc:	00813403          	ld	s0,8(sp)
    800085c0:	01010113          	addi	sp,sp,16
    800085c4:	00008067          	ret

00000000800085c8 <uartgetc>:
    800085c8:	ff010113          	addi	sp,sp,-16
    800085cc:	00813423          	sd	s0,8(sp)
    800085d0:	01010413          	addi	s0,sp,16
    800085d4:	10000737          	lui	a4,0x10000
    800085d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800085dc:	0017f793          	andi	a5,a5,1
    800085e0:	00078c63          	beqz	a5,800085f8 <uartgetc+0x30>
    800085e4:	00074503          	lbu	a0,0(a4)
    800085e8:	0ff57513          	andi	a0,a0,255
    800085ec:	00813403          	ld	s0,8(sp)
    800085f0:	01010113          	addi	sp,sp,16
    800085f4:	00008067          	ret
    800085f8:	fff00513          	li	a0,-1
    800085fc:	ff1ff06f          	j	800085ec <uartgetc+0x24>

0000000080008600 <uartintr>:
    80008600:	100007b7          	lui	a5,0x10000
    80008604:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008608:	0017f793          	andi	a5,a5,1
    8000860c:	0a078463          	beqz	a5,800086b4 <uartintr+0xb4>
    80008610:	fe010113          	addi	sp,sp,-32
    80008614:	00813823          	sd	s0,16(sp)
    80008618:	00913423          	sd	s1,8(sp)
    8000861c:	00113c23          	sd	ra,24(sp)
    80008620:	02010413          	addi	s0,sp,32
    80008624:	100004b7          	lui	s1,0x10000
    80008628:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000862c:	0ff57513          	andi	a0,a0,255
    80008630:	fffff097          	auipc	ra,0xfffff
    80008634:	534080e7          	jalr	1332(ra) # 80007b64 <consoleintr>
    80008638:	0054c783          	lbu	a5,5(s1)
    8000863c:	0017f793          	andi	a5,a5,1
    80008640:	fe0794e3          	bnez	a5,80008628 <uartintr+0x28>
    80008644:	00005617          	auipc	a2,0x5
    80008648:	8ec60613          	addi	a2,a2,-1812 # 8000cf30 <uart_tx_r>
    8000864c:	00005517          	auipc	a0,0x5
    80008650:	8ec50513          	addi	a0,a0,-1812 # 8000cf38 <uart_tx_w>
    80008654:	00063783          	ld	a5,0(a2)
    80008658:	00053703          	ld	a4,0(a0)
    8000865c:	04f70263          	beq	a4,a5,800086a0 <uartintr+0xa0>
    80008660:	100005b7          	lui	a1,0x10000
    80008664:	00006817          	auipc	a6,0x6
    80008668:	c3c80813          	addi	a6,a6,-964 # 8000e2a0 <uart_tx_buf>
    8000866c:	01c0006f          	j	80008688 <uartintr+0x88>
    80008670:	0006c703          	lbu	a4,0(a3)
    80008674:	00f63023          	sd	a5,0(a2)
    80008678:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000867c:	00063783          	ld	a5,0(a2)
    80008680:	00053703          	ld	a4,0(a0)
    80008684:	00f70e63          	beq	a4,a5,800086a0 <uartintr+0xa0>
    80008688:	01f7f713          	andi	a4,a5,31
    8000868c:	00e806b3          	add	a3,a6,a4
    80008690:	0055c703          	lbu	a4,5(a1)
    80008694:	00178793          	addi	a5,a5,1
    80008698:	02077713          	andi	a4,a4,32
    8000869c:	fc071ae3          	bnez	a4,80008670 <uartintr+0x70>
    800086a0:	01813083          	ld	ra,24(sp)
    800086a4:	01013403          	ld	s0,16(sp)
    800086a8:	00813483          	ld	s1,8(sp)
    800086ac:	02010113          	addi	sp,sp,32
    800086b0:	00008067          	ret
    800086b4:	00005617          	auipc	a2,0x5
    800086b8:	87c60613          	addi	a2,a2,-1924 # 8000cf30 <uart_tx_r>
    800086bc:	00005517          	auipc	a0,0x5
    800086c0:	87c50513          	addi	a0,a0,-1924 # 8000cf38 <uart_tx_w>
    800086c4:	00063783          	ld	a5,0(a2)
    800086c8:	00053703          	ld	a4,0(a0)
    800086cc:	04f70263          	beq	a4,a5,80008710 <uartintr+0x110>
    800086d0:	100005b7          	lui	a1,0x10000
    800086d4:	00006817          	auipc	a6,0x6
    800086d8:	bcc80813          	addi	a6,a6,-1076 # 8000e2a0 <uart_tx_buf>
    800086dc:	01c0006f          	j	800086f8 <uartintr+0xf8>
    800086e0:	0006c703          	lbu	a4,0(a3)
    800086e4:	00f63023          	sd	a5,0(a2)
    800086e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800086ec:	00063783          	ld	a5,0(a2)
    800086f0:	00053703          	ld	a4,0(a0)
    800086f4:	02f70063          	beq	a4,a5,80008714 <uartintr+0x114>
    800086f8:	01f7f713          	andi	a4,a5,31
    800086fc:	00e806b3          	add	a3,a6,a4
    80008700:	0055c703          	lbu	a4,5(a1)
    80008704:	00178793          	addi	a5,a5,1
    80008708:	02077713          	andi	a4,a4,32
    8000870c:	fc071ae3          	bnez	a4,800086e0 <uartintr+0xe0>
    80008710:	00008067          	ret
    80008714:	00008067          	ret

0000000080008718 <kinit>:
    80008718:	fc010113          	addi	sp,sp,-64
    8000871c:	02913423          	sd	s1,40(sp)
    80008720:	fffff7b7          	lui	a5,0xfffff
    80008724:	00007497          	auipc	s1,0x7
    80008728:	b9b48493          	addi	s1,s1,-1125 # 8000f2bf <end+0xfff>
    8000872c:	02813823          	sd	s0,48(sp)
    80008730:	01313c23          	sd	s3,24(sp)
    80008734:	00f4f4b3          	and	s1,s1,a5
    80008738:	02113c23          	sd	ra,56(sp)
    8000873c:	03213023          	sd	s2,32(sp)
    80008740:	01413823          	sd	s4,16(sp)
    80008744:	01513423          	sd	s5,8(sp)
    80008748:	04010413          	addi	s0,sp,64
    8000874c:	000017b7          	lui	a5,0x1
    80008750:	01100993          	li	s3,17
    80008754:	00f487b3          	add	a5,s1,a5
    80008758:	01b99993          	slli	s3,s3,0x1b
    8000875c:	06f9e063          	bltu	s3,a5,800087bc <kinit+0xa4>
    80008760:	00006a97          	auipc	s5,0x6
    80008764:	b60a8a93          	addi	s5,s5,-1184 # 8000e2c0 <end>
    80008768:	0754ec63          	bltu	s1,s5,800087e0 <kinit+0xc8>
    8000876c:	0734fa63          	bgeu	s1,s3,800087e0 <kinit+0xc8>
    80008770:	00088a37          	lui	s4,0x88
    80008774:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008778:	00004917          	auipc	s2,0x4
    8000877c:	7c890913          	addi	s2,s2,1992 # 8000cf40 <kmem>
    80008780:	00ca1a13          	slli	s4,s4,0xc
    80008784:	0140006f          	j	80008798 <kinit+0x80>
    80008788:	000017b7          	lui	a5,0x1
    8000878c:	00f484b3          	add	s1,s1,a5
    80008790:	0554e863          	bltu	s1,s5,800087e0 <kinit+0xc8>
    80008794:	0534f663          	bgeu	s1,s3,800087e0 <kinit+0xc8>
    80008798:	00001637          	lui	a2,0x1
    8000879c:	00100593          	li	a1,1
    800087a0:	00048513          	mv	a0,s1
    800087a4:	00000097          	auipc	ra,0x0
    800087a8:	5e4080e7          	jalr	1508(ra) # 80008d88 <__memset>
    800087ac:	00093783          	ld	a5,0(s2)
    800087b0:	00f4b023          	sd	a5,0(s1)
    800087b4:	00993023          	sd	s1,0(s2)
    800087b8:	fd4498e3          	bne	s1,s4,80008788 <kinit+0x70>
    800087bc:	03813083          	ld	ra,56(sp)
    800087c0:	03013403          	ld	s0,48(sp)
    800087c4:	02813483          	ld	s1,40(sp)
    800087c8:	02013903          	ld	s2,32(sp)
    800087cc:	01813983          	ld	s3,24(sp)
    800087d0:	01013a03          	ld	s4,16(sp)
    800087d4:	00813a83          	ld	s5,8(sp)
    800087d8:	04010113          	addi	sp,sp,64
    800087dc:	00008067          	ret
    800087e0:	00002517          	auipc	a0,0x2
    800087e4:	f6050513          	addi	a0,a0,-160 # 8000a740 <digits+0x18>
    800087e8:	fffff097          	auipc	ra,0xfffff
    800087ec:	4b4080e7          	jalr	1204(ra) # 80007c9c <panic>

00000000800087f0 <freerange>:
    800087f0:	fc010113          	addi	sp,sp,-64
    800087f4:	000017b7          	lui	a5,0x1
    800087f8:	02913423          	sd	s1,40(sp)
    800087fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008800:	009504b3          	add	s1,a0,s1
    80008804:	fffff537          	lui	a0,0xfffff
    80008808:	02813823          	sd	s0,48(sp)
    8000880c:	02113c23          	sd	ra,56(sp)
    80008810:	03213023          	sd	s2,32(sp)
    80008814:	01313c23          	sd	s3,24(sp)
    80008818:	01413823          	sd	s4,16(sp)
    8000881c:	01513423          	sd	s5,8(sp)
    80008820:	01613023          	sd	s6,0(sp)
    80008824:	04010413          	addi	s0,sp,64
    80008828:	00a4f4b3          	and	s1,s1,a0
    8000882c:	00f487b3          	add	a5,s1,a5
    80008830:	06f5e463          	bltu	a1,a5,80008898 <freerange+0xa8>
    80008834:	00006a97          	auipc	s5,0x6
    80008838:	a8ca8a93          	addi	s5,s5,-1396 # 8000e2c0 <end>
    8000883c:	0954e263          	bltu	s1,s5,800088c0 <freerange+0xd0>
    80008840:	01100993          	li	s3,17
    80008844:	01b99993          	slli	s3,s3,0x1b
    80008848:	0734fc63          	bgeu	s1,s3,800088c0 <freerange+0xd0>
    8000884c:	00058a13          	mv	s4,a1
    80008850:	00004917          	auipc	s2,0x4
    80008854:	6f090913          	addi	s2,s2,1776 # 8000cf40 <kmem>
    80008858:	00002b37          	lui	s6,0x2
    8000885c:	0140006f          	j	80008870 <freerange+0x80>
    80008860:	000017b7          	lui	a5,0x1
    80008864:	00f484b3          	add	s1,s1,a5
    80008868:	0554ec63          	bltu	s1,s5,800088c0 <freerange+0xd0>
    8000886c:	0534fa63          	bgeu	s1,s3,800088c0 <freerange+0xd0>
    80008870:	00001637          	lui	a2,0x1
    80008874:	00100593          	li	a1,1
    80008878:	00048513          	mv	a0,s1
    8000887c:	00000097          	auipc	ra,0x0
    80008880:	50c080e7          	jalr	1292(ra) # 80008d88 <__memset>
    80008884:	00093703          	ld	a4,0(s2)
    80008888:	016487b3          	add	a5,s1,s6
    8000888c:	00e4b023          	sd	a4,0(s1)
    80008890:	00993023          	sd	s1,0(s2)
    80008894:	fcfa76e3          	bgeu	s4,a5,80008860 <freerange+0x70>
    80008898:	03813083          	ld	ra,56(sp)
    8000889c:	03013403          	ld	s0,48(sp)
    800088a0:	02813483          	ld	s1,40(sp)
    800088a4:	02013903          	ld	s2,32(sp)
    800088a8:	01813983          	ld	s3,24(sp)
    800088ac:	01013a03          	ld	s4,16(sp)
    800088b0:	00813a83          	ld	s5,8(sp)
    800088b4:	00013b03          	ld	s6,0(sp)
    800088b8:	04010113          	addi	sp,sp,64
    800088bc:	00008067          	ret
    800088c0:	00002517          	auipc	a0,0x2
    800088c4:	e8050513          	addi	a0,a0,-384 # 8000a740 <digits+0x18>
    800088c8:	fffff097          	auipc	ra,0xfffff
    800088cc:	3d4080e7          	jalr	980(ra) # 80007c9c <panic>

00000000800088d0 <kfree>:
    800088d0:	fe010113          	addi	sp,sp,-32
    800088d4:	00813823          	sd	s0,16(sp)
    800088d8:	00113c23          	sd	ra,24(sp)
    800088dc:	00913423          	sd	s1,8(sp)
    800088e0:	02010413          	addi	s0,sp,32
    800088e4:	03451793          	slli	a5,a0,0x34
    800088e8:	04079c63          	bnez	a5,80008940 <kfree+0x70>
    800088ec:	00006797          	auipc	a5,0x6
    800088f0:	9d478793          	addi	a5,a5,-1580 # 8000e2c0 <end>
    800088f4:	00050493          	mv	s1,a0
    800088f8:	04f56463          	bltu	a0,a5,80008940 <kfree+0x70>
    800088fc:	01100793          	li	a5,17
    80008900:	01b79793          	slli	a5,a5,0x1b
    80008904:	02f57e63          	bgeu	a0,a5,80008940 <kfree+0x70>
    80008908:	00001637          	lui	a2,0x1
    8000890c:	00100593          	li	a1,1
    80008910:	00000097          	auipc	ra,0x0
    80008914:	478080e7          	jalr	1144(ra) # 80008d88 <__memset>
    80008918:	00004797          	auipc	a5,0x4
    8000891c:	62878793          	addi	a5,a5,1576 # 8000cf40 <kmem>
    80008920:	0007b703          	ld	a4,0(a5)
    80008924:	01813083          	ld	ra,24(sp)
    80008928:	01013403          	ld	s0,16(sp)
    8000892c:	00e4b023          	sd	a4,0(s1)
    80008930:	0097b023          	sd	s1,0(a5)
    80008934:	00813483          	ld	s1,8(sp)
    80008938:	02010113          	addi	sp,sp,32
    8000893c:	00008067          	ret
    80008940:	00002517          	auipc	a0,0x2
    80008944:	e0050513          	addi	a0,a0,-512 # 8000a740 <digits+0x18>
    80008948:	fffff097          	auipc	ra,0xfffff
    8000894c:	354080e7          	jalr	852(ra) # 80007c9c <panic>

0000000080008950 <kalloc>:
    80008950:	fe010113          	addi	sp,sp,-32
    80008954:	00813823          	sd	s0,16(sp)
    80008958:	00913423          	sd	s1,8(sp)
    8000895c:	00113c23          	sd	ra,24(sp)
    80008960:	02010413          	addi	s0,sp,32
    80008964:	00004797          	auipc	a5,0x4
    80008968:	5dc78793          	addi	a5,a5,1500 # 8000cf40 <kmem>
    8000896c:	0007b483          	ld	s1,0(a5)
    80008970:	02048063          	beqz	s1,80008990 <kalloc+0x40>
    80008974:	0004b703          	ld	a4,0(s1)
    80008978:	00001637          	lui	a2,0x1
    8000897c:	00500593          	li	a1,5
    80008980:	00048513          	mv	a0,s1
    80008984:	00e7b023          	sd	a4,0(a5)
    80008988:	00000097          	auipc	ra,0x0
    8000898c:	400080e7          	jalr	1024(ra) # 80008d88 <__memset>
    80008990:	01813083          	ld	ra,24(sp)
    80008994:	01013403          	ld	s0,16(sp)
    80008998:	00048513          	mv	a0,s1
    8000899c:	00813483          	ld	s1,8(sp)
    800089a0:	02010113          	addi	sp,sp,32
    800089a4:	00008067          	ret

00000000800089a8 <initlock>:
    800089a8:	ff010113          	addi	sp,sp,-16
    800089ac:	00813423          	sd	s0,8(sp)
    800089b0:	01010413          	addi	s0,sp,16
    800089b4:	00813403          	ld	s0,8(sp)
    800089b8:	00b53423          	sd	a1,8(a0)
    800089bc:	00052023          	sw	zero,0(a0)
    800089c0:	00053823          	sd	zero,16(a0)
    800089c4:	01010113          	addi	sp,sp,16
    800089c8:	00008067          	ret

00000000800089cc <acquire>:
    800089cc:	fe010113          	addi	sp,sp,-32
    800089d0:	00813823          	sd	s0,16(sp)
    800089d4:	00913423          	sd	s1,8(sp)
    800089d8:	00113c23          	sd	ra,24(sp)
    800089dc:	01213023          	sd	s2,0(sp)
    800089e0:	02010413          	addi	s0,sp,32
    800089e4:	00050493          	mv	s1,a0
    800089e8:	10002973          	csrr	s2,sstatus
    800089ec:	100027f3          	csrr	a5,sstatus
    800089f0:	ffd7f793          	andi	a5,a5,-3
    800089f4:	10079073          	csrw	sstatus,a5
    800089f8:	fffff097          	auipc	ra,0xfffff
    800089fc:	8e8080e7          	jalr	-1816(ra) # 800072e0 <mycpu>
    80008a00:	07852783          	lw	a5,120(a0)
    80008a04:	06078e63          	beqz	a5,80008a80 <acquire+0xb4>
    80008a08:	fffff097          	auipc	ra,0xfffff
    80008a0c:	8d8080e7          	jalr	-1832(ra) # 800072e0 <mycpu>
    80008a10:	07852783          	lw	a5,120(a0)
    80008a14:	0004a703          	lw	a4,0(s1)
    80008a18:	0017879b          	addiw	a5,a5,1
    80008a1c:	06f52c23          	sw	a5,120(a0)
    80008a20:	04071063          	bnez	a4,80008a60 <acquire+0x94>
    80008a24:	00100713          	li	a4,1
    80008a28:	00070793          	mv	a5,a4
    80008a2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008a30:	0007879b          	sext.w	a5,a5
    80008a34:	fe079ae3          	bnez	a5,80008a28 <acquire+0x5c>
    80008a38:	0ff0000f          	fence
    80008a3c:	fffff097          	auipc	ra,0xfffff
    80008a40:	8a4080e7          	jalr	-1884(ra) # 800072e0 <mycpu>
    80008a44:	01813083          	ld	ra,24(sp)
    80008a48:	01013403          	ld	s0,16(sp)
    80008a4c:	00a4b823          	sd	a0,16(s1)
    80008a50:	00013903          	ld	s2,0(sp)
    80008a54:	00813483          	ld	s1,8(sp)
    80008a58:	02010113          	addi	sp,sp,32
    80008a5c:	00008067          	ret
    80008a60:	0104b903          	ld	s2,16(s1)
    80008a64:	fffff097          	auipc	ra,0xfffff
    80008a68:	87c080e7          	jalr	-1924(ra) # 800072e0 <mycpu>
    80008a6c:	faa91ce3          	bne	s2,a0,80008a24 <acquire+0x58>
    80008a70:	00002517          	auipc	a0,0x2
    80008a74:	cd850513          	addi	a0,a0,-808 # 8000a748 <digits+0x20>
    80008a78:	fffff097          	auipc	ra,0xfffff
    80008a7c:	224080e7          	jalr	548(ra) # 80007c9c <panic>
    80008a80:	00195913          	srli	s2,s2,0x1
    80008a84:	fffff097          	auipc	ra,0xfffff
    80008a88:	85c080e7          	jalr	-1956(ra) # 800072e0 <mycpu>
    80008a8c:	00197913          	andi	s2,s2,1
    80008a90:	07252e23          	sw	s2,124(a0)
    80008a94:	f75ff06f          	j	80008a08 <acquire+0x3c>

0000000080008a98 <release>:
    80008a98:	fe010113          	addi	sp,sp,-32
    80008a9c:	00813823          	sd	s0,16(sp)
    80008aa0:	00113c23          	sd	ra,24(sp)
    80008aa4:	00913423          	sd	s1,8(sp)
    80008aa8:	01213023          	sd	s2,0(sp)
    80008aac:	02010413          	addi	s0,sp,32
    80008ab0:	00052783          	lw	a5,0(a0)
    80008ab4:	00079a63          	bnez	a5,80008ac8 <release+0x30>
    80008ab8:	00002517          	auipc	a0,0x2
    80008abc:	c9850513          	addi	a0,a0,-872 # 8000a750 <digits+0x28>
    80008ac0:	fffff097          	auipc	ra,0xfffff
    80008ac4:	1dc080e7          	jalr	476(ra) # 80007c9c <panic>
    80008ac8:	01053903          	ld	s2,16(a0)
    80008acc:	00050493          	mv	s1,a0
    80008ad0:	fffff097          	auipc	ra,0xfffff
    80008ad4:	810080e7          	jalr	-2032(ra) # 800072e0 <mycpu>
    80008ad8:	fea910e3          	bne	s2,a0,80008ab8 <release+0x20>
    80008adc:	0004b823          	sd	zero,16(s1)
    80008ae0:	0ff0000f          	fence
    80008ae4:	0f50000f          	fence	iorw,ow
    80008ae8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008aec:	ffffe097          	auipc	ra,0xffffe
    80008af0:	7f4080e7          	jalr	2036(ra) # 800072e0 <mycpu>
    80008af4:	100027f3          	csrr	a5,sstatus
    80008af8:	0027f793          	andi	a5,a5,2
    80008afc:	04079a63          	bnez	a5,80008b50 <release+0xb8>
    80008b00:	07852783          	lw	a5,120(a0)
    80008b04:	02f05e63          	blez	a5,80008b40 <release+0xa8>
    80008b08:	fff7871b          	addiw	a4,a5,-1
    80008b0c:	06e52c23          	sw	a4,120(a0)
    80008b10:	00071c63          	bnez	a4,80008b28 <release+0x90>
    80008b14:	07c52783          	lw	a5,124(a0)
    80008b18:	00078863          	beqz	a5,80008b28 <release+0x90>
    80008b1c:	100027f3          	csrr	a5,sstatus
    80008b20:	0027e793          	ori	a5,a5,2
    80008b24:	10079073          	csrw	sstatus,a5
    80008b28:	01813083          	ld	ra,24(sp)
    80008b2c:	01013403          	ld	s0,16(sp)
    80008b30:	00813483          	ld	s1,8(sp)
    80008b34:	00013903          	ld	s2,0(sp)
    80008b38:	02010113          	addi	sp,sp,32
    80008b3c:	00008067          	ret
    80008b40:	00002517          	auipc	a0,0x2
    80008b44:	c3050513          	addi	a0,a0,-976 # 8000a770 <digits+0x48>
    80008b48:	fffff097          	auipc	ra,0xfffff
    80008b4c:	154080e7          	jalr	340(ra) # 80007c9c <panic>
    80008b50:	00002517          	auipc	a0,0x2
    80008b54:	c0850513          	addi	a0,a0,-1016 # 8000a758 <digits+0x30>
    80008b58:	fffff097          	auipc	ra,0xfffff
    80008b5c:	144080e7          	jalr	324(ra) # 80007c9c <panic>

0000000080008b60 <holding>:
    80008b60:	00052783          	lw	a5,0(a0)
    80008b64:	00079663          	bnez	a5,80008b70 <holding+0x10>
    80008b68:	00000513          	li	a0,0
    80008b6c:	00008067          	ret
    80008b70:	fe010113          	addi	sp,sp,-32
    80008b74:	00813823          	sd	s0,16(sp)
    80008b78:	00913423          	sd	s1,8(sp)
    80008b7c:	00113c23          	sd	ra,24(sp)
    80008b80:	02010413          	addi	s0,sp,32
    80008b84:	01053483          	ld	s1,16(a0)
    80008b88:	ffffe097          	auipc	ra,0xffffe
    80008b8c:	758080e7          	jalr	1880(ra) # 800072e0 <mycpu>
    80008b90:	01813083          	ld	ra,24(sp)
    80008b94:	01013403          	ld	s0,16(sp)
    80008b98:	40a48533          	sub	a0,s1,a0
    80008b9c:	00153513          	seqz	a0,a0
    80008ba0:	00813483          	ld	s1,8(sp)
    80008ba4:	02010113          	addi	sp,sp,32
    80008ba8:	00008067          	ret

0000000080008bac <push_off>:
    80008bac:	fe010113          	addi	sp,sp,-32
    80008bb0:	00813823          	sd	s0,16(sp)
    80008bb4:	00113c23          	sd	ra,24(sp)
    80008bb8:	00913423          	sd	s1,8(sp)
    80008bbc:	02010413          	addi	s0,sp,32
    80008bc0:	100024f3          	csrr	s1,sstatus
    80008bc4:	100027f3          	csrr	a5,sstatus
    80008bc8:	ffd7f793          	andi	a5,a5,-3
    80008bcc:	10079073          	csrw	sstatus,a5
    80008bd0:	ffffe097          	auipc	ra,0xffffe
    80008bd4:	710080e7          	jalr	1808(ra) # 800072e0 <mycpu>
    80008bd8:	07852783          	lw	a5,120(a0)
    80008bdc:	02078663          	beqz	a5,80008c08 <push_off+0x5c>
    80008be0:	ffffe097          	auipc	ra,0xffffe
    80008be4:	700080e7          	jalr	1792(ra) # 800072e0 <mycpu>
    80008be8:	07852783          	lw	a5,120(a0)
    80008bec:	01813083          	ld	ra,24(sp)
    80008bf0:	01013403          	ld	s0,16(sp)
    80008bf4:	0017879b          	addiw	a5,a5,1
    80008bf8:	06f52c23          	sw	a5,120(a0)
    80008bfc:	00813483          	ld	s1,8(sp)
    80008c00:	02010113          	addi	sp,sp,32
    80008c04:	00008067          	ret
    80008c08:	0014d493          	srli	s1,s1,0x1
    80008c0c:	ffffe097          	auipc	ra,0xffffe
    80008c10:	6d4080e7          	jalr	1748(ra) # 800072e0 <mycpu>
    80008c14:	0014f493          	andi	s1,s1,1
    80008c18:	06952e23          	sw	s1,124(a0)
    80008c1c:	fc5ff06f          	j	80008be0 <push_off+0x34>

0000000080008c20 <pop_off>:
    80008c20:	ff010113          	addi	sp,sp,-16
    80008c24:	00813023          	sd	s0,0(sp)
    80008c28:	00113423          	sd	ra,8(sp)
    80008c2c:	01010413          	addi	s0,sp,16
    80008c30:	ffffe097          	auipc	ra,0xffffe
    80008c34:	6b0080e7          	jalr	1712(ra) # 800072e0 <mycpu>
    80008c38:	100027f3          	csrr	a5,sstatus
    80008c3c:	0027f793          	andi	a5,a5,2
    80008c40:	04079663          	bnez	a5,80008c8c <pop_off+0x6c>
    80008c44:	07852783          	lw	a5,120(a0)
    80008c48:	02f05a63          	blez	a5,80008c7c <pop_off+0x5c>
    80008c4c:	fff7871b          	addiw	a4,a5,-1
    80008c50:	06e52c23          	sw	a4,120(a0)
    80008c54:	00071c63          	bnez	a4,80008c6c <pop_off+0x4c>
    80008c58:	07c52783          	lw	a5,124(a0)
    80008c5c:	00078863          	beqz	a5,80008c6c <pop_off+0x4c>
    80008c60:	100027f3          	csrr	a5,sstatus
    80008c64:	0027e793          	ori	a5,a5,2
    80008c68:	10079073          	csrw	sstatus,a5
    80008c6c:	00813083          	ld	ra,8(sp)
    80008c70:	00013403          	ld	s0,0(sp)
    80008c74:	01010113          	addi	sp,sp,16
    80008c78:	00008067          	ret
    80008c7c:	00002517          	auipc	a0,0x2
    80008c80:	af450513          	addi	a0,a0,-1292 # 8000a770 <digits+0x48>
    80008c84:	fffff097          	auipc	ra,0xfffff
    80008c88:	018080e7          	jalr	24(ra) # 80007c9c <panic>
    80008c8c:	00002517          	auipc	a0,0x2
    80008c90:	acc50513          	addi	a0,a0,-1332 # 8000a758 <digits+0x30>
    80008c94:	fffff097          	auipc	ra,0xfffff
    80008c98:	008080e7          	jalr	8(ra) # 80007c9c <panic>

0000000080008c9c <push_on>:
    80008c9c:	fe010113          	addi	sp,sp,-32
    80008ca0:	00813823          	sd	s0,16(sp)
    80008ca4:	00113c23          	sd	ra,24(sp)
    80008ca8:	00913423          	sd	s1,8(sp)
    80008cac:	02010413          	addi	s0,sp,32
    80008cb0:	100024f3          	csrr	s1,sstatus
    80008cb4:	100027f3          	csrr	a5,sstatus
    80008cb8:	0027e793          	ori	a5,a5,2
    80008cbc:	10079073          	csrw	sstatus,a5
    80008cc0:	ffffe097          	auipc	ra,0xffffe
    80008cc4:	620080e7          	jalr	1568(ra) # 800072e0 <mycpu>
    80008cc8:	07852783          	lw	a5,120(a0)
    80008ccc:	02078663          	beqz	a5,80008cf8 <push_on+0x5c>
    80008cd0:	ffffe097          	auipc	ra,0xffffe
    80008cd4:	610080e7          	jalr	1552(ra) # 800072e0 <mycpu>
    80008cd8:	07852783          	lw	a5,120(a0)
    80008cdc:	01813083          	ld	ra,24(sp)
    80008ce0:	01013403          	ld	s0,16(sp)
    80008ce4:	0017879b          	addiw	a5,a5,1
    80008ce8:	06f52c23          	sw	a5,120(a0)
    80008cec:	00813483          	ld	s1,8(sp)
    80008cf0:	02010113          	addi	sp,sp,32
    80008cf4:	00008067          	ret
    80008cf8:	0014d493          	srli	s1,s1,0x1
    80008cfc:	ffffe097          	auipc	ra,0xffffe
    80008d00:	5e4080e7          	jalr	1508(ra) # 800072e0 <mycpu>
    80008d04:	0014f493          	andi	s1,s1,1
    80008d08:	06952e23          	sw	s1,124(a0)
    80008d0c:	fc5ff06f          	j	80008cd0 <push_on+0x34>

0000000080008d10 <pop_on>:
    80008d10:	ff010113          	addi	sp,sp,-16
    80008d14:	00813023          	sd	s0,0(sp)
    80008d18:	00113423          	sd	ra,8(sp)
    80008d1c:	01010413          	addi	s0,sp,16
    80008d20:	ffffe097          	auipc	ra,0xffffe
    80008d24:	5c0080e7          	jalr	1472(ra) # 800072e0 <mycpu>
    80008d28:	100027f3          	csrr	a5,sstatus
    80008d2c:	0027f793          	andi	a5,a5,2
    80008d30:	04078463          	beqz	a5,80008d78 <pop_on+0x68>
    80008d34:	07852783          	lw	a5,120(a0)
    80008d38:	02f05863          	blez	a5,80008d68 <pop_on+0x58>
    80008d3c:	fff7879b          	addiw	a5,a5,-1
    80008d40:	06f52c23          	sw	a5,120(a0)
    80008d44:	07853783          	ld	a5,120(a0)
    80008d48:	00079863          	bnez	a5,80008d58 <pop_on+0x48>
    80008d4c:	100027f3          	csrr	a5,sstatus
    80008d50:	ffd7f793          	andi	a5,a5,-3
    80008d54:	10079073          	csrw	sstatus,a5
    80008d58:	00813083          	ld	ra,8(sp)
    80008d5c:	00013403          	ld	s0,0(sp)
    80008d60:	01010113          	addi	sp,sp,16
    80008d64:	00008067          	ret
    80008d68:	00002517          	auipc	a0,0x2
    80008d6c:	a3050513          	addi	a0,a0,-1488 # 8000a798 <digits+0x70>
    80008d70:	fffff097          	auipc	ra,0xfffff
    80008d74:	f2c080e7          	jalr	-212(ra) # 80007c9c <panic>
    80008d78:	00002517          	auipc	a0,0x2
    80008d7c:	a0050513          	addi	a0,a0,-1536 # 8000a778 <digits+0x50>
    80008d80:	fffff097          	auipc	ra,0xfffff
    80008d84:	f1c080e7          	jalr	-228(ra) # 80007c9c <panic>

0000000080008d88 <__memset>:
    80008d88:	ff010113          	addi	sp,sp,-16
    80008d8c:	00813423          	sd	s0,8(sp)
    80008d90:	01010413          	addi	s0,sp,16
    80008d94:	1a060e63          	beqz	a2,80008f50 <__memset+0x1c8>
    80008d98:	40a007b3          	neg	a5,a0
    80008d9c:	0077f793          	andi	a5,a5,7
    80008da0:	00778693          	addi	a3,a5,7
    80008da4:	00b00813          	li	a6,11
    80008da8:	0ff5f593          	andi	a1,a1,255
    80008dac:	fff6071b          	addiw	a4,a2,-1
    80008db0:	1b06e663          	bltu	a3,a6,80008f5c <__memset+0x1d4>
    80008db4:	1cd76463          	bltu	a4,a3,80008f7c <__memset+0x1f4>
    80008db8:	1a078e63          	beqz	a5,80008f74 <__memset+0x1ec>
    80008dbc:	00b50023          	sb	a1,0(a0)
    80008dc0:	00100713          	li	a4,1
    80008dc4:	1ae78463          	beq	a5,a4,80008f6c <__memset+0x1e4>
    80008dc8:	00b500a3          	sb	a1,1(a0)
    80008dcc:	00200713          	li	a4,2
    80008dd0:	1ae78a63          	beq	a5,a4,80008f84 <__memset+0x1fc>
    80008dd4:	00b50123          	sb	a1,2(a0)
    80008dd8:	00300713          	li	a4,3
    80008ddc:	18e78463          	beq	a5,a4,80008f64 <__memset+0x1dc>
    80008de0:	00b501a3          	sb	a1,3(a0)
    80008de4:	00400713          	li	a4,4
    80008de8:	1ae78263          	beq	a5,a4,80008f8c <__memset+0x204>
    80008dec:	00b50223          	sb	a1,4(a0)
    80008df0:	00500713          	li	a4,5
    80008df4:	1ae78063          	beq	a5,a4,80008f94 <__memset+0x20c>
    80008df8:	00b502a3          	sb	a1,5(a0)
    80008dfc:	00700713          	li	a4,7
    80008e00:	18e79e63          	bne	a5,a4,80008f9c <__memset+0x214>
    80008e04:	00b50323          	sb	a1,6(a0)
    80008e08:	00700e93          	li	t4,7
    80008e0c:	00859713          	slli	a4,a1,0x8
    80008e10:	00e5e733          	or	a4,a1,a4
    80008e14:	01059e13          	slli	t3,a1,0x10
    80008e18:	01c76e33          	or	t3,a4,t3
    80008e1c:	01859313          	slli	t1,a1,0x18
    80008e20:	006e6333          	or	t1,t3,t1
    80008e24:	02059893          	slli	a7,a1,0x20
    80008e28:	40f60e3b          	subw	t3,a2,a5
    80008e2c:	011368b3          	or	a7,t1,a7
    80008e30:	02859813          	slli	a6,a1,0x28
    80008e34:	0108e833          	or	a6,a7,a6
    80008e38:	03059693          	slli	a3,a1,0x30
    80008e3c:	003e589b          	srliw	a7,t3,0x3
    80008e40:	00d866b3          	or	a3,a6,a3
    80008e44:	03859713          	slli	a4,a1,0x38
    80008e48:	00389813          	slli	a6,a7,0x3
    80008e4c:	00f507b3          	add	a5,a0,a5
    80008e50:	00e6e733          	or	a4,a3,a4
    80008e54:	000e089b          	sext.w	a7,t3
    80008e58:	00f806b3          	add	a3,a6,a5
    80008e5c:	00e7b023          	sd	a4,0(a5)
    80008e60:	00878793          	addi	a5,a5,8
    80008e64:	fed79ce3          	bne	a5,a3,80008e5c <__memset+0xd4>
    80008e68:	ff8e7793          	andi	a5,t3,-8
    80008e6c:	0007871b          	sext.w	a4,a5
    80008e70:	01d787bb          	addw	a5,a5,t4
    80008e74:	0ce88e63          	beq	a7,a4,80008f50 <__memset+0x1c8>
    80008e78:	00f50733          	add	a4,a0,a5
    80008e7c:	00b70023          	sb	a1,0(a4)
    80008e80:	0017871b          	addiw	a4,a5,1
    80008e84:	0cc77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008e88:	00e50733          	add	a4,a0,a4
    80008e8c:	00b70023          	sb	a1,0(a4)
    80008e90:	0027871b          	addiw	a4,a5,2
    80008e94:	0ac77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008e98:	00e50733          	add	a4,a0,a4
    80008e9c:	00b70023          	sb	a1,0(a4)
    80008ea0:	0037871b          	addiw	a4,a5,3
    80008ea4:	0ac77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008ea8:	00e50733          	add	a4,a0,a4
    80008eac:	00b70023          	sb	a1,0(a4)
    80008eb0:	0047871b          	addiw	a4,a5,4
    80008eb4:	08c77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008eb8:	00e50733          	add	a4,a0,a4
    80008ebc:	00b70023          	sb	a1,0(a4)
    80008ec0:	0057871b          	addiw	a4,a5,5
    80008ec4:	08c77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008ec8:	00e50733          	add	a4,a0,a4
    80008ecc:	00b70023          	sb	a1,0(a4)
    80008ed0:	0067871b          	addiw	a4,a5,6
    80008ed4:	06c77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008ed8:	00e50733          	add	a4,a0,a4
    80008edc:	00b70023          	sb	a1,0(a4)
    80008ee0:	0077871b          	addiw	a4,a5,7
    80008ee4:	06c77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008ee8:	00e50733          	add	a4,a0,a4
    80008eec:	00b70023          	sb	a1,0(a4)
    80008ef0:	0087871b          	addiw	a4,a5,8
    80008ef4:	04c77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008ef8:	00e50733          	add	a4,a0,a4
    80008efc:	00b70023          	sb	a1,0(a4)
    80008f00:	0097871b          	addiw	a4,a5,9
    80008f04:	04c77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008f08:	00e50733          	add	a4,a0,a4
    80008f0c:	00b70023          	sb	a1,0(a4)
    80008f10:	00a7871b          	addiw	a4,a5,10
    80008f14:	02c77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008f18:	00e50733          	add	a4,a0,a4
    80008f1c:	00b70023          	sb	a1,0(a4)
    80008f20:	00b7871b          	addiw	a4,a5,11
    80008f24:	02c77663          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008f28:	00e50733          	add	a4,a0,a4
    80008f2c:	00b70023          	sb	a1,0(a4)
    80008f30:	00c7871b          	addiw	a4,a5,12
    80008f34:	00c77e63          	bgeu	a4,a2,80008f50 <__memset+0x1c8>
    80008f38:	00e50733          	add	a4,a0,a4
    80008f3c:	00b70023          	sb	a1,0(a4)
    80008f40:	00d7879b          	addiw	a5,a5,13
    80008f44:	00c7f663          	bgeu	a5,a2,80008f50 <__memset+0x1c8>
    80008f48:	00f507b3          	add	a5,a0,a5
    80008f4c:	00b78023          	sb	a1,0(a5)
    80008f50:	00813403          	ld	s0,8(sp)
    80008f54:	01010113          	addi	sp,sp,16
    80008f58:	00008067          	ret
    80008f5c:	00b00693          	li	a3,11
    80008f60:	e55ff06f          	j	80008db4 <__memset+0x2c>
    80008f64:	00300e93          	li	t4,3
    80008f68:	ea5ff06f          	j	80008e0c <__memset+0x84>
    80008f6c:	00100e93          	li	t4,1
    80008f70:	e9dff06f          	j	80008e0c <__memset+0x84>
    80008f74:	00000e93          	li	t4,0
    80008f78:	e95ff06f          	j	80008e0c <__memset+0x84>
    80008f7c:	00000793          	li	a5,0
    80008f80:	ef9ff06f          	j	80008e78 <__memset+0xf0>
    80008f84:	00200e93          	li	t4,2
    80008f88:	e85ff06f          	j	80008e0c <__memset+0x84>
    80008f8c:	00400e93          	li	t4,4
    80008f90:	e7dff06f          	j	80008e0c <__memset+0x84>
    80008f94:	00500e93          	li	t4,5
    80008f98:	e75ff06f          	j	80008e0c <__memset+0x84>
    80008f9c:	00600e93          	li	t4,6
    80008fa0:	e6dff06f          	j	80008e0c <__memset+0x84>

0000000080008fa4 <__memmove>:
    80008fa4:	ff010113          	addi	sp,sp,-16
    80008fa8:	00813423          	sd	s0,8(sp)
    80008fac:	01010413          	addi	s0,sp,16
    80008fb0:	0e060863          	beqz	a2,800090a0 <__memmove+0xfc>
    80008fb4:	fff6069b          	addiw	a3,a2,-1
    80008fb8:	0006881b          	sext.w	a6,a3
    80008fbc:	0ea5e863          	bltu	a1,a0,800090ac <__memmove+0x108>
    80008fc0:	00758713          	addi	a4,a1,7
    80008fc4:	00a5e7b3          	or	a5,a1,a0
    80008fc8:	40a70733          	sub	a4,a4,a0
    80008fcc:	0077f793          	andi	a5,a5,7
    80008fd0:	00f73713          	sltiu	a4,a4,15
    80008fd4:	00174713          	xori	a4,a4,1
    80008fd8:	0017b793          	seqz	a5,a5
    80008fdc:	00e7f7b3          	and	a5,a5,a4
    80008fe0:	10078863          	beqz	a5,800090f0 <__memmove+0x14c>
    80008fe4:	00900793          	li	a5,9
    80008fe8:	1107f463          	bgeu	a5,a6,800090f0 <__memmove+0x14c>
    80008fec:	0036581b          	srliw	a6,a2,0x3
    80008ff0:	fff8081b          	addiw	a6,a6,-1
    80008ff4:	02081813          	slli	a6,a6,0x20
    80008ff8:	01d85893          	srli	a7,a6,0x1d
    80008ffc:	00858813          	addi	a6,a1,8
    80009000:	00058793          	mv	a5,a1
    80009004:	00050713          	mv	a4,a0
    80009008:	01088833          	add	a6,a7,a6
    8000900c:	0007b883          	ld	a7,0(a5)
    80009010:	00878793          	addi	a5,a5,8
    80009014:	00870713          	addi	a4,a4,8
    80009018:	ff173c23          	sd	a7,-8(a4)
    8000901c:	ff0798e3          	bne	a5,a6,8000900c <__memmove+0x68>
    80009020:	ff867713          	andi	a4,a2,-8
    80009024:	02071793          	slli	a5,a4,0x20
    80009028:	0207d793          	srli	a5,a5,0x20
    8000902c:	00f585b3          	add	a1,a1,a5
    80009030:	40e686bb          	subw	a3,a3,a4
    80009034:	00f507b3          	add	a5,a0,a5
    80009038:	06e60463          	beq	a2,a4,800090a0 <__memmove+0xfc>
    8000903c:	0005c703          	lbu	a4,0(a1)
    80009040:	00e78023          	sb	a4,0(a5)
    80009044:	04068e63          	beqz	a3,800090a0 <__memmove+0xfc>
    80009048:	0015c603          	lbu	a2,1(a1)
    8000904c:	00100713          	li	a4,1
    80009050:	00c780a3          	sb	a2,1(a5)
    80009054:	04e68663          	beq	a3,a4,800090a0 <__memmove+0xfc>
    80009058:	0025c603          	lbu	a2,2(a1)
    8000905c:	00200713          	li	a4,2
    80009060:	00c78123          	sb	a2,2(a5)
    80009064:	02e68e63          	beq	a3,a4,800090a0 <__memmove+0xfc>
    80009068:	0035c603          	lbu	a2,3(a1)
    8000906c:	00300713          	li	a4,3
    80009070:	00c781a3          	sb	a2,3(a5)
    80009074:	02e68663          	beq	a3,a4,800090a0 <__memmove+0xfc>
    80009078:	0045c603          	lbu	a2,4(a1)
    8000907c:	00400713          	li	a4,4
    80009080:	00c78223          	sb	a2,4(a5)
    80009084:	00e68e63          	beq	a3,a4,800090a0 <__memmove+0xfc>
    80009088:	0055c603          	lbu	a2,5(a1)
    8000908c:	00500713          	li	a4,5
    80009090:	00c782a3          	sb	a2,5(a5)
    80009094:	00e68663          	beq	a3,a4,800090a0 <__memmove+0xfc>
    80009098:	0065c703          	lbu	a4,6(a1)
    8000909c:	00e78323          	sb	a4,6(a5)
    800090a0:	00813403          	ld	s0,8(sp)
    800090a4:	01010113          	addi	sp,sp,16
    800090a8:	00008067          	ret
    800090ac:	02061713          	slli	a4,a2,0x20
    800090b0:	02075713          	srli	a4,a4,0x20
    800090b4:	00e587b3          	add	a5,a1,a4
    800090b8:	f0f574e3          	bgeu	a0,a5,80008fc0 <__memmove+0x1c>
    800090bc:	02069613          	slli	a2,a3,0x20
    800090c0:	02065613          	srli	a2,a2,0x20
    800090c4:	fff64613          	not	a2,a2
    800090c8:	00e50733          	add	a4,a0,a4
    800090cc:	00c78633          	add	a2,a5,a2
    800090d0:	fff7c683          	lbu	a3,-1(a5)
    800090d4:	fff78793          	addi	a5,a5,-1
    800090d8:	fff70713          	addi	a4,a4,-1
    800090dc:	00d70023          	sb	a3,0(a4)
    800090e0:	fec798e3          	bne	a5,a2,800090d0 <__memmove+0x12c>
    800090e4:	00813403          	ld	s0,8(sp)
    800090e8:	01010113          	addi	sp,sp,16
    800090ec:	00008067          	ret
    800090f0:	02069713          	slli	a4,a3,0x20
    800090f4:	02075713          	srli	a4,a4,0x20
    800090f8:	00170713          	addi	a4,a4,1
    800090fc:	00e50733          	add	a4,a0,a4
    80009100:	00050793          	mv	a5,a0
    80009104:	0005c683          	lbu	a3,0(a1)
    80009108:	00178793          	addi	a5,a5,1
    8000910c:	00158593          	addi	a1,a1,1
    80009110:	fed78fa3          	sb	a3,-1(a5)
    80009114:	fee798e3          	bne	a5,a4,80009104 <__memmove+0x160>
    80009118:	f89ff06f          	j	800090a0 <__memmove+0xfc>
	...
