
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	f0813103          	ld	sp,-248(sp) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1ac070ef          	jal	ra,800071c8 <start>

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
    80001080:	77d010ef          	jal	ra,80002ffc <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	6b8080e7          	jalr	1720(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
//    thread_dispatch();
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
    80001710:	58478793          	addi	a5,a5,1412 # 8000cc90 <_ZTV3Sem+0x10>
    80001714:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    80001718:	00853503          	ld	a0,8(a0)
    8000171c:	00002097          	auipc	ra,0x2
    80001720:	ea8080e7          	jalr	-344(ra) # 800035c4 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    80001724:	0084b503          	ld	a0,8(s1)
    80001728:	00050663          	beqz	a0,80001734 <_ZN3SemD1Ev+0x40>
    8000172c:	00002097          	auipc	ra,0x2
    80001730:	d50080e7          	jalr	-688(ra) # 8000347c <_ZN10ThreadListdlEPv>
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
    80001764:	53078793          	addi	a5,a5,1328 # 8000cc90 <_ZTV3Sem+0x10>
    80001768:	00f53023          	sd	a5,0(a0)
    8000176c:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001770:	01000513          	li	a0,16
    80001774:	00002097          	auipc	ra,0x2
    80001778:	cd8080e7          	jalr	-808(ra) # 8000344c <_ZN10ThreadListnwEm>
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
    800017b8:	76c93903          	ld	s2,1900(s2) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    800017d8:	d00080e7          	jalr	-768(ra) # 800034d4 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	488080e7          	jalr	1160(ra) # 80002c64 <_ZN9Scheduler3getEv>
    800017e4:	00050593          	mv	a1,a0
    800017e8:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	f04080e7          	jalr	-252(ra) # 800036f4 <_ZN3TCB5yieldEPS_S0_>
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
    8000182c:	d3c080e7          	jalr	-708(ra) # 80003564 <_ZN10ThreadList12remove_firstEv>
    80001830:	00050493          	mv	s1,a0
    int STATUS = Scheduler::remove_from_sleep(thread);
    80001834:	00001097          	auipc	ra,0x1
    80001838:	49c080e7          	jalr	1180(ra) # 80002cd0 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    if (STATUS == -1) putc('!');
    8000183c:	fff00793          	li	a5,-1
    80001840:	02f50c63          	beq	a0,a5,80001878 <_ZN3Sem7unblockEv+0x68>
    thread -> clear_from_timed_wait(false);
    80001844:	00000593          	li	a1,0
    80001848:	00048513          	mv	a0,s1
    8000184c:	00002097          	auipc	ra,0x2
    80001850:	220080e7          	jalr	544(ra) # 80003a6c <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001854:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001858:	00048513          	mv	a0,s1
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	394080e7          	jalr	916(ra) # 80002bf0 <_ZN9Scheduler3putEP3TCB>
}
    80001864:	01813083          	ld	ra,24(sp)
    80001868:	01013403          	ld	s0,16(sp)
    8000186c:	00813483          	ld	s1,8(sp)
    80001870:	02010113          	addi	sp,sp,32
    80001874:	00008067          	ret
    if (STATUS == -1) putc('!');
    80001878:	02100513          	li	a0,33
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	df0080e7          	jalr	-528(ra) # 8000166c <_Z4putcc>
    80001884:	fc1ff06f          	j	80001844 <_ZN3Sem7unblockEv+0x34>

0000000080001888 <_ZN3Sem5closeEPS_>:
int Sem::close(Sem *handle) {
    80001888:	fe010113          	addi	sp,sp,-32
    8000188c:	00113c23          	sd	ra,24(sp)
    80001890:	00813823          	sd	s0,16(sp)
    80001894:	00913423          	sd	s1,8(sp)
    80001898:	02010413          	addi	s0,sp,32
    8000189c:	00050493          	mv	s1,a0
    if (!handle) return -1;
    800018a0:	04050663          	beqz	a0,800018ec <_ZN3Sem5closeEPS_+0x64>
    while (handle -> blocked_threads -> get_first()) handle -> unblock();
    800018a4:	0084b503          	ld	a0,8(s1)
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	b00080e7          	jalr	-1280(ra) # 800033a8 <_ZN10ThreadList9get_firstEv>
    800018b0:	00050a63          	beqz	a0,800018c4 <_ZN3Sem5closeEPS_+0x3c>
    800018b4:	00048513          	mv	a0,s1
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	f58080e7          	jalr	-168(ra) # 80001810 <_ZN3Sem7unblockEv>
    800018c0:	fe5ff06f          	j	800018a4 <_ZN3Sem5closeEPS_+0x1c>
    delete handle;
    800018c4:	0004b783          	ld	a5,0(s1)
    800018c8:	0087b783          	ld	a5,8(a5)
    800018cc:	00048513          	mv	a0,s1
    800018d0:	000780e7          	jalr	a5
    return 0;
    800018d4:	00000513          	li	a0,0
}
    800018d8:	01813083          	ld	ra,24(sp)
    800018dc:	01013403          	ld	s0,16(sp)
    800018e0:	00813483          	ld	s1,8(sp)
    800018e4:	02010113          	addi	sp,sp,32
    800018e8:	00008067          	ret
    if (!handle) return -1;
    800018ec:	fff00513          	li	a0,-1
    800018f0:	fe9ff06f          	j	800018d8 <_ZN3Sem5closeEPS_+0x50>

00000000800018f4 <_ZN3Sem4waitEPS_>:
    if (!handle) return -1;
    800018f4:	04050663          	beqz	a0,80001940 <_ZN3Sem4waitEPS_+0x4c>
    if (--handle -> value < 0) {
    800018f8:	01052783          	lw	a5,16(a0)
    800018fc:	fff7879b          	addiw	a5,a5,-1
    80001900:	00f52823          	sw	a5,16(a0)
    80001904:	02079713          	slli	a4,a5,0x20
    80001908:	00074663          	bltz	a4,80001914 <_ZN3Sem4waitEPS_+0x20>
    return 0;
    8000190c:	00000513          	li	a0,0
}
    80001910:	00008067          	ret
int Sem::wait(Sem *handle) {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
        handle -> block();
    80001924:	00000097          	auipc	ra,0x0
    80001928:	e78080e7          	jalr	-392(ra) # 8000179c <_ZN3Sem5blockEv>
    return 0;
    8000192c:	00000513          	li	a0,0
}
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    if (!handle) return -1;
    80001940:	fff00513          	li	a0,-1
    80001944:	00008067          	ret

0000000080001948 <_ZN3Sem6signalEPS_>:
    if (!handle) return -1;
    80001948:	04050663          	beqz	a0,80001994 <_ZN3Sem6signalEPS_+0x4c>
    if (++handle -> value <= 0) handle -> unblock();
    8000194c:	01052783          	lw	a5,16(a0)
    80001950:	0017879b          	addiw	a5,a5,1
    80001954:	0007871b          	sext.w	a4,a5
    80001958:	00f52823          	sw	a5,16(a0)
    8000195c:	00e05663          	blez	a4,80001968 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001960:	00000513          	li	a0,0
}
    80001964:	00008067          	ret
int Sem::signal(Sem *handle) {
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00113423          	sd	ra,8(sp)
    80001970:	00813023          	sd	s0,0(sp)
    80001974:	01010413          	addi	s0,sp,16
    if (++handle -> value <= 0) handle -> unblock();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	e98080e7          	jalr	-360(ra) # 80001810 <_ZN3Sem7unblockEv>
    return 0;
    80001980:	00000513          	li	a0,0
}
    80001984:	00813083          	ld	ra,8(sp)
    80001988:	00013403          	ld	s0,0(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret
    if (!handle) return -1;
    80001994:	fff00513          	li	a0,-1
    80001998:	00008067          	ret

000000008000199c <_ZN3Sem9timedWaitEPS_m>:
int Sem::timedWait(Sem *handle, time_t time) {
    8000199c:	fe010113          	addi	sp,sp,-32
    800019a0:	00113c23          	sd	ra,24(sp)
    800019a4:	00813823          	sd	s0,16(sp)
    800019a8:	00913423          	sd	s1,8(sp)
    800019ac:	01213023          	sd	s2,0(sp)
    800019b0:	02010413          	addi	s0,sp,32
    800019b4:	00050913          	mv	s2,a0
    800019b8:	00058513          	mv	a0,a1
    TCB *thread = TCB::running;
    800019bc:	0000b797          	auipc	a5,0xb
    800019c0:	5647b783          	ld	a5,1380(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    800019c4:	0007b483          	ld	s1,0(a5)
    thread -> timed_wait = true;
    800019c8:	00100793          	li	a5,1
    800019cc:	04f48423          	sb	a5,72(s1)
    Scheduler::put_to_sleep(time, false);
    800019d0:	00000593          	li	a1,0
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	41c080e7          	jalr	1052(ra) # 80002df0 <_ZN9Scheduler12put_to_sleepEmb>
    int status = wait(handle);
    800019dc:	00090513          	mv	a0,s2
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	f14080e7          	jalr	-236(ra) # 800018f4 <_ZN3Sem4waitEPS_>
    800019e8:	00050913          	mv	s2,a0
    int STATUS = Scheduler::remove_from_sleep(thread);
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	2e0080e7          	jalr	736(ra) # 80002cd0 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    if (STATUS == -1) putc('?');
    800019f8:	fff00793          	li	a5,-1
    800019fc:	04f50463          	beq	a0,a5,80001a44 <_ZN3Sem9timedWaitEPS_m+0xa8>
    thread -> clear_from_timed_wait(false);
    80001a00:	00000593          	li	a1,0
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	064080e7          	jalr	100(ra) # 80003a6c <_ZN3TCB21clear_from_timed_waitEb>
    if (thread -> time_to_sleep == 0) return -2;
    80001a10:	0504b783          	ld	a5,80(s1)
    80001a14:	04078063          	beqz	a5,80001a54 <_ZN3Sem9timedWaitEPS_m+0xb8>
    thread -> set_time_to_sleep(0);
    80001a18:	00000593          	li	a1,0
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	e2c080e7          	jalr	-468(ra) # 8000384c <_ZN3TCB17set_time_to_sleepEm>
}
    80001a28:	00090513          	mv	a0,s2
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	00013903          	ld	s2,0(sp)
    80001a3c:	02010113          	addi	sp,sp,32
    80001a40:	00008067          	ret
    if (STATUS == -1) putc('?');
    80001a44:	03f00513          	li	a0,63
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	c24080e7          	jalr	-988(ra) # 8000166c <_Z4putcc>
    80001a50:	fb1ff06f          	j	80001a00 <_ZN3Sem9timedWaitEPS_m+0x64>
    if (thread -> time_to_sleep == 0) return -2;
    80001a54:	ffe00913          	li	s2,-2
    80001a58:	fd1ff06f          	j	80001a28 <_ZN3Sem9timedWaitEPS_m+0x8c>

0000000080001a5c <_ZN3Sem7tryWaitEPS_>:
    if (handle -> value > 0) return wait(handle);
    80001a5c:	01052783          	lw	a5,16(a0)
    80001a60:	00f04663          	bgtz	a5,80001a6c <_ZN3Sem7tryWaitEPS_+0x10>
    return 1;
    80001a64:	00100513          	li	a0,1
}
    80001a68:	00008067          	ret
int Sem::tryWait(Sem *handle) {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    if (handle -> value > 0) return wait(handle);
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	e78080e7          	jalr	-392(ra) # 800018f4 <_ZN3Sem4waitEPS_>
}
    80001a84:	00813083          	ld	ra,8(sp)
    80001a88:	00013403          	ld	s0,0(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001a94:	ff010113          	addi	sp,sp,-16
    80001a98:	00113423          	sd	ra,8(sp)
    80001a9c:	00813023          	sd	s0,0(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	e80080e7          	jalr	-384(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	b70080e7          	jalr	-1168(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ab4:	00813083          	ld	ra,8(sp)
    80001ab8:	00013403          	ld	s0,0(sp)
    80001abc:	01010113          	addi	sp,sp,16
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZN3SemdlEPv>:

void Sem::operator delete(void *addr) {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	cbc080e7          	jalr	-836(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    80001aec:	fd010113          	addi	sp,sp,-48
    80001af0:	02113423          	sd	ra,40(sp)
    80001af4:	02813023          	sd	s0,32(sp)
    80001af8:	00913c23          	sd	s1,24(sp)
    80001afc:	01213823          	sd	s2,16(sp)
    80001b00:	01313423          	sd	s3,8(sp)
    80001b04:	03010413          	addi	s0,sp,48
    80001b08:	00050913          	mv	s2,a0
    80001b0c:	00058993          	mv	s3,a1
    *handle = new Sem(init);
    80001b10:	01800513          	li	a0,24
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	f80080e7          	jalr	-128(ra) # 80001a94 <_ZN3SemnwEm>
    80001b1c:	00050493          	mv	s1,a0
    80001b20:	00098593          	mv	a1,s3
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	c24080e7          	jalr	-988(ra) # 80001748 <_ZN3SemC1Ej>
    80001b2c:	00993023          	sd	s1,0(s2)
    if (!(*handle)) return -1;
    80001b30:	02048263          	beqz	s1,80001b54 <_ZN3Sem4openEPPS_j+0x68>
    return 0;
    80001b34:	00000513          	li	a0,0
}
    80001b38:	02813083          	ld	ra,40(sp)
    80001b3c:	02013403          	ld	s0,32(sp)
    80001b40:	01813483          	ld	s1,24(sp)
    80001b44:	01013903          	ld	s2,16(sp)
    80001b48:	00813983          	ld	s3,8(sp)
    80001b4c:	03010113          	addi	sp,sp,48
    80001b50:	00008067          	ret
    if (!(*handle)) return -1;
    80001b54:	fff00513          	li	a0,-1
    80001b58:	fe1ff06f          	j	80001b38 <_ZN3Sem4openEPPS_j+0x4c>
    80001b5c:	00050913          	mv	s2,a0
    *handle = new Sem(init);
    80001b60:	00048513          	mv	a0,s1
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	f60080e7          	jalr	-160(ra) # 80001ac4 <_ZN3SemdlEPv>
    80001b6c:	00090513          	mv	a0,s2
    80001b70:	0000c097          	auipc	ra,0xc
    80001b74:	5d8080e7          	jalr	1496(ra) # 8000e148 <_Unwind_Resume>

0000000080001b78 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	00913423          	sd	s1,8(sp)
    80001b88:	02010413          	addi	s0,sp,32
    80001b8c:	00050493          	mv	s1,a0
}
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	b64080e7          	jalr	-1180(ra) # 800016f4 <_ZN3SemD1Ev>
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	f28080e7          	jalr	-216(ra) # 80001ac4 <_ZN3SemdlEPv>
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret

0000000080001bb8 <_Z19kernelConsoleOutputPv>:
#include "../h/risc-v.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    80001bb8:	ff010113          	addi	sp,sp,-16
    80001bbc:	00113423          	sd	ra,8(sp)
    80001bc0:	00813023          	sd	s0,0(sp)
    80001bc4:	01010413          	addi	s0,sp,16
    80001bc8:	01c0006f          	j	80001be4 <_Z19kernelConsoleOutputPv+0x2c>
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            char c = Con::getc_output();
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	3ac080e7          	jalr	940(ra) # 80001f78 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001bd4:	0000b797          	auipc	a5,0xb
    80001bd8:	3247b783          	ld	a5,804(a5) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bdc:	0007b783          	ld	a5,0(a5)
    80001be0:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001be4:	0000b797          	auipc	a5,0xb
    80001be8:	2fc7b783          	ld	a5,764(a5) # 8000cee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001bec:	0007b783          	ld	a5,0(a5)
    80001bf0:	0007c783          	lbu	a5,0(a5)
    80001bf4:	0207f793          	andi	a5,a5,32
    80001bf8:	fc079ae3          	bnez	a5,80001bcc <_Z19kernelConsoleOutputPv+0x14>
        }
        /// if there isn't ready data, dispatch in order not to occupy CPU for the DEFAULT_TIME_SLICE
        thread_dispatch();
    80001bfc:	fffff097          	auipc	ra,0xfffff
    80001c00:	7d0080e7          	jalr	2000(ra) # 800013cc <_Z15thread_dispatchv>
    }
    80001c04:	fe1ff06f          	j	80001be4 <_Z19kernelConsoleOutputPv+0x2c>

0000000080001c08 <_Z6workerPv>:
    userMain();
}

sem_t sem;

void worker(void*) {
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	01213023          	sd	s2,0(sp)
    80001c1c:	02010413          	addi	s0,sp,32
    int i = 3;
    80001c20:	00300913          	li	s2,3
    80001c24:	0740006f          	j	80001c98 <_Z6workerPv+0x90>
    while (i > 0) {
        int id = get_thread_id();
        int status = sem_timedwait(sem, id);
        if (status == 0) {
            printString("\nUSAO ");
    80001c28:	00008517          	auipc	a0,0x8
    80001c2c:	3f850513          	addi	a0,a0,1016 # 8000a020 <CONSOLE_STATUS+0x10>
    80001c30:	00004097          	auipc	ra,0x4
    80001c34:	348080e7          	jalr	840(ra) # 80005f78 <_Z11printStringPKc>
            printInt(id);
    80001c38:	00000613          	li	a2,0
    80001c3c:	00a00593          	li	a1,10
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00004097          	auipc	ra,0x4
    80001c48:	4e4080e7          	jalr	1252(ra) # 80006128 <_Z8printIntiii>
            time_sleep(id);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	984080e7          	jalr	-1660(ra) # 800015d4 <_Z10time_sleepm>
            printString("\nIZASAO ");
    80001c58:	00008517          	auipc	a0,0x8
    80001c5c:	3d050513          	addi	a0,a0,976 # 8000a028 <CONSOLE_STATUS+0x18>
    80001c60:	00004097          	auipc	ra,0x4
    80001c64:	318080e7          	jalr	792(ra) # 80005f78 <_Z11printStringPKc>
            printInt(id);
    80001c68:	00000613          	li	a2,0
    80001c6c:	00a00593          	li	a1,10
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00004097          	auipc	ra,0x4
    80001c78:	4b4080e7          	jalr	1204(ra) # 80006128 <_Z8printIntiii>
            sem_signal(sem);
    80001c7c:	0000b517          	auipc	a0,0xb
    80001c80:	2f453503          	ld	a0,756(a0) # 8000cf70 <sem>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	86c080e7          	jalr	-1940(ra) # 800014f0 <_Z10sem_signalP3Sem>
            --i;
    80001c8c:	fff9091b          	addiw	s2,s2,-1
        }
        else if (status == -2) {
            printString("\nCEKAO ");
            printInt(id);
        }
        thread_dispatch();
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	73c080e7          	jalr	1852(ra) # 800013cc <_Z15thread_dispatchv>
    while (i > 0) {
    80001c98:	05205c63          	blez	s2,80001cf0 <_Z6workerPv+0xe8>
        int id = get_thread_id();
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	a0c080e7          	jalr	-1524(ra) # 800016a8 <_Z13get_thread_idv>
    80001ca4:	00050493          	mv	s1,a0
        int status = sem_timedwait(sem, id);
    80001ca8:	00050593          	mv	a1,a0
    80001cac:	0000b517          	auipc	a0,0xb
    80001cb0:	2c453503          	ld	a0,708(a0) # 8000cf70 <sem>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	888080e7          	jalr	-1912(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
        if (status == 0) {
    80001cbc:	f60506e3          	beqz	a0,80001c28 <_Z6workerPv+0x20>
        else if (status == -2) {
    80001cc0:	ffe00793          	li	a5,-2
    80001cc4:	fcf516e3          	bne	a0,a5,80001c90 <_Z6workerPv+0x88>
            printString("\nCEKAO ");
    80001cc8:	00008517          	auipc	a0,0x8
    80001ccc:	37050513          	addi	a0,a0,880 # 8000a038 <CONSOLE_STATUS+0x28>
    80001cd0:	00004097          	auipc	ra,0x4
    80001cd4:	2a8080e7          	jalr	680(ra) # 80005f78 <_Z11printStringPKc>
            printInt(id);
    80001cd8:	00000613          	li	a2,0
    80001cdc:	00a00593          	li	a1,10
    80001ce0:	00048513          	mv	a0,s1
    80001ce4:	00004097          	auipc	ra,0x4
    80001ce8:	444080e7          	jalr	1092(ra) # 80006128 <_Z8printIntiii>
    80001cec:	fa5ff06f          	j	80001c90 <_Z6workerPv+0x88>
    }
}
    80001cf0:	01813083          	ld	ra,24(sp)
    80001cf4:	01013403          	ld	s0,16(sp)
    80001cf8:	00813483          	ld	s1,8(sp)
    80001cfc:	00013903          	ld	s2,0(sp)
    80001d00:	02010113          	addi	sp,sp,32
    80001d04:	00008067          	ret

0000000080001d08 <_Z11userWrapperPv>:
void userWrapper(void *args) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    userMain();
    80001d18:	00005097          	auipc	ra,0x5
    80001d1c:	928080e7          	jalr	-1752(ra) # 80006640 <_Z8userMainv>
}
    80001d20:	00813083          	ld	ra,8(sp)
    80001d24:	00013403          	ld	s0,0(sp)
    80001d28:	01010113          	addi	sp,sp,16
    80001d2c:	00008067          	ret

0000000080001d30 <main>:

thread_t threads[12];

int main() {
    80001d30:	fe010113          	addi	sp,sp,-32
    80001d34:	00113c23          	sd	ra,24(sp)
    80001d38:	00813823          	sd	s0,16(sp)
    80001d3c:	00913423          	sd	s1,8(sp)
    80001d40:	01213023          	sd	s2,0(sp)
    80001d44:	02010413          	addi	s0,sp,32
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d48:	0000b797          	auipc	a5,0xb
    80001d4c:	1b87b783          	ld	a5,440(a5) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d50:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	bf0080e7          	jalr	-1040(ra) # 80002944 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	124080e7          	jalr	292(ra) # 80001e80 <_ZN3Con10initializeEv>

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001d64:	0000b497          	auipc	s1,0xb
    80001d68:	20c48493          	addi	s1,s1,524 # 8000cf70 <sem>
    80001d6c:	00000613          	li	a2,0
    80001d70:	00000593          	li	a1,0
    80001d74:	0000b517          	auipc	a0,0xb
    80001d78:	20450513          	addi	a0,a0,516 # 8000cf78 <threads>
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	57c080e7          	jalr	1404(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d84:	0084b703          	ld	a4,8(s1)
    80001d88:	0000b797          	auipc	a5,0xb
    80001d8c:	1987b783          	ld	a5,408(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d90:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d94:	00200793          	li	a5,2
    80001d98:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d9c:	00000613          	li	a2,0
    80001da0:	00000597          	auipc	a1,0x0
    80001da4:	e1858593          	addi	a1,a1,-488 # 80001bb8 <_Z19kernelConsoleOutputPv>
    80001da8:	0000b517          	auipc	a0,0xb
    80001dac:	1d850513          	addi	a0,a0,472 # 8000cf80 <threads+0x8>
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	548080e7          	jalr	1352(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    sem_open(&sem, 1);
    80001db8:	00100593          	li	a1,1
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	648080e7          	jalr	1608(ra) # 80001408 <_Z8sem_openPP3Semj>
    for (int i = 2; i < 12; ++i) thread_create(&threads[i], worker, nullptr);
    80001dc8:	00200493          	li	s1,2
    80001dcc:	00b00793          	li	a5,11
    80001dd0:	0297c863          	blt	a5,s1,80001e00 <main+0xd0>
    80001dd4:	00349793          	slli	a5,s1,0x3
    80001dd8:	00000613          	li	a2,0
    80001ddc:	00000597          	auipc	a1,0x0
    80001de0:	e2c58593          	addi	a1,a1,-468 # 80001c08 <_Z6workerPv>
    80001de4:	0000b517          	auipc	a0,0xb
    80001de8:	19450513          	addi	a0,a0,404 # 8000cf78 <threads>
    80001dec:	00f50533          	add	a0,a0,a5
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	508080e7          	jalr	1288(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    80001df8:	0014849b          	addiw	s1,s1,1
    80001dfc:	fd1ff06f          	j	80001dcc <main+0x9c>

    while (true) {
        bool flag = false;
        for (int i = 2; i < 12; ++i) if (!threads[i] -> is_finished()) {
    80001e00:	00200493          	li	s1,2
        bool flag = false;
    80001e04:	00000913          	li	s2,0
    80001e08:	0140006f          	j	80001e1c <main+0xec>
            thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	5c0080e7          	jalr	1472(ra) # 800013cc <_Z15thread_dispatchv>
            flag = true;
    80001e14:	00100913          	li	s2,1
        for (int i = 2; i < 12; ++i) if (!threads[i] -> is_finished()) {
    80001e18:	0014849b          	addiw	s1,s1,1
    80001e1c:	00b00793          	li	a5,11
    80001e20:	0297c463          	blt	a5,s1,80001e48 <main+0x118>
    80001e24:	00349713          	slli	a4,s1,0x3
    80001e28:	0000b797          	auipc	a5,0xb
    80001e2c:	14878793          	addi	a5,a5,328 # 8000cf70 <sem>
    80001e30:	00e787b3          	add	a5,a5,a4
    80001e34:	0087b503          	ld	a0,8(a5)
    80001e38:	00002097          	auipc	ra,0x2
    80001e3c:	c10080e7          	jalr	-1008(ra) # 80003a48 <_ZNK3TCB11is_finishedEv>
    80001e40:	fc051ce3          	bnez	a0,80001e18 <main+0xe8>
    80001e44:	fc9ff06f          	j	80001e0c <main+0xdc>
        }
        if (!flag) break;
    80001e48:	fa091ce3          	bnez	s2,80001e00 <main+0xd0>
    }
    while (!Con::isOutputBufferEmpty()) thread_dispatch();
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	1c0080e7          	jalr	448(ra) # 8000200c <_ZN3Con19isOutputBufferEmptyEv>
    80001e54:	00051863          	bnez	a0,80001e64 <main+0x134>
    80001e58:	fffff097          	auipc	ra,0xfffff
    80001e5c:	574080e7          	jalr	1396(ra) # 800013cc <_Z15thread_dispatchv>
    80001e60:	fedff06f          	j	80001e4c <main+0x11c>

    return 0;
    80001e64:	00000513          	li	a0,0
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	00813483          	ld	s1,8(sp)
    80001e74:	00013903          	ld	s2,0(sp)
    80001e78:	02010113          	addi	sp,sp,32
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001e80:	0000b797          	auipc	a5,0xb
    80001e84:	1587c783          	lbu	a5,344(a5) # 8000cfd8 <_ZN3Con11initializedE>
    80001e88:	00078463          	beqz	a5,80001e90 <_ZN3Con10initializeEv+0x10>
    80001e8c:	00008067          	ret
void Con::initialize() {
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	01213023          	sd	s2,0(sp)
    80001ea4:	02010413          	addi	s0,sp,32
        initialized = true;
    80001ea8:	00100793          	li	a5,1
    80001eac:	0000b717          	auipc	a4,0xb
    80001eb0:	12f70623          	sb	a5,300(a4) # 8000cfd8 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001eb4:	21000513          	li	a0,528
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	bac080e7          	jalr	-1108(ra) # 80002a64 <_ZN13BoundedBuffernwEm>
    80001ec0:	00050493          	mv	s1,a0
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	b08080e7          	jalr	-1272(ra) # 800029cc <_ZN13BoundedBufferC1Ev>
    80001ecc:	0000b797          	auipc	a5,0xb
    80001ed0:	1097ba23          	sd	s1,276(a5) # 8000cfe0 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001ed4:	21000513          	li	a0,528
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	b8c080e7          	jalr	-1140(ra) # 80002a64 <_ZN13BoundedBuffernwEm>
    80001ee0:	00050493          	mv	s1,a0
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	ae8080e7          	jalr	-1304(ra) # 800029cc <_ZN13BoundedBufferC1Ev>
    80001eec:	0000b797          	auipc	a5,0xb
    80001ef0:	0e97be23          	sd	s1,252(a5) # 8000cfe8 <_ZN3Con13output_bufferE>
    }
}
    80001ef4:	01813083          	ld	ra,24(sp)
    80001ef8:	01013403          	ld	s0,16(sp)
    80001efc:	00813483          	ld	s1,8(sp)
    80001f00:	00013903          	ld	s2,0(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret
    80001f0c:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001f10:	00048513          	mv	a0,s1
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	b80080e7          	jalr	-1152(ra) # 80002a94 <_ZN13BoundedBufferdlEPv>
    80001f1c:	00090513          	mv	a0,s2
    80001f20:	0000c097          	auipc	ra,0xc
    80001f24:	228080e7          	jalr	552(ra) # 8000e148 <_Unwind_Resume>
    80001f28:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	b64080e7          	jalr	-1180(ra) # 80002a94 <_ZN13BoundedBufferdlEPv>
    80001f38:	00090513          	mv	a0,s2
    80001f3c:	0000c097          	auipc	ra,0xc
    80001f40:	20c080e7          	jalr	524(ra) # 8000e148 <_Unwind_Resume>

0000000080001f44 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001f58:	0000b517          	auipc	a0,0xb
    80001f5c:	09053503          	ld	a0,144(a0) # 8000cfe8 <_ZN3Con13output_bufferE>
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	b5c080e7          	jalr	-1188(ra) # 80002abc <_ZN13BoundedBuffer4putcEc>
}
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001f78:	ff010113          	addi	sp,sp,-16
    80001f7c:	00113423          	sd	ra,8(sp)
    80001f80:	00813023          	sd	s0,0(sp)
    80001f84:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001f88:	0000b517          	auipc	a0,0xb
    80001f8c:	06053503          	ld	a0,96(a0) # 8000cfe8 <_ZN3Con13output_bufferE>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	b98080e7          	jalr	-1128(ra) # 80002b28 <_ZN13BoundedBuffer4getcEv>
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    80001fb8:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001fbc:	0000b517          	auipc	a0,0xb
    80001fc0:	02453503          	ld	a0,36(a0) # 8000cfe0 <_ZN3Con12input_bufferE>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	af8080e7          	jalr	-1288(ra) # 80002abc <_ZN13BoundedBuffer4putcEc>
}
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001fec:	0000b517          	auipc	a0,0xb
    80001ff0:	ff453503          	ld	a0,-12(a0) # 8000cfe0 <_ZN3Con12input_bufferE>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	b34080e7          	jalr	-1228(ra) # 80002b28 <_ZN13BoundedBuffer4getcEv>
}
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN3Con19isOutputBufferEmptyEv>:

bool Con::isOutputBufferEmpty() {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00113423          	sd	ra,8(sp)
    80002014:	00813023          	sd	s0,0(sp)
    80002018:	01010413          	addi	s0,sp,16
    return output_buffer -> isEmpty();
    8000201c:	0000b517          	auipc	a0,0xb
    80002020:	fcc53503          	ld	a0,-52(a0) # 8000cfe8 <_ZN3Con13output_bufferE>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	b70080e7          	jalr	-1168(ra) # 80002b94 <_ZN13BoundedBuffer7isEmptyEv>
}
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN3Con18isOutputBufferFullEv>:

bool Con::isOutputBufferFull() {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    return output_buffer -> isFull();
    8000204c:	0000b517          	auipc	a0,0xb
    80002050:	f9c53503          	ld	a0,-100(a0) # 8000cfe8 <_ZN3Con13output_bufferE>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	b68080e7          	jalr	-1176(ra) # 80002bbc <_ZN13BoundedBuffer6isFullEv>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    8000207c:	01053783          	ld	a5,16(a0)
    80002080:	00078e63          	beqz	a5,8000209c <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80002084:	01853503          	ld	a0,24(a0)
    80002088:	000780e7          	jalr	a5
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret
    if (!thread -> body) thread -> run();
    8000209c:	00053783          	ld	a5,0(a0)
    800020a0:	0107b783          	ld	a5,16(a5)
    800020a4:	000780e7          	jalr	a5
    800020a8:	fe5ff06f          	j	8000208c <_ZN6Thread12start_helperEPv+0x20>

00000000800020ac <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800020ac:	fe010113          	addi	sp,sp,-32
    800020b0:	00113c23          	sd	ra,24(sp)
    800020b4:	00813823          	sd	s0,16(sp)
    800020b8:	00913423          	sd	s1,8(sp)
    800020bc:	02010413          	addi	s0,sp,32
    800020c0:	00050493          	mv	s1,a0
    800020c4:	0000b797          	auipc	a5,0xb
    800020c8:	bf478793          	addi	a5,a5,-1036 # 8000ccb8 <_ZTV6Thread+0x10>
    800020cc:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    800020d0:	00853503          	ld	a0,8(a0)
    800020d4:	00002097          	auipc	ra,0x2
    800020d8:	974080e7          	jalr	-1676(ra) # 80003a48 <_ZNK3TCB11is_finishedEv>
    800020dc:	00050a63          	beqz	a0,800020f0 <_ZN6ThreadD1Ev+0x44>
    800020e0:	0084b503          	ld	a0,8(s1)
    800020e4:	00050663          	beqz	a0,800020f0 <_ZN6ThreadD1Ev+0x44>
    800020e8:	00002097          	auipc	ra,0x2
    800020ec:	834080e7          	jalr	-1996(ra) # 8000391c <_ZN3TCBdlEPv>
}
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret

0000000080002104 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = period;
}

void PeriodicThread::run() {
    80002104:	fe010113          	addi	sp,sp,-32
    80002108:	00113c23          	sd	ra,24(sp)
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	02010413          	addi	s0,sp,32
    80002118:	00050493          	mv	s1,a0
    while (period != (time_t) -1) {
    8000211c:	0204b703          	ld	a4,32(s1)
    80002120:	fff00793          	li	a5,-1
    80002124:	02f70263          	beq	a4,a5,80002148 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80002128:	0004b783          	ld	a5,0(s1)
    8000212c:	0187b783          	ld	a5,24(a5)
    80002130:	00048513          	mv	a0,s1
    80002134:	000780e7          	jalr	a5
        time_sleep(period);
    80002138:	0204b503          	ld	a0,32(s1)
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	498080e7          	jalr	1176(ra) # 800015d4 <_Z10time_sleepm>
    while (period != (time_t) -1) {
    80002144:	fd9ff06f          	j	8000211c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret

000000008000215c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    8000215c:	0000b797          	auipc	a5,0xb
    80002160:	b8478793          	addi	a5,a5,-1148 # 8000cce0 <_ZTV9Semaphore+0x10>
    80002164:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002168:	00853503          	ld	a0,8(a0)
    8000216c:	02050663          	beqz	a0,80002198 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	2d8080e7          	jalr	728(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret
    80002198:	00008067          	ret

000000008000219c <_Znwm>:
void* operator new(size_t size){
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	0ac080e7          	jalr	172(ra) # 80001258 <_Z9mem_allocm>
}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZdlPv>:
void operator delete(void* p) noexcept {
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00113423          	sd	ra,8(sp)
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	0d8080e7          	jalr	216(ra) # 800012ac <_Z8mem_freePv>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    80002200:	00050493          	mv	s1,a0
}
    80002204:	00000097          	auipc	ra,0x0
    80002208:	ea8080e7          	jalr	-344(ra) # 800020ac <_ZN6ThreadD1Ev>
    8000220c:	00048513          	mv	a0,s1
    80002210:	00000097          	auipc	ra,0x0
    80002214:	fb4080e7          	jalr	-76(ra) # 800021c4 <_ZdlPv>
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000222c:	fe010113          	addi	sp,sp,-32
    80002230:	00113c23          	sd	ra,24(sp)
    80002234:	00813823          	sd	s0,16(sp)
    80002238:	00913423          	sd	s1,8(sp)
    8000223c:	02010413          	addi	s0,sp,32
    80002240:	00050493          	mv	s1,a0
}
    80002244:	00000097          	auipc	ra,0x0
    80002248:	f18080e7          	jalr	-232(ra) # 8000215c <_ZN9SemaphoreD1Ev>
    8000224c:	00048513          	mv	a0,s1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	f74080e7          	jalr	-140(ra) # 800021c4 <_ZdlPv>
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	02010113          	addi	sp,sp,32
    80002268:	00008067          	ret

000000008000226c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000226c:	ff010113          	addi	sp,sp,-16
    80002270:	00813423          	sd	s0,8(sp)
    80002274:	01010413          	addi	s0,sp,16
    80002278:	0000b797          	auipc	a5,0xb
    8000227c:	a4078793          	addi	a5,a5,-1472 # 8000ccb8 <_ZTV6Thread+0x10>
    80002280:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002284:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002288:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    8000228c:	00c53c23          	sd	a2,24(a0)
}
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	0000b797          	auipc	a5,0xb
    800022ac:	a1078793          	addi	a5,a5,-1520 # 8000ccb8 <_ZTV6Thread+0x10>
    800022b0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800022b4:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800022b8:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800022bc:	00053c23          	sd	zero,24(a0)
}
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN6Thread5startEv>:
int Thread::start() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    800022dc:	00050613          	mv	a2,a0
    800022e0:	00000597          	auipc	a1,0x0
    800022e4:	d8c58593          	addi	a1,a1,-628 # 8000206c <_ZN6Thread12start_helperEPv>
    800022e8:	00850513          	addi	a0,a0,8
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	00c080e7          	jalr	12(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800022f4:	00813083          	ld	ra,8(sp)
    800022f8:	00013403          	ld	s0,0(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00113423          	sd	ra,8(sp)
    8000230c:	00813023          	sd	s0,0(sp)
    80002310:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	0b8080e7          	jalr	184(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	298080e7          	jalr	664(ra) # 800015d4 <_Z10time_sleepm>
}
    80002344:	00813083          	ld	ra,8(sp)
    80002348:	00013403          	ld	s0,0(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00113423          	sd	ra,8(sp)
    8000235c:	00813023          	sd	s0,0(sp)
    80002360:	01010413          	addi	s0,sp,16
    80002364:	0000b797          	auipc	a5,0xb
    80002368:	97c78793          	addi	a5,a5,-1668 # 8000cce0 <_ZTV9Semaphore+0x10>
    8000236c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002370:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002374:	00850513          	addi	a0,a0,8
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	090080e7          	jalr	144(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002380:	00813083          	ld	ra,8(sp)
    80002384:	00013403          	ld	s0,0(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002390:	00853503          	ld	a0,8(a0)
    80002394:	02050663          	beqz	a0,800023c0 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	0fc080e7          	jalr	252(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret
    return -1;
    800023c0:	fff00513          	li	a0,-1
}
    800023c4:	00008067          	ret

00000000800023c8 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    800023c8:	00853503          	ld	a0,8(a0)
    800023cc:	02050663          	beqz	a0,800023f8 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	110080e7          	jalr	272(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret
    return -1;
    800023f8:	fff00513          	li	a0,-1
}
    800023fc:	00008067          	ret

0000000080002400 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00113423          	sd	ra,8(sp)
    80002408:	00813023          	sd	s0,0(sp)
    8000240c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002410:	00853503          	ld	a0,8(a0)
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	128080e7          	jalr	296(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00113423          	sd	ra,8(sp)
    80002434:	00813023          	sd	s0,0(sp)
    80002438:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    8000243c:	00853503          	ld	a0,8(a0)
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	148080e7          	jalr	328(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00813423          	sd	s0,8(sp)
    80002460:	01010413          	addi	s0,sp,16
    period = (time_t) -1;
    80002464:	fff00793          	li	a5,-1
    80002468:	02f53023          	sd	a5,32(a0)
}
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	01213023          	sd	s2,0(sp)
    8000248c:	02010413          	addi	s0,sp,32
    80002490:	00050493          	mv	s1,a0
    80002494:	00058913          	mv	s2,a1
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	e04080e7          	jalr	-508(ra) # 8000229c <_ZN6ThreadC1Ev>
    800024a0:	0000b797          	auipc	a5,0xb
    800024a4:	86078793          	addi	a5,a5,-1952 # 8000cd00 <_ZTV14PeriodicThread+0x10>
    800024a8:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    800024ac:	0324b023          	sd	s2,32(s1)
}
    800024b0:	01813083          	ld	ra,24(sp)
    800024b4:	01013403          	ld	s0,16(sp)
    800024b8:	00813483          	ld	s1,8(sp)
    800024bc:	00013903          	ld	s2,0(sp)
    800024c0:	02010113          	addi	sp,sp,32
    800024c4:	00008067          	ret

00000000800024c8 <_ZN7Console4getcEv>:

char Console::getc() {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    return ::getc();
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	148080e7          	jalr	328(ra) # 80001620 <_Z4getcv>
}
    800024e0:	00813083          	ld	ra,8(sp)
    800024e4:	00013403          	ld	s0,0(sp)
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret

00000000800024f0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00113423          	sd	ra,8(sp)
    800024f8:	00813023          	sd	s0,0(sp)
    800024fc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	16c080e7          	jalr	364(ra) # 8000166c <_Z4putcc>
}
    80002508:	00813083          	ld	ra,8(sp)
    8000250c:	00013403          	ld	s0,0(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    virtual void run() override;
    virtual void periodicActivation () {}
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	0000a797          	auipc	a5,0xa
    8000255c:	7a878793          	addi	a5,a5,1960 # 8000cd00 <_ZTV14PeriodicThread+0x10>
    80002560:	00f53023          	sd	a5,0(a0)
    80002564:	00000097          	auipc	ra,0x0
    80002568:	b48080e7          	jalr	-1208(ra) # 800020ac <_ZN6ThreadD1Ev>
    8000256c:	00813083          	ld	ra,8(sp)
    80002570:	00013403          	ld	s0,0(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <_ZN14PeriodicThreadD0Ev>:
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00113c23          	sd	ra,24(sp)
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00913423          	sd	s1,8(sp)
    8000258c:	02010413          	addi	s0,sp,32
    80002590:	00050493          	mv	s1,a0
    80002594:	0000a797          	auipc	a5,0xa
    80002598:	76c78793          	addi	a5,a5,1900 # 8000cd00 <_ZTV14PeriodicThread+0x10>
    8000259c:	00f53023          	sd	a5,0(a0)
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	b0c080e7          	jalr	-1268(ra) # 800020ac <_ZN6ThreadD1Ev>
    800025a8:	00048513          	mv	a0,s1
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	c18080e7          	jalr	-1000(ra) # 800021c4 <_ZdlPv>
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret

00000000800025c8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    800025d4:	00853783          	ld	a5,8(a0)
    800025d8:	02078463          	beqz	a5,80002600 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    800025dc:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    800025e0:	01053783          	ld	a5,16(a0)
    800025e4:	00078863          	beqz	a5,800025f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    800025e8:	00061463          	bnez	a2,800025f0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    800025ec:	00853583          	ld	a1,8(a0)
    800025f0:	00b7b423          	sd	a1,8(a5)
}
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    80002600:	00068863          	beqz	a3,80002610 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    80002604:	0000b797          	auipc	a5,0xb
    80002608:	9eb7b623          	sd	a1,-1556(a5) # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
    8000260c:	fd5ff06f          	j	800025e0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    80002610:	0000b797          	auipc	a5,0xb
    80002614:	9eb7b423          	sd	a1,-1560(a5) # 8000cff8 <_ZN15MemoryAllocator11usedSegHeadE>
    80002618:	fc9ff06f          	j	800025e0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

000000008000261c <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    8000261c:	fe010113          	addi	sp,sp,-32
    80002620:	00113c23          	sd	ra,24(sp)
    80002624:	00813823          	sd	s0,16(sp)
    80002628:	00913423          	sd	s1,8(sp)
    8000262c:	01213023          	sd	s2,0(sp)
    80002630:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002634:	10050263          	beqz	a0,80002738 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002638:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    8000263c:	0000b497          	auipc	s1,0xb
    80002640:	9b44b483          	ld	s1,-1612(s1) # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80002644:	0c048263          	beqz	s1,80002708 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    80002648:	0004b783          	ld	a5,0(s1)
    8000264c:	0527e663          	bltu	a5,s2,80002698 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    80002650:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    80002654:	01800713          	li	a4,24
    80002658:	04f76463          	bltu	a4,a5,800026a0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    8000265c:	00100693          	li	a3,1
    80002660:	00000613          	li	a2,0
    80002664:	0104b583          	ld	a1,16(s1)
    80002668:	00048513          	mv	a0,s1
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	f5c080e7          	jalr	-164(ra) # 800025c8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80002674:	0000b797          	auipc	a5,0xb
    80002678:	9847b783          	ld	a5,-1660(a5) # 8000cff8 <_ZN15MemoryAllocator11usedSegHeadE>
    8000267c:	04078a63          	beqz	a5,800026d0 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002680:	0497fc63          	bgeu	a5,s1,800026d8 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002684:	00078713          	mv	a4,a5
    80002688:	0107b783          	ld	a5,16(a5)
    8000268c:	04078863          	beqz	a5,800026dc <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002690:	fe97eae3          	bltu	a5,s1,80002684 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80002694:	0480006f          	j	800026dc <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    80002698:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    8000269c:	fa9ff06f          	j	80002644 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800026a0:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800026a4:	0084b703          	ld	a4,8(s1)
    800026a8:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800026ac:	0104b703          	ld	a4,16(s1)
    800026b0:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800026b4:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    800026b8:	00100693          	li	a3,1
    800026bc:	00100613          	li	a2,1
    800026c0:	00048513          	mv	a0,s1
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	f04080e7          	jalr	-252(ra) # 800025c8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    800026cc:	fa9ff06f          	j	80002674 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    800026d0:	00078713          	mv	a4,a5
    800026d4:	0080006f          	j	800026dc <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800026d8:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    800026dc:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    800026e0:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800026e4:	04070063          	beqz	a4,80002724 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    800026e8:	01073783          	ld	a5,16(a4)
    800026ec:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    800026f0:	02070e63          	beqz	a4,8000272c <_ZN15MemoryAllocator9mem_allocEm+0x110>
    800026f4:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800026f8:	0104b783          	ld	a5,16(s1)
    800026fc:	00078463          	beqz	a5,80002704 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002700:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002704:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002708:	00048513          	mv	a0,s1
    8000270c:	01813083          	ld	ra,24(sp)
    80002710:	01013403          	ld	s0,16(sp)
    80002714:	00813483          	ld	s1,8(sp)
    80002718:	00013903          	ld	s2,0(sp)
    8000271c:	02010113          	addi	sp,sp,32
    80002720:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002724:	00070793          	mv	a5,a4
    80002728:	fc5ff06f          	j	800026ec <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    8000272c:	0000b797          	auipc	a5,0xb
    80002730:	8c97b623          	sd	s1,-1844(a5) # 8000cff8 <_ZN15MemoryAllocator11usedSegHeadE>
    80002734:	fc5ff06f          	j	800026f8 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002738:	00000493          	li	s1,0
    8000273c:	fcdff06f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0xec>

0000000080002740 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00813423          	sd	s0,8(sp)
    80002748:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    8000274c:	01053783          	ld	a5,16(a0)
    80002750:	00078863          	beqz	a5,80002760 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002754:	00053703          	ld	a4,0(a0)
    80002758:	00e506b3          	add	a3,a0,a4
    8000275c:	00d78863          	beq	a5,a3,8000276c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    8000276c:	0007b683          	ld	a3,0(a5)
    80002770:	00d70733          	add	a4,a4,a3
    80002774:	01870713          	addi	a4,a4,24
    80002778:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    8000277c:	0107b783          	ld	a5,16(a5)
    80002780:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    80002784:	fc078ee3          	beqz	a5,80002760 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002788:	00a7b423          	sd	a0,8(a5)
}
    8000278c:	fd5ff06f          	j	80002760 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002790 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002790:	14050a63          	beqz	a0,800028e4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    80002794:	fd010113          	addi	sp,sp,-48
    80002798:	02113423          	sd	ra,40(sp)
    8000279c:	02813023          	sd	s0,32(sp)
    800027a0:	00913c23          	sd	s1,24(sp)
    800027a4:	01213823          	sd	s2,16(sp)
    800027a8:	01313423          	sd	s3,8(sp)
    800027ac:	03010413          	addi	s0,sp,48
    800027b0:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800027b4:	0000a797          	auipc	a5,0xa
    800027b8:	7347b783          	ld	a5,1844(a5) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027bc:	0007b783          	ld	a5,0(a5)
    800027c0:	12f56663          	bltu	a0,a5,800028ec <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    800027c4:	0000a797          	auipc	a5,0xa
    800027c8:	7647b783          	ld	a5,1892(a5) # 8000cf28 <_GLOBAL_OFFSET_TABLE_+0x58>
    800027cc:	0007b783          	ld	a5,0(a5)
    800027d0:	12a7e263          	bltu	a5,a0,800028f4 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    800027d4:	0000b797          	auipc	a5,0xb
    800027d8:	8247b783          	ld	a5,-2012(a5) # 8000cff8 <_ZN15MemoryAllocator11usedSegHeadE>
    800027dc:	12078063          	beqz	a5,800028fc <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    800027e0:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800027e4:	00078863          	beqz	a5,800027f4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    800027e8:	0a978663          	beq	a5,s1,80002894 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    800027ec:	0107b783          	ld	a5,16(a5)
    800027f0:	ff5ff06f          	j	800027e4 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    800027f4:	00000793          	li	a5,0
    if (!found) return -3;
    800027f8:	10078663          	beqz	a5,80002904 <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    800027fc:	00000693          	li	a3,0
    80002800:	00000613          	li	a2,0
    80002804:	ff893583          	ld	a1,-8(s2)
    80002808:	00048513          	mv	a0,s1
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	dbc080e7          	jalr	-580(ra) # 800025c8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    80002814:	fe893783          	ld	a5,-24(s2)
    80002818:	01878793          	addi	a5,a5,24
    8000281c:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    80002820:	0000a797          	auipc	a5,0xa
    80002824:	7d07b783          	ld	a5,2000(a5) # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
    80002828:	06078a63          	beqz	a5,8000289c <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    8000282c:	08f4e463          	bltu	s1,a5,800028b4 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    80002830:	00078993          	mv	s3,a5
    80002834:	0107b783          	ld	a5,16(a5)
    80002838:	00078463          	beqz	a5,80002840 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    8000283c:	fe97eae3          	bltu	a5,s1,80002830 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    80002840:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002844:	0109b783          	ld	a5,16(s3)
    80002848:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    8000284c:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    80002850:	ff893783          	ld	a5,-8(s2)
    80002854:	00078463          	beqz	a5,8000285c <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002858:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    8000285c:	00048513          	mv	a0,s1
    80002860:	00000097          	auipc	ra,0x0
    80002864:	ee0080e7          	jalr	-288(ra) # 80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002868:	00098513          	mv	a0,s3
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	ed4080e7          	jalr	-300(ra) # 80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002874:	00000513          	li	a0,0
}
    80002878:	02813083          	ld	ra,40(sp)
    8000287c:	02013403          	ld	s0,32(sp)
    80002880:	01813483          	ld	s1,24(sp)
    80002884:	01013903          	ld	s2,16(sp)
    80002888:	00813983          	ld	s3,8(sp)
    8000288c:	03010113          	addi	sp,sp,48
    80002890:	00008067          	ret
            found = true;
    80002894:	00100793          	li	a5,1
    80002898:	f61ff06f          	j	800027f8 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    8000289c:	0000a797          	auipc	a5,0xa
    800028a0:	7497ba23          	sd	s1,1876(a5) # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800028a4:	fe093c23          	sd	zero,-8(s2)
    800028a8:	fe093823          	sd	zero,-16(s2)
    return 0;
    800028ac:	00000513          	li	a0,0
    800028b0:	fc9ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    800028b4:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800028b8:	0000a797          	auipc	a5,0xa
    800028bc:	73878793          	addi	a5,a5,1848 # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
    800028c0:	0007b703          	ld	a4,0(a5)
    800028c4:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800028c8:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800028cc:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	e6c080e7          	jalr	-404(ra) # 80002740 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800028dc:	00000513          	li	a0,0
    800028e0:	f99ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800028e4:	fff00513          	li	a0,-1
}
    800028e8:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800028ec:	fff00513          	li	a0,-1
    800028f0:	f89ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800028f4:	fff00513          	li	a0,-1
    800028f8:	f81ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    800028fc:	ffe00513          	li	a0,-2
    80002900:	f79ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    80002904:	ffd00513          	li	a0,-3
    80002908:	f71ff06f          	j	80002878 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

000000008000290c <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
//    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
//        printNumber(tmp -> size);
//        putc(' ');
//        putc('u');
//    }
}
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00813423          	sd	s0,8(sp)
    8000292c:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002930:	05750513          	addi	a0,a0,87
}
    80002934:	00655513          	srli	a0,a0,0x6
    80002938:	00813403          	ld	s0,8(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002944:	0000a797          	auipc	a5,0xa
    80002948:	6bc7b783          	ld	a5,1724(a5) # 8000d000 <_ZN15MemoryAllocator8instanceE>
    8000294c:	00078463          	beqz	a5,80002954 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002950:	00008067          	ret
void MemoryAllocator::initialize() {
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002968:	0000a797          	auipc	a5,0xa
    8000296c:	5807b783          	ld	a5,1408(a5) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002970:	0007b783          	ld	a5,0(a5)
    80002974:	0000a497          	auipc	s1,0xa
    80002978:	67c48493          	addi	s1,s1,1660 # 8000cff0 <_ZN15MemoryAllocator11freeSegHeadE>
    8000297c:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002980:	0000a717          	auipc	a4,0xa
    80002984:	5a873703          	ld	a4,1448(a4) # 8000cf28 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002988:	00073703          	ld	a4,0(a4)
    8000298c:	40f70733          	sub	a4,a4,a5
    80002990:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    80002994:	0004b783          	ld	a5,0(s1)
    80002998:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    8000299c:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800029a0:	00100513          	li	a0,1
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	f80080e7          	jalr	-128(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	c70080e7          	jalr	-912(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
    800029b4:	00a4b823          	sd	a0,16(s1)
}
    800029b8:	01813083          	ld	ra,24(sp)
    800029bc:	01013403          	ld	s0,16(sp)
    800029c0:	00813483          	ld	s1,8(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret

00000000800029cc <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_buffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00113c23          	sd	ra,24(sp)
    800029d4:	00813823          	sd	s0,16(sp)
    800029d8:	00913423          	sd	s1,8(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00050493          	mv	s1,a0
    800029e4:	00052023          	sw	zero,0(a0)
    800029e8:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    800029ec:	00000593          	li	a1,0
    800029f0:	01050513          	addi	a0,a0,16
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	0f8080e7          	jalr	248(ra) # 80001aec <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800029fc:	1f400593          	li	a1,500
    80002a00:	00848513          	addi	a0,s1,8
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	0e8080e7          	jalr	232(ra) # 80001aec <_ZN3Sem4openEPPS_j>
}
    80002a0c:	01813083          	ld	ra,24(sp)
    80002a10:	01013403          	ld	s0,16(sp)
    80002a14:	00813483          	ld	s1,8(sp)
    80002a18:	02010113          	addi	sp,sp,32
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	02010413          	addi	s0,sp,32
    80002a34:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002a38:	01053503          	ld	a0,16(a0)
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	e4c080e7          	jalr	-436(ra) # 80001888 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002a44:	0084b503          	ld	a0,8(s1)
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	e40080e7          	jalr	-448(ra) # 80001888 <_ZN3Sem5closeEPS_>
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret

0000000080002a64 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	eb0080e7          	jalr	-336(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	ba0080e7          	jalr	-1120(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	cec080e7          	jalr	-788(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	01213023          	sd	s2,0(sp)
    80002ad0:	02010413          	addi	s0,sp,32
    80002ad4:	00050493          	mv	s1,a0
    80002ad8:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002adc:	00853503          	ld	a0,8(a0)
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	e14080e7          	jalr	-492(ra) # 800018f4 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002ae8:	0044a783          	lw	a5,4(s1)
    80002aec:	00f48733          	add	a4,s1,a5
    80002af0:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002af4:	0017879b          	addiw	a5,a5,1
    80002af8:	1f400713          	li	a4,500
    80002afc:	02e7e7bb          	remw	a5,a5,a4
    80002b00:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002b04:	0104b503          	ld	a0,16(s1)
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	e40080e7          	jalr	-448(ra) # 80001948 <_ZN3Sem6signalEPS_>
}
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret

0000000080002b28 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002b28:	fe010113          	addi	sp,sp,-32
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	01213023          	sd	s2,0(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    80002b40:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002b44:	01053503          	ld	a0,16(a0)
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	dac080e7          	jalr	-596(ra) # 800018f4 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002b50:	0004a783          	lw	a5,0(s1)
    80002b54:	00f48733          	add	a4,s1,a5
    80002b58:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002b5c:	0017879b          	addiw	a5,a5,1
    80002b60:	1f400713          	li	a4,500
    80002b64:	02e7e7bb          	remw	a5,a5,a4
    80002b68:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002b6c:	0084b503          	ld	a0,8(s1)
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	dd8080e7          	jalr	-552(ra) # 80001948 <_ZN3Sem6signalEPS_>
    return c;
}
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	01813083          	ld	ra,24(sp)
    80002b80:	01013403          	ld	s0,16(sp)
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	00013903          	ld	s2,0(sp)
    80002b8c:	02010113          	addi	sp,sp,32
    80002b90:	00008067          	ret

0000000080002b94 <_ZN13BoundedBuffer7isEmptyEv>:

bool BoundedBuffer::isEmpty() {
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    return head == tail;
    80002ba0:	00052783          	lw	a5,0(a0)
    80002ba4:	00452503          	lw	a0,4(a0)
    80002ba8:	40f50533          	sub	a0,a0,a5
}
    80002bac:	00153513          	seqz	a0,a0
    80002bb0:	00813403          	ld	s0,8(sp)
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <_ZN13BoundedBuffer6isFullEv>:

bool BoundedBuffer::isFull() {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    return head == (tail + 1) % CAPACITY;
    80002bc8:	00052783          	lw	a5,0(a0)
    80002bcc:	00452503          	lw	a0,4(a0)
    80002bd0:	0015051b          	addiw	a0,a0,1
    80002bd4:	1f400713          	li	a4,500
    80002bd8:	02e5653b          	remw	a0,a0,a4
    80002bdc:	40a78533          	sub	a0,a5,a0
}
    80002be0:	00153513          	seqz	a0,a0
    80002be4:	00813403          	ld	s0,8(sp)
    80002be8:	01010113          	addi	sp,sp,16
    80002bec:	00008067          	ret

0000000080002bf0 <_ZN9Scheduler3putEP3TCB>:
TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00113c23          	sd	ra,24(sp)
    80002bf8:	00813823          	sd	s0,16(sp)
    80002bfc:	00913423          	sd	s1,8(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	00050493          	mv	s1,a0
    thread -> status = TCB::RUNNABLE;
    80002c08:	02052023          	sw	zero,32(a0)
    if (tail_ready) {
    80002c0c:	0000a517          	auipc	a0,0xa
    80002c10:	3fc53503          	ld	a0,1020(a0) # 8000d008 <_ZN9Scheduler10tail_readyE>
    80002c14:	02050e63          	beqz	a0,80002c50 <_ZN9Scheduler3putEP3TCB+0x60>
        tail_ready -> set_next_ready(thread);
    80002c18:	00048593          	mv	a1,s1
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	bdc080e7          	jalr	-1060(ra) # 800037f8 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002c24:	0000a797          	auipc	a5,0xa
    80002c28:	3e97b223          	sd	s1,996(a5) # 8000d008 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002c2c:	00000593          	li	a1,0
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00001097          	auipc	ra,0x1
    80002c38:	bc4080e7          	jalr	-1084(ra) # 800037f8 <_ZN3TCB14set_next_readyEPS_>
}
    80002c3c:	01813083          	ld	ra,24(sp)
    80002c40:	01013403          	ld	s0,16(sp)
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	02010113          	addi	sp,sp,32
    80002c4c:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002c50:	0000a797          	auipc	a5,0xa
    80002c54:	3b878793          	addi	a5,a5,952 # 8000d008 <_ZN9Scheduler10tail_readyE>
    80002c58:	0097b023          	sd	s1,0(a5)
    80002c5c:	0097b423          	sd	s1,8(a5)
    80002c60:	fcdff06f          	j	80002c2c <_ZN9Scheduler3putEP3TCB+0x3c>

0000000080002c64 <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002c64:	fe010113          	addi	sp,sp,-32
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	00813823          	sd	s0,16(sp)
    80002c70:	00913423          	sd	s1,8(sp)
    80002c74:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002c78:	0000a497          	auipc	s1,0xa
    80002c7c:	3984b483          	ld	s1,920(s1) # 8000d010 <_ZN9Scheduler10head_readyE>
    80002c80:	02048663          	beqz	s1,80002cac <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	b54080e7          	jalr	-1196(ra) # 800037dc <_ZNK3TCB14get_next_readyEv>
    80002c90:	0000a797          	auipc	a5,0xa
    80002c94:	38a7b023          	sd	a0,896(a5) # 8000d010 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002c98:	02050663          	beqz	a0,80002cc4 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002c9c:	00000593          	li	a1,0
    80002ca0:	00048513          	mv	a0,s1
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	b54080e7          	jalr	-1196(ra) # 800037f8 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002cc4:	0000a797          	auipc	a5,0xa
    80002cc8:	3407b223          	sd	zero,836(a5) # 8000d008 <_ZN9Scheduler10tail_readyE>
    80002ccc:	fd1ff06f          	j	80002c9c <_ZN9Scheduler3getEv+0x38>

0000000080002cd0 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    if (execute_yield) change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002cdc:	06050863          	beqz	a0,80002d4c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002ce0:	0000a797          	auipc	a5,0xa
    80002ce4:	3387b783          	ld	a5,824(a5) # 8000d018 <_ZN9Scheduler13head_sleepingE>
    80002ce8:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002cec:	00078a63          	beqz	a5,80002d00 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002cf0:	00a78863          	beq	a5,a0,80002d00 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002cf4:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002cf8:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002cfc:	ff1ff06f          	j	80002cec <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002d00:	04078a63          	beqz	a5,80002d54 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002d04:	02070c63          	beqz	a4,80002d3c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002d08:	0587b683          	ld	a3,88(a5)
    80002d0c:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002d10:	0587b703          	ld	a4,88(a5)
    80002d14:	00070a63          	beqz	a4,80002d28 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002d18:	0507b603          	ld	a2,80(a5)
    80002d1c:	05073683          	ld	a3,80(a4)
    80002d20:	00c686b3          	add	a3,a3,a2
    80002d24:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002d28:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002d2c:	00000513          	li	a0,0
}
    80002d30:	00813403          	ld	s0,8(sp)
    80002d34:	01010113          	addi	sp,sp,16
    80002d38:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002d3c:	0587b703          	ld	a4,88(a5)
    80002d40:	0000a697          	auipc	a3,0xa
    80002d44:	2ce6bc23          	sd	a4,728(a3) # 8000d018 <_ZN9Scheduler13head_sleepingE>
    80002d48:	fc9ff06f          	j	80002d10 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002d4c:	fff00513          	li	a0,-1
    80002d50:	fe1ff06f          	j	80002d30 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002d54:	ffe00513          	li	a0,-2
    80002d58:	fd9ff06f          	j	80002d30 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002d5c <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002d70:	0000a797          	auipc	a5,0xa
    80002d74:	1b07b783          	ld	a5,432(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d78:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002d7c:	00100593          	li	a1,1
    80002d80:	00048513          	mv	a0,s1
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	b00080e7          	jalr	-1280(ra) # 80003884 <_ZN3TCB10set_statusENS_6StatusE>
    if (old -> timed_wait) old -> set_status(TCB::BLOCKED);
    80002d8c:	0484c783          	lbu	a5,72(s1)
    80002d90:	02079063          	bnez	a5,80002db0 <_ZN9Scheduler13change_threadEv+0x54>
    if (!old-> timed_wait) {
    80002d94:	0484c783          	lbu	a5,72(s1)
    80002d98:	02078663          	beqz	a5,80002dc4 <_ZN9Scheduler13change_threadEv+0x68>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002d9c:	01813083          	ld	ra,24(sp)
    80002da0:	01013403          	ld	s0,16(sp)
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret
    if (old -> timed_wait) old -> set_status(TCB::BLOCKED);
    80002db0:	00200593          	li	a1,2
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	acc080e7          	jalr	-1332(ra) # 80003884 <_ZN3TCB10set_statusENS_6StatusE>
    80002dc0:	fd5ff06f          	j	80002d94 <_ZN9Scheduler13change_threadEv+0x38>
        TCB::running = Scheduler::get();
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	ea0080e7          	jalr	-352(ra) # 80002c64 <_ZN9Scheduler3getEv>
    80002dcc:	00050593          	mv	a1,a0
    80002dd0:	0000a797          	auipc	a5,0xa
    80002dd4:	1507b783          	ld	a5,336(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002dd8:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002ddc:	fca480e3          	beq	s1,a0,80002d9c <_ZN9Scheduler13change_threadEv+0x40>
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	910080e7          	jalr	-1776(ra) # 800036f4 <_ZN3TCB5yieldEPS_S0_>
}
    80002dec:	fb1ff06f          	j	80002d9c <_ZN9Scheduler13change_threadEv+0x40>

0000000080002df0 <_ZN9Scheduler12put_to_sleepEmb>:
    if (time <= 0) return -1;
    80002df0:	1a050e63          	beqz	a0,80002fac <_ZN9Scheduler12put_to_sleepEmb+0x1bc>
int Scheduler::put_to_sleep(time_t time, bool execute_yield = true) {
    80002df4:	fc010113          	addi	sp,sp,-64
    80002df8:	02113c23          	sd	ra,56(sp)
    80002dfc:	02813823          	sd	s0,48(sp)
    80002e00:	02913423          	sd	s1,40(sp)
    80002e04:	03213023          	sd	s2,32(sp)
    80002e08:	01313c23          	sd	s3,24(sp)
    80002e0c:	01413823          	sd	s4,16(sp)
    80002e10:	01513423          	sd	s5,8(sp)
    80002e14:	01613023          	sd	s6,0(sp)
    80002e18:	04010413          	addi	s0,sp,64
    80002e1c:	00050993          	mv	s3,a0
    80002e20:	00058b13          	mv	s6,a1
    TCB* thread = TCB::running;
    80002e24:	0000a797          	auipc	a5,0xa
    80002e28:	0fc7b783          	ld	a5,252(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e2c:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002e30:	0000a497          	auipc	s1,0xa
    80002e34:	1e84b483          	ld	s1,488(s1) # 8000d018 <_ZN9Scheduler13head_sleepingE>
    80002e38:	02048e63          	beqz	s1,80002e74 <_ZN9Scheduler12put_to_sleepEmb+0x84>
    time_t current_time = 0;
    80002e3c:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002e40:	00000a13          	li	s4,0
    while (tmp) {
    80002e44:	10048e63          	beqz	s1,80002f60 <_ZN9Scheduler12put_to_sleepEmb+0x170>
        current_time += tmp -> get_time_to_sleep();
    80002e48:	00048513          	mv	a0,s1
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	a1c080e7          	jalr	-1508(ra) # 80003868 <_ZNK3TCB17get_time_to_sleepEv>
    80002e54:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002e58:	0529ee63          	bltu	s3,s2,80002eb4 <_ZN9Scheduler12put_to_sleepEmb+0xc4>
        tmp = tmp -> get_next_sleeping();
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	9d0080e7          	jalr	-1584(ra) # 80003830 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002e68:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002e6c:	00050493          	mv	s1,a0
    while (tmp) {
    80002e70:	fd5ff06f          	j	80002e44 <_ZN9Scheduler12put_to_sleepEmb+0x54>
        head_sleeping = thread;
    80002e74:	0000a797          	auipc	a5,0xa
    80002e78:	1b57b223          	sd	s5,420(a5) # 8000d018 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002e7c:	00000593          	li	a1,0
    80002e80:	000a8513          	mv	a0,s5
    80002e84:	00001097          	auipc	ra,0x1
    80002e88:	990080e7          	jalr	-1648(ra) # 80003814 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002e8c:	00098593          	mv	a1,s3
    80002e90:	000a8513          	mv	a0,s5
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	9b8080e7          	jalr	-1608(ra) # 8000384c <_ZN3TCB17set_time_to_sleepEm>
        if (execute_yield) change_thread();
    80002e9c:	000b1663          	bnez	s6,80002ea8 <_ZN9Scheduler12put_to_sleepEmb+0xb8>
        return 0;
    80002ea0:	00000513          	li	a0,0
    80002ea4:	07c0006f          	j	80002f20 <_ZN9Scheduler12put_to_sleepEmb+0x130>
        if (execute_yield) change_thread();
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	eb4080e7          	jalr	-332(ra) # 80002d5c <_ZN9Scheduler13change_threadEv>
    80002eb0:	ff1ff06f          	j	80002ea0 <_ZN9Scheduler12put_to_sleepEmb+0xb0>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002eb4:	00048513          	mv	a0,s1
    80002eb8:	00001097          	auipc	ra,0x1
    80002ebc:	9b0080e7          	jalr	-1616(ra) # 80003868 <_ZNK3TCB17get_time_to_sleepEv>
    80002ec0:	41250933          	sub	s2,a0,s2
    80002ec4:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002ec8:	00098593          	mv	a1,s3
    80002ecc:	000a8513          	mv	a0,s5
    80002ed0:	00001097          	auipc	ra,0x1
    80002ed4:	97c080e7          	jalr	-1668(ra) # 8000384c <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002ed8:	00048593          	mv	a1,s1
    80002edc:	000a8513          	mv	a0,s5
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	934080e7          	jalr	-1740(ra) # 80003814 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002ee8:	060a0063          	beqz	s4,80002f48 <_ZN9Scheduler12put_to_sleepEmb+0x158>
    80002eec:	000a8593          	mv	a1,s5
    80002ef0:	000a0513          	mv	a0,s4
    80002ef4:	00001097          	auipc	ra,0x1
    80002ef8:	920080e7          	jalr	-1760(ra) # 80003814 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00001097          	auipc	ra,0x1
    80002f04:	968080e7          	jalr	-1688(ra) # 80003868 <_ZNK3TCB17get_time_to_sleepEv>
    80002f08:	413505b3          	sub	a1,a0,s3
    80002f0c:	00048513          	mv	a0,s1
    80002f10:	00001097          	auipc	ra,0x1
    80002f14:	93c080e7          	jalr	-1732(ra) # 8000384c <_ZN3TCB17set_time_to_sleepEm>
            if (execute_yield) change_thread();
    80002f18:	020b1e63          	bnez	s6,80002f54 <_ZN9Scheduler12put_to_sleepEmb+0x164>
            return 0;
    80002f1c:	00000513          	li	a0,0
}
    80002f20:	03813083          	ld	ra,56(sp)
    80002f24:	03013403          	ld	s0,48(sp)
    80002f28:	02813483          	ld	s1,40(sp)
    80002f2c:	02013903          	ld	s2,32(sp)
    80002f30:	01813983          	ld	s3,24(sp)
    80002f34:	01013a03          	ld	s4,16(sp)
    80002f38:	00813a83          	ld	s5,8(sp)
    80002f3c:	00013b03          	ld	s6,0(sp)
    80002f40:	04010113          	addi	sp,sp,64
    80002f44:	00008067          	ret
            else head_sleeping = thread;
    80002f48:	0000a797          	auipc	a5,0xa
    80002f4c:	0d57b823          	sd	s5,208(a5) # 8000d018 <_ZN9Scheduler13head_sleepingE>
    80002f50:	fadff06f          	j	80002efc <_ZN9Scheduler12put_to_sleepEmb+0x10c>
            if (execute_yield) change_thread();
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	e08080e7          	jalr	-504(ra) # 80002d5c <_ZN9Scheduler13change_threadEv>
    80002f5c:	fc1ff06f          	j	80002f1c <_ZN9Scheduler12put_to_sleepEmb+0x12c>
    thread -> set_time_to_sleep(time - current_time);
    80002f60:	412985b3          	sub	a1,s3,s2
    80002f64:	000a8513          	mv	a0,s5
    80002f68:	00001097          	auipc	ra,0x1
    80002f6c:	8e4080e7          	jalr	-1820(ra) # 8000384c <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002f70:	000a8593          	mv	a1,s5
    80002f74:	000a0513          	mv	a0,s4
    80002f78:	00001097          	auipc	ra,0x1
    80002f7c:	89c080e7          	jalr	-1892(ra) # 80003814 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002f80:	00000593          	li	a1,0
    80002f84:	000a8513          	mv	a0,s5
    80002f88:	00001097          	auipc	ra,0x1
    80002f8c:	88c080e7          	jalr	-1908(ra) # 80003814 <_ZN3TCB17set_next_sleepingEPS_>
    if (execute_yield) change_thread();
    80002f90:	000b1663          	bnez	s6,80002f9c <_ZN9Scheduler12put_to_sleepEmb+0x1ac>
    return 0;
    80002f94:	00000513          	li	a0,0
    80002f98:	f89ff06f          	j	80002f20 <_ZN9Scheduler12put_to_sleepEmb+0x130>
    if (execute_yield) change_thread();
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	dc0080e7          	jalr	-576(ra) # 80002d5c <_ZN9Scheduler13change_threadEv>
    return 0;
    80002fa4:	00000513          	li	a0,0
    80002fa8:	f79ff06f          	j	80002f20 <_ZN9Scheduler12put_to_sleepEmb+0x130>
    if (time <= 0) return -1;
    80002fac:	fff00513          	li	a0,-1
}
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00813423          	sd	s0,8(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002fc0:	0000a797          	auipc	a5,0xa
    80002fc4:	f607b783          	ld	a5,-160(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002fc8:	0007b783          	ld	a5,0(a5)
    80002fcc:	0287b783          	ld	a5,40(a5)
    80002fd0:	00078c63          	beqz	a5,80002fe8 <_ZN5RiscV10popSppSpieEv+0x34>
    80002fd4:	0000a717          	auipc	a4,0xa
    80002fd8:	f4473703          	ld	a4,-188(a4) # 8000cf18 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002fdc:	00e78663          	beq	a5,a4,80002fe8 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002fe0:	10000793          	li	a5,256
    80002fe4:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002fe8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002fec:	10200073          	sret
}
    80002ff0:	00813403          	ld	s0,8(sp)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ffc:	f6010113          	addi	sp,sp,-160
    80003000:	08113c23          	sd	ra,152(sp)
    80003004:	08813823          	sd	s0,144(sp)
    80003008:	08913423          	sd	s1,136(sp)
    8000300c:	09213023          	sd	s2,128(sp)
    80003010:	07313c23          	sd	s3,120(sp)
    80003014:	0a010413          	addi	s0,sp,160
    /// read values from registers
    volatile uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80003018:	00050793          	mv	a5,a0
    8000301c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80003020:	00058793          	mv	a5,a1
    80003024:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80003028:	00060793          	mv	a5,a2
    8000302c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80003030:	00068793          	mv	a5,a3
    80003034:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003038:	00070793          	mv	a5,a4
    8000303c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80003040:	142027f3          	csrr	a5,scause
    80003044:	f6f43823          	sd	a5,-144(s0)
    return scause;
    80003048:	f7043703          	ld	a4,-144(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    8000304c:	ff870693          	addi	a3,a4,-8
    80003050:	00100793          	li	a5,1
    80003054:	04d7f663          	bgeu	a5,a3,800030a0 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80003058:	fff00793          	li	a5,-1
    8000305c:	03f79793          	slli	a5,a5,0x3f
    80003060:	00178793          	addi	a5,a5,1
    80003064:	1af70863          	beq	a4,a5,80003214 <_ZN5RiscV22handle_supervisor_trapEv+0x218>
        }
        __asm__ volatile ("mv a0, %0" : : "r"(a0));
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80003068:	fff00793          	li	a5,-1
    8000306c:	03f79793          	slli	a5,a5,0x3f
    80003070:	00978793          	addi	a5,a5,9
    80003074:	28f70c63          	beq	a4,a5,8000330c <_ZN5RiscV22handle_supervisor_trapEv+0x310>
        __asm__ volatile ("mv a0, %0" : : "r"(a0));
    }

    /// Illegal instruction / Bad memory access
    else {
        putc('!');
    80003078:	02100513          	li	a0,33
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	5f0080e7          	jalr	1520(ra) # 8000166c <_Z4putcc>
        putc('?');
    80003084:	03f00513          	li	a0,63
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	5e4080e7          	jalr	1508(ra) # 8000166c <_Z4putcc>
        putc('!');
    80003090:	02100513          	li	a0,33
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	5d8080e7          	jalr	1496(ra) # 8000166c <_Z4putcc>
    }
    8000309c:	0780006f          	j	80003114 <_ZN5RiscV22handle_supervisor_trapEv+0x118>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800030a0:	141027f3          	csrr	a5,sepc
    800030a4:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    800030a8:	f8043483          	ld	s1,-128(s0)
        uint64 sepc = read_sepc() + 4;
    800030ac:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800030b0:	100027f3          	csrr	a5,sstatus
    800030b4:	f6f43c23          	sd	a5,-136(s0)
    return sstatus;
    800030b8:	f7843903          	ld	s2,-136(s0)
        switch(syscall_code) {
    800030bc:	fc843783          	ld	a5,-56(s0)
    800030c0:	04200713          	li	a4,66
    800030c4:	02f76463          	bltu	a4,a5,800030ec <_ZN5RiscV22handle_supervisor_trapEv+0xf0>
    800030c8:	04078263          	beqz	a5,8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
    800030cc:	04f76063          	bltu	a4,a5,8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
    800030d0:	00279793          	slli	a5,a5,0x2
    800030d4:	00007717          	auipc	a4,0x7
    800030d8:	f6c70713          	addi	a4,a4,-148 # 8000a040 <CONSOLE_STATUS+0x30>
    800030dc:	00e787b3          	add	a5,a5,a4
    800030e0:	0007a783          	lw	a5,0(a5)
    800030e4:	00e787b3          	add	a5,a5,a4
    800030e8:	00078067          	jr	a5
    800030ec:	09900713          	li	a4,153
    800030f0:	00e79e63          	bne	a5,a4,8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                TCB::getID();
    800030f4:	00001097          	auipc	ra,0x1
    800030f8:	9d8080e7          	jalr	-1576(ra) # 80003acc <_ZN3TCB5getIDEv>
                break;
    800030fc:	0100006f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                MemoryAllocator::mem_alloc((size_t) a1);
    80003100:	fc043503          	ld	a0,-64(s0)
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	518080e7          	jalr	1304(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    8000310c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003110:	10091073          	csrw	sstatus,s2
    80003114:	09813083          	ld	ra,152(sp)
    80003118:	09013403          	ld	s0,144(sp)
    8000311c:	08813483          	ld	s1,136(sp)
    80003120:	08013903          	ld	s2,128(sp)
    80003124:	07813983          	ld	s3,120(sp)
    80003128:	0a010113          	addi	sp,sp,160
    8000312c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80003130:	fc043503          	ld	a0,-64(s0)
    80003134:	fffff097          	auipc	ra,0xfffff
    80003138:	65c080e7          	jalr	1628(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    8000313c:	fd1ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80003140:	fc043503          	ld	a0,-64(s0)
    80003144:	fb843583          	ld	a1,-72(s0)
    80003148:	fb043603          	ld	a2,-80(s0)
    8000314c:	fa843683          	ld	a3,-88(s0)
    80003150:	00000097          	auipc	ra,0x0
    80003154:	7f4080e7          	jalr	2036(ra) # 80003944 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003158:	fb5ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                TCB::thread_exit();
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	744080e7          	jalr	1860(ra) # 800038a0 <_ZN3TCB11thread_exitEv>
                break;
    80003164:	fa9ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                TCB::dispatch();
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	5e8080e7          	jalr	1512(ra) # 80003750 <_ZN3TCB8dispatchEv>
                break;
    80003170:	f9dff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::open((sem_t *) a1, a2);
    80003174:	fc043503          	ld	a0,-64(s0)
    80003178:	fb843583          	ld	a1,-72(s0)
    8000317c:	0005859b          	sext.w	a1,a1
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	96c080e7          	jalr	-1684(ra) # 80001aec <_ZN3Sem4openEPPS_j>
                break;
    80003188:	f85ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::close((sem_t) a1);
    8000318c:	fc043503          	ld	a0,-64(s0)
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	6f8080e7          	jalr	1784(ra) # 80001888 <_ZN3Sem5closeEPS_>
                break;
    80003198:	f75ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::wait((sem_t) a1);
    8000319c:	fc043503          	ld	a0,-64(s0)
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	754080e7          	jalr	1876(ra) # 800018f4 <_ZN3Sem4waitEPS_>
                break;
    800031a8:	f65ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::signal((sem_t) a1);
    800031ac:	fc043503          	ld	a0,-64(s0)
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	798080e7          	jalr	1944(ra) # 80001948 <_ZN3Sem6signalEPS_>
                break;
    800031b8:	f55ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    800031bc:	fc043503          	ld	a0,-64(s0)
    800031c0:	fb843583          	ld	a1,-72(s0)
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	7d8080e7          	jalr	2008(ra) # 8000199c <_ZN3Sem9timedWaitEPS_m>
                break;
    800031cc:	f41ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Sem::tryWait((sem_t) a1);
    800031d0:	fc043503          	ld	a0,-64(s0)
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	888080e7          	jalr	-1912(ra) # 80001a5c <_ZN3Sem7tryWaitEPS_>
                break;
    800031dc:	f31ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Scheduler::put_to_sleep((time_t) a1, (bool) true);
    800031e0:	fc043503          	ld	a0,-64(s0)
    800031e4:	00100593          	li	a1,1
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	c08080e7          	jalr	-1016(ra) # 80002df0 <_ZN9Scheduler12put_to_sleepEmb>
                break;
    800031f0:	f1dff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Con::getc_input();
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	de8080e7          	jalr	-536(ra) # 80001fdc <_ZN3Con10getc_inputEv>
                break;
    800031fc:	f11ff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
                Con::putc_output((char) a1);
    80003200:	fc043503          	ld	a0,-64(s0)
    80003204:	0ff57513          	andi	a0,a0,255
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	d3c080e7          	jalr	-708(ra) # 80001f44 <_ZN3Con11putc_outputEc>
                break;
    80003210:	efdff06f          	j	8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x110>
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80003214:	00050793          	mv	a5,a0
    80003218:	f6f43023          	sd	a5,-160(s0)
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    8000321c:	00200793          	li	a5,2
    80003220:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80003224:	0000a797          	auipc	a5,0xa
    80003228:	ccc7b783          	ld	a5,-820(a5) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000322c:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003230:	06048863          	beqz	s1,800032a0 <_ZN5RiscV22handle_supervisor_trapEv+0x2a4>
            --first_waiting -> time_to_sleep;
    80003234:	0504b783          	ld	a5,80(s1)
    80003238:	fff78793          	addi	a5,a5,-1
    8000323c:	04f4b823          	sd	a5,80(s1)
    80003240:	03c0006f          	j	8000327c <_ZN5RiscV22handle_supervisor_trapEv+0x280>
                if (first_waiting -> timed_wait || first_waiting -> status == TCB::BLOCKED) first_waiting -> clear_from_timed_wait(true);
    80003244:	00100593          	li	a1,1
    80003248:	00048513          	mv	a0,s1
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	820080e7          	jalr	-2016(ra) # 80003a6c <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    80003254:	00048513          	mv	a0,s1
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	998080e7          	jalr	-1640(ra) # 80002bf0 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80003260:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    80003264:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003268:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    8000326c:	0000a717          	auipc	a4,0xa
    80003270:	c8473703          	ld	a4,-892(a4) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003274:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003278:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    8000327c:	02048263          	beqz	s1,800032a0 <_ZN5RiscV22handle_supervisor_trapEv+0x2a4>
    80003280:	0504b783          	ld	a5,80(s1)
    80003284:	00079e63          	bnez	a5,800032a0 <_ZN5RiscV22handle_supervisor_trapEv+0x2a4>
                if (first_waiting -> timed_wait || first_waiting -> status == TCB::BLOCKED) first_waiting -> clear_from_timed_wait(true);
    80003288:	0484c783          	lbu	a5,72(s1)
    8000328c:	fa079ce3          	bnez	a5,80003244 <_ZN5RiscV22handle_supervisor_trapEv+0x248>
    80003290:	0204a703          	lw	a4,32(s1)
    80003294:	00200793          	li	a5,2
    80003298:	faf71ee3          	bne	a4,a5,80003254 <_ZN5RiscV22handle_supervisor_trapEv+0x258>
    8000329c:	fa9ff06f          	j	80003244 <_ZN5RiscV22handle_supervisor_trapEv+0x248>
        ++TCB::time_slice_counter;
    800032a0:	0000a717          	auipc	a4,0xa
    800032a4:	c7073703          	ld	a4,-912(a4) # 8000cf10 <_GLOBAL_OFFSET_TABLE_+0x40>
    800032a8:	00073783          	ld	a5,0(a4)
    800032ac:	00178793          	addi	a5,a5,1
    800032b0:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    800032b4:	0000a717          	auipc	a4,0xa
    800032b8:	c6c73703          	ld	a4,-916(a4) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x50>
    800032bc:	00073703          	ld	a4,0(a4)
    800032c0:	00873703          	ld	a4,8(a4)
    800032c4:	00e7f863          	bgeu	a5,a4,800032d4 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800032c8:	f6043783          	ld	a5,-160(s0)
    800032cc:	00078513          	mv	a0,a5
    800032d0:	e45ff06f          	j	80003114 <_ZN5RiscV22handle_supervisor_trapEv+0x118>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800032d4:	141027f3          	csrr	a5,sepc
    800032d8:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800032dc:	f9043483          	ld	s1,-112(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800032e0:	100027f3          	csrr	a5,sstatus
    800032e4:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800032e8:	f8843903          	ld	s2,-120(s0)
            TCB::time_slice_counter = 0;
    800032ec:	0000a797          	auipc	a5,0xa
    800032f0:	c247b783          	ld	a5,-988(a5) # 8000cf10 <_GLOBAL_OFFSET_TABLE_+0x40>
    800032f4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	458080e7          	jalr	1112(ra) # 80003750 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003300:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003304:	14149073          	csrw	sepc,s1
}
    80003308:	fc1ff06f          	j	800032c8 <_ZN5RiscV22handle_supervisor_trapEv+0x2cc>
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000330c:	00050793          	mv	a5,a0
    80003310:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003314:	141027f3          	csrr	a5,sepc
    80003318:	faf43023          	sd	a5,-96(s0)
    return sepc;
    8000331c:	fa043983          	ld	s3,-96(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003320:	100027f3          	csrr	a5,sstatus
    80003324:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80003328:	f9843903          	ld	s2,-104(s0)
        int irq = plic_claim();
    8000332c:	00004097          	auipc	ra,0x4
    80003330:	6f8080e7          	jalr	1784(ra) # 80007a24 <plic_claim>
    80003334:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80003338:	00a00793          	li	a5,10
    8000333c:	02f50663          	beq	a0,a5,80003368 <_ZN5RiscV22handle_supervisor_trapEv+0x36c>
        plic_complete(irq);
    80003340:	00048513          	mv	a0,s1
    80003344:	00004097          	auipc	ra,0x4
    80003348:	718080e7          	jalr	1816(ra) # 80007a5c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    8000334c:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003350:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003354:	20000793          	li	a5,512
    80003358:	1447b073          	csrc	sip,a5
        __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000335c:	f6843783          	ld	a5,-152(s0)
    80003360:	00078513          	mv	a0,a5
    80003364:	db1ff06f          	j	80003114 <_ZN5RiscV22handle_supervisor_trapEv+0x118>
            while (!Con::isOutputBufferFull() && *(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	cd4080e7          	jalr	-812(ra) # 8000203c <_ZN3Con18isOutputBufferFullEv>
    80003370:	fc0518e3          	bnez	a0,80003340 <_ZN5RiscV22handle_supervisor_trapEv+0x344>
    80003374:	0000a797          	auipc	a5,0xa
    80003378:	b6c7b783          	ld	a5,-1172(a5) # 8000cee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000337c:	0007b783          	ld	a5,0(a5)
    80003380:	0007c783          	lbu	a5,0(a5)
    80003384:	0017f793          	andi	a5,a5,1
    80003388:	fa078ce3          	beqz	a5,80003340 <_ZN5RiscV22handle_supervisor_trapEv+0x344>
                char c = *(char *) CONSOLE_RX_DATA;
    8000338c:	0000a797          	auipc	a5,0xa
    80003390:	b4c7b783          	ld	a5,-1204(a5) # 8000ced8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003394:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80003398:	0007c503          	lbu	a0,0(a5)
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	c0c080e7          	jalr	-1012(ra) # 80001fa8 <_ZN3Con10putc_inputEc>
            while (!Con::isOutputBufferFull() && *(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800033a4:	fc5ff06f          	j	80003368 <_ZN5RiscV22handle_supervisor_trapEv+0x36c>

00000000800033a8 <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800033b4:	00053503          	ld	a0,0(a0)
    800033b8:	00050463          	beqz	a0,800033c0 <_ZN10ThreadList9get_firstEv+0x18>
    800033bc:	00053503          	ld	a0,0(a0)
}
    800033c0:	00813403          	ld	s0,8(sp)
    800033c4:	01010113          	addi	sp,sp,16
    800033c8:	00008067          	ret

00000000800033cc <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    800033cc:	ff010113          	addi	sp,sp,-16
    800033d0:	00813423          	sd	s0,8(sp)
    800033d4:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    800033d8:	06058263          	beqz	a1,8000343c <_ZN10ThreadList6removeEP3TCB+0x70>
    Node *tmp = head, *prev = nullptr;
    800033dc:	00053783          	ld	a5,0(a0)
    800033e0:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    800033e4:	00078c63          	beqz	a5,800033fc <_ZN10ThreadList6removeEP3TCB+0x30>
    800033e8:	0007b703          	ld	a4,0(a5)
    800033ec:	00b70863          	beq	a4,a1,800033fc <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    800033f0:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    800033f4:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800033f8:	fedff06f          	j	800033e4 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800033fc:	04078463          	beqz	a5,80003444 <_ZN10ThreadList6removeEP3TCB+0x78>
    if (prev) prev -> next = tmp -> next;
    80003400:	02068263          	beqz	a3,80003424 <_ZN10ThreadList6removeEP3TCB+0x58>
    80003404:	0087b783          	ld	a5,8(a5)
    80003408:	00f6b423          	sd	a5,8(a3)
    else head = tmp -> next;
    if (!head) tail = nullptr;
    8000340c:	00053783          	ld	a5,0(a0)
    80003410:	02078063          	beqz	a5,80003430 <_ZN10ThreadList6removeEP3TCB+0x64>
    return 0;
    80003414:	00000513          	li	a0,0
}
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret
    else head = tmp -> next;
    80003424:	0087b783          	ld	a5,8(a5)
    80003428:	00f53023          	sd	a5,0(a0)
    8000342c:	fe1ff06f          	j	8000340c <_ZN10ThreadList6removeEP3TCB+0x40>
    if (!head) tail = nullptr;
    80003430:	00053423          	sd	zero,8(a0)
    return 0;
    80003434:	00000513          	li	a0,0
    80003438:	fe1ff06f          	j	80003418 <_ZN10ThreadList6removeEP3TCB+0x4c>
    if (!thread) return -1;
    8000343c:	fff00513          	li	a0,-1
    80003440:	fd9ff06f          	j	80003418 <_ZN10ThreadList6removeEP3TCB+0x4c>
    if (!tmp) return -2;
    80003444:	ffe00513          	li	a0,-2
    80003448:	fd1ff06f          	j	80003418 <_ZN10ThreadList6removeEP3TCB+0x4c>

000000008000344c <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	4c8080e7          	jalr	1224(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	1b8080e7          	jalr	440(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    8000346c:	00813083          	ld	ra,8(sp)
    80003470:	00013403          	ld	s0,0(sp)
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00008067          	ret

000000008000347c <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    8000347c:	ff010113          	addi	sp,sp,-16
    80003480:	00113423          	sd	ra,8(sp)
    80003484:	00813023          	sd	s0,0(sp)
    80003488:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	304080e7          	jalr	772(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003494:	00813083          	ld	ra,8(sp)
    80003498:	00013403          	ld	s0,0(sp)
    8000349c:	01010113          	addi	sp,sp,16
    800034a0:	00008067          	ret

00000000800034a4 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	00813023          	sd	s0,0(sp)
    800034b0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800034b4:	fffff097          	auipc	ra,0xfffff
    800034b8:	470080e7          	jalr	1136(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	160080e7          	jalr	352(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    800034c4:	00813083          	ld	ra,8(sp)
    800034c8:	00013403          	ld	s0,0(sp)
    800034cc:	01010113          	addi	sp,sp,16
    800034d0:	00008067          	ret

00000000800034d4 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800034d4:	fe010113          	addi	sp,sp,-32
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	00813823          	sd	s0,16(sp)
    800034e0:	00913423          	sd	s1,8(sp)
    800034e4:	01213023          	sd	s2,0(sp)
    800034e8:	02010413          	addi	s0,sp,32
    800034ec:	00050493          	mv	s1,a0
    800034f0:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    800034f4:	01000513          	li	a0,16
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	fac080e7          	jalr	-84(ra) # 800034a4 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003500:	01253023          	sd	s2,0(a0)
    80003504:	00053423          	sd	zero,8(a0)
    80003508:	0004b783          	ld	a5,0(s1)
    8000350c:	02078463          	beqz	a5,80003534 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003510:	0084b783          	ld	a5,8(s1)
    80003514:	00a7b423          	sd	a0,8(a5)
    80003518:	00a4b423          	sd	a0,8(s1)
}
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00813483          	ld	s1,8(sp)
    80003528:	00013903          	ld	s2,0(sp)
    8000352c:	02010113          	addi	sp,sp,32
    80003530:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003534:	00a4b023          	sd	a0,0(s1)
    80003538:	fe1ff06f          	j	80003518 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000353c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00113423          	sd	ra,8(sp)
    80003544:	00813023          	sd	s0,0(sp)
    80003548:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000354c:	fffff097          	auipc	ra,0xfffff
    80003550:	244080e7          	jalr	580(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003554:	00813083          	ld	ra,8(sp)
    80003558:	00013403          	ld	s0,0(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003564:	fe010113          	addi	sp,sp,-32
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	02010413          	addi	s0,sp,32
    80003578:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000357c:	00053503          	ld	a0,0(a0)
    80003580:	02050e63          	beqz	a0,800035bc <_ZN10ThreadList12remove_firstEv+0x58>
    TCB* thread = tmp -> data;
    80003584:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003588:	00853703          	ld	a4,8(a0)
    8000358c:	00e7b023          	sd	a4,0(a5)
    if (!head) tail = nullptr;
    80003590:	02070263          	beqz	a4,800035b4 <_ZN10ThreadList12remove_firstEv+0x50>
    delete tmp;
    80003594:	00000097          	auipc	ra,0x0
    80003598:	fa8080e7          	jalr	-88(ra) # 8000353c <_ZN10ThreadList4NodedlEPv>
}
    8000359c:	00048513          	mv	a0,s1
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00813483          	ld	s1,8(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret
    if (!head) tail = nullptr;
    800035b4:	0007b423          	sd	zero,8(a5)
    800035b8:	fddff06f          	j	80003594 <_ZN10ThreadList12remove_firstEv+0x30>
    if (!head) return nullptr;
    800035bc:	00050493          	mv	s1,a0
    800035c0:	fddff06f          	j	8000359c <_ZN10ThreadList12remove_firstEv+0x38>

00000000800035c4 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800035c4:	fe010113          	addi	sp,sp,-32
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00813823          	sd	s0,16(sp)
    800035d0:	00913423          	sd	s1,8(sp)
    800035d4:	02010413          	addi	s0,sp,32
    800035d8:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800035dc:	00048513          	mv	a0,s1
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	dc8080e7          	jalr	-568(ra) # 800033a8 <_ZN10ThreadList9get_firstEv>
    800035e8:	00050a63          	beqz	a0,800035fc <_ZN10ThreadList4freeEv+0x38>
    800035ec:	00048513          	mv	a0,s1
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	f74080e7          	jalr	-140(ra) # 80003564 <_ZN10ThreadList12remove_firstEv>
    800035f8:	fe5ff06f          	j	800035dc <_ZN10ThreadList4freeEv+0x18>
}
    800035fc:	01813083          	ld	ra,24(sp)
    80003600:	01013403          	ld	s0,16(sp)
    80003604:	00813483          	ld	s1,8(sp)
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret

0000000080003610 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00113423          	sd	ra,8(sp)
    80003618:	00813023          	sd	s0,0(sp)
    8000361c:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003620:	00000097          	auipc	ra,0x0
    80003624:	994080e7          	jalr	-1644(ra) # 80002fb4 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003628:	0000a717          	auipc	a4,0xa
    8000362c:	9f873703          	ld	a4,-1544(a4) # 8000d020 <_ZN3TCB7runningE>
    80003630:	02873783          	ld	a5,40(a4)
    80003634:	00078663          	beqz	a5,80003640 <_ZN3TCB16wrapper_functionEv+0x30>
    80003638:	03073503          	ld	a0,48(a4)
    8000363c:	000780e7          	jalr	a5
    ::thread_exit();
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	d40080e7          	jalr	-704(ra) # 80001380 <_Z11thread_exitv>
}
    80003648:	00813083          	ld	ra,8(sp)
    8000364c:	00013403          	ld	s0,0(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003658:	08068863          	beqz	a3,800036e8 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    8000365c:	000017b7          	lui	a5,0x1
    80003660:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003664:	00f687b3          	add	a5,a3,a5
    context = {
    80003668:	00000717          	auipc	a4,0x0
    8000366c:	fa870713          	addi	a4,a4,-88 # 80003610 <_ZN3TCB16wrapper_functionEv>
    80003670:	00e53823          	sd	a4,16(a0)
    80003674:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    80003678:	00009717          	auipc	a4,0x9
    8000367c:	6a870713          	addi	a4,a4,1704 # 8000cd20 <_ZN3TCB3cntE>
    80003680:	00072783          	lw	a5,0(a4)
    80003684:	0017881b          	addiw	a6,a5,1
    80003688:	01072023          	sw	a6,0(a4)
    8000368c:	00f52023          	sw	a5,0(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003690:	00200793          	li	a5,2
    80003694:	00f53423          	sd	a5,8(a0)
    status = RUNNABLE;
    80003698:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    8000369c:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    800036a0:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    800036a4:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    800036a8:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    800036ac:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    800036b0:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800036b4:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    800036b8:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    800036bc:	02058a63          	beqz	a1,800036f0 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800036c0:	ff010113          	addi	sp,sp,-16
    800036c4:	00113423          	sd	ra,8(sp)
    800036c8:	00813023          	sd	s0,0(sp)
    800036cc:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	520080e7          	jalr	1312(ra) # 80002bf0 <_ZN9Scheduler3putEP3TCB>
}
    800036d8:	00813083          	ld	ra,8(sp)
    800036dc:	00013403          	ld	s0,0(sp)
    800036e0:	01010113          	addi	sp,sp,16
    800036e4:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800036e8:	00000793          	li	a5,0
    800036ec:	f7dff06f          	j	80003668 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800036f0:	00008067          	ret

00000000800036f4 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    800036f4:	fe010113          	addi	sp,sp,-32
    800036f8:	00113c23          	sd	ra,24(sp)
    800036fc:	00813823          	sd	s0,16(sp)
    80003700:	00913423          	sd	s1,8(sp)
    80003704:	01213023          	sd	s2,0(sp)
    80003708:	02010413          	addi	s0,sp,32
    8000370c:	00050493          	mv	s1,a0
    80003710:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	9f4080e7          	jalr	-1548(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    8000371c:	01248a63          	beq	s1,s2,80003730 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003720:	01090593          	addi	a1,s2,16
    80003724:	01048513          	addi	a0,s1,16
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	ae0080e7          	jalr	-1312(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	a58080e7          	jalr	-1448(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	01013403          	ld	s0,16(sp)
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	00013903          	ld	s2,0(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret

0000000080003750 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00113c23          	sd	ra,24(sp)
    80003758:	00813823          	sd	s0,16(sp)
    8000375c:	00913423          	sd	s1,8(sp)
    80003760:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003764:	0000a497          	auipc	s1,0xa
    80003768:	8bc4b483          	ld	s1,-1860(s1) # 8000d020 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    8000376c:	0204a783          	lw	a5,32(s1)
    80003770:	04078663          	beqz	a5,800037bc <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003774:	00300713          	li	a4,3
    80003778:	04e78a63          	beq	a5,a4,800037cc <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	4e8080e7          	jalr	1256(ra) # 80002c64 <_ZN9Scheduler3getEv>
    80003784:	00050593          	mv	a1,a0
    80003788:	0000a797          	auipc	a5,0xa
    8000378c:	89878793          	addi	a5,a5,-1896 # 8000d020 <_ZN3TCB7runningE>
    80003790:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    80003794:	0007b423          	sd	zero,8(a5)
    if (old != running) yield(old, running);
    80003798:	00a48863          	beq	s1,a0,800037a8 <_ZN3TCB8dispatchEv+0x58>
    8000379c:	00048513          	mv	a0,s1
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	f54080e7          	jalr	-172(ra) # 800036f4 <_ZN3TCB5yieldEPS_S0_>
}
    800037a8:	01813083          	ld	ra,24(sp)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800037bc:	00048513          	mv	a0,s1
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	430080e7          	jalr	1072(ra) # 80002bf0 <_ZN9Scheduler3putEP3TCB>
    800037c8:	fb5ff06f          	j	8000377c <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800037cc:	0384b503          	ld	a0,56(s1)
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	fc0080e7          	jalr	-64(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
    800037d8:	fa5ff06f          	j	8000377c <_ZN3TCB8dispatchEv+0x2c>

00000000800037dc <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00813423          	sd	s0,8(sp)
    800037e4:	01010413          	addi	s0,sp,16
    return next_ready;
}
    800037e8:	04053503          	ld	a0,64(a0)
    800037ec:	00813403          	ld	s0,8(sp)
    800037f0:	01010113          	addi	sp,sp,16
    800037f4:	00008067          	ret

00000000800037f8 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800037f8:	ff010113          	addi	sp,sp,-16
    800037fc:	00813423          	sd	s0,8(sp)
    80003800:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003804:	04b53023          	sd	a1,64(a0)
}
    80003808:	00813403          	ld	s0,8(sp)
    8000380c:	01010113          	addi	sp,sp,16
    80003810:	00008067          	ret

0000000080003814 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003814:	ff010113          	addi	sp,sp,-16
    80003818:	00813423          	sd	s0,8(sp)
    8000381c:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003820:	04b53c23          	sd	a1,88(a0)
}
    80003824:	00813403          	ld	s0,8(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813423          	sd	s0,8(sp)
    80003838:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    8000383c:	05853503          	ld	a0,88(a0)
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    8000384c:	ff010113          	addi	sp,sp,-16
    80003850:	00813423          	sd	s0,8(sp)
    80003854:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003858:	04b53823          	sd	a1,80(a0)
}
    8000385c:	00813403          	ld	s0,8(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret

0000000080003868 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003874:	05053503          	ld	a0,80(a0)
    80003878:	00813403          	ld	s0,8(sp)
    8000387c:	01010113          	addi	sp,sp,16
    80003880:	00008067          	ret

0000000080003884 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003884:	ff010113          	addi	sp,sp,-16
    80003888:	00813423          	sd	s0,8(sp)
    8000388c:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003890:	02b52023          	sw	a1,32(a0)
}
    80003894:	00813403          	ld	s0,8(sp)
    80003898:	01010113          	addi	sp,sp,16
    8000389c:	00008067          	ret

00000000800038a0 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    800038a0:	00009517          	auipc	a0,0x9
    800038a4:	78053503          	ld	a0,1920(a0) # 8000d020 <_ZN3TCB7runningE>
    800038a8:	02050e63          	beqz	a0,800038e4 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    800038ac:	ff010113          	addi	sp,sp,-16
    800038b0:	00113423          	sd	ra,8(sp)
    800038b4:	00813023          	sd	s0,0(sp)
    800038b8:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800038bc:	00300593          	li	a1,3
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	fc4080e7          	jalr	-60(ra) # 80003884 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	e88080e7          	jalr	-376(ra) # 80003750 <_ZN3TCB8dispatchEv>
    return 0;
    800038d0:	00000513          	li	a0,0
}
    800038d4:	00813083          	ld	ra,8(sp)
    800038d8:	00013403          	ld	s0,0(sp)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret
    if (!running) return -1;
    800038e4:	fff00513          	li	a0,-1
}
    800038e8:	00008067          	ret

00000000800038ec <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00113423          	sd	ra,8(sp)
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	028080e7          	jalr	40(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	d18080e7          	jalr	-744(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    8000390c:	00813083          	ld	ra,8(sp)
    80003910:	00013403          	ld	s0,0(sp)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    8000391c:	ff010113          	addi	sp,sp,-16
    80003920:	00113423          	sd	ra,8(sp)
    80003924:	00813023          	sd	s0,0(sp)
    80003928:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000392c:	fffff097          	auipc	ra,0xfffff
    80003930:	e64080e7          	jalr	-412(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003934:	00813083          	ld	ra,8(sp)
    80003938:	00013403          	ld	s0,0(sp)
    8000393c:	01010113          	addi	sp,sp,16
    80003940:	00008067          	ret

0000000080003944 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003944:	fc010113          	addi	sp,sp,-64
    80003948:	02113c23          	sd	ra,56(sp)
    8000394c:	02813823          	sd	s0,48(sp)
    80003950:	02913423          	sd	s1,40(sp)
    80003954:	03213023          	sd	s2,32(sp)
    80003958:	01313c23          	sd	s3,24(sp)
    8000395c:	01413823          	sd	s4,16(sp)
    80003960:	01513423          	sd	s5,8(sp)
    80003964:	04010413          	addi	s0,sp,64
    80003968:	00050913          	mv	s2,a0
    8000396c:	00058993          	mv	s3,a1
    80003970:	00060a13          	mv	s4,a2
    80003974:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003978:	06800513          	li	a0,104
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	f70080e7          	jalr	-144(ra) # 800038ec <_ZN3TCBnwEm>
    80003984:	00050493          	mv	s1,a0
    80003988:	000a8693          	mv	a3,s5
    8000398c:	000a0613          	mv	a2,s4
    80003990:	00098593          	mv	a1,s3
    80003994:	00000097          	auipc	ra,0x0
    80003998:	cc4080e7          	jalr	-828(ra) # 80003658 <_ZN3TCBC1EPFvPvES0_S0_>
    8000399c:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    800039a0:	02048663          	beqz	s1,800039cc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    800039a4:	00000513          	li	a0,0
}
    800039a8:	03813083          	ld	ra,56(sp)
    800039ac:	03013403          	ld	s0,48(sp)
    800039b0:	02813483          	ld	s1,40(sp)
    800039b4:	02013903          	ld	s2,32(sp)
    800039b8:	01813983          	ld	s3,24(sp)
    800039bc:	01013a03          	ld	s4,16(sp)
    800039c0:	00813a83          	ld	s5,8(sp)
    800039c4:	04010113          	addi	sp,sp,64
    800039c8:	00008067          	ret
    if (!*handle) return -1;
    800039cc:	fff00513          	li	a0,-1
    800039d0:	fd9ff06f          	j	800039a8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    800039d4:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    800039d8:	00048513          	mv	a0,s1
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	f40080e7          	jalr	-192(ra) # 8000391c <_ZN3TCBdlEPv>
    800039e4:	00090513          	mv	a0,s2
    800039e8:	0000a097          	auipc	ra,0xa
    800039ec:	760080e7          	jalr	1888(ra) # 8000e148 <_Unwind_Resume>

00000000800039f0 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	f24080e7          	jalr	-220(ra) # 80002924 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	c14080e7          	jalr	-1004(ra) # 8000261c <_ZN15MemoryAllocator9mem_allocEm>
}
    80003a10:	00813083          	ld	ra,8(sp)
    80003a14:	00013403          	ld	s0,0(sp)
    80003a18:	01010113          	addi	sp,sp,16
    80003a1c:	00008067          	ret

0000000080003a20 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    80003a20:	ff010113          	addi	sp,sp,-16
    80003a24:	00113423          	sd	ra,8(sp)
    80003a28:	00813023          	sd	s0,0(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	d60080e7          	jalr	-672(ra) # 80002790 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00813423          	sd	s0,8(sp)
    80003a50:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003a54:	02052503          	lw	a0,32(a0)
    80003a58:	ffd50513          	addi	a0,a0,-3
}
    80003a5c:	00153513          	seqz	a0,a0
    80003a60:	00813403          	ld	s0,8(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003a84:	02059063          	bnez	a1,80003aa4 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003a88:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003a8c:	0604b023          	sd	zero,96(s1)
}
    80003a90:	01813083          	ld	ra,24(sp)
    80003a94:	01013403          	ld	s0,16(sp)
    80003a98:	00813483          	ld	s1,8(sp)
    80003a9c:	02010113          	addi	sp,sp,32
    80003aa0:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003aa4:	06053783          	ld	a5,96(a0)
    80003aa8:	00050593          	mv	a1,a0
    80003aac:	0087b503          	ld	a0,8(a5)
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	91c080e7          	jalr	-1764(ra) # 800033cc <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    80003ab8:	0604b703          	ld	a4,96(s1)
    80003abc:	01072783          	lw	a5,16(a4)
    80003ac0:	0017879b          	addiw	a5,a5,1
    80003ac4:	00f72823          	sw	a5,16(a4)
    80003ac8:	fc1ff06f          	j	80003a88 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003acc <_ZN3TCB5getIDEv>:

int TCB::getID() {
    80003acc:	ff010113          	addi	sp,sp,-16
    80003ad0:	00113423          	sd	ra,8(sp)
    80003ad4:	00813023          	sd	s0,0(sp)
    80003ad8:	01010413          	addi	s0,sp,16
    dispatch();
    80003adc:	00000097          	auipc	ra,0x0
    80003ae0:	c74080e7          	jalr	-908(ra) # 80003750 <_ZN3TCB8dispatchEv>
    return running -> id;
}
    80003ae4:	00009797          	auipc	a5,0x9
    80003ae8:	53c7b783          	ld	a5,1340(a5) # 8000d020 <_ZN3TCB7runningE>
    80003aec:	0007a503          	lw	a0,0(a5)
    80003af0:	00813083          	ld	ra,8(sp)
    80003af4:	00013403          	ld	s0,0(sp)
    80003af8:	01010113          	addi	sp,sp,16
    80003afc:	00008067          	ret

0000000080003b00 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003b00:	fe010113          	addi	sp,sp,-32
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	00813823          	sd	s0,16(sp)
    80003b0c:	00913423          	sd	s1,8(sp)
    80003b10:	01213023          	sd	s2,0(sp)
    80003b14:	02010413          	addi	s0,sp,32
    80003b18:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003b1c:	00000913          	li	s2,0
    80003b20:	00c0006f          	j	80003b2c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	8a8080e7          	jalr	-1880(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	af4080e7          	jalr	-1292(ra) # 80001620 <_Z4getcv>
    80003b34:	0005059b          	sext.w	a1,a0
    80003b38:	01b00793          	li	a5,27
    80003b3c:	02f58a63          	beq	a1,a5,80003b70 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003b40:	0084b503          	ld	a0,8(s1)
    80003b44:	00003097          	auipc	ra,0x3
    80003b48:	400080e7          	jalr	1024(ra) # 80006f44 <_ZN6Buffer3putEi>
        i++;
    80003b4c:	0019071b          	addiw	a4,s2,1
    80003b50:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003b54:	0004a683          	lw	a3,0(s1)
    80003b58:	0026979b          	slliw	a5,a3,0x2
    80003b5c:	00d787bb          	addw	a5,a5,a3
    80003b60:	0017979b          	slliw	a5,a5,0x1
    80003b64:	02f767bb          	remw	a5,a4,a5
    80003b68:	fc0792e3          	bnez	a5,80003b2c <_ZL16producerKeyboardPv+0x2c>
    80003b6c:	fb9ff06f          	j	80003b24 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003b70:	00100793          	li	a5,1
    80003b74:	00009717          	auipc	a4,0x9
    80003b78:	4af72e23          	sw	a5,1212(a4) # 8000d030 <_ZL9threadEnd>
    data->buffer->put('!');
    80003b7c:	02100593          	li	a1,33
    80003b80:	0084b503          	ld	a0,8(s1)
    80003b84:	00003097          	auipc	ra,0x3
    80003b88:	3c0080e7          	jalr	960(ra) # 80006f44 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003b8c:	0104b503          	ld	a0,16(s1)
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	960080e7          	jalr	-1696(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003b98:	01813083          	ld	ra,24(sp)
    80003b9c:	01013403          	ld	s0,16(sp)
    80003ba0:	00813483          	ld	s1,8(sp)
    80003ba4:	00013903          	ld	s2,0(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret

0000000080003bb0 <_ZL8producerPv>:

static void producer(void *arg) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003bcc:	00000913          	li	s2,0
    80003bd0:	00c0006f          	j	80003bdc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	7f8080e7          	jalr	2040(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003bdc:	00009797          	auipc	a5,0x9
    80003be0:	4547a783          	lw	a5,1108(a5) # 8000d030 <_ZL9threadEnd>
    80003be4:	02079e63          	bnez	a5,80003c20 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003be8:	0004a583          	lw	a1,0(s1)
    80003bec:	0305859b          	addiw	a1,a1,48
    80003bf0:	0084b503          	ld	a0,8(s1)
    80003bf4:	00003097          	auipc	ra,0x3
    80003bf8:	350080e7          	jalr	848(ra) # 80006f44 <_ZN6Buffer3putEi>
        i++;
    80003bfc:	0019071b          	addiw	a4,s2,1
    80003c00:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003c04:	0004a683          	lw	a3,0(s1)
    80003c08:	0026979b          	slliw	a5,a3,0x2
    80003c0c:	00d787bb          	addw	a5,a5,a3
    80003c10:	0017979b          	slliw	a5,a5,0x1
    80003c14:	02f767bb          	remw	a5,a4,a5
    80003c18:	fc0792e3          	bnez	a5,80003bdc <_ZL8producerPv+0x2c>
    80003c1c:	fb9ff06f          	j	80003bd4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003c20:	0104b503          	ld	a0,16(s1)
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	8cc080e7          	jalr	-1844(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	00813483          	ld	s1,8(sp)
    80003c38:	00013903          	ld	s2,0(sp)
    80003c3c:	02010113          	addi	sp,sp,32
    80003c40:	00008067          	ret

0000000080003c44 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003c44:	fd010113          	addi	sp,sp,-48
    80003c48:	02113423          	sd	ra,40(sp)
    80003c4c:	02813023          	sd	s0,32(sp)
    80003c50:	00913c23          	sd	s1,24(sp)
    80003c54:	01213823          	sd	s2,16(sp)
    80003c58:	01313423          	sd	s3,8(sp)
    80003c5c:	03010413          	addi	s0,sp,48
    80003c60:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003c64:	00000993          	li	s3,0
    80003c68:	01c0006f          	j	80003c84 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	760080e7          	jalr	1888(ra) # 800013cc <_Z15thread_dispatchv>
    80003c74:	0500006f          	j	80003cc4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003c78:	00a00513          	li	a0,10
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	9f0080e7          	jalr	-1552(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003c84:	00009797          	auipc	a5,0x9
    80003c88:	3ac7a783          	lw	a5,940(a5) # 8000d030 <_ZL9threadEnd>
    80003c8c:	06079063          	bnez	a5,80003cec <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003c90:	00893503          	ld	a0,8(s2)
    80003c94:	00003097          	auipc	ra,0x3
    80003c98:	340080e7          	jalr	832(ra) # 80006fd4 <_ZN6Buffer3getEv>
        i++;
    80003c9c:	0019849b          	addiw	s1,s3,1
    80003ca0:	0004899b          	sext.w	s3,s1
        putc(key);
    80003ca4:	0ff57513          	andi	a0,a0,255
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	9c4080e7          	jalr	-1596(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003cb0:	00092703          	lw	a4,0(s2)
    80003cb4:	0027179b          	slliw	a5,a4,0x2
    80003cb8:	00e787bb          	addw	a5,a5,a4
    80003cbc:	02f4e7bb          	remw	a5,s1,a5
    80003cc0:	fa0786e3          	beqz	a5,80003c6c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003cc4:	05000793          	li	a5,80
    80003cc8:	02f4e4bb          	remw	s1,s1,a5
    80003ccc:	fa049ce3          	bnez	s1,80003c84 <_ZL8consumerPv+0x40>
    80003cd0:	fa9ff06f          	j	80003c78 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003cd4:	00893503          	ld	a0,8(s2)
    80003cd8:	00003097          	auipc	ra,0x3
    80003cdc:	2fc080e7          	jalr	764(ra) # 80006fd4 <_ZN6Buffer3getEv>
        putc(key);
    80003ce0:	0ff57513          	andi	a0,a0,255
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	988080e7          	jalr	-1656(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003cec:	00893503          	ld	a0,8(s2)
    80003cf0:	00003097          	auipc	ra,0x3
    80003cf4:	370080e7          	jalr	880(ra) # 80007060 <_ZN6Buffer6getCntEv>
    80003cf8:	fca04ee3          	bgtz	a0,80003cd4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003cfc:	01093503          	ld	a0,16(s2)
    80003d00:	ffffd097          	auipc	ra,0xffffd
    80003d04:	7f0080e7          	jalr	2032(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003d08:	02813083          	ld	ra,40(sp)
    80003d0c:	02013403          	ld	s0,32(sp)
    80003d10:	01813483          	ld	s1,24(sp)
    80003d14:	01013903          	ld	s2,16(sp)
    80003d18:	00813983          	ld	s3,8(sp)
    80003d1c:	03010113          	addi	sp,sp,48
    80003d20:	00008067          	ret

0000000080003d24 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003d24:	f9010113          	addi	sp,sp,-112
    80003d28:	06113423          	sd	ra,104(sp)
    80003d2c:	06813023          	sd	s0,96(sp)
    80003d30:	04913c23          	sd	s1,88(sp)
    80003d34:	05213823          	sd	s2,80(sp)
    80003d38:	05313423          	sd	s3,72(sp)
    80003d3c:	05413023          	sd	s4,64(sp)
    80003d40:	03513c23          	sd	s5,56(sp)
    80003d44:	03613823          	sd	s6,48(sp)
    80003d48:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003d4c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003d50:	00006517          	auipc	a0,0x6
    80003d54:	40050513          	addi	a0,a0,1024 # 8000a150 <CONSOLE_STATUS+0x140>
    80003d58:	00002097          	auipc	ra,0x2
    80003d5c:	220080e7          	jalr	544(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    80003d60:	01e00593          	li	a1,30
    80003d64:	fa040493          	addi	s1,s0,-96
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	294080e7          	jalr	660(ra) # 80006000 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003d74:	00048513          	mv	a0,s1
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	360080e7          	jalr	864(ra) # 800060d8 <_Z11stringToIntPKc>
    80003d80:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003d84:	00006517          	auipc	a0,0x6
    80003d88:	3ec50513          	addi	a0,a0,1004 # 8000a170 <CONSOLE_STATUS+0x160>
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	1ec080e7          	jalr	492(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    80003d94:	01e00593          	li	a1,30
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	264080e7          	jalr	612(ra) # 80006000 <_Z9getStringPci>
    n = stringToInt(input);
    80003da4:	00048513          	mv	a0,s1
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	330080e7          	jalr	816(ra) # 800060d8 <_Z11stringToIntPKc>
    80003db0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003db4:	00006517          	auipc	a0,0x6
    80003db8:	3dc50513          	addi	a0,a0,988 # 8000a190 <CONSOLE_STATUS+0x180>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	1bc080e7          	jalr	444(ra) # 80005f78 <_Z11printStringPKc>
    80003dc4:	00000613          	li	a2,0
    80003dc8:	00a00593          	li	a1,10
    80003dcc:	00090513          	mv	a0,s2
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	358080e7          	jalr	856(ra) # 80006128 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003dd8:	00006517          	auipc	a0,0x6
    80003ddc:	3d050513          	addi	a0,a0,976 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	198080e7          	jalr	408(ra) # 80005f78 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	334080e7          	jalr	820(ra) # 80006128 <_Z8printIntiii>
    printString(".\n");
    80003dfc:	00006517          	auipc	a0,0x6
    80003e00:	3c450513          	addi	a0,a0,964 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	174080e7          	jalr	372(ra) # 80005f78 <_Z11printStringPKc>
    if(threadNum > n) {
    80003e0c:	0324c463          	blt	s1,s2,80003e34 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003e10:	03205c63          	blez	s2,80003e48 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003e14:	03800513          	li	a0,56
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	384080e7          	jalr	900(ra) # 8000219c <_Znwm>
    80003e20:	00050a13          	mv	s4,a0
    80003e24:	00048593          	mv	a1,s1
    80003e28:	00003097          	auipc	ra,0x3
    80003e2c:	080080e7          	jalr	128(ra) # 80006ea8 <_ZN6BufferC1Ei>
    80003e30:	0300006f          	j	80003e60 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e34:	00006517          	auipc	a0,0x6
    80003e38:	39450513          	addi	a0,a0,916 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80003e3c:	00002097          	auipc	ra,0x2
    80003e40:	13c080e7          	jalr	316(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80003e44:	0140006f          	j	80003e58 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e48:	00006517          	auipc	a0,0x6
    80003e4c:	3c050513          	addi	a0,a0,960 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	128080e7          	jalr	296(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80003e58:	000b0113          	mv	sp,s6
    80003e5c:	1500006f          	j	80003fac <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003e60:	00000593          	li	a1,0
    80003e64:	00009517          	auipc	a0,0x9
    80003e68:	1d450513          	addi	a0,a0,468 # 8000d038 <_ZL10waitForAll>
    80003e6c:	ffffd097          	auipc	ra,0xffffd
    80003e70:	59c080e7          	jalr	1436(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003e74:	00391793          	slli	a5,s2,0x3
    80003e78:	00f78793          	addi	a5,a5,15
    80003e7c:	ff07f793          	andi	a5,a5,-16
    80003e80:	40f10133          	sub	sp,sp,a5
    80003e84:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003e88:	0019071b          	addiw	a4,s2,1
    80003e8c:	00171793          	slli	a5,a4,0x1
    80003e90:	00e787b3          	add	a5,a5,a4
    80003e94:	00379793          	slli	a5,a5,0x3
    80003e98:	00f78793          	addi	a5,a5,15
    80003e9c:	ff07f793          	andi	a5,a5,-16
    80003ea0:	40f10133          	sub	sp,sp,a5
    80003ea4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003ea8:	00191613          	slli	a2,s2,0x1
    80003eac:	012607b3          	add	a5,a2,s2
    80003eb0:	00379793          	slli	a5,a5,0x3
    80003eb4:	00f987b3          	add	a5,s3,a5
    80003eb8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003ebc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003ec0:	00009717          	auipc	a4,0x9
    80003ec4:	17873703          	ld	a4,376(a4) # 8000d038 <_ZL10waitForAll>
    80003ec8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003ecc:	00078613          	mv	a2,a5
    80003ed0:	00000597          	auipc	a1,0x0
    80003ed4:	d7458593          	addi	a1,a1,-652 # 80003c44 <_ZL8consumerPv>
    80003ed8:	f9840513          	addi	a0,s0,-104
    80003edc:	ffffd097          	auipc	ra,0xffffd
    80003ee0:	41c080e7          	jalr	1052(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003ee4:	00000493          	li	s1,0
    80003ee8:	0280006f          	j	80003f10 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003eec:	00000597          	auipc	a1,0x0
    80003ef0:	c1458593          	addi	a1,a1,-1004 # 80003b00 <_ZL16producerKeyboardPv>
                      data + i);
    80003ef4:	00179613          	slli	a2,a5,0x1
    80003ef8:	00f60633          	add	a2,a2,a5
    80003efc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003f00:	00c98633          	add	a2,s3,a2
    80003f04:	ffffd097          	auipc	ra,0xffffd
    80003f08:	3f4080e7          	jalr	1012(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003f0c:	0014849b          	addiw	s1,s1,1
    80003f10:	0524d263          	bge	s1,s2,80003f54 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003f14:	00149793          	slli	a5,s1,0x1
    80003f18:	009787b3          	add	a5,a5,s1
    80003f1c:	00379793          	slli	a5,a5,0x3
    80003f20:	00f987b3          	add	a5,s3,a5
    80003f24:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003f28:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003f2c:	00009717          	auipc	a4,0x9
    80003f30:	10c73703          	ld	a4,268(a4) # 8000d038 <_ZL10waitForAll>
    80003f34:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003f38:	00048793          	mv	a5,s1
    80003f3c:	00349513          	slli	a0,s1,0x3
    80003f40:	00aa8533          	add	a0,s5,a0
    80003f44:	fa9054e3          	blez	s1,80003eec <_Z22producerConsumer_C_APIv+0x1c8>
    80003f48:	00000597          	auipc	a1,0x0
    80003f4c:	c6858593          	addi	a1,a1,-920 # 80003bb0 <_ZL8producerPv>
    80003f50:	fa5ff06f          	j	80003ef4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003f54:	ffffd097          	auipc	ra,0xffffd
    80003f58:	478080e7          	jalr	1144(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003f5c:	00000493          	li	s1,0
    80003f60:	00994e63          	blt	s2,s1,80003f7c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003f64:	00009517          	auipc	a0,0x9
    80003f68:	0d453503          	ld	a0,212(a0) # 8000d038 <_ZL10waitForAll>
    80003f6c:	ffffd097          	auipc	ra,0xffffd
    80003f70:	538080e7          	jalr	1336(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003f74:	0014849b          	addiw	s1,s1,1
    80003f78:	fe9ff06f          	j	80003f60 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003f7c:	00009517          	auipc	a0,0x9
    80003f80:	0bc53503          	ld	a0,188(a0) # 8000d038 <_ZL10waitForAll>
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	4d4080e7          	jalr	1236(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003f8c:	000a0e63          	beqz	s4,80003fa8 <_Z22producerConsumer_C_APIv+0x284>
    80003f90:	000a0513          	mv	a0,s4
    80003f94:	00003097          	auipc	ra,0x3
    80003f98:	154080e7          	jalr	340(ra) # 800070e8 <_ZN6BufferD1Ev>
    80003f9c:	000a0513          	mv	a0,s4
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	224080e7          	jalr	548(ra) # 800021c4 <_ZdlPv>
    80003fa8:	000b0113          	mv	sp,s6

}
    80003fac:	f9040113          	addi	sp,s0,-112
    80003fb0:	06813083          	ld	ra,104(sp)
    80003fb4:	06013403          	ld	s0,96(sp)
    80003fb8:	05813483          	ld	s1,88(sp)
    80003fbc:	05013903          	ld	s2,80(sp)
    80003fc0:	04813983          	ld	s3,72(sp)
    80003fc4:	04013a03          	ld	s4,64(sp)
    80003fc8:	03813a83          	ld	s5,56(sp)
    80003fcc:	03013b03          	ld	s6,48(sp)
    80003fd0:	07010113          	addi	sp,sp,112
    80003fd4:	00008067          	ret
    80003fd8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003fdc:	000a0513          	mv	a0,s4
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	1e4080e7          	jalr	484(ra) # 800021c4 <_ZdlPv>
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	0000a097          	auipc	ra,0xa
    80003ff0:	15c080e7          	jalr	348(ra) # 8000e148 <_Unwind_Resume>

0000000080003ff4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ff4:	fe010113          	addi	sp,sp,-32
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	00813823          	sd	s0,16(sp)
    80004000:	00913423          	sd	s1,8(sp)
    80004004:	01213023          	sd	s2,0(sp)
    80004008:	02010413          	addi	s0,sp,32
    8000400c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004010:	00100793          	li	a5,1
    80004014:	02a7f863          	bgeu	a5,a0,80004044 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004018:	00a00793          	li	a5,10
    8000401c:	02f577b3          	remu	a5,a0,a5
    80004020:	02078e63          	beqz	a5,8000405c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004024:	fff48513          	addi	a0,s1,-1
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	fcc080e7          	jalr	-52(ra) # 80003ff4 <_ZL9fibonaccim>
    80004030:	00050913          	mv	s2,a0
    80004034:	ffe48513          	addi	a0,s1,-2
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	fbc080e7          	jalr	-68(ra) # 80003ff4 <_ZL9fibonaccim>
    80004040:	00a90533          	add	a0,s2,a0
}
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	00013903          	ld	s2,0(sp)
    80004054:	02010113          	addi	sp,sp,32
    80004058:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000405c:	ffffd097          	auipc	ra,0xffffd
    80004060:	370080e7          	jalr	880(ra) # 800013cc <_Z15thread_dispatchv>
    80004064:	fc1ff06f          	j	80004024 <_ZL9fibonaccim+0x30>

0000000080004068 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80004068:	fe010113          	addi	sp,sp,-32
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	01213023          	sd	s2,0(sp)
    8000407c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004080:	00000913          	li	s2,0
    80004084:	0380006f          	j	800040bc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004088:	ffffd097          	auipc	ra,0xffffd
    8000408c:	344080e7          	jalr	836(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004090:	00148493          	addi	s1,s1,1
    80004094:	000027b7          	lui	a5,0x2
    80004098:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000409c:	0097ee63          	bltu	a5,s1,800040b8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040a0:	00000713          	li	a4,0
    800040a4:	000077b7          	lui	a5,0x7
    800040a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040ac:	fce7eee3          	bltu	a5,a4,80004088 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800040b0:	00170713          	addi	a4,a4,1
    800040b4:	ff1ff06f          	j	800040a4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800040b8:	00190913          	addi	s2,s2,1
    800040bc:	00900793          	li	a5,9
    800040c0:	0527e063          	bltu	a5,s2,80004100 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800040c4:	00006517          	auipc	a0,0x6
    800040c8:	17450513          	addi	a0,a0,372 # 8000a238 <CONSOLE_STATUS+0x228>
    800040cc:	00002097          	auipc	ra,0x2
    800040d0:	eac080e7          	jalr	-340(ra) # 80005f78 <_Z11printStringPKc>
    800040d4:	00000613          	li	a2,0
    800040d8:	00a00593          	li	a1,10
    800040dc:	0009051b          	sext.w	a0,s2
    800040e0:	00002097          	auipc	ra,0x2
    800040e4:	048080e7          	jalr	72(ra) # 80006128 <_Z8printIntiii>
    800040e8:	00006517          	auipc	a0,0x6
    800040ec:	3a050513          	addi	a0,a0,928 # 8000a488 <CONSOLE_STATUS+0x478>
    800040f0:	00002097          	auipc	ra,0x2
    800040f4:	e88080e7          	jalr	-376(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040f8:	00000493          	li	s1,0
    800040fc:	f99ff06f          	j	80004094 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004100:	00006517          	auipc	a0,0x6
    80004104:	14050513          	addi	a0,a0,320 # 8000a240 <CONSOLE_STATUS+0x230>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	e70080e7          	jalr	-400(ra) # 80005f78 <_Z11printStringPKc>
    finishedA = true;
    80004110:	00100793          	li	a5,1
    80004114:	00009717          	auipc	a4,0x9
    80004118:	f2f70623          	sb	a5,-212(a4) # 8000d040 <_ZL9finishedA>
}
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	00813483          	ld	s1,8(sp)
    80004128:	00013903          	ld	s2,0(sp)
    8000412c:	02010113          	addi	sp,sp,32
    80004130:	00008067          	ret

0000000080004134 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004134:	fe010113          	addi	sp,sp,-32
    80004138:	00113c23          	sd	ra,24(sp)
    8000413c:	00813823          	sd	s0,16(sp)
    80004140:	00913423          	sd	s1,8(sp)
    80004144:	01213023          	sd	s2,0(sp)
    80004148:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000414c:	00000913          	li	s2,0
    80004150:	0380006f          	j	80004188 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004154:	ffffd097          	auipc	ra,0xffffd
    80004158:	278080e7          	jalr	632(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000415c:	00148493          	addi	s1,s1,1
    80004160:	000027b7          	lui	a5,0x2
    80004164:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004168:	0097ee63          	bltu	a5,s1,80004184 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000416c:	00000713          	li	a4,0
    80004170:	000077b7          	lui	a5,0x7
    80004174:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004178:	fce7eee3          	bltu	a5,a4,80004154 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000417c:	00170713          	addi	a4,a4,1
    80004180:	ff1ff06f          	j	80004170 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004184:	00190913          	addi	s2,s2,1
    80004188:	00f00793          	li	a5,15
    8000418c:	0527e063          	bltu	a5,s2,800041cc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004190:	00006517          	auipc	a0,0x6
    80004194:	0c050513          	addi	a0,a0,192 # 8000a250 <CONSOLE_STATUS+0x240>
    80004198:	00002097          	auipc	ra,0x2
    8000419c:	de0080e7          	jalr	-544(ra) # 80005f78 <_Z11printStringPKc>
    800041a0:	00000613          	li	a2,0
    800041a4:	00a00593          	li	a1,10
    800041a8:	0009051b          	sext.w	a0,s2
    800041ac:	00002097          	auipc	ra,0x2
    800041b0:	f7c080e7          	jalr	-132(ra) # 80006128 <_Z8printIntiii>
    800041b4:	00006517          	auipc	a0,0x6
    800041b8:	2d450513          	addi	a0,a0,724 # 8000a488 <CONSOLE_STATUS+0x478>
    800041bc:	00002097          	auipc	ra,0x2
    800041c0:	dbc080e7          	jalr	-580(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041c4:	00000493          	li	s1,0
    800041c8:	f99ff06f          	j	80004160 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800041cc:	00006517          	auipc	a0,0x6
    800041d0:	08c50513          	addi	a0,a0,140 # 8000a258 <CONSOLE_STATUS+0x248>
    800041d4:	00002097          	auipc	ra,0x2
    800041d8:	da4080e7          	jalr	-604(ra) # 80005f78 <_Z11printStringPKc>
    finishedB = true;
    800041dc:	00100793          	li	a5,1
    800041e0:	00009717          	auipc	a4,0x9
    800041e4:	e6f700a3          	sb	a5,-415(a4) # 8000d041 <_ZL9finishedB>
    thread_dispatch();
    800041e8:	ffffd097          	auipc	ra,0xffffd
    800041ec:	1e4080e7          	jalr	484(ra) # 800013cc <_Z15thread_dispatchv>
}
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	00013903          	ld	s2,0(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret

0000000080004208 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004208:	fe010113          	addi	sp,sp,-32
    8000420c:	00113c23          	sd	ra,24(sp)
    80004210:	00813823          	sd	s0,16(sp)
    80004214:	00913423          	sd	s1,8(sp)
    80004218:	01213023          	sd	s2,0(sp)
    8000421c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004220:	00000493          	li	s1,0
    80004224:	0400006f          	j	80004264 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004228:	00006517          	auipc	a0,0x6
    8000422c:	04050513          	addi	a0,a0,64 # 8000a268 <CONSOLE_STATUS+0x258>
    80004230:	00002097          	auipc	ra,0x2
    80004234:	d48080e7          	jalr	-696(ra) # 80005f78 <_Z11printStringPKc>
    80004238:	00000613          	li	a2,0
    8000423c:	00a00593          	li	a1,10
    80004240:	00048513          	mv	a0,s1
    80004244:	00002097          	auipc	ra,0x2
    80004248:	ee4080e7          	jalr	-284(ra) # 80006128 <_Z8printIntiii>
    8000424c:	00006517          	auipc	a0,0x6
    80004250:	23c50513          	addi	a0,a0,572 # 8000a488 <CONSOLE_STATUS+0x478>
    80004254:	00002097          	auipc	ra,0x2
    80004258:	d24080e7          	jalr	-732(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000425c:	0014849b          	addiw	s1,s1,1
    80004260:	0ff4f493          	andi	s1,s1,255
    80004264:	00200793          	li	a5,2
    80004268:	fc97f0e3          	bgeu	a5,s1,80004228 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000426c:	00006517          	auipc	a0,0x6
    80004270:	00450513          	addi	a0,a0,4 # 8000a270 <CONSOLE_STATUS+0x260>
    80004274:	00002097          	auipc	ra,0x2
    80004278:	d04080e7          	jalr	-764(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000427c:	00700313          	li	t1,7
    thread_dispatch();
    80004280:	ffffd097          	auipc	ra,0xffffd
    80004284:	14c080e7          	jalr	332(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004288:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000428c:	00006517          	auipc	a0,0x6
    80004290:	ff450513          	addi	a0,a0,-12 # 8000a280 <CONSOLE_STATUS+0x270>
    80004294:	00002097          	auipc	ra,0x2
    80004298:	ce4080e7          	jalr	-796(ra) # 80005f78 <_Z11printStringPKc>
    8000429c:	00000613          	li	a2,0
    800042a0:	00a00593          	li	a1,10
    800042a4:	0009051b          	sext.w	a0,s2
    800042a8:	00002097          	auipc	ra,0x2
    800042ac:	e80080e7          	jalr	-384(ra) # 80006128 <_Z8printIntiii>
    800042b0:	00006517          	auipc	a0,0x6
    800042b4:	1d850513          	addi	a0,a0,472 # 8000a488 <CONSOLE_STATUS+0x478>
    800042b8:	00002097          	auipc	ra,0x2
    800042bc:	cc0080e7          	jalr	-832(ra) # 80005f78 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800042c0:	00c00513          	li	a0,12
    800042c4:	00000097          	auipc	ra,0x0
    800042c8:	d30080e7          	jalr	-720(ra) # 80003ff4 <_ZL9fibonaccim>
    800042cc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800042d0:	00006517          	auipc	a0,0x6
    800042d4:	fb850513          	addi	a0,a0,-72 # 8000a288 <CONSOLE_STATUS+0x278>
    800042d8:	00002097          	auipc	ra,0x2
    800042dc:	ca0080e7          	jalr	-864(ra) # 80005f78 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	0009051b          	sext.w	a0,s2
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	e3c080e7          	jalr	-452(ra) # 80006128 <_Z8printIntiii>
    800042f4:	00006517          	auipc	a0,0x6
    800042f8:	19450513          	addi	a0,a0,404 # 8000a488 <CONSOLE_STATUS+0x478>
    800042fc:	00002097          	auipc	ra,0x2
    80004300:	c7c080e7          	jalr	-900(ra) # 80005f78 <_Z11printStringPKc>
    80004304:	0400006f          	j	80004344 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004308:	00006517          	auipc	a0,0x6
    8000430c:	f6050513          	addi	a0,a0,-160 # 8000a268 <CONSOLE_STATUS+0x258>
    80004310:	00002097          	auipc	ra,0x2
    80004314:	c68080e7          	jalr	-920(ra) # 80005f78 <_Z11printStringPKc>
    80004318:	00000613          	li	a2,0
    8000431c:	00a00593          	li	a1,10
    80004320:	00048513          	mv	a0,s1
    80004324:	00002097          	auipc	ra,0x2
    80004328:	e04080e7          	jalr	-508(ra) # 80006128 <_Z8printIntiii>
    8000432c:	00006517          	auipc	a0,0x6
    80004330:	15c50513          	addi	a0,a0,348 # 8000a488 <CONSOLE_STATUS+0x478>
    80004334:	00002097          	auipc	ra,0x2
    80004338:	c44080e7          	jalr	-956(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000433c:	0014849b          	addiw	s1,s1,1
    80004340:	0ff4f493          	andi	s1,s1,255
    80004344:	00500793          	li	a5,5
    80004348:	fc97f0e3          	bgeu	a5,s1,80004308 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000434c:	00006517          	auipc	a0,0x6
    80004350:	ef450513          	addi	a0,a0,-268 # 8000a240 <CONSOLE_STATUS+0x230>
    80004354:	00002097          	auipc	ra,0x2
    80004358:	c24080e7          	jalr	-988(ra) # 80005f78 <_Z11printStringPKc>
    finishedC = true;
    8000435c:	00100793          	li	a5,1
    80004360:	00009717          	auipc	a4,0x9
    80004364:	cef70123          	sb	a5,-798(a4) # 8000d042 <_ZL9finishedC>
    thread_dispatch();
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	064080e7          	jalr	100(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	00013903          	ld	s2,0(sp)
    80004380:	02010113          	addi	sp,sp,32
    80004384:	00008067          	ret

0000000080004388 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004388:	fe010113          	addi	sp,sp,-32
    8000438c:	00113c23          	sd	ra,24(sp)
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	01213023          	sd	s2,0(sp)
    8000439c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800043a0:	00a00493          	li	s1,10
    800043a4:	0400006f          	j	800043e4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043a8:	00006517          	auipc	a0,0x6
    800043ac:	ef050513          	addi	a0,a0,-272 # 8000a298 <CONSOLE_STATUS+0x288>
    800043b0:	00002097          	auipc	ra,0x2
    800043b4:	bc8080e7          	jalr	-1080(ra) # 80005f78 <_Z11printStringPKc>
    800043b8:	00000613          	li	a2,0
    800043bc:	00a00593          	li	a1,10
    800043c0:	00048513          	mv	a0,s1
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	d64080e7          	jalr	-668(ra) # 80006128 <_Z8printIntiii>
    800043cc:	00006517          	auipc	a0,0x6
    800043d0:	0bc50513          	addi	a0,a0,188 # 8000a488 <CONSOLE_STATUS+0x478>
    800043d4:	00002097          	auipc	ra,0x2
    800043d8:	ba4080e7          	jalr	-1116(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800043dc:	0014849b          	addiw	s1,s1,1
    800043e0:	0ff4f493          	andi	s1,s1,255
    800043e4:	00c00793          	li	a5,12
    800043e8:	fc97f0e3          	bgeu	a5,s1,800043a8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800043ec:	00006517          	auipc	a0,0x6
    800043f0:	eb450513          	addi	a0,a0,-332 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	b84080e7          	jalr	-1148(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800043fc:	00500313          	li	t1,5
    thread_dispatch();
    80004400:	ffffd097          	auipc	ra,0xffffd
    80004404:	fcc080e7          	jalr	-52(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004408:	01000513          	li	a0,16
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	be8080e7          	jalr	-1048(ra) # 80003ff4 <_ZL9fibonaccim>
    80004414:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004418:	00006517          	auipc	a0,0x6
    8000441c:	e9850513          	addi	a0,a0,-360 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004420:	00002097          	auipc	ra,0x2
    80004424:	b58080e7          	jalr	-1192(ra) # 80005f78 <_Z11printStringPKc>
    80004428:	00000613          	li	a2,0
    8000442c:	00a00593          	li	a1,10
    80004430:	0009051b          	sext.w	a0,s2
    80004434:	00002097          	auipc	ra,0x2
    80004438:	cf4080e7          	jalr	-780(ra) # 80006128 <_Z8printIntiii>
    8000443c:	00006517          	auipc	a0,0x6
    80004440:	04c50513          	addi	a0,a0,76 # 8000a488 <CONSOLE_STATUS+0x478>
    80004444:	00002097          	auipc	ra,0x2
    80004448:	b34080e7          	jalr	-1228(ra) # 80005f78 <_Z11printStringPKc>
    8000444c:	0400006f          	j	8000448c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004450:	00006517          	auipc	a0,0x6
    80004454:	e4850513          	addi	a0,a0,-440 # 8000a298 <CONSOLE_STATUS+0x288>
    80004458:	00002097          	auipc	ra,0x2
    8000445c:	b20080e7          	jalr	-1248(ra) # 80005f78 <_Z11printStringPKc>
    80004460:	00000613          	li	a2,0
    80004464:	00a00593          	li	a1,10
    80004468:	00048513          	mv	a0,s1
    8000446c:	00002097          	auipc	ra,0x2
    80004470:	cbc080e7          	jalr	-836(ra) # 80006128 <_Z8printIntiii>
    80004474:	00006517          	auipc	a0,0x6
    80004478:	01450513          	addi	a0,a0,20 # 8000a488 <CONSOLE_STATUS+0x478>
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	afc080e7          	jalr	-1284(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004484:	0014849b          	addiw	s1,s1,1
    80004488:	0ff4f493          	andi	s1,s1,255
    8000448c:	00f00793          	li	a5,15
    80004490:	fc97f0e3          	bgeu	a5,s1,80004450 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004494:	00006517          	auipc	a0,0x6
    80004498:	e2c50513          	addi	a0,a0,-468 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    8000449c:	00002097          	auipc	ra,0x2
    800044a0:	adc080e7          	jalr	-1316(ra) # 80005f78 <_Z11printStringPKc>
    finishedD = true;
    800044a4:	00100793          	li	a5,1
    800044a8:	00009717          	auipc	a4,0x9
    800044ac:	b8f70da3          	sb	a5,-1125(a4) # 8000d043 <_ZL9finishedD>
    thread_dispatch();
    800044b0:	ffffd097          	auipc	ra,0xffffd
    800044b4:	f1c080e7          	jalr	-228(ra) # 800013cc <_Z15thread_dispatchv>
}
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	00013903          	ld	s2,0(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret

00000000800044d0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800044d0:	fc010113          	addi	sp,sp,-64
    800044d4:	02113c23          	sd	ra,56(sp)
    800044d8:	02813823          	sd	s0,48(sp)
    800044dc:	02913423          	sd	s1,40(sp)
    800044e0:	03213023          	sd	s2,32(sp)
    800044e4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800044e8:	02000513          	li	a0,32
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	cb0080e7          	jalr	-848(ra) # 8000219c <_Znwm>
    800044f4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	da4080e7          	jalr	-604(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004500:	00009797          	auipc	a5,0x9
    80004504:	83878793          	addi	a5,a5,-1992 # 8000cd38 <_ZTV7WorkerA+0x10>
    80004508:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000450c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004510:	00006517          	auipc	a0,0x6
    80004514:	dc050513          	addi	a0,a0,-576 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	a60080e7          	jalr	-1440(ra) # 80005f78 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004520:	02000513          	li	a0,32
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	c78080e7          	jalr	-904(ra) # 8000219c <_Znwm>
    8000452c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	d6c080e7          	jalr	-660(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004538:	00009797          	auipc	a5,0x9
    8000453c:	82878793          	addi	a5,a5,-2008 # 8000cd60 <_ZTV7WorkerB+0x10>
    80004540:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004544:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004548:	00006517          	auipc	a0,0x6
    8000454c:	da050513          	addi	a0,a0,-608 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    80004550:	00002097          	auipc	ra,0x2
    80004554:	a28080e7          	jalr	-1496(ra) # 80005f78 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004558:	02000513          	li	a0,32
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	c40080e7          	jalr	-960(ra) # 8000219c <_Znwm>
    80004564:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	d34080e7          	jalr	-716(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004570:	00009797          	auipc	a5,0x9
    80004574:	81878793          	addi	a5,a5,-2024 # 8000cd88 <_ZTV7WorkerC+0x10>
    80004578:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000457c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004580:	00006517          	auipc	a0,0x6
    80004584:	d8050513          	addi	a0,a0,-640 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80004588:	00002097          	auipc	ra,0x2
    8000458c:	9f0080e7          	jalr	-1552(ra) # 80005f78 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004590:	02000513          	li	a0,32
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	c08080e7          	jalr	-1016(ra) # 8000219c <_Znwm>
    8000459c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	cfc080e7          	jalr	-772(ra) # 8000229c <_ZN6ThreadC1Ev>
    800045a8:	00009797          	auipc	a5,0x9
    800045ac:	80878793          	addi	a5,a5,-2040 # 8000cdb0 <_ZTV7WorkerD+0x10>
    800045b0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800045b4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800045b8:	00006517          	auipc	a0,0x6
    800045bc:	d6050513          	addi	a0,a0,-672 # 8000a318 <CONSOLE_STATUS+0x308>
    800045c0:	00002097          	auipc	ra,0x2
    800045c4:	9b8080e7          	jalr	-1608(ra) # 80005f78 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800045c8:	00000493          	li	s1,0
    800045cc:	00300793          	li	a5,3
    800045d0:	0297c663          	blt	a5,s1,800045fc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800045d4:	00349793          	slli	a5,s1,0x3
    800045d8:	fe040713          	addi	a4,s0,-32
    800045dc:	00f707b3          	add	a5,a4,a5
    800045e0:	fe07b503          	ld	a0,-32(a5)
    800045e4:	ffffe097          	auipc	ra,0xffffe
    800045e8:	ce8080e7          	jalr	-792(ra) # 800022cc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800045ec:	0014849b          	addiw	s1,s1,1
    800045f0:	fddff06f          	j	800045cc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	d10080e7          	jalr	-752(ra) # 80002304 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800045fc:	00009797          	auipc	a5,0x9
    80004600:	a447c783          	lbu	a5,-1468(a5) # 8000d040 <_ZL9finishedA>
    80004604:	fe0788e3          	beqz	a5,800045f4 <_Z20Threads_CPP_API_testv+0x124>
    80004608:	00009797          	auipc	a5,0x9
    8000460c:	a397c783          	lbu	a5,-1479(a5) # 8000d041 <_ZL9finishedB>
    80004610:	fe0782e3          	beqz	a5,800045f4 <_Z20Threads_CPP_API_testv+0x124>
    80004614:	00009797          	auipc	a5,0x9
    80004618:	a2e7c783          	lbu	a5,-1490(a5) # 8000d042 <_ZL9finishedC>
    8000461c:	fc078ce3          	beqz	a5,800045f4 <_Z20Threads_CPP_API_testv+0x124>
    80004620:	00009797          	auipc	a5,0x9
    80004624:	a237c783          	lbu	a5,-1501(a5) # 8000d043 <_ZL9finishedD>
    80004628:	fc0786e3          	beqz	a5,800045f4 <_Z20Threads_CPP_API_testv+0x124>
    8000462c:	fc040493          	addi	s1,s0,-64
    80004630:	0080006f          	j	80004638 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004634:	00848493          	addi	s1,s1,8
    80004638:	fe040793          	addi	a5,s0,-32
    8000463c:	08f48663          	beq	s1,a5,800046c8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004640:	0004b503          	ld	a0,0(s1)
    80004644:	fe0508e3          	beqz	a0,80004634 <_Z20Threads_CPP_API_testv+0x164>
    80004648:	00053783          	ld	a5,0(a0)
    8000464c:	0087b783          	ld	a5,8(a5)
    80004650:	000780e7          	jalr	a5
    80004654:	fe1ff06f          	j	80004634 <_Z20Threads_CPP_API_testv+0x164>
    80004658:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000465c:	00048513          	mv	a0,s1
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	b64080e7          	jalr	-1180(ra) # 800021c4 <_ZdlPv>
    80004668:	00090513          	mv	a0,s2
    8000466c:	0000a097          	auipc	ra,0xa
    80004670:	adc080e7          	jalr	-1316(ra) # 8000e148 <_Unwind_Resume>
    80004674:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004678:	00048513          	mv	a0,s1
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	b48080e7          	jalr	-1208(ra) # 800021c4 <_ZdlPv>
    80004684:	00090513          	mv	a0,s2
    80004688:	0000a097          	auipc	ra,0xa
    8000468c:	ac0080e7          	jalr	-1344(ra) # 8000e148 <_Unwind_Resume>
    80004690:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004694:	00048513          	mv	a0,s1
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	b2c080e7          	jalr	-1236(ra) # 800021c4 <_ZdlPv>
    800046a0:	00090513          	mv	a0,s2
    800046a4:	0000a097          	auipc	ra,0xa
    800046a8:	aa4080e7          	jalr	-1372(ra) # 8000e148 <_Unwind_Resume>
    800046ac:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800046b0:	00048513          	mv	a0,s1
    800046b4:	ffffe097          	auipc	ra,0xffffe
    800046b8:	b10080e7          	jalr	-1264(ra) # 800021c4 <_ZdlPv>
    800046bc:	00090513          	mv	a0,s2
    800046c0:	0000a097          	auipc	ra,0xa
    800046c4:	a88080e7          	jalr	-1400(ra) # 8000e148 <_Unwind_Resume>
}
    800046c8:	03813083          	ld	ra,56(sp)
    800046cc:	03013403          	ld	s0,48(sp)
    800046d0:	02813483          	ld	s1,40(sp)
    800046d4:	02013903          	ld	s2,32(sp)
    800046d8:	04010113          	addi	sp,sp,64
    800046dc:	00008067          	ret

00000000800046e0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800046e0:	ff010113          	addi	sp,sp,-16
    800046e4:	00113423          	sd	ra,8(sp)
    800046e8:	00813023          	sd	s0,0(sp)
    800046ec:	01010413          	addi	s0,sp,16
    800046f0:	00008797          	auipc	a5,0x8
    800046f4:	64878793          	addi	a5,a5,1608 # 8000cd38 <_ZTV7WorkerA+0x10>
    800046f8:	00f53023          	sd	a5,0(a0)
    800046fc:	ffffe097          	auipc	ra,0xffffe
    80004700:	9b0080e7          	jalr	-1616(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004704:	00813083          	ld	ra,8(sp)
    80004708:	00013403          	ld	s0,0(sp)
    8000470c:	01010113          	addi	sp,sp,16
    80004710:	00008067          	ret

0000000080004714 <_ZN7WorkerAD0Ev>:
    80004714:	fe010113          	addi	sp,sp,-32
    80004718:	00113c23          	sd	ra,24(sp)
    8000471c:	00813823          	sd	s0,16(sp)
    80004720:	00913423          	sd	s1,8(sp)
    80004724:	02010413          	addi	s0,sp,32
    80004728:	00050493          	mv	s1,a0
    8000472c:	00008797          	auipc	a5,0x8
    80004730:	60c78793          	addi	a5,a5,1548 # 8000cd38 <_ZTV7WorkerA+0x10>
    80004734:	00f53023          	sd	a5,0(a0)
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	974080e7          	jalr	-1676(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004740:	00048513          	mv	a0,s1
    80004744:	ffffe097          	auipc	ra,0xffffe
    80004748:	a80080e7          	jalr	-1408(ra) # 800021c4 <_ZdlPv>
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	01013403          	ld	s0,16(sp)
    80004754:	00813483          	ld	s1,8(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	00008067          	ret

0000000080004760 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00113423          	sd	ra,8(sp)
    80004768:	00813023          	sd	s0,0(sp)
    8000476c:	01010413          	addi	s0,sp,16
    80004770:	00008797          	auipc	a5,0x8
    80004774:	5f078793          	addi	a5,a5,1520 # 8000cd60 <_ZTV7WorkerB+0x10>
    80004778:	00f53023          	sd	a5,0(a0)
    8000477c:	ffffe097          	auipc	ra,0xffffe
    80004780:	930080e7          	jalr	-1744(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004784:	00813083          	ld	ra,8(sp)
    80004788:	00013403          	ld	s0,0(sp)
    8000478c:	01010113          	addi	sp,sp,16
    80004790:	00008067          	ret

0000000080004794 <_ZN7WorkerBD0Ev>:
    80004794:	fe010113          	addi	sp,sp,-32
    80004798:	00113c23          	sd	ra,24(sp)
    8000479c:	00813823          	sd	s0,16(sp)
    800047a0:	00913423          	sd	s1,8(sp)
    800047a4:	02010413          	addi	s0,sp,32
    800047a8:	00050493          	mv	s1,a0
    800047ac:	00008797          	auipc	a5,0x8
    800047b0:	5b478793          	addi	a5,a5,1460 # 8000cd60 <_ZTV7WorkerB+0x10>
    800047b4:	00f53023          	sd	a5,0(a0)
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	8f4080e7          	jalr	-1804(ra) # 800020ac <_ZN6ThreadD1Ev>
    800047c0:	00048513          	mv	a0,s1
    800047c4:	ffffe097          	auipc	ra,0xffffe
    800047c8:	a00080e7          	jalr	-1536(ra) # 800021c4 <_ZdlPv>
    800047cc:	01813083          	ld	ra,24(sp)
    800047d0:	01013403          	ld	s0,16(sp)
    800047d4:	00813483          	ld	s1,8(sp)
    800047d8:	02010113          	addi	sp,sp,32
    800047dc:	00008067          	ret

00000000800047e0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800047e0:	ff010113          	addi	sp,sp,-16
    800047e4:	00113423          	sd	ra,8(sp)
    800047e8:	00813023          	sd	s0,0(sp)
    800047ec:	01010413          	addi	s0,sp,16
    800047f0:	00008797          	auipc	a5,0x8
    800047f4:	59878793          	addi	a5,a5,1432 # 8000cd88 <_ZTV7WorkerC+0x10>
    800047f8:	00f53023          	sd	a5,0(a0)
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	8b0080e7          	jalr	-1872(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004804:	00813083          	ld	ra,8(sp)
    80004808:	00013403          	ld	s0,0(sp)
    8000480c:	01010113          	addi	sp,sp,16
    80004810:	00008067          	ret

0000000080004814 <_ZN7WorkerCD0Ev>:
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	02010413          	addi	s0,sp,32
    80004828:	00050493          	mv	s1,a0
    8000482c:	00008797          	auipc	a5,0x8
    80004830:	55c78793          	addi	a5,a5,1372 # 8000cd88 <_ZTV7WorkerC+0x10>
    80004834:	00f53023          	sd	a5,0(a0)
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	874080e7          	jalr	-1932(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004840:	00048513          	mv	a0,s1
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	980080e7          	jalr	-1664(ra) # 800021c4 <_ZdlPv>
    8000484c:	01813083          	ld	ra,24(sp)
    80004850:	01013403          	ld	s0,16(sp)
    80004854:	00813483          	ld	s1,8(sp)
    80004858:	02010113          	addi	sp,sp,32
    8000485c:	00008067          	ret

0000000080004860 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004860:	ff010113          	addi	sp,sp,-16
    80004864:	00113423          	sd	ra,8(sp)
    80004868:	00813023          	sd	s0,0(sp)
    8000486c:	01010413          	addi	s0,sp,16
    80004870:	00008797          	auipc	a5,0x8
    80004874:	54078793          	addi	a5,a5,1344 # 8000cdb0 <_ZTV7WorkerD+0x10>
    80004878:	00f53023          	sd	a5,0(a0)
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	830080e7          	jalr	-2000(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004884:	00813083          	ld	ra,8(sp)
    80004888:	00013403          	ld	s0,0(sp)
    8000488c:	01010113          	addi	sp,sp,16
    80004890:	00008067          	ret

0000000080004894 <_ZN7WorkerDD0Ev>:
    80004894:	fe010113          	addi	sp,sp,-32
    80004898:	00113c23          	sd	ra,24(sp)
    8000489c:	00813823          	sd	s0,16(sp)
    800048a0:	00913423          	sd	s1,8(sp)
    800048a4:	02010413          	addi	s0,sp,32
    800048a8:	00050493          	mv	s1,a0
    800048ac:	00008797          	auipc	a5,0x8
    800048b0:	50478793          	addi	a5,a5,1284 # 8000cdb0 <_ZTV7WorkerD+0x10>
    800048b4:	00f53023          	sd	a5,0(a0)
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	7f4080e7          	jalr	2036(ra) # 800020ac <_ZN6ThreadD1Ev>
    800048c0:	00048513          	mv	a0,s1
    800048c4:	ffffe097          	auipc	ra,0xffffe
    800048c8:	900080e7          	jalr	-1792(ra) # 800021c4 <_ZdlPv>
    800048cc:	01813083          	ld	ra,24(sp)
    800048d0:	01013403          	ld	s0,16(sp)
    800048d4:	00813483          	ld	s1,8(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret

00000000800048e0 <_ZN7WorkerA3runEv>:
    void run() override {
    800048e0:	ff010113          	addi	sp,sp,-16
    800048e4:	00113423          	sd	ra,8(sp)
    800048e8:	00813023          	sd	s0,0(sp)
    800048ec:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800048f0:	00000593          	li	a1,0
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	774080e7          	jalr	1908(ra) # 80004068 <_ZN7WorkerA11workerBodyAEPv>
    }
    800048fc:	00813083          	ld	ra,8(sp)
    80004900:	00013403          	ld	s0,0(sp)
    80004904:	01010113          	addi	sp,sp,16
    80004908:	00008067          	ret

000000008000490c <_ZN7WorkerB3runEv>:
    void run() override {
    8000490c:	ff010113          	addi	sp,sp,-16
    80004910:	00113423          	sd	ra,8(sp)
    80004914:	00813023          	sd	s0,0(sp)
    80004918:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000491c:	00000593          	li	a1,0
    80004920:	00000097          	auipc	ra,0x0
    80004924:	814080e7          	jalr	-2028(ra) # 80004134 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004928:	00813083          	ld	ra,8(sp)
    8000492c:	00013403          	ld	s0,0(sp)
    80004930:	01010113          	addi	sp,sp,16
    80004934:	00008067          	ret

0000000080004938 <_ZN7WorkerC3runEv>:
    void run() override {
    80004938:	ff010113          	addi	sp,sp,-16
    8000493c:	00113423          	sd	ra,8(sp)
    80004940:	00813023          	sd	s0,0(sp)
    80004944:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004948:	00000593          	li	a1,0
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	8bc080e7          	jalr	-1860(ra) # 80004208 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004954:	00813083          	ld	ra,8(sp)
    80004958:	00013403          	ld	s0,0(sp)
    8000495c:	01010113          	addi	sp,sp,16
    80004960:	00008067          	ret

0000000080004964 <_ZN7WorkerD3runEv>:
    void run() override {
    80004964:	ff010113          	addi	sp,sp,-16
    80004968:	00113423          	sd	ra,8(sp)
    8000496c:	00813023          	sd	s0,0(sp)
    80004970:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004974:	00000593          	li	a1,0
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	a10080e7          	jalr	-1520(ra) # 80004388 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004980:	00813083          	ld	ra,8(sp)
    80004984:	00013403          	ld	s0,0(sp)
    80004988:	01010113          	addi	sp,sp,16
    8000498c:	00008067          	ret

0000000080004990 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004990:	f8010113          	addi	sp,sp,-128
    80004994:	06113c23          	sd	ra,120(sp)
    80004998:	06813823          	sd	s0,112(sp)
    8000499c:	06913423          	sd	s1,104(sp)
    800049a0:	07213023          	sd	s2,96(sp)
    800049a4:	05313c23          	sd	s3,88(sp)
    800049a8:	05413823          	sd	s4,80(sp)
    800049ac:	05513423          	sd	s5,72(sp)
    800049b0:	05613023          	sd	s6,64(sp)
    800049b4:	03713c23          	sd	s7,56(sp)
    800049b8:	03813823          	sd	s8,48(sp)
    800049bc:	03913423          	sd	s9,40(sp)
    800049c0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800049c4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	78850513          	addi	a0,a0,1928 # 8000a150 <CONSOLE_STATUS+0x140>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	5a8080e7          	jalr	1448(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    800049d8:	01e00593          	li	a1,30
    800049dc:	f8040493          	addi	s1,s0,-128
    800049e0:	00048513          	mv	a0,s1
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	61c080e7          	jalr	1564(ra) # 80006000 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800049ec:	00048513          	mv	a0,s1
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	6e8080e7          	jalr	1768(ra) # 800060d8 <_Z11stringToIntPKc>
    800049f8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800049fc:	00005517          	auipc	a0,0x5
    80004a00:	77450513          	addi	a0,a0,1908 # 8000a170 <CONSOLE_STATUS+0x160>
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	574080e7          	jalr	1396(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    80004a0c:	01e00593          	li	a1,30
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	5ec080e7          	jalr	1516(ra) # 80006000 <_Z9getStringPci>
    n = stringToInt(input);
    80004a1c:	00048513          	mv	a0,s1
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	6b8080e7          	jalr	1720(ra) # 800060d8 <_Z11stringToIntPKc>
    80004a28:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	76450513          	addi	a0,a0,1892 # 8000a190 <CONSOLE_STATUS+0x180>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	544080e7          	jalr	1348(ra) # 80005f78 <_Z11printStringPKc>
    printInt(threadNum);
    80004a3c:	00000613          	li	a2,0
    80004a40:	00a00593          	li	a1,10
    80004a44:	00098513          	mv	a0,s3
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	6e0080e7          	jalr	1760(ra) # 80006128 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004a50:	00005517          	auipc	a0,0x5
    80004a54:	75850513          	addi	a0,a0,1880 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	520080e7          	jalr	1312(ra) # 80005f78 <_Z11printStringPKc>
    printInt(n);
    80004a60:	00000613          	li	a2,0
    80004a64:	00a00593          	li	a1,10
    80004a68:	00048513          	mv	a0,s1
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	6bc080e7          	jalr	1724(ra) # 80006128 <_Z8printIntiii>
    printString(".\n");
    80004a74:	00005517          	auipc	a0,0x5
    80004a78:	74c50513          	addi	a0,a0,1868 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	4fc080e7          	jalr	1276(ra) # 80005f78 <_Z11printStringPKc>
    if (threadNum > n) {
    80004a84:	0334c463          	blt	s1,s3,80004aac <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004a88:	03305c63          	blez	s3,80004ac0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004a8c:	03800513          	li	a0,56
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	70c080e7          	jalr	1804(ra) # 8000219c <_Znwm>
    80004a98:	00050a93          	mv	s5,a0
    80004a9c:	00048593          	mv	a1,s1
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	7a8080e7          	jalr	1960(ra) # 80006248 <_ZN9BufferCPPC1Ei>
    80004aa8:	0300006f          	j	80004ad8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004aac:	00005517          	auipc	a0,0x5
    80004ab0:	71c50513          	addi	a0,a0,1820 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	4c4080e7          	jalr	1220(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80004abc:	0140006f          	j	80004ad0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004ac0:	00005517          	auipc	a0,0x5
    80004ac4:	74850513          	addi	a0,a0,1864 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	4b0080e7          	jalr	1200(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80004ad0:	000c0113          	mv	sp,s8
    80004ad4:	2140006f          	j	80004ce8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004ad8:	01000513          	li	a0,16
    80004adc:	ffffd097          	auipc	ra,0xffffd
    80004ae0:	6c0080e7          	jalr	1728(ra) # 8000219c <_Znwm>
    80004ae4:	00050913          	mv	s2,a0
    80004ae8:	00000593          	li	a1,0
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	868080e7          	jalr	-1944(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    80004af4:	00008797          	auipc	a5,0x8
    80004af8:	5527be23          	sd	s2,1372(a5) # 8000d050 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004afc:	00399793          	slli	a5,s3,0x3
    80004b00:	00f78793          	addi	a5,a5,15
    80004b04:	ff07f793          	andi	a5,a5,-16
    80004b08:	40f10133          	sub	sp,sp,a5
    80004b0c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004b10:	0019871b          	addiw	a4,s3,1
    80004b14:	00171793          	slli	a5,a4,0x1
    80004b18:	00e787b3          	add	a5,a5,a4
    80004b1c:	00379793          	slli	a5,a5,0x3
    80004b20:	00f78793          	addi	a5,a5,15
    80004b24:	ff07f793          	andi	a5,a5,-16
    80004b28:	40f10133          	sub	sp,sp,a5
    80004b2c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004b30:	00199493          	slli	s1,s3,0x1
    80004b34:	013484b3          	add	s1,s1,s3
    80004b38:	00349493          	slli	s1,s1,0x3
    80004b3c:	009b04b3          	add	s1,s6,s1
    80004b40:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004b44:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004b48:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004b4c:	02800513          	li	a0,40
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	64c080e7          	jalr	1612(ra) # 8000219c <_Znwm>
    80004b58:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	740080e7          	jalr	1856(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004b64:	00008797          	auipc	a5,0x8
    80004b68:	2c478793          	addi	a5,a5,708 # 8000ce28 <_ZTV8Consumer+0x10>
    80004b6c:	00fbb023          	sd	a5,0(s7)
    80004b70:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004b74:	000b8513          	mv	a0,s7
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	754080e7          	jalr	1876(ra) # 800022cc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004b80:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004b84:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004b88:	00008797          	auipc	a5,0x8
    80004b8c:	4c87b783          	ld	a5,1224(a5) # 8000d050 <_ZL10waitForAll>
    80004b90:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b94:	02800513          	li	a0,40
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	604080e7          	jalr	1540(ra) # 8000219c <_Znwm>
    80004ba0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	6f8080e7          	jalr	1784(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004bac:	00008797          	auipc	a5,0x8
    80004bb0:	22c78793          	addi	a5,a5,556 # 8000cdd8 <_ZTV16ProducerKeyborad+0x10>
    80004bb4:	00f4b023          	sd	a5,0(s1)
    80004bb8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004bbc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004bc0:	00048513          	mv	a0,s1
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	708080e7          	jalr	1800(ra) # 800022cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004bcc:	00100913          	li	s2,1
    80004bd0:	0300006f          	j	80004c00 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004bd4:	00008797          	auipc	a5,0x8
    80004bd8:	22c78793          	addi	a5,a5,556 # 8000ce00 <_ZTV8Producer+0x10>
    80004bdc:	00fcb023          	sd	a5,0(s9)
    80004be0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004be4:	00391793          	slli	a5,s2,0x3
    80004be8:	00fa07b3          	add	a5,s4,a5
    80004bec:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004bf0:	000c8513          	mv	a0,s9
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	6d8080e7          	jalr	1752(ra) # 800022cc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004bfc:	0019091b          	addiw	s2,s2,1
    80004c00:	05395263          	bge	s2,s3,80004c44 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004c04:	00191493          	slli	s1,s2,0x1
    80004c08:	012484b3          	add	s1,s1,s2
    80004c0c:	00349493          	slli	s1,s1,0x3
    80004c10:	009b04b3          	add	s1,s6,s1
    80004c14:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004c18:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004c1c:	00008797          	auipc	a5,0x8
    80004c20:	4347b783          	ld	a5,1076(a5) # 8000d050 <_ZL10waitForAll>
    80004c24:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004c28:	02800513          	li	a0,40
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	570080e7          	jalr	1392(ra) # 8000219c <_Znwm>
    80004c34:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	664080e7          	jalr	1636(ra) # 8000229c <_ZN6ThreadC1Ev>
    80004c40:	f95ff06f          	j	80004bd4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004c44:	ffffd097          	auipc	ra,0xffffd
    80004c48:	6c0080e7          	jalr	1728(ra) # 80002304 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c4c:	00000493          	li	s1,0
    80004c50:	0099ce63          	blt	s3,s1,80004c6c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004c54:	00008517          	auipc	a0,0x8
    80004c58:	3fc53503          	ld	a0,1020(a0) # 8000d050 <_ZL10waitForAll>
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	734080e7          	jalr	1844(ra) # 80002390 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c64:	0014849b          	addiw	s1,s1,1
    80004c68:	fe9ff06f          	j	80004c50 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004c6c:	00008517          	auipc	a0,0x8
    80004c70:	3e453503          	ld	a0,996(a0) # 8000d050 <_ZL10waitForAll>
    80004c74:	00050863          	beqz	a0,80004c84 <_Z20testConsumerProducerv+0x2f4>
    80004c78:	00053783          	ld	a5,0(a0)
    80004c7c:	0087b783          	ld	a5,8(a5)
    80004c80:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004c84:	00000493          	li	s1,0
    80004c88:	0080006f          	j	80004c90 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004c8c:	0014849b          	addiw	s1,s1,1
    80004c90:	0334d263          	bge	s1,s3,80004cb4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004c94:	00349793          	slli	a5,s1,0x3
    80004c98:	00fa07b3          	add	a5,s4,a5
    80004c9c:	0007b503          	ld	a0,0(a5)
    80004ca0:	fe0506e3          	beqz	a0,80004c8c <_Z20testConsumerProducerv+0x2fc>
    80004ca4:	00053783          	ld	a5,0(a0)
    80004ca8:	0087b783          	ld	a5,8(a5)
    80004cac:	000780e7          	jalr	a5
    80004cb0:	fddff06f          	j	80004c8c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004cb4:	000b8a63          	beqz	s7,80004cc8 <_Z20testConsumerProducerv+0x338>
    80004cb8:	000bb783          	ld	a5,0(s7)
    80004cbc:	0087b783          	ld	a5,8(a5)
    80004cc0:	000b8513          	mv	a0,s7
    80004cc4:	000780e7          	jalr	a5
    delete buffer;
    80004cc8:	000a8e63          	beqz	s5,80004ce4 <_Z20testConsumerProducerv+0x354>
    80004ccc:	000a8513          	mv	a0,s5
    80004cd0:	00002097          	auipc	ra,0x2
    80004cd4:	870080e7          	jalr	-1936(ra) # 80006540 <_ZN9BufferCPPD1Ev>
    80004cd8:	000a8513          	mv	a0,s5
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	4e8080e7          	jalr	1256(ra) # 800021c4 <_ZdlPv>
    80004ce4:	000c0113          	mv	sp,s8
}
    80004ce8:	f8040113          	addi	sp,s0,-128
    80004cec:	07813083          	ld	ra,120(sp)
    80004cf0:	07013403          	ld	s0,112(sp)
    80004cf4:	06813483          	ld	s1,104(sp)
    80004cf8:	06013903          	ld	s2,96(sp)
    80004cfc:	05813983          	ld	s3,88(sp)
    80004d00:	05013a03          	ld	s4,80(sp)
    80004d04:	04813a83          	ld	s5,72(sp)
    80004d08:	04013b03          	ld	s6,64(sp)
    80004d0c:	03813b83          	ld	s7,56(sp)
    80004d10:	03013c03          	ld	s8,48(sp)
    80004d14:	02813c83          	ld	s9,40(sp)
    80004d18:	08010113          	addi	sp,sp,128
    80004d1c:	00008067          	ret
    80004d20:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004d24:	000a8513          	mv	a0,s5
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	49c080e7          	jalr	1180(ra) # 800021c4 <_ZdlPv>
    80004d30:	00048513          	mv	a0,s1
    80004d34:	00009097          	auipc	ra,0x9
    80004d38:	414080e7          	jalr	1044(ra) # 8000e148 <_Unwind_Resume>
    80004d3c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004d40:	00090513          	mv	a0,s2
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	480080e7          	jalr	1152(ra) # 800021c4 <_ZdlPv>
    80004d4c:	00048513          	mv	a0,s1
    80004d50:	00009097          	auipc	ra,0x9
    80004d54:	3f8080e7          	jalr	1016(ra) # 8000e148 <_Unwind_Resume>
    80004d58:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004d5c:	000b8513          	mv	a0,s7
    80004d60:	ffffd097          	auipc	ra,0xffffd
    80004d64:	464080e7          	jalr	1124(ra) # 800021c4 <_ZdlPv>
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00009097          	auipc	ra,0x9
    80004d70:	3dc080e7          	jalr	988(ra) # 8000e148 <_Unwind_Resume>
    80004d74:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	448080e7          	jalr	1096(ra) # 800021c4 <_ZdlPv>
    80004d84:	00090513          	mv	a0,s2
    80004d88:	00009097          	auipc	ra,0x9
    80004d8c:	3c0080e7          	jalr	960(ra) # 8000e148 <_Unwind_Resume>
    80004d90:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004d94:	000c8513          	mv	a0,s9
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	42c080e7          	jalr	1068(ra) # 800021c4 <_ZdlPv>
    80004da0:	00048513          	mv	a0,s1
    80004da4:	00009097          	auipc	ra,0x9
    80004da8:	3a4080e7          	jalr	932(ra) # 8000e148 <_Unwind_Resume>

0000000080004dac <_ZN8Consumer3runEv>:
    void run() override {
    80004dac:	fd010113          	addi	sp,sp,-48
    80004db0:	02113423          	sd	ra,40(sp)
    80004db4:	02813023          	sd	s0,32(sp)
    80004db8:	00913c23          	sd	s1,24(sp)
    80004dbc:	01213823          	sd	s2,16(sp)
    80004dc0:	01313423          	sd	s3,8(sp)
    80004dc4:	03010413          	addi	s0,sp,48
    80004dc8:	00050913          	mv	s2,a0
        int i = 0;
    80004dcc:	00000993          	li	s3,0
    80004dd0:	0100006f          	j	80004de0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004dd4:	00a00513          	li	a0,10
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	718080e7          	jalr	1816(ra) # 800024f0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004de0:	00008797          	auipc	a5,0x8
    80004de4:	2687a783          	lw	a5,616(a5) # 8000d048 <_ZL9threadEnd>
    80004de8:	04079a63          	bnez	a5,80004e3c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004dec:	02093783          	ld	a5,32(s2)
    80004df0:	0087b503          	ld	a0,8(a5)
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	638080e7          	jalr	1592(ra) # 8000642c <_ZN9BufferCPP3getEv>
            i++;
    80004dfc:	0019849b          	addiw	s1,s3,1
    80004e00:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004e04:	0ff57513          	andi	a0,a0,255
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	6e8080e7          	jalr	1768(ra) # 800024f0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004e10:	05000793          	li	a5,80
    80004e14:	02f4e4bb          	remw	s1,s1,a5
    80004e18:	fc0494e3          	bnez	s1,80004de0 <_ZN8Consumer3runEv+0x34>
    80004e1c:	fb9ff06f          	j	80004dd4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004e20:	02093783          	ld	a5,32(s2)
    80004e24:	0087b503          	ld	a0,8(a5)
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	604080e7          	jalr	1540(ra) # 8000642c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004e30:	0ff57513          	andi	a0,a0,255
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	6bc080e7          	jalr	1724(ra) # 800024f0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004e3c:	02093783          	ld	a5,32(s2)
    80004e40:	0087b503          	ld	a0,8(a5)
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	674080e7          	jalr	1652(ra) # 800064b8 <_ZN9BufferCPP6getCntEv>
    80004e4c:	fca04ae3          	bgtz	a0,80004e20 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004e50:	02093783          	ld	a5,32(s2)
    80004e54:	0107b503          	ld	a0,16(a5)
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	570080e7          	jalr	1392(ra) # 800023c8 <_ZN9Semaphore6signalEv>
    }
    80004e60:	02813083          	ld	ra,40(sp)
    80004e64:	02013403          	ld	s0,32(sp)
    80004e68:	01813483          	ld	s1,24(sp)
    80004e6c:	01013903          	ld	s2,16(sp)
    80004e70:	00813983          	ld	s3,8(sp)
    80004e74:	03010113          	addi	sp,sp,48
    80004e78:	00008067          	ret

0000000080004e7c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004e7c:	ff010113          	addi	sp,sp,-16
    80004e80:	00113423          	sd	ra,8(sp)
    80004e84:	00813023          	sd	s0,0(sp)
    80004e88:	01010413          	addi	s0,sp,16
    80004e8c:	00008797          	auipc	a5,0x8
    80004e90:	f9c78793          	addi	a5,a5,-100 # 8000ce28 <_ZTV8Consumer+0x10>
    80004e94:	00f53023          	sd	a5,0(a0)
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	214080e7          	jalr	532(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004ea0:	00813083          	ld	ra,8(sp)
    80004ea4:	00013403          	ld	s0,0(sp)
    80004ea8:	01010113          	addi	sp,sp,16
    80004eac:	00008067          	ret

0000000080004eb0 <_ZN8ConsumerD0Ev>:
    80004eb0:	fe010113          	addi	sp,sp,-32
    80004eb4:	00113c23          	sd	ra,24(sp)
    80004eb8:	00813823          	sd	s0,16(sp)
    80004ebc:	00913423          	sd	s1,8(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    80004ec4:	00050493          	mv	s1,a0
    80004ec8:	00008797          	auipc	a5,0x8
    80004ecc:	f6078793          	addi	a5,a5,-160 # 8000ce28 <_ZTV8Consumer+0x10>
    80004ed0:	00f53023          	sd	a5,0(a0)
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	1d8080e7          	jalr	472(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004edc:	00048513          	mv	a0,s1
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	2e4080e7          	jalr	740(ra) # 800021c4 <_ZdlPv>
    80004ee8:	01813083          	ld	ra,24(sp)
    80004eec:	01013403          	ld	s0,16(sp)
    80004ef0:	00813483          	ld	s1,8(sp)
    80004ef4:	02010113          	addi	sp,sp,32
    80004ef8:	00008067          	ret

0000000080004efc <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004efc:	ff010113          	addi	sp,sp,-16
    80004f00:	00113423          	sd	ra,8(sp)
    80004f04:	00813023          	sd	s0,0(sp)
    80004f08:	01010413          	addi	s0,sp,16
    80004f0c:	00008797          	auipc	a5,0x8
    80004f10:	ecc78793          	addi	a5,a5,-308 # 8000cdd8 <_ZTV16ProducerKeyborad+0x10>
    80004f14:	00f53023          	sd	a5,0(a0)
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	194080e7          	jalr	404(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004f20:	00813083          	ld	ra,8(sp)
    80004f24:	00013403          	ld	s0,0(sp)
    80004f28:	01010113          	addi	sp,sp,16
    80004f2c:	00008067          	ret

0000000080004f30 <_ZN16ProducerKeyboradD0Ev>:
    80004f30:	fe010113          	addi	sp,sp,-32
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	00813823          	sd	s0,16(sp)
    80004f3c:	00913423          	sd	s1,8(sp)
    80004f40:	02010413          	addi	s0,sp,32
    80004f44:	00050493          	mv	s1,a0
    80004f48:	00008797          	auipc	a5,0x8
    80004f4c:	e9078793          	addi	a5,a5,-368 # 8000cdd8 <_ZTV16ProducerKeyborad+0x10>
    80004f50:	00f53023          	sd	a5,0(a0)
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	158080e7          	jalr	344(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004f5c:	00048513          	mv	a0,s1
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	264080e7          	jalr	612(ra) # 800021c4 <_ZdlPv>
    80004f68:	01813083          	ld	ra,24(sp)
    80004f6c:	01013403          	ld	s0,16(sp)
    80004f70:	00813483          	ld	s1,8(sp)
    80004f74:	02010113          	addi	sp,sp,32
    80004f78:	00008067          	ret

0000000080004f7c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004f7c:	ff010113          	addi	sp,sp,-16
    80004f80:	00113423          	sd	ra,8(sp)
    80004f84:	00813023          	sd	s0,0(sp)
    80004f88:	01010413          	addi	s0,sp,16
    80004f8c:	00008797          	auipc	a5,0x8
    80004f90:	e7478793          	addi	a5,a5,-396 # 8000ce00 <_ZTV8Producer+0x10>
    80004f94:	00f53023          	sd	a5,0(a0)
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	114080e7          	jalr	276(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004fa0:	00813083          	ld	ra,8(sp)
    80004fa4:	00013403          	ld	s0,0(sp)
    80004fa8:	01010113          	addi	sp,sp,16
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN8ProducerD0Ev>:
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00113c23          	sd	ra,24(sp)
    80004fb8:	00813823          	sd	s0,16(sp)
    80004fbc:	00913423          	sd	s1,8(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00050493          	mv	s1,a0
    80004fc8:	00008797          	auipc	a5,0x8
    80004fcc:	e3878793          	addi	a5,a5,-456 # 8000ce00 <_ZTV8Producer+0x10>
    80004fd0:	00f53023          	sd	a5,0(a0)
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	0d8080e7          	jalr	216(ra) # 800020ac <_ZN6ThreadD1Ev>
    80004fdc:	00048513          	mv	a0,s1
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	1e4080e7          	jalr	484(ra) # 800021c4 <_ZdlPv>
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	02010113          	addi	sp,sp,32
    80004ff8:	00008067          	ret

0000000080004ffc <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004ffc:	fe010113          	addi	sp,sp,-32
    80005000:	00113c23          	sd	ra,24(sp)
    80005004:	00813823          	sd	s0,16(sp)
    80005008:	00913423          	sd	s1,8(sp)
    8000500c:	02010413          	addi	s0,sp,32
    80005010:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	60c080e7          	jalr	1548(ra) # 80001620 <_Z4getcv>
    8000501c:	0005059b          	sext.w	a1,a0
    80005020:	01b00793          	li	a5,27
    80005024:	00f58c63          	beq	a1,a5,8000503c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005028:	0204b783          	ld	a5,32(s1)
    8000502c:	0087b503          	ld	a0,8(a5)
    80005030:	00001097          	auipc	ra,0x1
    80005034:	36c080e7          	jalr	876(ra) # 8000639c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005038:	fddff06f          	j	80005014 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000503c:	00100793          	li	a5,1
    80005040:	00008717          	auipc	a4,0x8
    80005044:	00f72423          	sw	a5,8(a4) # 8000d048 <_ZL9threadEnd>
        td->buffer->put('!');
    80005048:	0204b783          	ld	a5,32(s1)
    8000504c:	02100593          	li	a1,33
    80005050:	0087b503          	ld	a0,8(a5)
    80005054:	00001097          	auipc	ra,0x1
    80005058:	348080e7          	jalr	840(ra) # 8000639c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000505c:	0204b783          	ld	a5,32(s1)
    80005060:	0107b503          	ld	a0,16(a5)
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	364080e7          	jalr	868(ra) # 800023c8 <_ZN9Semaphore6signalEv>
    }
    8000506c:	01813083          	ld	ra,24(sp)
    80005070:	01013403          	ld	s0,16(sp)
    80005074:	00813483          	ld	s1,8(sp)
    80005078:	02010113          	addi	sp,sp,32
    8000507c:	00008067          	ret

0000000080005080 <_ZN8Producer3runEv>:
    void run() override {
    80005080:	fe010113          	addi	sp,sp,-32
    80005084:	00113c23          	sd	ra,24(sp)
    80005088:	00813823          	sd	s0,16(sp)
    8000508c:	00913423          	sd	s1,8(sp)
    80005090:	01213023          	sd	s2,0(sp)
    80005094:	02010413          	addi	s0,sp,32
    80005098:	00050493          	mv	s1,a0
        int i = 0;
    8000509c:	00000913          	li	s2,0
        while (!threadEnd) {
    800050a0:	00008797          	auipc	a5,0x8
    800050a4:	fa87a783          	lw	a5,-88(a5) # 8000d048 <_ZL9threadEnd>
    800050a8:	04079263          	bnez	a5,800050ec <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800050ac:	0204b783          	ld	a5,32(s1)
    800050b0:	0007a583          	lw	a1,0(a5)
    800050b4:	0305859b          	addiw	a1,a1,48
    800050b8:	0087b503          	ld	a0,8(a5)
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	2e0080e7          	jalr	736(ra) # 8000639c <_ZN9BufferCPP3putEi>
            i++;
    800050c4:	0019071b          	addiw	a4,s2,1
    800050c8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800050cc:	0204b783          	ld	a5,32(s1)
    800050d0:	0007a783          	lw	a5,0(a5)
    800050d4:	00e787bb          	addw	a5,a5,a4
    800050d8:	00500513          	li	a0,5
    800050dc:	02a7e53b          	remw	a0,a5,a0
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	24c080e7          	jalr	588(ra) # 8000232c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800050e8:	fb9ff06f          	j	800050a0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800050ec:	0204b783          	ld	a5,32(s1)
    800050f0:	0107b503          	ld	a0,16(a5)
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	2d4080e7          	jalr	724(ra) # 800023c8 <_ZN9Semaphore6signalEv>
    }
    800050fc:	01813083          	ld	ra,24(sp)
    80005100:	01013403          	ld	s0,16(sp)
    80005104:	00813483          	ld	s1,8(sp)
    80005108:	00013903          	ld	s2,0(sp)
    8000510c:	02010113          	addi	sp,sp,32
    80005110:	00008067          	ret

0000000080005114 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005114:	fe010113          	addi	sp,sp,-32
    80005118:	00113c23          	sd	ra,24(sp)
    8000511c:	00813823          	sd	s0,16(sp)
    80005120:	00913423          	sd	s1,8(sp)
    80005124:	01213023          	sd	s2,0(sp)
    80005128:	02010413          	addi	s0,sp,32
    8000512c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005130:	00100793          	li	a5,1
    80005134:	02a7f863          	bgeu	a5,a0,80005164 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005138:	00a00793          	li	a5,10
    8000513c:	02f577b3          	remu	a5,a0,a5
    80005140:	02078e63          	beqz	a5,8000517c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005144:	fff48513          	addi	a0,s1,-1
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	fcc080e7          	jalr	-52(ra) # 80005114 <_ZL9fibonaccim>
    80005150:	00050913          	mv	s2,a0
    80005154:	ffe48513          	addi	a0,s1,-2
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	fbc080e7          	jalr	-68(ra) # 80005114 <_ZL9fibonaccim>
    80005160:	00a90533          	add	a0,s2,a0
}
    80005164:	01813083          	ld	ra,24(sp)
    80005168:	01013403          	ld	s0,16(sp)
    8000516c:	00813483          	ld	s1,8(sp)
    80005170:	00013903          	ld	s2,0(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000517c:	ffffc097          	auipc	ra,0xffffc
    80005180:	250080e7          	jalr	592(ra) # 800013cc <_Z15thread_dispatchv>
    80005184:	fc1ff06f          	j	80005144 <_ZL9fibonaccim+0x30>

0000000080005188 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005188:	fe010113          	addi	sp,sp,-32
    8000518c:	00113c23          	sd	ra,24(sp)
    80005190:	00813823          	sd	s0,16(sp)
    80005194:	00913423          	sd	s1,8(sp)
    80005198:	01213023          	sd	s2,0(sp)
    8000519c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800051a0:	00a00493          	li	s1,10
    800051a4:	0400006f          	j	800051e4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051a8:	00005517          	auipc	a0,0x5
    800051ac:	0f050513          	addi	a0,a0,240 # 8000a298 <CONSOLE_STATUS+0x288>
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	dc8080e7          	jalr	-568(ra) # 80005f78 <_Z11printStringPKc>
    800051b8:	00000613          	li	a2,0
    800051bc:	00a00593          	li	a1,10
    800051c0:	00048513          	mv	a0,s1
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	f64080e7          	jalr	-156(ra) # 80006128 <_Z8printIntiii>
    800051cc:	00005517          	auipc	a0,0x5
    800051d0:	2bc50513          	addi	a0,a0,700 # 8000a488 <CONSOLE_STATUS+0x478>
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	da4080e7          	jalr	-604(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800051dc:	0014849b          	addiw	s1,s1,1
    800051e0:	0ff4f493          	andi	s1,s1,255
    800051e4:	00c00793          	li	a5,12
    800051e8:	fc97f0e3          	bgeu	a5,s1,800051a8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800051ec:	00005517          	auipc	a0,0x5
    800051f0:	0b450513          	addi	a0,a0,180 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	d84080e7          	jalr	-636(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800051fc:	00500313          	li	t1,5
    thread_dispatch();
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	1cc080e7          	jalr	460(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005208:	01000513          	li	a0,16
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	f08080e7          	jalr	-248(ra) # 80005114 <_ZL9fibonaccim>
    80005214:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005218:	00005517          	auipc	a0,0x5
    8000521c:	09850513          	addi	a0,a0,152 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005220:	00001097          	auipc	ra,0x1
    80005224:	d58080e7          	jalr	-680(ra) # 80005f78 <_Z11printStringPKc>
    80005228:	00000613          	li	a2,0
    8000522c:	00a00593          	li	a1,10
    80005230:	0009051b          	sext.w	a0,s2
    80005234:	00001097          	auipc	ra,0x1
    80005238:	ef4080e7          	jalr	-268(ra) # 80006128 <_Z8printIntiii>
    8000523c:	00005517          	auipc	a0,0x5
    80005240:	24c50513          	addi	a0,a0,588 # 8000a488 <CONSOLE_STATUS+0x478>
    80005244:	00001097          	auipc	ra,0x1
    80005248:	d34080e7          	jalr	-716(ra) # 80005f78 <_Z11printStringPKc>
    8000524c:	0400006f          	j	8000528c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005250:	00005517          	auipc	a0,0x5
    80005254:	04850513          	addi	a0,a0,72 # 8000a298 <CONSOLE_STATUS+0x288>
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	d20080e7          	jalr	-736(ra) # 80005f78 <_Z11printStringPKc>
    80005260:	00000613          	li	a2,0
    80005264:	00a00593          	li	a1,10
    80005268:	00048513          	mv	a0,s1
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	ebc080e7          	jalr	-324(ra) # 80006128 <_Z8printIntiii>
    80005274:	00005517          	auipc	a0,0x5
    80005278:	21450513          	addi	a0,a0,532 # 8000a488 <CONSOLE_STATUS+0x478>
    8000527c:	00001097          	auipc	ra,0x1
    80005280:	cfc080e7          	jalr	-772(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005284:	0014849b          	addiw	s1,s1,1
    80005288:	0ff4f493          	andi	s1,s1,255
    8000528c:	00f00793          	li	a5,15
    80005290:	fc97f0e3          	bgeu	a5,s1,80005250 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005294:	00005517          	auipc	a0,0x5
    80005298:	02c50513          	addi	a0,a0,44 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	cdc080e7          	jalr	-804(ra) # 80005f78 <_Z11printStringPKc>
    finishedD = true;
    800052a4:	00100793          	li	a5,1
    800052a8:	00008717          	auipc	a4,0x8
    800052ac:	daf70823          	sb	a5,-592(a4) # 8000d058 <_ZL9finishedD>
    thread_dispatch();
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	11c080e7          	jalr	284(ra) # 800013cc <_Z15thread_dispatchv>
}
    800052b8:	01813083          	ld	ra,24(sp)
    800052bc:	01013403          	ld	s0,16(sp)
    800052c0:	00813483          	ld	s1,8(sp)
    800052c4:	00013903          	ld	s2,0(sp)
    800052c8:	02010113          	addi	sp,sp,32
    800052cc:	00008067          	ret

00000000800052d0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800052d0:	fe010113          	addi	sp,sp,-32
    800052d4:	00113c23          	sd	ra,24(sp)
    800052d8:	00813823          	sd	s0,16(sp)
    800052dc:	00913423          	sd	s1,8(sp)
    800052e0:	01213023          	sd	s2,0(sp)
    800052e4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052e8:	00000493          	li	s1,0
    800052ec:	0400006f          	j	8000532c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800052f0:	00005517          	auipc	a0,0x5
    800052f4:	f7850513          	addi	a0,a0,-136 # 8000a268 <CONSOLE_STATUS+0x258>
    800052f8:	00001097          	auipc	ra,0x1
    800052fc:	c80080e7          	jalr	-896(ra) # 80005f78 <_Z11printStringPKc>
    80005300:	00000613          	li	a2,0
    80005304:	00a00593          	li	a1,10
    80005308:	00048513          	mv	a0,s1
    8000530c:	00001097          	auipc	ra,0x1
    80005310:	e1c080e7          	jalr	-484(ra) # 80006128 <_Z8printIntiii>
    80005314:	00005517          	auipc	a0,0x5
    80005318:	17450513          	addi	a0,a0,372 # 8000a488 <CONSOLE_STATUS+0x478>
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	c5c080e7          	jalr	-932(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005324:	0014849b          	addiw	s1,s1,1
    80005328:	0ff4f493          	andi	s1,s1,255
    8000532c:	00200793          	li	a5,2
    80005330:	fc97f0e3          	bgeu	a5,s1,800052f0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005334:	00005517          	auipc	a0,0x5
    80005338:	f3c50513          	addi	a0,a0,-196 # 8000a270 <CONSOLE_STATUS+0x260>
    8000533c:	00001097          	auipc	ra,0x1
    80005340:	c3c080e7          	jalr	-964(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005344:	00700313          	li	t1,7
    thread_dispatch();
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	084080e7          	jalr	132(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005350:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005354:	00005517          	auipc	a0,0x5
    80005358:	f2c50513          	addi	a0,a0,-212 # 8000a280 <CONSOLE_STATUS+0x270>
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	c1c080e7          	jalr	-996(ra) # 80005f78 <_Z11printStringPKc>
    80005364:	00000613          	li	a2,0
    80005368:	00a00593          	li	a1,10
    8000536c:	0009051b          	sext.w	a0,s2
    80005370:	00001097          	auipc	ra,0x1
    80005374:	db8080e7          	jalr	-584(ra) # 80006128 <_Z8printIntiii>
    80005378:	00005517          	auipc	a0,0x5
    8000537c:	11050513          	addi	a0,a0,272 # 8000a488 <CONSOLE_STATUS+0x478>
    80005380:	00001097          	auipc	ra,0x1
    80005384:	bf8080e7          	jalr	-1032(ra) # 80005f78 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005388:	00c00513          	li	a0,12
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	d88080e7          	jalr	-632(ra) # 80005114 <_ZL9fibonaccim>
    80005394:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005398:	00005517          	auipc	a0,0x5
    8000539c:	ef050513          	addi	a0,a0,-272 # 8000a288 <CONSOLE_STATUS+0x278>
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	bd8080e7          	jalr	-1064(ra) # 80005f78 <_Z11printStringPKc>
    800053a8:	00000613          	li	a2,0
    800053ac:	00a00593          	li	a1,10
    800053b0:	0009051b          	sext.w	a0,s2
    800053b4:	00001097          	auipc	ra,0x1
    800053b8:	d74080e7          	jalr	-652(ra) # 80006128 <_Z8printIntiii>
    800053bc:	00005517          	auipc	a0,0x5
    800053c0:	0cc50513          	addi	a0,a0,204 # 8000a488 <CONSOLE_STATUS+0x478>
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	bb4080e7          	jalr	-1100(ra) # 80005f78 <_Z11printStringPKc>
    800053cc:	0400006f          	j	8000540c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800053d0:	00005517          	auipc	a0,0x5
    800053d4:	e9850513          	addi	a0,a0,-360 # 8000a268 <CONSOLE_STATUS+0x258>
    800053d8:	00001097          	auipc	ra,0x1
    800053dc:	ba0080e7          	jalr	-1120(ra) # 80005f78 <_Z11printStringPKc>
    800053e0:	00000613          	li	a2,0
    800053e4:	00a00593          	li	a1,10
    800053e8:	00048513          	mv	a0,s1
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	d3c080e7          	jalr	-708(ra) # 80006128 <_Z8printIntiii>
    800053f4:	00005517          	auipc	a0,0x5
    800053f8:	09450513          	addi	a0,a0,148 # 8000a488 <CONSOLE_STATUS+0x478>
    800053fc:	00001097          	auipc	ra,0x1
    80005400:	b7c080e7          	jalr	-1156(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005404:	0014849b          	addiw	s1,s1,1
    80005408:	0ff4f493          	andi	s1,s1,255
    8000540c:	00500793          	li	a5,5
    80005410:	fc97f0e3          	bgeu	a5,s1,800053d0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005414:	00005517          	auipc	a0,0x5
    80005418:	e2c50513          	addi	a0,a0,-468 # 8000a240 <CONSOLE_STATUS+0x230>
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	b5c080e7          	jalr	-1188(ra) # 80005f78 <_Z11printStringPKc>
    finishedC = true;
    80005424:	00100793          	li	a5,1
    80005428:	00008717          	auipc	a4,0x8
    8000542c:	c2f708a3          	sb	a5,-975(a4) # 8000d059 <_ZL9finishedC>
    thread_dispatch();
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	f9c080e7          	jalr	-100(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005438:	01813083          	ld	ra,24(sp)
    8000543c:	01013403          	ld	s0,16(sp)
    80005440:	00813483          	ld	s1,8(sp)
    80005444:	00013903          	ld	s2,0(sp)
    80005448:	02010113          	addi	sp,sp,32
    8000544c:	00008067          	ret

0000000080005450 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005450:	fe010113          	addi	sp,sp,-32
    80005454:	00113c23          	sd	ra,24(sp)
    80005458:	00813823          	sd	s0,16(sp)
    8000545c:	00913423          	sd	s1,8(sp)
    80005460:	01213023          	sd	s2,0(sp)
    80005464:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005468:	00000913          	li	s2,0
    8000546c:	0380006f          	j	800054a4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005470:	ffffc097          	auipc	ra,0xffffc
    80005474:	f5c080e7          	jalr	-164(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005478:	00148493          	addi	s1,s1,1
    8000547c:	000027b7          	lui	a5,0x2
    80005480:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005484:	0097ee63          	bltu	a5,s1,800054a0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005488:	00000713          	li	a4,0
    8000548c:	000077b7          	lui	a5,0x7
    80005490:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005494:	fce7eee3          	bltu	a5,a4,80005470 <_ZL11workerBodyBPv+0x20>
    80005498:	00170713          	addi	a4,a4,1
    8000549c:	ff1ff06f          	j	8000548c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800054a0:	00190913          	addi	s2,s2,1
    800054a4:	00f00793          	li	a5,15
    800054a8:	0527e063          	bltu	a5,s2,800054e8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800054ac:	00005517          	auipc	a0,0x5
    800054b0:	da450513          	addi	a0,a0,-604 # 8000a250 <CONSOLE_STATUS+0x240>
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	ac4080e7          	jalr	-1340(ra) # 80005f78 <_Z11printStringPKc>
    800054bc:	00000613          	li	a2,0
    800054c0:	00a00593          	li	a1,10
    800054c4:	0009051b          	sext.w	a0,s2
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	c60080e7          	jalr	-928(ra) # 80006128 <_Z8printIntiii>
    800054d0:	00005517          	auipc	a0,0x5
    800054d4:	fb850513          	addi	a0,a0,-72 # 8000a488 <CONSOLE_STATUS+0x478>
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	aa0080e7          	jalr	-1376(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054e0:	00000493          	li	s1,0
    800054e4:	f99ff06f          	j	8000547c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800054e8:	00005517          	auipc	a0,0x5
    800054ec:	d7050513          	addi	a0,a0,-656 # 8000a258 <CONSOLE_STATUS+0x248>
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	a88080e7          	jalr	-1400(ra) # 80005f78 <_Z11printStringPKc>
    finishedB = true;
    800054f8:	00100793          	li	a5,1
    800054fc:	00008717          	auipc	a4,0x8
    80005500:	b4f70f23          	sb	a5,-1186(a4) # 8000d05a <_ZL9finishedB>
    thread_dispatch();
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	ec8080e7          	jalr	-312(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000550c:	01813083          	ld	ra,24(sp)
    80005510:	01013403          	ld	s0,16(sp)
    80005514:	00813483          	ld	s1,8(sp)
    80005518:	00013903          	ld	s2,0(sp)
    8000551c:	02010113          	addi	sp,sp,32
    80005520:	00008067          	ret

0000000080005524 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005524:	fe010113          	addi	sp,sp,-32
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00813823          	sd	s0,16(sp)
    80005530:	00913423          	sd	s1,8(sp)
    80005534:	01213023          	sd	s2,0(sp)
    80005538:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000553c:	00000913          	li	s2,0
    80005540:	0380006f          	j	80005578 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005544:	ffffc097          	auipc	ra,0xffffc
    80005548:	e88080e7          	jalr	-376(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000554c:	00148493          	addi	s1,s1,1
    80005550:	000027b7          	lui	a5,0x2
    80005554:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005558:	0097ee63          	bltu	a5,s1,80005574 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000555c:	00000713          	li	a4,0
    80005560:	000077b7          	lui	a5,0x7
    80005564:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005568:	fce7eee3          	bltu	a5,a4,80005544 <_ZL11workerBodyAPv+0x20>
    8000556c:	00170713          	addi	a4,a4,1
    80005570:	ff1ff06f          	j	80005560 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005574:	00190913          	addi	s2,s2,1
    80005578:	00900793          	li	a5,9
    8000557c:	0527e063          	bltu	a5,s2,800055bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005580:	00005517          	auipc	a0,0x5
    80005584:	cb850513          	addi	a0,a0,-840 # 8000a238 <CONSOLE_STATUS+0x228>
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	9f0080e7          	jalr	-1552(ra) # 80005f78 <_Z11printStringPKc>
    80005590:	00000613          	li	a2,0
    80005594:	00a00593          	li	a1,10
    80005598:	0009051b          	sext.w	a0,s2
    8000559c:	00001097          	auipc	ra,0x1
    800055a0:	b8c080e7          	jalr	-1140(ra) # 80006128 <_Z8printIntiii>
    800055a4:	00005517          	auipc	a0,0x5
    800055a8:	ee450513          	addi	a0,a0,-284 # 8000a488 <CONSOLE_STATUS+0x478>
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	9cc080e7          	jalr	-1588(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055b4:	00000493          	li	s1,0
    800055b8:	f99ff06f          	j	80005550 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800055bc:	00005517          	auipc	a0,0x5
    800055c0:	c8450513          	addi	a0,a0,-892 # 8000a240 <CONSOLE_STATUS+0x230>
    800055c4:	00001097          	auipc	ra,0x1
    800055c8:	9b4080e7          	jalr	-1612(ra) # 80005f78 <_Z11printStringPKc>
    finishedA = true;
    800055cc:	00100793          	li	a5,1
    800055d0:	00008717          	auipc	a4,0x8
    800055d4:	a8f705a3          	sb	a5,-1397(a4) # 8000d05b <_ZL9finishedA>
}
    800055d8:	01813083          	ld	ra,24(sp)
    800055dc:	01013403          	ld	s0,16(sp)
    800055e0:	00813483          	ld	s1,8(sp)
    800055e4:	00013903          	ld	s2,0(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret

00000000800055f0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800055f0:	fd010113          	addi	sp,sp,-48
    800055f4:	02113423          	sd	ra,40(sp)
    800055f8:	02813023          	sd	s0,32(sp)
    800055fc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005600:	00000613          	li	a2,0
    80005604:	00000597          	auipc	a1,0x0
    80005608:	f2058593          	addi	a1,a1,-224 # 80005524 <_ZL11workerBodyAPv>
    8000560c:	fd040513          	addi	a0,s0,-48
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	ce8080e7          	jalr	-792(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005618:	00005517          	auipc	a0,0x5
    8000561c:	cb850513          	addi	a0,a0,-840 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80005620:	00001097          	auipc	ra,0x1
    80005624:	958080e7          	jalr	-1704(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005628:	00000613          	li	a2,0
    8000562c:	00000597          	auipc	a1,0x0
    80005630:	e2458593          	addi	a1,a1,-476 # 80005450 <_ZL11workerBodyBPv>
    80005634:	fd840513          	addi	a0,s0,-40
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	cc0080e7          	jalr	-832(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005640:	00005517          	auipc	a0,0x5
    80005644:	ca850513          	addi	a0,a0,-856 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    80005648:	00001097          	auipc	ra,0x1
    8000564c:	930080e7          	jalr	-1744(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005650:	00000613          	li	a2,0
    80005654:	00000597          	auipc	a1,0x0
    80005658:	c7c58593          	addi	a1,a1,-900 # 800052d0 <_ZL11workerBodyCPv>
    8000565c:	fe040513          	addi	a0,s0,-32
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	c98080e7          	jalr	-872(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005668:	00005517          	auipc	a0,0x5
    8000566c:	c9850513          	addi	a0,a0,-872 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80005670:	00001097          	auipc	ra,0x1
    80005674:	908080e7          	jalr	-1784(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005678:	00000613          	li	a2,0
    8000567c:	00000597          	auipc	a1,0x0
    80005680:	b0c58593          	addi	a1,a1,-1268 # 80005188 <_ZL11workerBodyDPv>
    80005684:	fe840513          	addi	a0,s0,-24
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	c70080e7          	jalr	-912(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005690:	00005517          	auipc	a0,0x5
    80005694:	c8850513          	addi	a0,a0,-888 # 8000a318 <CONSOLE_STATUS+0x308>
    80005698:	00001097          	auipc	ra,0x1
    8000569c:	8e0080e7          	jalr	-1824(ra) # 80005f78 <_Z11printStringPKc>
    800056a0:	00c0006f          	j	800056ac <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	d28080e7          	jalr	-728(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800056ac:	00008797          	auipc	a5,0x8
    800056b0:	9af7c783          	lbu	a5,-1617(a5) # 8000d05b <_ZL9finishedA>
    800056b4:	fe0788e3          	beqz	a5,800056a4 <_Z18Threads_C_API_testv+0xb4>
    800056b8:	00008797          	auipc	a5,0x8
    800056bc:	9a27c783          	lbu	a5,-1630(a5) # 8000d05a <_ZL9finishedB>
    800056c0:	fe0782e3          	beqz	a5,800056a4 <_Z18Threads_C_API_testv+0xb4>
    800056c4:	00008797          	auipc	a5,0x8
    800056c8:	9957c783          	lbu	a5,-1643(a5) # 8000d059 <_ZL9finishedC>
    800056cc:	fc078ce3          	beqz	a5,800056a4 <_Z18Threads_C_API_testv+0xb4>
    800056d0:	00008797          	auipc	a5,0x8
    800056d4:	9887c783          	lbu	a5,-1656(a5) # 8000d058 <_ZL9finishedD>
    800056d8:	fc0786e3          	beqz	a5,800056a4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800056dc:	02813083          	ld	ra,40(sp)
    800056e0:	02013403          	ld	s0,32(sp)
    800056e4:	03010113          	addi	sp,sp,48
    800056e8:	00008067          	ret

00000000800056ec <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800056ec:	fd010113          	addi	sp,sp,-48
    800056f0:	02113423          	sd	ra,40(sp)
    800056f4:	02813023          	sd	s0,32(sp)
    800056f8:	00913c23          	sd	s1,24(sp)
    800056fc:	01213823          	sd	s2,16(sp)
    80005700:	01313423          	sd	s3,8(sp)
    80005704:	03010413          	addi	s0,sp,48
    80005708:	00050993          	mv	s3,a0
    8000570c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005710:	00000913          	li	s2,0
    80005714:	00c0006f          	j	80005720 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005718:	ffffd097          	auipc	ra,0xffffd
    8000571c:	bec080e7          	jalr	-1044(ra) # 80002304 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	f00080e7          	jalr	-256(ra) # 80001620 <_Z4getcv>
    80005728:	0005059b          	sext.w	a1,a0
    8000572c:	01b00793          	li	a5,27
    80005730:	02f58a63          	beq	a1,a5,80005764 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005734:	0084b503          	ld	a0,8(s1)
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	c64080e7          	jalr	-924(ra) # 8000639c <_ZN9BufferCPP3putEi>
        i++;
    80005740:	0019071b          	addiw	a4,s2,1
    80005744:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005748:	0004a683          	lw	a3,0(s1)
    8000574c:	0026979b          	slliw	a5,a3,0x2
    80005750:	00d787bb          	addw	a5,a5,a3
    80005754:	0017979b          	slliw	a5,a5,0x1
    80005758:	02f767bb          	remw	a5,a4,a5
    8000575c:	fc0792e3          	bnez	a5,80005720 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005760:	fb9ff06f          	j	80005718 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005764:	00100793          	li	a5,1
    80005768:	00008717          	auipc	a4,0x8
    8000576c:	8ef72c23          	sw	a5,-1800(a4) # 8000d060 <_ZL9threadEnd>
    td->buffer->put('!');
    80005770:	0209b783          	ld	a5,32(s3)
    80005774:	02100593          	li	a1,33
    80005778:	0087b503          	ld	a0,8(a5)
    8000577c:	00001097          	auipc	ra,0x1
    80005780:	c20080e7          	jalr	-992(ra) # 8000639c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005784:	0104b503          	ld	a0,16(s1)
    80005788:	ffffd097          	auipc	ra,0xffffd
    8000578c:	c40080e7          	jalr	-960(ra) # 800023c8 <_ZN9Semaphore6signalEv>
}
    80005790:	02813083          	ld	ra,40(sp)
    80005794:	02013403          	ld	s0,32(sp)
    80005798:	01813483          	ld	s1,24(sp)
    8000579c:	01013903          	ld	s2,16(sp)
    800057a0:	00813983          	ld	s3,8(sp)
    800057a4:	03010113          	addi	sp,sp,48
    800057a8:	00008067          	ret

00000000800057ac <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00113c23          	sd	ra,24(sp)
    800057b4:	00813823          	sd	s0,16(sp)
    800057b8:	00913423          	sd	s1,8(sp)
    800057bc:	01213023          	sd	s2,0(sp)
    800057c0:	02010413          	addi	s0,sp,32
    800057c4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800057c8:	00000913          	li	s2,0
    800057cc:	00c0006f          	j	800057d8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	b34080e7          	jalr	-1228(ra) # 80002304 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800057d8:	00008797          	auipc	a5,0x8
    800057dc:	8887a783          	lw	a5,-1912(a5) # 8000d060 <_ZL9threadEnd>
    800057e0:	02079e63          	bnez	a5,8000581c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800057e4:	0004a583          	lw	a1,0(s1)
    800057e8:	0305859b          	addiw	a1,a1,48
    800057ec:	0084b503          	ld	a0,8(s1)
    800057f0:	00001097          	auipc	ra,0x1
    800057f4:	bac080e7          	jalr	-1108(ra) # 8000639c <_ZN9BufferCPP3putEi>
        i++;
    800057f8:	0019071b          	addiw	a4,s2,1
    800057fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005800:	0004a683          	lw	a3,0(s1)
    80005804:	0026979b          	slliw	a5,a3,0x2
    80005808:	00d787bb          	addw	a5,a5,a3
    8000580c:	0017979b          	slliw	a5,a5,0x1
    80005810:	02f767bb          	remw	a5,a4,a5
    80005814:	fc0792e3          	bnez	a5,800057d8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005818:	fb9ff06f          	j	800057d0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000581c:	0104b503          	ld	a0,16(s1)
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	ba8080e7          	jalr	-1112(ra) # 800023c8 <_ZN9Semaphore6signalEv>
}
    80005828:	01813083          	ld	ra,24(sp)
    8000582c:	01013403          	ld	s0,16(sp)
    80005830:	00813483          	ld	s1,8(sp)
    80005834:	00013903          	ld	s2,0(sp)
    80005838:	02010113          	addi	sp,sp,32
    8000583c:	00008067          	ret

0000000080005840 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005840:	fd010113          	addi	sp,sp,-48
    80005844:	02113423          	sd	ra,40(sp)
    80005848:	02813023          	sd	s0,32(sp)
    8000584c:	00913c23          	sd	s1,24(sp)
    80005850:	01213823          	sd	s2,16(sp)
    80005854:	01313423          	sd	s3,8(sp)
    80005858:	01413023          	sd	s4,0(sp)
    8000585c:	03010413          	addi	s0,sp,48
    80005860:	00050993          	mv	s3,a0
    80005864:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005868:	00000a13          	li	s4,0
    8000586c:	01c0006f          	j	80005888 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	a94080e7          	jalr	-1388(ra) # 80002304 <_ZN6Thread8dispatchEv>
    80005878:	0500006f          	j	800058c8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000587c:	00a00513          	li	a0,10
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	dec080e7          	jalr	-532(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005888:	00007797          	auipc	a5,0x7
    8000588c:	7d87a783          	lw	a5,2008(a5) # 8000d060 <_ZL9threadEnd>
    80005890:	06079263          	bnez	a5,800058f4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005894:	00893503          	ld	a0,8(s2)
    80005898:	00001097          	auipc	ra,0x1
    8000589c:	b94080e7          	jalr	-1132(ra) # 8000642c <_ZN9BufferCPP3getEv>
        i++;
    800058a0:	001a049b          	addiw	s1,s4,1
    800058a4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800058a8:	0ff57513          	andi	a0,a0,255
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	dc0080e7          	jalr	-576(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800058b4:	00092703          	lw	a4,0(s2)
    800058b8:	0027179b          	slliw	a5,a4,0x2
    800058bc:	00e787bb          	addw	a5,a5,a4
    800058c0:	02f4e7bb          	remw	a5,s1,a5
    800058c4:	fa0786e3          	beqz	a5,80005870 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800058c8:	05000793          	li	a5,80
    800058cc:	02f4e4bb          	remw	s1,s1,a5
    800058d0:	fa049ce3          	bnez	s1,80005888 <_ZN12ConsumerSync8consumerEPv+0x48>
    800058d4:	fa9ff06f          	j	8000587c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800058d8:	0209b783          	ld	a5,32(s3)
    800058dc:	0087b503          	ld	a0,8(a5)
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	b4c080e7          	jalr	-1204(ra) # 8000642c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800058e8:	0ff57513          	andi	a0,a0,255
    800058ec:	ffffd097          	auipc	ra,0xffffd
    800058f0:	c04080e7          	jalr	-1020(ra) # 800024f0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800058f4:	0209b783          	ld	a5,32(s3)
    800058f8:	0087b503          	ld	a0,8(a5)
    800058fc:	00001097          	auipc	ra,0x1
    80005900:	bbc080e7          	jalr	-1092(ra) # 800064b8 <_ZN9BufferCPP6getCntEv>
    80005904:	fca04ae3          	bgtz	a0,800058d8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005908:	01093503          	ld	a0,16(s2)
    8000590c:	ffffd097          	auipc	ra,0xffffd
    80005910:	abc080e7          	jalr	-1348(ra) # 800023c8 <_ZN9Semaphore6signalEv>
}
    80005914:	02813083          	ld	ra,40(sp)
    80005918:	02013403          	ld	s0,32(sp)
    8000591c:	01813483          	ld	s1,24(sp)
    80005920:	01013903          	ld	s2,16(sp)
    80005924:	00813983          	ld	s3,8(sp)
    80005928:	00013a03          	ld	s4,0(sp)
    8000592c:	03010113          	addi	sp,sp,48
    80005930:	00008067          	ret

0000000080005934 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005934:	f8010113          	addi	sp,sp,-128
    80005938:	06113c23          	sd	ra,120(sp)
    8000593c:	06813823          	sd	s0,112(sp)
    80005940:	06913423          	sd	s1,104(sp)
    80005944:	07213023          	sd	s2,96(sp)
    80005948:	05313c23          	sd	s3,88(sp)
    8000594c:	05413823          	sd	s4,80(sp)
    80005950:	05513423          	sd	s5,72(sp)
    80005954:	05613023          	sd	s6,64(sp)
    80005958:	03713c23          	sd	s7,56(sp)
    8000595c:	03813823          	sd	s8,48(sp)
    80005960:	03913423          	sd	s9,40(sp)
    80005964:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005968:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000596c:	00004517          	auipc	a0,0x4
    80005970:	7e450513          	addi	a0,a0,2020 # 8000a150 <CONSOLE_STATUS+0x140>
    80005974:	00000097          	auipc	ra,0x0
    80005978:	604080e7          	jalr	1540(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    8000597c:	01e00593          	li	a1,30
    80005980:	f8040493          	addi	s1,s0,-128
    80005984:	00048513          	mv	a0,s1
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	678080e7          	jalr	1656(ra) # 80006000 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005990:	00048513          	mv	a0,s1
    80005994:	00000097          	auipc	ra,0x0
    80005998:	744080e7          	jalr	1860(ra) # 800060d8 <_Z11stringToIntPKc>
    8000599c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800059a0:	00004517          	auipc	a0,0x4
    800059a4:	7d050513          	addi	a0,a0,2000 # 8000a170 <CONSOLE_STATUS+0x160>
    800059a8:	00000097          	auipc	ra,0x0
    800059ac:	5d0080e7          	jalr	1488(ra) # 80005f78 <_Z11printStringPKc>
    getString(input, 30);
    800059b0:	01e00593          	li	a1,30
    800059b4:	00048513          	mv	a0,s1
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	648080e7          	jalr	1608(ra) # 80006000 <_Z9getStringPci>
    n = stringToInt(input);
    800059c0:	00048513          	mv	a0,s1
    800059c4:	00000097          	auipc	ra,0x0
    800059c8:	714080e7          	jalr	1812(ra) # 800060d8 <_Z11stringToIntPKc>
    800059cc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800059d0:	00004517          	auipc	a0,0x4
    800059d4:	7c050513          	addi	a0,a0,1984 # 8000a190 <CONSOLE_STATUS+0x180>
    800059d8:	00000097          	auipc	ra,0x0
    800059dc:	5a0080e7          	jalr	1440(ra) # 80005f78 <_Z11printStringPKc>
    800059e0:	00000613          	li	a2,0
    800059e4:	00a00593          	li	a1,10
    800059e8:	00090513          	mv	a0,s2
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	73c080e7          	jalr	1852(ra) # 80006128 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	7b450513          	addi	a0,a0,1972 # 8000a1a8 <CONSOLE_STATUS+0x198>
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	57c080e7          	jalr	1404(ra) # 80005f78 <_Z11printStringPKc>
    80005a04:	00000613          	li	a2,0
    80005a08:	00a00593          	li	a1,10
    80005a0c:	00048513          	mv	a0,s1
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	718080e7          	jalr	1816(ra) # 80006128 <_Z8printIntiii>
    printString(".\n");
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	7a850513          	addi	a0,a0,1960 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	558080e7          	jalr	1368(ra) # 80005f78 <_Z11printStringPKc>
    if(threadNum > n) {
    80005a28:	0324c463          	blt	s1,s2,80005a50 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005a2c:	03205c63          	blez	s2,80005a64 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005a30:	03800513          	li	a0,56
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	768080e7          	jalr	1896(ra) # 8000219c <_Znwm>
    80005a3c:	00050a93          	mv	s5,a0
    80005a40:	00048593          	mv	a1,s1
    80005a44:	00001097          	auipc	ra,0x1
    80005a48:	804080e7          	jalr	-2044(ra) # 80006248 <_ZN9BufferCPPC1Ei>
    80005a4c:	0300006f          	j	80005a7c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	77850513          	addi	a0,a0,1912 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	520080e7          	jalr	1312(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80005a60:	0140006f          	j	80005a74 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005a64:	00004517          	auipc	a0,0x4
    80005a68:	7a450513          	addi	a0,a0,1956 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	50c080e7          	jalr	1292(ra) # 80005f78 <_Z11printStringPKc>
        return;
    80005a74:	000b8113          	mv	sp,s7
    80005a78:	2380006f          	j	80005cb0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005a7c:	01000513          	li	a0,16
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	71c080e7          	jalr	1820(ra) # 8000219c <_Znwm>
    80005a88:	00050493          	mv	s1,a0
    80005a8c:	00000593          	li	a1,0
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	8c4080e7          	jalr	-1852(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    80005a98:	00007797          	auipc	a5,0x7
    80005a9c:	5c97b823          	sd	s1,1488(a5) # 8000d068 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005aa0:	00391793          	slli	a5,s2,0x3
    80005aa4:	00f78793          	addi	a5,a5,15
    80005aa8:	ff07f793          	andi	a5,a5,-16
    80005aac:	40f10133          	sub	sp,sp,a5
    80005ab0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005ab4:	0019071b          	addiw	a4,s2,1
    80005ab8:	00171793          	slli	a5,a4,0x1
    80005abc:	00e787b3          	add	a5,a5,a4
    80005ac0:	00379793          	slli	a5,a5,0x3
    80005ac4:	00f78793          	addi	a5,a5,15
    80005ac8:	ff07f793          	andi	a5,a5,-16
    80005acc:	40f10133          	sub	sp,sp,a5
    80005ad0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005ad4:	00191c13          	slli	s8,s2,0x1
    80005ad8:	012c07b3          	add	a5,s8,s2
    80005adc:	00379793          	slli	a5,a5,0x3
    80005ae0:	00fa07b3          	add	a5,s4,a5
    80005ae4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005ae8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005aec:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005af0:	02800513          	li	a0,40
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	6a8080e7          	jalr	1704(ra) # 8000219c <_Znwm>
    80005afc:	00050b13          	mv	s6,a0
    80005b00:	012c0c33          	add	s8,s8,s2
    80005b04:	003c1c13          	slli	s8,s8,0x3
    80005b08:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	790080e7          	jalr	1936(ra) # 8000229c <_ZN6ThreadC1Ev>
    80005b14:	00007797          	auipc	a5,0x7
    80005b18:	38c78793          	addi	a5,a5,908 # 8000cea0 <_ZTV12ConsumerSync+0x10>
    80005b1c:	00fb3023          	sd	a5,0(s6)
    80005b20:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005b24:	000b0513          	mv	a0,s6
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	7a4080e7          	jalr	1956(ra) # 800022cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005b30:	00000493          	li	s1,0
    80005b34:	0380006f          	j	80005b6c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005b38:	00007797          	auipc	a5,0x7
    80005b3c:	34078793          	addi	a5,a5,832 # 8000ce78 <_ZTV12ProducerSync+0x10>
    80005b40:	00fcb023          	sd	a5,0(s9)
    80005b44:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005b48:	00349793          	slli	a5,s1,0x3
    80005b4c:	00f987b3          	add	a5,s3,a5
    80005b50:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005b54:	00349793          	slli	a5,s1,0x3
    80005b58:	00f987b3          	add	a5,s3,a5
    80005b5c:	0007b503          	ld	a0,0(a5)
    80005b60:	ffffc097          	auipc	ra,0xffffc
    80005b64:	76c080e7          	jalr	1900(ra) # 800022cc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005b68:	0014849b          	addiw	s1,s1,1
    80005b6c:	0b24d063          	bge	s1,s2,80005c0c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005b70:	00149793          	slli	a5,s1,0x1
    80005b74:	009787b3          	add	a5,a5,s1
    80005b78:	00379793          	slli	a5,a5,0x3
    80005b7c:	00fa07b3          	add	a5,s4,a5
    80005b80:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005b84:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005b88:	00007717          	auipc	a4,0x7
    80005b8c:	4e073703          	ld	a4,1248(a4) # 8000d068 <_ZL10waitForAll>
    80005b90:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005b94:	02905863          	blez	s1,80005bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005b98:	02800513          	li	a0,40
    80005b9c:	ffffc097          	auipc	ra,0xffffc
    80005ba0:	600080e7          	jalr	1536(ra) # 8000219c <_Znwm>
    80005ba4:	00050c93          	mv	s9,a0
    80005ba8:	00149c13          	slli	s8,s1,0x1
    80005bac:	009c0c33          	add	s8,s8,s1
    80005bb0:	003c1c13          	slli	s8,s8,0x3
    80005bb4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	6e4080e7          	jalr	1764(ra) # 8000229c <_ZN6ThreadC1Ev>
    80005bc0:	f79ff06f          	j	80005b38 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005bc4:	02800513          	li	a0,40
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	5d4080e7          	jalr	1492(ra) # 8000219c <_Znwm>
    80005bd0:	00050c93          	mv	s9,a0
    80005bd4:	00149c13          	slli	s8,s1,0x1
    80005bd8:	009c0c33          	add	s8,s8,s1
    80005bdc:	003c1c13          	slli	s8,s8,0x3
    80005be0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005be4:	ffffc097          	auipc	ra,0xffffc
    80005be8:	6b8080e7          	jalr	1720(ra) # 8000229c <_ZN6ThreadC1Ev>
    80005bec:	00007797          	auipc	a5,0x7
    80005bf0:	26478793          	addi	a5,a5,612 # 8000ce50 <_ZTV16ProducerKeyboard+0x10>
    80005bf4:	00fcb023          	sd	a5,0(s9)
    80005bf8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005bfc:	00349793          	slli	a5,s1,0x3
    80005c00:	00f987b3          	add	a5,s3,a5
    80005c04:	0197b023          	sd	s9,0(a5)
    80005c08:	f4dff06f          	j	80005b54 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	6f8080e7          	jalr	1784(ra) # 80002304 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c14:	00000493          	li	s1,0
    80005c18:	00994e63          	blt	s2,s1,80005c34 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005c1c:	00007517          	auipc	a0,0x7
    80005c20:	44c53503          	ld	a0,1100(a0) # 8000d068 <_ZL10waitForAll>
    80005c24:	ffffc097          	auipc	ra,0xffffc
    80005c28:	76c080e7          	jalr	1900(ra) # 80002390 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c2c:	0014849b          	addiw	s1,s1,1
    80005c30:	fe9ff06f          	j	80005c18 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005c34:	00000493          	li	s1,0
    80005c38:	0080006f          	j	80005c40 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005c3c:	0014849b          	addiw	s1,s1,1
    80005c40:	0324d263          	bge	s1,s2,80005c64 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005c44:	00349793          	slli	a5,s1,0x3
    80005c48:	00f987b3          	add	a5,s3,a5
    80005c4c:	0007b503          	ld	a0,0(a5)
    80005c50:	fe0506e3          	beqz	a0,80005c3c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005c54:	00053783          	ld	a5,0(a0)
    80005c58:	0087b783          	ld	a5,8(a5)
    80005c5c:	000780e7          	jalr	a5
    80005c60:	fddff06f          	j	80005c3c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005c64:	000b0a63          	beqz	s6,80005c78 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005c68:	000b3783          	ld	a5,0(s6)
    80005c6c:	0087b783          	ld	a5,8(a5)
    80005c70:	000b0513          	mv	a0,s6
    80005c74:	000780e7          	jalr	a5
    delete waitForAll;
    80005c78:	00007517          	auipc	a0,0x7
    80005c7c:	3f053503          	ld	a0,1008(a0) # 8000d068 <_ZL10waitForAll>
    80005c80:	00050863          	beqz	a0,80005c90 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005c84:	00053783          	ld	a5,0(a0)
    80005c88:	0087b783          	ld	a5,8(a5)
    80005c8c:	000780e7          	jalr	a5
    delete buffer;
    80005c90:	000a8e63          	beqz	s5,80005cac <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005c94:	000a8513          	mv	a0,s5
    80005c98:	00001097          	auipc	ra,0x1
    80005c9c:	8a8080e7          	jalr	-1880(ra) # 80006540 <_ZN9BufferCPPD1Ev>
    80005ca0:	000a8513          	mv	a0,s5
    80005ca4:	ffffc097          	auipc	ra,0xffffc
    80005ca8:	520080e7          	jalr	1312(ra) # 800021c4 <_ZdlPv>
    80005cac:	000b8113          	mv	sp,s7

}
    80005cb0:	f8040113          	addi	sp,s0,-128
    80005cb4:	07813083          	ld	ra,120(sp)
    80005cb8:	07013403          	ld	s0,112(sp)
    80005cbc:	06813483          	ld	s1,104(sp)
    80005cc0:	06013903          	ld	s2,96(sp)
    80005cc4:	05813983          	ld	s3,88(sp)
    80005cc8:	05013a03          	ld	s4,80(sp)
    80005ccc:	04813a83          	ld	s5,72(sp)
    80005cd0:	04013b03          	ld	s6,64(sp)
    80005cd4:	03813b83          	ld	s7,56(sp)
    80005cd8:	03013c03          	ld	s8,48(sp)
    80005cdc:	02813c83          	ld	s9,40(sp)
    80005ce0:	08010113          	addi	sp,sp,128
    80005ce4:	00008067          	ret
    80005ce8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005cec:	000a8513          	mv	a0,s5
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	4d4080e7          	jalr	1236(ra) # 800021c4 <_ZdlPv>
    80005cf8:	00048513          	mv	a0,s1
    80005cfc:	00008097          	auipc	ra,0x8
    80005d00:	44c080e7          	jalr	1100(ra) # 8000e148 <_Unwind_Resume>
    80005d04:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	ffffc097          	auipc	ra,0xffffc
    80005d10:	4b8080e7          	jalr	1208(ra) # 800021c4 <_ZdlPv>
    80005d14:	00090513          	mv	a0,s2
    80005d18:	00008097          	auipc	ra,0x8
    80005d1c:	430080e7          	jalr	1072(ra) # 8000e148 <_Unwind_Resume>
    80005d20:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005d24:	000b0513          	mv	a0,s6
    80005d28:	ffffc097          	auipc	ra,0xffffc
    80005d2c:	49c080e7          	jalr	1180(ra) # 800021c4 <_ZdlPv>
    80005d30:	00048513          	mv	a0,s1
    80005d34:	00008097          	auipc	ra,0x8
    80005d38:	414080e7          	jalr	1044(ra) # 8000e148 <_Unwind_Resume>
    80005d3c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005d40:	000c8513          	mv	a0,s9
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	480080e7          	jalr	1152(ra) # 800021c4 <_ZdlPv>
    80005d4c:	00048513          	mv	a0,s1
    80005d50:	00008097          	auipc	ra,0x8
    80005d54:	3f8080e7          	jalr	1016(ra) # 8000e148 <_Unwind_Resume>
    80005d58:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005d5c:	000c8513          	mv	a0,s9
    80005d60:	ffffc097          	auipc	ra,0xffffc
    80005d64:	464080e7          	jalr	1124(ra) # 800021c4 <_ZdlPv>
    80005d68:	00048513          	mv	a0,s1
    80005d6c:	00008097          	auipc	ra,0x8
    80005d70:	3dc080e7          	jalr	988(ra) # 8000e148 <_Unwind_Resume>

0000000080005d74 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005d74:	ff010113          	addi	sp,sp,-16
    80005d78:	00113423          	sd	ra,8(sp)
    80005d7c:	00813023          	sd	s0,0(sp)
    80005d80:	01010413          	addi	s0,sp,16
    80005d84:	00007797          	auipc	a5,0x7
    80005d88:	11c78793          	addi	a5,a5,284 # 8000cea0 <_ZTV12ConsumerSync+0x10>
    80005d8c:	00f53023          	sd	a5,0(a0)
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	31c080e7          	jalr	796(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005d98:	00813083          	ld	ra,8(sp)
    80005d9c:	00013403          	ld	s0,0(sp)
    80005da0:	01010113          	addi	sp,sp,16
    80005da4:	00008067          	ret

0000000080005da8 <_ZN12ConsumerSyncD0Ev>:
    80005da8:	fe010113          	addi	sp,sp,-32
    80005dac:	00113c23          	sd	ra,24(sp)
    80005db0:	00813823          	sd	s0,16(sp)
    80005db4:	00913423          	sd	s1,8(sp)
    80005db8:	02010413          	addi	s0,sp,32
    80005dbc:	00050493          	mv	s1,a0
    80005dc0:	00007797          	auipc	a5,0x7
    80005dc4:	0e078793          	addi	a5,a5,224 # 8000cea0 <_ZTV12ConsumerSync+0x10>
    80005dc8:	00f53023          	sd	a5,0(a0)
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	2e0080e7          	jalr	736(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005dd4:	00048513          	mv	a0,s1
    80005dd8:	ffffc097          	auipc	ra,0xffffc
    80005ddc:	3ec080e7          	jalr	1004(ra) # 800021c4 <_ZdlPv>
    80005de0:	01813083          	ld	ra,24(sp)
    80005de4:	01013403          	ld	s0,16(sp)
    80005de8:	00813483          	ld	s1,8(sp)
    80005dec:	02010113          	addi	sp,sp,32
    80005df0:	00008067          	ret

0000000080005df4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005df4:	ff010113          	addi	sp,sp,-16
    80005df8:	00113423          	sd	ra,8(sp)
    80005dfc:	00813023          	sd	s0,0(sp)
    80005e00:	01010413          	addi	s0,sp,16
    80005e04:	00007797          	auipc	a5,0x7
    80005e08:	07478793          	addi	a5,a5,116 # 8000ce78 <_ZTV12ProducerSync+0x10>
    80005e0c:	00f53023          	sd	a5,0(a0)
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	29c080e7          	jalr	668(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005e18:	00813083          	ld	ra,8(sp)
    80005e1c:	00013403          	ld	s0,0(sp)
    80005e20:	01010113          	addi	sp,sp,16
    80005e24:	00008067          	ret

0000000080005e28 <_ZN12ProducerSyncD0Ev>:
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	02010413          	addi	s0,sp,32
    80005e3c:	00050493          	mv	s1,a0
    80005e40:	00007797          	auipc	a5,0x7
    80005e44:	03878793          	addi	a5,a5,56 # 8000ce78 <_ZTV12ProducerSync+0x10>
    80005e48:	00f53023          	sd	a5,0(a0)
    80005e4c:	ffffc097          	auipc	ra,0xffffc
    80005e50:	260080e7          	jalr	608(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005e54:	00048513          	mv	a0,s1
    80005e58:	ffffc097          	auipc	ra,0xffffc
    80005e5c:	36c080e7          	jalr	876(ra) # 800021c4 <_ZdlPv>
    80005e60:	01813083          	ld	ra,24(sp)
    80005e64:	01013403          	ld	s0,16(sp)
    80005e68:	00813483          	ld	s1,8(sp)
    80005e6c:	02010113          	addi	sp,sp,32
    80005e70:	00008067          	ret

0000000080005e74 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005e74:	ff010113          	addi	sp,sp,-16
    80005e78:	00113423          	sd	ra,8(sp)
    80005e7c:	00813023          	sd	s0,0(sp)
    80005e80:	01010413          	addi	s0,sp,16
    80005e84:	00007797          	auipc	a5,0x7
    80005e88:	fcc78793          	addi	a5,a5,-52 # 8000ce50 <_ZTV16ProducerKeyboard+0x10>
    80005e8c:	00f53023          	sd	a5,0(a0)
    80005e90:	ffffc097          	auipc	ra,0xffffc
    80005e94:	21c080e7          	jalr	540(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005e98:	00813083          	ld	ra,8(sp)
    80005e9c:	00013403          	ld	s0,0(sp)
    80005ea0:	01010113          	addi	sp,sp,16
    80005ea4:	00008067          	ret

0000000080005ea8 <_ZN16ProducerKeyboardD0Ev>:
    80005ea8:	fe010113          	addi	sp,sp,-32
    80005eac:	00113c23          	sd	ra,24(sp)
    80005eb0:	00813823          	sd	s0,16(sp)
    80005eb4:	00913423          	sd	s1,8(sp)
    80005eb8:	02010413          	addi	s0,sp,32
    80005ebc:	00050493          	mv	s1,a0
    80005ec0:	00007797          	auipc	a5,0x7
    80005ec4:	f9078793          	addi	a5,a5,-112 # 8000ce50 <_ZTV16ProducerKeyboard+0x10>
    80005ec8:	00f53023          	sd	a5,0(a0)
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	1e0080e7          	jalr	480(ra) # 800020ac <_ZN6ThreadD1Ev>
    80005ed4:	00048513          	mv	a0,s1
    80005ed8:	ffffc097          	auipc	ra,0xffffc
    80005edc:	2ec080e7          	jalr	748(ra) # 800021c4 <_ZdlPv>
    80005ee0:	01813083          	ld	ra,24(sp)
    80005ee4:	01013403          	ld	s0,16(sp)
    80005ee8:	00813483          	ld	s1,8(sp)
    80005eec:	02010113          	addi	sp,sp,32
    80005ef0:	00008067          	ret

0000000080005ef4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ef4:	ff010113          	addi	sp,sp,-16
    80005ef8:	00113423          	sd	ra,8(sp)
    80005efc:	00813023          	sd	s0,0(sp)
    80005f00:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005f04:	02053583          	ld	a1,32(a0)
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	7e4080e7          	jalr	2020(ra) # 800056ec <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005f10:	00813083          	ld	ra,8(sp)
    80005f14:	00013403          	ld	s0,0(sp)
    80005f18:	01010113          	addi	sp,sp,16
    80005f1c:	00008067          	ret

0000000080005f20 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005f20:	ff010113          	addi	sp,sp,-16
    80005f24:	00113423          	sd	ra,8(sp)
    80005f28:	00813023          	sd	s0,0(sp)
    80005f2c:	01010413          	addi	s0,sp,16
        producer(td);
    80005f30:	02053583          	ld	a1,32(a0)
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	878080e7          	jalr	-1928(ra) # 800057ac <_ZN12ProducerSync8producerEPv>
    }
    80005f3c:	00813083          	ld	ra,8(sp)
    80005f40:	00013403          	ld	s0,0(sp)
    80005f44:	01010113          	addi	sp,sp,16
    80005f48:	00008067          	ret

0000000080005f4c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005f4c:	ff010113          	addi	sp,sp,-16
    80005f50:	00113423          	sd	ra,8(sp)
    80005f54:	00813023          	sd	s0,0(sp)
    80005f58:	01010413          	addi	s0,sp,16
        consumer(td);
    80005f5c:	02053583          	ld	a1,32(a0)
    80005f60:	00000097          	auipc	ra,0x0
    80005f64:	8e0080e7          	jalr	-1824(ra) # 80005840 <_ZN12ConsumerSync8consumerEPv>
    }
    80005f68:	00813083          	ld	ra,8(sp)
    80005f6c:	00013403          	ld	s0,0(sp)
    80005f70:	01010113          	addi	sp,sp,16
    80005f74:	00008067          	ret

0000000080005f78 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005f78:	fe010113          	addi	sp,sp,-32
    80005f7c:	00113c23          	sd	ra,24(sp)
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00913423          	sd	s1,8(sp)
    80005f88:	02010413          	addi	s0,sp,32
    80005f8c:	00050493          	mv	s1,a0
    LOCK();
    80005f90:	00100613          	li	a2,1
    80005f94:	00000593          	li	a1,0
    80005f98:	00007517          	auipc	a0,0x7
    80005f9c:	0d850513          	addi	a0,a0,216 # 8000d070 <lockPrint>
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	27c080e7          	jalr	636(ra) # 8000121c <copy_and_swap>
    80005fa8:	00050863          	beqz	a0,80005fb8 <_Z11printStringPKc+0x40>
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	420080e7          	jalr	1056(ra) # 800013cc <_Z15thread_dispatchv>
    80005fb4:	fddff06f          	j	80005f90 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005fb8:	0004c503          	lbu	a0,0(s1)
    80005fbc:	00050a63          	beqz	a0,80005fd0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005fc0:	ffffb097          	auipc	ra,0xffffb
    80005fc4:	6ac080e7          	jalr	1708(ra) # 8000166c <_Z4putcc>
        string++;
    80005fc8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005fcc:	fedff06f          	j	80005fb8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005fd0:	00000613          	li	a2,0
    80005fd4:	00100593          	li	a1,1
    80005fd8:	00007517          	auipc	a0,0x7
    80005fdc:	09850513          	addi	a0,a0,152 # 8000d070 <lockPrint>
    80005fe0:	ffffb097          	auipc	ra,0xffffb
    80005fe4:	23c080e7          	jalr	572(ra) # 8000121c <copy_and_swap>
    80005fe8:	fe0514e3          	bnez	a0,80005fd0 <_Z11printStringPKc+0x58>
}
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret

0000000080006000 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006000:	fd010113          	addi	sp,sp,-48
    80006004:	02113423          	sd	ra,40(sp)
    80006008:	02813023          	sd	s0,32(sp)
    8000600c:	00913c23          	sd	s1,24(sp)
    80006010:	01213823          	sd	s2,16(sp)
    80006014:	01313423          	sd	s3,8(sp)
    80006018:	01413023          	sd	s4,0(sp)
    8000601c:	03010413          	addi	s0,sp,48
    80006020:	00050993          	mv	s3,a0
    80006024:	00058a13          	mv	s4,a1
    LOCK();
    80006028:	00100613          	li	a2,1
    8000602c:	00000593          	li	a1,0
    80006030:	00007517          	auipc	a0,0x7
    80006034:	04050513          	addi	a0,a0,64 # 8000d070 <lockPrint>
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	1e4080e7          	jalr	484(ra) # 8000121c <copy_and_swap>
    80006040:	00050863          	beqz	a0,80006050 <_Z9getStringPci+0x50>
    80006044:	ffffb097          	auipc	ra,0xffffb
    80006048:	388080e7          	jalr	904(ra) # 800013cc <_Z15thread_dispatchv>
    8000604c:	fddff06f          	j	80006028 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006050:	00000913          	li	s2,0
    80006054:	00090493          	mv	s1,s2
    80006058:	0019091b          	addiw	s2,s2,1
    8000605c:	03495a63          	bge	s2,s4,80006090 <_Z9getStringPci+0x90>
        cc = getc();
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	5c0080e7          	jalr	1472(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80006068:	02050463          	beqz	a0,80006090 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000606c:	009984b3          	add	s1,s3,s1
    80006070:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006074:	00a00793          	li	a5,10
    80006078:	00f50a63          	beq	a0,a5,8000608c <_Z9getStringPci+0x8c>
    8000607c:	00d00793          	li	a5,13
    80006080:	fcf51ae3          	bne	a0,a5,80006054 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006084:	00090493          	mv	s1,s2
    80006088:	0080006f          	j	80006090 <_Z9getStringPci+0x90>
    8000608c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006090:	009984b3          	add	s1,s3,s1
    80006094:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006098:	00000613          	li	a2,0
    8000609c:	00100593          	li	a1,1
    800060a0:	00007517          	auipc	a0,0x7
    800060a4:	fd050513          	addi	a0,a0,-48 # 8000d070 <lockPrint>
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	174080e7          	jalr	372(ra) # 8000121c <copy_and_swap>
    800060b0:	fe0514e3          	bnez	a0,80006098 <_Z9getStringPci+0x98>
    return buf;
}
    800060b4:	00098513          	mv	a0,s3
    800060b8:	02813083          	ld	ra,40(sp)
    800060bc:	02013403          	ld	s0,32(sp)
    800060c0:	01813483          	ld	s1,24(sp)
    800060c4:	01013903          	ld	s2,16(sp)
    800060c8:	00813983          	ld	s3,8(sp)
    800060cc:	00013a03          	ld	s4,0(sp)
    800060d0:	03010113          	addi	sp,sp,48
    800060d4:	00008067          	ret

00000000800060d8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800060d8:	ff010113          	addi	sp,sp,-16
    800060dc:	00813423          	sd	s0,8(sp)
    800060e0:	01010413          	addi	s0,sp,16
    800060e4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800060e8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800060ec:	0006c603          	lbu	a2,0(a3)
    800060f0:	fd06071b          	addiw	a4,a2,-48
    800060f4:	0ff77713          	andi	a4,a4,255
    800060f8:	00900793          	li	a5,9
    800060fc:	02e7e063          	bltu	a5,a4,8000611c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006100:	0025179b          	slliw	a5,a0,0x2
    80006104:	00a787bb          	addw	a5,a5,a0
    80006108:	0017979b          	slliw	a5,a5,0x1
    8000610c:	00168693          	addi	a3,a3,1
    80006110:	00c787bb          	addw	a5,a5,a2
    80006114:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006118:	fd5ff06f          	j	800060ec <_Z11stringToIntPKc+0x14>
    return n;
}
    8000611c:	00813403          	ld	s0,8(sp)
    80006120:	01010113          	addi	sp,sp,16
    80006124:	00008067          	ret

0000000080006128 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006128:	fc010113          	addi	sp,sp,-64
    8000612c:	02113c23          	sd	ra,56(sp)
    80006130:	02813823          	sd	s0,48(sp)
    80006134:	02913423          	sd	s1,40(sp)
    80006138:	03213023          	sd	s2,32(sp)
    8000613c:	01313c23          	sd	s3,24(sp)
    80006140:	04010413          	addi	s0,sp,64
    80006144:	00050493          	mv	s1,a0
    80006148:	00058913          	mv	s2,a1
    8000614c:	00060993          	mv	s3,a2
    LOCK();
    80006150:	00100613          	li	a2,1
    80006154:	00000593          	li	a1,0
    80006158:	00007517          	auipc	a0,0x7
    8000615c:	f1850513          	addi	a0,a0,-232 # 8000d070 <lockPrint>
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	0bc080e7          	jalr	188(ra) # 8000121c <copy_and_swap>
    80006168:	00050863          	beqz	a0,80006178 <_Z8printIntiii+0x50>
    8000616c:	ffffb097          	auipc	ra,0xffffb
    80006170:	260080e7          	jalr	608(ra) # 800013cc <_Z15thread_dispatchv>
    80006174:	fddff06f          	j	80006150 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006178:	00098463          	beqz	s3,80006180 <_Z8printIntiii+0x58>
    8000617c:	0804c463          	bltz	s1,80006204 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006180:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006184:	00000593          	li	a1,0
    }

    i = 0;
    80006188:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000618c:	0009079b          	sext.w	a5,s2
    80006190:	0325773b          	remuw	a4,a0,s2
    80006194:	00048613          	mv	a2,s1
    80006198:	0014849b          	addiw	s1,s1,1
    8000619c:	02071693          	slli	a3,a4,0x20
    800061a0:	0206d693          	srli	a3,a3,0x20
    800061a4:	00007717          	auipc	a4,0x7
    800061a8:	d1470713          	addi	a4,a4,-748 # 8000ceb8 <digits>
    800061ac:	00d70733          	add	a4,a4,a3
    800061b0:	00074683          	lbu	a3,0(a4)
    800061b4:	fd040713          	addi	a4,s0,-48
    800061b8:	00c70733          	add	a4,a4,a2
    800061bc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800061c0:	0005071b          	sext.w	a4,a0
    800061c4:	0325553b          	divuw	a0,a0,s2
    800061c8:	fcf772e3          	bgeu	a4,a5,8000618c <_Z8printIntiii+0x64>
    if(neg)
    800061cc:	00058c63          	beqz	a1,800061e4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800061d0:	fd040793          	addi	a5,s0,-48
    800061d4:	009784b3          	add	s1,a5,s1
    800061d8:	02d00793          	li	a5,45
    800061dc:	fef48823          	sb	a5,-16(s1)
    800061e0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800061e4:	fff4849b          	addiw	s1,s1,-1
    800061e8:	0204c463          	bltz	s1,80006210 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800061ec:	fd040793          	addi	a5,s0,-48
    800061f0:	009787b3          	add	a5,a5,s1
    800061f4:	ff07c503          	lbu	a0,-16(a5)
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	474080e7          	jalr	1140(ra) # 8000166c <_Z4putcc>
    80006200:	fe5ff06f          	j	800061e4 <_Z8printIntiii+0xbc>
        x = -xx;
    80006204:	4090053b          	negw	a0,s1
        neg = 1;
    80006208:	00100593          	li	a1,1
        x = -xx;
    8000620c:	f7dff06f          	j	80006188 <_Z8printIntiii+0x60>

    UNLOCK();
    80006210:	00000613          	li	a2,0
    80006214:	00100593          	li	a1,1
    80006218:	00007517          	auipc	a0,0x7
    8000621c:	e5850513          	addi	a0,a0,-424 # 8000d070 <lockPrint>
    80006220:	ffffb097          	auipc	ra,0xffffb
    80006224:	ffc080e7          	jalr	-4(ra) # 8000121c <copy_and_swap>
    80006228:	fe0514e3          	bnez	a0,80006210 <_Z8printIntiii+0xe8>
    8000622c:	03813083          	ld	ra,56(sp)
    80006230:	03013403          	ld	s0,48(sp)
    80006234:	02813483          	ld	s1,40(sp)
    80006238:	02013903          	ld	s2,32(sp)
    8000623c:	01813983          	ld	s3,24(sp)
    80006240:	04010113          	addi	sp,sp,64
    80006244:	00008067          	ret

0000000080006248 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006248:	fd010113          	addi	sp,sp,-48
    8000624c:	02113423          	sd	ra,40(sp)
    80006250:	02813023          	sd	s0,32(sp)
    80006254:	00913c23          	sd	s1,24(sp)
    80006258:	01213823          	sd	s2,16(sp)
    8000625c:	01313423          	sd	s3,8(sp)
    80006260:	03010413          	addi	s0,sp,48
    80006264:	00050493          	mv	s1,a0
    80006268:	00058913          	mv	s2,a1
    8000626c:	0015879b          	addiw	a5,a1,1
    80006270:	0007851b          	sext.w	a0,a5
    80006274:	00f4a023          	sw	a5,0(s1)
    80006278:	0004a823          	sw	zero,16(s1)
    8000627c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006280:	00251513          	slli	a0,a0,0x2
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	fd4080e7          	jalr	-44(ra) # 80001258 <_Z9mem_allocm>
    8000628c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006290:	01000513          	li	a0,16
    80006294:	ffffc097          	auipc	ra,0xffffc
    80006298:	f08080e7          	jalr	-248(ra) # 8000219c <_Znwm>
    8000629c:	00050993          	mv	s3,a0
    800062a0:	00000593          	li	a1,0
    800062a4:	ffffc097          	auipc	ra,0xffffc
    800062a8:	0b0080e7          	jalr	176(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    800062ac:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800062b0:	01000513          	li	a0,16
    800062b4:	ffffc097          	auipc	ra,0xffffc
    800062b8:	ee8080e7          	jalr	-280(ra) # 8000219c <_Znwm>
    800062bc:	00050993          	mv	s3,a0
    800062c0:	00090593          	mv	a1,s2
    800062c4:	ffffc097          	auipc	ra,0xffffc
    800062c8:	090080e7          	jalr	144(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    800062cc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800062d0:	01000513          	li	a0,16
    800062d4:	ffffc097          	auipc	ra,0xffffc
    800062d8:	ec8080e7          	jalr	-312(ra) # 8000219c <_Znwm>
    800062dc:	00050913          	mv	s2,a0
    800062e0:	00100593          	li	a1,1
    800062e4:	ffffc097          	auipc	ra,0xffffc
    800062e8:	070080e7          	jalr	112(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    800062ec:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800062f0:	01000513          	li	a0,16
    800062f4:	ffffc097          	auipc	ra,0xffffc
    800062f8:	ea8080e7          	jalr	-344(ra) # 8000219c <_Znwm>
    800062fc:	00050913          	mv	s2,a0
    80006300:	00100593          	li	a1,1
    80006304:	ffffc097          	auipc	ra,0xffffc
    80006308:	050080e7          	jalr	80(ra) # 80002354 <_ZN9SemaphoreC1Ej>
    8000630c:	0324b823          	sd	s2,48(s1)
}
    80006310:	02813083          	ld	ra,40(sp)
    80006314:	02013403          	ld	s0,32(sp)
    80006318:	01813483          	ld	s1,24(sp)
    8000631c:	01013903          	ld	s2,16(sp)
    80006320:	00813983          	ld	s3,8(sp)
    80006324:	03010113          	addi	sp,sp,48
    80006328:	00008067          	ret
    8000632c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006330:	00098513          	mv	a0,s3
    80006334:	ffffc097          	auipc	ra,0xffffc
    80006338:	e90080e7          	jalr	-368(ra) # 800021c4 <_ZdlPv>
    8000633c:	00048513          	mv	a0,s1
    80006340:	00008097          	auipc	ra,0x8
    80006344:	e08080e7          	jalr	-504(ra) # 8000e148 <_Unwind_Resume>
    80006348:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000634c:	00098513          	mv	a0,s3
    80006350:	ffffc097          	auipc	ra,0xffffc
    80006354:	e74080e7          	jalr	-396(ra) # 800021c4 <_ZdlPv>
    80006358:	00048513          	mv	a0,s1
    8000635c:	00008097          	auipc	ra,0x8
    80006360:	dec080e7          	jalr	-532(ra) # 8000e148 <_Unwind_Resume>
    80006364:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006368:	00090513          	mv	a0,s2
    8000636c:	ffffc097          	auipc	ra,0xffffc
    80006370:	e58080e7          	jalr	-424(ra) # 800021c4 <_ZdlPv>
    80006374:	00048513          	mv	a0,s1
    80006378:	00008097          	auipc	ra,0x8
    8000637c:	dd0080e7          	jalr	-560(ra) # 8000e148 <_Unwind_Resume>
    80006380:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006384:	00090513          	mv	a0,s2
    80006388:	ffffc097          	auipc	ra,0xffffc
    8000638c:	e3c080e7          	jalr	-452(ra) # 800021c4 <_ZdlPv>
    80006390:	00048513          	mv	a0,s1
    80006394:	00008097          	auipc	ra,0x8
    80006398:	db4080e7          	jalr	-588(ra) # 8000e148 <_Unwind_Resume>

000000008000639c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000639c:	fe010113          	addi	sp,sp,-32
    800063a0:	00113c23          	sd	ra,24(sp)
    800063a4:	00813823          	sd	s0,16(sp)
    800063a8:	00913423          	sd	s1,8(sp)
    800063ac:	01213023          	sd	s2,0(sp)
    800063b0:	02010413          	addi	s0,sp,32
    800063b4:	00050493          	mv	s1,a0
    800063b8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800063bc:	01853503          	ld	a0,24(a0)
    800063c0:	ffffc097          	auipc	ra,0xffffc
    800063c4:	fd0080e7          	jalr	-48(ra) # 80002390 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800063c8:	0304b503          	ld	a0,48(s1)
    800063cc:	ffffc097          	auipc	ra,0xffffc
    800063d0:	fc4080e7          	jalr	-60(ra) # 80002390 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800063d4:	0084b783          	ld	a5,8(s1)
    800063d8:	0144a703          	lw	a4,20(s1)
    800063dc:	00271713          	slli	a4,a4,0x2
    800063e0:	00e787b3          	add	a5,a5,a4
    800063e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063e8:	0144a783          	lw	a5,20(s1)
    800063ec:	0017879b          	addiw	a5,a5,1
    800063f0:	0004a703          	lw	a4,0(s1)
    800063f4:	02e7e7bb          	remw	a5,a5,a4
    800063f8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800063fc:	0304b503          	ld	a0,48(s1)
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	fc8080e7          	jalr	-56(ra) # 800023c8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006408:	0204b503          	ld	a0,32(s1)
    8000640c:	ffffc097          	auipc	ra,0xffffc
    80006410:	fbc080e7          	jalr	-68(ra) # 800023c8 <_ZN9Semaphore6signalEv>

}
    80006414:	01813083          	ld	ra,24(sp)
    80006418:	01013403          	ld	s0,16(sp)
    8000641c:	00813483          	ld	s1,8(sp)
    80006420:	00013903          	ld	s2,0(sp)
    80006424:	02010113          	addi	sp,sp,32
    80006428:	00008067          	ret

000000008000642c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000642c:	fe010113          	addi	sp,sp,-32
    80006430:	00113c23          	sd	ra,24(sp)
    80006434:	00813823          	sd	s0,16(sp)
    80006438:	00913423          	sd	s1,8(sp)
    8000643c:	01213023          	sd	s2,0(sp)
    80006440:	02010413          	addi	s0,sp,32
    80006444:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006448:	02053503          	ld	a0,32(a0)
    8000644c:	ffffc097          	auipc	ra,0xffffc
    80006450:	f44080e7          	jalr	-188(ra) # 80002390 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006454:	0284b503          	ld	a0,40(s1)
    80006458:	ffffc097          	auipc	ra,0xffffc
    8000645c:	f38080e7          	jalr	-200(ra) # 80002390 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006460:	0084b703          	ld	a4,8(s1)
    80006464:	0104a783          	lw	a5,16(s1)
    80006468:	00279693          	slli	a3,a5,0x2
    8000646c:	00d70733          	add	a4,a4,a3
    80006470:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006474:	0017879b          	addiw	a5,a5,1
    80006478:	0004a703          	lw	a4,0(s1)
    8000647c:	02e7e7bb          	remw	a5,a5,a4
    80006480:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006484:	0284b503          	ld	a0,40(s1)
    80006488:	ffffc097          	auipc	ra,0xffffc
    8000648c:	f40080e7          	jalr	-192(ra) # 800023c8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006490:	0184b503          	ld	a0,24(s1)
    80006494:	ffffc097          	auipc	ra,0xffffc
    80006498:	f34080e7          	jalr	-204(ra) # 800023c8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000649c:	00090513          	mv	a0,s2
    800064a0:	01813083          	ld	ra,24(sp)
    800064a4:	01013403          	ld	s0,16(sp)
    800064a8:	00813483          	ld	s1,8(sp)
    800064ac:	00013903          	ld	s2,0(sp)
    800064b0:	02010113          	addi	sp,sp,32
    800064b4:	00008067          	ret

00000000800064b8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800064b8:	fe010113          	addi	sp,sp,-32
    800064bc:	00113c23          	sd	ra,24(sp)
    800064c0:	00813823          	sd	s0,16(sp)
    800064c4:	00913423          	sd	s1,8(sp)
    800064c8:	01213023          	sd	s2,0(sp)
    800064cc:	02010413          	addi	s0,sp,32
    800064d0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800064d4:	02853503          	ld	a0,40(a0)
    800064d8:	ffffc097          	auipc	ra,0xffffc
    800064dc:	eb8080e7          	jalr	-328(ra) # 80002390 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800064e0:	0304b503          	ld	a0,48(s1)
    800064e4:	ffffc097          	auipc	ra,0xffffc
    800064e8:	eac080e7          	jalr	-340(ra) # 80002390 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800064ec:	0144a783          	lw	a5,20(s1)
    800064f0:	0104a903          	lw	s2,16(s1)
    800064f4:	0327ce63          	blt	a5,s2,80006530 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800064f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800064fc:	0304b503          	ld	a0,48(s1)
    80006500:	ffffc097          	auipc	ra,0xffffc
    80006504:	ec8080e7          	jalr	-312(ra) # 800023c8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006508:	0284b503          	ld	a0,40(s1)
    8000650c:	ffffc097          	auipc	ra,0xffffc
    80006510:	ebc080e7          	jalr	-324(ra) # 800023c8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006514:	00090513          	mv	a0,s2
    80006518:	01813083          	ld	ra,24(sp)
    8000651c:	01013403          	ld	s0,16(sp)
    80006520:	00813483          	ld	s1,8(sp)
    80006524:	00013903          	ld	s2,0(sp)
    80006528:	02010113          	addi	sp,sp,32
    8000652c:	00008067          	ret
        ret = cap - head + tail;
    80006530:	0004a703          	lw	a4,0(s1)
    80006534:	4127093b          	subw	s2,a4,s2
    80006538:	00f9093b          	addw	s2,s2,a5
    8000653c:	fc1ff06f          	j	800064fc <_ZN9BufferCPP6getCntEv+0x44>

0000000080006540 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006540:	fe010113          	addi	sp,sp,-32
    80006544:	00113c23          	sd	ra,24(sp)
    80006548:	00813823          	sd	s0,16(sp)
    8000654c:	00913423          	sd	s1,8(sp)
    80006550:	02010413          	addi	s0,sp,32
    80006554:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006558:	00a00513          	li	a0,10
    8000655c:	ffffc097          	auipc	ra,0xffffc
    80006560:	f94080e7          	jalr	-108(ra) # 800024f0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006564:	00004517          	auipc	a0,0x4
    80006568:	dcc50513          	addi	a0,a0,-564 # 8000a330 <CONSOLE_STATUS+0x320>
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	a0c080e7          	jalr	-1524(ra) # 80005f78 <_Z11printStringPKc>
    while (getCnt()) {
    80006574:	00048513          	mv	a0,s1
    80006578:	00000097          	auipc	ra,0x0
    8000657c:	f40080e7          	jalr	-192(ra) # 800064b8 <_ZN9BufferCPP6getCntEv>
    80006580:	02050c63          	beqz	a0,800065b8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006584:	0084b783          	ld	a5,8(s1)
    80006588:	0104a703          	lw	a4,16(s1)
    8000658c:	00271713          	slli	a4,a4,0x2
    80006590:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006594:	0007c503          	lbu	a0,0(a5)
    80006598:	ffffc097          	auipc	ra,0xffffc
    8000659c:	f58080e7          	jalr	-168(ra) # 800024f0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800065a0:	0104a783          	lw	a5,16(s1)
    800065a4:	0017879b          	addiw	a5,a5,1
    800065a8:	0004a703          	lw	a4,0(s1)
    800065ac:	02e7e7bb          	remw	a5,a5,a4
    800065b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800065b4:	fc1ff06f          	j	80006574 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800065b8:	02100513          	li	a0,33
    800065bc:	ffffc097          	auipc	ra,0xffffc
    800065c0:	f34080e7          	jalr	-204(ra) # 800024f0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800065c4:	00a00513          	li	a0,10
    800065c8:	ffffc097          	auipc	ra,0xffffc
    800065cc:	f28080e7          	jalr	-216(ra) # 800024f0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800065d0:	0084b503          	ld	a0,8(s1)
    800065d4:	ffffb097          	auipc	ra,0xffffb
    800065d8:	cd8080e7          	jalr	-808(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800065dc:	0204b503          	ld	a0,32(s1)
    800065e0:	00050863          	beqz	a0,800065f0 <_ZN9BufferCPPD1Ev+0xb0>
    800065e4:	00053783          	ld	a5,0(a0)
    800065e8:	0087b783          	ld	a5,8(a5)
    800065ec:	000780e7          	jalr	a5
    delete spaceAvailable;
    800065f0:	0184b503          	ld	a0,24(s1)
    800065f4:	00050863          	beqz	a0,80006604 <_ZN9BufferCPPD1Ev+0xc4>
    800065f8:	00053783          	ld	a5,0(a0)
    800065fc:	0087b783          	ld	a5,8(a5)
    80006600:	000780e7          	jalr	a5
    delete mutexTail;
    80006604:	0304b503          	ld	a0,48(s1)
    80006608:	00050863          	beqz	a0,80006618 <_ZN9BufferCPPD1Ev+0xd8>
    8000660c:	00053783          	ld	a5,0(a0)
    80006610:	0087b783          	ld	a5,8(a5)
    80006614:	000780e7          	jalr	a5
    delete mutexHead;
    80006618:	0284b503          	ld	a0,40(s1)
    8000661c:	00050863          	beqz	a0,8000662c <_ZN9BufferCPPD1Ev+0xec>
    80006620:	00053783          	ld	a5,0(a0)
    80006624:	0087b783          	ld	a5,8(a5)
    80006628:	000780e7          	jalr	a5
}
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	01013403          	ld	s0,16(sp)
    80006634:	00813483          	ld	s1,8(sp)
    80006638:	02010113          	addi	sp,sp,32
    8000663c:	00008067          	ret

0000000080006640 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006640:	fe010113          	addi	sp,sp,-32
    80006644:	00113c23          	sd	ra,24(sp)
    80006648:	00813823          	sd	s0,16(sp)
    8000664c:	00913423          	sd	s1,8(sp)
    80006650:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006654:	00004517          	auipc	a0,0x4
    80006658:	cf450513          	addi	a0,a0,-780 # 8000a348 <CONSOLE_STATUS+0x338>
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	91c080e7          	jalr	-1764(ra) # 80005f78 <_Z11printStringPKc>
    int test = getc() - '0';
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	fbc080e7          	jalr	-68(ra) # 80001620 <_Z4getcv>
    8000666c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006670:	ffffb097          	auipc	ra,0xffffb
    80006674:	fb0080e7          	jalr	-80(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006678:	00700793          	li	a5,7
    8000667c:	1097e263          	bltu	a5,s1,80006780 <_Z8userMainv+0x140>
    80006680:	00249493          	slli	s1,s1,0x2
    80006684:	00004717          	auipc	a4,0x4
    80006688:	f1c70713          	addi	a4,a4,-228 # 8000a5a0 <CONSOLE_STATUS+0x590>
    8000668c:	00e484b3          	add	s1,s1,a4
    80006690:	0004a783          	lw	a5,0(s1)
    80006694:	00e787b3          	add	a5,a5,a4
    80006698:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000669c:	fffff097          	auipc	ra,0xfffff
    800066a0:	f54080e7          	jalr	-172(ra) # 800055f0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800066a4:	00004517          	auipc	a0,0x4
    800066a8:	cc450513          	addi	a0,a0,-828 # 8000a368 <CONSOLE_STATUS+0x358>
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	8cc080e7          	jalr	-1844(ra) # 80005f78 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800066b4:	01813083          	ld	ra,24(sp)
    800066b8:	01013403          	ld	s0,16(sp)
    800066bc:	00813483          	ld	s1,8(sp)
    800066c0:	02010113          	addi	sp,sp,32
    800066c4:	00008067          	ret
            Threads_CPP_API_test();
    800066c8:	ffffe097          	auipc	ra,0xffffe
    800066cc:	e08080e7          	jalr	-504(ra) # 800044d0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800066d0:	00004517          	auipc	a0,0x4
    800066d4:	cd850513          	addi	a0,a0,-808 # 8000a3a8 <CONSOLE_STATUS+0x398>
    800066d8:	00000097          	auipc	ra,0x0
    800066dc:	8a0080e7          	jalr	-1888(ra) # 80005f78 <_Z11printStringPKc>
            break;
    800066e0:	fd5ff06f          	j	800066b4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800066e4:	ffffd097          	auipc	ra,0xffffd
    800066e8:	640080e7          	jalr	1600(ra) # 80003d24 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800066ec:	00004517          	auipc	a0,0x4
    800066f0:	cfc50513          	addi	a0,a0,-772 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    800066f4:	00000097          	auipc	ra,0x0
    800066f8:	884080e7          	jalr	-1916(ra) # 80005f78 <_Z11printStringPKc>
            break;
    800066fc:	fb9ff06f          	j	800066b4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	234080e7          	jalr	564(ra) # 80005934 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006708:	00004517          	auipc	a0,0x4
    8000670c:	d3050513          	addi	a0,a0,-720 # 8000a438 <CONSOLE_STATUS+0x428>
    80006710:	00000097          	auipc	ra,0x0
    80006714:	868080e7          	jalr	-1944(ra) # 80005f78 <_Z11printStringPKc>
            break;
    80006718:	f9dff06f          	j	800066b4 <_Z8userMainv+0x74>
            testSleeping();
    8000671c:	00000097          	auipc	ra,0x0
    80006720:	11c080e7          	jalr	284(ra) # 80006838 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006724:	00004517          	auipc	a0,0x4
    80006728:	d6c50513          	addi	a0,a0,-660 # 8000a490 <CONSOLE_STATUS+0x480>
    8000672c:	00000097          	auipc	ra,0x0
    80006730:	84c080e7          	jalr	-1972(ra) # 80005f78 <_Z11printStringPKc>
            break;
    80006734:	f81ff06f          	j	800066b4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006738:	ffffe097          	auipc	ra,0xffffe
    8000673c:	258080e7          	jalr	600(ra) # 80004990 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006740:	00004517          	auipc	a0,0x4
    80006744:	d8050513          	addi	a0,a0,-640 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006748:	00000097          	auipc	ra,0x0
    8000674c:	830080e7          	jalr	-2000(ra) # 80005f78 <_Z11printStringPKc>
            break;
    80006750:	f65ff06f          	j	800066b4 <_Z8userMainv+0x74>
            System_Mode_test();
    80006754:	00000097          	auipc	ra,0x0
    80006758:	658080e7          	jalr	1624(ra) # 80006dac <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000675c:	00004517          	auipc	a0,0x4
    80006760:	da450513          	addi	a0,a0,-604 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80006764:	00000097          	auipc	ra,0x0
    80006768:	814080e7          	jalr	-2028(ra) # 80005f78 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000676c:	00004517          	auipc	a0,0x4
    80006770:	db450513          	addi	a0,a0,-588 # 8000a520 <CONSOLE_STATUS+0x510>
    80006774:	00000097          	auipc	ra,0x0
    80006778:	804080e7          	jalr	-2044(ra) # 80005f78 <_Z11printStringPKc>
            break;
    8000677c:	f39ff06f          	j	800066b4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006780:	00004517          	auipc	a0,0x4
    80006784:	df850513          	addi	a0,a0,-520 # 8000a578 <CONSOLE_STATUS+0x568>
    80006788:	fffff097          	auipc	ra,0xfffff
    8000678c:	7f0080e7          	jalr	2032(ra) # 80005f78 <_Z11printStringPKc>
    80006790:	f25ff06f          	j	800066b4 <_Z8userMainv+0x74>

0000000080006794 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006794:	fe010113          	addi	sp,sp,-32
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	00813823          	sd	s0,16(sp)
    800067a0:	00913423          	sd	s1,8(sp)
    800067a4:	01213023          	sd	s2,0(sp)
    800067a8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800067ac:	00053903          	ld	s2,0(a0)
    int i = 6;
    800067b0:	00600493          	li	s1,6
    while (--i > 0) {
    800067b4:	fff4849b          	addiw	s1,s1,-1
    800067b8:	04905463          	blez	s1,80006800 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800067bc:	00004517          	auipc	a0,0x4
    800067c0:	e0450513          	addi	a0,a0,-508 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	7b4080e7          	jalr	1972(ra) # 80005f78 <_Z11printStringPKc>
        printInt(sleep_time);
    800067cc:	00000613          	li	a2,0
    800067d0:	00a00593          	li	a1,10
    800067d4:	0009051b          	sext.w	a0,s2
    800067d8:	00000097          	auipc	ra,0x0
    800067dc:	950080e7          	jalr	-1712(ra) # 80006128 <_Z8printIntiii>
        printString(" !\n");
    800067e0:	00004517          	auipc	a0,0x4
    800067e4:	de850513          	addi	a0,a0,-536 # 8000a5c8 <CONSOLE_STATUS+0x5b8>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	790080e7          	jalr	1936(ra) # 80005f78 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800067f0:	00090513          	mv	a0,s2
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	de0080e7          	jalr	-544(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800067fc:	fb9ff06f          	j	800067b4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006800:	00a00793          	li	a5,10
    80006804:	02f95933          	divu	s2,s2,a5
    80006808:	fff90913          	addi	s2,s2,-1
    8000680c:	00007797          	auipc	a5,0x7
    80006810:	86c78793          	addi	a5,a5,-1940 # 8000d078 <_ZL8finished>
    80006814:	01278933          	add	s2,a5,s2
    80006818:	00100793          	li	a5,1
    8000681c:	00f90023          	sb	a5,0(s2)
}
    80006820:	01813083          	ld	ra,24(sp)
    80006824:	01013403          	ld	s0,16(sp)
    80006828:	00813483          	ld	s1,8(sp)
    8000682c:	00013903          	ld	s2,0(sp)
    80006830:	02010113          	addi	sp,sp,32
    80006834:	00008067          	ret

0000000080006838 <_Z12testSleepingv>:

void testSleeping() {
    80006838:	fc010113          	addi	sp,sp,-64
    8000683c:	02113c23          	sd	ra,56(sp)
    80006840:	02813823          	sd	s0,48(sp)
    80006844:	02913423          	sd	s1,40(sp)
    80006848:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000684c:	00a00793          	li	a5,10
    80006850:	fcf43823          	sd	a5,-48(s0)
    80006854:	01400793          	li	a5,20
    80006858:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000685c:	00000493          	li	s1,0
    80006860:	02c0006f          	j	8000688c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006864:	00349793          	slli	a5,s1,0x3
    80006868:	fd040613          	addi	a2,s0,-48
    8000686c:	00f60633          	add	a2,a2,a5
    80006870:	00000597          	auipc	a1,0x0
    80006874:	f2458593          	addi	a1,a1,-220 # 80006794 <_ZL9sleepyRunPv>
    80006878:	fc040513          	addi	a0,s0,-64
    8000687c:	00f50533          	add	a0,a0,a5
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	a78080e7          	jalr	-1416(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006888:	0014849b          	addiw	s1,s1,1
    8000688c:	00100793          	li	a5,1
    80006890:	fc97dae3          	bge	a5,s1,80006864 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006894:	00006797          	auipc	a5,0x6
    80006898:	7e47c783          	lbu	a5,2020(a5) # 8000d078 <_ZL8finished>
    8000689c:	fe078ce3          	beqz	a5,80006894 <_Z12testSleepingv+0x5c>
    800068a0:	00006797          	auipc	a5,0x6
    800068a4:	7d97c783          	lbu	a5,2009(a5) # 8000d079 <_ZL8finished+0x1>
    800068a8:	fe0786e3          	beqz	a5,80006894 <_Z12testSleepingv+0x5c>
}
    800068ac:	03813083          	ld	ra,56(sp)
    800068b0:	03013403          	ld	s0,48(sp)
    800068b4:	02813483          	ld	s1,40(sp)
    800068b8:	04010113          	addi	sp,sp,64
    800068bc:	00008067          	ret

00000000800068c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800068c0:	fe010113          	addi	sp,sp,-32
    800068c4:	00113c23          	sd	ra,24(sp)
    800068c8:	00813823          	sd	s0,16(sp)
    800068cc:	00913423          	sd	s1,8(sp)
    800068d0:	01213023          	sd	s2,0(sp)
    800068d4:	02010413          	addi	s0,sp,32
    800068d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800068dc:	00100793          	li	a5,1
    800068e0:	02a7f863          	bgeu	a5,a0,80006910 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800068e4:	00a00793          	li	a5,10
    800068e8:	02f577b3          	remu	a5,a0,a5
    800068ec:	02078e63          	beqz	a5,80006928 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800068f0:	fff48513          	addi	a0,s1,-1
    800068f4:	00000097          	auipc	ra,0x0
    800068f8:	fcc080e7          	jalr	-52(ra) # 800068c0 <_ZL9fibonaccim>
    800068fc:	00050913          	mv	s2,a0
    80006900:	ffe48513          	addi	a0,s1,-2
    80006904:	00000097          	auipc	ra,0x0
    80006908:	fbc080e7          	jalr	-68(ra) # 800068c0 <_ZL9fibonaccim>
    8000690c:	00a90533          	add	a0,s2,a0
}
    80006910:	01813083          	ld	ra,24(sp)
    80006914:	01013403          	ld	s0,16(sp)
    80006918:	00813483          	ld	s1,8(sp)
    8000691c:	00013903          	ld	s2,0(sp)
    80006920:	02010113          	addi	sp,sp,32
    80006924:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	aa4080e7          	jalr	-1372(ra) # 800013cc <_Z15thread_dispatchv>
    80006930:	fc1ff06f          	j	800068f0 <_ZL9fibonaccim+0x30>

0000000080006934 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006934:	fe010113          	addi	sp,sp,-32
    80006938:	00113c23          	sd	ra,24(sp)
    8000693c:	00813823          	sd	s0,16(sp)
    80006940:	00913423          	sd	s1,8(sp)
    80006944:	01213023          	sd	s2,0(sp)
    80006948:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000694c:	00a00493          	li	s1,10
    80006950:	0400006f          	j	80006990 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006954:	00004517          	auipc	a0,0x4
    80006958:	94450513          	addi	a0,a0,-1724 # 8000a298 <CONSOLE_STATUS+0x288>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	61c080e7          	jalr	1564(ra) # 80005f78 <_Z11printStringPKc>
    80006964:	00000613          	li	a2,0
    80006968:	00a00593          	li	a1,10
    8000696c:	00048513          	mv	a0,s1
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	7b8080e7          	jalr	1976(ra) # 80006128 <_Z8printIntiii>
    80006978:	00004517          	auipc	a0,0x4
    8000697c:	b1050513          	addi	a0,a0,-1264 # 8000a488 <CONSOLE_STATUS+0x478>
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	5f8080e7          	jalr	1528(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006988:	0014849b          	addiw	s1,s1,1
    8000698c:	0ff4f493          	andi	s1,s1,255
    80006990:	00c00793          	li	a5,12
    80006994:	fc97f0e3          	bgeu	a5,s1,80006954 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006998:	00004517          	auipc	a0,0x4
    8000699c:	90850513          	addi	a0,a0,-1784 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800069a0:	fffff097          	auipc	ra,0xfffff
    800069a4:	5d8080e7          	jalr	1496(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800069a8:	00500313          	li	t1,5
    thread_dispatch();
    800069ac:	ffffb097          	auipc	ra,0xffffb
    800069b0:	a20080e7          	jalr	-1504(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800069b4:	01000513          	li	a0,16
    800069b8:	00000097          	auipc	ra,0x0
    800069bc:	f08080e7          	jalr	-248(ra) # 800068c0 <_ZL9fibonaccim>
    800069c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800069c4:	00004517          	auipc	a0,0x4
    800069c8:	8ec50513          	addi	a0,a0,-1812 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	5ac080e7          	jalr	1452(ra) # 80005f78 <_Z11printStringPKc>
    800069d4:	00000613          	li	a2,0
    800069d8:	00a00593          	li	a1,10
    800069dc:	0009051b          	sext.w	a0,s2
    800069e0:	fffff097          	auipc	ra,0xfffff
    800069e4:	748080e7          	jalr	1864(ra) # 80006128 <_Z8printIntiii>
    800069e8:	00004517          	auipc	a0,0x4
    800069ec:	aa050513          	addi	a0,a0,-1376 # 8000a488 <CONSOLE_STATUS+0x478>
    800069f0:	fffff097          	auipc	ra,0xfffff
    800069f4:	588080e7          	jalr	1416(ra) # 80005f78 <_Z11printStringPKc>
    800069f8:	0400006f          	j	80006a38 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800069fc:	00004517          	auipc	a0,0x4
    80006a00:	89c50513          	addi	a0,a0,-1892 # 8000a298 <CONSOLE_STATUS+0x288>
    80006a04:	fffff097          	auipc	ra,0xfffff
    80006a08:	574080e7          	jalr	1396(ra) # 80005f78 <_Z11printStringPKc>
    80006a0c:	00000613          	li	a2,0
    80006a10:	00a00593          	li	a1,10
    80006a14:	00048513          	mv	a0,s1
    80006a18:	fffff097          	auipc	ra,0xfffff
    80006a1c:	710080e7          	jalr	1808(ra) # 80006128 <_Z8printIntiii>
    80006a20:	00004517          	auipc	a0,0x4
    80006a24:	a6850513          	addi	a0,a0,-1432 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a28:	fffff097          	auipc	ra,0xfffff
    80006a2c:	550080e7          	jalr	1360(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006a30:	0014849b          	addiw	s1,s1,1
    80006a34:	0ff4f493          	andi	s1,s1,255
    80006a38:	00f00793          	li	a5,15
    80006a3c:	fc97f0e3          	bgeu	a5,s1,800069fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006a40:	00004517          	auipc	a0,0x4
    80006a44:	88050513          	addi	a0,a0,-1920 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	530080e7          	jalr	1328(ra) # 80005f78 <_Z11printStringPKc>
    finishedD = true;
    80006a50:	00100793          	li	a5,1
    80006a54:	00006717          	auipc	a4,0x6
    80006a58:	62f70323          	sb	a5,1574(a4) # 8000d07a <_ZL9finishedD>
    thread_dispatch();
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	970080e7          	jalr	-1680(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006a64:	01813083          	ld	ra,24(sp)
    80006a68:	01013403          	ld	s0,16(sp)
    80006a6c:	00813483          	ld	s1,8(sp)
    80006a70:	00013903          	ld	s2,0(sp)
    80006a74:	02010113          	addi	sp,sp,32
    80006a78:	00008067          	ret

0000000080006a7c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006a7c:	fe010113          	addi	sp,sp,-32
    80006a80:	00113c23          	sd	ra,24(sp)
    80006a84:	00813823          	sd	s0,16(sp)
    80006a88:	00913423          	sd	s1,8(sp)
    80006a8c:	01213023          	sd	s2,0(sp)
    80006a90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006a94:	00000493          	li	s1,0
    80006a98:	0400006f          	j	80006ad8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	7cc50513          	addi	a0,a0,1996 # 8000a268 <CONSOLE_STATUS+0x258>
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	4d4080e7          	jalr	1236(ra) # 80005f78 <_Z11printStringPKc>
    80006aac:	00000613          	li	a2,0
    80006ab0:	00a00593          	li	a1,10
    80006ab4:	00048513          	mv	a0,s1
    80006ab8:	fffff097          	auipc	ra,0xfffff
    80006abc:	670080e7          	jalr	1648(ra) # 80006128 <_Z8printIntiii>
    80006ac0:	00004517          	auipc	a0,0x4
    80006ac4:	9c850513          	addi	a0,a0,-1592 # 8000a488 <CONSOLE_STATUS+0x478>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	4b0080e7          	jalr	1200(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006ad0:	0014849b          	addiw	s1,s1,1
    80006ad4:	0ff4f493          	andi	s1,s1,255
    80006ad8:	00200793          	li	a5,2
    80006adc:	fc97f0e3          	bgeu	a5,s1,80006a9c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006ae0:	00003517          	auipc	a0,0x3
    80006ae4:	79050513          	addi	a0,a0,1936 # 8000a270 <CONSOLE_STATUS+0x260>
    80006ae8:	fffff097          	auipc	ra,0xfffff
    80006aec:	490080e7          	jalr	1168(ra) # 80005f78 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006af0:	00700313          	li	t1,7
    thread_dispatch();
    80006af4:	ffffb097          	auipc	ra,0xffffb
    80006af8:	8d8080e7          	jalr	-1832(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006afc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006b00:	00003517          	auipc	a0,0x3
    80006b04:	78050513          	addi	a0,a0,1920 # 8000a280 <CONSOLE_STATUS+0x270>
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	470080e7          	jalr	1136(ra) # 80005f78 <_Z11printStringPKc>
    80006b10:	00000613          	li	a2,0
    80006b14:	00a00593          	li	a1,10
    80006b18:	0009051b          	sext.w	a0,s2
    80006b1c:	fffff097          	auipc	ra,0xfffff
    80006b20:	60c080e7          	jalr	1548(ra) # 80006128 <_Z8printIntiii>
    80006b24:	00004517          	auipc	a0,0x4
    80006b28:	96450513          	addi	a0,a0,-1692 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b2c:	fffff097          	auipc	ra,0xfffff
    80006b30:	44c080e7          	jalr	1100(ra) # 80005f78 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006b34:	00c00513          	li	a0,12
    80006b38:	00000097          	auipc	ra,0x0
    80006b3c:	d88080e7          	jalr	-632(ra) # 800068c0 <_ZL9fibonaccim>
    80006b40:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006b44:	00003517          	auipc	a0,0x3
    80006b48:	74450513          	addi	a0,a0,1860 # 8000a288 <CONSOLE_STATUS+0x278>
    80006b4c:	fffff097          	auipc	ra,0xfffff
    80006b50:	42c080e7          	jalr	1068(ra) # 80005f78 <_Z11printStringPKc>
    80006b54:	00000613          	li	a2,0
    80006b58:	00a00593          	li	a1,10
    80006b5c:	0009051b          	sext.w	a0,s2
    80006b60:	fffff097          	auipc	ra,0xfffff
    80006b64:	5c8080e7          	jalr	1480(ra) # 80006128 <_Z8printIntiii>
    80006b68:	00004517          	auipc	a0,0x4
    80006b6c:	92050513          	addi	a0,a0,-1760 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b70:	fffff097          	auipc	ra,0xfffff
    80006b74:	408080e7          	jalr	1032(ra) # 80005f78 <_Z11printStringPKc>
    80006b78:	0400006f          	j	80006bb8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006b7c:	00003517          	auipc	a0,0x3
    80006b80:	6ec50513          	addi	a0,a0,1772 # 8000a268 <CONSOLE_STATUS+0x258>
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	3f4080e7          	jalr	1012(ra) # 80005f78 <_Z11printStringPKc>
    80006b8c:	00000613          	li	a2,0
    80006b90:	00a00593          	li	a1,10
    80006b94:	00048513          	mv	a0,s1
    80006b98:	fffff097          	auipc	ra,0xfffff
    80006b9c:	590080e7          	jalr	1424(ra) # 80006128 <_Z8printIntiii>
    80006ba0:	00004517          	auipc	a0,0x4
    80006ba4:	8e850513          	addi	a0,a0,-1816 # 8000a488 <CONSOLE_STATUS+0x478>
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	3d0080e7          	jalr	976(ra) # 80005f78 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006bb0:	0014849b          	addiw	s1,s1,1
    80006bb4:	0ff4f493          	andi	s1,s1,255
    80006bb8:	00500793          	li	a5,5
    80006bbc:	fc97f0e3          	bgeu	a5,s1,80006b7c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006bc0:	00003517          	auipc	a0,0x3
    80006bc4:	68050513          	addi	a0,a0,1664 # 8000a240 <CONSOLE_STATUS+0x230>
    80006bc8:	fffff097          	auipc	ra,0xfffff
    80006bcc:	3b0080e7          	jalr	944(ra) # 80005f78 <_Z11printStringPKc>
    finishedC = true;
    80006bd0:	00100793          	li	a5,1
    80006bd4:	00006717          	auipc	a4,0x6
    80006bd8:	4af703a3          	sb	a5,1191(a4) # 8000d07b <_ZL9finishedC>
    thread_dispatch();
    80006bdc:	ffffa097          	auipc	ra,0xffffa
    80006be0:	7f0080e7          	jalr	2032(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006be4:	01813083          	ld	ra,24(sp)
    80006be8:	01013403          	ld	s0,16(sp)
    80006bec:	00813483          	ld	s1,8(sp)
    80006bf0:	00013903          	ld	s2,0(sp)
    80006bf4:	02010113          	addi	sp,sp,32
    80006bf8:	00008067          	ret

0000000080006bfc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006bfc:	fe010113          	addi	sp,sp,-32
    80006c00:	00113c23          	sd	ra,24(sp)
    80006c04:	00813823          	sd	s0,16(sp)
    80006c08:	00913423          	sd	s1,8(sp)
    80006c0c:	01213023          	sd	s2,0(sp)
    80006c10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006c14:	00000913          	li	s2,0
    80006c18:	0400006f          	j	80006c58 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006c1c:	ffffa097          	auipc	ra,0xffffa
    80006c20:	7b0080e7          	jalr	1968(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c24:	00148493          	addi	s1,s1,1
    80006c28:	000027b7          	lui	a5,0x2
    80006c2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c30:	0097ee63          	bltu	a5,s1,80006c4c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c34:	00000713          	li	a4,0
    80006c38:	000077b7          	lui	a5,0x7
    80006c3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c40:	fce7eee3          	bltu	a5,a4,80006c1c <_ZL11workerBodyBPv+0x20>
    80006c44:	00170713          	addi	a4,a4,1
    80006c48:	ff1ff06f          	j	80006c38 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006c4c:	00a00793          	li	a5,10
    80006c50:	04f90663          	beq	s2,a5,80006c9c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006c54:	00190913          	addi	s2,s2,1
    80006c58:	00f00793          	li	a5,15
    80006c5c:	0527e463          	bltu	a5,s2,80006ca4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006c60:	00003517          	auipc	a0,0x3
    80006c64:	5f050513          	addi	a0,a0,1520 # 8000a250 <CONSOLE_STATUS+0x240>
    80006c68:	fffff097          	auipc	ra,0xfffff
    80006c6c:	310080e7          	jalr	784(ra) # 80005f78 <_Z11printStringPKc>
    80006c70:	00000613          	li	a2,0
    80006c74:	00a00593          	li	a1,10
    80006c78:	0009051b          	sext.w	a0,s2
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	4ac080e7          	jalr	1196(ra) # 80006128 <_Z8printIntiii>
    80006c84:	00004517          	auipc	a0,0x4
    80006c88:	80450513          	addi	a0,a0,-2044 # 8000a488 <CONSOLE_STATUS+0x478>
    80006c8c:	fffff097          	auipc	ra,0xfffff
    80006c90:	2ec080e7          	jalr	748(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c94:	00000493          	li	s1,0
    80006c98:	f91ff06f          	j	80006c28 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006c9c:	14102ff3          	csrr	t6,sepc
    80006ca0:	fb5ff06f          	j	80006c54 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006ca4:	00003517          	auipc	a0,0x3
    80006ca8:	5b450513          	addi	a0,a0,1460 # 8000a258 <CONSOLE_STATUS+0x248>
    80006cac:	fffff097          	auipc	ra,0xfffff
    80006cb0:	2cc080e7          	jalr	716(ra) # 80005f78 <_Z11printStringPKc>
    finishedB = true;
    80006cb4:	00100793          	li	a5,1
    80006cb8:	00006717          	auipc	a4,0x6
    80006cbc:	3cf70223          	sb	a5,964(a4) # 8000d07c <_ZL9finishedB>
    thread_dispatch();
    80006cc0:	ffffa097          	auipc	ra,0xffffa
    80006cc4:	70c080e7          	jalr	1804(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006cc8:	01813083          	ld	ra,24(sp)
    80006ccc:	01013403          	ld	s0,16(sp)
    80006cd0:	00813483          	ld	s1,8(sp)
    80006cd4:	00013903          	ld	s2,0(sp)
    80006cd8:	02010113          	addi	sp,sp,32
    80006cdc:	00008067          	ret

0000000080006ce0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006ce0:	fe010113          	addi	sp,sp,-32
    80006ce4:	00113c23          	sd	ra,24(sp)
    80006ce8:	00813823          	sd	s0,16(sp)
    80006cec:	00913423          	sd	s1,8(sp)
    80006cf0:	01213023          	sd	s2,0(sp)
    80006cf4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006cf8:	00000913          	li	s2,0
    80006cfc:	0380006f          	j	80006d34 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006d00:	ffffa097          	auipc	ra,0xffffa
    80006d04:	6cc080e7          	jalr	1740(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d08:	00148493          	addi	s1,s1,1
    80006d0c:	000027b7          	lui	a5,0x2
    80006d10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d14:	0097ee63          	bltu	a5,s1,80006d30 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d18:	00000713          	li	a4,0
    80006d1c:	000077b7          	lui	a5,0x7
    80006d20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d24:	fce7eee3          	bltu	a5,a4,80006d00 <_ZL11workerBodyAPv+0x20>
    80006d28:	00170713          	addi	a4,a4,1
    80006d2c:	ff1ff06f          	j	80006d1c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006d30:	00190913          	addi	s2,s2,1
    80006d34:	00900793          	li	a5,9
    80006d38:	0527e063          	bltu	a5,s2,80006d78 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006d3c:	00003517          	auipc	a0,0x3
    80006d40:	4fc50513          	addi	a0,a0,1276 # 8000a238 <CONSOLE_STATUS+0x228>
    80006d44:	fffff097          	auipc	ra,0xfffff
    80006d48:	234080e7          	jalr	564(ra) # 80005f78 <_Z11printStringPKc>
    80006d4c:	00000613          	li	a2,0
    80006d50:	00a00593          	li	a1,10
    80006d54:	0009051b          	sext.w	a0,s2
    80006d58:	fffff097          	auipc	ra,0xfffff
    80006d5c:	3d0080e7          	jalr	976(ra) # 80006128 <_Z8printIntiii>
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	72850513          	addi	a0,a0,1832 # 8000a488 <CONSOLE_STATUS+0x478>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	210080e7          	jalr	528(ra) # 80005f78 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006d70:	00000493          	li	s1,0
    80006d74:	f99ff06f          	j	80006d0c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006d78:	00003517          	auipc	a0,0x3
    80006d7c:	4c850513          	addi	a0,a0,1224 # 8000a240 <CONSOLE_STATUS+0x230>
    80006d80:	fffff097          	auipc	ra,0xfffff
    80006d84:	1f8080e7          	jalr	504(ra) # 80005f78 <_Z11printStringPKc>
    finishedA = true;
    80006d88:	00100793          	li	a5,1
    80006d8c:	00006717          	auipc	a4,0x6
    80006d90:	2ef708a3          	sb	a5,753(a4) # 8000d07d <_ZL9finishedA>
}
    80006d94:	01813083          	ld	ra,24(sp)
    80006d98:	01013403          	ld	s0,16(sp)
    80006d9c:	00813483          	ld	s1,8(sp)
    80006da0:	00013903          	ld	s2,0(sp)
    80006da4:	02010113          	addi	sp,sp,32
    80006da8:	00008067          	ret

0000000080006dac <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006dac:	fd010113          	addi	sp,sp,-48
    80006db0:	02113423          	sd	ra,40(sp)
    80006db4:	02813023          	sd	s0,32(sp)
    80006db8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006dbc:	00000613          	li	a2,0
    80006dc0:	00000597          	auipc	a1,0x0
    80006dc4:	f2058593          	addi	a1,a1,-224 # 80006ce0 <_ZL11workerBodyAPv>
    80006dc8:	fd040513          	addi	a0,s0,-48
    80006dcc:	ffffa097          	auipc	ra,0xffffa
    80006dd0:	52c080e7          	jalr	1324(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	4fc50513          	addi	a0,a0,1276 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	19c080e7          	jalr	412(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006de4:	00000613          	li	a2,0
    80006de8:	00000597          	auipc	a1,0x0
    80006dec:	e1458593          	addi	a1,a1,-492 # 80006bfc <_ZL11workerBodyBPv>
    80006df0:	fd840513          	addi	a0,s0,-40
    80006df4:	ffffa097          	auipc	ra,0xffffa
    80006df8:	504080e7          	jalr	1284(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006dfc:	00003517          	auipc	a0,0x3
    80006e00:	4ec50513          	addi	a0,a0,1260 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    80006e04:	fffff097          	auipc	ra,0xfffff
    80006e08:	174080e7          	jalr	372(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006e0c:	00000613          	li	a2,0
    80006e10:	00000597          	auipc	a1,0x0
    80006e14:	c6c58593          	addi	a1,a1,-916 # 80006a7c <_ZL11workerBodyCPv>
    80006e18:	fe040513          	addi	a0,s0,-32
    80006e1c:	ffffa097          	auipc	ra,0xffffa
    80006e20:	4dc080e7          	jalr	1244(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006e24:	00003517          	auipc	a0,0x3
    80006e28:	4dc50513          	addi	a0,a0,1244 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80006e2c:	fffff097          	auipc	ra,0xfffff
    80006e30:	14c080e7          	jalr	332(ra) # 80005f78 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006e34:	00000613          	li	a2,0
    80006e38:	00000597          	auipc	a1,0x0
    80006e3c:	afc58593          	addi	a1,a1,-1284 # 80006934 <_ZL11workerBodyDPv>
    80006e40:	fe840513          	addi	a0,s0,-24
    80006e44:	ffffa097          	auipc	ra,0xffffa
    80006e48:	4b4080e7          	jalr	1204(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006e4c:	00003517          	auipc	a0,0x3
    80006e50:	4cc50513          	addi	a0,a0,1228 # 8000a318 <CONSOLE_STATUS+0x308>
    80006e54:	fffff097          	auipc	ra,0xfffff
    80006e58:	124080e7          	jalr	292(ra) # 80005f78 <_Z11printStringPKc>
    80006e5c:	00c0006f          	j	80006e68 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006e60:	ffffa097          	auipc	ra,0xffffa
    80006e64:	56c080e7          	jalr	1388(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006e68:	00006797          	auipc	a5,0x6
    80006e6c:	2157c783          	lbu	a5,533(a5) # 8000d07d <_ZL9finishedA>
    80006e70:	fe0788e3          	beqz	a5,80006e60 <_Z16System_Mode_testv+0xb4>
    80006e74:	00006797          	auipc	a5,0x6
    80006e78:	2087c783          	lbu	a5,520(a5) # 8000d07c <_ZL9finishedB>
    80006e7c:	fe0782e3          	beqz	a5,80006e60 <_Z16System_Mode_testv+0xb4>
    80006e80:	00006797          	auipc	a5,0x6
    80006e84:	1fb7c783          	lbu	a5,507(a5) # 8000d07b <_ZL9finishedC>
    80006e88:	fc078ce3          	beqz	a5,80006e60 <_Z16System_Mode_testv+0xb4>
    80006e8c:	00006797          	auipc	a5,0x6
    80006e90:	1ee7c783          	lbu	a5,494(a5) # 8000d07a <_ZL9finishedD>
    80006e94:	fc0786e3          	beqz	a5,80006e60 <_Z16System_Mode_testv+0xb4>
    }

}
    80006e98:	02813083          	ld	ra,40(sp)
    80006e9c:	02013403          	ld	s0,32(sp)
    80006ea0:	03010113          	addi	sp,sp,48
    80006ea4:	00008067          	ret

0000000080006ea8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006ea8:	fe010113          	addi	sp,sp,-32
    80006eac:	00113c23          	sd	ra,24(sp)
    80006eb0:	00813823          	sd	s0,16(sp)
    80006eb4:	00913423          	sd	s1,8(sp)
    80006eb8:	01213023          	sd	s2,0(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    80006ec4:	00058913          	mv	s2,a1
    80006ec8:	0015879b          	addiw	a5,a1,1
    80006ecc:	0007851b          	sext.w	a0,a5
    80006ed0:	00f4a023          	sw	a5,0(s1)
    80006ed4:	0004a823          	sw	zero,16(s1)
    80006ed8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006edc:	00251513          	slli	a0,a0,0x2
    80006ee0:	ffffa097          	auipc	ra,0xffffa
    80006ee4:	378080e7          	jalr	888(ra) # 80001258 <_Z9mem_allocm>
    80006ee8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006eec:	00000593          	li	a1,0
    80006ef0:	02048513          	addi	a0,s1,32
    80006ef4:	ffffa097          	auipc	ra,0xffffa
    80006ef8:	514080e7          	jalr	1300(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006efc:	00090593          	mv	a1,s2
    80006f00:	01848513          	addi	a0,s1,24
    80006f04:	ffffa097          	auipc	ra,0xffffa
    80006f08:	504080e7          	jalr	1284(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006f0c:	00100593          	li	a1,1
    80006f10:	02848513          	addi	a0,s1,40
    80006f14:	ffffa097          	auipc	ra,0xffffa
    80006f18:	4f4080e7          	jalr	1268(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006f1c:	00100593          	li	a1,1
    80006f20:	03048513          	addi	a0,s1,48
    80006f24:	ffffa097          	auipc	ra,0xffffa
    80006f28:	4e4080e7          	jalr	1252(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80006f2c:	01813083          	ld	ra,24(sp)
    80006f30:	01013403          	ld	s0,16(sp)
    80006f34:	00813483          	ld	s1,8(sp)
    80006f38:	00013903          	ld	s2,0(sp)
    80006f3c:	02010113          	addi	sp,sp,32
    80006f40:	00008067          	ret

0000000080006f44 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006f44:	fe010113          	addi	sp,sp,-32
    80006f48:	00113c23          	sd	ra,24(sp)
    80006f4c:	00813823          	sd	s0,16(sp)
    80006f50:	00913423          	sd	s1,8(sp)
    80006f54:	01213023          	sd	s2,0(sp)
    80006f58:	02010413          	addi	s0,sp,32
    80006f5c:	00050493          	mv	s1,a0
    80006f60:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006f64:	01853503          	ld	a0,24(a0)
    80006f68:	ffffa097          	auipc	ra,0xffffa
    80006f6c:	53c080e7          	jalr	1340(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80006f70:	0304b503          	ld	a0,48(s1)
    80006f74:	ffffa097          	auipc	ra,0xffffa
    80006f78:	530080e7          	jalr	1328(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80006f7c:	0084b783          	ld	a5,8(s1)
    80006f80:	0144a703          	lw	a4,20(s1)
    80006f84:	00271713          	slli	a4,a4,0x2
    80006f88:	00e787b3          	add	a5,a5,a4
    80006f8c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006f90:	0144a783          	lw	a5,20(s1)
    80006f94:	0017879b          	addiw	a5,a5,1
    80006f98:	0004a703          	lw	a4,0(s1)
    80006f9c:	02e7e7bb          	remw	a5,a5,a4
    80006fa0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006fa4:	0304b503          	ld	a0,48(s1)
    80006fa8:	ffffa097          	auipc	ra,0xffffa
    80006fac:	548080e7          	jalr	1352(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80006fb0:	0204b503          	ld	a0,32(s1)
    80006fb4:	ffffa097          	auipc	ra,0xffffa
    80006fb8:	53c080e7          	jalr	1340(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80006fbc:	01813083          	ld	ra,24(sp)
    80006fc0:	01013403          	ld	s0,16(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	00013903          	ld	s2,0(sp)
    80006fcc:	02010113          	addi	sp,sp,32
    80006fd0:	00008067          	ret

0000000080006fd4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006fd4:	fe010113          	addi	sp,sp,-32
    80006fd8:	00113c23          	sd	ra,24(sp)
    80006fdc:	00813823          	sd	s0,16(sp)
    80006fe0:	00913423          	sd	s1,8(sp)
    80006fe4:	01213023          	sd	s2,0(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ff0:	02053503          	ld	a0,32(a0)
    80006ff4:	ffffa097          	auipc	ra,0xffffa
    80006ff8:	4b0080e7          	jalr	1200(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006ffc:	0284b503          	ld	a0,40(s1)
    80007000:	ffffa097          	auipc	ra,0xffffa
    80007004:	4a4080e7          	jalr	1188(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80007008:	0084b703          	ld	a4,8(s1)
    8000700c:	0104a783          	lw	a5,16(s1)
    80007010:	00279693          	slli	a3,a5,0x2
    80007014:	00d70733          	add	a4,a4,a3
    80007018:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000701c:	0017879b          	addiw	a5,a5,1
    80007020:	0004a703          	lw	a4,0(s1)
    80007024:	02e7e7bb          	remw	a5,a5,a4
    80007028:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000702c:	0284b503          	ld	a0,40(s1)
    80007030:	ffffa097          	auipc	ra,0xffffa
    80007034:	4c0080e7          	jalr	1216(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80007038:	0184b503          	ld	a0,24(s1)
    8000703c:	ffffa097          	auipc	ra,0xffffa
    80007040:	4b4080e7          	jalr	1204(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80007044:	00090513          	mv	a0,s2
    80007048:	01813083          	ld	ra,24(sp)
    8000704c:	01013403          	ld	s0,16(sp)
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	00013903          	ld	s2,0(sp)
    80007058:	02010113          	addi	sp,sp,32
    8000705c:	00008067          	ret

0000000080007060 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007060:	fe010113          	addi	sp,sp,-32
    80007064:	00113c23          	sd	ra,24(sp)
    80007068:	00813823          	sd	s0,16(sp)
    8000706c:	00913423          	sd	s1,8(sp)
    80007070:	01213023          	sd	s2,0(sp)
    80007074:	02010413          	addi	s0,sp,32
    80007078:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000707c:	02853503          	ld	a0,40(a0)
    80007080:	ffffa097          	auipc	ra,0xffffa
    80007084:	424080e7          	jalr	1060(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80007088:	0304b503          	ld	a0,48(s1)
    8000708c:	ffffa097          	auipc	ra,0xffffa
    80007090:	418080e7          	jalr	1048(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80007094:	0144a783          	lw	a5,20(s1)
    80007098:	0104a903          	lw	s2,16(s1)
    8000709c:	0327ce63          	blt	a5,s2,800070d8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800070a0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800070a4:	0304b503          	ld	a0,48(s1)
    800070a8:	ffffa097          	auipc	ra,0xffffa
    800070ac:	448080e7          	jalr	1096(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800070b0:	0284b503          	ld	a0,40(s1)
    800070b4:	ffffa097          	auipc	ra,0xffffa
    800070b8:	43c080e7          	jalr	1084(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800070bc:	00090513          	mv	a0,s2
    800070c0:	01813083          	ld	ra,24(sp)
    800070c4:	01013403          	ld	s0,16(sp)
    800070c8:	00813483          	ld	s1,8(sp)
    800070cc:	00013903          	ld	s2,0(sp)
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret
        ret = cap - head + tail;
    800070d8:	0004a703          	lw	a4,0(s1)
    800070dc:	4127093b          	subw	s2,a4,s2
    800070e0:	00f9093b          	addw	s2,s2,a5
    800070e4:	fc1ff06f          	j	800070a4 <_ZN6Buffer6getCntEv+0x44>

00000000800070e8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800070e8:	fe010113          	addi	sp,sp,-32
    800070ec:	00113c23          	sd	ra,24(sp)
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00913423          	sd	s1,8(sp)
    800070f8:	02010413          	addi	s0,sp,32
    800070fc:	00050493          	mv	s1,a0
    putc('\n');
    80007100:	00a00513          	li	a0,10
    80007104:	ffffa097          	auipc	ra,0xffffa
    80007108:	568080e7          	jalr	1384(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000710c:	00003517          	auipc	a0,0x3
    80007110:	22450513          	addi	a0,a0,548 # 8000a330 <CONSOLE_STATUS+0x320>
    80007114:	fffff097          	auipc	ra,0xfffff
    80007118:	e64080e7          	jalr	-412(ra) # 80005f78 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000711c:	00048513          	mv	a0,s1
    80007120:	00000097          	auipc	ra,0x0
    80007124:	f40080e7          	jalr	-192(ra) # 80007060 <_ZN6Buffer6getCntEv>
    80007128:	02a05c63          	blez	a0,80007160 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000712c:	0084b783          	ld	a5,8(s1)
    80007130:	0104a703          	lw	a4,16(s1)
    80007134:	00271713          	slli	a4,a4,0x2
    80007138:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000713c:	0007c503          	lbu	a0,0(a5)
    80007140:	ffffa097          	auipc	ra,0xffffa
    80007144:	52c080e7          	jalr	1324(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80007148:	0104a783          	lw	a5,16(s1)
    8000714c:	0017879b          	addiw	a5,a5,1
    80007150:	0004a703          	lw	a4,0(s1)
    80007154:	02e7e7bb          	remw	a5,a5,a4
    80007158:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000715c:	fc1ff06f          	j	8000711c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007160:	02100513          	li	a0,33
    80007164:	ffffa097          	auipc	ra,0xffffa
    80007168:	508080e7          	jalr	1288(ra) # 8000166c <_Z4putcc>
    putc('\n');
    8000716c:	00a00513          	li	a0,10
    80007170:	ffffa097          	auipc	ra,0xffffa
    80007174:	4fc080e7          	jalr	1276(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80007178:	0084b503          	ld	a0,8(s1)
    8000717c:	ffffa097          	auipc	ra,0xffffa
    80007180:	130080e7          	jalr	304(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007184:	0204b503          	ld	a0,32(s1)
    80007188:	ffffa097          	auipc	ra,0xffffa
    8000718c:	2d0080e7          	jalr	720(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80007190:	0184b503          	ld	a0,24(s1)
    80007194:	ffffa097          	auipc	ra,0xffffa
    80007198:	2c4080e7          	jalr	708(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    8000719c:	0304b503          	ld	a0,48(s1)
    800071a0:	ffffa097          	auipc	ra,0xffffa
    800071a4:	2b8080e7          	jalr	696(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800071a8:	0284b503          	ld	a0,40(s1)
    800071ac:	ffffa097          	auipc	ra,0xffffa
    800071b0:	2ac080e7          	jalr	684(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800071b4:	01813083          	ld	ra,24(sp)
    800071b8:	01013403          	ld	s0,16(sp)
    800071bc:	00813483          	ld	s1,8(sp)
    800071c0:	02010113          	addi	sp,sp,32
    800071c4:	00008067          	ret

00000000800071c8 <start>:
    800071c8:	ff010113          	addi	sp,sp,-16
    800071cc:	00813423          	sd	s0,8(sp)
    800071d0:	01010413          	addi	s0,sp,16
    800071d4:	300027f3          	csrr	a5,mstatus
    800071d8:	ffffe737          	lui	a4,0xffffe
    800071dc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff051f>
    800071e0:	00e7f7b3          	and	a5,a5,a4
    800071e4:	00001737          	lui	a4,0x1
    800071e8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800071ec:	00e7e7b3          	or	a5,a5,a4
    800071f0:	30079073          	csrw	mstatus,a5
    800071f4:	00000797          	auipc	a5,0x0
    800071f8:	16078793          	addi	a5,a5,352 # 80007354 <system_main>
    800071fc:	34179073          	csrw	mepc,a5
    80007200:	00000793          	li	a5,0
    80007204:	18079073          	csrw	satp,a5
    80007208:	000107b7          	lui	a5,0x10
    8000720c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007210:	30279073          	csrw	medeleg,a5
    80007214:	30379073          	csrw	mideleg,a5
    80007218:	104027f3          	csrr	a5,sie
    8000721c:	2227e793          	ori	a5,a5,546
    80007220:	10479073          	csrw	sie,a5
    80007224:	fff00793          	li	a5,-1
    80007228:	00a7d793          	srli	a5,a5,0xa
    8000722c:	3b079073          	csrw	pmpaddr0,a5
    80007230:	00f00793          	li	a5,15
    80007234:	3a079073          	csrw	pmpcfg0,a5
    80007238:	f14027f3          	csrr	a5,mhartid
    8000723c:	0200c737          	lui	a4,0x200c
    80007240:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007244:	0007869b          	sext.w	a3,a5
    80007248:	00269713          	slli	a4,a3,0x2
    8000724c:	000f4637          	lui	a2,0xf4
    80007250:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007254:	00d70733          	add	a4,a4,a3
    80007258:	0037979b          	slliw	a5,a5,0x3
    8000725c:	020046b7          	lui	a3,0x2004
    80007260:	00d787b3          	add	a5,a5,a3
    80007264:	00c585b3          	add	a1,a1,a2
    80007268:	00371693          	slli	a3,a4,0x3
    8000726c:	00006717          	auipc	a4,0x6
    80007270:	e1470713          	addi	a4,a4,-492 # 8000d080 <timer_scratch>
    80007274:	00b7b023          	sd	a1,0(a5)
    80007278:	00d70733          	add	a4,a4,a3
    8000727c:	00f73c23          	sd	a5,24(a4)
    80007280:	02c73023          	sd	a2,32(a4)
    80007284:	34071073          	csrw	mscratch,a4
    80007288:	00000797          	auipc	a5,0x0
    8000728c:	6e878793          	addi	a5,a5,1768 # 80007970 <timervec>
    80007290:	30579073          	csrw	mtvec,a5
    80007294:	300027f3          	csrr	a5,mstatus
    80007298:	0087e793          	ori	a5,a5,8
    8000729c:	30079073          	csrw	mstatus,a5
    800072a0:	304027f3          	csrr	a5,mie
    800072a4:	0807e793          	ori	a5,a5,128
    800072a8:	30479073          	csrw	mie,a5
    800072ac:	f14027f3          	csrr	a5,mhartid
    800072b0:	0007879b          	sext.w	a5,a5
    800072b4:	00078213          	mv	tp,a5
    800072b8:	30200073          	mret
    800072bc:	00813403          	ld	s0,8(sp)
    800072c0:	01010113          	addi	sp,sp,16
    800072c4:	00008067          	ret

00000000800072c8 <timerinit>:
    800072c8:	ff010113          	addi	sp,sp,-16
    800072cc:	00813423          	sd	s0,8(sp)
    800072d0:	01010413          	addi	s0,sp,16
    800072d4:	f14027f3          	csrr	a5,mhartid
    800072d8:	0200c737          	lui	a4,0x200c
    800072dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800072e0:	0007869b          	sext.w	a3,a5
    800072e4:	00269713          	slli	a4,a3,0x2
    800072e8:	000f4637          	lui	a2,0xf4
    800072ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800072f0:	00d70733          	add	a4,a4,a3
    800072f4:	0037979b          	slliw	a5,a5,0x3
    800072f8:	020046b7          	lui	a3,0x2004
    800072fc:	00d787b3          	add	a5,a5,a3
    80007300:	00c585b3          	add	a1,a1,a2
    80007304:	00371693          	slli	a3,a4,0x3
    80007308:	00006717          	auipc	a4,0x6
    8000730c:	d7870713          	addi	a4,a4,-648 # 8000d080 <timer_scratch>
    80007310:	00b7b023          	sd	a1,0(a5)
    80007314:	00d70733          	add	a4,a4,a3
    80007318:	00f73c23          	sd	a5,24(a4)
    8000731c:	02c73023          	sd	a2,32(a4)
    80007320:	34071073          	csrw	mscratch,a4
    80007324:	00000797          	auipc	a5,0x0
    80007328:	64c78793          	addi	a5,a5,1612 # 80007970 <timervec>
    8000732c:	30579073          	csrw	mtvec,a5
    80007330:	300027f3          	csrr	a5,mstatus
    80007334:	0087e793          	ori	a5,a5,8
    80007338:	30079073          	csrw	mstatus,a5
    8000733c:	304027f3          	csrr	a5,mie
    80007340:	0807e793          	ori	a5,a5,128
    80007344:	30479073          	csrw	mie,a5
    80007348:	00813403          	ld	s0,8(sp)
    8000734c:	01010113          	addi	sp,sp,16
    80007350:	00008067          	ret

0000000080007354 <system_main>:
    80007354:	fe010113          	addi	sp,sp,-32
    80007358:	00813823          	sd	s0,16(sp)
    8000735c:	00913423          	sd	s1,8(sp)
    80007360:	00113c23          	sd	ra,24(sp)
    80007364:	02010413          	addi	s0,sp,32
    80007368:	00000097          	auipc	ra,0x0
    8000736c:	0c4080e7          	jalr	196(ra) # 8000742c <cpuid>
    80007370:	00006497          	auipc	s1,0x6
    80007374:	bd048493          	addi	s1,s1,-1072 # 8000cf40 <started>
    80007378:	02050263          	beqz	a0,8000739c <system_main+0x48>
    8000737c:	0004a783          	lw	a5,0(s1)
    80007380:	0007879b          	sext.w	a5,a5
    80007384:	fe078ce3          	beqz	a5,8000737c <system_main+0x28>
    80007388:	0ff0000f          	fence
    8000738c:	00003517          	auipc	a0,0x3
    80007390:	27450513          	addi	a0,a0,628 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80007394:	00001097          	auipc	ra,0x1
    80007398:	a78080e7          	jalr	-1416(ra) # 80007e0c <panic>
    8000739c:	00001097          	auipc	ra,0x1
    800073a0:	9cc080e7          	jalr	-1588(ra) # 80007d68 <consoleinit>
    800073a4:	00001097          	auipc	ra,0x1
    800073a8:	158080e7          	jalr	344(ra) # 800084fc <printfinit>
    800073ac:	00003517          	auipc	a0,0x3
    800073b0:	0dc50513          	addi	a0,a0,220 # 8000a488 <CONSOLE_STATUS+0x478>
    800073b4:	00001097          	auipc	ra,0x1
    800073b8:	ab4080e7          	jalr	-1356(ra) # 80007e68 <__printf>
    800073bc:	00003517          	auipc	a0,0x3
    800073c0:	21450513          	addi	a0,a0,532 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    800073c4:	00001097          	auipc	ra,0x1
    800073c8:	aa4080e7          	jalr	-1372(ra) # 80007e68 <__printf>
    800073cc:	00003517          	auipc	a0,0x3
    800073d0:	0bc50513          	addi	a0,a0,188 # 8000a488 <CONSOLE_STATUS+0x478>
    800073d4:	00001097          	auipc	ra,0x1
    800073d8:	a94080e7          	jalr	-1388(ra) # 80007e68 <__printf>
    800073dc:	00001097          	auipc	ra,0x1
    800073e0:	4ac080e7          	jalr	1196(ra) # 80008888 <kinit>
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	148080e7          	jalr	328(ra) # 8000752c <trapinit>
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	16c080e7          	jalr	364(ra) # 80007558 <trapinithart>
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	5bc080e7          	jalr	1468(ra) # 800079b0 <plicinit>
    800073fc:	00000097          	auipc	ra,0x0
    80007400:	5dc080e7          	jalr	1500(ra) # 800079d8 <plicinithart>
    80007404:	00000097          	auipc	ra,0x0
    80007408:	078080e7          	jalr	120(ra) # 8000747c <userinit>
    8000740c:	0ff0000f          	fence
    80007410:	00100793          	li	a5,1
    80007414:	00003517          	auipc	a0,0x3
    80007418:	1d450513          	addi	a0,a0,468 # 8000a5e8 <CONSOLE_STATUS+0x5d8>
    8000741c:	00f4a023          	sw	a5,0(s1)
    80007420:	00001097          	auipc	ra,0x1
    80007424:	a48080e7          	jalr	-1464(ra) # 80007e68 <__printf>
    80007428:	0000006f          	j	80007428 <system_main+0xd4>

000000008000742c <cpuid>:
    8000742c:	ff010113          	addi	sp,sp,-16
    80007430:	00813423          	sd	s0,8(sp)
    80007434:	01010413          	addi	s0,sp,16
    80007438:	00020513          	mv	a0,tp
    8000743c:	00813403          	ld	s0,8(sp)
    80007440:	0005051b          	sext.w	a0,a0
    80007444:	01010113          	addi	sp,sp,16
    80007448:	00008067          	ret

000000008000744c <mycpu>:
    8000744c:	ff010113          	addi	sp,sp,-16
    80007450:	00813423          	sd	s0,8(sp)
    80007454:	01010413          	addi	s0,sp,16
    80007458:	00020793          	mv	a5,tp
    8000745c:	00813403          	ld	s0,8(sp)
    80007460:	0007879b          	sext.w	a5,a5
    80007464:	00779793          	slli	a5,a5,0x7
    80007468:	00007517          	auipc	a0,0x7
    8000746c:	c4850513          	addi	a0,a0,-952 # 8000e0b0 <cpus>
    80007470:	00f50533          	add	a0,a0,a5
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00008067          	ret

000000008000747c <userinit>:
    8000747c:	ff010113          	addi	sp,sp,-16
    80007480:	00813423          	sd	s0,8(sp)
    80007484:	01010413          	addi	s0,sp,16
    80007488:	00813403          	ld	s0,8(sp)
    8000748c:	01010113          	addi	sp,sp,16
    80007490:	ffffb317          	auipc	t1,0xffffb
    80007494:	8a030067          	jr	-1888(t1) # 80001d30 <main>

0000000080007498 <either_copyout>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813023          	sd	s0,0(sp)
    800074a0:	00113423          	sd	ra,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	02051663          	bnez	a0,800074d4 <either_copyout+0x3c>
    800074ac:	00058513          	mv	a0,a1
    800074b0:	00060593          	mv	a1,a2
    800074b4:	0006861b          	sext.w	a2,a3
    800074b8:	00002097          	auipc	ra,0x2
    800074bc:	c5c080e7          	jalr	-932(ra) # 80009114 <__memmove>
    800074c0:	00813083          	ld	ra,8(sp)
    800074c4:	00013403          	ld	s0,0(sp)
    800074c8:	00000513          	li	a0,0
    800074cc:	01010113          	addi	sp,sp,16
    800074d0:	00008067          	ret
    800074d4:	00003517          	auipc	a0,0x3
    800074d8:	15450513          	addi	a0,a0,340 # 8000a628 <CONSOLE_STATUS+0x618>
    800074dc:	00001097          	auipc	ra,0x1
    800074e0:	930080e7          	jalr	-1744(ra) # 80007e0c <panic>

00000000800074e4 <either_copyin>:
    800074e4:	ff010113          	addi	sp,sp,-16
    800074e8:	00813023          	sd	s0,0(sp)
    800074ec:	00113423          	sd	ra,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	02059463          	bnez	a1,8000751c <either_copyin+0x38>
    800074f8:	00060593          	mv	a1,a2
    800074fc:	0006861b          	sext.w	a2,a3
    80007500:	00002097          	auipc	ra,0x2
    80007504:	c14080e7          	jalr	-1004(ra) # 80009114 <__memmove>
    80007508:	00813083          	ld	ra,8(sp)
    8000750c:	00013403          	ld	s0,0(sp)
    80007510:	00000513          	li	a0,0
    80007514:	01010113          	addi	sp,sp,16
    80007518:	00008067          	ret
    8000751c:	00003517          	auipc	a0,0x3
    80007520:	13450513          	addi	a0,a0,308 # 8000a650 <CONSOLE_STATUS+0x640>
    80007524:	00001097          	auipc	ra,0x1
    80007528:	8e8080e7          	jalr	-1816(ra) # 80007e0c <panic>

000000008000752c <trapinit>:
    8000752c:	ff010113          	addi	sp,sp,-16
    80007530:	00813423          	sd	s0,8(sp)
    80007534:	01010413          	addi	s0,sp,16
    80007538:	00813403          	ld	s0,8(sp)
    8000753c:	00003597          	auipc	a1,0x3
    80007540:	13c58593          	addi	a1,a1,316 # 8000a678 <CONSOLE_STATUS+0x668>
    80007544:	00007517          	auipc	a0,0x7
    80007548:	bec50513          	addi	a0,a0,-1044 # 8000e130 <tickslock>
    8000754c:	01010113          	addi	sp,sp,16
    80007550:	00001317          	auipc	t1,0x1
    80007554:	5c830067          	jr	1480(t1) # 80008b18 <initlock>

0000000080007558 <trapinithart>:
    80007558:	ff010113          	addi	sp,sp,-16
    8000755c:	00813423          	sd	s0,8(sp)
    80007560:	01010413          	addi	s0,sp,16
    80007564:	00000797          	auipc	a5,0x0
    80007568:	2fc78793          	addi	a5,a5,764 # 80007860 <kernelvec>
    8000756c:	10579073          	csrw	stvec,a5
    80007570:	00813403          	ld	s0,8(sp)
    80007574:	01010113          	addi	sp,sp,16
    80007578:	00008067          	ret

000000008000757c <usertrap>:
    8000757c:	ff010113          	addi	sp,sp,-16
    80007580:	00813423          	sd	s0,8(sp)
    80007584:	01010413          	addi	s0,sp,16
    80007588:	00813403          	ld	s0,8(sp)
    8000758c:	01010113          	addi	sp,sp,16
    80007590:	00008067          	ret

0000000080007594 <usertrapret>:
    80007594:	ff010113          	addi	sp,sp,-16
    80007598:	00813423          	sd	s0,8(sp)
    8000759c:	01010413          	addi	s0,sp,16
    800075a0:	00813403          	ld	s0,8(sp)
    800075a4:	01010113          	addi	sp,sp,16
    800075a8:	00008067          	ret

00000000800075ac <kerneltrap>:
    800075ac:	fe010113          	addi	sp,sp,-32
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00113c23          	sd	ra,24(sp)
    800075b8:	00913423          	sd	s1,8(sp)
    800075bc:	02010413          	addi	s0,sp,32
    800075c0:	142025f3          	csrr	a1,scause
    800075c4:	100027f3          	csrr	a5,sstatus
    800075c8:	0027f793          	andi	a5,a5,2
    800075cc:	10079c63          	bnez	a5,800076e4 <kerneltrap+0x138>
    800075d0:	142027f3          	csrr	a5,scause
    800075d4:	0207ce63          	bltz	a5,80007610 <kerneltrap+0x64>
    800075d8:	00003517          	auipc	a0,0x3
    800075dc:	0e850513          	addi	a0,a0,232 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    800075e0:	00001097          	auipc	ra,0x1
    800075e4:	888080e7          	jalr	-1912(ra) # 80007e68 <__printf>
    800075e8:	141025f3          	csrr	a1,sepc
    800075ec:	14302673          	csrr	a2,stval
    800075f0:	00003517          	auipc	a0,0x3
    800075f4:	0e050513          	addi	a0,a0,224 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    800075f8:	00001097          	auipc	ra,0x1
    800075fc:	870080e7          	jalr	-1936(ra) # 80007e68 <__printf>
    80007600:	00003517          	auipc	a0,0x3
    80007604:	0e850513          	addi	a0,a0,232 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007608:	00001097          	auipc	ra,0x1
    8000760c:	804080e7          	jalr	-2044(ra) # 80007e0c <panic>
    80007610:	0ff7f713          	andi	a4,a5,255
    80007614:	00900693          	li	a3,9
    80007618:	04d70063          	beq	a4,a3,80007658 <kerneltrap+0xac>
    8000761c:	fff00713          	li	a4,-1
    80007620:	03f71713          	slli	a4,a4,0x3f
    80007624:	00170713          	addi	a4,a4,1
    80007628:	fae798e3          	bne	a5,a4,800075d8 <kerneltrap+0x2c>
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	e00080e7          	jalr	-512(ra) # 8000742c <cpuid>
    80007634:	06050663          	beqz	a0,800076a0 <kerneltrap+0xf4>
    80007638:	144027f3          	csrr	a5,sip
    8000763c:	ffd7f793          	andi	a5,a5,-3
    80007640:	14479073          	csrw	sip,a5
    80007644:	01813083          	ld	ra,24(sp)
    80007648:	01013403          	ld	s0,16(sp)
    8000764c:	00813483          	ld	s1,8(sp)
    80007650:	02010113          	addi	sp,sp,32
    80007654:	00008067          	ret
    80007658:	00000097          	auipc	ra,0x0
    8000765c:	3cc080e7          	jalr	972(ra) # 80007a24 <plic_claim>
    80007660:	00a00793          	li	a5,10
    80007664:	00050493          	mv	s1,a0
    80007668:	06f50863          	beq	a0,a5,800076d8 <kerneltrap+0x12c>
    8000766c:	fc050ce3          	beqz	a0,80007644 <kerneltrap+0x98>
    80007670:	00050593          	mv	a1,a0
    80007674:	00003517          	auipc	a0,0x3
    80007678:	02c50513          	addi	a0,a0,44 # 8000a6a0 <CONSOLE_STATUS+0x690>
    8000767c:	00000097          	auipc	ra,0x0
    80007680:	7ec080e7          	jalr	2028(ra) # 80007e68 <__printf>
    80007684:	01013403          	ld	s0,16(sp)
    80007688:	01813083          	ld	ra,24(sp)
    8000768c:	00048513          	mv	a0,s1
    80007690:	00813483          	ld	s1,8(sp)
    80007694:	02010113          	addi	sp,sp,32
    80007698:	00000317          	auipc	t1,0x0
    8000769c:	3c430067          	jr	964(t1) # 80007a5c <plic_complete>
    800076a0:	00007517          	auipc	a0,0x7
    800076a4:	a9050513          	addi	a0,a0,-1392 # 8000e130 <tickslock>
    800076a8:	00001097          	auipc	ra,0x1
    800076ac:	494080e7          	jalr	1172(ra) # 80008b3c <acquire>
    800076b0:	00006717          	auipc	a4,0x6
    800076b4:	89470713          	addi	a4,a4,-1900 # 8000cf44 <ticks>
    800076b8:	00072783          	lw	a5,0(a4)
    800076bc:	00007517          	auipc	a0,0x7
    800076c0:	a7450513          	addi	a0,a0,-1420 # 8000e130 <tickslock>
    800076c4:	0017879b          	addiw	a5,a5,1
    800076c8:	00f72023          	sw	a5,0(a4)
    800076cc:	00001097          	auipc	ra,0x1
    800076d0:	53c080e7          	jalr	1340(ra) # 80008c08 <release>
    800076d4:	f65ff06f          	j	80007638 <kerneltrap+0x8c>
    800076d8:	00001097          	auipc	ra,0x1
    800076dc:	098080e7          	jalr	152(ra) # 80008770 <uartintr>
    800076e0:	fa5ff06f          	j	80007684 <kerneltrap+0xd8>
    800076e4:	00003517          	auipc	a0,0x3
    800076e8:	f9c50513          	addi	a0,a0,-100 # 8000a680 <CONSOLE_STATUS+0x670>
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	720080e7          	jalr	1824(ra) # 80007e0c <panic>

00000000800076f4 <clockintr>:
    800076f4:	fe010113          	addi	sp,sp,-32
    800076f8:	00813823          	sd	s0,16(sp)
    800076fc:	00913423          	sd	s1,8(sp)
    80007700:	00113c23          	sd	ra,24(sp)
    80007704:	02010413          	addi	s0,sp,32
    80007708:	00007497          	auipc	s1,0x7
    8000770c:	a2848493          	addi	s1,s1,-1496 # 8000e130 <tickslock>
    80007710:	00048513          	mv	a0,s1
    80007714:	00001097          	auipc	ra,0x1
    80007718:	428080e7          	jalr	1064(ra) # 80008b3c <acquire>
    8000771c:	00006717          	auipc	a4,0x6
    80007720:	82870713          	addi	a4,a4,-2008 # 8000cf44 <ticks>
    80007724:	00072783          	lw	a5,0(a4)
    80007728:	01013403          	ld	s0,16(sp)
    8000772c:	01813083          	ld	ra,24(sp)
    80007730:	00048513          	mv	a0,s1
    80007734:	0017879b          	addiw	a5,a5,1
    80007738:	00813483          	ld	s1,8(sp)
    8000773c:	00f72023          	sw	a5,0(a4)
    80007740:	02010113          	addi	sp,sp,32
    80007744:	00001317          	auipc	t1,0x1
    80007748:	4c430067          	jr	1220(t1) # 80008c08 <release>

000000008000774c <devintr>:
    8000774c:	142027f3          	csrr	a5,scause
    80007750:	00000513          	li	a0,0
    80007754:	0007c463          	bltz	a5,8000775c <devintr+0x10>
    80007758:	00008067          	ret
    8000775c:	fe010113          	addi	sp,sp,-32
    80007760:	00813823          	sd	s0,16(sp)
    80007764:	00113c23          	sd	ra,24(sp)
    80007768:	00913423          	sd	s1,8(sp)
    8000776c:	02010413          	addi	s0,sp,32
    80007770:	0ff7f713          	andi	a4,a5,255
    80007774:	00900693          	li	a3,9
    80007778:	04d70c63          	beq	a4,a3,800077d0 <devintr+0x84>
    8000777c:	fff00713          	li	a4,-1
    80007780:	03f71713          	slli	a4,a4,0x3f
    80007784:	00170713          	addi	a4,a4,1
    80007788:	00e78c63          	beq	a5,a4,800077a0 <devintr+0x54>
    8000778c:	01813083          	ld	ra,24(sp)
    80007790:	01013403          	ld	s0,16(sp)
    80007794:	00813483          	ld	s1,8(sp)
    80007798:	02010113          	addi	sp,sp,32
    8000779c:	00008067          	ret
    800077a0:	00000097          	auipc	ra,0x0
    800077a4:	c8c080e7          	jalr	-884(ra) # 8000742c <cpuid>
    800077a8:	06050663          	beqz	a0,80007814 <devintr+0xc8>
    800077ac:	144027f3          	csrr	a5,sip
    800077b0:	ffd7f793          	andi	a5,a5,-3
    800077b4:	14479073          	csrw	sip,a5
    800077b8:	01813083          	ld	ra,24(sp)
    800077bc:	01013403          	ld	s0,16(sp)
    800077c0:	00813483          	ld	s1,8(sp)
    800077c4:	00200513          	li	a0,2
    800077c8:	02010113          	addi	sp,sp,32
    800077cc:	00008067          	ret
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	254080e7          	jalr	596(ra) # 80007a24 <plic_claim>
    800077d8:	00a00793          	li	a5,10
    800077dc:	00050493          	mv	s1,a0
    800077e0:	06f50663          	beq	a0,a5,8000784c <devintr+0x100>
    800077e4:	00100513          	li	a0,1
    800077e8:	fa0482e3          	beqz	s1,8000778c <devintr+0x40>
    800077ec:	00048593          	mv	a1,s1
    800077f0:	00003517          	auipc	a0,0x3
    800077f4:	eb050513          	addi	a0,a0,-336 # 8000a6a0 <CONSOLE_STATUS+0x690>
    800077f8:	00000097          	auipc	ra,0x0
    800077fc:	670080e7          	jalr	1648(ra) # 80007e68 <__printf>
    80007800:	00048513          	mv	a0,s1
    80007804:	00000097          	auipc	ra,0x0
    80007808:	258080e7          	jalr	600(ra) # 80007a5c <plic_complete>
    8000780c:	00100513          	li	a0,1
    80007810:	f7dff06f          	j	8000778c <devintr+0x40>
    80007814:	00007517          	auipc	a0,0x7
    80007818:	91c50513          	addi	a0,a0,-1764 # 8000e130 <tickslock>
    8000781c:	00001097          	auipc	ra,0x1
    80007820:	320080e7          	jalr	800(ra) # 80008b3c <acquire>
    80007824:	00005717          	auipc	a4,0x5
    80007828:	72070713          	addi	a4,a4,1824 # 8000cf44 <ticks>
    8000782c:	00072783          	lw	a5,0(a4)
    80007830:	00007517          	auipc	a0,0x7
    80007834:	90050513          	addi	a0,a0,-1792 # 8000e130 <tickslock>
    80007838:	0017879b          	addiw	a5,a5,1
    8000783c:	00f72023          	sw	a5,0(a4)
    80007840:	00001097          	auipc	ra,0x1
    80007844:	3c8080e7          	jalr	968(ra) # 80008c08 <release>
    80007848:	f65ff06f          	j	800077ac <devintr+0x60>
    8000784c:	00001097          	auipc	ra,0x1
    80007850:	f24080e7          	jalr	-220(ra) # 80008770 <uartintr>
    80007854:	fadff06f          	j	80007800 <devintr+0xb4>
	...

0000000080007860 <kernelvec>:
    80007860:	f0010113          	addi	sp,sp,-256
    80007864:	00113023          	sd	ra,0(sp)
    80007868:	00213423          	sd	sp,8(sp)
    8000786c:	00313823          	sd	gp,16(sp)
    80007870:	00413c23          	sd	tp,24(sp)
    80007874:	02513023          	sd	t0,32(sp)
    80007878:	02613423          	sd	t1,40(sp)
    8000787c:	02713823          	sd	t2,48(sp)
    80007880:	02813c23          	sd	s0,56(sp)
    80007884:	04913023          	sd	s1,64(sp)
    80007888:	04a13423          	sd	a0,72(sp)
    8000788c:	04b13823          	sd	a1,80(sp)
    80007890:	04c13c23          	sd	a2,88(sp)
    80007894:	06d13023          	sd	a3,96(sp)
    80007898:	06e13423          	sd	a4,104(sp)
    8000789c:	06f13823          	sd	a5,112(sp)
    800078a0:	07013c23          	sd	a6,120(sp)
    800078a4:	09113023          	sd	a7,128(sp)
    800078a8:	09213423          	sd	s2,136(sp)
    800078ac:	09313823          	sd	s3,144(sp)
    800078b0:	09413c23          	sd	s4,152(sp)
    800078b4:	0b513023          	sd	s5,160(sp)
    800078b8:	0b613423          	sd	s6,168(sp)
    800078bc:	0b713823          	sd	s7,176(sp)
    800078c0:	0b813c23          	sd	s8,184(sp)
    800078c4:	0d913023          	sd	s9,192(sp)
    800078c8:	0da13423          	sd	s10,200(sp)
    800078cc:	0db13823          	sd	s11,208(sp)
    800078d0:	0dc13c23          	sd	t3,216(sp)
    800078d4:	0fd13023          	sd	t4,224(sp)
    800078d8:	0fe13423          	sd	t5,232(sp)
    800078dc:	0ff13823          	sd	t6,240(sp)
    800078e0:	ccdff0ef          	jal	ra,800075ac <kerneltrap>
    800078e4:	00013083          	ld	ra,0(sp)
    800078e8:	00813103          	ld	sp,8(sp)
    800078ec:	01013183          	ld	gp,16(sp)
    800078f0:	02013283          	ld	t0,32(sp)
    800078f4:	02813303          	ld	t1,40(sp)
    800078f8:	03013383          	ld	t2,48(sp)
    800078fc:	03813403          	ld	s0,56(sp)
    80007900:	04013483          	ld	s1,64(sp)
    80007904:	04813503          	ld	a0,72(sp)
    80007908:	05013583          	ld	a1,80(sp)
    8000790c:	05813603          	ld	a2,88(sp)
    80007910:	06013683          	ld	a3,96(sp)
    80007914:	06813703          	ld	a4,104(sp)
    80007918:	07013783          	ld	a5,112(sp)
    8000791c:	07813803          	ld	a6,120(sp)
    80007920:	08013883          	ld	a7,128(sp)
    80007924:	08813903          	ld	s2,136(sp)
    80007928:	09013983          	ld	s3,144(sp)
    8000792c:	09813a03          	ld	s4,152(sp)
    80007930:	0a013a83          	ld	s5,160(sp)
    80007934:	0a813b03          	ld	s6,168(sp)
    80007938:	0b013b83          	ld	s7,176(sp)
    8000793c:	0b813c03          	ld	s8,184(sp)
    80007940:	0c013c83          	ld	s9,192(sp)
    80007944:	0c813d03          	ld	s10,200(sp)
    80007948:	0d013d83          	ld	s11,208(sp)
    8000794c:	0d813e03          	ld	t3,216(sp)
    80007950:	0e013e83          	ld	t4,224(sp)
    80007954:	0e813f03          	ld	t5,232(sp)
    80007958:	0f013f83          	ld	t6,240(sp)
    8000795c:	10010113          	addi	sp,sp,256
    80007960:	10200073          	sret
    80007964:	00000013          	nop
    80007968:	00000013          	nop
    8000796c:	00000013          	nop

0000000080007970 <timervec>:
    80007970:	34051573          	csrrw	a0,mscratch,a0
    80007974:	00b53023          	sd	a1,0(a0)
    80007978:	00c53423          	sd	a2,8(a0)
    8000797c:	00d53823          	sd	a3,16(a0)
    80007980:	01853583          	ld	a1,24(a0)
    80007984:	02053603          	ld	a2,32(a0)
    80007988:	0005b683          	ld	a3,0(a1)
    8000798c:	00c686b3          	add	a3,a3,a2
    80007990:	00d5b023          	sd	a3,0(a1)
    80007994:	00200593          	li	a1,2
    80007998:	14459073          	csrw	sip,a1
    8000799c:	01053683          	ld	a3,16(a0)
    800079a0:	00853603          	ld	a2,8(a0)
    800079a4:	00053583          	ld	a1,0(a0)
    800079a8:	34051573          	csrrw	a0,mscratch,a0
    800079ac:	30200073          	mret

00000000800079b0 <plicinit>:
    800079b0:	ff010113          	addi	sp,sp,-16
    800079b4:	00813423          	sd	s0,8(sp)
    800079b8:	01010413          	addi	s0,sp,16
    800079bc:	00813403          	ld	s0,8(sp)
    800079c0:	0c0007b7          	lui	a5,0xc000
    800079c4:	00100713          	li	a4,1
    800079c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800079cc:	00e7a223          	sw	a4,4(a5)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <plicinithart>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813023          	sd	s0,0(sp)
    800079e0:	00113423          	sd	ra,8(sp)
    800079e4:	01010413          	addi	s0,sp,16
    800079e8:	00000097          	auipc	ra,0x0
    800079ec:	a44080e7          	jalr	-1468(ra) # 8000742c <cpuid>
    800079f0:	0085171b          	slliw	a4,a0,0x8
    800079f4:	0c0027b7          	lui	a5,0xc002
    800079f8:	00e787b3          	add	a5,a5,a4
    800079fc:	40200713          	li	a4,1026
    80007a00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007a04:	00813083          	ld	ra,8(sp)
    80007a08:	00013403          	ld	s0,0(sp)
    80007a0c:	00d5151b          	slliw	a0,a0,0xd
    80007a10:	0c2017b7          	lui	a5,0xc201
    80007a14:	00a78533          	add	a0,a5,a0
    80007a18:	00052023          	sw	zero,0(a0)
    80007a1c:	01010113          	addi	sp,sp,16
    80007a20:	00008067          	ret

0000000080007a24 <plic_claim>:
    80007a24:	ff010113          	addi	sp,sp,-16
    80007a28:	00813023          	sd	s0,0(sp)
    80007a2c:	00113423          	sd	ra,8(sp)
    80007a30:	01010413          	addi	s0,sp,16
    80007a34:	00000097          	auipc	ra,0x0
    80007a38:	9f8080e7          	jalr	-1544(ra) # 8000742c <cpuid>
    80007a3c:	00813083          	ld	ra,8(sp)
    80007a40:	00013403          	ld	s0,0(sp)
    80007a44:	00d5151b          	slliw	a0,a0,0xd
    80007a48:	0c2017b7          	lui	a5,0xc201
    80007a4c:	00a78533          	add	a0,a5,a0
    80007a50:	00452503          	lw	a0,4(a0)
    80007a54:	01010113          	addi	sp,sp,16
    80007a58:	00008067          	ret

0000000080007a5c <plic_complete>:
    80007a5c:	fe010113          	addi	sp,sp,-32
    80007a60:	00813823          	sd	s0,16(sp)
    80007a64:	00913423          	sd	s1,8(sp)
    80007a68:	00113c23          	sd	ra,24(sp)
    80007a6c:	02010413          	addi	s0,sp,32
    80007a70:	00050493          	mv	s1,a0
    80007a74:	00000097          	auipc	ra,0x0
    80007a78:	9b8080e7          	jalr	-1608(ra) # 8000742c <cpuid>
    80007a7c:	01813083          	ld	ra,24(sp)
    80007a80:	01013403          	ld	s0,16(sp)
    80007a84:	00d5179b          	slliw	a5,a0,0xd
    80007a88:	0c201737          	lui	a4,0xc201
    80007a8c:	00f707b3          	add	a5,a4,a5
    80007a90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007a94:	00813483          	ld	s1,8(sp)
    80007a98:	02010113          	addi	sp,sp,32
    80007a9c:	00008067          	ret

0000000080007aa0 <consolewrite>:
    80007aa0:	fb010113          	addi	sp,sp,-80
    80007aa4:	04813023          	sd	s0,64(sp)
    80007aa8:	04113423          	sd	ra,72(sp)
    80007aac:	02913c23          	sd	s1,56(sp)
    80007ab0:	03213823          	sd	s2,48(sp)
    80007ab4:	03313423          	sd	s3,40(sp)
    80007ab8:	03413023          	sd	s4,32(sp)
    80007abc:	01513c23          	sd	s5,24(sp)
    80007ac0:	05010413          	addi	s0,sp,80
    80007ac4:	06c05c63          	blez	a2,80007b3c <consolewrite+0x9c>
    80007ac8:	00060993          	mv	s3,a2
    80007acc:	00050a13          	mv	s4,a0
    80007ad0:	00058493          	mv	s1,a1
    80007ad4:	00000913          	li	s2,0
    80007ad8:	fff00a93          	li	s5,-1
    80007adc:	01c0006f          	j	80007af8 <consolewrite+0x58>
    80007ae0:	fbf44503          	lbu	a0,-65(s0)
    80007ae4:	0019091b          	addiw	s2,s2,1
    80007ae8:	00148493          	addi	s1,s1,1
    80007aec:	00001097          	auipc	ra,0x1
    80007af0:	a9c080e7          	jalr	-1380(ra) # 80008588 <uartputc>
    80007af4:	03298063          	beq	s3,s2,80007b14 <consolewrite+0x74>
    80007af8:	00048613          	mv	a2,s1
    80007afc:	00100693          	li	a3,1
    80007b00:	000a0593          	mv	a1,s4
    80007b04:	fbf40513          	addi	a0,s0,-65
    80007b08:	00000097          	auipc	ra,0x0
    80007b0c:	9dc080e7          	jalr	-1572(ra) # 800074e4 <either_copyin>
    80007b10:	fd5518e3          	bne	a0,s5,80007ae0 <consolewrite+0x40>
    80007b14:	04813083          	ld	ra,72(sp)
    80007b18:	04013403          	ld	s0,64(sp)
    80007b1c:	03813483          	ld	s1,56(sp)
    80007b20:	02813983          	ld	s3,40(sp)
    80007b24:	02013a03          	ld	s4,32(sp)
    80007b28:	01813a83          	ld	s5,24(sp)
    80007b2c:	00090513          	mv	a0,s2
    80007b30:	03013903          	ld	s2,48(sp)
    80007b34:	05010113          	addi	sp,sp,80
    80007b38:	00008067          	ret
    80007b3c:	00000913          	li	s2,0
    80007b40:	fd5ff06f          	j	80007b14 <consolewrite+0x74>

0000000080007b44 <consoleread>:
    80007b44:	f9010113          	addi	sp,sp,-112
    80007b48:	06813023          	sd	s0,96(sp)
    80007b4c:	04913c23          	sd	s1,88(sp)
    80007b50:	05213823          	sd	s2,80(sp)
    80007b54:	05313423          	sd	s3,72(sp)
    80007b58:	05413023          	sd	s4,64(sp)
    80007b5c:	03513c23          	sd	s5,56(sp)
    80007b60:	03613823          	sd	s6,48(sp)
    80007b64:	03713423          	sd	s7,40(sp)
    80007b68:	03813023          	sd	s8,32(sp)
    80007b6c:	06113423          	sd	ra,104(sp)
    80007b70:	01913c23          	sd	s9,24(sp)
    80007b74:	07010413          	addi	s0,sp,112
    80007b78:	00060b93          	mv	s7,a2
    80007b7c:	00050913          	mv	s2,a0
    80007b80:	00058c13          	mv	s8,a1
    80007b84:	00060b1b          	sext.w	s6,a2
    80007b88:	00006497          	auipc	s1,0x6
    80007b8c:	5d048493          	addi	s1,s1,1488 # 8000e158 <cons>
    80007b90:	00400993          	li	s3,4
    80007b94:	fff00a13          	li	s4,-1
    80007b98:	00a00a93          	li	s5,10
    80007b9c:	05705e63          	blez	s7,80007bf8 <consoleread+0xb4>
    80007ba0:	09c4a703          	lw	a4,156(s1)
    80007ba4:	0984a783          	lw	a5,152(s1)
    80007ba8:	0007071b          	sext.w	a4,a4
    80007bac:	08e78463          	beq	a5,a4,80007c34 <consoleread+0xf0>
    80007bb0:	07f7f713          	andi	a4,a5,127
    80007bb4:	00e48733          	add	a4,s1,a4
    80007bb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007bbc:	0017869b          	addiw	a3,a5,1
    80007bc0:	08d4ac23          	sw	a3,152(s1)
    80007bc4:	00070c9b          	sext.w	s9,a4
    80007bc8:	0b370663          	beq	a4,s3,80007c74 <consoleread+0x130>
    80007bcc:	00100693          	li	a3,1
    80007bd0:	f9f40613          	addi	a2,s0,-97
    80007bd4:	000c0593          	mv	a1,s8
    80007bd8:	00090513          	mv	a0,s2
    80007bdc:	f8e40fa3          	sb	a4,-97(s0)
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	8b8080e7          	jalr	-1864(ra) # 80007498 <either_copyout>
    80007be8:	01450863          	beq	a0,s4,80007bf8 <consoleread+0xb4>
    80007bec:	001c0c13          	addi	s8,s8,1
    80007bf0:	fffb8b9b          	addiw	s7,s7,-1
    80007bf4:	fb5c94e3          	bne	s9,s5,80007b9c <consoleread+0x58>
    80007bf8:	000b851b          	sext.w	a0,s7
    80007bfc:	06813083          	ld	ra,104(sp)
    80007c00:	06013403          	ld	s0,96(sp)
    80007c04:	05813483          	ld	s1,88(sp)
    80007c08:	05013903          	ld	s2,80(sp)
    80007c0c:	04813983          	ld	s3,72(sp)
    80007c10:	04013a03          	ld	s4,64(sp)
    80007c14:	03813a83          	ld	s5,56(sp)
    80007c18:	02813b83          	ld	s7,40(sp)
    80007c1c:	02013c03          	ld	s8,32(sp)
    80007c20:	01813c83          	ld	s9,24(sp)
    80007c24:	40ab053b          	subw	a0,s6,a0
    80007c28:	03013b03          	ld	s6,48(sp)
    80007c2c:	07010113          	addi	sp,sp,112
    80007c30:	00008067          	ret
    80007c34:	00001097          	auipc	ra,0x1
    80007c38:	1d8080e7          	jalr	472(ra) # 80008e0c <push_on>
    80007c3c:	0984a703          	lw	a4,152(s1)
    80007c40:	09c4a783          	lw	a5,156(s1)
    80007c44:	0007879b          	sext.w	a5,a5
    80007c48:	fef70ce3          	beq	a4,a5,80007c40 <consoleread+0xfc>
    80007c4c:	00001097          	auipc	ra,0x1
    80007c50:	234080e7          	jalr	564(ra) # 80008e80 <pop_on>
    80007c54:	0984a783          	lw	a5,152(s1)
    80007c58:	07f7f713          	andi	a4,a5,127
    80007c5c:	00e48733          	add	a4,s1,a4
    80007c60:	01874703          	lbu	a4,24(a4)
    80007c64:	0017869b          	addiw	a3,a5,1
    80007c68:	08d4ac23          	sw	a3,152(s1)
    80007c6c:	00070c9b          	sext.w	s9,a4
    80007c70:	f5371ee3          	bne	a4,s3,80007bcc <consoleread+0x88>
    80007c74:	000b851b          	sext.w	a0,s7
    80007c78:	f96bf2e3          	bgeu	s7,s6,80007bfc <consoleread+0xb8>
    80007c7c:	08f4ac23          	sw	a5,152(s1)
    80007c80:	f7dff06f          	j	80007bfc <consoleread+0xb8>

0000000080007c84 <consputc>:
    80007c84:	10000793          	li	a5,256
    80007c88:	00f50663          	beq	a0,a5,80007c94 <consputc+0x10>
    80007c8c:	00001317          	auipc	t1,0x1
    80007c90:	9f430067          	jr	-1548(t1) # 80008680 <uartputc_sync>
    80007c94:	ff010113          	addi	sp,sp,-16
    80007c98:	00113423          	sd	ra,8(sp)
    80007c9c:	00813023          	sd	s0,0(sp)
    80007ca0:	01010413          	addi	s0,sp,16
    80007ca4:	00800513          	li	a0,8
    80007ca8:	00001097          	auipc	ra,0x1
    80007cac:	9d8080e7          	jalr	-1576(ra) # 80008680 <uartputc_sync>
    80007cb0:	02000513          	li	a0,32
    80007cb4:	00001097          	auipc	ra,0x1
    80007cb8:	9cc080e7          	jalr	-1588(ra) # 80008680 <uartputc_sync>
    80007cbc:	00013403          	ld	s0,0(sp)
    80007cc0:	00813083          	ld	ra,8(sp)
    80007cc4:	00800513          	li	a0,8
    80007cc8:	01010113          	addi	sp,sp,16
    80007ccc:	00001317          	auipc	t1,0x1
    80007cd0:	9b430067          	jr	-1612(t1) # 80008680 <uartputc_sync>

0000000080007cd4 <consoleintr>:
    80007cd4:	fe010113          	addi	sp,sp,-32
    80007cd8:	00813823          	sd	s0,16(sp)
    80007cdc:	00913423          	sd	s1,8(sp)
    80007ce0:	01213023          	sd	s2,0(sp)
    80007ce4:	00113c23          	sd	ra,24(sp)
    80007ce8:	02010413          	addi	s0,sp,32
    80007cec:	00006917          	auipc	s2,0x6
    80007cf0:	46c90913          	addi	s2,s2,1132 # 8000e158 <cons>
    80007cf4:	00050493          	mv	s1,a0
    80007cf8:	00090513          	mv	a0,s2
    80007cfc:	00001097          	auipc	ra,0x1
    80007d00:	e40080e7          	jalr	-448(ra) # 80008b3c <acquire>
    80007d04:	02048c63          	beqz	s1,80007d3c <consoleintr+0x68>
    80007d08:	0a092783          	lw	a5,160(s2)
    80007d0c:	09892703          	lw	a4,152(s2)
    80007d10:	07f00693          	li	a3,127
    80007d14:	40e7873b          	subw	a4,a5,a4
    80007d18:	02e6e263          	bltu	a3,a4,80007d3c <consoleintr+0x68>
    80007d1c:	00d00713          	li	a4,13
    80007d20:	04e48063          	beq	s1,a4,80007d60 <consoleintr+0x8c>
    80007d24:	07f7f713          	andi	a4,a5,127
    80007d28:	00e90733          	add	a4,s2,a4
    80007d2c:	0017879b          	addiw	a5,a5,1
    80007d30:	0af92023          	sw	a5,160(s2)
    80007d34:	00970c23          	sb	s1,24(a4)
    80007d38:	08f92e23          	sw	a5,156(s2)
    80007d3c:	01013403          	ld	s0,16(sp)
    80007d40:	01813083          	ld	ra,24(sp)
    80007d44:	00813483          	ld	s1,8(sp)
    80007d48:	00013903          	ld	s2,0(sp)
    80007d4c:	00006517          	auipc	a0,0x6
    80007d50:	40c50513          	addi	a0,a0,1036 # 8000e158 <cons>
    80007d54:	02010113          	addi	sp,sp,32
    80007d58:	00001317          	auipc	t1,0x1
    80007d5c:	eb030067          	jr	-336(t1) # 80008c08 <release>
    80007d60:	00a00493          	li	s1,10
    80007d64:	fc1ff06f          	j	80007d24 <consoleintr+0x50>

0000000080007d68 <consoleinit>:
    80007d68:	fe010113          	addi	sp,sp,-32
    80007d6c:	00113c23          	sd	ra,24(sp)
    80007d70:	00813823          	sd	s0,16(sp)
    80007d74:	00913423          	sd	s1,8(sp)
    80007d78:	02010413          	addi	s0,sp,32
    80007d7c:	00006497          	auipc	s1,0x6
    80007d80:	3dc48493          	addi	s1,s1,988 # 8000e158 <cons>
    80007d84:	00048513          	mv	a0,s1
    80007d88:	00003597          	auipc	a1,0x3
    80007d8c:	97058593          	addi	a1,a1,-1680 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80007d90:	00001097          	auipc	ra,0x1
    80007d94:	d88080e7          	jalr	-632(ra) # 80008b18 <initlock>
    80007d98:	00000097          	auipc	ra,0x0
    80007d9c:	7ac080e7          	jalr	1964(ra) # 80008544 <uartinit>
    80007da0:	01813083          	ld	ra,24(sp)
    80007da4:	01013403          	ld	s0,16(sp)
    80007da8:	00000797          	auipc	a5,0x0
    80007dac:	d9c78793          	addi	a5,a5,-612 # 80007b44 <consoleread>
    80007db0:	0af4bc23          	sd	a5,184(s1)
    80007db4:	00000797          	auipc	a5,0x0
    80007db8:	cec78793          	addi	a5,a5,-788 # 80007aa0 <consolewrite>
    80007dbc:	0cf4b023          	sd	a5,192(s1)
    80007dc0:	00813483          	ld	s1,8(sp)
    80007dc4:	02010113          	addi	sp,sp,32
    80007dc8:	00008067          	ret

0000000080007dcc <console_read>:
    80007dcc:	ff010113          	addi	sp,sp,-16
    80007dd0:	00813423          	sd	s0,8(sp)
    80007dd4:	01010413          	addi	s0,sp,16
    80007dd8:	00813403          	ld	s0,8(sp)
    80007ddc:	00006317          	auipc	t1,0x6
    80007de0:	43433303          	ld	t1,1076(t1) # 8000e210 <devsw+0x10>
    80007de4:	01010113          	addi	sp,sp,16
    80007de8:	00030067          	jr	t1

0000000080007dec <console_write>:
    80007dec:	ff010113          	addi	sp,sp,-16
    80007df0:	00813423          	sd	s0,8(sp)
    80007df4:	01010413          	addi	s0,sp,16
    80007df8:	00813403          	ld	s0,8(sp)
    80007dfc:	00006317          	auipc	t1,0x6
    80007e00:	41c33303          	ld	t1,1052(t1) # 8000e218 <devsw+0x18>
    80007e04:	01010113          	addi	sp,sp,16
    80007e08:	00030067          	jr	t1

0000000080007e0c <panic>:
    80007e0c:	fe010113          	addi	sp,sp,-32
    80007e10:	00113c23          	sd	ra,24(sp)
    80007e14:	00813823          	sd	s0,16(sp)
    80007e18:	00913423          	sd	s1,8(sp)
    80007e1c:	02010413          	addi	s0,sp,32
    80007e20:	00050493          	mv	s1,a0
    80007e24:	00003517          	auipc	a0,0x3
    80007e28:	8dc50513          	addi	a0,a0,-1828 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007e2c:	00006797          	auipc	a5,0x6
    80007e30:	4807a623          	sw	zero,1164(a5) # 8000e2b8 <pr+0x18>
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	034080e7          	jalr	52(ra) # 80007e68 <__printf>
    80007e3c:	00048513          	mv	a0,s1
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	028080e7          	jalr	40(ra) # 80007e68 <__printf>
    80007e48:	00002517          	auipc	a0,0x2
    80007e4c:	64050513          	addi	a0,a0,1600 # 8000a488 <CONSOLE_STATUS+0x478>
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	018080e7          	jalr	24(ra) # 80007e68 <__printf>
    80007e58:	00100793          	li	a5,1
    80007e5c:	00005717          	auipc	a4,0x5
    80007e60:	0ef72623          	sw	a5,236(a4) # 8000cf48 <panicked>
    80007e64:	0000006f          	j	80007e64 <panic+0x58>

0000000080007e68 <__printf>:
    80007e68:	f3010113          	addi	sp,sp,-208
    80007e6c:	08813023          	sd	s0,128(sp)
    80007e70:	07313423          	sd	s3,104(sp)
    80007e74:	09010413          	addi	s0,sp,144
    80007e78:	05813023          	sd	s8,64(sp)
    80007e7c:	08113423          	sd	ra,136(sp)
    80007e80:	06913c23          	sd	s1,120(sp)
    80007e84:	07213823          	sd	s2,112(sp)
    80007e88:	07413023          	sd	s4,96(sp)
    80007e8c:	05513c23          	sd	s5,88(sp)
    80007e90:	05613823          	sd	s6,80(sp)
    80007e94:	05713423          	sd	s7,72(sp)
    80007e98:	03913c23          	sd	s9,56(sp)
    80007e9c:	03a13823          	sd	s10,48(sp)
    80007ea0:	03b13423          	sd	s11,40(sp)
    80007ea4:	00006317          	auipc	t1,0x6
    80007ea8:	3fc30313          	addi	t1,t1,1020 # 8000e2a0 <pr>
    80007eac:	01832c03          	lw	s8,24(t1)
    80007eb0:	00b43423          	sd	a1,8(s0)
    80007eb4:	00c43823          	sd	a2,16(s0)
    80007eb8:	00d43c23          	sd	a3,24(s0)
    80007ebc:	02e43023          	sd	a4,32(s0)
    80007ec0:	02f43423          	sd	a5,40(s0)
    80007ec4:	03043823          	sd	a6,48(s0)
    80007ec8:	03143c23          	sd	a7,56(s0)
    80007ecc:	00050993          	mv	s3,a0
    80007ed0:	4a0c1663          	bnez	s8,8000837c <__printf+0x514>
    80007ed4:	60098c63          	beqz	s3,800084ec <__printf+0x684>
    80007ed8:	0009c503          	lbu	a0,0(s3)
    80007edc:	00840793          	addi	a5,s0,8
    80007ee0:	f6f43c23          	sd	a5,-136(s0)
    80007ee4:	00000493          	li	s1,0
    80007ee8:	22050063          	beqz	a0,80008108 <__printf+0x2a0>
    80007eec:	00002a37          	lui	s4,0x2
    80007ef0:	00018ab7          	lui	s5,0x18
    80007ef4:	000f4b37          	lui	s6,0xf4
    80007ef8:	00989bb7          	lui	s7,0x989
    80007efc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007f00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007f04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007f08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007f0c:	00148c9b          	addiw	s9,s1,1
    80007f10:	02500793          	li	a5,37
    80007f14:	01998933          	add	s2,s3,s9
    80007f18:	38f51263          	bne	a0,a5,8000829c <__printf+0x434>
    80007f1c:	00094783          	lbu	a5,0(s2)
    80007f20:	00078c9b          	sext.w	s9,a5
    80007f24:	1e078263          	beqz	a5,80008108 <__printf+0x2a0>
    80007f28:	0024849b          	addiw	s1,s1,2
    80007f2c:	07000713          	li	a4,112
    80007f30:	00998933          	add	s2,s3,s1
    80007f34:	38e78a63          	beq	a5,a4,800082c8 <__printf+0x460>
    80007f38:	20f76863          	bltu	a4,a5,80008148 <__printf+0x2e0>
    80007f3c:	42a78863          	beq	a5,a0,8000836c <__printf+0x504>
    80007f40:	06400713          	li	a4,100
    80007f44:	40e79663          	bne	a5,a4,80008350 <__printf+0x4e8>
    80007f48:	f7843783          	ld	a5,-136(s0)
    80007f4c:	0007a603          	lw	a2,0(a5)
    80007f50:	00878793          	addi	a5,a5,8
    80007f54:	f6f43c23          	sd	a5,-136(s0)
    80007f58:	42064a63          	bltz	a2,8000838c <__printf+0x524>
    80007f5c:	00a00713          	li	a4,10
    80007f60:	02e677bb          	remuw	a5,a2,a4
    80007f64:	00002d97          	auipc	s11,0x2
    80007f68:	7c4d8d93          	addi	s11,s11,1988 # 8000a728 <digits>
    80007f6c:	00900593          	li	a1,9
    80007f70:	0006051b          	sext.w	a0,a2
    80007f74:	00000c93          	li	s9,0
    80007f78:	02079793          	slli	a5,a5,0x20
    80007f7c:	0207d793          	srli	a5,a5,0x20
    80007f80:	00fd87b3          	add	a5,s11,a5
    80007f84:	0007c783          	lbu	a5,0(a5)
    80007f88:	02e656bb          	divuw	a3,a2,a4
    80007f8c:	f8f40023          	sb	a5,-128(s0)
    80007f90:	14c5d863          	bge	a1,a2,800080e0 <__printf+0x278>
    80007f94:	06300593          	li	a1,99
    80007f98:	00100c93          	li	s9,1
    80007f9c:	02e6f7bb          	remuw	a5,a3,a4
    80007fa0:	02079793          	slli	a5,a5,0x20
    80007fa4:	0207d793          	srli	a5,a5,0x20
    80007fa8:	00fd87b3          	add	a5,s11,a5
    80007fac:	0007c783          	lbu	a5,0(a5)
    80007fb0:	02e6d73b          	divuw	a4,a3,a4
    80007fb4:	f8f400a3          	sb	a5,-127(s0)
    80007fb8:	12a5f463          	bgeu	a1,a0,800080e0 <__printf+0x278>
    80007fbc:	00a00693          	li	a3,10
    80007fc0:	00900593          	li	a1,9
    80007fc4:	02d777bb          	remuw	a5,a4,a3
    80007fc8:	02079793          	slli	a5,a5,0x20
    80007fcc:	0207d793          	srli	a5,a5,0x20
    80007fd0:	00fd87b3          	add	a5,s11,a5
    80007fd4:	0007c503          	lbu	a0,0(a5)
    80007fd8:	02d757bb          	divuw	a5,a4,a3
    80007fdc:	f8a40123          	sb	a0,-126(s0)
    80007fe0:	48e5f263          	bgeu	a1,a4,80008464 <__printf+0x5fc>
    80007fe4:	06300513          	li	a0,99
    80007fe8:	02d7f5bb          	remuw	a1,a5,a3
    80007fec:	02059593          	slli	a1,a1,0x20
    80007ff0:	0205d593          	srli	a1,a1,0x20
    80007ff4:	00bd85b3          	add	a1,s11,a1
    80007ff8:	0005c583          	lbu	a1,0(a1)
    80007ffc:	02d7d7bb          	divuw	a5,a5,a3
    80008000:	f8b401a3          	sb	a1,-125(s0)
    80008004:	48e57263          	bgeu	a0,a4,80008488 <__printf+0x620>
    80008008:	3e700513          	li	a0,999
    8000800c:	02d7f5bb          	remuw	a1,a5,a3
    80008010:	02059593          	slli	a1,a1,0x20
    80008014:	0205d593          	srli	a1,a1,0x20
    80008018:	00bd85b3          	add	a1,s11,a1
    8000801c:	0005c583          	lbu	a1,0(a1)
    80008020:	02d7d7bb          	divuw	a5,a5,a3
    80008024:	f8b40223          	sb	a1,-124(s0)
    80008028:	46e57663          	bgeu	a0,a4,80008494 <__printf+0x62c>
    8000802c:	02d7f5bb          	remuw	a1,a5,a3
    80008030:	02059593          	slli	a1,a1,0x20
    80008034:	0205d593          	srli	a1,a1,0x20
    80008038:	00bd85b3          	add	a1,s11,a1
    8000803c:	0005c583          	lbu	a1,0(a1)
    80008040:	02d7d7bb          	divuw	a5,a5,a3
    80008044:	f8b402a3          	sb	a1,-123(s0)
    80008048:	46ea7863          	bgeu	s4,a4,800084b8 <__printf+0x650>
    8000804c:	02d7f5bb          	remuw	a1,a5,a3
    80008050:	02059593          	slli	a1,a1,0x20
    80008054:	0205d593          	srli	a1,a1,0x20
    80008058:	00bd85b3          	add	a1,s11,a1
    8000805c:	0005c583          	lbu	a1,0(a1)
    80008060:	02d7d7bb          	divuw	a5,a5,a3
    80008064:	f8b40323          	sb	a1,-122(s0)
    80008068:	3eeaf863          	bgeu	s5,a4,80008458 <__printf+0x5f0>
    8000806c:	02d7f5bb          	remuw	a1,a5,a3
    80008070:	02059593          	slli	a1,a1,0x20
    80008074:	0205d593          	srli	a1,a1,0x20
    80008078:	00bd85b3          	add	a1,s11,a1
    8000807c:	0005c583          	lbu	a1,0(a1)
    80008080:	02d7d7bb          	divuw	a5,a5,a3
    80008084:	f8b403a3          	sb	a1,-121(s0)
    80008088:	42eb7e63          	bgeu	s6,a4,800084c4 <__printf+0x65c>
    8000808c:	02d7f5bb          	remuw	a1,a5,a3
    80008090:	02059593          	slli	a1,a1,0x20
    80008094:	0205d593          	srli	a1,a1,0x20
    80008098:	00bd85b3          	add	a1,s11,a1
    8000809c:	0005c583          	lbu	a1,0(a1)
    800080a0:	02d7d7bb          	divuw	a5,a5,a3
    800080a4:	f8b40423          	sb	a1,-120(s0)
    800080a8:	42ebfc63          	bgeu	s7,a4,800084e0 <__printf+0x678>
    800080ac:	02079793          	slli	a5,a5,0x20
    800080b0:	0207d793          	srli	a5,a5,0x20
    800080b4:	00fd8db3          	add	s11,s11,a5
    800080b8:	000dc703          	lbu	a4,0(s11)
    800080bc:	00a00793          	li	a5,10
    800080c0:	00900c93          	li	s9,9
    800080c4:	f8e404a3          	sb	a4,-119(s0)
    800080c8:	00065c63          	bgez	a2,800080e0 <__printf+0x278>
    800080cc:	f9040713          	addi	a4,s0,-112
    800080d0:	00f70733          	add	a4,a4,a5
    800080d4:	02d00693          	li	a3,45
    800080d8:	fed70823          	sb	a3,-16(a4)
    800080dc:	00078c93          	mv	s9,a5
    800080e0:	f8040793          	addi	a5,s0,-128
    800080e4:	01978cb3          	add	s9,a5,s9
    800080e8:	f7f40d13          	addi	s10,s0,-129
    800080ec:	000cc503          	lbu	a0,0(s9)
    800080f0:	fffc8c93          	addi	s9,s9,-1
    800080f4:	00000097          	auipc	ra,0x0
    800080f8:	b90080e7          	jalr	-1136(ra) # 80007c84 <consputc>
    800080fc:	ffac98e3          	bne	s9,s10,800080ec <__printf+0x284>
    80008100:	00094503          	lbu	a0,0(s2)
    80008104:	e00514e3          	bnez	a0,80007f0c <__printf+0xa4>
    80008108:	1a0c1663          	bnez	s8,800082b4 <__printf+0x44c>
    8000810c:	08813083          	ld	ra,136(sp)
    80008110:	08013403          	ld	s0,128(sp)
    80008114:	07813483          	ld	s1,120(sp)
    80008118:	07013903          	ld	s2,112(sp)
    8000811c:	06813983          	ld	s3,104(sp)
    80008120:	06013a03          	ld	s4,96(sp)
    80008124:	05813a83          	ld	s5,88(sp)
    80008128:	05013b03          	ld	s6,80(sp)
    8000812c:	04813b83          	ld	s7,72(sp)
    80008130:	04013c03          	ld	s8,64(sp)
    80008134:	03813c83          	ld	s9,56(sp)
    80008138:	03013d03          	ld	s10,48(sp)
    8000813c:	02813d83          	ld	s11,40(sp)
    80008140:	0d010113          	addi	sp,sp,208
    80008144:	00008067          	ret
    80008148:	07300713          	li	a4,115
    8000814c:	1ce78a63          	beq	a5,a4,80008320 <__printf+0x4b8>
    80008150:	07800713          	li	a4,120
    80008154:	1ee79e63          	bne	a5,a4,80008350 <__printf+0x4e8>
    80008158:	f7843783          	ld	a5,-136(s0)
    8000815c:	0007a703          	lw	a4,0(a5)
    80008160:	00878793          	addi	a5,a5,8
    80008164:	f6f43c23          	sd	a5,-136(s0)
    80008168:	28074263          	bltz	a4,800083ec <__printf+0x584>
    8000816c:	00002d97          	auipc	s11,0x2
    80008170:	5bcd8d93          	addi	s11,s11,1468 # 8000a728 <digits>
    80008174:	00f77793          	andi	a5,a4,15
    80008178:	00fd87b3          	add	a5,s11,a5
    8000817c:	0007c683          	lbu	a3,0(a5)
    80008180:	00f00613          	li	a2,15
    80008184:	0007079b          	sext.w	a5,a4
    80008188:	f8d40023          	sb	a3,-128(s0)
    8000818c:	0047559b          	srliw	a1,a4,0x4
    80008190:	0047569b          	srliw	a3,a4,0x4
    80008194:	00000c93          	li	s9,0
    80008198:	0ee65063          	bge	a2,a4,80008278 <__printf+0x410>
    8000819c:	00f6f693          	andi	a3,a3,15
    800081a0:	00dd86b3          	add	a3,s11,a3
    800081a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800081a8:	0087d79b          	srliw	a5,a5,0x8
    800081ac:	00100c93          	li	s9,1
    800081b0:	f8d400a3          	sb	a3,-127(s0)
    800081b4:	0cb67263          	bgeu	a2,a1,80008278 <__printf+0x410>
    800081b8:	00f7f693          	andi	a3,a5,15
    800081bc:	00dd86b3          	add	a3,s11,a3
    800081c0:	0006c583          	lbu	a1,0(a3)
    800081c4:	00f00613          	li	a2,15
    800081c8:	0047d69b          	srliw	a3,a5,0x4
    800081cc:	f8b40123          	sb	a1,-126(s0)
    800081d0:	0047d593          	srli	a1,a5,0x4
    800081d4:	28f67e63          	bgeu	a2,a5,80008470 <__printf+0x608>
    800081d8:	00f6f693          	andi	a3,a3,15
    800081dc:	00dd86b3          	add	a3,s11,a3
    800081e0:	0006c503          	lbu	a0,0(a3)
    800081e4:	0087d813          	srli	a6,a5,0x8
    800081e8:	0087d69b          	srliw	a3,a5,0x8
    800081ec:	f8a401a3          	sb	a0,-125(s0)
    800081f0:	28b67663          	bgeu	a2,a1,8000847c <__printf+0x614>
    800081f4:	00f6f693          	andi	a3,a3,15
    800081f8:	00dd86b3          	add	a3,s11,a3
    800081fc:	0006c583          	lbu	a1,0(a3)
    80008200:	00c7d513          	srli	a0,a5,0xc
    80008204:	00c7d69b          	srliw	a3,a5,0xc
    80008208:	f8b40223          	sb	a1,-124(s0)
    8000820c:	29067a63          	bgeu	a2,a6,800084a0 <__printf+0x638>
    80008210:	00f6f693          	andi	a3,a3,15
    80008214:	00dd86b3          	add	a3,s11,a3
    80008218:	0006c583          	lbu	a1,0(a3)
    8000821c:	0107d813          	srli	a6,a5,0x10
    80008220:	0107d69b          	srliw	a3,a5,0x10
    80008224:	f8b402a3          	sb	a1,-123(s0)
    80008228:	28a67263          	bgeu	a2,a0,800084ac <__printf+0x644>
    8000822c:	00f6f693          	andi	a3,a3,15
    80008230:	00dd86b3          	add	a3,s11,a3
    80008234:	0006c683          	lbu	a3,0(a3)
    80008238:	0147d79b          	srliw	a5,a5,0x14
    8000823c:	f8d40323          	sb	a3,-122(s0)
    80008240:	21067663          	bgeu	a2,a6,8000844c <__printf+0x5e4>
    80008244:	02079793          	slli	a5,a5,0x20
    80008248:	0207d793          	srli	a5,a5,0x20
    8000824c:	00fd8db3          	add	s11,s11,a5
    80008250:	000dc683          	lbu	a3,0(s11)
    80008254:	00800793          	li	a5,8
    80008258:	00700c93          	li	s9,7
    8000825c:	f8d403a3          	sb	a3,-121(s0)
    80008260:	00075c63          	bgez	a4,80008278 <__printf+0x410>
    80008264:	f9040713          	addi	a4,s0,-112
    80008268:	00f70733          	add	a4,a4,a5
    8000826c:	02d00693          	li	a3,45
    80008270:	fed70823          	sb	a3,-16(a4)
    80008274:	00078c93          	mv	s9,a5
    80008278:	f8040793          	addi	a5,s0,-128
    8000827c:	01978cb3          	add	s9,a5,s9
    80008280:	f7f40d13          	addi	s10,s0,-129
    80008284:	000cc503          	lbu	a0,0(s9)
    80008288:	fffc8c93          	addi	s9,s9,-1
    8000828c:	00000097          	auipc	ra,0x0
    80008290:	9f8080e7          	jalr	-1544(ra) # 80007c84 <consputc>
    80008294:	ff9d18e3          	bne	s10,s9,80008284 <__printf+0x41c>
    80008298:	0100006f          	j	800082a8 <__printf+0x440>
    8000829c:	00000097          	auipc	ra,0x0
    800082a0:	9e8080e7          	jalr	-1560(ra) # 80007c84 <consputc>
    800082a4:	000c8493          	mv	s1,s9
    800082a8:	00094503          	lbu	a0,0(s2)
    800082ac:	c60510e3          	bnez	a0,80007f0c <__printf+0xa4>
    800082b0:	e40c0ee3          	beqz	s8,8000810c <__printf+0x2a4>
    800082b4:	00006517          	auipc	a0,0x6
    800082b8:	fec50513          	addi	a0,a0,-20 # 8000e2a0 <pr>
    800082bc:	00001097          	auipc	ra,0x1
    800082c0:	94c080e7          	jalr	-1716(ra) # 80008c08 <release>
    800082c4:	e49ff06f          	j	8000810c <__printf+0x2a4>
    800082c8:	f7843783          	ld	a5,-136(s0)
    800082cc:	03000513          	li	a0,48
    800082d0:	01000d13          	li	s10,16
    800082d4:	00878713          	addi	a4,a5,8
    800082d8:	0007bc83          	ld	s9,0(a5)
    800082dc:	f6e43c23          	sd	a4,-136(s0)
    800082e0:	00000097          	auipc	ra,0x0
    800082e4:	9a4080e7          	jalr	-1628(ra) # 80007c84 <consputc>
    800082e8:	07800513          	li	a0,120
    800082ec:	00000097          	auipc	ra,0x0
    800082f0:	998080e7          	jalr	-1640(ra) # 80007c84 <consputc>
    800082f4:	00002d97          	auipc	s11,0x2
    800082f8:	434d8d93          	addi	s11,s11,1076 # 8000a728 <digits>
    800082fc:	03ccd793          	srli	a5,s9,0x3c
    80008300:	00fd87b3          	add	a5,s11,a5
    80008304:	0007c503          	lbu	a0,0(a5)
    80008308:	fffd0d1b          	addiw	s10,s10,-1
    8000830c:	004c9c93          	slli	s9,s9,0x4
    80008310:	00000097          	auipc	ra,0x0
    80008314:	974080e7          	jalr	-1676(ra) # 80007c84 <consputc>
    80008318:	fe0d12e3          	bnez	s10,800082fc <__printf+0x494>
    8000831c:	f8dff06f          	j	800082a8 <__printf+0x440>
    80008320:	f7843783          	ld	a5,-136(s0)
    80008324:	0007bc83          	ld	s9,0(a5)
    80008328:	00878793          	addi	a5,a5,8
    8000832c:	f6f43c23          	sd	a5,-136(s0)
    80008330:	000c9a63          	bnez	s9,80008344 <__printf+0x4dc>
    80008334:	1080006f          	j	8000843c <__printf+0x5d4>
    80008338:	001c8c93          	addi	s9,s9,1
    8000833c:	00000097          	auipc	ra,0x0
    80008340:	948080e7          	jalr	-1720(ra) # 80007c84 <consputc>
    80008344:	000cc503          	lbu	a0,0(s9)
    80008348:	fe0518e3          	bnez	a0,80008338 <__printf+0x4d0>
    8000834c:	f5dff06f          	j	800082a8 <__printf+0x440>
    80008350:	02500513          	li	a0,37
    80008354:	00000097          	auipc	ra,0x0
    80008358:	930080e7          	jalr	-1744(ra) # 80007c84 <consputc>
    8000835c:	000c8513          	mv	a0,s9
    80008360:	00000097          	auipc	ra,0x0
    80008364:	924080e7          	jalr	-1756(ra) # 80007c84 <consputc>
    80008368:	f41ff06f          	j	800082a8 <__printf+0x440>
    8000836c:	02500513          	li	a0,37
    80008370:	00000097          	auipc	ra,0x0
    80008374:	914080e7          	jalr	-1772(ra) # 80007c84 <consputc>
    80008378:	f31ff06f          	j	800082a8 <__printf+0x440>
    8000837c:	00030513          	mv	a0,t1
    80008380:	00000097          	auipc	ra,0x0
    80008384:	7bc080e7          	jalr	1980(ra) # 80008b3c <acquire>
    80008388:	b4dff06f          	j	80007ed4 <__printf+0x6c>
    8000838c:	40c0053b          	negw	a0,a2
    80008390:	00a00713          	li	a4,10
    80008394:	02e576bb          	remuw	a3,a0,a4
    80008398:	00002d97          	auipc	s11,0x2
    8000839c:	390d8d93          	addi	s11,s11,912 # 8000a728 <digits>
    800083a0:	ff700593          	li	a1,-9
    800083a4:	02069693          	slli	a3,a3,0x20
    800083a8:	0206d693          	srli	a3,a3,0x20
    800083ac:	00dd86b3          	add	a3,s11,a3
    800083b0:	0006c683          	lbu	a3,0(a3)
    800083b4:	02e557bb          	divuw	a5,a0,a4
    800083b8:	f8d40023          	sb	a3,-128(s0)
    800083bc:	10b65e63          	bge	a2,a1,800084d8 <__printf+0x670>
    800083c0:	06300593          	li	a1,99
    800083c4:	02e7f6bb          	remuw	a3,a5,a4
    800083c8:	02069693          	slli	a3,a3,0x20
    800083cc:	0206d693          	srli	a3,a3,0x20
    800083d0:	00dd86b3          	add	a3,s11,a3
    800083d4:	0006c683          	lbu	a3,0(a3)
    800083d8:	02e7d73b          	divuw	a4,a5,a4
    800083dc:	00200793          	li	a5,2
    800083e0:	f8d400a3          	sb	a3,-127(s0)
    800083e4:	bca5ece3          	bltu	a1,a0,80007fbc <__printf+0x154>
    800083e8:	ce5ff06f          	j	800080cc <__printf+0x264>
    800083ec:	40e007bb          	negw	a5,a4
    800083f0:	00002d97          	auipc	s11,0x2
    800083f4:	338d8d93          	addi	s11,s11,824 # 8000a728 <digits>
    800083f8:	00f7f693          	andi	a3,a5,15
    800083fc:	00dd86b3          	add	a3,s11,a3
    80008400:	0006c583          	lbu	a1,0(a3)
    80008404:	ff100613          	li	a2,-15
    80008408:	0047d69b          	srliw	a3,a5,0x4
    8000840c:	f8b40023          	sb	a1,-128(s0)
    80008410:	0047d59b          	srliw	a1,a5,0x4
    80008414:	0ac75e63          	bge	a4,a2,800084d0 <__printf+0x668>
    80008418:	00f6f693          	andi	a3,a3,15
    8000841c:	00dd86b3          	add	a3,s11,a3
    80008420:	0006c603          	lbu	a2,0(a3)
    80008424:	00f00693          	li	a3,15
    80008428:	0087d79b          	srliw	a5,a5,0x8
    8000842c:	f8c400a3          	sb	a2,-127(s0)
    80008430:	d8b6e4e3          	bltu	a3,a1,800081b8 <__printf+0x350>
    80008434:	00200793          	li	a5,2
    80008438:	e2dff06f          	j	80008264 <__printf+0x3fc>
    8000843c:	00002c97          	auipc	s9,0x2
    80008440:	2ccc8c93          	addi	s9,s9,716 # 8000a708 <CONSOLE_STATUS+0x6f8>
    80008444:	02800513          	li	a0,40
    80008448:	ef1ff06f          	j	80008338 <__printf+0x4d0>
    8000844c:	00700793          	li	a5,7
    80008450:	00600c93          	li	s9,6
    80008454:	e0dff06f          	j	80008260 <__printf+0x3f8>
    80008458:	00700793          	li	a5,7
    8000845c:	00600c93          	li	s9,6
    80008460:	c69ff06f          	j	800080c8 <__printf+0x260>
    80008464:	00300793          	li	a5,3
    80008468:	00200c93          	li	s9,2
    8000846c:	c5dff06f          	j	800080c8 <__printf+0x260>
    80008470:	00300793          	li	a5,3
    80008474:	00200c93          	li	s9,2
    80008478:	de9ff06f          	j	80008260 <__printf+0x3f8>
    8000847c:	00400793          	li	a5,4
    80008480:	00300c93          	li	s9,3
    80008484:	dddff06f          	j	80008260 <__printf+0x3f8>
    80008488:	00400793          	li	a5,4
    8000848c:	00300c93          	li	s9,3
    80008490:	c39ff06f          	j	800080c8 <__printf+0x260>
    80008494:	00500793          	li	a5,5
    80008498:	00400c93          	li	s9,4
    8000849c:	c2dff06f          	j	800080c8 <__printf+0x260>
    800084a0:	00500793          	li	a5,5
    800084a4:	00400c93          	li	s9,4
    800084a8:	db9ff06f          	j	80008260 <__printf+0x3f8>
    800084ac:	00600793          	li	a5,6
    800084b0:	00500c93          	li	s9,5
    800084b4:	dadff06f          	j	80008260 <__printf+0x3f8>
    800084b8:	00600793          	li	a5,6
    800084bc:	00500c93          	li	s9,5
    800084c0:	c09ff06f          	j	800080c8 <__printf+0x260>
    800084c4:	00800793          	li	a5,8
    800084c8:	00700c93          	li	s9,7
    800084cc:	bfdff06f          	j	800080c8 <__printf+0x260>
    800084d0:	00100793          	li	a5,1
    800084d4:	d91ff06f          	j	80008264 <__printf+0x3fc>
    800084d8:	00100793          	li	a5,1
    800084dc:	bf1ff06f          	j	800080cc <__printf+0x264>
    800084e0:	00900793          	li	a5,9
    800084e4:	00800c93          	li	s9,8
    800084e8:	be1ff06f          	j	800080c8 <__printf+0x260>
    800084ec:	00002517          	auipc	a0,0x2
    800084f0:	22450513          	addi	a0,a0,548 # 8000a710 <CONSOLE_STATUS+0x700>
    800084f4:	00000097          	auipc	ra,0x0
    800084f8:	918080e7          	jalr	-1768(ra) # 80007e0c <panic>

00000000800084fc <printfinit>:
    800084fc:	fe010113          	addi	sp,sp,-32
    80008500:	00813823          	sd	s0,16(sp)
    80008504:	00913423          	sd	s1,8(sp)
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	02010413          	addi	s0,sp,32
    80008510:	00006497          	auipc	s1,0x6
    80008514:	d9048493          	addi	s1,s1,-624 # 8000e2a0 <pr>
    80008518:	00048513          	mv	a0,s1
    8000851c:	00002597          	auipc	a1,0x2
    80008520:	20458593          	addi	a1,a1,516 # 8000a720 <CONSOLE_STATUS+0x710>
    80008524:	00000097          	auipc	ra,0x0
    80008528:	5f4080e7          	jalr	1524(ra) # 80008b18 <initlock>
    8000852c:	01813083          	ld	ra,24(sp)
    80008530:	01013403          	ld	s0,16(sp)
    80008534:	0004ac23          	sw	zero,24(s1)
    80008538:	00813483          	ld	s1,8(sp)
    8000853c:	02010113          	addi	sp,sp,32
    80008540:	00008067          	ret

0000000080008544 <uartinit>:
    80008544:	ff010113          	addi	sp,sp,-16
    80008548:	00813423          	sd	s0,8(sp)
    8000854c:	01010413          	addi	s0,sp,16
    80008550:	100007b7          	lui	a5,0x10000
    80008554:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008558:	f8000713          	li	a4,-128
    8000855c:	00e781a3          	sb	a4,3(a5)
    80008560:	00300713          	li	a4,3
    80008564:	00e78023          	sb	a4,0(a5)
    80008568:	000780a3          	sb	zero,1(a5)
    8000856c:	00e781a3          	sb	a4,3(a5)
    80008570:	00700693          	li	a3,7
    80008574:	00d78123          	sb	a3,2(a5)
    80008578:	00e780a3          	sb	a4,1(a5)
    8000857c:	00813403          	ld	s0,8(sp)
    80008580:	01010113          	addi	sp,sp,16
    80008584:	00008067          	ret

0000000080008588 <uartputc>:
    80008588:	00005797          	auipc	a5,0x5
    8000858c:	9c07a783          	lw	a5,-1600(a5) # 8000cf48 <panicked>
    80008590:	00078463          	beqz	a5,80008598 <uartputc+0x10>
    80008594:	0000006f          	j	80008594 <uartputc+0xc>
    80008598:	fd010113          	addi	sp,sp,-48
    8000859c:	02813023          	sd	s0,32(sp)
    800085a0:	00913c23          	sd	s1,24(sp)
    800085a4:	01213823          	sd	s2,16(sp)
    800085a8:	01313423          	sd	s3,8(sp)
    800085ac:	02113423          	sd	ra,40(sp)
    800085b0:	03010413          	addi	s0,sp,48
    800085b4:	00005917          	auipc	s2,0x5
    800085b8:	99c90913          	addi	s2,s2,-1636 # 8000cf50 <uart_tx_r>
    800085bc:	00093783          	ld	a5,0(s2)
    800085c0:	00005497          	auipc	s1,0x5
    800085c4:	99848493          	addi	s1,s1,-1640 # 8000cf58 <uart_tx_w>
    800085c8:	0004b703          	ld	a4,0(s1)
    800085cc:	02078693          	addi	a3,a5,32
    800085d0:	00050993          	mv	s3,a0
    800085d4:	02e69c63          	bne	a3,a4,8000860c <uartputc+0x84>
    800085d8:	00001097          	auipc	ra,0x1
    800085dc:	834080e7          	jalr	-1996(ra) # 80008e0c <push_on>
    800085e0:	00093783          	ld	a5,0(s2)
    800085e4:	0004b703          	ld	a4,0(s1)
    800085e8:	02078793          	addi	a5,a5,32
    800085ec:	00e79463          	bne	a5,a4,800085f4 <uartputc+0x6c>
    800085f0:	0000006f          	j	800085f0 <uartputc+0x68>
    800085f4:	00001097          	auipc	ra,0x1
    800085f8:	88c080e7          	jalr	-1908(ra) # 80008e80 <pop_on>
    800085fc:	00093783          	ld	a5,0(s2)
    80008600:	0004b703          	ld	a4,0(s1)
    80008604:	02078693          	addi	a3,a5,32
    80008608:	fce688e3          	beq	a3,a4,800085d8 <uartputc+0x50>
    8000860c:	01f77693          	andi	a3,a4,31
    80008610:	00006597          	auipc	a1,0x6
    80008614:	cb058593          	addi	a1,a1,-848 # 8000e2c0 <uart_tx_buf>
    80008618:	00d586b3          	add	a3,a1,a3
    8000861c:	00170713          	addi	a4,a4,1
    80008620:	01368023          	sb	s3,0(a3)
    80008624:	00e4b023          	sd	a4,0(s1)
    80008628:	10000637          	lui	a2,0x10000
    8000862c:	02f71063          	bne	a4,a5,8000864c <uartputc+0xc4>
    80008630:	0340006f          	j	80008664 <uartputc+0xdc>
    80008634:	00074703          	lbu	a4,0(a4)
    80008638:	00f93023          	sd	a5,0(s2)
    8000863c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008640:	00093783          	ld	a5,0(s2)
    80008644:	0004b703          	ld	a4,0(s1)
    80008648:	00f70e63          	beq	a4,a5,80008664 <uartputc+0xdc>
    8000864c:	00564683          	lbu	a3,5(a2)
    80008650:	01f7f713          	andi	a4,a5,31
    80008654:	00e58733          	add	a4,a1,a4
    80008658:	0206f693          	andi	a3,a3,32
    8000865c:	00178793          	addi	a5,a5,1
    80008660:	fc069ae3          	bnez	a3,80008634 <uartputc+0xac>
    80008664:	02813083          	ld	ra,40(sp)
    80008668:	02013403          	ld	s0,32(sp)
    8000866c:	01813483          	ld	s1,24(sp)
    80008670:	01013903          	ld	s2,16(sp)
    80008674:	00813983          	ld	s3,8(sp)
    80008678:	03010113          	addi	sp,sp,48
    8000867c:	00008067          	ret

0000000080008680 <uartputc_sync>:
    80008680:	ff010113          	addi	sp,sp,-16
    80008684:	00813423          	sd	s0,8(sp)
    80008688:	01010413          	addi	s0,sp,16
    8000868c:	00005717          	auipc	a4,0x5
    80008690:	8bc72703          	lw	a4,-1860(a4) # 8000cf48 <panicked>
    80008694:	02071663          	bnez	a4,800086c0 <uartputc_sync+0x40>
    80008698:	00050793          	mv	a5,a0
    8000869c:	100006b7          	lui	a3,0x10000
    800086a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800086a4:	02077713          	andi	a4,a4,32
    800086a8:	fe070ce3          	beqz	a4,800086a0 <uartputc_sync+0x20>
    800086ac:	0ff7f793          	andi	a5,a5,255
    800086b0:	00f68023          	sb	a5,0(a3)
    800086b4:	00813403          	ld	s0,8(sp)
    800086b8:	01010113          	addi	sp,sp,16
    800086bc:	00008067          	ret
    800086c0:	0000006f          	j	800086c0 <uartputc_sync+0x40>

00000000800086c4 <uartstart>:
    800086c4:	ff010113          	addi	sp,sp,-16
    800086c8:	00813423          	sd	s0,8(sp)
    800086cc:	01010413          	addi	s0,sp,16
    800086d0:	00005617          	auipc	a2,0x5
    800086d4:	88060613          	addi	a2,a2,-1920 # 8000cf50 <uart_tx_r>
    800086d8:	00005517          	auipc	a0,0x5
    800086dc:	88050513          	addi	a0,a0,-1920 # 8000cf58 <uart_tx_w>
    800086e0:	00063783          	ld	a5,0(a2)
    800086e4:	00053703          	ld	a4,0(a0)
    800086e8:	04f70263          	beq	a4,a5,8000872c <uartstart+0x68>
    800086ec:	100005b7          	lui	a1,0x10000
    800086f0:	00006817          	auipc	a6,0x6
    800086f4:	bd080813          	addi	a6,a6,-1072 # 8000e2c0 <uart_tx_buf>
    800086f8:	01c0006f          	j	80008714 <uartstart+0x50>
    800086fc:	0006c703          	lbu	a4,0(a3)
    80008700:	00f63023          	sd	a5,0(a2)
    80008704:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008708:	00063783          	ld	a5,0(a2)
    8000870c:	00053703          	ld	a4,0(a0)
    80008710:	00f70e63          	beq	a4,a5,8000872c <uartstart+0x68>
    80008714:	01f7f713          	andi	a4,a5,31
    80008718:	00e806b3          	add	a3,a6,a4
    8000871c:	0055c703          	lbu	a4,5(a1)
    80008720:	00178793          	addi	a5,a5,1
    80008724:	02077713          	andi	a4,a4,32
    80008728:	fc071ae3          	bnez	a4,800086fc <uartstart+0x38>
    8000872c:	00813403          	ld	s0,8(sp)
    80008730:	01010113          	addi	sp,sp,16
    80008734:	00008067          	ret

0000000080008738 <uartgetc>:
    80008738:	ff010113          	addi	sp,sp,-16
    8000873c:	00813423          	sd	s0,8(sp)
    80008740:	01010413          	addi	s0,sp,16
    80008744:	10000737          	lui	a4,0x10000
    80008748:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000874c:	0017f793          	andi	a5,a5,1
    80008750:	00078c63          	beqz	a5,80008768 <uartgetc+0x30>
    80008754:	00074503          	lbu	a0,0(a4)
    80008758:	0ff57513          	andi	a0,a0,255
    8000875c:	00813403          	ld	s0,8(sp)
    80008760:	01010113          	addi	sp,sp,16
    80008764:	00008067          	ret
    80008768:	fff00513          	li	a0,-1
    8000876c:	ff1ff06f          	j	8000875c <uartgetc+0x24>

0000000080008770 <uartintr>:
    80008770:	100007b7          	lui	a5,0x10000
    80008774:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008778:	0017f793          	andi	a5,a5,1
    8000877c:	0a078463          	beqz	a5,80008824 <uartintr+0xb4>
    80008780:	fe010113          	addi	sp,sp,-32
    80008784:	00813823          	sd	s0,16(sp)
    80008788:	00913423          	sd	s1,8(sp)
    8000878c:	00113c23          	sd	ra,24(sp)
    80008790:	02010413          	addi	s0,sp,32
    80008794:	100004b7          	lui	s1,0x10000
    80008798:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000879c:	0ff57513          	andi	a0,a0,255
    800087a0:	fffff097          	auipc	ra,0xfffff
    800087a4:	534080e7          	jalr	1332(ra) # 80007cd4 <consoleintr>
    800087a8:	0054c783          	lbu	a5,5(s1)
    800087ac:	0017f793          	andi	a5,a5,1
    800087b0:	fe0794e3          	bnez	a5,80008798 <uartintr+0x28>
    800087b4:	00004617          	auipc	a2,0x4
    800087b8:	79c60613          	addi	a2,a2,1948 # 8000cf50 <uart_tx_r>
    800087bc:	00004517          	auipc	a0,0x4
    800087c0:	79c50513          	addi	a0,a0,1948 # 8000cf58 <uart_tx_w>
    800087c4:	00063783          	ld	a5,0(a2)
    800087c8:	00053703          	ld	a4,0(a0)
    800087cc:	04f70263          	beq	a4,a5,80008810 <uartintr+0xa0>
    800087d0:	100005b7          	lui	a1,0x10000
    800087d4:	00006817          	auipc	a6,0x6
    800087d8:	aec80813          	addi	a6,a6,-1300 # 8000e2c0 <uart_tx_buf>
    800087dc:	01c0006f          	j	800087f8 <uartintr+0x88>
    800087e0:	0006c703          	lbu	a4,0(a3)
    800087e4:	00f63023          	sd	a5,0(a2)
    800087e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800087ec:	00063783          	ld	a5,0(a2)
    800087f0:	00053703          	ld	a4,0(a0)
    800087f4:	00f70e63          	beq	a4,a5,80008810 <uartintr+0xa0>
    800087f8:	01f7f713          	andi	a4,a5,31
    800087fc:	00e806b3          	add	a3,a6,a4
    80008800:	0055c703          	lbu	a4,5(a1)
    80008804:	00178793          	addi	a5,a5,1
    80008808:	02077713          	andi	a4,a4,32
    8000880c:	fc071ae3          	bnez	a4,800087e0 <uartintr+0x70>
    80008810:	01813083          	ld	ra,24(sp)
    80008814:	01013403          	ld	s0,16(sp)
    80008818:	00813483          	ld	s1,8(sp)
    8000881c:	02010113          	addi	sp,sp,32
    80008820:	00008067          	ret
    80008824:	00004617          	auipc	a2,0x4
    80008828:	72c60613          	addi	a2,a2,1836 # 8000cf50 <uart_tx_r>
    8000882c:	00004517          	auipc	a0,0x4
    80008830:	72c50513          	addi	a0,a0,1836 # 8000cf58 <uart_tx_w>
    80008834:	00063783          	ld	a5,0(a2)
    80008838:	00053703          	ld	a4,0(a0)
    8000883c:	04f70263          	beq	a4,a5,80008880 <uartintr+0x110>
    80008840:	100005b7          	lui	a1,0x10000
    80008844:	00006817          	auipc	a6,0x6
    80008848:	a7c80813          	addi	a6,a6,-1412 # 8000e2c0 <uart_tx_buf>
    8000884c:	01c0006f          	j	80008868 <uartintr+0xf8>
    80008850:	0006c703          	lbu	a4,0(a3)
    80008854:	00f63023          	sd	a5,0(a2)
    80008858:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000885c:	00063783          	ld	a5,0(a2)
    80008860:	00053703          	ld	a4,0(a0)
    80008864:	02f70063          	beq	a4,a5,80008884 <uartintr+0x114>
    80008868:	01f7f713          	andi	a4,a5,31
    8000886c:	00e806b3          	add	a3,a6,a4
    80008870:	0055c703          	lbu	a4,5(a1)
    80008874:	00178793          	addi	a5,a5,1
    80008878:	02077713          	andi	a4,a4,32
    8000887c:	fc071ae3          	bnez	a4,80008850 <uartintr+0xe0>
    80008880:	00008067          	ret
    80008884:	00008067          	ret

0000000080008888 <kinit>:
    80008888:	fc010113          	addi	sp,sp,-64
    8000888c:	02913423          	sd	s1,40(sp)
    80008890:	fffff7b7          	lui	a5,0xfffff
    80008894:	00007497          	auipc	s1,0x7
    80008898:	a4b48493          	addi	s1,s1,-1461 # 8000f2df <end+0xfff>
    8000889c:	02813823          	sd	s0,48(sp)
    800088a0:	01313c23          	sd	s3,24(sp)
    800088a4:	00f4f4b3          	and	s1,s1,a5
    800088a8:	02113c23          	sd	ra,56(sp)
    800088ac:	03213023          	sd	s2,32(sp)
    800088b0:	01413823          	sd	s4,16(sp)
    800088b4:	01513423          	sd	s5,8(sp)
    800088b8:	04010413          	addi	s0,sp,64
    800088bc:	000017b7          	lui	a5,0x1
    800088c0:	01100993          	li	s3,17
    800088c4:	00f487b3          	add	a5,s1,a5
    800088c8:	01b99993          	slli	s3,s3,0x1b
    800088cc:	06f9e063          	bltu	s3,a5,8000892c <kinit+0xa4>
    800088d0:	00006a97          	auipc	s5,0x6
    800088d4:	a10a8a93          	addi	s5,s5,-1520 # 8000e2e0 <end>
    800088d8:	0754ec63          	bltu	s1,s5,80008950 <kinit+0xc8>
    800088dc:	0734fa63          	bgeu	s1,s3,80008950 <kinit+0xc8>
    800088e0:	00088a37          	lui	s4,0x88
    800088e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800088e8:	00004917          	auipc	s2,0x4
    800088ec:	67890913          	addi	s2,s2,1656 # 8000cf60 <kmem>
    800088f0:	00ca1a13          	slli	s4,s4,0xc
    800088f4:	0140006f          	j	80008908 <kinit+0x80>
    800088f8:	000017b7          	lui	a5,0x1
    800088fc:	00f484b3          	add	s1,s1,a5
    80008900:	0554e863          	bltu	s1,s5,80008950 <kinit+0xc8>
    80008904:	0534f663          	bgeu	s1,s3,80008950 <kinit+0xc8>
    80008908:	00001637          	lui	a2,0x1
    8000890c:	00100593          	li	a1,1
    80008910:	00048513          	mv	a0,s1
    80008914:	00000097          	auipc	ra,0x0
    80008918:	5e4080e7          	jalr	1508(ra) # 80008ef8 <__memset>
    8000891c:	00093783          	ld	a5,0(s2)
    80008920:	00f4b023          	sd	a5,0(s1)
    80008924:	00993023          	sd	s1,0(s2)
    80008928:	fd4498e3          	bne	s1,s4,800088f8 <kinit+0x70>
    8000892c:	03813083          	ld	ra,56(sp)
    80008930:	03013403          	ld	s0,48(sp)
    80008934:	02813483          	ld	s1,40(sp)
    80008938:	02013903          	ld	s2,32(sp)
    8000893c:	01813983          	ld	s3,24(sp)
    80008940:	01013a03          	ld	s4,16(sp)
    80008944:	00813a83          	ld	s5,8(sp)
    80008948:	04010113          	addi	sp,sp,64
    8000894c:	00008067          	ret
    80008950:	00002517          	auipc	a0,0x2
    80008954:	df050513          	addi	a0,a0,-528 # 8000a740 <digits+0x18>
    80008958:	fffff097          	auipc	ra,0xfffff
    8000895c:	4b4080e7          	jalr	1204(ra) # 80007e0c <panic>

0000000080008960 <freerange>:
    80008960:	fc010113          	addi	sp,sp,-64
    80008964:	000017b7          	lui	a5,0x1
    80008968:	02913423          	sd	s1,40(sp)
    8000896c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008970:	009504b3          	add	s1,a0,s1
    80008974:	fffff537          	lui	a0,0xfffff
    80008978:	02813823          	sd	s0,48(sp)
    8000897c:	02113c23          	sd	ra,56(sp)
    80008980:	03213023          	sd	s2,32(sp)
    80008984:	01313c23          	sd	s3,24(sp)
    80008988:	01413823          	sd	s4,16(sp)
    8000898c:	01513423          	sd	s5,8(sp)
    80008990:	01613023          	sd	s6,0(sp)
    80008994:	04010413          	addi	s0,sp,64
    80008998:	00a4f4b3          	and	s1,s1,a0
    8000899c:	00f487b3          	add	a5,s1,a5
    800089a0:	06f5e463          	bltu	a1,a5,80008a08 <freerange+0xa8>
    800089a4:	00006a97          	auipc	s5,0x6
    800089a8:	93ca8a93          	addi	s5,s5,-1732 # 8000e2e0 <end>
    800089ac:	0954e263          	bltu	s1,s5,80008a30 <freerange+0xd0>
    800089b0:	01100993          	li	s3,17
    800089b4:	01b99993          	slli	s3,s3,0x1b
    800089b8:	0734fc63          	bgeu	s1,s3,80008a30 <freerange+0xd0>
    800089bc:	00058a13          	mv	s4,a1
    800089c0:	00004917          	auipc	s2,0x4
    800089c4:	5a090913          	addi	s2,s2,1440 # 8000cf60 <kmem>
    800089c8:	00002b37          	lui	s6,0x2
    800089cc:	0140006f          	j	800089e0 <freerange+0x80>
    800089d0:	000017b7          	lui	a5,0x1
    800089d4:	00f484b3          	add	s1,s1,a5
    800089d8:	0554ec63          	bltu	s1,s5,80008a30 <freerange+0xd0>
    800089dc:	0534fa63          	bgeu	s1,s3,80008a30 <freerange+0xd0>
    800089e0:	00001637          	lui	a2,0x1
    800089e4:	00100593          	li	a1,1
    800089e8:	00048513          	mv	a0,s1
    800089ec:	00000097          	auipc	ra,0x0
    800089f0:	50c080e7          	jalr	1292(ra) # 80008ef8 <__memset>
    800089f4:	00093703          	ld	a4,0(s2)
    800089f8:	016487b3          	add	a5,s1,s6
    800089fc:	00e4b023          	sd	a4,0(s1)
    80008a00:	00993023          	sd	s1,0(s2)
    80008a04:	fcfa76e3          	bgeu	s4,a5,800089d0 <freerange+0x70>
    80008a08:	03813083          	ld	ra,56(sp)
    80008a0c:	03013403          	ld	s0,48(sp)
    80008a10:	02813483          	ld	s1,40(sp)
    80008a14:	02013903          	ld	s2,32(sp)
    80008a18:	01813983          	ld	s3,24(sp)
    80008a1c:	01013a03          	ld	s4,16(sp)
    80008a20:	00813a83          	ld	s5,8(sp)
    80008a24:	00013b03          	ld	s6,0(sp)
    80008a28:	04010113          	addi	sp,sp,64
    80008a2c:	00008067          	ret
    80008a30:	00002517          	auipc	a0,0x2
    80008a34:	d1050513          	addi	a0,a0,-752 # 8000a740 <digits+0x18>
    80008a38:	fffff097          	auipc	ra,0xfffff
    80008a3c:	3d4080e7          	jalr	980(ra) # 80007e0c <panic>

0000000080008a40 <kfree>:
    80008a40:	fe010113          	addi	sp,sp,-32
    80008a44:	00813823          	sd	s0,16(sp)
    80008a48:	00113c23          	sd	ra,24(sp)
    80008a4c:	00913423          	sd	s1,8(sp)
    80008a50:	02010413          	addi	s0,sp,32
    80008a54:	03451793          	slli	a5,a0,0x34
    80008a58:	04079c63          	bnez	a5,80008ab0 <kfree+0x70>
    80008a5c:	00006797          	auipc	a5,0x6
    80008a60:	88478793          	addi	a5,a5,-1916 # 8000e2e0 <end>
    80008a64:	00050493          	mv	s1,a0
    80008a68:	04f56463          	bltu	a0,a5,80008ab0 <kfree+0x70>
    80008a6c:	01100793          	li	a5,17
    80008a70:	01b79793          	slli	a5,a5,0x1b
    80008a74:	02f57e63          	bgeu	a0,a5,80008ab0 <kfree+0x70>
    80008a78:	00001637          	lui	a2,0x1
    80008a7c:	00100593          	li	a1,1
    80008a80:	00000097          	auipc	ra,0x0
    80008a84:	478080e7          	jalr	1144(ra) # 80008ef8 <__memset>
    80008a88:	00004797          	auipc	a5,0x4
    80008a8c:	4d878793          	addi	a5,a5,1240 # 8000cf60 <kmem>
    80008a90:	0007b703          	ld	a4,0(a5)
    80008a94:	01813083          	ld	ra,24(sp)
    80008a98:	01013403          	ld	s0,16(sp)
    80008a9c:	00e4b023          	sd	a4,0(s1)
    80008aa0:	0097b023          	sd	s1,0(a5)
    80008aa4:	00813483          	ld	s1,8(sp)
    80008aa8:	02010113          	addi	sp,sp,32
    80008aac:	00008067          	ret
    80008ab0:	00002517          	auipc	a0,0x2
    80008ab4:	c9050513          	addi	a0,a0,-880 # 8000a740 <digits+0x18>
    80008ab8:	fffff097          	auipc	ra,0xfffff
    80008abc:	354080e7          	jalr	852(ra) # 80007e0c <panic>

0000000080008ac0 <kalloc>:
    80008ac0:	fe010113          	addi	sp,sp,-32
    80008ac4:	00813823          	sd	s0,16(sp)
    80008ac8:	00913423          	sd	s1,8(sp)
    80008acc:	00113c23          	sd	ra,24(sp)
    80008ad0:	02010413          	addi	s0,sp,32
    80008ad4:	00004797          	auipc	a5,0x4
    80008ad8:	48c78793          	addi	a5,a5,1164 # 8000cf60 <kmem>
    80008adc:	0007b483          	ld	s1,0(a5)
    80008ae0:	02048063          	beqz	s1,80008b00 <kalloc+0x40>
    80008ae4:	0004b703          	ld	a4,0(s1)
    80008ae8:	00001637          	lui	a2,0x1
    80008aec:	00500593          	li	a1,5
    80008af0:	00048513          	mv	a0,s1
    80008af4:	00e7b023          	sd	a4,0(a5)
    80008af8:	00000097          	auipc	ra,0x0
    80008afc:	400080e7          	jalr	1024(ra) # 80008ef8 <__memset>
    80008b00:	01813083          	ld	ra,24(sp)
    80008b04:	01013403          	ld	s0,16(sp)
    80008b08:	00048513          	mv	a0,s1
    80008b0c:	00813483          	ld	s1,8(sp)
    80008b10:	02010113          	addi	sp,sp,32
    80008b14:	00008067          	ret

0000000080008b18 <initlock>:
    80008b18:	ff010113          	addi	sp,sp,-16
    80008b1c:	00813423          	sd	s0,8(sp)
    80008b20:	01010413          	addi	s0,sp,16
    80008b24:	00813403          	ld	s0,8(sp)
    80008b28:	00b53423          	sd	a1,8(a0)
    80008b2c:	00052023          	sw	zero,0(a0)
    80008b30:	00053823          	sd	zero,16(a0)
    80008b34:	01010113          	addi	sp,sp,16
    80008b38:	00008067          	ret

0000000080008b3c <acquire>:
    80008b3c:	fe010113          	addi	sp,sp,-32
    80008b40:	00813823          	sd	s0,16(sp)
    80008b44:	00913423          	sd	s1,8(sp)
    80008b48:	00113c23          	sd	ra,24(sp)
    80008b4c:	01213023          	sd	s2,0(sp)
    80008b50:	02010413          	addi	s0,sp,32
    80008b54:	00050493          	mv	s1,a0
    80008b58:	10002973          	csrr	s2,sstatus
    80008b5c:	100027f3          	csrr	a5,sstatus
    80008b60:	ffd7f793          	andi	a5,a5,-3
    80008b64:	10079073          	csrw	sstatus,a5
    80008b68:	fffff097          	auipc	ra,0xfffff
    80008b6c:	8e4080e7          	jalr	-1820(ra) # 8000744c <mycpu>
    80008b70:	07852783          	lw	a5,120(a0)
    80008b74:	06078e63          	beqz	a5,80008bf0 <acquire+0xb4>
    80008b78:	fffff097          	auipc	ra,0xfffff
    80008b7c:	8d4080e7          	jalr	-1836(ra) # 8000744c <mycpu>
    80008b80:	07852783          	lw	a5,120(a0)
    80008b84:	0004a703          	lw	a4,0(s1)
    80008b88:	0017879b          	addiw	a5,a5,1
    80008b8c:	06f52c23          	sw	a5,120(a0)
    80008b90:	04071063          	bnez	a4,80008bd0 <acquire+0x94>
    80008b94:	00100713          	li	a4,1
    80008b98:	00070793          	mv	a5,a4
    80008b9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008ba0:	0007879b          	sext.w	a5,a5
    80008ba4:	fe079ae3          	bnez	a5,80008b98 <acquire+0x5c>
    80008ba8:	0ff0000f          	fence
    80008bac:	fffff097          	auipc	ra,0xfffff
    80008bb0:	8a0080e7          	jalr	-1888(ra) # 8000744c <mycpu>
    80008bb4:	01813083          	ld	ra,24(sp)
    80008bb8:	01013403          	ld	s0,16(sp)
    80008bbc:	00a4b823          	sd	a0,16(s1)
    80008bc0:	00013903          	ld	s2,0(sp)
    80008bc4:	00813483          	ld	s1,8(sp)
    80008bc8:	02010113          	addi	sp,sp,32
    80008bcc:	00008067          	ret
    80008bd0:	0104b903          	ld	s2,16(s1)
    80008bd4:	fffff097          	auipc	ra,0xfffff
    80008bd8:	878080e7          	jalr	-1928(ra) # 8000744c <mycpu>
    80008bdc:	faa91ce3          	bne	s2,a0,80008b94 <acquire+0x58>
    80008be0:	00002517          	auipc	a0,0x2
    80008be4:	b6850513          	addi	a0,a0,-1176 # 8000a748 <digits+0x20>
    80008be8:	fffff097          	auipc	ra,0xfffff
    80008bec:	224080e7          	jalr	548(ra) # 80007e0c <panic>
    80008bf0:	00195913          	srli	s2,s2,0x1
    80008bf4:	fffff097          	auipc	ra,0xfffff
    80008bf8:	858080e7          	jalr	-1960(ra) # 8000744c <mycpu>
    80008bfc:	00197913          	andi	s2,s2,1
    80008c00:	07252e23          	sw	s2,124(a0)
    80008c04:	f75ff06f          	j	80008b78 <acquire+0x3c>

0000000080008c08 <release>:
    80008c08:	fe010113          	addi	sp,sp,-32
    80008c0c:	00813823          	sd	s0,16(sp)
    80008c10:	00113c23          	sd	ra,24(sp)
    80008c14:	00913423          	sd	s1,8(sp)
    80008c18:	01213023          	sd	s2,0(sp)
    80008c1c:	02010413          	addi	s0,sp,32
    80008c20:	00052783          	lw	a5,0(a0)
    80008c24:	00079a63          	bnez	a5,80008c38 <release+0x30>
    80008c28:	00002517          	auipc	a0,0x2
    80008c2c:	b2850513          	addi	a0,a0,-1240 # 8000a750 <digits+0x28>
    80008c30:	fffff097          	auipc	ra,0xfffff
    80008c34:	1dc080e7          	jalr	476(ra) # 80007e0c <panic>
    80008c38:	01053903          	ld	s2,16(a0)
    80008c3c:	00050493          	mv	s1,a0
    80008c40:	fffff097          	auipc	ra,0xfffff
    80008c44:	80c080e7          	jalr	-2036(ra) # 8000744c <mycpu>
    80008c48:	fea910e3          	bne	s2,a0,80008c28 <release+0x20>
    80008c4c:	0004b823          	sd	zero,16(s1)
    80008c50:	0ff0000f          	fence
    80008c54:	0f50000f          	fence	iorw,ow
    80008c58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008c5c:	ffffe097          	auipc	ra,0xffffe
    80008c60:	7f0080e7          	jalr	2032(ra) # 8000744c <mycpu>
    80008c64:	100027f3          	csrr	a5,sstatus
    80008c68:	0027f793          	andi	a5,a5,2
    80008c6c:	04079a63          	bnez	a5,80008cc0 <release+0xb8>
    80008c70:	07852783          	lw	a5,120(a0)
    80008c74:	02f05e63          	blez	a5,80008cb0 <release+0xa8>
    80008c78:	fff7871b          	addiw	a4,a5,-1
    80008c7c:	06e52c23          	sw	a4,120(a0)
    80008c80:	00071c63          	bnez	a4,80008c98 <release+0x90>
    80008c84:	07c52783          	lw	a5,124(a0)
    80008c88:	00078863          	beqz	a5,80008c98 <release+0x90>
    80008c8c:	100027f3          	csrr	a5,sstatus
    80008c90:	0027e793          	ori	a5,a5,2
    80008c94:	10079073          	csrw	sstatus,a5
    80008c98:	01813083          	ld	ra,24(sp)
    80008c9c:	01013403          	ld	s0,16(sp)
    80008ca0:	00813483          	ld	s1,8(sp)
    80008ca4:	00013903          	ld	s2,0(sp)
    80008ca8:	02010113          	addi	sp,sp,32
    80008cac:	00008067          	ret
    80008cb0:	00002517          	auipc	a0,0x2
    80008cb4:	ac050513          	addi	a0,a0,-1344 # 8000a770 <digits+0x48>
    80008cb8:	fffff097          	auipc	ra,0xfffff
    80008cbc:	154080e7          	jalr	340(ra) # 80007e0c <panic>
    80008cc0:	00002517          	auipc	a0,0x2
    80008cc4:	a9850513          	addi	a0,a0,-1384 # 8000a758 <digits+0x30>
    80008cc8:	fffff097          	auipc	ra,0xfffff
    80008ccc:	144080e7          	jalr	324(ra) # 80007e0c <panic>

0000000080008cd0 <holding>:
    80008cd0:	00052783          	lw	a5,0(a0)
    80008cd4:	00079663          	bnez	a5,80008ce0 <holding+0x10>
    80008cd8:	00000513          	li	a0,0
    80008cdc:	00008067          	ret
    80008ce0:	fe010113          	addi	sp,sp,-32
    80008ce4:	00813823          	sd	s0,16(sp)
    80008ce8:	00913423          	sd	s1,8(sp)
    80008cec:	00113c23          	sd	ra,24(sp)
    80008cf0:	02010413          	addi	s0,sp,32
    80008cf4:	01053483          	ld	s1,16(a0)
    80008cf8:	ffffe097          	auipc	ra,0xffffe
    80008cfc:	754080e7          	jalr	1876(ra) # 8000744c <mycpu>
    80008d00:	01813083          	ld	ra,24(sp)
    80008d04:	01013403          	ld	s0,16(sp)
    80008d08:	40a48533          	sub	a0,s1,a0
    80008d0c:	00153513          	seqz	a0,a0
    80008d10:	00813483          	ld	s1,8(sp)
    80008d14:	02010113          	addi	sp,sp,32
    80008d18:	00008067          	ret

0000000080008d1c <push_off>:
    80008d1c:	fe010113          	addi	sp,sp,-32
    80008d20:	00813823          	sd	s0,16(sp)
    80008d24:	00113c23          	sd	ra,24(sp)
    80008d28:	00913423          	sd	s1,8(sp)
    80008d2c:	02010413          	addi	s0,sp,32
    80008d30:	100024f3          	csrr	s1,sstatus
    80008d34:	100027f3          	csrr	a5,sstatus
    80008d38:	ffd7f793          	andi	a5,a5,-3
    80008d3c:	10079073          	csrw	sstatus,a5
    80008d40:	ffffe097          	auipc	ra,0xffffe
    80008d44:	70c080e7          	jalr	1804(ra) # 8000744c <mycpu>
    80008d48:	07852783          	lw	a5,120(a0)
    80008d4c:	02078663          	beqz	a5,80008d78 <push_off+0x5c>
    80008d50:	ffffe097          	auipc	ra,0xffffe
    80008d54:	6fc080e7          	jalr	1788(ra) # 8000744c <mycpu>
    80008d58:	07852783          	lw	a5,120(a0)
    80008d5c:	01813083          	ld	ra,24(sp)
    80008d60:	01013403          	ld	s0,16(sp)
    80008d64:	0017879b          	addiw	a5,a5,1
    80008d68:	06f52c23          	sw	a5,120(a0)
    80008d6c:	00813483          	ld	s1,8(sp)
    80008d70:	02010113          	addi	sp,sp,32
    80008d74:	00008067          	ret
    80008d78:	0014d493          	srli	s1,s1,0x1
    80008d7c:	ffffe097          	auipc	ra,0xffffe
    80008d80:	6d0080e7          	jalr	1744(ra) # 8000744c <mycpu>
    80008d84:	0014f493          	andi	s1,s1,1
    80008d88:	06952e23          	sw	s1,124(a0)
    80008d8c:	fc5ff06f          	j	80008d50 <push_off+0x34>

0000000080008d90 <pop_off>:
    80008d90:	ff010113          	addi	sp,sp,-16
    80008d94:	00813023          	sd	s0,0(sp)
    80008d98:	00113423          	sd	ra,8(sp)
    80008d9c:	01010413          	addi	s0,sp,16
    80008da0:	ffffe097          	auipc	ra,0xffffe
    80008da4:	6ac080e7          	jalr	1708(ra) # 8000744c <mycpu>
    80008da8:	100027f3          	csrr	a5,sstatus
    80008dac:	0027f793          	andi	a5,a5,2
    80008db0:	04079663          	bnez	a5,80008dfc <pop_off+0x6c>
    80008db4:	07852783          	lw	a5,120(a0)
    80008db8:	02f05a63          	blez	a5,80008dec <pop_off+0x5c>
    80008dbc:	fff7871b          	addiw	a4,a5,-1
    80008dc0:	06e52c23          	sw	a4,120(a0)
    80008dc4:	00071c63          	bnez	a4,80008ddc <pop_off+0x4c>
    80008dc8:	07c52783          	lw	a5,124(a0)
    80008dcc:	00078863          	beqz	a5,80008ddc <pop_off+0x4c>
    80008dd0:	100027f3          	csrr	a5,sstatus
    80008dd4:	0027e793          	ori	a5,a5,2
    80008dd8:	10079073          	csrw	sstatus,a5
    80008ddc:	00813083          	ld	ra,8(sp)
    80008de0:	00013403          	ld	s0,0(sp)
    80008de4:	01010113          	addi	sp,sp,16
    80008de8:	00008067          	ret
    80008dec:	00002517          	auipc	a0,0x2
    80008df0:	98450513          	addi	a0,a0,-1660 # 8000a770 <digits+0x48>
    80008df4:	fffff097          	auipc	ra,0xfffff
    80008df8:	018080e7          	jalr	24(ra) # 80007e0c <panic>
    80008dfc:	00002517          	auipc	a0,0x2
    80008e00:	95c50513          	addi	a0,a0,-1700 # 8000a758 <digits+0x30>
    80008e04:	fffff097          	auipc	ra,0xfffff
    80008e08:	008080e7          	jalr	8(ra) # 80007e0c <panic>

0000000080008e0c <push_on>:
    80008e0c:	fe010113          	addi	sp,sp,-32
    80008e10:	00813823          	sd	s0,16(sp)
    80008e14:	00113c23          	sd	ra,24(sp)
    80008e18:	00913423          	sd	s1,8(sp)
    80008e1c:	02010413          	addi	s0,sp,32
    80008e20:	100024f3          	csrr	s1,sstatus
    80008e24:	100027f3          	csrr	a5,sstatus
    80008e28:	0027e793          	ori	a5,a5,2
    80008e2c:	10079073          	csrw	sstatus,a5
    80008e30:	ffffe097          	auipc	ra,0xffffe
    80008e34:	61c080e7          	jalr	1564(ra) # 8000744c <mycpu>
    80008e38:	07852783          	lw	a5,120(a0)
    80008e3c:	02078663          	beqz	a5,80008e68 <push_on+0x5c>
    80008e40:	ffffe097          	auipc	ra,0xffffe
    80008e44:	60c080e7          	jalr	1548(ra) # 8000744c <mycpu>
    80008e48:	07852783          	lw	a5,120(a0)
    80008e4c:	01813083          	ld	ra,24(sp)
    80008e50:	01013403          	ld	s0,16(sp)
    80008e54:	0017879b          	addiw	a5,a5,1
    80008e58:	06f52c23          	sw	a5,120(a0)
    80008e5c:	00813483          	ld	s1,8(sp)
    80008e60:	02010113          	addi	sp,sp,32
    80008e64:	00008067          	ret
    80008e68:	0014d493          	srli	s1,s1,0x1
    80008e6c:	ffffe097          	auipc	ra,0xffffe
    80008e70:	5e0080e7          	jalr	1504(ra) # 8000744c <mycpu>
    80008e74:	0014f493          	andi	s1,s1,1
    80008e78:	06952e23          	sw	s1,124(a0)
    80008e7c:	fc5ff06f          	j	80008e40 <push_on+0x34>

0000000080008e80 <pop_on>:
    80008e80:	ff010113          	addi	sp,sp,-16
    80008e84:	00813023          	sd	s0,0(sp)
    80008e88:	00113423          	sd	ra,8(sp)
    80008e8c:	01010413          	addi	s0,sp,16
    80008e90:	ffffe097          	auipc	ra,0xffffe
    80008e94:	5bc080e7          	jalr	1468(ra) # 8000744c <mycpu>
    80008e98:	100027f3          	csrr	a5,sstatus
    80008e9c:	0027f793          	andi	a5,a5,2
    80008ea0:	04078463          	beqz	a5,80008ee8 <pop_on+0x68>
    80008ea4:	07852783          	lw	a5,120(a0)
    80008ea8:	02f05863          	blez	a5,80008ed8 <pop_on+0x58>
    80008eac:	fff7879b          	addiw	a5,a5,-1
    80008eb0:	06f52c23          	sw	a5,120(a0)
    80008eb4:	07853783          	ld	a5,120(a0)
    80008eb8:	00079863          	bnez	a5,80008ec8 <pop_on+0x48>
    80008ebc:	100027f3          	csrr	a5,sstatus
    80008ec0:	ffd7f793          	andi	a5,a5,-3
    80008ec4:	10079073          	csrw	sstatus,a5
    80008ec8:	00813083          	ld	ra,8(sp)
    80008ecc:	00013403          	ld	s0,0(sp)
    80008ed0:	01010113          	addi	sp,sp,16
    80008ed4:	00008067          	ret
    80008ed8:	00002517          	auipc	a0,0x2
    80008edc:	8c050513          	addi	a0,a0,-1856 # 8000a798 <digits+0x70>
    80008ee0:	fffff097          	auipc	ra,0xfffff
    80008ee4:	f2c080e7          	jalr	-212(ra) # 80007e0c <panic>
    80008ee8:	00002517          	auipc	a0,0x2
    80008eec:	89050513          	addi	a0,a0,-1904 # 8000a778 <digits+0x50>
    80008ef0:	fffff097          	auipc	ra,0xfffff
    80008ef4:	f1c080e7          	jalr	-228(ra) # 80007e0c <panic>

0000000080008ef8 <__memset>:
    80008ef8:	ff010113          	addi	sp,sp,-16
    80008efc:	00813423          	sd	s0,8(sp)
    80008f00:	01010413          	addi	s0,sp,16
    80008f04:	1a060e63          	beqz	a2,800090c0 <__memset+0x1c8>
    80008f08:	40a007b3          	neg	a5,a0
    80008f0c:	0077f793          	andi	a5,a5,7
    80008f10:	00778693          	addi	a3,a5,7
    80008f14:	00b00813          	li	a6,11
    80008f18:	0ff5f593          	andi	a1,a1,255
    80008f1c:	fff6071b          	addiw	a4,a2,-1
    80008f20:	1b06e663          	bltu	a3,a6,800090cc <__memset+0x1d4>
    80008f24:	1cd76463          	bltu	a4,a3,800090ec <__memset+0x1f4>
    80008f28:	1a078e63          	beqz	a5,800090e4 <__memset+0x1ec>
    80008f2c:	00b50023          	sb	a1,0(a0)
    80008f30:	00100713          	li	a4,1
    80008f34:	1ae78463          	beq	a5,a4,800090dc <__memset+0x1e4>
    80008f38:	00b500a3          	sb	a1,1(a0)
    80008f3c:	00200713          	li	a4,2
    80008f40:	1ae78a63          	beq	a5,a4,800090f4 <__memset+0x1fc>
    80008f44:	00b50123          	sb	a1,2(a0)
    80008f48:	00300713          	li	a4,3
    80008f4c:	18e78463          	beq	a5,a4,800090d4 <__memset+0x1dc>
    80008f50:	00b501a3          	sb	a1,3(a0)
    80008f54:	00400713          	li	a4,4
    80008f58:	1ae78263          	beq	a5,a4,800090fc <__memset+0x204>
    80008f5c:	00b50223          	sb	a1,4(a0)
    80008f60:	00500713          	li	a4,5
    80008f64:	1ae78063          	beq	a5,a4,80009104 <__memset+0x20c>
    80008f68:	00b502a3          	sb	a1,5(a0)
    80008f6c:	00700713          	li	a4,7
    80008f70:	18e79e63          	bne	a5,a4,8000910c <__memset+0x214>
    80008f74:	00b50323          	sb	a1,6(a0)
    80008f78:	00700e93          	li	t4,7
    80008f7c:	00859713          	slli	a4,a1,0x8
    80008f80:	00e5e733          	or	a4,a1,a4
    80008f84:	01059e13          	slli	t3,a1,0x10
    80008f88:	01c76e33          	or	t3,a4,t3
    80008f8c:	01859313          	slli	t1,a1,0x18
    80008f90:	006e6333          	or	t1,t3,t1
    80008f94:	02059893          	slli	a7,a1,0x20
    80008f98:	40f60e3b          	subw	t3,a2,a5
    80008f9c:	011368b3          	or	a7,t1,a7
    80008fa0:	02859813          	slli	a6,a1,0x28
    80008fa4:	0108e833          	or	a6,a7,a6
    80008fa8:	03059693          	slli	a3,a1,0x30
    80008fac:	003e589b          	srliw	a7,t3,0x3
    80008fb0:	00d866b3          	or	a3,a6,a3
    80008fb4:	03859713          	slli	a4,a1,0x38
    80008fb8:	00389813          	slli	a6,a7,0x3
    80008fbc:	00f507b3          	add	a5,a0,a5
    80008fc0:	00e6e733          	or	a4,a3,a4
    80008fc4:	000e089b          	sext.w	a7,t3
    80008fc8:	00f806b3          	add	a3,a6,a5
    80008fcc:	00e7b023          	sd	a4,0(a5)
    80008fd0:	00878793          	addi	a5,a5,8
    80008fd4:	fed79ce3          	bne	a5,a3,80008fcc <__memset+0xd4>
    80008fd8:	ff8e7793          	andi	a5,t3,-8
    80008fdc:	0007871b          	sext.w	a4,a5
    80008fe0:	01d787bb          	addw	a5,a5,t4
    80008fe4:	0ce88e63          	beq	a7,a4,800090c0 <__memset+0x1c8>
    80008fe8:	00f50733          	add	a4,a0,a5
    80008fec:	00b70023          	sb	a1,0(a4)
    80008ff0:	0017871b          	addiw	a4,a5,1
    80008ff4:	0cc77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80008ff8:	00e50733          	add	a4,a0,a4
    80008ffc:	00b70023          	sb	a1,0(a4)
    80009000:	0027871b          	addiw	a4,a5,2
    80009004:	0ac77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009008:	00e50733          	add	a4,a0,a4
    8000900c:	00b70023          	sb	a1,0(a4)
    80009010:	0037871b          	addiw	a4,a5,3
    80009014:	0ac77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009018:	00e50733          	add	a4,a0,a4
    8000901c:	00b70023          	sb	a1,0(a4)
    80009020:	0047871b          	addiw	a4,a5,4
    80009024:	08c77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009028:	00e50733          	add	a4,a0,a4
    8000902c:	00b70023          	sb	a1,0(a4)
    80009030:	0057871b          	addiw	a4,a5,5
    80009034:	08c77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009038:	00e50733          	add	a4,a0,a4
    8000903c:	00b70023          	sb	a1,0(a4)
    80009040:	0067871b          	addiw	a4,a5,6
    80009044:	06c77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009048:	00e50733          	add	a4,a0,a4
    8000904c:	00b70023          	sb	a1,0(a4)
    80009050:	0077871b          	addiw	a4,a5,7
    80009054:	06c77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009058:	00e50733          	add	a4,a0,a4
    8000905c:	00b70023          	sb	a1,0(a4)
    80009060:	0087871b          	addiw	a4,a5,8
    80009064:	04c77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009068:	00e50733          	add	a4,a0,a4
    8000906c:	00b70023          	sb	a1,0(a4)
    80009070:	0097871b          	addiw	a4,a5,9
    80009074:	04c77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009078:	00e50733          	add	a4,a0,a4
    8000907c:	00b70023          	sb	a1,0(a4)
    80009080:	00a7871b          	addiw	a4,a5,10
    80009084:	02c77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009088:	00e50733          	add	a4,a0,a4
    8000908c:	00b70023          	sb	a1,0(a4)
    80009090:	00b7871b          	addiw	a4,a5,11
    80009094:	02c77663          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    80009098:	00e50733          	add	a4,a0,a4
    8000909c:	00b70023          	sb	a1,0(a4)
    800090a0:	00c7871b          	addiw	a4,a5,12
    800090a4:	00c77e63          	bgeu	a4,a2,800090c0 <__memset+0x1c8>
    800090a8:	00e50733          	add	a4,a0,a4
    800090ac:	00b70023          	sb	a1,0(a4)
    800090b0:	00d7879b          	addiw	a5,a5,13
    800090b4:	00c7f663          	bgeu	a5,a2,800090c0 <__memset+0x1c8>
    800090b8:	00f507b3          	add	a5,a0,a5
    800090bc:	00b78023          	sb	a1,0(a5)
    800090c0:	00813403          	ld	s0,8(sp)
    800090c4:	01010113          	addi	sp,sp,16
    800090c8:	00008067          	ret
    800090cc:	00b00693          	li	a3,11
    800090d0:	e55ff06f          	j	80008f24 <__memset+0x2c>
    800090d4:	00300e93          	li	t4,3
    800090d8:	ea5ff06f          	j	80008f7c <__memset+0x84>
    800090dc:	00100e93          	li	t4,1
    800090e0:	e9dff06f          	j	80008f7c <__memset+0x84>
    800090e4:	00000e93          	li	t4,0
    800090e8:	e95ff06f          	j	80008f7c <__memset+0x84>
    800090ec:	00000793          	li	a5,0
    800090f0:	ef9ff06f          	j	80008fe8 <__memset+0xf0>
    800090f4:	00200e93          	li	t4,2
    800090f8:	e85ff06f          	j	80008f7c <__memset+0x84>
    800090fc:	00400e93          	li	t4,4
    80009100:	e7dff06f          	j	80008f7c <__memset+0x84>
    80009104:	00500e93          	li	t4,5
    80009108:	e75ff06f          	j	80008f7c <__memset+0x84>
    8000910c:	00600e93          	li	t4,6
    80009110:	e6dff06f          	j	80008f7c <__memset+0x84>

0000000080009114 <__memmove>:
    80009114:	ff010113          	addi	sp,sp,-16
    80009118:	00813423          	sd	s0,8(sp)
    8000911c:	01010413          	addi	s0,sp,16
    80009120:	0e060863          	beqz	a2,80009210 <__memmove+0xfc>
    80009124:	fff6069b          	addiw	a3,a2,-1
    80009128:	0006881b          	sext.w	a6,a3
    8000912c:	0ea5e863          	bltu	a1,a0,8000921c <__memmove+0x108>
    80009130:	00758713          	addi	a4,a1,7
    80009134:	00a5e7b3          	or	a5,a1,a0
    80009138:	40a70733          	sub	a4,a4,a0
    8000913c:	0077f793          	andi	a5,a5,7
    80009140:	00f73713          	sltiu	a4,a4,15
    80009144:	00174713          	xori	a4,a4,1
    80009148:	0017b793          	seqz	a5,a5
    8000914c:	00e7f7b3          	and	a5,a5,a4
    80009150:	10078863          	beqz	a5,80009260 <__memmove+0x14c>
    80009154:	00900793          	li	a5,9
    80009158:	1107f463          	bgeu	a5,a6,80009260 <__memmove+0x14c>
    8000915c:	0036581b          	srliw	a6,a2,0x3
    80009160:	fff8081b          	addiw	a6,a6,-1
    80009164:	02081813          	slli	a6,a6,0x20
    80009168:	01d85893          	srli	a7,a6,0x1d
    8000916c:	00858813          	addi	a6,a1,8
    80009170:	00058793          	mv	a5,a1
    80009174:	00050713          	mv	a4,a0
    80009178:	01088833          	add	a6,a7,a6
    8000917c:	0007b883          	ld	a7,0(a5)
    80009180:	00878793          	addi	a5,a5,8
    80009184:	00870713          	addi	a4,a4,8
    80009188:	ff173c23          	sd	a7,-8(a4)
    8000918c:	ff0798e3          	bne	a5,a6,8000917c <__memmove+0x68>
    80009190:	ff867713          	andi	a4,a2,-8
    80009194:	02071793          	slli	a5,a4,0x20
    80009198:	0207d793          	srli	a5,a5,0x20
    8000919c:	00f585b3          	add	a1,a1,a5
    800091a0:	40e686bb          	subw	a3,a3,a4
    800091a4:	00f507b3          	add	a5,a0,a5
    800091a8:	06e60463          	beq	a2,a4,80009210 <__memmove+0xfc>
    800091ac:	0005c703          	lbu	a4,0(a1)
    800091b0:	00e78023          	sb	a4,0(a5)
    800091b4:	04068e63          	beqz	a3,80009210 <__memmove+0xfc>
    800091b8:	0015c603          	lbu	a2,1(a1)
    800091bc:	00100713          	li	a4,1
    800091c0:	00c780a3          	sb	a2,1(a5)
    800091c4:	04e68663          	beq	a3,a4,80009210 <__memmove+0xfc>
    800091c8:	0025c603          	lbu	a2,2(a1)
    800091cc:	00200713          	li	a4,2
    800091d0:	00c78123          	sb	a2,2(a5)
    800091d4:	02e68e63          	beq	a3,a4,80009210 <__memmove+0xfc>
    800091d8:	0035c603          	lbu	a2,3(a1)
    800091dc:	00300713          	li	a4,3
    800091e0:	00c781a3          	sb	a2,3(a5)
    800091e4:	02e68663          	beq	a3,a4,80009210 <__memmove+0xfc>
    800091e8:	0045c603          	lbu	a2,4(a1)
    800091ec:	00400713          	li	a4,4
    800091f0:	00c78223          	sb	a2,4(a5)
    800091f4:	00e68e63          	beq	a3,a4,80009210 <__memmove+0xfc>
    800091f8:	0055c603          	lbu	a2,5(a1)
    800091fc:	00500713          	li	a4,5
    80009200:	00c782a3          	sb	a2,5(a5)
    80009204:	00e68663          	beq	a3,a4,80009210 <__memmove+0xfc>
    80009208:	0065c703          	lbu	a4,6(a1)
    8000920c:	00e78323          	sb	a4,6(a5)
    80009210:	00813403          	ld	s0,8(sp)
    80009214:	01010113          	addi	sp,sp,16
    80009218:	00008067          	ret
    8000921c:	02061713          	slli	a4,a2,0x20
    80009220:	02075713          	srli	a4,a4,0x20
    80009224:	00e587b3          	add	a5,a1,a4
    80009228:	f0f574e3          	bgeu	a0,a5,80009130 <__memmove+0x1c>
    8000922c:	02069613          	slli	a2,a3,0x20
    80009230:	02065613          	srli	a2,a2,0x20
    80009234:	fff64613          	not	a2,a2
    80009238:	00e50733          	add	a4,a0,a4
    8000923c:	00c78633          	add	a2,a5,a2
    80009240:	fff7c683          	lbu	a3,-1(a5)
    80009244:	fff78793          	addi	a5,a5,-1
    80009248:	fff70713          	addi	a4,a4,-1
    8000924c:	00d70023          	sb	a3,0(a4)
    80009250:	fec798e3          	bne	a5,a2,80009240 <__memmove+0x12c>
    80009254:	00813403          	ld	s0,8(sp)
    80009258:	01010113          	addi	sp,sp,16
    8000925c:	00008067          	ret
    80009260:	02069713          	slli	a4,a3,0x20
    80009264:	02075713          	srli	a4,a4,0x20
    80009268:	00170713          	addi	a4,a4,1
    8000926c:	00e50733          	add	a4,a0,a4
    80009270:	00050793          	mv	a5,a0
    80009274:	0005c683          	lbu	a3,0(a1)
    80009278:	00178793          	addi	a5,a5,1
    8000927c:	00158593          	addi	a1,a1,1
    80009280:	fed78fa3          	sb	a3,-1(a5)
    80009284:	fee798e3          	bne	a5,a4,80009274 <__memmove+0x160>
    80009288:	f89ff06f          	j	80009210 <__memmove+0xfc>
	...
