
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	df013103          	ld	sp,-528(sp) # 8000cdf0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	73d060ef          	jal	ra,80006f58 <start>

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
    80001080:	601010ef          	jal	ra,80002e80 <_ZN5RiscV22handle_supervisor_trapEv>

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
#include "../h/syscall_c.hpp"

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
    80001270:	5e0080e7          	jalr	1504(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    80001698:	00813083          	ld	ra,8(sp)
    8000169c:	00013403          	ld	s0,0(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_ZN3SemD1Ev>:
int Sem::tryWait(Sem *handle) {
    if (handle -> value > 0) return wait(handle);
    return 1;
}

Sem::~Sem() {
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32
    800016bc:	00050493          	mv	s1,a0
    800016c0:	0000b797          	auipc	a5,0xb
    800016c4:	4c078793          	addi	a5,a5,1216 # 8000cb80 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	cb8080e7          	jalr	-840(ra) # 80003388 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	b6c080e7          	jalr	-1172(ra) # 8000324c <_ZN10ThreadListdlEPv>
}
    800016e8:	01813083          	ld	ra,24(sp)
    800016ec:	01013403          	ld	s0,16(sp)
    800016f0:	00813483          	ld	s1,8(sp)
    800016f4:	02010113          	addi	sp,sp,32
    800016f8:	00008067          	ret

00000000800016fc <_ZN3SemC1Ej>:
Sem::Sem(unsigned int init) : value((int) init) {
    800016fc:	fe010113          	addi	sp,sp,-32
    80001700:	00113c23          	sd	ra,24(sp)
    80001704:	00813823          	sd	s0,16(sp)
    80001708:	00913423          	sd	s1,8(sp)
    8000170c:	02010413          	addi	s0,sp,32
    80001710:	00050493          	mv	s1,a0
    80001714:	0000b797          	auipc	a5,0xb
    80001718:	46c78793          	addi	a5,a5,1132 # 8000cb80 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	af4080e7          	jalr	-1292(ra) # 8000321c <_ZN10ThreadListnwEm>
    80001730:	00053023          	sd	zero,0(a0)
    80001734:	00053423          	sd	zero,8(a0)
    80001738:	00a4b423          	sd	a0,8(s1)
}
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	02010113          	addi	sp,sp,32
    8000174c:	00008067          	ret

0000000080001750 <_ZN3Sem5blockEv>:
void Sem::block() {
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	01213023          	sd	s2,0(sp)
    80001764:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80001768:	0000b917          	auipc	s2,0xb
    8000176c:	6a093903          	ld	s2,1696(s2) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001770:	00093483          	ld	s1,0(s2)
    old -> sem = this;
    80001774:	06a4b023          	sd	a0,96(s1)
    old -> status = TCB::BLOCKED;
    80001778:	00200793          	li	a5,2
    8000177c:	02f4a023          	sw	a5,32(s1)
    blocked_threads -> push_back(old);
    80001780:	00048593          	mv	a1,s1
    80001784:	00853503          	ld	a0,8(a0)
    80001788:	00002097          	auipc	ra,0x2
    8000178c:	b1c080e7          	jalr	-1252(ra) # 800032a4 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	39c080e7          	jalr	924(ra) # 80002b2c <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	d14080e7          	jalr	-748(ra) # 800034b8 <_ZN3TCB5yieldEPS_S0_>
}
    800017ac:	01813083          	ld	ra,24(sp)
    800017b0:	01013403          	ld	s0,16(sp)
    800017b4:	00813483          	ld	s1,8(sp)
    800017b8:	00013903          	ld	s2,0(sp)
    800017bc:	02010113          	addi	sp,sp,32
    800017c0:	00008067          	ret

00000000800017c4 <_ZN3Sem7unblockEv>:
void Sem::unblock() {
    800017c4:	fe010113          	addi	sp,sp,-32
    800017c8:	00113c23          	sd	ra,24(sp)
    800017cc:	00813823          	sd	s0,16(sp)
    800017d0:	00913423          	sd	s1,8(sp)
    800017d4:	02010413          	addi	s0,sp,32
    TCB* thread = blocked_threads -> remove_first();
    800017d8:	00853503          	ld	a0,8(a0)
    800017dc:	00002097          	auipc	ra,0x2
    800017e0:	b58080e7          	jalr	-1192(ra) # 80003334 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	038080e7          	jalr	56(ra) # 80003830 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	2b4080e7          	jalr	692(ra) # 80002abc <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	374080e7          	jalr	884(ra) # 80002b98 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    8000182c:	fc5ff06f          	j	800017f0 <_ZN3Sem7unblockEv+0x2c>

0000000080001830 <_ZN3Sem5closeEPS_>:
int Sem::close(Sem *handle) {
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	02010413          	addi	s0,sp,32
    80001844:	00050493          	mv	s1,a0
    if (!handle) return -1;
    80001848:	04050663          	beqz	a0,80001894 <_ZN3Sem5closeEPS_+0x64>
    while (handle -> blocked_threads -> get_first()) handle -> unblock();
    8000184c:	0084b503          	ld	a0,8(s1)
    80001850:	00002097          	auipc	ra,0x2
    80001854:	93c080e7          	jalr	-1732(ra) # 8000318c <_ZN10ThreadList9get_firstEv>
    80001858:	00050a63          	beqz	a0,8000186c <_ZN3Sem5closeEPS_+0x3c>
    8000185c:	00048513          	mv	a0,s1
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f64080e7          	jalr	-156(ra) # 800017c4 <_ZN3Sem7unblockEv>
    80001868:	fe5ff06f          	j	8000184c <_ZN3Sem5closeEPS_+0x1c>
    delete handle;
    8000186c:	0004b783          	ld	a5,0(s1)
    80001870:	0087b783          	ld	a5,8(a5)
    80001874:	00048513          	mv	a0,s1
    80001878:	000780e7          	jalr	a5
    return 0;
    8000187c:	00000513          	li	a0,0
}
    80001880:	01813083          	ld	ra,24(sp)
    80001884:	01013403          	ld	s0,16(sp)
    80001888:	00813483          	ld	s1,8(sp)
    8000188c:	02010113          	addi	sp,sp,32
    80001890:	00008067          	ret
    if (!handle) return -1;
    80001894:	fff00513          	li	a0,-1
    80001898:	fe9ff06f          	j	80001880 <_ZN3Sem5closeEPS_+0x50>

000000008000189c <_ZN3Sem4waitEPS_>:
    if (!handle) return -1;
    8000189c:	04050663          	beqz	a0,800018e8 <_ZN3Sem4waitEPS_+0x4c>
    if (--handle -> value < 0) {
    800018a0:	01052783          	lw	a5,16(a0)
    800018a4:	fff7879b          	addiw	a5,a5,-1
    800018a8:	00f52823          	sw	a5,16(a0)
    800018ac:	02079713          	slli	a4,a5,0x20
    800018b0:	00074663          	bltz	a4,800018bc <_ZN3Sem4waitEPS_+0x20>
    return 0;
    800018b4:	00000513          	li	a0,0
}
    800018b8:	00008067          	ret
int Sem::wait(Sem *handle) {
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	00813023          	sd	s0,0(sp)
    800018c8:	01010413          	addi	s0,sp,16
        handle -> block();
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	e84080e7          	jalr	-380(ra) # 80001750 <_ZN3Sem5blockEv>
    return 0;
    800018d4:	00000513          	li	a0,0
}
    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret
    if (!handle) return -1;
    800018e8:	fff00513          	li	a0,-1
    800018ec:	00008067          	ret

00000000800018f0 <_ZN3Sem6signalEPS_>:
    if (!handle) return -1;
    800018f0:	04050663          	beqz	a0,8000193c <_ZN3Sem6signalEPS_+0x4c>
    if (++handle -> value <= 0) handle -> unblock();
    800018f4:	01052783          	lw	a5,16(a0)
    800018f8:	0017879b          	addiw	a5,a5,1
    800018fc:	0007871b          	sext.w	a4,a5
    80001900:	00f52823          	sw	a5,16(a0)
    80001904:	00e05663          	blez	a4,80001910 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    80001908:	00000513          	li	a0,0
}
    8000190c:	00008067          	ret
int Sem::signal(Sem *handle) {
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00113423          	sd	ra,8(sp)
    80001918:	00813023          	sd	s0,0(sp)
    8000191c:	01010413          	addi	s0,sp,16
    if (++handle -> value <= 0) handle -> unblock();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	ea4080e7          	jalr	-348(ra) # 800017c4 <_ZN3Sem7unblockEv>
    return 0;
    80001928:	00000513          	li	a0,0
}
    8000192c:	00813083          	ld	ra,8(sp)
    80001930:	00013403          	ld	s0,0(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret
    if (!handle) return -1;
    8000193c:	fff00513          	li	a0,-1
    80001940:	00008067          	ret

0000000080001944 <_ZN3Sem9timedWaitEPS_m>:
int Sem::timedWait(Sem *handle, time_t time) {
    80001944:	fe010113          	addi	sp,sp,-32
    80001948:	00113c23          	sd	ra,24(sp)
    8000194c:	00813823          	sd	s0,16(sp)
    80001950:	00913423          	sd	s1,8(sp)
    80001954:	01213023          	sd	s2,0(sp)
    80001958:	02010413          	addi	s0,sp,32
    8000195c:	00050493          	mv	s1,a0
    TCB *thread = TCB::running;
    80001960:	0000b797          	auipc	a5,0xb
    80001964:	4a87b783          	ld	a5,1192(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	324080e7          	jalr	804(ra) # 80002c9c <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	204080e7          	jalr	516(ra) # 80002b98 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	e8c080e7          	jalr	-372(ra) # 80003830 <_ZN3TCB21clear_from_timed_waitEb>
}
    800019ac:	00048513          	mv	a0,s1
    800019b0:	01813083          	ld	ra,24(sp)
    800019b4:	01013403          	ld	s0,16(sp)
    800019b8:	00813483          	ld	s1,8(sp)
    800019bc:	00013903          	ld	s2,0(sp)
    800019c0:	02010113          	addi	sp,sp,32
    800019c4:	00008067          	ret

00000000800019c8 <_ZN3Sem7tryWaitEPS_>:
    if (handle -> value > 0) return wait(handle);
    800019c8:	01052783          	lw	a5,16(a0)
    800019cc:	00f04663          	bgtz	a5,800019d8 <_ZN3Sem7tryWaitEPS_+0x10>
    return 1;
    800019d0:	00100513          	li	a0,1
}
    800019d4:	00008067          	ret
int Sem::tryWait(Sem *handle) {
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16
    if (handle -> value > 0) return wait(handle);
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	eb4080e7          	jalr	-332(ra) # 8000189c <_ZN3Sem4waitEPS_>
}
    800019f0:	00813083          	ld	ra,8(sp)
    800019f4:	00013403          	ld	s0,0(sp)
    800019f8:	01010113          	addi	sp,sp,16
    800019fc:	00008067          	ret

0000000080001a00 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00113423          	sd	ra,8(sp)
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	e3c080e7          	jalr	-452(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	a70080e7          	jalr	-1424(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN3SemdlEPv>:

void Sem::operator delete(void *addr) {
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	bbc080e7          	jalr	-1092(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001a48:	00813083          	ld	ra,8(sp)
    80001a4c:	00013403          	ld	s0,0(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    80001a58:	fd010113          	addi	sp,sp,-48
    80001a5c:	02113423          	sd	ra,40(sp)
    80001a60:	02813023          	sd	s0,32(sp)
    80001a64:	00913c23          	sd	s1,24(sp)
    80001a68:	01213823          	sd	s2,16(sp)
    80001a6c:	01313423          	sd	s3,8(sp)
    80001a70:	03010413          	addi	s0,sp,48
    80001a74:	00050913          	mv	s2,a0
    80001a78:	00058993          	mv	s3,a1
    *handle = new Sem(init);
    80001a7c:	01800513          	li	a0,24
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	f80080e7          	jalr	-128(ra) # 80001a00 <_ZN3SemnwEm>
    80001a88:	00050493          	mv	s1,a0
    80001a8c:	00098593          	mv	a1,s3
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	c6c080e7          	jalr	-916(ra) # 800016fc <_ZN3SemC1Ej>
    80001a98:	00993023          	sd	s1,0(s2)
    if (!(*handle)) return -1;
    80001a9c:	02048263          	beqz	s1,80001ac0 <_ZN3Sem4openEPPS_j+0x68>
    return 0;
    80001aa0:	00000513          	li	a0,0
}
    80001aa4:	02813083          	ld	ra,40(sp)
    80001aa8:	02013403          	ld	s0,32(sp)
    80001aac:	01813483          	ld	s1,24(sp)
    80001ab0:	01013903          	ld	s2,16(sp)
    80001ab4:	00813983          	ld	s3,8(sp)
    80001ab8:	03010113          	addi	sp,sp,48
    80001abc:	00008067          	ret
    if (!(*handle)) return -1;
    80001ac0:	fff00513          	li	a0,-1
    80001ac4:	fe1ff06f          	j	80001aa4 <_ZN3Sem4openEPPS_j+0x4c>
    80001ac8:	00050913          	mv	s2,a0
    *handle = new Sem(init);
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	f60080e7          	jalr	-160(ra) # 80001a30 <_ZN3SemdlEPv>
    80001ad8:	00090513          	mv	a0,s2
    80001adc:	0000c097          	auipc	ra,0xc
    80001ae0:	4fc080e7          	jalr	1276(ra) # 8000dfd8 <_Unwind_Resume>

0000000080001ae4 <_ZN3SemD0Ev>:
Sem::~Sem() {
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	00913423          	sd	s1,8(sp)
    80001af4:	02010413          	addi	s0,sp,32
    80001af8:	00050493          	mv	s1,a0
}
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	bac080e7          	jalr	-1108(ra) # 800016a8 <_ZN3SemD1Ev>
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	f28080e7          	jalr	-216(ra) # 80001a30 <_ZN3SemdlEPv>
    80001b10:	01813083          	ld	ra,24(sp)
    80001b14:	01013403          	ld	s0,16(sp)
    80001b18:	00813483          	ld	s1,8(sp)
    80001b1c:	02010113          	addi	sp,sp,32
    80001b20:	00008067          	ret

0000000080001b24 <_Z19kernelConsoleOutputPv>:
        num2 /= 10;
    }
    while (zero_count--) putc('0');
}
/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    80001b34:	01c0006f          	j	80001b50 <_Z19kernelConsoleOutputPv+0x2c>
    while (true) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            char c = Con::getc_output();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	30c080e7          	jalr	780(ra) # 80001e44 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000b797          	auipc	a5,0xb
    80001b44:	2a07b783          	ld	a5,672(a5) # 8000cde0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000b797          	auipc	a5,0xb
    80001b54:	2787b783          	ld	a5,632(a5) # 8000cdc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b58:	0007b783          	ld	a5,0(a5)
    80001b5c:	0007c783          	lbu	a5,0(a5)
    80001b60:	0207f793          	andi	a5,a5,32
    80001b64:	fc079ae3          	bnez	a5,80001b38 <_Z19kernelConsoleOutputPv+0x14>
        }
        /// if there isn't ready data, dispatch in order not to occupy CPU for the DEFAULT_TIME_SLICE
        thread_dispatch();
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	864080e7          	jalr	-1948(ra) # 800013cc <_Z15thread_dispatchv>
    }
    80001b70:	fe1ff06f          	j	80001b50 <_Z19kernelConsoleOutputPv+0x2c>

0000000080001b74 <_Z15userMainWrapperPv>:
}

void userMain();
void userMainWrapper(void *args) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    userMain();
    80001b84:	00005097          	auipc	ra,0x5
    80001b88:	b6c080e7          	jalr	-1172(ra) # 800066f0 <_Z8userMainv>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001b9c:	fd010113          	addi	sp,sp,-48
    80001ba0:	02113423          	sd	ra,40(sp)
    80001ba4:	02813023          	sd	s0,32(sp)
    80001ba8:	00913c23          	sd	s1,24(sp)
    80001bac:	01213823          	sd	s2,16(sp)
    80001bb0:	01313423          	sd	s3,8(sp)
    80001bb4:	03010413          	addi	s0,sp,48
    80001bb8:	00050913          	mv	s2,a0
    putc('\n');
    80001bbc:	00a00513          	li	a0,10
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	aac080e7          	jalr	-1364(ra) # 8000166c <_Z4putcc>
    putc('N');
    80001bc8:	04e00513          	li	a0,78
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	aa0080e7          	jalr	-1376(ra) # 8000166c <_Z4putcc>
    putc(':');
    80001bd4:	03a00513          	li	a0,58
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	a94080e7          	jalr	-1388(ra) # 8000166c <_Z4putcc>
    putc(' ');
    80001be0:	02000513          	li	a0,32
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	a88080e7          	jalr	-1400(ra) # 8000166c <_Z4putcc>
    if (!num) putc('0');
    80001bec:	00090863          	beqz	s2,80001bfc <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001bf0:	00000993          	li	s3,0
    80001bf4:	00000493          	li	s1,0
    80001bf8:	01c0006f          	j	80001c14 <_Z11printNumberm+0x78>
    if (!num) putc('0');
    80001bfc:	03000513          	li	a0,48
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	a6c080e7          	jalr	-1428(ra) # 8000166c <_Z4putcc>
    80001c08:	fe9ff06f          	j	80001bf0 <_Z11printNumberm+0x54>
        num /= 10;
    80001c0c:	00a00793          	li	a5,10
    80001c10:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001c14:	02090463          	beqz	s2,80001c3c <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001c18:	00249793          	slli	a5,s1,0x2
    80001c1c:	009784b3          	add	s1,a5,s1
    80001c20:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001c24:	00a00493          	li	s1,10
    80001c28:	029974b3          	remu	s1,s2,s1
    80001c2c:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001c30:	fc049ee3          	bnez	s1,80001c0c <_Z11printNumberm+0x70>
    80001c34:	00198993          	addi	s3,s3,1
    80001c38:	fd5ff06f          	j	80001c0c <_Z11printNumberm+0x70>
    while (num2) {
    80001c3c:	02048063          	beqz	s1,80001c5c <_Z11printNumberm+0xc0>
        putc(num2 % 10 + '0');
    80001c40:	00a00913          	li	s2,10
    80001c44:	0324f533          	remu	a0,s1,s2
    80001c48:	03050513          	addi	a0,a0,48
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	a20080e7          	jalr	-1504(ra) # 8000166c <_Z4putcc>
        num2 /= 10;
    80001c54:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001c58:	fe5ff06f          	j	80001c3c <_Z11printNumberm+0xa0>
    while (zero_count--) putc('0');
    80001c5c:	fff98493          	addi	s1,s3,-1
    80001c60:	00098c63          	beqz	s3,80001c78 <_Z11printNumberm+0xdc>
    80001c64:	03000513          	li	a0,48
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	a04080e7          	jalr	-1532(ra) # 8000166c <_Z4putcc>
    80001c70:	00048993          	mv	s3,s1
    80001c74:	fe9ff06f          	j	80001c5c <_Z11printNumberm+0xc0>
}
    80001c78:	02813083          	ld	ra,40(sp)
    80001c7c:	02013403          	ld	s0,32(sp)
    80001c80:	01813483          	ld	s1,24(sp)
    80001c84:	01013903          	ld	s2,16(sp)
    80001c88:	00813983          	ld	s3,8(sp)
    80001c8c:	03010113          	addi	sp,sp,48
    80001c90:	00008067          	ret

0000000080001c94 <main>:
        printNumber(value--);
        if (value < 0) terminate();
    }
};

int main() {
    80001c94:	fd010113          	addi	sp,sp,-48
    80001c98:	02113423          	sd	ra,40(sp)
    80001c9c:	02813023          	sd	s0,32(sp)
    80001ca0:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001ca4:	0000b797          	auipc	a5,0xb
    80001ca8:	1447b783          	ld	a5,324(a5) # 8000cde8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001cac:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	bbc080e7          	jalr	-1092(ra) # 8000286c <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	094080e7          	jalr	148(ra) # 80001d4c <_ZN3Con10initializeEv>

    thread_t threads[3];

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001cc0:	00000613          	li	a2,0
    80001cc4:	00000593          	li	a1,0
    80001cc8:	fd840513          	addi	a0,s0,-40
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	62c080e7          	jalr	1580(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001cd4:	fd843703          	ld	a4,-40(s0)
    80001cd8:	0000b797          	auipc	a5,0xb
    80001cdc:	1307b783          	ld	a5,304(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ce0:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001ce4:	00200793          	li	a5,2
    80001ce8:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001cec:	00000613          	li	a2,0
    80001cf0:	00000597          	auipc	a1,0x0
    80001cf4:	e3458593          	addi	a1,a1,-460 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001cf8:	fe040513          	addi	a0,s0,-32
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	5fc080e7          	jalr	1532(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    /// Test Periodic Thread
//    PeriodicThread *periodic = new PeriodicWorker();
//    periodic -> start();

    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001d04:	00000613          	li	a2,0
    80001d08:	00000597          	auipc	a1,0x0
    80001d0c:	e6c58593          	addi	a1,a1,-404 # 80001b74 <_Z15userMainWrapperPv>
    80001d10:	fe840513          	addi	a0,s0,-24
    80001d14:	fffff097          	auipc	ra,0xfffff
    80001d18:	5e4080e7          	jalr	1508(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (!threads[2] -> is_finished()) thread_dispatch();
    80001d1c:	fe843503          	ld	a0,-24(s0)
    80001d20:	00002097          	auipc	ra,0x2
    80001d24:	aec080e7          	jalr	-1300(ra) # 8000380c <_ZNK3TCB11is_finishedEv>
    80001d28:	00051863          	bnez	a0,80001d38 <main+0xa4>
    80001d2c:	fffff097          	auipc	ra,0xfffff
    80001d30:	6a0080e7          	jalr	1696(ra) # 800013cc <_Z15thread_dispatchv>
    80001d34:	fe9ff06f          	j	80001d1c <main+0x88>

    return 0;
    80001d38:	00000513          	li	a0,0
    80001d3c:	02813083          	ld	ra,40(sp)
    80001d40:	02013403          	ld	s0,32(sp)
    80001d44:	03010113          	addi	sp,sp,48
    80001d48:	00008067          	ret

0000000080001d4c <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d4c:	0000b797          	auipc	a5,0xb
    80001d50:	1147c783          	lbu	a5,276(a5) # 8000ce60 <_ZN3Con11initializedE>
    80001d54:	00078463          	beqz	a5,80001d5c <_ZN3Con10initializeEv+0x10>
    80001d58:	00008067          	ret
void Con::initialize() {
    80001d5c:	fe010113          	addi	sp,sp,-32
    80001d60:	00113c23          	sd	ra,24(sp)
    80001d64:	00813823          	sd	s0,16(sp)
    80001d68:	00913423          	sd	s1,8(sp)
    80001d6c:	01213023          	sd	s2,0(sp)
    80001d70:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d74:	00100793          	li	a5,1
    80001d78:	0000b717          	auipc	a4,0xb
    80001d7c:	0ef70423          	sb	a5,232(a4) # 8000ce60 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d80:	21000513          	li	a0,528
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	c08080e7          	jalr	-1016(ra) # 8000298c <_ZN13BoundedBuffernwEm>
    80001d8c:	00050493          	mv	s1,a0
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	b64080e7          	jalr	-1180(ra) # 800028f4 <_ZN13BoundedBufferC1Ev>
    80001d98:	0000b797          	auipc	a5,0xb
    80001d9c:	0c97b823          	sd	s1,208(a5) # 8000ce68 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001da0:	21000513          	li	a0,528
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	be8080e7          	jalr	-1048(ra) # 8000298c <_ZN13BoundedBuffernwEm>
    80001dac:	00050493          	mv	s1,a0
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	b44080e7          	jalr	-1212(ra) # 800028f4 <_ZN13BoundedBufferC1Ev>
    80001db8:	0000b797          	auipc	a5,0xb
    80001dbc:	0a97bc23          	sd	s1,184(a5) # 8000ce70 <_ZN3Con13output_bufferE>
    }
}
    80001dc0:	01813083          	ld	ra,24(sp)
    80001dc4:	01013403          	ld	s0,16(sp)
    80001dc8:	00813483          	ld	s1,8(sp)
    80001dcc:	00013903          	ld	s2,0(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret
    80001dd8:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001ddc:	00048513          	mv	a0,s1
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	bdc080e7          	jalr	-1060(ra) # 800029bc <_ZN13BoundedBufferdlEPv>
    80001de8:	00090513          	mv	a0,s2
    80001dec:	0000c097          	auipc	ra,0xc
    80001df0:	1ec080e7          	jalr	492(ra) # 8000dfd8 <_Unwind_Resume>
    80001df4:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	bc0080e7          	jalr	-1088(ra) # 800029bc <_ZN13BoundedBufferdlEPv>
    80001e04:	00090513          	mv	a0,s2
    80001e08:	0000c097          	auipc	ra,0xc
    80001e0c:	1d0080e7          	jalr	464(ra) # 8000dfd8 <_Unwind_Resume>

0000000080001e10 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    80001e20:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e24:	0000b517          	auipc	a0,0xb
    80001e28:	04c53503          	ld	a0,76(a0) # 8000ce70 <_ZN3Con13output_bufferE>
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	bb8080e7          	jalr	-1096(ra) # 800029e4 <_ZN13BoundedBuffer4putcEc>
}
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e54:	0000b517          	auipc	a0,0xb
    80001e58:	01c53503          	ld	a0,28(a0) # 8000ce70 <_ZN3Con13output_bufferE>
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	bf4080e7          	jalr	-1036(ra) # 80002a50 <_ZN13BoundedBuffer4getcEv>
}
    80001e64:	00813083          	ld	ra,8(sp)
    80001e68:	00013403          	ld	s0,0(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00113423          	sd	ra,8(sp)
    80001e7c:	00813023          	sd	s0,0(sp)
    80001e80:	01010413          	addi	s0,sp,16
    80001e84:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e88:	0000b517          	auipc	a0,0xb
    80001e8c:	fe053503          	ld	a0,-32(a0) # 8000ce68 <_ZN3Con12input_bufferE>
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	b54080e7          	jalr	-1196(ra) # 800029e4 <_ZN13BoundedBuffer4putcEc>
}
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001eb8:	0000b517          	auipc	a0,0xb
    80001ebc:	fb053503          	ld	a0,-80(a0) # 8000ce68 <_ZN3Con12input_bufferE>
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	b90080e7          	jalr	-1136(ra) # 80002a50 <_ZN13BoundedBuffer4getcEv>
    80001ec8:	00813083          	ld	ra,8(sp)
    80001ecc:	00013403          	ld	s0,0(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001ee8:	01053783          	ld	a5,16(a0)
    80001eec:	00078e63          	beqz	a5,80001f08 <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001ef0:	01853503          	ld	a0,24(a0)
    80001ef4:	000780e7          	jalr	a5
}
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001f08:	00053783          	ld	a5,0(a0)
    80001f0c:	0107b783          	ld	a5,16(a5)
    80001f10:	000780e7          	jalr	a5
    80001f14:	fe5ff06f          	j	80001ef8 <_ZN6Thread12start_helperEPv+0x20>

0000000080001f18 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	02010413          	addi	s0,sp,32
    80001f2c:	00050493          	mv	s1,a0
    80001f30:	0000b797          	auipc	a5,0xb
    80001f34:	c7878793          	addi	a5,a5,-904 # 8000cba8 <_ZTV6Thread+0x10>
    80001f38:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f3c:	00853503          	ld	a0,8(a0)
    80001f40:	00002097          	auipc	ra,0x2
    80001f44:	8cc080e7          	jalr	-1844(ra) # 8000380c <_ZNK3TCB11is_finishedEv>
    80001f48:	00050a63          	beqz	a0,80001f5c <_ZN6ThreadD1Ev+0x44>
    80001f4c:	0084b503          	ld	a0,8(s1)
    80001f50:	00050663          	beqz	a0,80001f5c <_ZN6ThreadD1Ev+0x44>
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	78c080e7          	jalr	1932(ra) # 800036e0 <_ZN3TCBdlEPv>
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = period;
}

void PeriodicThread::run() {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	02010413          	addi	s0,sp,32
    80001f84:	00050493          	mv	s1,a0
    while (period != (time_t) -1) {
    80001f88:	0204b703          	ld	a4,32(s1)
    80001f8c:	fff00793          	li	a5,-1
    80001f90:	02f70263          	beq	a4,a5,80001fb4 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80001f94:	0004b783          	ld	a5,0(s1)
    80001f98:	0187b783          	ld	a5,24(a5)
    80001f9c:	00048513          	mv	a0,s1
    80001fa0:	000780e7          	jalr	a5
        time_sleep(period);
    80001fa4:	0204b503          	ld	a0,32(s1)
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	62c080e7          	jalr	1580(ra) # 800015d4 <_Z10time_sleepm>
    while (period != (time_t) -1) {
    80001fb0:	fd9ff06f          	j	80001f88 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001fb4:	01813083          	ld	ra,24(sp)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	02010113          	addi	sp,sp,32
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001fc8:	0000b797          	auipc	a5,0xb
    80001fcc:	c0878793          	addi	a5,a5,-1016 # 8000cbd0 <_ZTV9Semaphore+0x10>
    80001fd0:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001fd4:	00853503          	ld	a0,8(a0)
    80001fd8:	02050663          	beqz	a0,80002004 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	46c080e7          	jalr	1132(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret
    80002004:	00008067          	ret

0000000080002008 <_Znwm>:
void* operator new(size_t size){
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	240080e7          	jalr	576(ra) # 80001258 <_Z9mem_allocm>
}
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	26c080e7          	jalr	620(ra) # 800012ac <_Z8mem_freePv>
}
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002058:	fe010113          	addi	sp,sp,-32
    8000205c:	00113c23          	sd	ra,24(sp)
    80002060:	00813823          	sd	s0,16(sp)
    80002064:	00913423          	sd	s1,8(sp)
    80002068:	02010413          	addi	s0,sp,32
    8000206c:	00050493          	mv	s1,a0
}
    80002070:	00000097          	auipc	ra,0x0
    80002074:	ea8080e7          	jalr	-344(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80002078:	00048513          	mv	a0,s1
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	fb4080e7          	jalr	-76(ra) # 80002030 <_ZdlPv>
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret

0000000080002098 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	00050493          	mv	s1,a0
}
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	f18080e7          	jalr	-232(ra) # 80001fc8 <_ZN9SemaphoreD1Ev>
    800020b8:	00048513          	mv	a0,s1
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	f74080e7          	jalr	-140(ra) # 80002030 <_ZdlPv>
    800020c4:	01813083          	ld	ra,24(sp)
    800020c8:	01013403          	ld	s0,16(sp)
    800020cc:	00813483          	ld	s1,8(sp)
    800020d0:	02010113          	addi	sp,sp,32
    800020d4:	00008067          	ret

00000000800020d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020d8:	ff010113          	addi	sp,sp,-16
    800020dc:	00813423          	sd	s0,8(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	0000b797          	auipc	a5,0xb
    800020e8:	ac478793          	addi	a5,a5,-1340 # 8000cba8 <_ZTV6Thread+0x10>
    800020ec:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020f0:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800020f4:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800020f8:	00c53c23          	sd	a2,24(a0)
}
    800020fc:	00813403          	ld	s0,8(sp)
    80002100:	01010113          	addi	sp,sp,16
    80002104:	00008067          	ret

0000000080002108 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813423          	sd	s0,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    80002114:	0000b797          	auipc	a5,0xb
    80002118:	a9478793          	addi	a5,a5,-1388 # 8000cba8 <_ZTV6Thread+0x10>
    8000211c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002120:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002124:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80002128:	00053c23          	sd	zero,24(a0)
}
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN6Thread5startEv>:
int Thread::start() {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	00813023          	sd	s0,0(sp)
    80002144:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80002148:	00050613          	mv	a2,a0
    8000214c:	00000597          	auipc	a1,0x0
    80002150:	d8c58593          	addi	a1,a1,-628 # 80001ed8 <_ZN6Thread12start_helperEPv>
    80002154:	00850513          	addi	a0,a0,8
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	1a0080e7          	jalr	416(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	24c080e7          	jalr	588(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	42c080e7          	jalr	1068(ra) # 800015d4 <_Z10time_sleepm>
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	0000b797          	auipc	a5,0xb
    800021d4:	a0078793          	addi	a5,a5,-1536 # 8000cbd0 <_ZTV9Semaphore+0x10>
    800021d8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021dc:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800021e0:	00850513          	addi	a0,a0,8
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	224080e7          	jalr	548(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    800021fc:	00853503          	ld	a0,8(a0)
    80002200:	02050663          	beqz	a0,8000222c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00113423          	sd	ra,8(sp)
    8000220c:	00813023          	sd	s0,0(sp)
    80002210:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	290080e7          	jalr	656(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret
    return -1;
    8000222c:	fff00513          	li	a0,-1
}
    80002230:	00008067          	ret

0000000080002234 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002234:	00853503          	ld	a0,8(a0)
    80002238:	02050663          	beqz	a0,80002264 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	00813023          	sd	s0,0(sp)
    80002248:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	2a4080e7          	jalr	676(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret
    return -1;
    80002264:	fff00513          	li	a0,-1
}
    80002268:	00008067          	ret

000000008000226c <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    8000226c:	ff010113          	addi	sp,sp,-16
    80002270:	00113423          	sd	ra,8(sp)
    80002274:	00813023          	sd	s0,0(sp)
    80002278:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    8000227c:	00853503          	ld	a0,8(a0)
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	2bc080e7          	jalr	700(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00113423          	sd	ra,8(sp)
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800022a8:	00853503          	ld	a0,8(a0)
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	2dc080e7          	jalr	732(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    period = (time_t) -1;
    800022d0:	fff00793          	li	a5,-1
    800022d4:	02f53023          	sd	a5,32(a0)
}
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800022e4:	fe010113          	addi	sp,sp,-32
    800022e8:	00113c23          	sd	ra,24(sp)
    800022ec:	00813823          	sd	s0,16(sp)
    800022f0:	00913423          	sd	s1,8(sp)
    800022f4:	01213023          	sd	s2,0(sp)
    800022f8:	02010413          	addi	s0,sp,32
    800022fc:	00050493          	mv	s1,a0
    80002300:	00058913          	mv	s2,a1
    80002304:	00000097          	auipc	ra,0x0
    80002308:	e04080e7          	jalr	-508(ra) # 80002108 <_ZN6ThreadC1Ev>
    8000230c:	0000b797          	auipc	a5,0xb
    80002310:	8e478793          	addi	a5,a5,-1820 # 8000cbf0 <_ZTV14PeriodicThread+0x10>
    80002314:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002318:	0324b023          	sd	s2,32(s1)
}
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	00013903          	ld	s2,0(sp)
    8000232c:	02010113          	addi	sp,sp,32
    80002330:	00008067          	ret

0000000080002334 <_ZN7Console4getcEv>:

char Console::getc() {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00113423          	sd	ra,8(sp)
    8000233c:	00813023          	sd	s0,0(sp)
    80002340:	01010413          	addi	s0,sp,16
    return ::getc();
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	2dc080e7          	jalr	732(ra) # 80001620 <_Z4getcv>
}
    8000234c:	00813083          	ld	ra,8(sp)
    80002350:	00013403          	ld	s0,0(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	300080e7          	jalr	768(ra) # 8000166c <_Z4putcc>
}
    80002374:	00813083          	ld	ra,8(sp)
    80002378:	00013403          	ld	s0,0(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00813423          	sd	s0,8(sp)
    8000238c:	01010413          	addi	s0,sp,16
    80002390:	00813403          	ld	s0,8(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    virtual void run() override;
    virtual void periodicActivation () {}
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00813423          	sd	s0,8(sp)
    800023a4:	01010413          	addi	s0,sp,16
    800023a8:	00813403          	ld	s0,8(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00113423          	sd	ra,8(sp)
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	0000b797          	auipc	a5,0xb
    800023c8:	82c78793          	addi	a5,a5,-2004 # 8000cbf0 <_ZTV14PeriodicThread+0x10>
    800023cc:	00f53023          	sd	a5,0(a0)
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	b48080e7          	jalr	-1208(ra) # 80001f18 <_ZN6ThreadD1Ev>
    800023d8:	00813083          	ld	ra,8(sp)
    800023dc:	00013403          	ld	s0,0(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_ZN14PeriodicThreadD0Ev>:
    800023e8:	fe010113          	addi	sp,sp,-32
    800023ec:	00113c23          	sd	ra,24(sp)
    800023f0:	00813823          	sd	s0,16(sp)
    800023f4:	00913423          	sd	s1,8(sp)
    800023f8:	02010413          	addi	s0,sp,32
    800023fc:	00050493          	mv	s1,a0
    80002400:	0000a797          	auipc	a5,0xa
    80002404:	7f078793          	addi	a5,a5,2032 # 8000cbf0 <_ZTV14PeriodicThread+0x10>
    80002408:	00f53023          	sd	a5,0(a0)
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	b0c080e7          	jalr	-1268(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80002414:	00048513          	mv	a0,s1
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	c18080e7          	jalr	-1000(ra) # 80002030 <_ZdlPv>
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00813483          	ld	s1,8(sp)
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret

0000000080002434 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813423          	sd	s0,8(sp)
    8000243c:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002440:	00853783          	ld	a5,8(a0)
    80002444:	02078463          	beqz	a5,8000246c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002448:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    8000244c:	01053783          	ld	a5,16(a0)
    80002450:	00078863          	beqz	a5,80002460 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002454:	00061463          	bnez	a2,8000245c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002458:	00853583          	ld	a1,8(a0)
    8000245c:	00b7b423          	sd	a1,8(a5)
}
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    8000246c:	00068863          	beqz	a3,8000247c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    80002470:	0000b797          	auipc	a5,0xb
    80002474:	a0b7b423          	sd	a1,-1528(a5) # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002478:	fd5ff06f          	j	8000244c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    8000247c:	0000b797          	auipc	a5,0xb
    80002480:	a0b7b223          	sd	a1,-1532(a5) # 8000ce80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002484:	fc9ff06f          	j	8000244c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002488 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	01213023          	sd	s2,0(sp)
    8000249c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800024a0:	10050263          	beqz	a0,800025a4 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024a4:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024a8:	0000b497          	auipc	s1,0xb
    800024ac:	9d04b483          	ld	s1,-1584(s1) # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024b0:	0c048263          	beqz	s1,80002574 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    800024b4:	0004b783          	ld	a5,0(s1)
    800024b8:	0527e663          	bltu	a5,s2,80002504 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024bc:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    800024c0:	01800713          	li	a4,24
    800024c4:	04f76463          	bltu	a4,a5,8000250c <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800024c8:	00100693          	li	a3,1
    800024cc:	00000613          	li	a2,0
    800024d0:	0104b583          	ld	a1,16(s1)
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	f5c080e7          	jalr	-164(ra) # 80002434 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024e0:	0000b797          	auipc	a5,0xb
    800024e4:	9a07b783          	ld	a5,-1632(a5) # 8000ce80 <_ZN15MemoryAllocator11usedSegHeadE>
    800024e8:	04078a63          	beqz	a5,8000253c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800024ec:	0497fc63          	bgeu	a5,s1,80002544 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024f0:	00078713          	mv	a4,a5
    800024f4:	0107b783          	ld	a5,16(a5)
    800024f8:	04078863          	beqz	a5,80002548 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800024fc:	fe97eae3          	bltu	a5,s1,800024f0 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80002500:	0480006f          	j	80002548 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    80002504:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002508:	fa9ff06f          	j	800024b0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    8000250c:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002510:	0084b703          	ld	a4,8(s1)
    80002514:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002518:	0104b703          	ld	a4,16(s1)
    8000251c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002520:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    80002524:	00100693          	li	a3,1
    80002528:	00100613          	li	a2,1
    8000252c:	00048513          	mv	a0,s1
    80002530:	00000097          	auipc	ra,0x0
    80002534:	f04080e7          	jalr	-252(ra) # 80002434 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    80002538:	fa9ff06f          	j	800024e0 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    8000253c:	00078713          	mv	a4,a5
    80002540:	0080006f          	j	80002548 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002544:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002548:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000254c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002550:	04070063          	beqz	a4,80002590 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002554:	01073783          	ld	a5,16(a4)
    80002558:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000255c:	02070e63          	beqz	a4,80002598 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002560:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002564:	0104b783          	ld	a5,16(s1)
    80002568:	00078463          	beqz	a5,80002570 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    8000256c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002570:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002574:	00048513          	mv	a0,s1
    80002578:	01813083          	ld	ra,24(sp)
    8000257c:	01013403          	ld	s0,16(sp)
    80002580:	00813483          	ld	s1,8(sp)
    80002584:	00013903          	ld	s2,0(sp)
    80002588:	02010113          	addi	sp,sp,32
    8000258c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002590:	00070793          	mv	a5,a4
    80002594:	fc5ff06f          	j	80002558 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002598:	0000b797          	auipc	a5,0xb
    8000259c:	8e97b423          	sd	s1,-1816(a5) # 8000ce80 <_ZN15MemoryAllocator11usedSegHeadE>
    800025a0:	fc5ff06f          	j	80002564 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    800025a4:	00000493          	li	s1,0
    800025a8:	fcdff06f          	j	80002574 <_ZN15MemoryAllocator9mem_allocEm+0xec>

00000000800025ac <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800025ac:	ff010113          	addi	sp,sp,-16
    800025b0:	00813423          	sd	s0,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800025b8:	01053783          	ld	a5,16(a0)
    800025bc:	00078863          	beqz	a5,800025cc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025c0:	00053703          	ld	a4,0(a0)
    800025c4:	00e506b3          	add	a3,a0,a4
    800025c8:	00d78863          	beq	a5,a3,800025d8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800025d8:	0007b683          	ld	a3,0(a5)
    800025dc:	00d70733          	add	a4,a4,a3
    800025e0:	01870713          	addi	a4,a4,24
    800025e4:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800025e8:	0107b783          	ld	a5,16(a5)
    800025ec:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800025f0:	fc078ee3          	beqz	a5,800025cc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025f4:	00a7b423          	sd	a0,8(a5)
}
    800025f8:	fd5ff06f          	j	800025cc <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800025fc <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025fc:	14050a63          	beqz	a0,80002750 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    80002600:	fd010113          	addi	sp,sp,-48
    80002604:	02113423          	sd	ra,40(sp)
    80002608:	02813023          	sd	s0,32(sp)
    8000260c:	00913c23          	sd	s1,24(sp)
    80002610:	01213823          	sd	s2,16(sp)
    80002614:	01313423          	sd	s3,8(sp)
    80002618:	03010413          	addi	s0,sp,48
    8000261c:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002620:	0000a797          	auipc	a5,0xa
    80002624:	7b07b783          	ld	a5,1968(a5) # 8000cdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002628:	0007b783          	ld	a5,0(a5)
    8000262c:	12f56663          	bltu	a0,a5,80002758 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    80002630:	0000a797          	auipc	a5,0xa
    80002634:	7e07b783          	ld	a5,2016(a5) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002638:	0007b783          	ld	a5,0(a5)
    8000263c:	12a7e263          	bltu	a5,a0,80002760 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    80002640:	0000b797          	auipc	a5,0xb
    80002644:	8407b783          	ld	a5,-1984(a5) # 8000ce80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002648:	12078063          	beqz	a5,80002768 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    8000264c:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002650:	00078863          	beqz	a5,80002660 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002654:	0a978663          	beq	a5,s1,80002700 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002658:	0107b783          	ld	a5,16(a5)
    8000265c:	ff5ff06f          	j	80002650 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002660:	00000793          	li	a5,0
    if (!found) return -3;
    80002664:	10078663          	beqz	a5,80002770 <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002668:	00000693          	li	a3,0
    8000266c:	00000613          	li	a2,0
    80002670:	ff893583          	ld	a1,-8(s2)
    80002674:	00048513          	mv	a0,s1
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	dbc080e7          	jalr	-580(ra) # 80002434 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    80002680:	fe893783          	ld	a5,-24(s2)
    80002684:	01878793          	addi	a5,a5,24
    80002688:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    8000268c:	0000a797          	auipc	a5,0xa
    80002690:	7ec7b783          	ld	a5,2028(a5) # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    80002694:	06078a63          	beqz	a5,80002708 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002698:	08f4e463          	bltu	s1,a5,80002720 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000269c:	00078993          	mv	s3,a5
    800026a0:	0107b783          	ld	a5,16(a5)
    800026a4:	00078463          	beqz	a5,800026ac <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    800026a8:	fe97eae3          	bltu	a5,s1,8000269c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    800026ac:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800026b0:	0109b783          	ld	a5,16(s3)
    800026b4:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800026b8:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800026bc:	ff893783          	ld	a5,-8(s2)
    800026c0:	00078463          	beqz	a5,800026c8 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    800026c4:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800026c8:	00048513          	mv	a0,s1
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	ee0080e7          	jalr	-288(ra) # 800025ac <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800026d4:	00098513          	mv	a0,s3
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	ed4080e7          	jalr	-300(ra) # 800025ac <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800026e0:	00000513          	li	a0,0
}
    800026e4:	02813083          	ld	ra,40(sp)
    800026e8:	02013403          	ld	s0,32(sp)
    800026ec:	01813483          	ld	s1,24(sp)
    800026f0:	01013903          	ld	s2,16(sp)
    800026f4:	00813983          	ld	s3,8(sp)
    800026f8:	03010113          	addi	sp,sp,48
    800026fc:	00008067          	ret
            found = true;
    80002700:	00100793          	li	a5,1
    80002704:	f61ff06f          	j	80002664 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002708:	0000a797          	auipc	a5,0xa
    8000270c:	7697b823          	sd	s1,1904(a5) # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    80002710:	fe093c23          	sd	zero,-8(s2)
    80002714:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002718:	00000513          	li	a0,0
    8000271c:	fc9ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    80002720:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002724:	0000a797          	auipc	a5,0xa
    80002728:	75478793          	addi	a5,a5,1876 # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    8000272c:	0007b703          	ld	a4,0(a5)
    80002730:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002734:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002738:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    8000273c:	00048513          	mv	a0,s1
    80002740:	00000097          	auipc	ra,0x0
    80002744:	e6c080e7          	jalr	-404(ra) # 800025ac <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002748:	00000513          	li	a0,0
    8000274c:	f99ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002750:	fff00513          	li	a0,-1
}
    80002754:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002758:	fff00513          	li	a0,-1
    8000275c:	f89ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    80002760:	fff00513          	li	a0,-1
    80002764:	f81ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002768:	ffe00513          	li	a0,-2
    8000276c:	f79ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    80002770:	ffd00513          	li	a0,-3
    80002774:	f71ff06f          	j	800026e4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002778 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002778:	fe010113          	addi	sp,sp,-32
    8000277c:	00113c23          	sd	ra,24(sp)
    80002780:	00813823          	sd	s0,16(sp)
    80002784:	00913423          	sd	s1,8(sp)
    80002788:	02010413          	addi	s0,sp,32
    putc('\n');
    8000278c:	00a00513          	li	a0,10
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	edc080e7          	jalr	-292(ra) # 8000166c <_Z4putcc>
    putc('M');
    80002798:	04d00513          	li	a0,77
    8000279c:	fffff097          	auipc	ra,0xfffff
    800027a0:	ed0080e7          	jalr	-304(ra) # 8000166c <_Z4putcc>
    putc(':');
    800027a4:	03a00513          	li	a0,58
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	ec4080e7          	jalr	-316(ra) # 8000166c <_Z4putcc>
    putc(' ');
    800027b0:	02000513          	li	a0,32
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	eb8080e7          	jalr	-328(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027bc:	0000a497          	auipc	s1,0xa
    800027c0:	6bc4b483          	ld	s1,1724(s1) # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    800027c4:	02048863          	beqz	s1,800027f4 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800027c8:	0004b503          	ld	a0,0(s1)
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	3d0080e7          	jalr	976(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    800027d4:	02000513          	li	a0,32
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	e94080e7          	jalr	-364(ra) # 8000166c <_Z4putcc>
        putc('f');
    800027e0:	06600513          	li	a0,102
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	e88080e7          	jalr	-376(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027ec:	0104b483          	ld	s1,16(s1)
    800027f0:	fd5ff06f          	j	800027c4 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    putc('\t');
    800027f4:	00900513          	li	a0,9
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	e74080e7          	jalr	-396(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002800:	0000a497          	auipc	s1,0xa
    80002804:	6804b483          	ld	s1,1664(s1) # 8000ce80 <_ZN15MemoryAllocator11usedSegHeadE>
    80002808:	02048863          	beqz	s1,80002838 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    8000280c:	0004b503          	ld	a0,0(s1)
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	38c080e7          	jalr	908(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    80002818:	02000513          	li	a0,32
    8000281c:	fffff097          	auipc	ra,0xfffff
    80002820:	e50080e7          	jalr	-432(ra) # 8000166c <_Z4putcc>
        putc('u');
    80002824:	07500513          	li	a0,117
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	e44080e7          	jalr	-444(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    80002830:	0104b483          	ld	s1,16(s1)
    80002834:	fd5ff06f          	j	80002808 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002838:	01813083          	ld	ra,24(sp)
    8000283c:	01013403          	ld	s0,16(sp)
    80002840:	00813483          	ld	s1,8(sp)
    80002844:	02010113          	addi	sp,sp,32
    80002848:	00008067          	ret

000000008000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00813423          	sd	s0,8(sp)
    80002854:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002858:	05750513          	addi	a0,a0,87
}
    8000285c:	00655513          	srli	a0,a0,0x6
    80002860:	00813403          	ld	s0,8(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    8000286c:	0000a797          	auipc	a5,0xa
    80002870:	61c7b783          	ld	a5,1564(a5) # 8000ce88 <_ZN15MemoryAllocator8instanceE>
    80002874:	00078463          	beqz	a5,8000287c <_ZN15MemoryAllocator10initializeEv+0x10>
    80002878:	00008067          	ret
void MemoryAllocator::initialize() {
    8000287c:	fe010113          	addi	sp,sp,-32
    80002880:	00113c23          	sd	ra,24(sp)
    80002884:	00813823          	sd	s0,16(sp)
    80002888:	00913423          	sd	s1,8(sp)
    8000288c:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002890:	0000a797          	auipc	a5,0xa
    80002894:	5407b783          	ld	a5,1344(a5) # 8000cdd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002898:	0007b783          	ld	a5,0(a5)
    8000289c:	0000a497          	auipc	s1,0xa
    800028a0:	5dc48493          	addi	s1,s1,1500 # 8000ce78 <_ZN15MemoryAllocator11freeSegHeadE>
    800028a4:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800028a8:	0000a717          	auipc	a4,0xa
    800028ac:	56873703          	ld	a4,1384(a4) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x58>
    800028b0:	00073703          	ld	a4,0(a4)
    800028b4:	40f70733          	sub	a4,a4,a5
    800028b8:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800028bc:	0004b783          	ld	a5,0(s1)
    800028c0:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800028c4:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800028c8:	00100513          	li	a0,1
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	f80080e7          	jalr	-128(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	bb4080e7          	jalr	-1100(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
    800028dc:	00a4b823          	sd	a0,16(s1)
}
    800028e0:	01813083          	ld	ra,24(sp)
    800028e4:	01013403          	ld	s0,16(sp)
    800028e8:	00813483          	ld	s1,8(sp)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00008067          	ret

00000000800028f4 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800028f4:	fe010113          	addi	sp,sp,-32
    800028f8:	00113c23          	sd	ra,24(sp)
    800028fc:	00813823          	sd	s0,16(sp)
    80002900:	00913423          	sd	s1,8(sp)
    80002904:	02010413          	addi	s0,sp,32
    80002908:	00050493          	mv	s1,a0
    8000290c:	00052023          	sw	zero,0(a0)
    80002910:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    80002914:	00000593          	li	a1,0
    80002918:	01050513          	addi	a0,a0,16
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	13c080e7          	jalr	316(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002924:	1f400593          	li	a1,500
    80002928:	00848513          	addi	a0,s1,8
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	12c080e7          	jalr	300(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
}
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret

0000000080002948 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002960:	01053503          	ld	a0,16(a0)
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	ecc080e7          	jalr	-308(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    8000296c:	0084b503          	ld	a0,8(s1)
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	ec0080e7          	jalr	-320(ra) # 80001830 <_ZN3Sem5closeEPS_>
}
    80002978:	01813083          	ld	ra,24(sp)
    8000297c:	01013403          	ld	s0,16(sp)
    80002980:	00813483          	ld	s1,8(sp)
    80002984:	02010113          	addi	sp,sp,32
    80002988:	00008067          	ret

000000008000298c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	eb0080e7          	jalr	-336(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	ae4080e7          	jalr	-1308(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	c30080e7          	jalr	-976(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	01213023          	sd	s2,0(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
    80002a00:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002a04:	00853503          	ld	a0,8(a0)
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	e94080e7          	jalr	-364(ra) # 8000189c <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002a10:	0044a783          	lw	a5,4(s1)
    80002a14:	00f48733          	add	a4,s1,a5
    80002a18:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002a1c:	0017879b          	addiw	a5,a5,1
    80002a20:	1f400713          	li	a4,500
    80002a24:	02e7e7bb          	remw	a5,a5,a4
    80002a28:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002a2c:	0104b503          	ld	a0,16(s1)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	ec0080e7          	jalr	-320(ra) # 800018f0 <_ZN3Sem6signalEPS_>
}
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	00813483          	ld	s1,8(sp)
    80002a44:	00013903          	ld	s2,0(sp)
    80002a48:	02010113          	addi	sp,sp,32
    80002a4c:	00008067          	ret

0000000080002a50 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a50:	fe010113          	addi	sp,sp,-32
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	00813823          	sd	s0,16(sp)
    80002a5c:	00913423          	sd	s1,8(sp)
    80002a60:	01213023          	sd	s2,0(sp)
    80002a64:	02010413          	addi	s0,sp,32
    80002a68:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002a6c:	01053503          	ld	a0,16(a0)
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	e2c080e7          	jalr	-468(ra) # 8000189c <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002a78:	0004a783          	lw	a5,0(s1)
    80002a7c:	00f48733          	add	a4,s1,a5
    80002a80:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002a84:	0017879b          	addiw	a5,a5,1
    80002a88:	1f400713          	li	a4,500
    80002a8c:	02e7e7bb          	remw	a5,a5,a4
    80002a90:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002a94:	0084b503          	ld	a0,8(s1)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	e58080e7          	jalr	-424(ra) # 800018f0 <_ZN3Sem6signalEPS_>
    return c;
}
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	01013403          	ld	s0,16(sp)
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	00013903          	ld	s2,0(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <_ZN9Scheduler3putEP3TCB>:
TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002ad4:	0000a517          	auipc	a0,0xa
    80002ad8:	3bc53503          	ld	a0,956(a0) # 8000ce90 <_ZN9Scheduler10tail_readyE>
    80002adc:	02050e63          	beqz	a0,80002b18 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002ae0:	00048593          	mv	a1,s1
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	ad8080e7          	jalr	-1320(ra) # 800035bc <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002aec:	0000a797          	auipc	a5,0xa
    80002af0:	3a97b223          	sd	s1,932(a5) # 8000ce90 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002af4:	00000593          	li	a1,0
    80002af8:	00048513          	mv	a0,s1
    80002afc:	00001097          	auipc	ra,0x1
    80002b00:	ac0080e7          	jalr	-1344(ra) # 800035bc <_ZN3TCB14set_next_readyEPS_>
}
    80002b04:	01813083          	ld	ra,24(sp)
    80002b08:	01013403          	ld	s0,16(sp)
    80002b0c:	00813483          	ld	s1,8(sp)
    80002b10:	02010113          	addi	sp,sp,32
    80002b14:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002b18:	0000a797          	auipc	a5,0xa
    80002b1c:	37878793          	addi	a5,a5,888 # 8000ce90 <_ZN9Scheduler10tail_readyE>
    80002b20:	0097b023          	sd	s1,0(a5)
    80002b24:	0097b423          	sd	s1,8(a5)
    80002b28:	fcdff06f          	j	80002af4 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002b2c <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002b2c:	fe010113          	addi	sp,sp,-32
    80002b30:	00113c23          	sd	ra,24(sp)
    80002b34:	00813823          	sd	s0,16(sp)
    80002b38:	00913423          	sd	s1,8(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b40:	0000a497          	auipc	s1,0xa
    80002b44:	3584b483          	ld	s1,856(s1) # 8000ce98 <_ZN9Scheduler10head_readyE>
    80002b48:	02048663          	beqz	s1,80002b74 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	a50080e7          	jalr	-1456(ra) # 800035a0 <_ZNK3TCB14get_next_readyEv>
    80002b58:	0000a797          	auipc	a5,0xa
    80002b5c:	34a7b023          	sd	a0,832(a5) # 8000ce98 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b60:	02050663          	beqz	a0,80002b8c <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002b64:	00000593          	li	a1,0
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	a50080e7          	jalr	-1456(ra) # 800035bc <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002b74:	00048513          	mv	a0,s1
    80002b78:	01813083          	ld	ra,24(sp)
    80002b7c:	01013403          	ld	s0,16(sp)
    80002b80:	00813483          	ld	s1,8(sp)
    80002b84:	02010113          	addi	sp,sp,32
    80002b88:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002b8c:	0000a797          	auipc	a5,0xa
    80002b90:	3007b223          	sd	zero,772(a5) # 8000ce90 <_ZN9Scheduler10tail_readyE>
    80002b94:	fd1ff06f          	j	80002b64 <_ZN9Scheduler3getEv+0x38>

0000000080002b98 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00813423          	sd	s0,8(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002ba4:	06050863          	beqz	a0,80002c14 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002ba8:	0000a797          	auipc	a5,0xa
    80002bac:	2f87b783          	ld	a5,760(a5) # 8000cea0 <_ZN9Scheduler13head_sleepingE>
    80002bb0:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002bb4:	00078a63          	beqz	a5,80002bc8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002bb8:	00a78863          	beq	a5,a0,80002bc8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002bbc:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002bc0:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002bc4:	ff1ff06f          	j	80002bb4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002bc8:	04078a63          	beqz	a5,80002c1c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002bcc:	02070c63          	beqz	a4,80002c04 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002bd0:	0587b683          	ld	a3,88(a5)
    80002bd4:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002bd8:	0587b703          	ld	a4,88(a5)
    80002bdc:	00070a63          	beqz	a4,80002bf0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002be0:	0507b603          	ld	a2,80(a5)
    80002be4:	05073683          	ld	a3,80(a4)
    80002be8:	00c686b3          	add	a3,a3,a2
    80002bec:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002bf0:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002bf4:	00000513          	li	a0,0
}
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002c04:	0587b703          	ld	a4,88(a5)
    80002c08:	0000a697          	auipc	a3,0xa
    80002c0c:	28e6bc23          	sd	a4,664(a3) # 8000cea0 <_ZN9Scheduler13head_sleepingE>
    80002c10:	fc9ff06f          	j	80002bd8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002c14:	fff00513          	li	a0,-1
    80002c18:	fe1ff06f          	j	80002bf8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002c1c:	ffe00513          	li	a0,-2
    80002c20:	fd9ff06f          	j	80002bf8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002c24 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002c24:	fe010113          	addi	sp,sp,-32
    80002c28:	00113c23          	sd	ra,24(sp)
    80002c2c:	00813823          	sd	s0,16(sp)
    80002c30:	00913423          	sd	s1,8(sp)
    80002c34:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c38:	0000a797          	auipc	a5,0xa
    80002c3c:	1d07b783          	ld	a5,464(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c40:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002c44:	00100593          	li	a1,1
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	9fc080e7          	jalr	-1540(ra) # 80003648 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002c54:	0484c783          	lbu	a5,72(s1)
    80002c58:	00078c63          	beqz	a5,80002c70 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002c5c:	01813083          	ld	ra,24(sp)
    80002c60:	01013403          	ld	s0,16(sp)
    80002c64:	00813483          	ld	s1,8(sp)
    80002c68:	02010113          	addi	sp,sp,32
    80002c6c:	00008067          	ret
        TCB::running = Scheduler::get();
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	ebc080e7          	jalr	-324(ra) # 80002b2c <_ZN9Scheduler3getEv>
    80002c78:	00050593          	mv	a1,a0
    80002c7c:	0000a797          	auipc	a5,0xa
    80002c80:	18c7b783          	ld	a5,396(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c84:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002c88:	fca48ae3          	beq	s1,a0,80002c5c <_ZN9Scheduler13change_threadEv+0x38>
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	828080e7          	jalr	-2008(ra) # 800034b8 <_ZN3TCB5yieldEPS_S0_>
}
    80002c98:	fc5ff06f          	j	80002c5c <_ZN9Scheduler13change_threadEv+0x38>

0000000080002c9c <_ZN9Scheduler12put_to_sleepEm>:
    if (time <= 0) return -1;
    80002c9c:	18050a63          	beqz	a0,80002e30 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002ca0:	fc010113          	addi	sp,sp,-64
    80002ca4:	02113c23          	sd	ra,56(sp)
    80002ca8:	02813823          	sd	s0,48(sp)
    80002cac:	02913423          	sd	s1,40(sp)
    80002cb0:	03213023          	sd	s2,32(sp)
    80002cb4:	01313c23          	sd	s3,24(sp)
    80002cb8:	01413823          	sd	s4,16(sp)
    80002cbc:	01513423          	sd	s5,8(sp)
    80002cc0:	04010413          	addi	s0,sp,64
    80002cc4:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002cc8:	0000a797          	auipc	a5,0xa
    80002ccc:	1407b783          	ld	a5,320(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cd0:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002cd4:	0000a497          	auipc	s1,0xa
    80002cd8:	1cc4b483          	ld	s1,460(s1) # 8000cea0 <_ZN9Scheduler13head_sleepingE>
    80002cdc:	02048e63          	beqz	s1,80002d18 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002ce0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002ce4:	00000a13          	li	s4,0
    while (tmp) {
    80002ce8:	0e048463          	beqz	s1,80002dd0 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	00001097          	auipc	ra,0x1
    80002cf4:	93c080e7          	jalr	-1732(ra) # 8000362c <_ZNK3TCB17get_time_to_sleepEv>
    80002cf8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002cfc:	0529ea63          	bltu	s3,s2,80002d50 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	8f0080e7          	jalr	-1808(ra) # 800035f4 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002d0c:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002d10:	00050493          	mv	s1,a0
    while (tmp) {
    80002d14:	fd5ff06f          	j	80002ce8 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002d18:	0000a797          	auipc	a5,0xa
    80002d1c:	1957b423          	sd	s5,392(a5) # 8000cea0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002d20:	00000593          	li	a1,0
    80002d24:	000a8513          	mv	a0,s5
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	8b0080e7          	jalr	-1872(ra) # 800035d8 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002d30:	00098593          	mv	a1,s3
    80002d34:	000a8513          	mv	a0,s5
    80002d38:	00001097          	auipc	ra,0x1
    80002d3c:	8d8080e7          	jalr	-1832(ra) # 80003610 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	ee4080e7          	jalr	-284(ra) # 80002c24 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d48:	00000513          	li	a0,0
    80002d4c:	0c00006f          	j	80002e0c <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	8d8080e7          	jalr	-1832(ra) # 8000362c <_ZNK3TCB17get_time_to_sleepEv>
    80002d5c:	41250933          	sub	s2,a0,s2
    80002d60:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002d64:	00098593          	mv	a1,s3
    80002d68:	000a8513          	mv	a0,s5
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	8a4080e7          	jalr	-1884(ra) # 80003610 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002d74:	00048593          	mv	a1,s1
    80002d78:	000a8513          	mv	a0,s5
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	85c080e7          	jalr	-1956(ra) # 800035d8 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002d84:	040a0063          	beqz	s4,80002dc4 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002d88:	000a8593          	mv	a1,s5
    80002d8c:	000a0513          	mv	a0,s4
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	848080e7          	jalr	-1976(ra) # 800035d8 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	890080e7          	jalr	-1904(ra) # 8000362c <_ZNK3TCB17get_time_to_sleepEv>
    80002da4:	413505b3          	sub	a1,a0,s3
    80002da8:	00048513          	mv	a0,s1
    80002dac:	00001097          	auipc	ra,0x1
    80002db0:	864080e7          	jalr	-1948(ra) # 80003610 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	e70080e7          	jalr	-400(ra) # 80002c24 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002dbc:	00000513          	li	a0,0
    80002dc0:	04c0006f          	j	80002e0c <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002dc4:	0000a797          	auipc	a5,0xa
    80002dc8:	0d57be23          	sd	s5,220(a5) # 8000cea0 <_ZN9Scheduler13head_sleepingE>
    80002dcc:	fcdff06f          	j	80002d98 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002dd0:	412985b3          	sub	a1,s3,s2
    80002dd4:	000a8513          	mv	a0,s5
    80002dd8:	00001097          	auipc	ra,0x1
    80002ddc:	838080e7          	jalr	-1992(ra) # 80003610 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002de0:	000a8593          	mv	a1,s5
    80002de4:	000a0513          	mv	a0,s4
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	7f0080e7          	jalr	2032(ra) # 800035d8 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002df0:	00000593          	li	a1,0
    80002df4:	000a8513          	mv	a0,s5
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	7e0080e7          	jalr	2016(ra) # 800035d8 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	e24080e7          	jalr	-476(ra) # 80002c24 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002e08:	00000513          	li	a0,0
}
    80002e0c:	03813083          	ld	ra,56(sp)
    80002e10:	03013403          	ld	s0,48(sp)
    80002e14:	02813483          	ld	s1,40(sp)
    80002e18:	02013903          	ld	s2,32(sp)
    80002e1c:	01813983          	ld	s3,24(sp)
    80002e20:	01013a03          	ld	s4,16(sp)
    80002e24:	00813a83          	ld	s5,8(sp)
    80002e28:	04010113          	addi	sp,sp,64
    80002e2c:	00008067          	ret
    if (time <= 0) return -1;
    80002e30:	fff00513          	li	a0,-1
}
    80002e34:	00008067          	ret

0000000080002e38 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00813423          	sd	s0,8(sp)
    80002e40:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002e44:	0000a797          	auipc	a5,0xa
    80002e48:	fc47b783          	ld	a5,-60(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e4c:	0007b783          	ld	a5,0(a5)
    80002e50:	0287b783          	ld	a5,40(a5)
    80002e54:	00078c63          	beqz	a5,80002e6c <_ZN5RiscV10popSppSpieEv+0x34>
    80002e58:	0000a717          	auipc	a4,0xa
    80002e5c:	fa873703          	ld	a4,-88(a4) # 8000ce00 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e60:	00e78663          	beq	a5,a4,80002e6c <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002e64:	10000793          	li	a5,256
    80002e68:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002e6c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002e70:	10200073          	sret
}
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002e80:	f9010113          	addi	sp,sp,-112
    80002e84:	06113423          	sd	ra,104(sp)
    80002e88:	06813023          	sd	s0,96(sp)
    80002e8c:	04913c23          	sd	s1,88(sp)
    80002e90:	05213823          	sd	s2,80(sp)
    80002e94:	05313423          	sd	s3,72(sp)
    80002e98:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002e9c:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002ea0:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ea4:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ea8:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002eac:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002eb0:	14202773          	csrr	a4,scause
    80002eb4:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002eb8:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002ebc:	ff870893          	addi	a7,a4,-8
    80002ec0:	00100813          	li	a6,1
    80002ec4:	07187063          	bgeu	a6,a7,80002f24 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002ec8:	fff00793          	li	a5,-1
    80002ecc:	03f79793          	slli	a5,a5,0x3f
    80002ed0:	00178793          	addi	a5,a5,1
    80002ed4:	16f70063          	beq	a4,a5,80003034 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002ed8:	fff00793          	li	a5,-1
    80002edc:	03f79793          	slli	a5,a5,0x3f
    80002ee0:	00978793          	addi	a5,a5,9
    80002ee4:	22f70463          	beq	a4,a5,8000310c <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002ee8:	00070513          	mv	a0,a4
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	cb0080e7          	jalr	-848(ra) # 80001b9c <_Z11printNumberm>
        putc('!');
    80002ef4:	02100513          	li	a0,33
    80002ef8:	ffffe097          	auipc	ra,0xffffe
    80002efc:	774080e7          	jalr	1908(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002f00:	03f00513          	li	a0,63
    80002f04:	ffffe097          	auipc	ra,0xffffe
    80002f08:	768080e7          	jalr	1896(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002f0c:	02100513          	li	a0,33
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	75c080e7          	jalr	1884(ra) # 8000166c <_Z4putcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002f18:	00100793          	li	a5,1
    80002f1c:	00078513          	mv	a0,a5
    }
    80002f20:	0540006f          	j	80002f74 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f24:	14102773          	csrr	a4,sepc
    80002f28:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002f2c:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002f30:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f34:	10002773          	csrr	a4,sstatus
    80002f38:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002f3c:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002f40:	04200713          	li	a4,66
    80002f44:	02f76463          	bltu	a4,a5,80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002f48:	00279793          	slli	a5,a5,0x2
    80002f4c:	00007717          	auipc	a4,0x7
    80002f50:	0d470713          	addi	a4,a4,212 # 8000a020 <CONSOLE_STATUS+0x10>
    80002f54:	00e787b3          	add	a5,a5,a4
    80002f58:	0007a783          	lw	a5,0(a5)
    80002f5c:	00e787b3          	add	a5,a5,a4
    80002f60:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	524080e7          	jalr	1316(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f6c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f70:	10091073          	csrw	sstatus,s2
    80002f74:	06813083          	ld	ra,104(sp)
    80002f78:	06013403          	ld	s0,96(sp)
    80002f7c:	05813483          	ld	s1,88(sp)
    80002f80:	05013903          	ld	s2,80(sp)
    80002f84:	04813983          	ld	s3,72(sp)
    80002f88:	07010113          	addi	sp,sp,112
    80002f8c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	66c080e7          	jalr	1644(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002f98:	fd5ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	76c080e7          	jalr	1900(ra) # 80003708 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002fa4:	fc9ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	6bc080e7          	jalr	1724(ra) # 80003664 <_ZN3TCB11thread_exitEv>
                break;
    80002fb0:	fbdff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	560080e7          	jalr	1376(ra) # 80003514 <_ZN3TCB8dispatchEv>
                break;
    80002fbc:	fb1ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80002fc0:	0005859b          	sext.w	a1,a1
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	a94080e7          	jalr	-1388(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80002fcc:	fa1ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	860080e7          	jalr	-1952(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    80002fd8:	f95ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	8c0080e7          	jalr	-1856(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    80002fe4:	f89ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	908080e7          	jalr	-1784(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    80002ff0:	f7dff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	950080e7          	jalr	-1712(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002ffc:	f71ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	9c8080e7          	jalr	-1592(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    80003008:	f65ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	c90080e7          	jalr	-880(ra) # 80002c9c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80003014:	f59ff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	e90080e7          	jalr	-368(ra) # 80001ea8 <_ZN3Con10getc_inputEv>
                break;
    80003020:	f4dff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80003024:	0ff57513          	andi	a0,a0,255
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	de8080e7          	jalr	-536(ra) # 80001e10 <_ZN3Con11putc_outputEc>
                break;
    80003030:	f3dff06f          	j	80002f6c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003034:	00200793          	li	a5,2
    80003038:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    8000303c:	0000a797          	auipc	a5,0xa
    80003040:	d9c7b783          	ld	a5,-612(a5) # 8000cdd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003044:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003048:	06048263          	beqz	s1,800030ac <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    8000304c:	0504b783          	ld	a5,80(s1)
    80003050:	fff78793          	addi	a5,a5,-1
    80003054:	04f4b823          	sd	a5,80(s1)
    80003058:	03c0006f          	j	80003094 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    8000305c:	00100593          	li	a1,1
    80003060:	00048513          	mv	a0,s1
    80003064:	00000097          	auipc	ra,0x0
    80003068:	7cc080e7          	jalr	1996(ra) # 80003830 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    8000306c:	00048513          	mv	a0,s1
    80003070:	00000097          	auipc	ra,0x0
    80003074:	a4c080e7          	jalr	-1460(ra) # 80002abc <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80003078:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    8000307c:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003080:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003084:	0000a717          	auipc	a4,0xa
    80003088:	d5473703          	ld	a4,-684(a4) # 8000cdd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000308c:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003090:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003094:	00048c63          	beqz	s1,800030ac <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    80003098:	0504b783          	ld	a5,80(s1)
    8000309c:	00079863          	bnez	a5,800030ac <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    800030a0:	0484c783          	lbu	a5,72(s1)
    800030a4:	fc0784e3          	beqz	a5,8000306c <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    800030a8:	fb5ff06f          	j	8000305c <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    800030ac:	0000a717          	auipc	a4,0xa
    800030b0:	d4c73703          	ld	a4,-692(a4) # 8000cdf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030b4:	00073783          	ld	a5,0(a4)
    800030b8:	00178793          	addi	a5,a5,1
    800030bc:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    800030c0:	0000a717          	auipc	a4,0xa
    800030c4:	d4873703          	ld	a4,-696(a4) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x50>
    800030c8:	00073703          	ld	a4,0(a4)
    800030cc:	00073703          	ld	a4,0(a4)
    800030d0:	eae7e2e3          	bltu	a5,a4,80002f74 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800030d4:	141027f3          	csrr	a5,sepc
    800030d8:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800030dc:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800030e0:	100027f3          	csrr	a5,sstatus
    800030e4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800030e8:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800030ec:	0000a797          	auipc	a5,0xa
    800030f0:	d0c7b783          	ld	a5,-756(a5) # 8000cdf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030f4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	41c080e7          	jalr	1052(ra) # 80003514 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003100:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003104:	14149073          	csrw	sepc,s1
}
    80003108:	e6dff06f          	j	80002f74 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    8000310c:	141027f3          	csrr	a5,sepc
    80003110:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003114:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003118:	100027f3          	csrr	a5,sstatus
    8000311c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003120:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80003124:	00004097          	auipc	ra,0x4
    80003128:	690080e7          	jalr	1680(ra) # 800077b4 <plic_claim>
    8000312c:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80003130:	00a00793          	li	a5,10
    80003134:	02f50263          	beq	a0,a5,80003158 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    80003138:	00048513          	mv	a0,s1
    8000313c:	00004097          	auipc	ra,0x4
    80003140:	6b0080e7          	jalr	1712(ra) # 800077ec <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003144:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003148:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    8000314c:	20000793          	li	a5,512
    80003150:	1447b073          	csrc	sip,a5
}
    80003154:	e21ff06f          	j	80002f74 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003158:	0000a797          	auipc	a5,0xa
    8000315c:	c707b783          	ld	a5,-912(a5) # 8000cdc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003160:	0007b783          	ld	a5,0(a5)
    80003164:	0007c783          	lbu	a5,0(a5)
    80003168:	0017f793          	andi	a5,a5,1
    8000316c:	fc0786e3          	beqz	a5,80003138 <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    80003170:	0000a797          	auipc	a5,0xa
    80003174:	c507b783          	ld	a5,-944(a5) # 8000cdc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003178:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    8000317c:	0007c503          	lbu	a0,0(a5)
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	cf4080e7          	jalr	-780(ra) # 80001e74 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003188:	fd1ff06f          	j	80003158 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

000000008000318c <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003198:	00053503          	ld	a0,0(a0)
    8000319c:	00050463          	beqz	a0,800031a4 <_ZN10ThreadList9get_firstEv+0x18>
    800031a0:	00053503          	ld	a0,0(a0)
}
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    800031bc:	04058863          	beqz	a1,8000320c <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    800031c0:	00053783          	ld	a5,0(a0)
    800031c4:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    800031c8:	00078c63          	beqz	a5,800031e0 <_ZN10ThreadList6removeEP3TCB+0x30>
    800031cc:	0007b703          	ld	a4,0(a5)
    800031d0:	00b70863          	beq	a4,a1,800031e0 <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    800031d4:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    800031d8:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    800031dc:	fedff06f          	j	800031c8 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800031e0:	02078a63          	beqz	a5,80003214 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    800031e4:	00068e63          	beqz	a3,80003200 <_ZN10ThreadList6removeEP3TCB+0x50>
    800031e8:	0087b783          	ld	a5,8(a5)
    800031ec:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    800031f0:	00000513          	li	a0,0
}
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
    else head = tmp;
    80003200:	00f53023          	sd	a5,0(a0)
    return 0;
    80003204:	00000513          	li	a0,0
    80003208:	fedff06f          	j	800031f4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    8000320c:	fff00513          	li	a0,-1
    80003210:	fe5ff06f          	j	800031f4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    80003214:	ffe00513          	li	a0,-2
    80003218:	fddff06f          	j	800031f4 <_ZN10ThreadList6removeEP3TCB+0x44>

000000008000321c <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00113423          	sd	ra,8(sp)
    80003224:	00813023          	sd	s0,0(sp)
    80003228:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	620080e7          	jalr	1568(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	254080e7          	jalr	596(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret

000000008000324c <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    8000324c:	ff010113          	addi	sp,sp,-16
    80003250:	00113423          	sd	ra,8(sp)
    80003254:	00813023          	sd	s0,0(sp)
    80003258:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	3a0080e7          	jalr	928(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003264:	00813083          	ld	ra,8(sp)
    80003268:	00013403          	ld	s0,0(sp)
    8000326c:	01010113          	addi	sp,sp,16
    80003270:	00008067          	ret

0000000080003274 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	00813023          	sd	s0,0(sp)
    80003280:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	5c8080e7          	jalr	1480(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	1fc080e7          	jalr	508(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	01213023          	sd	s2,0(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	00050493          	mv	s1,a0
    800032c0:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    800032c4:	01000513          	li	a0,16
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	fac080e7          	jalr	-84(ra) # 80003274 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    800032d0:	01253023          	sd	s2,0(a0)
    800032d4:	00053423          	sd	zero,8(a0)
    800032d8:	0004b783          	ld	a5,0(s1)
    800032dc:	02078463          	beqz	a5,80003304 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800032e0:	0084b783          	ld	a5,8(s1)
    800032e4:	00a7b423          	sd	a0,8(a5)
    800032e8:	00a4b423          	sd	a0,8(s1)
}
    800032ec:	01813083          	ld	ra,24(sp)
    800032f0:	01013403          	ld	s0,16(sp)
    800032f4:	00813483          	ld	s1,8(sp)
    800032f8:	00013903          	ld	s2,0(sp)
    800032fc:	02010113          	addi	sp,sp,32
    80003300:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003304:	00a4b023          	sd	a0,0(s1)
    80003308:	fe1ff06f          	j	800032e8 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000330c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00113423          	sd	ra,8(sp)
    80003314:	00813023          	sd	s0,0(sp)
    80003318:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	2e0080e7          	jalr	736(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003324:	00813083          	ld	ra,8(sp)
    80003328:	00013403          	ld	s0,0(sp)
    8000332c:	01010113          	addi	sp,sp,16
    80003330:	00008067          	ret

0000000080003334 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	02010413          	addi	s0,sp,32
    80003348:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000334c:	00053503          	ld	a0,0(a0)
    80003350:	02050863          	beqz	a0,80003380 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003354:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003358:	00853703          	ld	a4,8(a0)
    8000335c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003360:	00000097          	auipc	ra,0x0
    80003364:	fac080e7          	jalr	-84(ra) # 8000330c <_ZN10ThreadList4NodedlEPv>
}
    80003368:	00048513          	mv	a0,s1
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret
    if (!head) return nullptr;
    80003380:	00050493          	mv	s1,a0
    80003384:	fe5ff06f          	j	80003368 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003388 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800033a0:	00048513          	mv	a0,s1
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	de8080e7          	jalr	-536(ra) # 8000318c <_ZN10ThreadList9get_firstEv>
    800033ac:	00050a63          	beqz	a0,800033c0 <_ZN10ThreadList4freeEv+0x38>
    800033b0:	00048513          	mv	a0,s1
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	f80080e7          	jalr	-128(ra) # 80003334 <_ZN10ThreadList12remove_firstEv>
    800033bc:	fe5ff06f          	j	800033a0 <_ZN10ThreadList4freeEv+0x18>
}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret

00000000800033d4 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00113423          	sd	ra,8(sp)
    800033dc:	00813023          	sd	s0,0(sp)
    800033e0:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	a54080e7          	jalr	-1452(ra) # 80002e38 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    800033ec:	0000a717          	auipc	a4,0xa
    800033f0:	abc73703          	ld	a4,-1348(a4) # 8000cea8 <_ZN3TCB7runningE>
    800033f4:	02873783          	ld	a5,40(a4)
    800033f8:	00078663          	beqz	a5,80003404 <_ZN3TCB16wrapper_functionEv+0x30>
    800033fc:	03073503          	ld	a0,48(a4)
    80003400:	000780e7          	jalr	a5
    ::thread_exit();
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	f7c080e7          	jalr	-132(ra) # 80001380 <_Z11thread_exitv>
}
    8000340c:	00813083          	ld	ra,8(sp)
    80003410:	00013403          	ld	s0,0(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret

000000008000341c <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    8000341c:	08068863          	beqz	a3,800034ac <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    80003420:	000017b7          	lui	a5,0x1
    80003424:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003428:	00f687b3          	add	a5,a3,a5
    context = {
    8000342c:	00000717          	auipc	a4,0x0
    80003430:	fa870713          	addi	a4,a4,-88 # 800033d4 <_ZN3TCB16wrapper_functionEv>
    80003434:	00e53823          	sd	a4,16(a0)
    80003438:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    8000343c:	0000a717          	auipc	a4,0xa
    80003440:	a6c70713          	addi	a4,a4,-1428 # 8000cea8 <_ZN3TCB7runningE>
    80003444:	00872783          	lw	a5,8(a4)
    80003448:	0017881b          	addiw	a6,a5,1
    8000344c:	01072423          	sw	a6,8(a4)
    80003450:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003454:	00200793          	li	a5,2
    80003458:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    8000345c:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    80003460:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    80003464:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    80003468:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    8000346c:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    80003470:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    80003474:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    80003478:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    8000347c:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    80003480:	02058a63          	beqz	a1,800034b4 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003484:	ff010113          	addi	sp,sp,-16
    80003488:	00113423          	sd	ra,8(sp)
    8000348c:	00813023          	sd	s0,0(sp)
    80003490:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	628080e7          	jalr	1576(ra) # 80002abc <_ZN9Scheduler3putEP3TCB>
}
    8000349c:	00813083          	ld	ra,8(sp)
    800034a0:	00013403          	ld	s0,0(sp)
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800034ac:	00000793          	li	a5,0
    800034b0:	f7dff06f          	j	8000342c <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800034b4:	00008067          	ret

00000000800034b8 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    800034b8:	fe010113          	addi	sp,sp,-32
    800034bc:	00113c23          	sd	ra,24(sp)
    800034c0:	00813823          	sd	s0,16(sp)
    800034c4:	00913423          	sd	s1,8(sp)
    800034c8:	01213023          	sd	s2,0(sp)
    800034cc:	02010413          	addi	s0,sp,32
    800034d0:	00050493          	mv	s1,a0
    800034d4:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	c30080e7          	jalr	-976(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800034e0:	01248a63          	beq	s1,s2,800034f4 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800034e4:	01090593          	addi	a1,s2,16
    800034e8:	01048513          	addi	a0,s1,16
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	d1c080e7          	jalr	-740(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	c94080e7          	jalr	-876(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800034fc:	01813083          	ld	ra,24(sp)
    80003500:	01013403          	ld	s0,16(sp)
    80003504:	00813483          	ld	s1,8(sp)
    80003508:	00013903          	ld	s2,0(sp)
    8000350c:	02010113          	addi	sp,sp,32
    80003510:	00008067          	ret

0000000080003514 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003514:	fe010113          	addi	sp,sp,-32
    80003518:	00113c23          	sd	ra,24(sp)
    8000351c:	00813823          	sd	s0,16(sp)
    80003520:	00913423          	sd	s1,8(sp)
    80003524:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003528:	0000a497          	auipc	s1,0xa
    8000352c:	9804b483          	ld	s1,-1664(s1) # 8000cea8 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003530:	0204a783          	lw	a5,32(s1)
    80003534:	04078663          	beqz	a5,80003580 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003538:	00300713          	li	a4,3
    8000353c:	04e78a63          	beq	a5,a4,80003590 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    80003540:	fffff097          	auipc	ra,0xfffff
    80003544:	5ec080e7          	jalr	1516(ra) # 80002b2c <_ZN9Scheduler3getEv>
    80003548:	00050593          	mv	a1,a0
    8000354c:	0000a797          	auipc	a5,0xa
    80003550:	95c78793          	addi	a5,a5,-1700 # 8000cea8 <_ZN3TCB7runningE>
    80003554:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    80003558:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    8000355c:	00a48863          	beq	s1,a0,8000356c <_ZN3TCB8dispatchEv+0x58>
    80003560:	00048513          	mv	a0,s1
    80003564:	00000097          	auipc	ra,0x0
    80003568:	f54080e7          	jalr	-172(ra) # 800034b8 <_ZN3TCB5yieldEPS_S0_>
}
    8000356c:	01813083          	ld	ra,24(sp)
    80003570:	01013403          	ld	s0,16(sp)
    80003574:	00813483          	ld	s1,8(sp)
    80003578:	02010113          	addi	sp,sp,32
    8000357c:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003580:	00048513          	mv	a0,s1
    80003584:	fffff097          	auipc	ra,0xfffff
    80003588:	538080e7          	jalr	1336(ra) # 80002abc <_ZN9Scheduler3putEP3TCB>
    8000358c:	fb5ff06f          	j	80003540 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003590:	0384b503          	ld	a0,56(s1)
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	068080e7          	jalr	104(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
    8000359c:	fa5ff06f          	j	80003540 <_ZN3TCB8dispatchEv+0x2c>

00000000800035a0 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00813423          	sd	s0,8(sp)
    800035a8:	01010413          	addi	s0,sp,16
    return next_ready;
}
    800035ac:	04053503          	ld	a0,64(a0)
    800035b0:	00813403          	ld	s0,8(sp)
    800035b4:	01010113          	addi	sp,sp,16
    800035b8:	00008067          	ret

00000000800035bc <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00813423          	sd	s0,8(sp)
    800035c4:	01010413          	addi	s0,sp,16
    next_ready = next;
    800035c8:	04b53023          	sd	a1,64(a0)
}
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00813423          	sd	s0,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800035e4:	04b53c23          	sd	a1,88(a0)
}
    800035e8:	00813403          	ld	s0,8(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00813423          	sd	s0,8(sp)
    800035fc:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003600:	05853503          	ld	a0,88(a0)
    80003604:	00813403          	ld	s0,8(sp)
    80003608:	01010113          	addi	sp,sp,16
    8000360c:	00008067          	ret

0000000080003610 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00813423          	sd	s0,8(sp)
    80003618:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    8000361c:	04b53823          	sd	a1,80(a0)
}
    80003620:	00813403          	ld	s0,8(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00813423          	sd	s0,8(sp)
    80003634:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003638:	05053503          	ld	a0,80(a0)
    8000363c:	00813403          	ld	s0,8(sp)
    80003640:	01010113          	addi	sp,sp,16
    80003644:	00008067          	ret

0000000080003648 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003648:	ff010113          	addi	sp,sp,-16
    8000364c:	00813423          	sd	s0,8(sp)
    80003650:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003654:	02b52023          	sw	a1,32(a0)
}
    80003658:	00813403          	ld	s0,8(sp)
    8000365c:	01010113          	addi	sp,sp,16
    80003660:	00008067          	ret

0000000080003664 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    80003664:	0000a517          	auipc	a0,0xa
    80003668:	84453503          	ld	a0,-1980(a0) # 8000cea8 <_ZN3TCB7runningE>
    8000366c:	02050e63          	beqz	a0,800036a8 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00113423          	sd	ra,8(sp)
    80003678:	00813023          	sd	s0,0(sp)
    8000367c:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003680:	00300593          	li	a1,3
    80003684:	00000097          	auipc	ra,0x0
    80003688:	fc4080e7          	jalr	-60(ra) # 80003648 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	e88080e7          	jalr	-376(ra) # 80003514 <_ZN3TCB8dispatchEv>
    return 0;
    80003694:	00000513          	li	a0,0
}
    80003698:	00813083          	ld	ra,8(sp)
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret
    if (!running) return -1;
    800036a8:	fff00513          	li	a0,-1
}
    800036ac:	00008067          	ret

00000000800036b0 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800036b0:	ff010113          	addi	sp,sp,-16
    800036b4:	00113423          	sd	ra,8(sp)
    800036b8:	00813023          	sd	s0,0(sp)
    800036bc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	18c080e7          	jalr	396(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	dc0080e7          	jalr	-576(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00013403          	ld	s0,0(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret

00000000800036e0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00113423          	sd	ra,8(sp)
    800036e8:	00813023          	sd	s0,0(sp)
    800036ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	f0c080e7          	jalr	-244(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800036f8:	00813083          	ld	ra,8(sp)
    800036fc:	00013403          	ld	s0,0(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret

0000000080003708 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003708:	fc010113          	addi	sp,sp,-64
    8000370c:	02113c23          	sd	ra,56(sp)
    80003710:	02813823          	sd	s0,48(sp)
    80003714:	02913423          	sd	s1,40(sp)
    80003718:	03213023          	sd	s2,32(sp)
    8000371c:	01313c23          	sd	s3,24(sp)
    80003720:	01413823          	sd	s4,16(sp)
    80003724:	01513423          	sd	s5,8(sp)
    80003728:	04010413          	addi	s0,sp,64
    8000372c:	00050913          	mv	s2,a0
    80003730:	00058993          	mv	s3,a1
    80003734:	00060a13          	mv	s4,a2
    80003738:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000373c:	06800513          	li	a0,104
    80003740:	00000097          	auipc	ra,0x0
    80003744:	f70080e7          	jalr	-144(ra) # 800036b0 <_ZN3TCBnwEm>
    80003748:	00050493          	mv	s1,a0
    8000374c:	000a8693          	mv	a3,s5
    80003750:	000a0613          	mv	a2,s4
    80003754:	00098593          	mv	a1,s3
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	cc4080e7          	jalr	-828(ra) # 8000341c <_ZN3TCBC1EPFvPvES0_S0_>
    80003760:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    80003764:	02048663          	beqz	s1,80003790 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    80003768:	00000513          	li	a0,0
}
    8000376c:	03813083          	ld	ra,56(sp)
    80003770:	03013403          	ld	s0,48(sp)
    80003774:	02813483          	ld	s1,40(sp)
    80003778:	02013903          	ld	s2,32(sp)
    8000377c:	01813983          	ld	s3,24(sp)
    80003780:	01013a03          	ld	s4,16(sp)
    80003784:	00813a83          	ld	s5,8(sp)
    80003788:	04010113          	addi	sp,sp,64
    8000378c:	00008067          	ret
    if (!*handle) return -1;
    80003790:	fff00513          	li	a0,-1
    80003794:	fd9ff06f          	j	8000376c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    80003798:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    8000379c:	00048513          	mv	a0,s1
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	f40080e7          	jalr	-192(ra) # 800036e0 <_ZN3TCBdlEPv>
    800037a8:	00090513          	mv	a0,s2
    800037ac:	0000b097          	auipc	ra,0xb
    800037b0:	82c080e7          	jalr	-2004(ra) # 8000dfd8 <_Unwind_Resume>

00000000800037b4 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800037b4:	ff010113          	addi	sp,sp,-16
    800037b8:	00113423          	sd	ra,8(sp)
    800037bc:	00813023          	sd	s0,0(sp)
    800037c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	088080e7          	jalr	136(ra) # 8000284c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	cbc080e7          	jalr	-836(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    800037d4:	00813083          	ld	ra,8(sp)
    800037d8:	00013403          	ld	s0,0(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret

00000000800037e4 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00113423          	sd	ra,8(sp)
    800037ec:	00813023          	sd	s0,0(sp)
    800037f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	e08080e7          	jalr	-504(ra) # 800025fc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037fc:	00813083          	ld	ra,8(sp)
    80003800:	00013403          	ld	s0,0(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret

000000008000380c <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    8000380c:	ff010113          	addi	sp,sp,-16
    80003810:	00813423          	sd	s0,8(sp)
    80003814:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    80003818:	02052503          	lw	a0,32(a0)
    8000381c:	ffd50513          	addi	a0,a0,-3
}
    80003820:	00153513          	seqz	a0,a0
    80003824:	00813403          	ld	s0,8(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00113c23          	sd	ra,24(sp)
    80003838:	00813823          	sd	s0,16(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003848:	02059063          	bnez	a1,80003868 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    8000384c:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003850:	0604b023          	sd	zero,96(s1)
}
    80003854:	01813083          	ld	ra,24(sp)
    80003858:	01013403          	ld	s0,16(sp)
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	02010113          	addi	sp,sp,32
    80003864:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003868:	06053783          	ld	a5,96(a0)
    8000386c:	00050593          	mv	a1,a0
    80003870:	0087b503          	ld	a0,8(a5)
    80003874:	00000097          	auipc	ra,0x0
    80003878:	93c080e7          	jalr	-1732(ra) # 800031b0 <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    8000387c:	0604b703          	ld	a4,96(s1)
    80003880:	01072783          	lw	a5,16(a4)
    80003884:	0017879b          	addiw	a5,a5,1
    80003888:	00f72823          	sw	a5,16(a4)
    8000388c:	fc1ff06f          	j	8000384c <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003890 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	01213023          	sd	s2,0(sp)
    800038a4:	02010413          	addi	s0,sp,32
    800038a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800038ac:	00000913          	li	s2,0
    800038b0:	00c0006f          	j	800038bc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x31) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	b18080e7          	jalr	-1256(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x31) {
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	d64080e7          	jalr	-668(ra) # 80001620 <_Z4getcv>
    800038c4:	0005059b          	sext.w	a1,a0
    800038c8:	03100793          	li	a5,49
    800038cc:	02f58a63          	beq	a1,a5,80003900 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800038d0:	0084b503          	ld	a0,8(s1)
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	66c080e7          	jalr	1644(ra) # 80004f40 <_ZN6Buffer3putEi>
        i++;
    800038dc:	0019071b          	addiw	a4,s2,1
    800038e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038e4:	0004a683          	lw	a3,0(s1)
    800038e8:	0026979b          	slliw	a5,a3,0x2
    800038ec:	00d787bb          	addw	a5,a5,a3
    800038f0:	0017979b          	slliw	a5,a5,0x1
    800038f4:	02f767bb          	remw	a5,a4,a5
    800038f8:	fc0792e3          	bnez	a5,800038bc <_ZL16producerKeyboardPv+0x2c>
    800038fc:	fb9ff06f          	j	800038b4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003900:	00100793          	li	a5,1
    80003904:	00009717          	auipc	a4,0x9
    80003908:	5af72e23          	sw	a5,1468(a4) # 8000cec0 <_ZL9threadEnd>
    data->buffer->put('!');
    8000390c:	02100593          	li	a1,33
    80003910:	0084b503          	ld	a0,8(s1)
    80003914:	00001097          	auipc	ra,0x1
    80003918:	62c080e7          	jalr	1580(ra) # 80004f40 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000391c:	0104b503          	ld	a0,16(s1)
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	bd0080e7          	jalr	-1072(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003928:	01813083          	ld	ra,24(sp)
    8000392c:	01013403          	ld	s0,16(sp)
    80003930:	00813483          	ld	s1,8(sp)
    80003934:	00013903          	ld	s2,0(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <_ZL8producerPv>:

static void producer(void *arg) {
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00113c23          	sd	ra,24(sp)
    80003948:	00813823          	sd	s0,16(sp)
    8000394c:	00913423          	sd	s1,8(sp)
    80003950:	01213023          	sd	s2,0(sp)
    80003954:	02010413          	addi	s0,sp,32
    80003958:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000395c:	00000913          	li	s2,0
    80003960:	00c0006f          	j	8000396c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	a68080e7          	jalr	-1432(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000396c:	00009797          	auipc	a5,0x9
    80003970:	5547a783          	lw	a5,1364(a5) # 8000cec0 <_ZL9threadEnd>
    80003974:	02079e63          	bnez	a5,800039b0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003978:	0004a583          	lw	a1,0(s1)
    8000397c:	0305859b          	addiw	a1,a1,48
    80003980:	0084b503          	ld	a0,8(s1)
    80003984:	00001097          	auipc	ra,0x1
    80003988:	5bc080e7          	jalr	1468(ra) # 80004f40 <_ZN6Buffer3putEi>
        i++;
    8000398c:	0019071b          	addiw	a4,s2,1
    80003990:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003994:	0004a683          	lw	a3,0(s1)
    80003998:	0026979b          	slliw	a5,a3,0x2
    8000399c:	00d787bb          	addw	a5,a5,a3
    800039a0:	0017979b          	slliw	a5,a5,0x1
    800039a4:	02f767bb          	remw	a5,a4,a5
    800039a8:	fc0792e3          	bnez	a5,8000396c <_ZL8producerPv+0x2c>
    800039ac:	fb9ff06f          	j	80003964 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800039b0:	0104b503          	ld	a0,16(s1)
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	b3c080e7          	jalr	-1220(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	00013903          	ld	s2,0(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800039d4:	fd010113          	addi	sp,sp,-48
    800039d8:	02113423          	sd	ra,40(sp)
    800039dc:	02813023          	sd	s0,32(sp)
    800039e0:	00913c23          	sd	s1,24(sp)
    800039e4:	01213823          	sd	s2,16(sp)
    800039e8:	01313423          	sd	s3,8(sp)
    800039ec:	03010413          	addi	s0,sp,48
    800039f0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039f4:	00000993          	li	s3,0
    800039f8:	01c0006f          	j	80003a14 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	9d0080e7          	jalr	-1584(ra) # 800013cc <_Z15thread_dispatchv>
    80003a04:	0500006f          	j	80003a54 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a08:	00a00513          	li	a0,10
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	c60080e7          	jalr	-928(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003a14:	00009797          	auipc	a5,0x9
    80003a18:	4ac7a783          	lw	a5,1196(a5) # 8000cec0 <_ZL9threadEnd>
    80003a1c:	06079063          	bnez	a5,80003a7c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003a20:	00893503          	ld	a0,8(s2)
    80003a24:	00001097          	auipc	ra,0x1
    80003a28:	5ac080e7          	jalr	1452(ra) # 80004fd0 <_ZN6Buffer3getEv>
        i++;
    80003a2c:	0019849b          	addiw	s1,s3,1
    80003a30:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a34:	0ff57513          	andi	a0,a0,255
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	c34080e7          	jalr	-972(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003a40:	00092703          	lw	a4,0(s2)
    80003a44:	0027179b          	slliw	a5,a4,0x2
    80003a48:	00e787bb          	addw	a5,a5,a4
    80003a4c:	02f4e7bb          	remw	a5,s1,a5
    80003a50:	fa0786e3          	beqz	a5,800039fc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a54:	05000793          	li	a5,80
    80003a58:	02f4e4bb          	remw	s1,s1,a5
    80003a5c:	fa049ce3          	bnez	s1,80003a14 <_ZL8consumerPv+0x40>
    80003a60:	fa9ff06f          	j	80003a08 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a64:	00893503          	ld	a0,8(s2)
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	568080e7          	jalr	1384(ra) # 80004fd0 <_ZN6Buffer3getEv>
        putc(key);
    80003a70:	0ff57513          	andi	a0,a0,255
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	bf8080e7          	jalr	-1032(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003a7c:	00893503          	ld	a0,8(s2)
    80003a80:	00001097          	auipc	ra,0x1
    80003a84:	5dc080e7          	jalr	1500(ra) # 8000505c <_ZN6Buffer6getCntEv>
    80003a88:	fca04ee3          	bgtz	a0,80003a64 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003a8c:	01093503          	ld	a0,16(s2)
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	a60080e7          	jalr	-1440(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a98:	02813083          	ld	ra,40(sp)
    80003a9c:	02013403          	ld	s0,32(sp)
    80003aa0:	01813483          	ld	s1,24(sp)
    80003aa4:	01013903          	ld	s2,16(sp)
    80003aa8:	00813983          	ld	s3,8(sp)
    80003aac:	03010113          	addi	sp,sp,48
    80003ab0:	00008067          	ret

0000000080003ab4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003ab4:	f9010113          	addi	sp,sp,-112
    80003ab8:	06113423          	sd	ra,104(sp)
    80003abc:	06813023          	sd	s0,96(sp)
    80003ac0:	04913c23          	sd	s1,88(sp)
    80003ac4:	05213823          	sd	s2,80(sp)
    80003ac8:	05313423          	sd	s3,72(sp)
    80003acc:	05413023          	sd	s4,64(sp)
    80003ad0:	03513c23          	sd	s5,56(sp)
    80003ad4:	03613823          	sd	s6,48(sp)
    80003ad8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003adc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ae0:	00006517          	auipc	a0,0x6
    80003ae4:	65050513          	addi	a0,a0,1616 # 8000a130 <CONSOLE_STATUS+0x120>
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	540080e7          	jalr	1344(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    80003af0:	01e00593          	li	a1,30
    80003af4:	fa040493          	addi	s1,s0,-96
    80003af8:	00048513          	mv	a0,s1
    80003afc:	00002097          	auipc	ra,0x2
    80003b00:	5b4080e7          	jalr	1460(ra) # 800060b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b04:	00048513          	mv	a0,s1
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	680080e7          	jalr	1664(ra) # 80006188 <_Z11stringToIntPKc>
    80003b10:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	63c50513          	addi	a0,a0,1596 # 8000a150 <CONSOLE_STATUS+0x140>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	50c080e7          	jalr	1292(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    80003b24:	01e00593          	li	a1,30
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	584080e7          	jalr	1412(ra) # 800060b0 <_Z9getStringPci>
    n = stringToInt(input);
    80003b34:	00048513          	mv	a0,s1
    80003b38:	00002097          	auipc	ra,0x2
    80003b3c:	650080e7          	jalr	1616(ra) # 80006188 <_Z11stringToIntPKc>
    80003b40:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b44:	00006517          	auipc	a0,0x6
    80003b48:	62c50513          	addi	a0,a0,1580 # 8000a170 <CONSOLE_STATUS+0x160>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	4dc080e7          	jalr	1244(ra) # 80006028 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	00090513          	mv	a0,s2
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	678080e7          	jalr	1656(ra) # 800061d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b68:	00006517          	auipc	a0,0x6
    80003b6c:	62050513          	addi	a0,a0,1568 # 8000a188 <CONSOLE_STATUS+0x178>
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	4b8080e7          	jalr	1208(ra) # 80006028 <_Z11printStringPKc>
    80003b78:	00000613          	li	a2,0
    80003b7c:	00a00593          	li	a1,10
    80003b80:	00048513          	mv	a0,s1
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	654080e7          	jalr	1620(ra) # 800061d8 <_Z8printIntiii>
    printString(".\n");
    80003b8c:	00006517          	auipc	a0,0x6
    80003b90:	61450513          	addi	a0,a0,1556 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003b94:	00002097          	auipc	ra,0x2
    80003b98:	494080e7          	jalr	1172(ra) # 80006028 <_Z11printStringPKc>
    if(threadNum > n) {
    80003b9c:	0324c463          	blt	s1,s2,80003bc4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003ba0:	03205c63          	blez	s2,80003bd8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003ba4:	03800513          	li	a0,56
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	460080e7          	jalr	1120(ra) # 80002008 <_Znwm>
    80003bb0:	00050a13          	mv	s4,a0
    80003bb4:	00048593          	mv	a1,s1
    80003bb8:	00001097          	auipc	ra,0x1
    80003bbc:	2ec080e7          	jalr	748(ra) # 80004ea4 <_ZN6BufferC1Ei>
    80003bc0:	0300006f          	j	80003bf0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003bc4:	00006517          	auipc	a0,0x6
    80003bc8:	5e450513          	addi	a0,a0,1508 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	45c080e7          	jalr	1116(ra) # 80006028 <_Z11printStringPKc>
        return;
    80003bd4:	0140006f          	j	80003be8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003bd8:	00006517          	auipc	a0,0x6
    80003bdc:	61050513          	addi	a0,a0,1552 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	448080e7          	jalr	1096(ra) # 80006028 <_Z11printStringPKc>
        return;
    80003be8:	000b0113          	mv	sp,s6
    80003bec:	1500006f          	j	80003d3c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003bf0:	00000593          	li	a1,0
    80003bf4:	00009517          	auipc	a0,0x9
    80003bf8:	2d450513          	addi	a0,a0,724 # 8000cec8 <_ZL10waitForAll>
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	80c080e7          	jalr	-2036(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003c04:	00391793          	slli	a5,s2,0x3
    80003c08:	00f78793          	addi	a5,a5,15
    80003c0c:	ff07f793          	andi	a5,a5,-16
    80003c10:	40f10133          	sub	sp,sp,a5
    80003c14:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003c18:	0019071b          	addiw	a4,s2,1
    80003c1c:	00171793          	slli	a5,a4,0x1
    80003c20:	00e787b3          	add	a5,a5,a4
    80003c24:	00379793          	slli	a5,a5,0x3
    80003c28:	00f78793          	addi	a5,a5,15
    80003c2c:	ff07f793          	andi	a5,a5,-16
    80003c30:	40f10133          	sub	sp,sp,a5
    80003c34:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c38:	00191613          	slli	a2,s2,0x1
    80003c3c:	012607b3          	add	a5,a2,s2
    80003c40:	00379793          	slli	a5,a5,0x3
    80003c44:	00f987b3          	add	a5,s3,a5
    80003c48:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c4c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c50:	00009717          	auipc	a4,0x9
    80003c54:	27873703          	ld	a4,632(a4) # 8000cec8 <_ZL10waitForAll>
    80003c58:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c5c:	00078613          	mv	a2,a5
    80003c60:	00000597          	auipc	a1,0x0
    80003c64:	d7458593          	addi	a1,a1,-652 # 800039d4 <_ZL8consumerPv>
    80003c68:	f9840513          	addi	a0,s0,-104
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	68c080e7          	jalr	1676(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c74:	00000493          	li	s1,0
    80003c78:	0280006f          	j	80003ca0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003c7c:	00000597          	auipc	a1,0x0
    80003c80:	c1458593          	addi	a1,a1,-1004 # 80003890 <_ZL16producerKeyboardPv>
                      data + i);
    80003c84:	00179613          	slli	a2,a5,0x1
    80003c88:	00f60633          	add	a2,a2,a5
    80003c8c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003c90:	00c98633          	add	a2,s3,a2
    80003c94:	ffffd097          	auipc	ra,0xffffd
    80003c98:	664080e7          	jalr	1636(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c9c:	0014849b          	addiw	s1,s1,1
    80003ca0:	0524d263          	bge	s1,s2,80003ce4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003ca4:	00149793          	slli	a5,s1,0x1
    80003ca8:	009787b3          	add	a5,a5,s1
    80003cac:	00379793          	slli	a5,a5,0x3
    80003cb0:	00f987b3          	add	a5,s3,a5
    80003cb4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003cb8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003cbc:	00009717          	auipc	a4,0x9
    80003cc0:	20c73703          	ld	a4,524(a4) # 8000cec8 <_ZL10waitForAll>
    80003cc4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003cc8:	00048793          	mv	a5,s1
    80003ccc:	00349513          	slli	a0,s1,0x3
    80003cd0:	00aa8533          	add	a0,s5,a0
    80003cd4:	fa9054e3          	blez	s1,80003c7c <_Z22producerConsumer_C_APIv+0x1c8>
    80003cd8:	00000597          	auipc	a1,0x0
    80003cdc:	c6858593          	addi	a1,a1,-920 # 80003940 <_ZL8producerPv>
    80003ce0:	fa5ff06f          	j	80003c84 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	6e8080e7          	jalr	1768(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003cec:	00000493          	li	s1,0
    80003cf0:	00994e63          	blt	s2,s1,80003d0c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003cf4:	00009517          	auipc	a0,0x9
    80003cf8:	1d453503          	ld	a0,468(a0) # 8000cec8 <_ZL10waitForAll>
    80003cfc:	ffffd097          	auipc	ra,0xffffd
    80003d00:	7a8080e7          	jalr	1960(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	fe9ff06f          	j	80003cf0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003d0c:	00009517          	auipc	a0,0x9
    80003d10:	1bc53503          	ld	a0,444(a0) # 8000cec8 <_ZL10waitForAll>
    80003d14:	ffffd097          	auipc	ra,0xffffd
    80003d18:	744080e7          	jalr	1860(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003d1c:	000a0e63          	beqz	s4,80003d38 <_Z22producerConsumer_C_APIv+0x284>
    80003d20:	000a0513          	mv	a0,s4
    80003d24:	00001097          	auipc	ra,0x1
    80003d28:	3c0080e7          	jalr	960(ra) # 800050e4 <_ZN6BufferD1Ev>
    80003d2c:	000a0513          	mv	a0,s4
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	300080e7          	jalr	768(ra) # 80002030 <_ZdlPv>
    80003d38:	000b0113          	mv	sp,s6

}
    80003d3c:	f9040113          	addi	sp,s0,-112
    80003d40:	06813083          	ld	ra,104(sp)
    80003d44:	06013403          	ld	s0,96(sp)
    80003d48:	05813483          	ld	s1,88(sp)
    80003d4c:	05013903          	ld	s2,80(sp)
    80003d50:	04813983          	ld	s3,72(sp)
    80003d54:	04013a03          	ld	s4,64(sp)
    80003d58:	03813a83          	ld	s5,56(sp)
    80003d5c:	03013b03          	ld	s6,48(sp)
    80003d60:	07010113          	addi	sp,sp,112
    80003d64:	00008067          	ret
    80003d68:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d6c:	000a0513          	mv	a0,s4
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	2c0080e7          	jalr	704(ra) # 80002030 <_ZdlPv>
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	0000a097          	auipc	ra,0xa
    80003d80:	25c080e7          	jalr	604(ra) # 8000dfd8 <_Unwind_Resume>

0000000080003d84 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d84:	fe010113          	addi	sp,sp,-32
    80003d88:	00113c23          	sd	ra,24(sp)
    80003d8c:	00813823          	sd	s0,16(sp)
    80003d90:	00913423          	sd	s1,8(sp)
    80003d94:	01213023          	sd	s2,0(sp)
    80003d98:	02010413          	addi	s0,sp,32
    80003d9c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003da0:	00100793          	li	a5,1
    80003da4:	02a7f863          	bgeu	a5,a0,80003dd4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003da8:	00a00793          	li	a5,10
    80003dac:	02f577b3          	remu	a5,a0,a5
    80003db0:	02078e63          	beqz	a5,80003dec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003db4:	fff48513          	addi	a0,s1,-1
    80003db8:	00000097          	auipc	ra,0x0
    80003dbc:	fcc080e7          	jalr	-52(ra) # 80003d84 <_ZL9fibonaccim>
    80003dc0:	00050913          	mv	s2,a0
    80003dc4:	ffe48513          	addi	a0,s1,-2
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	fbc080e7          	jalr	-68(ra) # 80003d84 <_ZL9fibonaccim>
    80003dd0:	00a90533          	add	a0,s2,a0
}
    80003dd4:	01813083          	ld	ra,24(sp)
    80003dd8:	01013403          	ld	s0,16(sp)
    80003ddc:	00813483          	ld	s1,8(sp)
    80003de0:	00013903          	ld	s2,0(sp)
    80003de4:	02010113          	addi	sp,sp,32
    80003de8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003dec:	ffffd097          	auipc	ra,0xffffd
    80003df0:	5e0080e7          	jalr	1504(ra) # 800013cc <_Z15thread_dispatchv>
    80003df4:	fc1ff06f          	j	80003db4 <_ZL9fibonaccim+0x30>

0000000080003df8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003df8:	fe010113          	addi	sp,sp,-32
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00913423          	sd	s1,8(sp)
    80003e08:	01213023          	sd	s2,0(sp)
    80003e0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e10:	00000913          	li	s2,0
    80003e14:	0380006f          	j	80003e4c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e18:	ffffd097          	auipc	ra,0xffffd
    80003e1c:	5b4080e7          	jalr	1460(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e20:	00148493          	addi	s1,s1,1
    80003e24:	000027b7          	lui	a5,0x2
    80003e28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e2c:	0097ee63          	bltu	a5,s1,80003e48 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e30:	00000713          	li	a4,0
    80003e34:	000077b7          	lui	a5,0x7
    80003e38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e3c:	fce7eee3          	bltu	a5,a4,80003e18 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e40:	00170713          	addi	a4,a4,1
    80003e44:	ff1ff06f          	j	80003e34 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e48:	00190913          	addi	s2,s2,1
    80003e4c:	00900793          	li	a5,9
    80003e50:	0527e063          	bltu	a5,s2,80003e90 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e54:	00006517          	auipc	a0,0x6
    80003e58:	3c450513          	addi	a0,a0,964 # 8000a218 <CONSOLE_STATUS+0x208>
    80003e5c:	00002097          	auipc	ra,0x2
    80003e60:	1cc080e7          	jalr	460(ra) # 80006028 <_Z11printStringPKc>
    80003e64:	00000613          	li	a2,0
    80003e68:	00a00593          	li	a1,10
    80003e6c:	0009051b          	sext.w	a0,s2
    80003e70:	00002097          	auipc	ra,0x2
    80003e74:	368080e7          	jalr	872(ra) # 800061d8 <_Z8printIntiii>
    80003e78:	00006517          	auipc	a0,0x6
    80003e7c:	60050513          	addi	a0,a0,1536 # 8000a478 <CONSOLE_STATUS+0x468>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	1a8080e7          	jalr	424(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e88:	00000493          	li	s1,0
    80003e8c:	f99ff06f          	j	80003e24 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e90:	00006517          	auipc	a0,0x6
    80003e94:	39050513          	addi	a0,a0,912 # 8000a220 <CONSOLE_STATUS+0x210>
    80003e98:	00002097          	auipc	ra,0x2
    80003e9c:	190080e7          	jalr	400(ra) # 80006028 <_Z11printStringPKc>
    finishedA = true;
    80003ea0:	00100793          	li	a5,1
    80003ea4:	00009717          	auipc	a4,0x9
    80003ea8:	02f70623          	sb	a5,44(a4) # 8000ced0 <_ZL9finishedA>
}
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	00013903          	ld	s2,0(sp)
    80003ebc:	02010113          	addi	sp,sp,32
    80003ec0:	00008067          	ret

0000000080003ec4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ec4:	fe010113          	addi	sp,sp,-32
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	00813823          	sd	s0,16(sp)
    80003ed0:	00913423          	sd	s1,8(sp)
    80003ed4:	01213023          	sd	s2,0(sp)
    80003ed8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003edc:	00000913          	li	s2,0
    80003ee0:	0380006f          	j	80003f18 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ee4:	ffffd097          	auipc	ra,0xffffd
    80003ee8:	4e8080e7          	jalr	1256(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003eec:	00148493          	addi	s1,s1,1
    80003ef0:	000027b7          	lui	a5,0x2
    80003ef4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ef8:	0097ee63          	bltu	a5,s1,80003f14 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003efc:	00000713          	li	a4,0
    80003f00:	000077b7          	lui	a5,0x7
    80003f04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f08:	fce7eee3          	bltu	a5,a4,80003ee4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003f0c:	00170713          	addi	a4,a4,1
    80003f10:	ff1ff06f          	j	80003f00 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f14:	00190913          	addi	s2,s2,1
    80003f18:	00f00793          	li	a5,15
    80003f1c:	0527e063          	bltu	a5,s2,80003f5c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f20:	00006517          	auipc	a0,0x6
    80003f24:	31050513          	addi	a0,a0,784 # 8000a230 <CONSOLE_STATUS+0x220>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	100080e7          	jalr	256(ra) # 80006028 <_Z11printStringPKc>
    80003f30:	00000613          	li	a2,0
    80003f34:	00a00593          	li	a1,10
    80003f38:	0009051b          	sext.w	a0,s2
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	29c080e7          	jalr	668(ra) # 800061d8 <_Z8printIntiii>
    80003f44:	00006517          	auipc	a0,0x6
    80003f48:	53450513          	addi	a0,a0,1332 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f4c:	00002097          	auipc	ra,0x2
    80003f50:	0dc080e7          	jalr	220(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f54:	00000493          	li	s1,0
    80003f58:	f99ff06f          	j	80003ef0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f5c:	00006517          	auipc	a0,0x6
    80003f60:	2dc50513          	addi	a0,a0,732 # 8000a238 <CONSOLE_STATUS+0x228>
    80003f64:	00002097          	auipc	ra,0x2
    80003f68:	0c4080e7          	jalr	196(ra) # 80006028 <_Z11printStringPKc>
    finishedB = true;
    80003f6c:	00100793          	li	a5,1
    80003f70:	00009717          	auipc	a4,0x9
    80003f74:	f6f700a3          	sb	a5,-159(a4) # 8000ced1 <_ZL9finishedB>
    thread_dispatch();
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	454080e7          	jalr	1108(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003f80:	01813083          	ld	ra,24(sp)
    80003f84:	01013403          	ld	s0,16(sp)
    80003f88:	00813483          	ld	s1,8(sp)
    80003f8c:	00013903          	ld	s2,0(sp)
    80003f90:	02010113          	addi	sp,sp,32
    80003f94:	00008067          	ret

0000000080003f98 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	01213023          	sd	s2,0(sp)
    80003fac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003fb0:	00000493          	li	s1,0
    80003fb4:	0400006f          	j	80003ff4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003fb8:	00006517          	auipc	a0,0x6
    80003fbc:	29050513          	addi	a0,a0,656 # 8000a248 <CONSOLE_STATUS+0x238>
    80003fc0:	00002097          	auipc	ra,0x2
    80003fc4:	068080e7          	jalr	104(ra) # 80006028 <_Z11printStringPKc>
    80003fc8:	00000613          	li	a2,0
    80003fcc:	00a00593          	li	a1,10
    80003fd0:	00048513          	mv	a0,s1
    80003fd4:	00002097          	auipc	ra,0x2
    80003fd8:	204080e7          	jalr	516(ra) # 800061d8 <_Z8printIntiii>
    80003fdc:	00006517          	auipc	a0,0x6
    80003fe0:	49c50513          	addi	a0,a0,1180 # 8000a478 <CONSOLE_STATUS+0x468>
    80003fe4:	00002097          	auipc	ra,0x2
    80003fe8:	044080e7          	jalr	68(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fec:	0014849b          	addiw	s1,s1,1
    80003ff0:	0ff4f493          	andi	s1,s1,255
    80003ff4:	00200793          	li	a5,2
    80003ff8:	fc97f0e3          	bgeu	a5,s1,80003fb8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ffc:	00006517          	auipc	a0,0x6
    80004000:	25450513          	addi	a0,a0,596 # 8000a250 <CONSOLE_STATUS+0x240>
    80004004:	00002097          	auipc	ra,0x2
    80004008:	024080e7          	jalr	36(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000400c:	00700313          	li	t1,7
    thread_dispatch();
    80004010:	ffffd097          	auipc	ra,0xffffd
    80004014:	3bc080e7          	jalr	956(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004018:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000401c:	00006517          	auipc	a0,0x6
    80004020:	24450513          	addi	a0,a0,580 # 8000a260 <CONSOLE_STATUS+0x250>
    80004024:	00002097          	auipc	ra,0x2
    80004028:	004080e7          	jalr	4(ra) # 80006028 <_Z11printStringPKc>
    8000402c:	00000613          	li	a2,0
    80004030:	00a00593          	li	a1,10
    80004034:	0009051b          	sext.w	a0,s2
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	1a0080e7          	jalr	416(ra) # 800061d8 <_Z8printIntiii>
    80004040:	00006517          	auipc	a0,0x6
    80004044:	43850513          	addi	a0,a0,1080 # 8000a478 <CONSOLE_STATUS+0x468>
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	fe0080e7          	jalr	-32(ra) # 80006028 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004050:	00c00513          	li	a0,12
    80004054:	00000097          	auipc	ra,0x0
    80004058:	d30080e7          	jalr	-720(ra) # 80003d84 <_ZL9fibonaccim>
    8000405c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004060:	00006517          	auipc	a0,0x6
    80004064:	20850513          	addi	a0,a0,520 # 8000a268 <CONSOLE_STATUS+0x258>
    80004068:	00002097          	auipc	ra,0x2
    8000406c:	fc0080e7          	jalr	-64(ra) # 80006028 <_Z11printStringPKc>
    80004070:	00000613          	li	a2,0
    80004074:	00a00593          	li	a1,10
    80004078:	0009051b          	sext.w	a0,s2
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	15c080e7          	jalr	348(ra) # 800061d8 <_Z8printIntiii>
    80004084:	00006517          	auipc	a0,0x6
    80004088:	3f450513          	addi	a0,a0,1012 # 8000a478 <CONSOLE_STATUS+0x468>
    8000408c:	00002097          	auipc	ra,0x2
    80004090:	f9c080e7          	jalr	-100(ra) # 80006028 <_Z11printStringPKc>
    80004094:	0400006f          	j	800040d4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004098:	00006517          	auipc	a0,0x6
    8000409c:	1b050513          	addi	a0,a0,432 # 8000a248 <CONSOLE_STATUS+0x238>
    800040a0:	00002097          	auipc	ra,0x2
    800040a4:	f88080e7          	jalr	-120(ra) # 80006028 <_Z11printStringPKc>
    800040a8:	00000613          	li	a2,0
    800040ac:	00a00593          	li	a1,10
    800040b0:	00048513          	mv	a0,s1
    800040b4:	00002097          	auipc	ra,0x2
    800040b8:	124080e7          	jalr	292(ra) # 800061d8 <_Z8printIntiii>
    800040bc:	00006517          	auipc	a0,0x6
    800040c0:	3bc50513          	addi	a0,a0,956 # 8000a478 <CONSOLE_STATUS+0x468>
    800040c4:	00002097          	auipc	ra,0x2
    800040c8:	f64080e7          	jalr	-156(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800040cc:	0014849b          	addiw	s1,s1,1
    800040d0:	0ff4f493          	andi	s1,s1,255
    800040d4:	00500793          	li	a5,5
    800040d8:	fc97f0e3          	bgeu	a5,s1,80004098 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800040dc:	00006517          	auipc	a0,0x6
    800040e0:	14450513          	addi	a0,a0,324 # 8000a220 <CONSOLE_STATUS+0x210>
    800040e4:	00002097          	auipc	ra,0x2
    800040e8:	f44080e7          	jalr	-188(ra) # 80006028 <_Z11printStringPKc>
    finishedC = true;
    800040ec:	00100793          	li	a5,1
    800040f0:	00009717          	auipc	a4,0x9
    800040f4:	def70123          	sb	a5,-542(a4) # 8000ced2 <_ZL9finishedC>
    thread_dispatch();
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	2d4080e7          	jalr	724(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	00813483          	ld	s1,8(sp)
    8000410c:	00013903          	ld	s2,0(sp)
    80004110:	02010113          	addi	sp,sp,32
    80004114:	00008067          	ret

0000000080004118 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	01213023          	sd	s2,0(sp)
    8000412c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004130:	00a00493          	li	s1,10
    80004134:	0400006f          	j	80004174 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004138:	00006517          	auipc	a0,0x6
    8000413c:	14050513          	addi	a0,a0,320 # 8000a278 <CONSOLE_STATUS+0x268>
    80004140:	00002097          	auipc	ra,0x2
    80004144:	ee8080e7          	jalr	-280(ra) # 80006028 <_Z11printStringPKc>
    80004148:	00000613          	li	a2,0
    8000414c:	00a00593          	li	a1,10
    80004150:	00048513          	mv	a0,s1
    80004154:	00002097          	auipc	ra,0x2
    80004158:	084080e7          	jalr	132(ra) # 800061d8 <_Z8printIntiii>
    8000415c:	00006517          	auipc	a0,0x6
    80004160:	31c50513          	addi	a0,a0,796 # 8000a478 <CONSOLE_STATUS+0x468>
    80004164:	00002097          	auipc	ra,0x2
    80004168:	ec4080e7          	jalr	-316(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000416c:	0014849b          	addiw	s1,s1,1
    80004170:	0ff4f493          	andi	s1,s1,255
    80004174:	00c00793          	li	a5,12
    80004178:	fc97f0e3          	bgeu	a5,s1,80004138 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000417c:	00006517          	auipc	a0,0x6
    80004180:	10450513          	addi	a0,a0,260 # 8000a280 <CONSOLE_STATUS+0x270>
    80004184:	00002097          	auipc	ra,0x2
    80004188:	ea4080e7          	jalr	-348(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000418c:	00500313          	li	t1,5
    thread_dispatch();
    80004190:	ffffd097          	auipc	ra,0xffffd
    80004194:	23c080e7          	jalr	572(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004198:	01000513          	li	a0,16
    8000419c:	00000097          	auipc	ra,0x0
    800041a0:	be8080e7          	jalr	-1048(ra) # 80003d84 <_ZL9fibonaccim>
    800041a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800041a8:	00006517          	auipc	a0,0x6
    800041ac:	0e850513          	addi	a0,a0,232 # 8000a290 <CONSOLE_STATUS+0x280>
    800041b0:	00002097          	auipc	ra,0x2
    800041b4:	e78080e7          	jalr	-392(ra) # 80006028 <_Z11printStringPKc>
    800041b8:	00000613          	li	a2,0
    800041bc:	00a00593          	li	a1,10
    800041c0:	0009051b          	sext.w	a0,s2
    800041c4:	00002097          	auipc	ra,0x2
    800041c8:	014080e7          	jalr	20(ra) # 800061d8 <_Z8printIntiii>
    800041cc:	00006517          	auipc	a0,0x6
    800041d0:	2ac50513          	addi	a0,a0,684 # 8000a478 <CONSOLE_STATUS+0x468>
    800041d4:	00002097          	auipc	ra,0x2
    800041d8:	e54080e7          	jalr	-428(ra) # 80006028 <_Z11printStringPKc>
    800041dc:	0400006f          	j	8000421c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041e0:	00006517          	auipc	a0,0x6
    800041e4:	09850513          	addi	a0,a0,152 # 8000a278 <CONSOLE_STATUS+0x268>
    800041e8:	00002097          	auipc	ra,0x2
    800041ec:	e40080e7          	jalr	-448(ra) # 80006028 <_Z11printStringPKc>
    800041f0:	00000613          	li	a2,0
    800041f4:	00a00593          	li	a1,10
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00002097          	auipc	ra,0x2
    80004200:	fdc080e7          	jalr	-36(ra) # 800061d8 <_Z8printIntiii>
    80004204:	00006517          	auipc	a0,0x6
    80004208:	27450513          	addi	a0,a0,628 # 8000a478 <CONSOLE_STATUS+0x468>
    8000420c:	00002097          	auipc	ra,0x2
    80004210:	e1c080e7          	jalr	-484(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004214:	0014849b          	addiw	s1,s1,1
    80004218:	0ff4f493          	andi	s1,s1,255
    8000421c:	00f00793          	li	a5,15
    80004220:	fc97f0e3          	bgeu	a5,s1,800041e0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004224:	00006517          	auipc	a0,0x6
    80004228:	07c50513          	addi	a0,a0,124 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000422c:	00002097          	auipc	ra,0x2
    80004230:	dfc080e7          	jalr	-516(ra) # 80006028 <_Z11printStringPKc>
    finishedD = true;
    80004234:	00100793          	li	a5,1
    80004238:	00009717          	auipc	a4,0x9
    8000423c:	c8f70da3          	sb	a5,-869(a4) # 8000ced3 <_ZL9finishedD>
    thread_dispatch();
    80004240:	ffffd097          	auipc	ra,0xffffd
    80004244:	18c080e7          	jalr	396(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	01013403          	ld	s0,16(sp)
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	00013903          	ld	s2,0(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004260:	fc010113          	addi	sp,sp,-64
    80004264:	02113c23          	sd	ra,56(sp)
    80004268:	02813823          	sd	s0,48(sp)
    8000426c:	02913423          	sd	s1,40(sp)
    80004270:	03213023          	sd	s2,32(sp)
    80004274:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004278:	02000513          	li	a0,32
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	d8c080e7          	jalr	-628(ra) # 80002008 <_Znwm>
    80004284:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	e80080e7          	jalr	-384(ra) # 80002108 <_ZN6ThreadC1Ev>
    80004290:	00009797          	auipc	a5,0x9
    80004294:	99078793          	addi	a5,a5,-1648 # 8000cc20 <_ZTV7WorkerA+0x10>
    80004298:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000429c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800042a0:	00006517          	auipc	a0,0x6
    800042a4:	01050513          	addi	a0,a0,16 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800042a8:	00002097          	auipc	ra,0x2
    800042ac:	d80080e7          	jalr	-640(ra) # 80006028 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800042b0:	02000513          	li	a0,32
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	d54080e7          	jalr	-684(ra) # 80002008 <_Znwm>
    800042bc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	e48080e7          	jalr	-440(ra) # 80002108 <_ZN6ThreadC1Ev>
    800042c8:	00009797          	auipc	a5,0x9
    800042cc:	98078793          	addi	a5,a5,-1664 # 8000cc48 <_ZTV7WorkerB+0x10>
    800042d0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800042d4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800042d8:	00006517          	auipc	a0,0x6
    800042dc:	ff050513          	addi	a0,a0,-16 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800042e0:	00002097          	auipc	ra,0x2
    800042e4:	d48080e7          	jalr	-696(ra) # 80006028 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042e8:	02000513          	li	a0,32
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	d1c080e7          	jalr	-740(ra) # 80002008 <_Znwm>
    800042f4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	e10080e7          	jalr	-496(ra) # 80002108 <_ZN6ThreadC1Ev>
    80004300:	00009797          	auipc	a5,0x9
    80004304:	97078793          	addi	a5,a5,-1680 # 8000cc70 <_ZTV7WorkerC+0x10>
    80004308:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000430c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004310:	00006517          	auipc	a0,0x6
    80004314:	fd050513          	addi	a0,a0,-48 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	d10080e7          	jalr	-752(ra) # 80006028 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004320:	02000513          	li	a0,32
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	ce4080e7          	jalr	-796(ra) # 80002008 <_Znwm>
    8000432c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	dd8080e7          	jalr	-552(ra) # 80002108 <_ZN6ThreadC1Ev>
    80004338:	00009797          	auipc	a5,0x9
    8000433c:	96078793          	addi	a5,a5,-1696 # 8000cc98 <_ZTV7WorkerD+0x10>
    80004340:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004344:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004348:	00006517          	auipc	a0,0x6
    8000434c:	fb050513          	addi	a0,a0,-80 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004350:	00002097          	auipc	ra,0x2
    80004354:	cd8080e7          	jalr	-808(ra) # 80006028 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004358:	00000493          	li	s1,0
    8000435c:	00300793          	li	a5,3
    80004360:	0297c663          	blt	a5,s1,8000438c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004364:	00349793          	slli	a5,s1,0x3
    80004368:	fe040713          	addi	a4,s0,-32
    8000436c:	00f707b3          	add	a5,a4,a5
    80004370:	fe07b503          	ld	a0,-32(a5)
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	dc4080e7          	jalr	-572(ra) # 80002138 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000437c:	0014849b          	addiw	s1,s1,1
    80004380:	fddff06f          	j	8000435c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	dec080e7          	jalr	-532(ra) # 80002170 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000438c:	00009797          	auipc	a5,0x9
    80004390:	b447c783          	lbu	a5,-1212(a5) # 8000ced0 <_ZL9finishedA>
    80004394:	fe0788e3          	beqz	a5,80004384 <_Z20Threads_CPP_API_testv+0x124>
    80004398:	00009797          	auipc	a5,0x9
    8000439c:	b397c783          	lbu	a5,-1223(a5) # 8000ced1 <_ZL9finishedB>
    800043a0:	fe0782e3          	beqz	a5,80004384 <_Z20Threads_CPP_API_testv+0x124>
    800043a4:	00009797          	auipc	a5,0x9
    800043a8:	b2e7c783          	lbu	a5,-1234(a5) # 8000ced2 <_ZL9finishedC>
    800043ac:	fc078ce3          	beqz	a5,80004384 <_Z20Threads_CPP_API_testv+0x124>
    800043b0:	00009797          	auipc	a5,0x9
    800043b4:	b237c783          	lbu	a5,-1245(a5) # 8000ced3 <_ZL9finishedD>
    800043b8:	fc0786e3          	beqz	a5,80004384 <_Z20Threads_CPP_API_testv+0x124>
    800043bc:	fc040493          	addi	s1,s0,-64
    800043c0:	0080006f          	j	800043c8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800043c4:	00848493          	addi	s1,s1,8
    800043c8:	fe040793          	addi	a5,s0,-32
    800043cc:	08f48663          	beq	s1,a5,80004458 <_Z20Threads_CPP_API_testv+0x1f8>
    800043d0:	0004b503          	ld	a0,0(s1)
    800043d4:	fe0508e3          	beqz	a0,800043c4 <_Z20Threads_CPP_API_testv+0x164>
    800043d8:	00053783          	ld	a5,0(a0)
    800043dc:	0087b783          	ld	a5,8(a5)
    800043e0:	000780e7          	jalr	a5
    800043e4:	fe1ff06f          	j	800043c4 <_Z20Threads_CPP_API_testv+0x164>
    800043e8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043ec:	00048513          	mv	a0,s1
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	c40080e7          	jalr	-960(ra) # 80002030 <_ZdlPv>
    800043f8:	00090513          	mv	a0,s2
    800043fc:	0000a097          	auipc	ra,0xa
    80004400:	bdc080e7          	jalr	-1060(ra) # 8000dfd8 <_Unwind_Resume>
    80004404:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004408:	00048513          	mv	a0,s1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	c24080e7          	jalr	-988(ra) # 80002030 <_ZdlPv>
    80004414:	00090513          	mv	a0,s2
    80004418:	0000a097          	auipc	ra,0xa
    8000441c:	bc0080e7          	jalr	-1088(ra) # 8000dfd8 <_Unwind_Resume>
    80004420:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004424:	00048513          	mv	a0,s1
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	c08080e7          	jalr	-1016(ra) # 80002030 <_ZdlPv>
    80004430:	00090513          	mv	a0,s2
    80004434:	0000a097          	auipc	ra,0xa
    80004438:	ba4080e7          	jalr	-1116(ra) # 8000dfd8 <_Unwind_Resume>
    8000443c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004440:	00048513          	mv	a0,s1
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	bec080e7          	jalr	-1044(ra) # 80002030 <_ZdlPv>
    8000444c:	00090513          	mv	a0,s2
    80004450:	0000a097          	auipc	ra,0xa
    80004454:	b88080e7          	jalr	-1144(ra) # 8000dfd8 <_Unwind_Resume>
}
    80004458:	03813083          	ld	ra,56(sp)
    8000445c:	03013403          	ld	s0,48(sp)
    80004460:	02813483          	ld	s1,40(sp)
    80004464:	02013903          	ld	s2,32(sp)
    80004468:	04010113          	addi	sp,sp,64
    8000446c:	00008067          	ret

0000000080004470 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00113423          	sd	ra,8(sp)
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	01010413          	addi	s0,sp,16
    80004480:	00008797          	auipc	a5,0x8
    80004484:	7a078793          	addi	a5,a5,1952 # 8000cc20 <_ZTV7WorkerA+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	a8c080e7          	jalr	-1396(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN7WorkerAD0Ev>:
    800044a4:	fe010113          	addi	sp,sp,-32
    800044a8:	00113c23          	sd	ra,24(sp)
    800044ac:	00813823          	sd	s0,16(sp)
    800044b0:	00913423          	sd	s1,8(sp)
    800044b4:	02010413          	addi	s0,sp,32
    800044b8:	00050493          	mv	s1,a0
    800044bc:	00008797          	auipc	a5,0x8
    800044c0:	76478793          	addi	a5,a5,1892 # 8000cc20 <_ZTV7WorkerA+0x10>
    800044c4:	00f53023          	sd	a5,0(a0)
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	a50080e7          	jalr	-1456(ra) # 80001f18 <_ZN6ThreadD1Ev>
    800044d0:	00048513          	mv	a0,s1
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	b5c080e7          	jalr	-1188(ra) # 80002030 <_ZdlPv>
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret

00000000800044f0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00113423          	sd	ra,8(sp)
    800044f8:	00813023          	sd	s0,0(sp)
    800044fc:	01010413          	addi	s0,sp,16
    80004500:	00008797          	auipc	a5,0x8
    80004504:	74878793          	addi	a5,a5,1864 # 8000cc48 <_ZTV7WorkerB+0x10>
    80004508:	00f53023          	sd	a5,0(a0)
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	a0c080e7          	jalr	-1524(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004514:	00813083          	ld	ra,8(sp)
    80004518:	00013403          	ld	s0,0(sp)
    8000451c:	01010113          	addi	sp,sp,16
    80004520:	00008067          	ret

0000000080004524 <_ZN7WorkerBD0Ev>:
    80004524:	fe010113          	addi	sp,sp,-32
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	00813823          	sd	s0,16(sp)
    80004530:	00913423          	sd	s1,8(sp)
    80004534:	02010413          	addi	s0,sp,32
    80004538:	00050493          	mv	s1,a0
    8000453c:	00008797          	auipc	a5,0x8
    80004540:	70c78793          	addi	a5,a5,1804 # 8000cc48 <_ZTV7WorkerB+0x10>
    80004544:	00f53023          	sd	a5,0(a0)
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	9d0080e7          	jalr	-1584(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004550:	00048513          	mv	a0,s1
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	adc080e7          	jalr	-1316(ra) # 80002030 <_ZdlPv>
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	00813483          	ld	s1,8(sp)
    80004568:	02010113          	addi	sp,sp,32
    8000456c:	00008067          	ret

0000000080004570 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004570:	ff010113          	addi	sp,sp,-16
    80004574:	00113423          	sd	ra,8(sp)
    80004578:	00813023          	sd	s0,0(sp)
    8000457c:	01010413          	addi	s0,sp,16
    80004580:	00008797          	auipc	a5,0x8
    80004584:	6f078793          	addi	a5,a5,1776 # 8000cc70 <_ZTV7WorkerC+0x10>
    80004588:	00f53023          	sd	a5,0(a0)
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	98c080e7          	jalr	-1652(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004594:	00813083          	ld	ra,8(sp)
    80004598:	00013403          	ld	s0,0(sp)
    8000459c:	01010113          	addi	sp,sp,16
    800045a0:	00008067          	ret

00000000800045a4 <_ZN7WorkerCD0Ev>:
    800045a4:	fe010113          	addi	sp,sp,-32
    800045a8:	00113c23          	sd	ra,24(sp)
    800045ac:	00813823          	sd	s0,16(sp)
    800045b0:	00913423          	sd	s1,8(sp)
    800045b4:	02010413          	addi	s0,sp,32
    800045b8:	00050493          	mv	s1,a0
    800045bc:	00008797          	auipc	a5,0x8
    800045c0:	6b478793          	addi	a5,a5,1716 # 8000cc70 <_ZTV7WorkerC+0x10>
    800045c4:	00f53023          	sd	a5,0(a0)
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	950080e7          	jalr	-1712(ra) # 80001f18 <_ZN6ThreadD1Ev>
    800045d0:	00048513          	mv	a0,s1
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	a5c080e7          	jalr	-1444(ra) # 80002030 <_ZdlPv>
    800045dc:	01813083          	ld	ra,24(sp)
    800045e0:	01013403          	ld	s0,16(sp)
    800045e4:	00813483          	ld	s1,8(sp)
    800045e8:	02010113          	addi	sp,sp,32
    800045ec:	00008067          	ret

00000000800045f0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800045f0:	ff010113          	addi	sp,sp,-16
    800045f4:	00113423          	sd	ra,8(sp)
    800045f8:	00813023          	sd	s0,0(sp)
    800045fc:	01010413          	addi	s0,sp,16
    80004600:	00008797          	auipc	a5,0x8
    80004604:	69878793          	addi	a5,a5,1688 # 8000cc98 <_ZTV7WorkerD+0x10>
    80004608:	00f53023          	sd	a5,0(a0)
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	90c080e7          	jalr	-1780(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004614:	00813083          	ld	ra,8(sp)
    80004618:	00013403          	ld	s0,0(sp)
    8000461c:	01010113          	addi	sp,sp,16
    80004620:	00008067          	ret

0000000080004624 <_ZN7WorkerDD0Ev>:
    80004624:	fe010113          	addi	sp,sp,-32
    80004628:	00113c23          	sd	ra,24(sp)
    8000462c:	00813823          	sd	s0,16(sp)
    80004630:	00913423          	sd	s1,8(sp)
    80004634:	02010413          	addi	s0,sp,32
    80004638:	00050493          	mv	s1,a0
    8000463c:	00008797          	auipc	a5,0x8
    80004640:	65c78793          	addi	a5,a5,1628 # 8000cc98 <_ZTV7WorkerD+0x10>
    80004644:	00f53023          	sd	a5,0(a0)
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	8d0080e7          	jalr	-1840(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004650:	00048513          	mv	a0,s1
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	9dc080e7          	jalr	-1572(ra) # 80002030 <_ZdlPv>
    8000465c:	01813083          	ld	ra,24(sp)
    80004660:	01013403          	ld	s0,16(sp)
    80004664:	00813483          	ld	s1,8(sp)
    80004668:	02010113          	addi	sp,sp,32
    8000466c:	00008067          	ret

0000000080004670 <_ZN7WorkerA3runEv>:
    void run() override {
    80004670:	ff010113          	addi	sp,sp,-16
    80004674:	00113423          	sd	ra,8(sp)
    80004678:	00813023          	sd	s0,0(sp)
    8000467c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004680:	00000593          	li	a1,0
    80004684:	fffff097          	auipc	ra,0xfffff
    80004688:	774080e7          	jalr	1908(ra) # 80003df8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000468c:	00813083          	ld	ra,8(sp)
    80004690:	00013403          	ld	s0,0(sp)
    80004694:	01010113          	addi	sp,sp,16
    80004698:	00008067          	ret

000000008000469c <_ZN7WorkerB3runEv>:
    void run() override {
    8000469c:	ff010113          	addi	sp,sp,-16
    800046a0:	00113423          	sd	ra,8(sp)
    800046a4:	00813023          	sd	s0,0(sp)
    800046a8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800046ac:	00000593          	li	a1,0
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	814080e7          	jalr	-2028(ra) # 80003ec4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800046b8:	00813083          	ld	ra,8(sp)
    800046bc:	00013403          	ld	s0,0(sp)
    800046c0:	01010113          	addi	sp,sp,16
    800046c4:	00008067          	ret

00000000800046c8 <_ZN7WorkerC3runEv>:
    void run() override {
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	00813023          	sd	s0,0(sp)
    800046d4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800046d8:	00000593          	li	a1,0
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	8bc080e7          	jalr	-1860(ra) # 80003f98 <_ZN7WorkerC11workerBodyCEPv>
    }
    800046e4:	00813083          	ld	ra,8(sp)
    800046e8:	00013403          	ld	s0,0(sp)
    800046ec:	01010113          	addi	sp,sp,16
    800046f0:	00008067          	ret

00000000800046f4 <_ZN7WorkerD3runEv>:
    void run() override {
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00113423          	sd	ra,8(sp)
    800046fc:	00813023          	sd	s0,0(sp)
    80004700:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004704:	00000593          	li	a1,0
    80004708:	00000097          	auipc	ra,0x0
    8000470c:	a10080e7          	jalr	-1520(ra) # 80004118 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004710:	00813083          	ld	ra,8(sp)
    80004714:	00013403          	ld	s0,0(sp)
    80004718:	01010113          	addi	sp,sp,16
    8000471c:	00008067          	ret

0000000080004720 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004720:	f8010113          	addi	sp,sp,-128
    80004724:	06113c23          	sd	ra,120(sp)
    80004728:	06813823          	sd	s0,112(sp)
    8000472c:	06913423          	sd	s1,104(sp)
    80004730:	07213023          	sd	s2,96(sp)
    80004734:	05313c23          	sd	s3,88(sp)
    80004738:	05413823          	sd	s4,80(sp)
    8000473c:	05513423          	sd	s5,72(sp)
    80004740:	05613023          	sd	s6,64(sp)
    80004744:	03713c23          	sd	s7,56(sp)
    80004748:	03813823          	sd	s8,48(sp)
    8000474c:	03913423          	sd	s9,40(sp)
    80004750:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004754:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004758:	00006517          	auipc	a0,0x6
    8000475c:	9d850513          	addi	a0,a0,-1576 # 8000a130 <CONSOLE_STATUS+0x120>
    80004760:	00002097          	auipc	ra,0x2
    80004764:	8c8080e7          	jalr	-1848(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    80004768:	01e00593          	li	a1,30
    8000476c:	f8040493          	addi	s1,s0,-128
    80004770:	00048513          	mv	a0,s1
    80004774:	00002097          	auipc	ra,0x2
    80004778:	93c080e7          	jalr	-1732(ra) # 800060b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000477c:	00048513          	mv	a0,s1
    80004780:	00002097          	auipc	ra,0x2
    80004784:	a08080e7          	jalr	-1528(ra) # 80006188 <_Z11stringToIntPKc>
    80004788:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000478c:	00006517          	auipc	a0,0x6
    80004790:	9c450513          	addi	a0,a0,-1596 # 8000a150 <CONSOLE_STATUS+0x140>
    80004794:	00002097          	auipc	ra,0x2
    80004798:	894080e7          	jalr	-1900(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    8000479c:	01e00593          	li	a1,30
    800047a0:	00048513          	mv	a0,s1
    800047a4:	00002097          	auipc	ra,0x2
    800047a8:	90c080e7          	jalr	-1780(ra) # 800060b0 <_Z9getStringPci>
    n = stringToInt(input);
    800047ac:	00048513          	mv	a0,s1
    800047b0:	00002097          	auipc	ra,0x2
    800047b4:	9d8080e7          	jalr	-1576(ra) # 80006188 <_Z11stringToIntPKc>
    800047b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800047bc:	00006517          	auipc	a0,0x6
    800047c0:	9b450513          	addi	a0,a0,-1612 # 8000a170 <CONSOLE_STATUS+0x160>
    800047c4:	00002097          	auipc	ra,0x2
    800047c8:	864080e7          	jalr	-1948(ra) # 80006028 <_Z11printStringPKc>
    printInt(threadNum);
    800047cc:	00000613          	li	a2,0
    800047d0:	00a00593          	li	a1,10
    800047d4:	00098513          	mv	a0,s3
    800047d8:	00002097          	auipc	ra,0x2
    800047dc:	a00080e7          	jalr	-1536(ra) # 800061d8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800047e0:	00006517          	auipc	a0,0x6
    800047e4:	9a850513          	addi	a0,a0,-1624 # 8000a188 <CONSOLE_STATUS+0x178>
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	840080e7          	jalr	-1984(ra) # 80006028 <_Z11printStringPKc>
    printInt(n);
    800047f0:	00000613          	li	a2,0
    800047f4:	00a00593          	li	a1,10
    800047f8:	00048513          	mv	a0,s1
    800047fc:	00002097          	auipc	ra,0x2
    80004800:	9dc080e7          	jalr	-1572(ra) # 800061d8 <_Z8printIntiii>
    printString(".\n");
    80004804:	00006517          	auipc	a0,0x6
    80004808:	99c50513          	addi	a0,a0,-1636 # 8000a1a0 <CONSOLE_STATUS+0x190>
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	81c080e7          	jalr	-2020(ra) # 80006028 <_Z11printStringPKc>
    if (threadNum > n) {
    80004814:	0334c463          	blt	s1,s3,8000483c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004818:	03305c63          	blez	s3,80004850 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000481c:	03800513          	li	a0,56
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	7e8080e7          	jalr	2024(ra) # 80002008 <_Znwm>
    80004828:	00050a93          	mv	s5,a0
    8000482c:	00048593          	mv	a1,s1
    80004830:	00002097          	auipc	ra,0x2
    80004834:	ac8080e7          	jalr	-1336(ra) # 800062f8 <_ZN9BufferCPPC1Ei>
    80004838:	0300006f          	j	80004868 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000483c:	00006517          	auipc	a0,0x6
    80004840:	96c50513          	addi	a0,a0,-1684 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	7e4080e7          	jalr	2020(ra) # 80006028 <_Z11printStringPKc>
        return;
    8000484c:	0140006f          	j	80004860 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004850:	00006517          	auipc	a0,0x6
    80004854:	99850513          	addi	a0,a0,-1640 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	7d0080e7          	jalr	2000(ra) # 80006028 <_Z11printStringPKc>
        return;
    80004860:	000c0113          	mv	sp,s8
    80004864:	2140006f          	j	80004a78 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004868:	01000513          	li	a0,16
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	79c080e7          	jalr	1948(ra) # 80002008 <_Znwm>
    80004874:	00050913          	mv	s2,a0
    80004878:	00000593          	li	a1,0
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	944080e7          	jalr	-1724(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80004884:	00008797          	auipc	a5,0x8
    80004888:	6527be23          	sd	s2,1628(a5) # 8000cee0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000488c:	00399793          	slli	a5,s3,0x3
    80004890:	00f78793          	addi	a5,a5,15
    80004894:	ff07f793          	andi	a5,a5,-16
    80004898:	40f10133          	sub	sp,sp,a5
    8000489c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800048a0:	0019871b          	addiw	a4,s3,1
    800048a4:	00171793          	slli	a5,a4,0x1
    800048a8:	00e787b3          	add	a5,a5,a4
    800048ac:	00379793          	slli	a5,a5,0x3
    800048b0:	00f78793          	addi	a5,a5,15
    800048b4:	ff07f793          	andi	a5,a5,-16
    800048b8:	40f10133          	sub	sp,sp,a5
    800048bc:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800048c0:	00199493          	slli	s1,s3,0x1
    800048c4:	013484b3          	add	s1,s1,s3
    800048c8:	00349493          	slli	s1,s1,0x3
    800048cc:	009b04b3          	add	s1,s6,s1
    800048d0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800048d4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800048d8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800048dc:	02800513          	li	a0,40
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	728080e7          	jalr	1832(ra) # 80002008 <_Znwm>
    800048e8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800048ec:	ffffe097          	auipc	ra,0xffffe
    800048f0:	81c080e7          	jalr	-2020(ra) # 80002108 <_ZN6ThreadC1Ev>
    800048f4:	00008797          	auipc	a5,0x8
    800048f8:	41c78793          	addi	a5,a5,1052 # 8000cd10 <_ZTV8Consumer+0x10>
    800048fc:	00fbb023          	sd	a5,0(s7)
    80004900:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004904:	000b8513          	mv	a0,s7
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	830080e7          	jalr	-2000(ra) # 80002138 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004910:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004914:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004918:	00008797          	auipc	a5,0x8
    8000491c:	5c87b783          	ld	a5,1480(a5) # 8000cee0 <_ZL10waitForAll>
    80004920:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004924:	02800513          	li	a0,40
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	6e0080e7          	jalr	1760(ra) # 80002008 <_Znwm>
    80004930:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	7d4080e7          	jalr	2004(ra) # 80002108 <_ZN6ThreadC1Ev>
    8000493c:	00008797          	auipc	a5,0x8
    80004940:	38478793          	addi	a5,a5,900 # 8000ccc0 <_ZTV16ProducerKeyborad+0x10>
    80004944:	00f4b023          	sd	a5,0(s1)
    80004948:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000494c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004950:	00048513          	mv	a0,s1
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	7e4080e7          	jalr	2020(ra) # 80002138 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000495c:	00100913          	li	s2,1
    80004960:	0300006f          	j	80004990 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004964:	00008797          	auipc	a5,0x8
    80004968:	38478793          	addi	a5,a5,900 # 8000cce8 <_ZTV8Producer+0x10>
    8000496c:	00fcb023          	sd	a5,0(s9)
    80004970:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004974:	00391793          	slli	a5,s2,0x3
    80004978:	00fa07b3          	add	a5,s4,a5
    8000497c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004980:	000c8513          	mv	a0,s9
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	7b4080e7          	jalr	1972(ra) # 80002138 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000498c:	0019091b          	addiw	s2,s2,1
    80004990:	05395263          	bge	s2,s3,800049d4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004994:	00191493          	slli	s1,s2,0x1
    80004998:	012484b3          	add	s1,s1,s2
    8000499c:	00349493          	slli	s1,s1,0x3
    800049a0:	009b04b3          	add	s1,s6,s1
    800049a4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800049a8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800049ac:	00008797          	auipc	a5,0x8
    800049b0:	5347b783          	ld	a5,1332(a5) # 8000cee0 <_ZL10waitForAll>
    800049b4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800049b8:	02800513          	li	a0,40
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	64c080e7          	jalr	1612(ra) # 80002008 <_Znwm>
    800049c4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	740080e7          	jalr	1856(ra) # 80002108 <_ZN6ThreadC1Ev>
    800049d0:	f95ff06f          	j	80004964 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	79c080e7          	jalr	1948(ra) # 80002170 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800049dc:	00000493          	li	s1,0
    800049e0:	0099ce63          	blt	s3,s1,800049fc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800049e4:	00008517          	auipc	a0,0x8
    800049e8:	4fc53503          	ld	a0,1276(a0) # 8000cee0 <_ZL10waitForAll>
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	810080e7          	jalr	-2032(ra) # 800021fc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800049f4:	0014849b          	addiw	s1,s1,1
    800049f8:	fe9ff06f          	j	800049e0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800049fc:	00008517          	auipc	a0,0x8
    80004a00:	4e453503          	ld	a0,1252(a0) # 8000cee0 <_ZL10waitForAll>
    80004a04:	00050863          	beqz	a0,80004a14 <_Z20testConsumerProducerv+0x2f4>
    80004a08:	00053783          	ld	a5,0(a0)
    80004a0c:	0087b783          	ld	a5,8(a5)
    80004a10:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004a14:	00000493          	li	s1,0
    80004a18:	0080006f          	j	80004a20 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004a1c:	0014849b          	addiw	s1,s1,1
    80004a20:	0334d263          	bge	s1,s3,80004a44 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004a24:	00349793          	slli	a5,s1,0x3
    80004a28:	00fa07b3          	add	a5,s4,a5
    80004a2c:	0007b503          	ld	a0,0(a5)
    80004a30:	fe0506e3          	beqz	a0,80004a1c <_Z20testConsumerProducerv+0x2fc>
    80004a34:	00053783          	ld	a5,0(a0)
    80004a38:	0087b783          	ld	a5,8(a5)
    80004a3c:	000780e7          	jalr	a5
    80004a40:	fddff06f          	j	80004a1c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004a44:	000b8a63          	beqz	s7,80004a58 <_Z20testConsumerProducerv+0x338>
    80004a48:	000bb783          	ld	a5,0(s7)
    80004a4c:	0087b783          	ld	a5,8(a5)
    80004a50:	000b8513          	mv	a0,s7
    80004a54:	000780e7          	jalr	a5
    delete buffer;
    80004a58:	000a8e63          	beqz	s5,80004a74 <_Z20testConsumerProducerv+0x354>
    80004a5c:	000a8513          	mv	a0,s5
    80004a60:	00002097          	auipc	ra,0x2
    80004a64:	b90080e7          	jalr	-1136(ra) # 800065f0 <_ZN9BufferCPPD1Ev>
    80004a68:	000a8513          	mv	a0,s5
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	5c4080e7          	jalr	1476(ra) # 80002030 <_ZdlPv>
    80004a74:	000c0113          	mv	sp,s8
}
    80004a78:	f8040113          	addi	sp,s0,-128
    80004a7c:	07813083          	ld	ra,120(sp)
    80004a80:	07013403          	ld	s0,112(sp)
    80004a84:	06813483          	ld	s1,104(sp)
    80004a88:	06013903          	ld	s2,96(sp)
    80004a8c:	05813983          	ld	s3,88(sp)
    80004a90:	05013a03          	ld	s4,80(sp)
    80004a94:	04813a83          	ld	s5,72(sp)
    80004a98:	04013b03          	ld	s6,64(sp)
    80004a9c:	03813b83          	ld	s7,56(sp)
    80004aa0:	03013c03          	ld	s8,48(sp)
    80004aa4:	02813c83          	ld	s9,40(sp)
    80004aa8:	08010113          	addi	sp,sp,128
    80004aac:	00008067          	ret
    80004ab0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ab4:	000a8513          	mv	a0,s5
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	578080e7          	jalr	1400(ra) # 80002030 <_ZdlPv>
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	00009097          	auipc	ra,0x9
    80004ac8:	514080e7          	jalr	1300(ra) # 8000dfd8 <_Unwind_Resume>
    80004acc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004ad0:	00090513          	mv	a0,s2
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	55c080e7          	jalr	1372(ra) # 80002030 <_ZdlPv>
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00009097          	auipc	ra,0x9
    80004ae4:	4f8080e7          	jalr	1272(ra) # 8000dfd8 <_Unwind_Resume>
    80004ae8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004aec:	000b8513          	mv	a0,s7
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	540080e7          	jalr	1344(ra) # 80002030 <_ZdlPv>
    80004af8:	00048513          	mv	a0,s1
    80004afc:	00009097          	auipc	ra,0x9
    80004b00:	4dc080e7          	jalr	1244(ra) # 8000dfd8 <_Unwind_Resume>
    80004b04:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b08:	00048513          	mv	a0,s1
    80004b0c:	ffffd097          	auipc	ra,0xffffd
    80004b10:	524080e7          	jalr	1316(ra) # 80002030 <_ZdlPv>
    80004b14:	00090513          	mv	a0,s2
    80004b18:	00009097          	auipc	ra,0x9
    80004b1c:	4c0080e7          	jalr	1216(ra) # 8000dfd8 <_Unwind_Resume>
    80004b20:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004b24:	000c8513          	mv	a0,s9
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	508080e7          	jalr	1288(ra) # 80002030 <_ZdlPv>
    80004b30:	00048513          	mv	a0,s1
    80004b34:	00009097          	auipc	ra,0x9
    80004b38:	4a4080e7          	jalr	1188(ra) # 8000dfd8 <_Unwind_Resume>

0000000080004b3c <_ZN8Consumer3runEv>:
    void run() override {
    80004b3c:	fd010113          	addi	sp,sp,-48
    80004b40:	02113423          	sd	ra,40(sp)
    80004b44:	02813023          	sd	s0,32(sp)
    80004b48:	00913c23          	sd	s1,24(sp)
    80004b4c:	01213823          	sd	s2,16(sp)
    80004b50:	01313423          	sd	s3,8(sp)
    80004b54:	03010413          	addi	s0,sp,48
    80004b58:	00050913          	mv	s2,a0
        int i = 0;
    80004b5c:	00000993          	li	s3,0
    80004b60:	0100006f          	j	80004b70 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b64:	00a00513          	li	a0,10
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	7f4080e7          	jalr	2036(ra) # 8000235c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004b70:	00008797          	auipc	a5,0x8
    80004b74:	3687a783          	lw	a5,872(a5) # 8000ced8 <_ZL9threadEnd>
    80004b78:	04079a63          	bnez	a5,80004bcc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004b7c:	02093783          	ld	a5,32(s2)
    80004b80:	0087b503          	ld	a0,8(a5)
    80004b84:	00002097          	auipc	ra,0x2
    80004b88:	958080e7          	jalr	-1704(ra) # 800064dc <_ZN9BufferCPP3getEv>
            i++;
    80004b8c:	0019849b          	addiw	s1,s3,1
    80004b90:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004b94:	0ff57513          	andi	a0,a0,255
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	7c4080e7          	jalr	1988(ra) # 8000235c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004ba0:	05000793          	li	a5,80
    80004ba4:	02f4e4bb          	remw	s1,s1,a5
    80004ba8:	fc0494e3          	bnez	s1,80004b70 <_ZN8Consumer3runEv+0x34>
    80004bac:	fb9ff06f          	j	80004b64 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004bb0:	02093783          	ld	a5,32(s2)
    80004bb4:	0087b503          	ld	a0,8(a5)
    80004bb8:	00002097          	auipc	ra,0x2
    80004bbc:	924080e7          	jalr	-1756(ra) # 800064dc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004bc0:	0ff57513          	andi	a0,a0,255
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	798080e7          	jalr	1944(ra) # 8000235c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004bcc:	02093783          	ld	a5,32(s2)
    80004bd0:	0087b503          	ld	a0,8(a5)
    80004bd4:	00002097          	auipc	ra,0x2
    80004bd8:	994080e7          	jalr	-1644(ra) # 80006568 <_ZN9BufferCPP6getCntEv>
    80004bdc:	fca04ae3          	bgtz	a0,80004bb0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004be0:	02093783          	ld	a5,32(s2)
    80004be4:	0107b503          	ld	a0,16(a5)
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	64c080e7          	jalr	1612(ra) # 80002234 <_ZN9Semaphore6signalEv>
    }
    80004bf0:	02813083          	ld	ra,40(sp)
    80004bf4:	02013403          	ld	s0,32(sp)
    80004bf8:	01813483          	ld	s1,24(sp)
    80004bfc:	01013903          	ld	s2,16(sp)
    80004c00:	00813983          	ld	s3,8(sp)
    80004c04:	03010113          	addi	sp,sp,48
    80004c08:	00008067          	ret

0000000080004c0c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004c0c:	ff010113          	addi	sp,sp,-16
    80004c10:	00113423          	sd	ra,8(sp)
    80004c14:	00813023          	sd	s0,0(sp)
    80004c18:	01010413          	addi	s0,sp,16
    80004c1c:	00008797          	auipc	a5,0x8
    80004c20:	0f478793          	addi	a5,a5,244 # 8000cd10 <_ZTV8Consumer+0x10>
    80004c24:	00f53023          	sd	a5,0(a0)
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	2f0080e7          	jalr	752(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004c30:	00813083          	ld	ra,8(sp)
    80004c34:	00013403          	ld	s0,0(sp)
    80004c38:	01010113          	addi	sp,sp,16
    80004c3c:	00008067          	ret

0000000080004c40 <_ZN8ConsumerD0Ev>:
    80004c40:	fe010113          	addi	sp,sp,-32
    80004c44:	00113c23          	sd	ra,24(sp)
    80004c48:	00813823          	sd	s0,16(sp)
    80004c4c:	00913423          	sd	s1,8(sp)
    80004c50:	02010413          	addi	s0,sp,32
    80004c54:	00050493          	mv	s1,a0
    80004c58:	00008797          	auipc	a5,0x8
    80004c5c:	0b878793          	addi	a5,a5,184 # 8000cd10 <_ZTV8Consumer+0x10>
    80004c60:	00f53023          	sd	a5,0(a0)
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	2b4080e7          	jalr	692(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	3c0080e7          	jalr	960(ra) # 80002030 <_ZdlPv>
    80004c78:	01813083          	ld	ra,24(sp)
    80004c7c:	01013403          	ld	s0,16(sp)
    80004c80:	00813483          	ld	s1,8(sp)
    80004c84:	02010113          	addi	sp,sp,32
    80004c88:	00008067          	ret

0000000080004c8c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004c8c:	ff010113          	addi	sp,sp,-16
    80004c90:	00113423          	sd	ra,8(sp)
    80004c94:	00813023          	sd	s0,0(sp)
    80004c98:	01010413          	addi	s0,sp,16
    80004c9c:	00008797          	auipc	a5,0x8
    80004ca0:	02478793          	addi	a5,a5,36 # 8000ccc0 <_ZTV16ProducerKeyborad+0x10>
    80004ca4:	00f53023          	sd	a5,0(a0)
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	270080e7          	jalr	624(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004cb0:	00813083          	ld	ra,8(sp)
    80004cb4:	00013403          	ld	s0,0(sp)
    80004cb8:	01010113          	addi	sp,sp,16
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN16ProducerKeyboradD0Ev>:
    80004cc0:	fe010113          	addi	sp,sp,-32
    80004cc4:	00113c23          	sd	ra,24(sp)
    80004cc8:	00813823          	sd	s0,16(sp)
    80004ccc:	00913423          	sd	s1,8(sp)
    80004cd0:	02010413          	addi	s0,sp,32
    80004cd4:	00050493          	mv	s1,a0
    80004cd8:	00008797          	auipc	a5,0x8
    80004cdc:	fe878793          	addi	a5,a5,-24 # 8000ccc0 <_ZTV16ProducerKeyborad+0x10>
    80004ce0:	00f53023          	sd	a5,0(a0)
    80004ce4:	ffffd097          	auipc	ra,0xffffd
    80004ce8:	234080e7          	jalr	564(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004cec:	00048513          	mv	a0,s1
    80004cf0:	ffffd097          	auipc	ra,0xffffd
    80004cf4:	340080e7          	jalr	832(ra) # 80002030 <_ZdlPv>
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	00813483          	ld	s1,8(sp)
    80004d04:	02010113          	addi	sp,sp,32
    80004d08:	00008067          	ret

0000000080004d0c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004d0c:	ff010113          	addi	sp,sp,-16
    80004d10:	00113423          	sd	ra,8(sp)
    80004d14:	00813023          	sd	s0,0(sp)
    80004d18:	01010413          	addi	s0,sp,16
    80004d1c:	00008797          	auipc	a5,0x8
    80004d20:	fcc78793          	addi	a5,a5,-52 # 8000cce8 <_ZTV8Producer+0x10>
    80004d24:	00f53023          	sd	a5,0(a0)
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	1f0080e7          	jalr	496(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004d30:	00813083          	ld	ra,8(sp)
    80004d34:	00013403          	ld	s0,0(sp)
    80004d38:	01010113          	addi	sp,sp,16
    80004d3c:	00008067          	ret

0000000080004d40 <_ZN8ProducerD0Ev>:
    80004d40:	fe010113          	addi	sp,sp,-32
    80004d44:	00113c23          	sd	ra,24(sp)
    80004d48:	00813823          	sd	s0,16(sp)
    80004d4c:	00913423          	sd	s1,8(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	00050493          	mv	s1,a0
    80004d58:	00008797          	auipc	a5,0x8
    80004d5c:	f9078793          	addi	a5,a5,-112 # 8000cce8 <_ZTV8Producer+0x10>
    80004d60:	00f53023          	sd	a5,0(a0)
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	1b4080e7          	jalr	436(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80004d6c:	00048513          	mv	a0,s1
    80004d70:	ffffd097          	auipc	ra,0xffffd
    80004d74:	2c0080e7          	jalr	704(ra) # 80002030 <_ZdlPv>
    80004d78:	01813083          	ld	ra,24(sp)
    80004d7c:	01013403          	ld	s0,16(sp)
    80004d80:	00813483          	ld	s1,8(sp)
    80004d84:	02010113          	addi	sp,sp,32
    80004d88:	00008067          	ret

0000000080004d8c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00113c23          	sd	ra,24(sp)
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x31) {
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	87c080e7          	jalr	-1924(ra) # 80001620 <_Z4getcv>
    80004dac:	0005059b          	sext.w	a1,a0
    80004db0:	03100793          	li	a5,49
    80004db4:	00f58c63          	beq	a1,a5,80004dcc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004db8:	0204b783          	ld	a5,32(s1)
    80004dbc:	0087b503          	ld	a0,8(a5)
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	68c080e7          	jalr	1676(ra) # 8000644c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x31) {
    80004dc8:	fddff06f          	j	80004da4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004dcc:	00100793          	li	a5,1
    80004dd0:	00008717          	auipc	a4,0x8
    80004dd4:	10f72423          	sw	a5,264(a4) # 8000ced8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004dd8:	0204b783          	ld	a5,32(s1)
    80004ddc:	02100593          	li	a1,33
    80004de0:	0087b503          	ld	a0,8(a5)
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	668080e7          	jalr	1640(ra) # 8000644c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004dec:	0204b783          	ld	a5,32(s1)
    80004df0:	0107b503          	ld	a0,16(a5)
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	440080e7          	jalr	1088(ra) # 80002234 <_ZN9Semaphore6signalEv>
    }
    80004dfc:	01813083          	ld	ra,24(sp)
    80004e00:	01013403          	ld	s0,16(sp)
    80004e04:	00813483          	ld	s1,8(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret

0000000080004e10 <_ZN8Producer3runEv>:
    void run() override {
    80004e10:	fe010113          	addi	sp,sp,-32
    80004e14:	00113c23          	sd	ra,24(sp)
    80004e18:	00813823          	sd	s0,16(sp)
    80004e1c:	00913423          	sd	s1,8(sp)
    80004e20:	01213023          	sd	s2,0(sp)
    80004e24:	02010413          	addi	s0,sp,32
    80004e28:	00050493          	mv	s1,a0
        int i = 0;
    80004e2c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e30:	00008797          	auipc	a5,0x8
    80004e34:	0a87a783          	lw	a5,168(a5) # 8000ced8 <_ZL9threadEnd>
    80004e38:	04079263          	bnez	a5,80004e7c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004e3c:	0204b783          	ld	a5,32(s1)
    80004e40:	0007a583          	lw	a1,0(a5)
    80004e44:	0305859b          	addiw	a1,a1,48
    80004e48:	0087b503          	ld	a0,8(a5)
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	600080e7          	jalr	1536(ra) # 8000644c <_ZN9BufferCPP3putEi>
            i++;
    80004e54:	0019071b          	addiw	a4,s2,1
    80004e58:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e5c:	0204b783          	ld	a5,32(s1)
    80004e60:	0007a783          	lw	a5,0(a5)
    80004e64:	00e787bb          	addw	a5,a5,a4
    80004e68:	00500513          	li	a0,5
    80004e6c:	02a7e53b          	remw	a0,a5,a0
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	328080e7          	jalr	808(ra) # 80002198 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004e78:	fb9ff06f          	j	80004e30 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004e7c:	0204b783          	ld	a5,32(s1)
    80004e80:	0107b503          	ld	a0,16(a5)
    80004e84:	ffffd097          	auipc	ra,0xffffd
    80004e88:	3b0080e7          	jalr	944(ra) # 80002234 <_ZN9Semaphore6signalEv>
    }
    80004e8c:	01813083          	ld	ra,24(sp)
    80004e90:	01013403          	ld	s0,16(sp)
    80004e94:	00813483          	ld	s1,8(sp)
    80004e98:	00013903          	ld	s2,0(sp)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ea4:	fe010113          	addi	sp,sp,-32
    80004ea8:	00113c23          	sd	ra,24(sp)
    80004eac:	00813823          	sd	s0,16(sp)
    80004eb0:	00913423          	sd	s1,8(sp)
    80004eb4:	01213023          	sd	s2,0(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    80004ebc:	00050493          	mv	s1,a0
    80004ec0:	00058913          	mv	s2,a1
    80004ec4:	0015879b          	addiw	a5,a1,1
    80004ec8:	0007851b          	sext.w	a0,a5
    80004ecc:	00f4a023          	sw	a5,0(s1)
    80004ed0:	0004a823          	sw	zero,16(s1)
    80004ed4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ed8:	00251513          	slli	a0,a0,0x2
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	37c080e7          	jalr	892(ra) # 80001258 <_Z9mem_allocm>
    80004ee4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004ee8:	00000593          	li	a1,0
    80004eec:	02048513          	addi	a0,s1,32
    80004ef0:	ffffc097          	auipc	ra,0xffffc
    80004ef4:	518080e7          	jalr	1304(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004ef8:	00090593          	mv	a1,s2
    80004efc:	01848513          	addi	a0,s1,24
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	508080e7          	jalr	1288(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004f08:	00100593          	li	a1,1
    80004f0c:	02848513          	addi	a0,s1,40
    80004f10:	ffffc097          	auipc	ra,0xffffc
    80004f14:	4f8080e7          	jalr	1272(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004f18:	00100593          	li	a1,1
    80004f1c:	03048513          	addi	a0,s1,48
    80004f20:	ffffc097          	auipc	ra,0xffffc
    80004f24:	4e8080e7          	jalr	1256(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004f28:	01813083          	ld	ra,24(sp)
    80004f2c:	01013403          	ld	s0,16(sp)
    80004f30:	00813483          	ld	s1,8(sp)
    80004f34:	00013903          	ld	s2,0(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret

0000000080004f40 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004f40:	fe010113          	addi	sp,sp,-32
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00813823          	sd	s0,16(sp)
    80004f4c:	00913423          	sd	s1,8(sp)
    80004f50:	01213023          	sd	s2,0(sp)
    80004f54:	02010413          	addi	s0,sp,32
    80004f58:	00050493          	mv	s1,a0
    80004f5c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004f60:	01853503          	ld	a0,24(a0)
    80004f64:	ffffc097          	auipc	ra,0xffffc
    80004f68:	540080e7          	jalr	1344(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004f6c:	0304b503          	ld	a0,48(s1)
    80004f70:	ffffc097          	auipc	ra,0xffffc
    80004f74:	534080e7          	jalr	1332(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004f78:	0084b783          	ld	a5,8(s1)
    80004f7c:	0144a703          	lw	a4,20(s1)
    80004f80:	00271713          	slli	a4,a4,0x2
    80004f84:	00e787b3          	add	a5,a5,a4
    80004f88:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f8c:	0144a783          	lw	a5,20(s1)
    80004f90:	0017879b          	addiw	a5,a5,1
    80004f94:	0004a703          	lw	a4,0(s1)
    80004f98:	02e7e7bb          	remw	a5,a5,a4
    80004f9c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004fa0:	0304b503          	ld	a0,48(s1)
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	54c080e7          	jalr	1356(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004fac:	0204b503          	ld	a0,32(s1)
    80004fb0:	ffffc097          	auipc	ra,0xffffc
    80004fb4:	540080e7          	jalr	1344(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004fb8:	01813083          	ld	ra,24(sp)
    80004fbc:	01013403          	ld	s0,16(sp)
    80004fc0:	00813483          	ld	s1,8(sp)
    80004fc4:	00013903          	ld	s2,0(sp)
    80004fc8:	02010113          	addi	sp,sp,32
    80004fcc:	00008067          	ret

0000000080004fd0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004fd0:	fe010113          	addi	sp,sp,-32
    80004fd4:	00113c23          	sd	ra,24(sp)
    80004fd8:	00813823          	sd	s0,16(sp)
    80004fdc:	00913423          	sd	s1,8(sp)
    80004fe0:	01213023          	sd	s2,0(sp)
    80004fe4:	02010413          	addi	s0,sp,32
    80004fe8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004fec:	02053503          	ld	a0,32(a0)
    80004ff0:	ffffc097          	auipc	ra,0xffffc
    80004ff4:	4b4080e7          	jalr	1204(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004ff8:	0284b503          	ld	a0,40(s1)
    80004ffc:	ffffc097          	auipc	ra,0xffffc
    80005000:	4a8080e7          	jalr	1192(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005004:	0084b703          	ld	a4,8(s1)
    80005008:	0104a783          	lw	a5,16(s1)
    8000500c:	00279693          	slli	a3,a5,0x2
    80005010:	00d70733          	add	a4,a4,a3
    80005014:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005018:	0017879b          	addiw	a5,a5,1
    8000501c:	0004a703          	lw	a4,0(s1)
    80005020:	02e7e7bb          	remw	a5,a5,a4
    80005024:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005028:	0284b503          	ld	a0,40(s1)
    8000502c:	ffffc097          	auipc	ra,0xffffc
    80005030:	4c4080e7          	jalr	1220(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005034:	0184b503          	ld	a0,24(s1)
    80005038:	ffffc097          	auipc	ra,0xffffc
    8000503c:	4b8080e7          	jalr	1208(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005040:	00090513          	mv	a0,s2
    80005044:	01813083          	ld	ra,24(sp)
    80005048:	01013403          	ld	s0,16(sp)
    8000504c:	00813483          	ld	s1,8(sp)
    80005050:	00013903          	ld	s2,0(sp)
    80005054:	02010113          	addi	sp,sp,32
    80005058:	00008067          	ret

000000008000505c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000505c:	fe010113          	addi	sp,sp,-32
    80005060:	00113c23          	sd	ra,24(sp)
    80005064:	00813823          	sd	s0,16(sp)
    80005068:	00913423          	sd	s1,8(sp)
    8000506c:	01213023          	sd	s2,0(sp)
    80005070:	02010413          	addi	s0,sp,32
    80005074:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005078:	02853503          	ld	a0,40(a0)
    8000507c:	ffffc097          	auipc	ra,0xffffc
    80005080:	428080e7          	jalr	1064(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005084:	0304b503          	ld	a0,48(s1)
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	41c080e7          	jalr	1052(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005090:	0144a783          	lw	a5,20(s1)
    80005094:	0104a903          	lw	s2,16(s1)
    80005098:	0327ce63          	blt	a5,s2,800050d4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000509c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800050a0:	0304b503          	ld	a0,48(s1)
    800050a4:	ffffc097          	auipc	ra,0xffffc
    800050a8:	44c080e7          	jalr	1100(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800050ac:	0284b503          	ld	a0,40(s1)
    800050b0:	ffffc097          	auipc	ra,0xffffc
    800050b4:	440080e7          	jalr	1088(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800050b8:	00090513          	mv	a0,s2
    800050bc:	01813083          	ld	ra,24(sp)
    800050c0:	01013403          	ld	s0,16(sp)
    800050c4:	00813483          	ld	s1,8(sp)
    800050c8:	00013903          	ld	s2,0(sp)
    800050cc:	02010113          	addi	sp,sp,32
    800050d0:	00008067          	ret
        ret = cap - head + tail;
    800050d4:	0004a703          	lw	a4,0(s1)
    800050d8:	4127093b          	subw	s2,a4,s2
    800050dc:	00f9093b          	addw	s2,s2,a5
    800050e0:	fc1ff06f          	j	800050a0 <_ZN6Buffer6getCntEv+0x44>

00000000800050e4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800050e4:	fe010113          	addi	sp,sp,-32
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00913423          	sd	s1,8(sp)
    800050f4:	02010413          	addi	s0,sp,32
    800050f8:	00050493          	mv	s1,a0
    putc('\n');
    800050fc:	00a00513          	li	a0,10
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	56c080e7          	jalr	1388(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80005108:	00005517          	auipc	a0,0x5
    8000510c:	20850513          	addi	a0,a0,520 # 8000a310 <CONSOLE_STATUS+0x300>
    80005110:	00001097          	auipc	ra,0x1
    80005114:	f18080e7          	jalr	-232(ra) # 80006028 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005118:	00048513          	mv	a0,s1
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	f40080e7          	jalr	-192(ra) # 8000505c <_ZN6Buffer6getCntEv>
    80005124:	02a05c63          	blez	a0,8000515c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005128:	0084b783          	ld	a5,8(s1)
    8000512c:	0104a703          	lw	a4,16(s1)
    80005130:	00271713          	slli	a4,a4,0x2
    80005134:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005138:	0007c503          	lbu	a0,0(a5)
    8000513c:	ffffc097          	auipc	ra,0xffffc
    80005140:	530080e7          	jalr	1328(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80005144:	0104a783          	lw	a5,16(s1)
    80005148:	0017879b          	addiw	a5,a5,1
    8000514c:	0004a703          	lw	a4,0(s1)
    80005150:	02e7e7bb          	remw	a5,a5,a4
    80005154:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005158:	fc1ff06f          	j	80005118 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000515c:	02100513          	li	a0,33
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	50c080e7          	jalr	1292(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80005168:	00a00513          	li	a0,10
    8000516c:	ffffc097          	auipc	ra,0xffffc
    80005170:	500080e7          	jalr	1280(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80005174:	0084b503          	ld	a0,8(s1)
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	134080e7          	jalr	308(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005180:	0204b503          	ld	a0,32(s1)
    80005184:	ffffc097          	auipc	ra,0xffffc
    80005188:	2d4080e7          	jalr	724(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    8000518c:	0184b503          	ld	a0,24(s1)
    80005190:	ffffc097          	auipc	ra,0xffffc
    80005194:	2c8080e7          	jalr	712(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005198:	0304b503          	ld	a0,48(s1)
    8000519c:	ffffc097          	auipc	ra,0xffffc
    800051a0:	2bc080e7          	jalr	700(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800051a4:	0284b503          	ld	a0,40(s1)
    800051a8:	ffffc097          	auipc	ra,0xffffc
    800051ac:	2b0080e7          	jalr	688(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	00813483          	ld	s1,8(sp)
    800051bc:	02010113          	addi	sp,sp,32
    800051c0:	00008067          	ret

00000000800051c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800051c4:	fe010113          	addi	sp,sp,-32
    800051c8:	00113c23          	sd	ra,24(sp)
    800051cc:	00813823          	sd	s0,16(sp)
    800051d0:	00913423          	sd	s1,8(sp)
    800051d4:	01213023          	sd	s2,0(sp)
    800051d8:	02010413          	addi	s0,sp,32
    800051dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800051e0:	00100793          	li	a5,1
    800051e4:	02a7f863          	bgeu	a5,a0,80005214 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800051e8:	00a00793          	li	a5,10
    800051ec:	02f577b3          	remu	a5,a0,a5
    800051f0:	02078e63          	beqz	a5,8000522c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800051f4:	fff48513          	addi	a0,s1,-1
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	fcc080e7          	jalr	-52(ra) # 800051c4 <_ZL9fibonaccim>
    80005200:	00050913          	mv	s2,a0
    80005204:	ffe48513          	addi	a0,s1,-2
    80005208:	00000097          	auipc	ra,0x0
    8000520c:	fbc080e7          	jalr	-68(ra) # 800051c4 <_ZL9fibonaccim>
    80005210:	00a90533          	add	a0,s2,a0
}
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	00013903          	ld	s2,0(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	1a0080e7          	jalr	416(ra) # 800013cc <_Z15thread_dispatchv>
    80005234:	fc1ff06f          	j	800051f4 <_ZL9fibonaccim+0x30>

0000000080005238 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	01213023          	sd	s2,0(sp)
    8000524c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005250:	00a00493          	li	s1,10
    80005254:	0400006f          	j	80005294 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005258:	00005517          	auipc	a0,0x5
    8000525c:	02050513          	addi	a0,a0,32 # 8000a278 <CONSOLE_STATUS+0x268>
    80005260:	00001097          	auipc	ra,0x1
    80005264:	dc8080e7          	jalr	-568(ra) # 80006028 <_Z11printStringPKc>
    80005268:	00000613          	li	a2,0
    8000526c:	00a00593          	li	a1,10
    80005270:	00048513          	mv	a0,s1
    80005274:	00001097          	auipc	ra,0x1
    80005278:	f64080e7          	jalr	-156(ra) # 800061d8 <_Z8printIntiii>
    8000527c:	00005517          	auipc	a0,0x5
    80005280:	1fc50513          	addi	a0,a0,508 # 8000a478 <CONSOLE_STATUS+0x468>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	da4080e7          	jalr	-604(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000528c:	0014849b          	addiw	s1,s1,1
    80005290:	0ff4f493          	andi	s1,s1,255
    80005294:	00c00793          	li	a5,12
    80005298:	fc97f0e3          	bgeu	a5,s1,80005258 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000529c:	00005517          	auipc	a0,0x5
    800052a0:	fe450513          	addi	a0,a0,-28 # 8000a280 <CONSOLE_STATUS+0x270>
    800052a4:	00001097          	auipc	ra,0x1
    800052a8:	d84080e7          	jalr	-636(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052ac:	00500313          	li	t1,5
    thread_dispatch();
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	11c080e7          	jalr	284(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800052b8:	01000513          	li	a0,16
    800052bc:	00000097          	auipc	ra,0x0
    800052c0:	f08080e7          	jalr	-248(ra) # 800051c4 <_ZL9fibonaccim>
    800052c4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052c8:	00005517          	auipc	a0,0x5
    800052cc:	fc850513          	addi	a0,a0,-56 # 8000a290 <CONSOLE_STATUS+0x280>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	d58080e7          	jalr	-680(ra) # 80006028 <_Z11printStringPKc>
    800052d8:	00000613          	li	a2,0
    800052dc:	00a00593          	li	a1,10
    800052e0:	0009051b          	sext.w	a0,s2
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	ef4080e7          	jalr	-268(ra) # 800061d8 <_Z8printIntiii>
    800052ec:	00005517          	auipc	a0,0x5
    800052f0:	18c50513          	addi	a0,a0,396 # 8000a478 <CONSOLE_STATUS+0x468>
    800052f4:	00001097          	auipc	ra,0x1
    800052f8:	d34080e7          	jalr	-716(ra) # 80006028 <_Z11printStringPKc>
    800052fc:	0400006f          	j	8000533c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005300:	00005517          	auipc	a0,0x5
    80005304:	f7850513          	addi	a0,a0,-136 # 8000a278 <CONSOLE_STATUS+0x268>
    80005308:	00001097          	auipc	ra,0x1
    8000530c:	d20080e7          	jalr	-736(ra) # 80006028 <_Z11printStringPKc>
    80005310:	00000613          	li	a2,0
    80005314:	00a00593          	li	a1,10
    80005318:	00048513          	mv	a0,s1
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	ebc080e7          	jalr	-324(ra) # 800061d8 <_Z8printIntiii>
    80005324:	00005517          	auipc	a0,0x5
    80005328:	15450513          	addi	a0,a0,340 # 8000a478 <CONSOLE_STATUS+0x468>
    8000532c:	00001097          	auipc	ra,0x1
    80005330:	cfc080e7          	jalr	-772(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005334:	0014849b          	addiw	s1,s1,1
    80005338:	0ff4f493          	andi	s1,s1,255
    8000533c:	00f00793          	li	a5,15
    80005340:	fc97f0e3          	bgeu	a5,s1,80005300 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005344:	00005517          	auipc	a0,0x5
    80005348:	f5c50513          	addi	a0,a0,-164 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000534c:	00001097          	auipc	ra,0x1
    80005350:	cdc080e7          	jalr	-804(ra) # 80006028 <_Z11printStringPKc>
    finishedD = true;
    80005354:	00100793          	li	a5,1
    80005358:	00008717          	auipc	a4,0x8
    8000535c:	b8f70823          	sb	a5,-1136(a4) # 8000cee8 <_ZL9finishedD>
    thread_dispatch();
    80005360:	ffffc097          	auipc	ra,0xffffc
    80005364:	06c080e7          	jalr	108(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005368:	01813083          	ld	ra,24(sp)
    8000536c:	01013403          	ld	s0,16(sp)
    80005370:	00813483          	ld	s1,8(sp)
    80005374:	00013903          	ld	s2,0(sp)
    80005378:	02010113          	addi	sp,sp,32
    8000537c:	00008067          	ret

0000000080005380 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005380:	fe010113          	addi	sp,sp,-32
    80005384:	00113c23          	sd	ra,24(sp)
    80005388:	00813823          	sd	s0,16(sp)
    8000538c:	00913423          	sd	s1,8(sp)
    80005390:	01213023          	sd	s2,0(sp)
    80005394:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005398:	00000493          	li	s1,0
    8000539c:	0400006f          	j	800053dc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800053a0:	00005517          	auipc	a0,0x5
    800053a4:	ea850513          	addi	a0,a0,-344 # 8000a248 <CONSOLE_STATUS+0x238>
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	c80080e7          	jalr	-896(ra) # 80006028 <_Z11printStringPKc>
    800053b0:	00000613          	li	a2,0
    800053b4:	00a00593          	li	a1,10
    800053b8:	00048513          	mv	a0,s1
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	e1c080e7          	jalr	-484(ra) # 800061d8 <_Z8printIntiii>
    800053c4:	00005517          	auipc	a0,0x5
    800053c8:	0b450513          	addi	a0,a0,180 # 8000a478 <CONSOLE_STATUS+0x468>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	c5c080e7          	jalr	-932(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053d4:	0014849b          	addiw	s1,s1,1
    800053d8:	0ff4f493          	andi	s1,s1,255
    800053dc:	00200793          	li	a5,2
    800053e0:	fc97f0e3          	bgeu	a5,s1,800053a0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800053e4:	00005517          	auipc	a0,0x5
    800053e8:	e6c50513          	addi	a0,a0,-404 # 8000a250 <CONSOLE_STATUS+0x240>
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	c3c080e7          	jalr	-964(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053f4:	00700313          	li	t1,7
    thread_dispatch();
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	fd4080e7          	jalr	-44(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005400:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005404:	00005517          	auipc	a0,0x5
    80005408:	e5c50513          	addi	a0,a0,-420 # 8000a260 <CONSOLE_STATUS+0x250>
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	c1c080e7          	jalr	-996(ra) # 80006028 <_Z11printStringPKc>
    80005414:	00000613          	li	a2,0
    80005418:	00a00593          	li	a1,10
    8000541c:	0009051b          	sext.w	a0,s2
    80005420:	00001097          	auipc	ra,0x1
    80005424:	db8080e7          	jalr	-584(ra) # 800061d8 <_Z8printIntiii>
    80005428:	00005517          	auipc	a0,0x5
    8000542c:	05050513          	addi	a0,a0,80 # 8000a478 <CONSOLE_STATUS+0x468>
    80005430:	00001097          	auipc	ra,0x1
    80005434:	bf8080e7          	jalr	-1032(ra) # 80006028 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005438:	00c00513          	li	a0,12
    8000543c:	00000097          	auipc	ra,0x0
    80005440:	d88080e7          	jalr	-632(ra) # 800051c4 <_ZL9fibonaccim>
    80005444:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005448:	00005517          	auipc	a0,0x5
    8000544c:	e2050513          	addi	a0,a0,-480 # 8000a268 <CONSOLE_STATUS+0x258>
    80005450:	00001097          	auipc	ra,0x1
    80005454:	bd8080e7          	jalr	-1064(ra) # 80006028 <_Z11printStringPKc>
    80005458:	00000613          	li	a2,0
    8000545c:	00a00593          	li	a1,10
    80005460:	0009051b          	sext.w	a0,s2
    80005464:	00001097          	auipc	ra,0x1
    80005468:	d74080e7          	jalr	-652(ra) # 800061d8 <_Z8printIntiii>
    8000546c:	00005517          	auipc	a0,0x5
    80005470:	00c50513          	addi	a0,a0,12 # 8000a478 <CONSOLE_STATUS+0x468>
    80005474:	00001097          	auipc	ra,0x1
    80005478:	bb4080e7          	jalr	-1100(ra) # 80006028 <_Z11printStringPKc>
    8000547c:	0400006f          	j	800054bc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005480:	00005517          	auipc	a0,0x5
    80005484:	dc850513          	addi	a0,a0,-568 # 8000a248 <CONSOLE_STATUS+0x238>
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	ba0080e7          	jalr	-1120(ra) # 80006028 <_Z11printStringPKc>
    80005490:	00000613          	li	a2,0
    80005494:	00a00593          	li	a1,10
    80005498:	00048513          	mv	a0,s1
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	d3c080e7          	jalr	-708(ra) # 800061d8 <_Z8printIntiii>
    800054a4:	00005517          	auipc	a0,0x5
    800054a8:	fd450513          	addi	a0,a0,-44 # 8000a478 <CONSOLE_STATUS+0x468>
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	b7c080e7          	jalr	-1156(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800054b4:	0014849b          	addiw	s1,s1,1
    800054b8:	0ff4f493          	andi	s1,s1,255
    800054bc:	00500793          	li	a5,5
    800054c0:	fc97f0e3          	bgeu	a5,s1,80005480 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800054c4:	00005517          	auipc	a0,0x5
    800054c8:	e6450513          	addi	a0,a0,-412 # 8000a328 <CONSOLE_STATUS+0x318>
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	b5c080e7          	jalr	-1188(ra) # 80006028 <_Z11printStringPKc>
    finishedC = true;
    800054d4:	00100793          	li	a5,1
    800054d8:	00008717          	auipc	a4,0x8
    800054dc:	a0f708a3          	sb	a5,-1519(a4) # 8000cee9 <_ZL9finishedC>
    thread_dispatch();
    800054e0:	ffffc097          	auipc	ra,0xffffc
    800054e4:	eec080e7          	jalr	-276(ra) # 800013cc <_Z15thread_dispatchv>
}
    800054e8:	01813083          	ld	ra,24(sp)
    800054ec:	01013403          	ld	s0,16(sp)
    800054f0:	00813483          	ld	s1,8(sp)
    800054f4:	00013903          	ld	s2,0(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret

0000000080005500 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005500:	fe010113          	addi	sp,sp,-32
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	00813823          	sd	s0,16(sp)
    8000550c:	00913423          	sd	s1,8(sp)
    80005510:	01213023          	sd	s2,0(sp)
    80005514:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005518:	00000913          	li	s2,0
    8000551c:	0380006f          	j	80005554 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	eac080e7          	jalr	-340(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005528:	00148493          	addi	s1,s1,1
    8000552c:	000027b7          	lui	a5,0x2
    80005530:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005534:	0097ee63          	bltu	a5,s1,80005550 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005538:	00000713          	li	a4,0
    8000553c:	000077b7          	lui	a5,0x7
    80005540:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005544:	fce7eee3          	bltu	a5,a4,80005520 <_ZL11workerBodyBPv+0x20>
    80005548:	00170713          	addi	a4,a4,1
    8000554c:	ff1ff06f          	j	8000553c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005550:	00190913          	addi	s2,s2,1
    80005554:	00f00793          	li	a5,15
    80005558:	0527e063          	bltu	a5,s2,80005598 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000555c:	00005517          	auipc	a0,0x5
    80005560:	cd450513          	addi	a0,a0,-812 # 8000a230 <CONSOLE_STATUS+0x220>
    80005564:	00001097          	auipc	ra,0x1
    80005568:	ac4080e7          	jalr	-1340(ra) # 80006028 <_Z11printStringPKc>
    8000556c:	00000613          	li	a2,0
    80005570:	00a00593          	li	a1,10
    80005574:	0009051b          	sext.w	a0,s2
    80005578:	00001097          	auipc	ra,0x1
    8000557c:	c60080e7          	jalr	-928(ra) # 800061d8 <_Z8printIntiii>
    80005580:	00005517          	auipc	a0,0x5
    80005584:	ef850513          	addi	a0,a0,-264 # 8000a478 <CONSOLE_STATUS+0x468>
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	aa0080e7          	jalr	-1376(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005590:	00000493          	li	s1,0
    80005594:	f99ff06f          	j	8000552c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005598:	00005517          	auipc	a0,0x5
    8000559c:	ca050513          	addi	a0,a0,-864 # 8000a238 <CONSOLE_STATUS+0x228>
    800055a0:	00001097          	auipc	ra,0x1
    800055a4:	a88080e7          	jalr	-1400(ra) # 80006028 <_Z11printStringPKc>
    finishedB = true;
    800055a8:	00100793          	li	a5,1
    800055ac:	00008717          	auipc	a4,0x8
    800055b0:	92f70f23          	sb	a5,-1730(a4) # 8000ceea <_ZL9finishedB>
    thread_dispatch();
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	e18080e7          	jalr	-488(ra) # 800013cc <_Z15thread_dispatchv>
}
    800055bc:	01813083          	ld	ra,24(sp)
    800055c0:	01013403          	ld	s0,16(sp)
    800055c4:	00813483          	ld	s1,8(sp)
    800055c8:	00013903          	ld	s2,0(sp)
    800055cc:	02010113          	addi	sp,sp,32
    800055d0:	00008067          	ret

00000000800055d4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800055d4:	fe010113          	addi	sp,sp,-32
    800055d8:	00113c23          	sd	ra,24(sp)
    800055dc:	00813823          	sd	s0,16(sp)
    800055e0:	00913423          	sd	s1,8(sp)
    800055e4:	01213023          	sd	s2,0(sp)
    800055e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055ec:	00000913          	li	s2,0
    800055f0:	0380006f          	j	80005628 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800055f4:	ffffc097          	auipc	ra,0xffffc
    800055f8:	dd8080e7          	jalr	-552(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055fc:	00148493          	addi	s1,s1,1
    80005600:	000027b7          	lui	a5,0x2
    80005604:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005608:	0097ee63          	bltu	a5,s1,80005624 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000560c:	00000713          	li	a4,0
    80005610:	000077b7          	lui	a5,0x7
    80005614:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005618:	fce7eee3          	bltu	a5,a4,800055f4 <_ZL11workerBodyAPv+0x20>
    8000561c:	00170713          	addi	a4,a4,1
    80005620:	ff1ff06f          	j	80005610 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005624:	00190913          	addi	s2,s2,1
    80005628:	00900793          	li	a5,9
    8000562c:	0527e063          	bltu	a5,s2,8000566c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005630:	00005517          	auipc	a0,0x5
    80005634:	be850513          	addi	a0,a0,-1048 # 8000a218 <CONSOLE_STATUS+0x208>
    80005638:	00001097          	auipc	ra,0x1
    8000563c:	9f0080e7          	jalr	-1552(ra) # 80006028 <_Z11printStringPKc>
    80005640:	00000613          	li	a2,0
    80005644:	00a00593          	li	a1,10
    80005648:	0009051b          	sext.w	a0,s2
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	b8c080e7          	jalr	-1140(ra) # 800061d8 <_Z8printIntiii>
    80005654:	00005517          	auipc	a0,0x5
    80005658:	e2450513          	addi	a0,a0,-476 # 8000a478 <CONSOLE_STATUS+0x468>
    8000565c:	00001097          	auipc	ra,0x1
    80005660:	9cc080e7          	jalr	-1588(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005664:	00000493          	li	s1,0
    80005668:	f99ff06f          	j	80005600 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000566c:	00005517          	auipc	a0,0x5
    80005670:	bb450513          	addi	a0,a0,-1100 # 8000a220 <CONSOLE_STATUS+0x210>
    80005674:	00001097          	auipc	ra,0x1
    80005678:	9b4080e7          	jalr	-1612(ra) # 80006028 <_Z11printStringPKc>
    finishedA = true;
    8000567c:	00100793          	li	a5,1
    80005680:	00008717          	auipc	a4,0x8
    80005684:	86f705a3          	sb	a5,-1941(a4) # 8000ceeb <_ZL9finishedA>
}
    80005688:	01813083          	ld	ra,24(sp)
    8000568c:	01013403          	ld	s0,16(sp)
    80005690:	00813483          	ld	s1,8(sp)
    80005694:	00013903          	ld	s2,0(sp)
    80005698:	02010113          	addi	sp,sp,32
    8000569c:	00008067          	ret

00000000800056a0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800056a0:	fd010113          	addi	sp,sp,-48
    800056a4:	02113423          	sd	ra,40(sp)
    800056a8:	02813023          	sd	s0,32(sp)
    800056ac:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800056b0:	00000613          	li	a2,0
    800056b4:	00000597          	auipc	a1,0x0
    800056b8:	f2058593          	addi	a1,a1,-224 # 800055d4 <_ZL11workerBodyAPv>
    800056bc:	fd040513          	addi	a0,s0,-48
    800056c0:	ffffc097          	auipc	ra,0xffffc
    800056c4:	c38080e7          	jalr	-968(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800056c8:	00005517          	auipc	a0,0x5
    800056cc:	be850513          	addi	a0,a0,-1048 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	958080e7          	jalr	-1704(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800056d8:	00000613          	li	a2,0
    800056dc:	00000597          	auipc	a1,0x0
    800056e0:	e2458593          	addi	a1,a1,-476 # 80005500 <_ZL11workerBodyBPv>
    800056e4:	fd840513          	addi	a0,s0,-40
    800056e8:	ffffc097          	auipc	ra,0xffffc
    800056ec:	c10080e7          	jalr	-1008(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800056f0:	00005517          	auipc	a0,0x5
    800056f4:	bd850513          	addi	a0,a0,-1064 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800056f8:	00001097          	auipc	ra,0x1
    800056fc:	930080e7          	jalr	-1744(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005700:	00000613          	li	a2,0
    80005704:	00000597          	auipc	a1,0x0
    80005708:	c7c58593          	addi	a1,a1,-900 # 80005380 <_ZL11workerBodyCPv>
    8000570c:	fe040513          	addi	a0,s0,-32
    80005710:	ffffc097          	auipc	ra,0xffffc
    80005714:	be8080e7          	jalr	-1048(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005718:	00005517          	auipc	a0,0x5
    8000571c:	bc850513          	addi	a0,a0,-1080 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005720:	00001097          	auipc	ra,0x1
    80005724:	908080e7          	jalr	-1784(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005728:	00000613          	li	a2,0
    8000572c:	00000597          	auipc	a1,0x0
    80005730:	b0c58593          	addi	a1,a1,-1268 # 80005238 <_ZL11workerBodyDPv>
    80005734:	fe840513          	addi	a0,s0,-24
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	bc0080e7          	jalr	-1088(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005740:	00005517          	auipc	a0,0x5
    80005744:	bb850513          	addi	a0,a0,-1096 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005748:	00001097          	auipc	ra,0x1
    8000574c:	8e0080e7          	jalr	-1824(ra) # 80006028 <_Z11printStringPKc>
    80005750:	00c0006f          	j	8000575c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	c78080e7          	jalr	-904(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000575c:	00007797          	auipc	a5,0x7
    80005760:	78f7c783          	lbu	a5,1935(a5) # 8000ceeb <_ZL9finishedA>
    80005764:	fe0788e3          	beqz	a5,80005754 <_Z18Threads_C_API_testv+0xb4>
    80005768:	00007797          	auipc	a5,0x7
    8000576c:	7827c783          	lbu	a5,1922(a5) # 8000ceea <_ZL9finishedB>
    80005770:	fe0782e3          	beqz	a5,80005754 <_Z18Threads_C_API_testv+0xb4>
    80005774:	00007797          	auipc	a5,0x7
    80005778:	7757c783          	lbu	a5,1909(a5) # 8000cee9 <_ZL9finishedC>
    8000577c:	fc078ce3          	beqz	a5,80005754 <_Z18Threads_C_API_testv+0xb4>
    80005780:	00007797          	auipc	a5,0x7
    80005784:	7687c783          	lbu	a5,1896(a5) # 8000cee8 <_ZL9finishedD>
    80005788:	fc0786e3          	beqz	a5,80005754 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000578c:	02813083          	ld	ra,40(sp)
    80005790:	02013403          	ld	s0,32(sp)
    80005794:	03010113          	addi	sp,sp,48
    80005798:	00008067          	ret

000000008000579c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000579c:	fd010113          	addi	sp,sp,-48
    800057a0:	02113423          	sd	ra,40(sp)
    800057a4:	02813023          	sd	s0,32(sp)
    800057a8:	00913c23          	sd	s1,24(sp)
    800057ac:	01213823          	sd	s2,16(sp)
    800057b0:	01313423          	sd	s3,8(sp)
    800057b4:	03010413          	addi	s0,sp,48
    800057b8:	00050993          	mv	s3,a0
    800057bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800057c0:	00000913          	li	s2,0
    800057c4:	00c0006f          	j	800057d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057c8:	ffffd097          	auipc	ra,0xffffd
    800057cc:	9a8080e7          	jalr	-1624(ra) # 80002170 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800057d0:	ffffc097          	auipc	ra,0xffffc
    800057d4:	e50080e7          	jalr	-432(ra) # 80001620 <_Z4getcv>
    800057d8:	0005059b          	sext.w	a1,a0
    800057dc:	01b00793          	li	a5,27
    800057e0:	02f58a63          	beq	a1,a5,80005814 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800057e4:	0084b503          	ld	a0,8(s1)
    800057e8:	00001097          	auipc	ra,0x1
    800057ec:	c64080e7          	jalr	-924(ra) # 8000644c <_ZN9BufferCPP3putEi>
        i++;
    800057f0:	0019071b          	addiw	a4,s2,1
    800057f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800057f8:	0004a683          	lw	a3,0(s1)
    800057fc:	0026979b          	slliw	a5,a3,0x2
    80005800:	00d787bb          	addw	a5,a5,a3
    80005804:	0017979b          	slliw	a5,a5,0x1
    80005808:	02f767bb          	remw	a5,a4,a5
    8000580c:	fc0792e3          	bnez	a5,800057d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005810:	fb9ff06f          	j	800057c8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005814:	00100793          	li	a5,1
    80005818:	00007717          	auipc	a4,0x7
    8000581c:	6cf72c23          	sw	a5,1752(a4) # 8000cef0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005820:	0209b783          	ld	a5,32(s3)
    80005824:	02100593          	li	a1,33
    80005828:	0087b503          	ld	a0,8(a5)
    8000582c:	00001097          	auipc	ra,0x1
    80005830:	c20080e7          	jalr	-992(ra) # 8000644c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005834:	0104b503          	ld	a0,16(s1)
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	9fc080e7          	jalr	-1540(ra) # 80002234 <_ZN9Semaphore6signalEv>
}
    80005840:	02813083          	ld	ra,40(sp)
    80005844:	02013403          	ld	s0,32(sp)
    80005848:	01813483          	ld	s1,24(sp)
    8000584c:	01013903          	ld	s2,16(sp)
    80005850:	00813983          	ld	s3,8(sp)
    80005854:	03010113          	addi	sp,sp,48
    80005858:	00008067          	ret

000000008000585c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000585c:	fe010113          	addi	sp,sp,-32
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	00813823          	sd	s0,16(sp)
    80005868:	00913423          	sd	s1,8(sp)
    8000586c:	01213023          	sd	s2,0(sp)
    80005870:	02010413          	addi	s0,sp,32
    80005874:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005878:	00000913          	li	s2,0
    8000587c:	00c0006f          	j	80005888 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	8f0080e7          	jalr	-1808(ra) # 80002170 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005888:	00007797          	auipc	a5,0x7
    8000588c:	6687a783          	lw	a5,1640(a5) # 8000cef0 <_ZL9threadEnd>
    80005890:	02079e63          	bnez	a5,800058cc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005894:	0004a583          	lw	a1,0(s1)
    80005898:	0305859b          	addiw	a1,a1,48
    8000589c:	0084b503          	ld	a0,8(s1)
    800058a0:	00001097          	auipc	ra,0x1
    800058a4:	bac080e7          	jalr	-1108(ra) # 8000644c <_ZN9BufferCPP3putEi>
        i++;
    800058a8:	0019071b          	addiw	a4,s2,1
    800058ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058b0:	0004a683          	lw	a3,0(s1)
    800058b4:	0026979b          	slliw	a5,a3,0x2
    800058b8:	00d787bb          	addw	a5,a5,a3
    800058bc:	0017979b          	slliw	a5,a5,0x1
    800058c0:	02f767bb          	remw	a5,a4,a5
    800058c4:	fc0792e3          	bnez	a5,80005888 <_ZN12ProducerSync8producerEPv+0x2c>
    800058c8:	fb9ff06f          	j	80005880 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800058cc:	0104b503          	ld	a0,16(s1)
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	964080e7          	jalr	-1692(ra) # 80002234 <_ZN9Semaphore6signalEv>
}
    800058d8:	01813083          	ld	ra,24(sp)
    800058dc:	01013403          	ld	s0,16(sp)
    800058e0:	00813483          	ld	s1,8(sp)
    800058e4:	00013903          	ld	s2,0(sp)
    800058e8:	02010113          	addi	sp,sp,32
    800058ec:	00008067          	ret

00000000800058f0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800058f0:	fd010113          	addi	sp,sp,-48
    800058f4:	02113423          	sd	ra,40(sp)
    800058f8:	02813023          	sd	s0,32(sp)
    800058fc:	00913c23          	sd	s1,24(sp)
    80005900:	01213823          	sd	s2,16(sp)
    80005904:	01313423          	sd	s3,8(sp)
    80005908:	01413023          	sd	s4,0(sp)
    8000590c:	03010413          	addi	s0,sp,48
    80005910:	00050993          	mv	s3,a0
    80005914:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005918:	00000a13          	li	s4,0
    8000591c:	01c0006f          	j	80005938 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	850080e7          	jalr	-1968(ra) # 80002170 <_ZN6Thread8dispatchEv>
    80005928:	0500006f          	j	80005978 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000592c:	00a00513          	li	a0,10
    80005930:	ffffc097          	auipc	ra,0xffffc
    80005934:	d3c080e7          	jalr	-708(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80005938:	00007797          	auipc	a5,0x7
    8000593c:	5b87a783          	lw	a5,1464(a5) # 8000cef0 <_ZL9threadEnd>
    80005940:	06079263          	bnez	a5,800059a4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005944:	00893503          	ld	a0,8(s2)
    80005948:	00001097          	auipc	ra,0x1
    8000594c:	b94080e7          	jalr	-1132(ra) # 800064dc <_ZN9BufferCPP3getEv>
        i++;
    80005950:	001a049b          	addiw	s1,s4,1
    80005954:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005958:	0ff57513          	andi	a0,a0,255
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	d10080e7          	jalr	-752(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005964:	00092703          	lw	a4,0(s2)
    80005968:	0027179b          	slliw	a5,a4,0x2
    8000596c:	00e787bb          	addw	a5,a5,a4
    80005970:	02f4e7bb          	remw	a5,s1,a5
    80005974:	fa0786e3          	beqz	a5,80005920 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005978:	05000793          	li	a5,80
    8000597c:	02f4e4bb          	remw	s1,s1,a5
    80005980:	fa049ce3          	bnez	s1,80005938 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005984:	fa9ff06f          	j	8000592c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005988:	0209b783          	ld	a5,32(s3)
    8000598c:	0087b503          	ld	a0,8(a5)
    80005990:	00001097          	auipc	ra,0x1
    80005994:	b4c080e7          	jalr	-1204(ra) # 800064dc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005998:	0ff57513          	andi	a0,a0,255
    8000599c:	ffffd097          	auipc	ra,0xffffd
    800059a0:	9c0080e7          	jalr	-1600(ra) # 8000235c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800059a4:	0209b783          	ld	a5,32(s3)
    800059a8:	0087b503          	ld	a0,8(a5)
    800059ac:	00001097          	auipc	ra,0x1
    800059b0:	bbc080e7          	jalr	-1092(ra) # 80006568 <_ZN9BufferCPP6getCntEv>
    800059b4:	fca04ae3          	bgtz	a0,80005988 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800059b8:	01093503          	ld	a0,16(s2)
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	878080e7          	jalr	-1928(ra) # 80002234 <_ZN9Semaphore6signalEv>
}
    800059c4:	02813083          	ld	ra,40(sp)
    800059c8:	02013403          	ld	s0,32(sp)
    800059cc:	01813483          	ld	s1,24(sp)
    800059d0:	01013903          	ld	s2,16(sp)
    800059d4:	00813983          	ld	s3,8(sp)
    800059d8:	00013a03          	ld	s4,0(sp)
    800059dc:	03010113          	addi	sp,sp,48
    800059e0:	00008067          	ret

00000000800059e4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800059e4:	f8010113          	addi	sp,sp,-128
    800059e8:	06113c23          	sd	ra,120(sp)
    800059ec:	06813823          	sd	s0,112(sp)
    800059f0:	06913423          	sd	s1,104(sp)
    800059f4:	07213023          	sd	s2,96(sp)
    800059f8:	05313c23          	sd	s3,88(sp)
    800059fc:	05413823          	sd	s4,80(sp)
    80005a00:	05513423          	sd	s5,72(sp)
    80005a04:	05613023          	sd	s6,64(sp)
    80005a08:	03713c23          	sd	s7,56(sp)
    80005a0c:	03813823          	sd	s8,48(sp)
    80005a10:	03913423          	sd	s9,40(sp)
    80005a14:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005a18:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	71450513          	addi	a0,a0,1812 # 8000a130 <CONSOLE_STATUS+0x120>
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	604080e7          	jalr	1540(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    80005a2c:	01e00593          	li	a1,30
    80005a30:	f8040493          	addi	s1,s0,-128
    80005a34:	00048513          	mv	a0,s1
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	678080e7          	jalr	1656(ra) # 800060b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005a40:	00048513          	mv	a0,s1
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	744080e7          	jalr	1860(ra) # 80006188 <_Z11stringToIntPKc>
    80005a4c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	70050513          	addi	a0,a0,1792 # 8000a150 <CONSOLE_STATUS+0x140>
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	5d0080e7          	jalr	1488(ra) # 80006028 <_Z11printStringPKc>
    getString(input, 30);
    80005a60:	01e00593          	li	a1,30
    80005a64:	00048513          	mv	a0,s1
    80005a68:	00000097          	auipc	ra,0x0
    80005a6c:	648080e7          	jalr	1608(ra) # 800060b0 <_Z9getStringPci>
    n = stringToInt(input);
    80005a70:	00048513          	mv	a0,s1
    80005a74:	00000097          	auipc	ra,0x0
    80005a78:	714080e7          	jalr	1812(ra) # 80006188 <_Z11stringToIntPKc>
    80005a7c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	6f050513          	addi	a0,a0,1776 # 8000a170 <CONSOLE_STATUS+0x160>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	5a0080e7          	jalr	1440(ra) # 80006028 <_Z11printStringPKc>
    80005a90:	00000613          	li	a2,0
    80005a94:	00a00593          	li	a1,10
    80005a98:	00090513          	mv	a0,s2
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	73c080e7          	jalr	1852(ra) # 800061d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005aa4:	00004517          	auipc	a0,0x4
    80005aa8:	6e450513          	addi	a0,a0,1764 # 8000a188 <CONSOLE_STATUS+0x178>
    80005aac:	00000097          	auipc	ra,0x0
    80005ab0:	57c080e7          	jalr	1404(ra) # 80006028 <_Z11printStringPKc>
    80005ab4:	00000613          	li	a2,0
    80005ab8:	00a00593          	li	a1,10
    80005abc:	00048513          	mv	a0,s1
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	718080e7          	jalr	1816(ra) # 800061d8 <_Z8printIntiii>
    printString(".\n");
    80005ac8:	00004517          	auipc	a0,0x4
    80005acc:	6d850513          	addi	a0,a0,1752 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	558080e7          	jalr	1368(ra) # 80006028 <_Z11printStringPKc>
    if(threadNum > n) {
    80005ad8:	0324c463          	blt	s1,s2,80005b00 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005adc:	03205c63          	blez	s2,80005b14 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005ae0:	03800513          	li	a0,56
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	524080e7          	jalr	1316(ra) # 80002008 <_Znwm>
    80005aec:	00050a93          	mv	s5,a0
    80005af0:	00048593          	mv	a1,s1
    80005af4:	00001097          	auipc	ra,0x1
    80005af8:	804080e7          	jalr	-2044(ra) # 800062f8 <_ZN9BufferCPPC1Ei>
    80005afc:	0300006f          	j	80005b2c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b00:	00004517          	auipc	a0,0x4
    80005b04:	6a850513          	addi	a0,a0,1704 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	520080e7          	jalr	1312(ra) # 80006028 <_Z11printStringPKc>
        return;
    80005b10:	0140006f          	j	80005b24 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b14:	00004517          	auipc	a0,0x4
    80005b18:	6d450513          	addi	a0,a0,1748 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	50c080e7          	jalr	1292(ra) # 80006028 <_Z11printStringPKc>
        return;
    80005b24:	000b8113          	mv	sp,s7
    80005b28:	2380006f          	j	80005d60 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b2c:	01000513          	li	a0,16
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	4d8080e7          	jalr	1240(ra) # 80002008 <_Znwm>
    80005b38:	00050493          	mv	s1,a0
    80005b3c:	00000593          	li	a1,0
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	680080e7          	jalr	1664(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    80005b48:	00007797          	auipc	a5,0x7
    80005b4c:	3a97b823          	sd	s1,944(a5) # 8000cef8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005b50:	00391793          	slli	a5,s2,0x3
    80005b54:	00f78793          	addi	a5,a5,15
    80005b58:	ff07f793          	andi	a5,a5,-16
    80005b5c:	40f10133          	sub	sp,sp,a5
    80005b60:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005b64:	0019071b          	addiw	a4,s2,1
    80005b68:	00171793          	slli	a5,a4,0x1
    80005b6c:	00e787b3          	add	a5,a5,a4
    80005b70:	00379793          	slli	a5,a5,0x3
    80005b74:	00f78793          	addi	a5,a5,15
    80005b78:	ff07f793          	andi	a5,a5,-16
    80005b7c:	40f10133          	sub	sp,sp,a5
    80005b80:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005b84:	00191c13          	slli	s8,s2,0x1
    80005b88:	012c07b3          	add	a5,s8,s2
    80005b8c:	00379793          	slli	a5,a5,0x3
    80005b90:	00fa07b3          	add	a5,s4,a5
    80005b94:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005b98:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005b9c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005ba0:	02800513          	li	a0,40
    80005ba4:	ffffc097          	auipc	ra,0xffffc
    80005ba8:	464080e7          	jalr	1124(ra) # 80002008 <_Znwm>
    80005bac:	00050b13          	mv	s6,a0
    80005bb0:	012c0c33          	add	s8,s8,s2
    80005bb4:	003c1c13          	slli	s8,s8,0x3
    80005bb8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	54c080e7          	jalr	1356(ra) # 80002108 <_ZN6ThreadC1Ev>
    80005bc4:	00007797          	auipc	a5,0x7
    80005bc8:	1c478793          	addi	a5,a5,452 # 8000cd88 <_ZTV12ConsumerSync+0x10>
    80005bcc:	00fb3023          	sd	a5,0(s6)
    80005bd0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005bd4:	000b0513          	mv	a0,s6
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	560080e7          	jalr	1376(ra) # 80002138 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005be0:	00000493          	li	s1,0
    80005be4:	0380006f          	j	80005c1c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005be8:	00007797          	auipc	a5,0x7
    80005bec:	17878793          	addi	a5,a5,376 # 8000cd60 <_ZTV12ProducerSync+0x10>
    80005bf0:	00fcb023          	sd	a5,0(s9)
    80005bf4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005bf8:	00349793          	slli	a5,s1,0x3
    80005bfc:	00f987b3          	add	a5,s3,a5
    80005c00:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c04:	00349793          	slli	a5,s1,0x3
    80005c08:	00f987b3          	add	a5,s3,a5
    80005c0c:	0007b503          	ld	a0,0(a5)
    80005c10:	ffffc097          	auipc	ra,0xffffc
    80005c14:	528080e7          	jalr	1320(ra) # 80002138 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c18:	0014849b          	addiw	s1,s1,1
    80005c1c:	0b24d063          	bge	s1,s2,80005cbc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005c20:	00149793          	slli	a5,s1,0x1
    80005c24:	009787b3          	add	a5,a5,s1
    80005c28:	00379793          	slli	a5,a5,0x3
    80005c2c:	00fa07b3          	add	a5,s4,a5
    80005c30:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c34:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005c38:	00007717          	auipc	a4,0x7
    80005c3c:	2c073703          	ld	a4,704(a4) # 8000cef8 <_ZL10waitForAll>
    80005c40:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005c44:	02905863          	blez	s1,80005c74 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005c48:	02800513          	li	a0,40
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	3bc080e7          	jalr	956(ra) # 80002008 <_Znwm>
    80005c54:	00050c93          	mv	s9,a0
    80005c58:	00149c13          	slli	s8,s1,0x1
    80005c5c:	009c0c33          	add	s8,s8,s1
    80005c60:	003c1c13          	slli	s8,s8,0x3
    80005c64:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	4a0080e7          	jalr	1184(ra) # 80002108 <_ZN6ThreadC1Ev>
    80005c70:	f79ff06f          	j	80005be8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005c74:	02800513          	li	a0,40
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	390080e7          	jalr	912(ra) # 80002008 <_Znwm>
    80005c80:	00050c93          	mv	s9,a0
    80005c84:	00149c13          	slli	s8,s1,0x1
    80005c88:	009c0c33          	add	s8,s8,s1
    80005c8c:	003c1c13          	slli	s8,s8,0x3
    80005c90:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	474080e7          	jalr	1140(ra) # 80002108 <_ZN6ThreadC1Ev>
    80005c9c:	00007797          	auipc	a5,0x7
    80005ca0:	09c78793          	addi	a5,a5,156 # 8000cd38 <_ZTV16ProducerKeyboard+0x10>
    80005ca4:	00fcb023          	sd	a5,0(s9)
    80005ca8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005cac:	00349793          	slli	a5,s1,0x3
    80005cb0:	00f987b3          	add	a5,s3,a5
    80005cb4:	0197b023          	sd	s9,0(a5)
    80005cb8:	f4dff06f          	j	80005c04 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005cbc:	ffffc097          	auipc	ra,0xffffc
    80005cc0:	4b4080e7          	jalr	1204(ra) # 80002170 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cc4:	00000493          	li	s1,0
    80005cc8:	00994e63          	blt	s2,s1,80005ce4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ccc:	00007517          	auipc	a0,0x7
    80005cd0:	22c53503          	ld	a0,556(a0) # 8000cef8 <_ZL10waitForAll>
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	528080e7          	jalr	1320(ra) # 800021fc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cdc:	0014849b          	addiw	s1,s1,1
    80005ce0:	fe9ff06f          	j	80005cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005ce4:	00000493          	li	s1,0
    80005ce8:	0080006f          	j	80005cf0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005cec:	0014849b          	addiw	s1,s1,1
    80005cf0:	0324d263          	bge	s1,s2,80005d14 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005cf4:	00349793          	slli	a5,s1,0x3
    80005cf8:	00f987b3          	add	a5,s3,a5
    80005cfc:	0007b503          	ld	a0,0(a5)
    80005d00:	fe0506e3          	beqz	a0,80005cec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d04:	00053783          	ld	a5,0(a0)
    80005d08:	0087b783          	ld	a5,8(a5)
    80005d0c:	000780e7          	jalr	a5
    80005d10:	fddff06f          	j	80005cec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005d14:	000b0a63          	beqz	s6,80005d28 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005d18:	000b3783          	ld	a5,0(s6)
    80005d1c:	0087b783          	ld	a5,8(a5)
    80005d20:	000b0513          	mv	a0,s6
    80005d24:	000780e7          	jalr	a5
    delete waitForAll;
    80005d28:	00007517          	auipc	a0,0x7
    80005d2c:	1d053503          	ld	a0,464(a0) # 8000cef8 <_ZL10waitForAll>
    80005d30:	00050863          	beqz	a0,80005d40 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005d34:	00053783          	ld	a5,0(a0)
    80005d38:	0087b783          	ld	a5,8(a5)
    80005d3c:	000780e7          	jalr	a5
    delete buffer;
    80005d40:	000a8e63          	beqz	s5,80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005d44:	000a8513          	mv	a0,s5
    80005d48:	00001097          	auipc	ra,0x1
    80005d4c:	8a8080e7          	jalr	-1880(ra) # 800065f0 <_ZN9BufferCPPD1Ev>
    80005d50:	000a8513          	mv	a0,s5
    80005d54:	ffffc097          	auipc	ra,0xffffc
    80005d58:	2dc080e7          	jalr	732(ra) # 80002030 <_ZdlPv>
    80005d5c:	000b8113          	mv	sp,s7

}
    80005d60:	f8040113          	addi	sp,s0,-128
    80005d64:	07813083          	ld	ra,120(sp)
    80005d68:	07013403          	ld	s0,112(sp)
    80005d6c:	06813483          	ld	s1,104(sp)
    80005d70:	06013903          	ld	s2,96(sp)
    80005d74:	05813983          	ld	s3,88(sp)
    80005d78:	05013a03          	ld	s4,80(sp)
    80005d7c:	04813a83          	ld	s5,72(sp)
    80005d80:	04013b03          	ld	s6,64(sp)
    80005d84:	03813b83          	ld	s7,56(sp)
    80005d88:	03013c03          	ld	s8,48(sp)
    80005d8c:	02813c83          	ld	s9,40(sp)
    80005d90:	08010113          	addi	sp,sp,128
    80005d94:	00008067          	ret
    80005d98:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005d9c:	000a8513          	mv	a0,s5
    80005da0:	ffffc097          	auipc	ra,0xffffc
    80005da4:	290080e7          	jalr	656(ra) # 80002030 <_ZdlPv>
    80005da8:	00048513          	mv	a0,s1
    80005dac:	00008097          	auipc	ra,0x8
    80005db0:	22c080e7          	jalr	556(ra) # 8000dfd8 <_Unwind_Resume>
    80005db4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005db8:	00048513          	mv	a0,s1
    80005dbc:	ffffc097          	auipc	ra,0xffffc
    80005dc0:	274080e7          	jalr	628(ra) # 80002030 <_ZdlPv>
    80005dc4:	00090513          	mv	a0,s2
    80005dc8:	00008097          	auipc	ra,0x8
    80005dcc:	210080e7          	jalr	528(ra) # 8000dfd8 <_Unwind_Resume>
    80005dd0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005dd4:	000b0513          	mv	a0,s6
    80005dd8:	ffffc097          	auipc	ra,0xffffc
    80005ddc:	258080e7          	jalr	600(ra) # 80002030 <_ZdlPv>
    80005de0:	00048513          	mv	a0,s1
    80005de4:	00008097          	auipc	ra,0x8
    80005de8:	1f4080e7          	jalr	500(ra) # 8000dfd8 <_Unwind_Resume>
    80005dec:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005df0:	000c8513          	mv	a0,s9
    80005df4:	ffffc097          	auipc	ra,0xffffc
    80005df8:	23c080e7          	jalr	572(ra) # 80002030 <_ZdlPv>
    80005dfc:	00048513          	mv	a0,s1
    80005e00:	00008097          	auipc	ra,0x8
    80005e04:	1d8080e7          	jalr	472(ra) # 8000dfd8 <_Unwind_Resume>
    80005e08:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e0c:	000c8513          	mv	a0,s9
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	220080e7          	jalr	544(ra) # 80002030 <_ZdlPv>
    80005e18:	00048513          	mv	a0,s1
    80005e1c:	00008097          	auipc	ra,0x8
    80005e20:	1bc080e7          	jalr	444(ra) # 8000dfd8 <_Unwind_Resume>

0000000080005e24 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e24:	ff010113          	addi	sp,sp,-16
    80005e28:	00113423          	sd	ra,8(sp)
    80005e2c:	00813023          	sd	s0,0(sp)
    80005e30:	01010413          	addi	s0,sp,16
    80005e34:	00007797          	auipc	a5,0x7
    80005e38:	f5478793          	addi	a5,a5,-172 # 8000cd88 <_ZTV12ConsumerSync+0x10>
    80005e3c:	00f53023          	sd	a5,0(a0)
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	0d8080e7          	jalr	216(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005e48:	00813083          	ld	ra,8(sp)
    80005e4c:	00013403          	ld	s0,0(sp)
    80005e50:	01010113          	addi	sp,sp,16
    80005e54:	00008067          	ret

0000000080005e58 <_ZN12ConsumerSyncD0Ev>:
    80005e58:	fe010113          	addi	sp,sp,-32
    80005e5c:	00113c23          	sd	ra,24(sp)
    80005e60:	00813823          	sd	s0,16(sp)
    80005e64:	00913423          	sd	s1,8(sp)
    80005e68:	02010413          	addi	s0,sp,32
    80005e6c:	00050493          	mv	s1,a0
    80005e70:	00007797          	auipc	a5,0x7
    80005e74:	f1878793          	addi	a5,a5,-232 # 8000cd88 <_ZTV12ConsumerSync+0x10>
    80005e78:	00f53023          	sd	a5,0(a0)
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	09c080e7          	jalr	156(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005e84:	00048513          	mv	a0,s1
    80005e88:	ffffc097          	auipc	ra,0xffffc
    80005e8c:	1a8080e7          	jalr	424(ra) # 80002030 <_ZdlPv>
    80005e90:	01813083          	ld	ra,24(sp)
    80005e94:	01013403          	ld	s0,16(sp)
    80005e98:	00813483          	ld	s1,8(sp)
    80005e9c:	02010113          	addi	sp,sp,32
    80005ea0:	00008067          	ret

0000000080005ea4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005ea4:	ff010113          	addi	sp,sp,-16
    80005ea8:	00113423          	sd	ra,8(sp)
    80005eac:	00813023          	sd	s0,0(sp)
    80005eb0:	01010413          	addi	s0,sp,16
    80005eb4:	00007797          	auipc	a5,0x7
    80005eb8:	eac78793          	addi	a5,a5,-340 # 8000cd60 <_ZTV12ProducerSync+0x10>
    80005ebc:	00f53023          	sd	a5,0(a0)
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	058080e7          	jalr	88(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005ec8:	00813083          	ld	ra,8(sp)
    80005ecc:	00013403          	ld	s0,0(sp)
    80005ed0:	01010113          	addi	sp,sp,16
    80005ed4:	00008067          	ret

0000000080005ed8 <_ZN12ProducerSyncD0Ev>:
    80005ed8:	fe010113          	addi	sp,sp,-32
    80005edc:	00113c23          	sd	ra,24(sp)
    80005ee0:	00813823          	sd	s0,16(sp)
    80005ee4:	00913423          	sd	s1,8(sp)
    80005ee8:	02010413          	addi	s0,sp,32
    80005eec:	00050493          	mv	s1,a0
    80005ef0:	00007797          	auipc	a5,0x7
    80005ef4:	e7078793          	addi	a5,a5,-400 # 8000cd60 <_ZTV12ProducerSync+0x10>
    80005ef8:	00f53023          	sd	a5,0(a0)
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	01c080e7          	jalr	28(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005f04:	00048513          	mv	a0,s1
    80005f08:	ffffc097          	auipc	ra,0xffffc
    80005f0c:	128080e7          	jalr	296(ra) # 80002030 <_ZdlPv>
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00813483          	ld	s1,8(sp)
    80005f1c:	02010113          	addi	sp,sp,32
    80005f20:	00008067          	ret

0000000080005f24 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f24:	ff010113          	addi	sp,sp,-16
    80005f28:	00113423          	sd	ra,8(sp)
    80005f2c:	00813023          	sd	s0,0(sp)
    80005f30:	01010413          	addi	s0,sp,16
    80005f34:	00007797          	auipc	a5,0x7
    80005f38:	e0478793          	addi	a5,a5,-508 # 8000cd38 <_ZTV16ProducerKeyboard+0x10>
    80005f3c:	00f53023          	sd	a5,0(a0)
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	fd8080e7          	jalr	-40(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005f48:	00813083          	ld	ra,8(sp)
    80005f4c:	00013403          	ld	s0,0(sp)
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00008067          	ret

0000000080005f58 <_ZN16ProducerKeyboardD0Ev>:
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	02010413          	addi	s0,sp,32
    80005f6c:	00050493          	mv	s1,a0
    80005f70:	00007797          	auipc	a5,0x7
    80005f74:	dc878793          	addi	a5,a5,-568 # 8000cd38 <_ZTV16ProducerKeyboard+0x10>
    80005f78:	00f53023          	sd	a5,0(a0)
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	f9c080e7          	jalr	-100(ra) # 80001f18 <_ZN6ThreadD1Ev>
    80005f84:	00048513          	mv	a0,s1
    80005f88:	ffffc097          	auipc	ra,0xffffc
    80005f8c:	0a8080e7          	jalr	168(ra) # 80002030 <_ZdlPv>
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005fa4:	ff010113          	addi	sp,sp,-16
    80005fa8:	00113423          	sd	ra,8(sp)
    80005fac:	00813023          	sd	s0,0(sp)
    80005fb0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005fb4:	02053583          	ld	a1,32(a0)
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	7e4080e7          	jalr	2020(ra) # 8000579c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005fc0:	00813083          	ld	ra,8(sp)
    80005fc4:	00013403          	ld	s0,0(sp)
    80005fc8:	01010113          	addi	sp,sp,16
    80005fcc:	00008067          	ret

0000000080005fd0 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005fd0:	ff010113          	addi	sp,sp,-16
    80005fd4:	00113423          	sd	ra,8(sp)
    80005fd8:	00813023          	sd	s0,0(sp)
    80005fdc:	01010413          	addi	s0,sp,16
        producer(td);
    80005fe0:	02053583          	ld	a1,32(a0)
    80005fe4:	00000097          	auipc	ra,0x0
    80005fe8:	878080e7          	jalr	-1928(ra) # 8000585c <_ZN12ProducerSync8producerEPv>
    }
    80005fec:	00813083          	ld	ra,8(sp)
    80005ff0:	00013403          	ld	s0,0(sp)
    80005ff4:	01010113          	addi	sp,sp,16
    80005ff8:	00008067          	ret

0000000080005ffc <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005ffc:	ff010113          	addi	sp,sp,-16
    80006000:	00113423          	sd	ra,8(sp)
    80006004:	00813023          	sd	s0,0(sp)
    80006008:	01010413          	addi	s0,sp,16
        consumer(td);
    8000600c:	02053583          	ld	a1,32(a0)
    80006010:	00000097          	auipc	ra,0x0
    80006014:	8e0080e7          	jalr	-1824(ra) # 800058f0 <_ZN12ConsumerSync8consumerEPv>
    }
    80006018:	00813083          	ld	ra,8(sp)
    8000601c:	00013403          	ld	s0,0(sp)
    80006020:	01010113          	addi	sp,sp,16
    80006024:	00008067          	ret

0000000080006028 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006028:	fe010113          	addi	sp,sp,-32
    8000602c:	00113c23          	sd	ra,24(sp)
    80006030:	00813823          	sd	s0,16(sp)
    80006034:	00913423          	sd	s1,8(sp)
    80006038:	02010413          	addi	s0,sp,32
    8000603c:	00050493          	mv	s1,a0
    LOCK();
    80006040:	00100613          	li	a2,1
    80006044:	00000593          	li	a1,0
    80006048:	00007517          	auipc	a0,0x7
    8000604c:	eb850513          	addi	a0,a0,-328 # 8000cf00 <lockPrint>
    80006050:	ffffb097          	auipc	ra,0xffffb
    80006054:	1cc080e7          	jalr	460(ra) # 8000121c <copy_and_swap>
    80006058:	00050863          	beqz	a0,80006068 <_Z11printStringPKc+0x40>
    8000605c:	ffffb097          	auipc	ra,0xffffb
    80006060:	370080e7          	jalr	880(ra) # 800013cc <_Z15thread_dispatchv>
    80006064:	fddff06f          	j	80006040 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006068:	0004c503          	lbu	a0,0(s1)
    8000606c:	00050a63          	beqz	a0,80006080 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	5fc080e7          	jalr	1532(ra) # 8000166c <_Z4putcc>
        string++;
    80006078:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000607c:	fedff06f          	j	80006068 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006080:	00000613          	li	a2,0
    80006084:	00100593          	li	a1,1
    80006088:	00007517          	auipc	a0,0x7
    8000608c:	e7850513          	addi	a0,a0,-392 # 8000cf00 <lockPrint>
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	18c080e7          	jalr	396(ra) # 8000121c <copy_and_swap>
    80006098:	fe0514e3          	bnez	a0,80006080 <_Z11printStringPKc+0x58>
}
    8000609c:	01813083          	ld	ra,24(sp)
    800060a0:	01013403          	ld	s0,16(sp)
    800060a4:	00813483          	ld	s1,8(sp)
    800060a8:	02010113          	addi	sp,sp,32
    800060ac:	00008067          	ret

00000000800060b0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800060b0:	fd010113          	addi	sp,sp,-48
    800060b4:	02113423          	sd	ra,40(sp)
    800060b8:	02813023          	sd	s0,32(sp)
    800060bc:	00913c23          	sd	s1,24(sp)
    800060c0:	01213823          	sd	s2,16(sp)
    800060c4:	01313423          	sd	s3,8(sp)
    800060c8:	01413023          	sd	s4,0(sp)
    800060cc:	03010413          	addi	s0,sp,48
    800060d0:	00050993          	mv	s3,a0
    800060d4:	00058a13          	mv	s4,a1
    LOCK();
    800060d8:	00100613          	li	a2,1
    800060dc:	00000593          	li	a1,0
    800060e0:	00007517          	auipc	a0,0x7
    800060e4:	e2050513          	addi	a0,a0,-480 # 8000cf00 <lockPrint>
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	134080e7          	jalr	308(ra) # 8000121c <copy_and_swap>
    800060f0:	00050863          	beqz	a0,80006100 <_Z9getStringPci+0x50>
    800060f4:	ffffb097          	auipc	ra,0xffffb
    800060f8:	2d8080e7          	jalr	728(ra) # 800013cc <_Z15thread_dispatchv>
    800060fc:	fddff06f          	j	800060d8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006100:	00000913          	li	s2,0
    80006104:	00090493          	mv	s1,s2
    80006108:	0019091b          	addiw	s2,s2,1
    8000610c:	03495a63          	bge	s2,s4,80006140 <_Z9getStringPci+0x90>
        cc = getc();
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	510080e7          	jalr	1296(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80006118:	02050463          	beqz	a0,80006140 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000611c:	009984b3          	add	s1,s3,s1
    80006120:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006124:	00a00793          	li	a5,10
    80006128:	00f50a63          	beq	a0,a5,8000613c <_Z9getStringPci+0x8c>
    8000612c:	00d00793          	li	a5,13
    80006130:	fcf51ae3          	bne	a0,a5,80006104 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006134:	00090493          	mv	s1,s2
    80006138:	0080006f          	j	80006140 <_Z9getStringPci+0x90>
    8000613c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006140:	009984b3          	add	s1,s3,s1
    80006144:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006148:	00000613          	li	a2,0
    8000614c:	00100593          	li	a1,1
    80006150:	00007517          	auipc	a0,0x7
    80006154:	db050513          	addi	a0,a0,-592 # 8000cf00 <lockPrint>
    80006158:	ffffb097          	auipc	ra,0xffffb
    8000615c:	0c4080e7          	jalr	196(ra) # 8000121c <copy_and_swap>
    80006160:	fe0514e3          	bnez	a0,80006148 <_Z9getStringPci+0x98>
    return buf;
}
    80006164:	00098513          	mv	a0,s3
    80006168:	02813083          	ld	ra,40(sp)
    8000616c:	02013403          	ld	s0,32(sp)
    80006170:	01813483          	ld	s1,24(sp)
    80006174:	01013903          	ld	s2,16(sp)
    80006178:	00813983          	ld	s3,8(sp)
    8000617c:	00013a03          	ld	s4,0(sp)
    80006180:	03010113          	addi	sp,sp,48
    80006184:	00008067          	ret

0000000080006188 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006188:	ff010113          	addi	sp,sp,-16
    8000618c:	00813423          	sd	s0,8(sp)
    80006190:	01010413          	addi	s0,sp,16
    80006194:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006198:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000619c:	0006c603          	lbu	a2,0(a3)
    800061a0:	fd06071b          	addiw	a4,a2,-48
    800061a4:	0ff77713          	andi	a4,a4,255
    800061a8:	00900793          	li	a5,9
    800061ac:	02e7e063          	bltu	a5,a4,800061cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800061b0:	0025179b          	slliw	a5,a0,0x2
    800061b4:	00a787bb          	addw	a5,a5,a0
    800061b8:	0017979b          	slliw	a5,a5,0x1
    800061bc:	00168693          	addi	a3,a3,1
    800061c0:	00c787bb          	addw	a5,a5,a2
    800061c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800061c8:	fd5ff06f          	j	8000619c <_Z11stringToIntPKc+0x14>
    return n;
}
    800061cc:	00813403          	ld	s0,8(sp)
    800061d0:	01010113          	addi	sp,sp,16
    800061d4:	00008067          	ret

00000000800061d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800061d8:	fc010113          	addi	sp,sp,-64
    800061dc:	02113c23          	sd	ra,56(sp)
    800061e0:	02813823          	sd	s0,48(sp)
    800061e4:	02913423          	sd	s1,40(sp)
    800061e8:	03213023          	sd	s2,32(sp)
    800061ec:	01313c23          	sd	s3,24(sp)
    800061f0:	04010413          	addi	s0,sp,64
    800061f4:	00050493          	mv	s1,a0
    800061f8:	00058913          	mv	s2,a1
    800061fc:	00060993          	mv	s3,a2
    LOCK();
    80006200:	00100613          	li	a2,1
    80006204:	00000593          	li	a1,0
    80006208:	00007517          	auipc	a0,0x7
    8000620c:	cf850513          	addi	a0,a0,-776 # 8000cf00 <lockPrint>
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	00c080e7          	jalr	12(ra) # 8000121c <copy_and_swap>
    80006218:	00050863          	beqz	a0,80006228 <_Z8printIntiii+0x50>
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	1b0080e7          	jalr	432(ra) # 800013cc <_Z15thread_dispatchv>
    80006224:	fddff06f          	j	80006200 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006228:	00098463          	beqz	s3,80006230 <_Z8printIntiii+0x58>
    8000622c:	0804c463          	bltz	s1,800062b4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006230:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006234:	00000593          	li	a1,0
    }

    i = 0;
    80006238:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000623c:	0009079b          	sext.w	a5,s2
    80006240:	0325773b          	remuw	a4,a0,s2
    80006244:	00048613          	mv	a2,s1
    80006248:	0014849b          	addiw	s1,s1,1
    8000624c:	02071693          	slli	a3,a4,0x20
    80006250:	0206d693          	srli	a3,a3,0x20
    80006254:	00007717          	auipc	a4,0x7
    80006258:	b4c70713          	addi	a4,a4,-1204 # 8000cda0 <digits>
    8000625c:	00d70733          	add	a4,a4,a3
    80006260:	00074683          	lbu	a3,0(a4)
    80006264:	fd040713          	addi	a4,s0,-48
    80006268:	00c70733          	add	a4,a4,a2
    8000626c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006270:	0005071b          	sext.w	a4,a0
    80006274:	0325553b          	divuw	a0,a0,s2
    80006278:	fcf772e3          	bgeu	a4,a5,8000623c <_Z8printIntiii+0x64>
    if(neg)
    8000627c:	00058c63          	beqz	a1,80006294 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006280:	fd040793          	addi	a5,s0,-48
    80006284:	009784b3          	add	s1,a5,s1
    80006288:	02d00793          	li	a5,45
    8000628c:	fef48823          	sb	a5,-16(s1)
    80006290:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006294:	fff4849b          	addiw	s1,s1,-1
    80006298:	0204c463          	bltz	s1,800062c0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000629c:	fd040793          	addi	a5,s0,-48
    800062a0:	009787b3          	add	a5,a5,s1
    800062a4:	ff07c503          	lbu	a0,-16(a5)
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	3c4080e7          	jalr	964(ra) # 8000166c <_Z4putcc>
    800062b0:	fe5ff06f          	j	80006294 <_Z8printIntiii+0xbc>
        x = -xx;
    800062b4:	4090053b          	negw	a0,s1
        neg = 1;
    800062b8:	00100593          	li	a1,1
        x = -xx;
    800062bc:	f7dff06f          	j	80006238 <_Z8printIntiii+0x60>

    UNLOCK();
    800062c0:	00000613          	li	a2,0
    800062c4:	00100593          	li	a1,1
    800062c8:	00007517          	auipc	a0,0x7
    800062cc:	c3850513          	addi	a0,a0,-968 # 8000cf00 <lockPrint>
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	f4c080e7          	jalr	-180(ra) # 8000121c <copy_and_swap>
    800062d8:	fe0514e3          	bnez	a0,800062c0 <_Z8printIntiii+0xe8>
    800062dc:	03813083          	ld	ra,56(sp)
    800062e0:	03013403          	ld	s0,48(sp)
    800062e4:	02813483          	ld	s1,40(sp)
    800062e8:	02013903          	ld	s2,32(sp)
    800062ec:	01813983          	ld	s3,24(sp)
    800062f0:	04010113          	addi	sp,sp,64
    800062f4:	00008067          	ret

00000000800062f8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062f8:	fd010113          	addi	sp,sp,-48
    800062fc:	02113423          	sd	ra,40(sp)
    80006300:	02813023          	sd	s0,32(sp)
    80006304:	00913c23          	sd	s1,24(sp)
    80006308:	01213823          	sd	s2,16(sp)
    8000630c:	01313423          	sd	s3,8(sp)
    80006310:	03010413          	addi	s0,sp,48
    80006314:	00050493          	mv	s1,a0
    80006318:	00058913          	mv	s2,a1
    8000631c:	0015879b          	addiw	a5,a1,1
    80006320:	0007851b          	sext.w	a0,a5
    80006324:	00f4a023          	sw	a5,0(s1)
    80006328:	0004a823          	sw	zero,16(s1)
    8000632c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006330:	00251513          	slli	a0,a0,0x2
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	f24080e7          	jalr	-220(ra) # 80001258 <_Z9mem_allocm>
    8000633c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006340:	01000513          	li	a0,16
    80006344:	ffffc097          	auipc	ra,0xffffc
    80006348:	cc4080e7          	jalr	-828(ra) # 80002008 <_Znwm>
    8000634c:	00050993          	mv	s3,a0
    80006350:	00000593          	li	a1,0
    80006354:	ffffc097          	auipc	ra,0xffffc
    80006358:	e6c080e7          	jalr	-404(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    8000635c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006360:	01000513          	li	a0,16
    80006364:	ffffc097          	auipc	ra,0xffffc
    80006368:	ca4080e7          	jalr	-860(ra) # 80002008 <_Znwm>
    8000636c:	00050993          	mv	s3,a0
    80006370:	00090593          	mv	a1,s2
    80006374:	ffffc097          	auipc	ra,0xffffc
    80006378:	e4c080e7          	jalr	-436(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    8000637c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006380:	01000513          	li	a0,16
    80006384:	ffffc097          	auipc	ra,0xffffc
    80006388:	c84080e7          	jalr	-892(ra) # 80002008 <_Znwm>
    8000638c:	00050913          	mv	s2,a0
    80006390:	00100593          	li	a1,1
    80006394:	ffffc097          	auipc	ra,0xffffc
    80006398:	e2c080e7          	jalr	-468(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    8000639c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800063a0:	01000513          	li	a0,16
    800063a4:	ffffc097          	auipc	ra,0xffffc
    800063a8:	c64080e7          	jalr	-924(ra) # 80002008 <_Znwm>
    800063ac:	00050913          	mv	s2,a0
    800063b0:	00100593          	li	a1,1
    800063b4:	ffffc097          	auipc	ra,0xffffc
    800063b8:	e0c080e7          	jalr	-500(ra) # 800021c0 <_ZN9SemaphoreC1Ej>
    800063bc:	0324b823          	sd	s2,48(s1)
}
    800063c0:	02813083          	ld	ra,40(sp)
    800063c4:	02013403          	ld	s0,32(sp)
    800063c8:	01813483          	ld	s1,24(sp)
    800063cc:	01013903          	ld	s2,16(sp)
    800063d0:	00813983          	ld	s3,8(sp)
    800063d4:	03010113          	addi	sp,sp,48
    800063d8:	00008067          	ret
    800063dc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800063e0:	00098513          	mv	a0,s3
    800063e4:	ffffc097          	auipc	ra,0xffffc
    800063e8:	c4c080e7          	jalr	-948(ra) # 80002030 <_ZdlPv>
    800063ec:	00048513          	mv	a0,s1
    800063f0:	00008097          	auipc	ra,0x8
    800063f4:	be8080e7          	jalr	-1048(ra) # 8000dfd8 <_Unwind_Resume>
    800063f8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800063fc:	00098513          	mv	a0,s3
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	c30080e7          	jalr	-976(ra) # 80002030 <_ZdlPv>
    80006408:	00048513          	mv	a0,s1
    8000640c:	00008097          	auipc	ra,0x8
    80006410:	bcc080e7          	jalr	-1076(ra) # 8000dfd8 <_Unwind_Resume>
    80006414:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006418:	00090513          	mv	a0,s2
    8000641c:	ffffc097          	auipc	ra,0xffffc
    80006420:	c14080e7          	jalr	-1004(ra) # 80002030 <_ZdlPv>
    80006424:	00048513          	mv	a0,s1
    80006428:	00008097          	auipc	ra,0x8
    8000642c:	bb0080e7          	jalr	-1104(ra) # 8000dfd8 <_Unwind_Resume>
    80006430:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006434:	00090513          	mv	a0,s2
    80006438:	ffffc097          	auipc	ra,0xffffc
    8000643c:	bf8080e7          	jalr	-1032(ra) # 80002030 <_ZdlPv>
    80006440:	00048513          	mv	a0,s1
    80006444:	00008097          	auipc	ra,0x8
    80006448:	b94080e7          	jalr	-1132(ra) # 8000dfd8 <_Unwind_Resume>

000000008000644c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000644c:	fe010113          	addi	sp,sp,-32
    80006450:	00113c23          	sd	ra,24(sp)
    80006454:	00813823          	sd	s0,16(sp)
    80006458:	00913423          	sd	s1,8(sp)
    8000645c:	01213023          	sd	s2,0(sp)
    80006460:	02010413          	addi	s0,sp,32
    80006464:	00050493          	mv	s1,a0
    80006468:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000646c:	01853503          	ld	a0,24(a0)
    80006470:	ffffc097          	auipc	ra,0xffffc
    80006474:	d8c080e7          	jalr	-628(ra) # 800021fc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006478:	0304b503          	ld	a0,48(s1)
    8000647c:	ffffc097          	auipc	ra,0xffffc
    80006480:	d80080e7          	jalr	-640(ra) # 800021fc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006484:	0084b783          	ld	a5,8(s1)
    80006488:	0144a703          	lw	a4,20(s1)
    8000648c:	00271713          	slli	a4,a4,0x2
    80006490:	00e787b3          	add	a5,a5,a4
    80006494:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006498:	0144a783          	lw	a5,20(s1)
    8000649c:	0017879b          	addiw	a5,a5,1
    800064a0:	0004a703          	lw	a4,0(s1)
    800064a4:	02e7e7bb          	remw	a5,a5,a4
    800064a8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800064ac:	0304b503          	ld	a0,48(s1)
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	d84080e7          	jalr	-636(ra) # 80002234 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800064b8:	0204b503          	ld	a0,32(s1)
    800064bc:	ffffc097          	auipc	ra,0xffffc
    800064c0:	d78080e7          	jalr	-648(ra) # 80002234 <_ZN9Semaphore6signalEv>

}
    800064c4:	01813083          	ld	ra,24(sp)
    800064c8:	01013403          	ld	s0,16(sp)
    800064cc:	00813483          	ld	s1,8(sp)
    800064d0:	00013903          	ld	s2,0(sp)
    800064d4:	02010113          	addi	sp,sp,32
    800064d8:	00008067          	ret

00000000800064dc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800064dc:	fe010113          	addi	sp,sp,-32
    800064e0:	00113c23          	sd	ra,24(sp)
    800064e4:	00813823          	sd	s0,16(sp)
    800064e8:	00913423          	sd	s1,8(sp)
    800064ec:	01213023          	sd	s2,0(sp)
    800064f0:	02010413          	addi	s0,sp,32
    800064f4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800064f8:	02053503          	ld	a0,32(a0)
    800064fc:	ffffc097          	auipc	ra,0xffffc
    80006500:	d00080e7          	jalr	-768(ra) # 800021fc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006504:	0284b503          	ld	a0,40(s1)
    80006508:	ffffc097          	auipc	ra,0xffffc
    8000650c:	cf4080e7          	jalr	-780(ra) # 800021fc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006510:	0084b703          	ld	a4,8(s1)
    80006514:	0104a783          	lw	a5,16(s1)
    80006518:	00279693          	slli	a3,a5,0x2
    8000651c:	00d70733          	add	a4,a4,a3
    80006520:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006524:	0017879b          	addiw	a5,a5,1
    80006528:	0004a703          	lw	a4,0(s1)
    8000652c:	02e7e7bb          	remw	a5,a5,a4
    80006530:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006534:	0284b503          	ld	a0,40(s1)
    80006538:	ffffc097          	auipc	ra,0xffffc
    8000653c:	cfc080e7          	jalr	-772(ra) # 80002234 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006540:	0184b503          	ld	a0,24(s1)
    80006544:	ffffc097          	auipc	ra,0xffffc
    80006548:	cf0080e7          	jalr	-784(ra) # 80002234 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000654c:	00090513          	mv	a0,s2
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	00013903          	ld	s2,0(sp)
    80006560:	02010113          	addi	sp,sp,32
    80006564:	00008067          	ret

0000000080006568 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00113c23          	sd	ra,24(sp)
    80006570:	00813823          	sd	s0,16(sp)
    80006574:	00913423          	sd	s1,8(sp)
    80006578:	01213023          	sd	s2,0(sp)
    8000657c:	02010413          	addi	s0,sp,32
    80006580:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006584:	02853503          	ld	a0,40(a0)
    80006588:	ffffc097          	auipc	ra,0xffffc
    8000658c:	c74080e7          	jalr	-908(ra) # 800021fc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006590:	0304b503          	ld	a0,48(s1)
    80006594:	ffffc097          	auipc	ra,0xffffc
    80006598:	c68080e7          	jalr	-920(ra) # 800021fc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000659c:	0144a783          	lw	a5,20(s1)
    800065a0:	0104a903          	lw	s2,16(s1)
    800065a4:	0327ce63          	blt	a5,s2,800065e0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800065a8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800065ac:	0304b503          	ld	a0,48(s1)
    800065b0:	ffffc097          	auipc	ra,0xffffc
    800065b4:	c84080e7          	jalr	-892(ra) # 80002234 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800065b8:	0284b503          	ld	a0,40(s1)
    800065bc:	ffffc097          	auipc	ra,0xffffc
    800065c0:	c78080e7          	jalr	-904(ra) # 80002234 <_ZN9Semaphore6signalEv>

    return ret;
}
    800065c4:	00090513          	mv	a0,s2
    800065c8:	01813083          	ld	ra,24(sp)
    800065cc:	01013403          	ld	s0,16(sp)
    800065d0:	00813483          	ld	s1,8(sp)
    800065d4:	00013903          	ld	s2,0(sp)
    800065d8:	02010113          	addi	sp,sp,32
    800065dc:	00008067          	ret
        ret = cap - head + tail;
    800065e0:	0004a703          	lw	a4,0(s1)
    800065e4:	4127093b          	subw	s2,a4,s2
    800065e8:	00f9093b          	addw	s2,s2,a5
    800065ec:	fc1ff06f          	j	800065ac <_ZN9BufferCPP6getCntEv+0x44>

00000000800065f0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800065f0:	fe010113          	addi	sp,sp,-32
    800065f4:	00113c23          	sd	ra,24(sp)
    800065f8:	00813823          	sd	s0,16(sp)
    800065fc:	00913423          	sd	s1,8(sp)
    80006600:	02010413          	addi	s0,sp,32
    80006604:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006608:	00a00513          	li	a0,10
    8000660c:	ffffc097          	auipc	ra,0xffffc
    80006610:	d50080e7          	jalr	-688(ra) # 8000235c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006614:	00004517          	auipc	a0,0x4
    80006618:	cfc50513          	addi	a0,a0,-772 # 8000a310 <CONSOLE_STATUS+0x300>
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	a0c080e7          	jalr	-1524(ra) # 80006028 <_Z11printStringPKc>
    while (getCnt()) {
    80006624:	00048513          	mv	a0,s1
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	f40080e7          	jalr	-192(ra) # 80006568 <_ZN9BufferCPP6getCntEv>
    80006630:	02050c63          	beqz	a0,80006668 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006634:	0084b783          	ld	a5,8(s1)
    80006638:	0104a703          	lw	a4,16(s1)
    8000663c:	00271713          	slli	a4,a4,0x2
    80006640:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006644:	0007c503          	lbu	a0,0(a5)
    80006648:	ffffc097          	auipc	ra,0xffffc
    8000664c:	d14080e7          	jalr	-748(ra) # 8000235c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006650:	0104a783          	lw	a5,16(s1)
    80006654:	0017879b          	addiw	a5,a5,1
    80006658:	0004a703          	lw	a4,0(s1)
    8000665c:	02e7e7bb          	remw	a5,a5,a4
    80006660:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006664:	fc1ff06f          	j	80006624 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006668:	02100513          	li	a0,33
    8000666c:	ffffc097          	auipc	ra,0xffffc
    80006670:	cf0080e7          	jalr	-784(ra) # 8000235c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006674:	00a00513          	li	a0,10
    80006678:	ffffc097          	auipc	ra,0xffffc
    8000667c:	ce4080e7          	jalr	-796(ra) # 8000235c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006680:	0084b503          	ld	a0,8(s1)
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	c28080e7          	jalr	-984(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    8000668c:	0204b503          	ld	a0,32(s1)
    80006690:	00050863          	beqz	a0,800066a0 <_ZN9BufferCPPD1Ev+0xb0>
    80006694:	00053783          	ld	a5,0(a0)
    80006698:	0087b783          	ld	a5,8(a5)
    8000669c:	000780e7          	jalr	a5
    delete spaceAvailable;
    800066a0:	0184b503          	ld	a0,24(s1)
    800066a4:	00050863          	beqz	a0,800066b4 <_ZN9BufferCPPD1Ev+0xc4>
    800066a8:	00053783          	ld	a5,0(a0)
    800066ac:	0087b783          	ld	a5,8(a5)
    800066b0:	000780e7          	jalr	a5
    delete mutexTail;
    800066b4:	0304b503          	ld	a0,48(s1)
    800066b8:	00050863          	beqz	a0,800066c8 <_ZN9BufferCPPD1Ev+0xd8>
    800066bc:	00053783          	ld	a5,0(a0)
    800066c0:	0087b783          	ld	a5,8(a5)
    800066c4:	000780e7          	jalr	a5
    delete mutexHead;
    800066c8:	0284b503          	ld	a0,40(s1)
    800066cc:	00050863          	beqz	a0,800066dc <_ZN9BufferCPPD1Ev+0xec>
    800066d0:	00053783          	ld	a5,0(a0)
    800066d4:	0087b783          	ld	a5,8(a5)
    800066d8:	000780e7          	jalr	a5
}
    800066dc:	01813083          	ld	ra,24(sp)
    800066e0:	01013403          	ld	s0,16(sp)
    800066e4:	00813483          	ld	s1,8(sp)
    800066e8:	02010113          	addi	sp,sp,32
    800066ec:	00008067          	ret

00000000800066f0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00113c23          	sd	ra,24(sp)
    800066f8:	00813823          	sd	s0,16(sp)
    800066fc:	00913423          	sd	s1,8(sp)
    80006700:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006704:	00004517          	auipc	a0,0x4
    80006708:	c3450513          	addi	a0,a0,-972 # 8000a338 <CONSOLE_STATUS+0x328>
    8000670c:	00000097          	auipc	ra,0x0
    80006710:	91c080e7          	jalr	-1764(ra) # 80006028 <_Z11printStringPKc>
    int test = getc() - '0';
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	f0c080e7          	jalr	-244(ra) # 80001620 <_Z4getcv>
    8000671c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006720:	ffffb097          	auipc	ra,0xffffb
    80006724:	f00080e7          	jalr	-256(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006728:	00700793          	li	a5,7
    8000672c:	1097e263          	bltu	a5,s1,80006830 <_Z8userMainv+0x140>
    80006730:	00249493          	slli	s1,s1,0x2
    80006734:	00004717          	auipc	a4,0x4
    80006738:	e5c70713          	addi	a4,a4,-420 # 8000a590 <CONSOLE_STATUS+0x580>
    8000673c:	00e484b3          	add	s1,s1,a4
    80006740:	0004a783          	lw	a5,0(s1)
    80006744:	00e787b3          	add	a5,a5,a4
    80006748:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000674c:	fffff097          	auipc	ra,0xfffff
    80006750:	f54080e7          	jalr	-172(ra) # 800056a0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006754:	00004517          	auipc	a0,0x4
    80006758:	c0450513          	addi	a0,a0,-1020 # 8000a358 <CONSOLE_STATUS+0x348>
    8000675c:	00000097          	auipc	ra,0x0
    80006760:	8cc080e7          	jalr	-1844(ra) # 80006028 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006764:	01813083          	ld	ra,24(sp)
    80006768:	01013403          	ld	s0,16(sp)
    8000676c:	00813483          	ld	s1,8(sp)
    80006770:	02010113          	addi	sp,sp,32
    80006774:	00008067          	ret
            Threads_CPP_API_test();
    80006778:	ffffe097          	auipc	ra,0xffffe
    8000677c:	ae8080e7          	jalr	-1304(ra) # 80004260 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006780:	00004517          	auipc	a0,0x4
    80006784:	c1850513          	addi	a0,a0,-1000 # 8000a398 <CONSOLE_STATUS+0x388>
    80006788:	00000097          	auipc	ra,0x0
    8000678c:	8a0080e7          	jalr	-1888(ra) # 80006028 <_Z11printStringPKc>
            break;
    80006790:	fd5ff06f          	j	80006764 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006794:	ffffd097          	auipc	ra,0xffffd
    80006798:	320080e7          	jalr	800(ra) # 80003ab4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000679c:	00004517          	auipc	a0,0x4
    800067a0:	c3c50513          	addi	a0,a0,-964 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	884080e7          	jalr	-1916(ra) # 80006028 <_Z11printStringPKc>
            break;
    800067ac:	fb9ff06f          	j	80006764 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800067b0:	fffff097          	auipc	ra,0xfffff
    800067b4:	234080e7          	jalr	564(ra) # 800059e4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800067b8:	00004517          	auipc	a0,0x4
    800067bc:	c7050513          	addi	a0,a0,-912 # 8000a428 <CONSOLE_STATUS+0x418>
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	868080e7          	jalr	-1944(ra) # 80006028 <_Z11printStringPKc>
            break;
    800067c8:	f9dff06f          	j	80006764 <_Z8userMainv+0x74>
            testSleeping();
    800067cc:	00000097          	auipc	ra,0x0
    800067d0:	11c080e7          	jalr	284(ra) # 800068e8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800067d4:	00004517          	auipc	a0,0x4
    800067d8:	cac50513          	addi	a0,a0,-852 # 8000a480 <CONSOLE_STATUS+0x470>
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	84c080e7          	jalr	-1972(ra) # 80006028 <_Z11printStringPKc>
            break;
    800067e4:	f81ff06f          	j	80006764 <_Z8userMainv+0x74>
            testConsumerProducer();
    800067e8:	ffffe097          	auipc	ra,0xffffe
    800067ec:	f38080e7          	jalr	-200(ra) # 80004720 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800067f0:	00004517          	auipc	a0,0x4
    800067f4:	cc050513          	addi	a0,a0,-832 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	830080e7          	jalr	-2000(ra) # 80006028 <_Z11printStringPKc>
            break;
    80006800:	f65ff06f          	j	80006764 <_Z8userMainv+0x74>
            System_Mode_test();
    80006804:	00000097          	auipc	ra,0x0
    80006808:	658080e7          	jalr	1624(ra) # 80006e5c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000680c:	00004517          	auipc	a0,0x4
    80006810:	ce450513          	addi	a0,a0,-796 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006814:	00000097          	auipc	ra,0x0
    80006818:	814080e7          	jalr	-2028(ra) # 80006028 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000681c:	00004517          	auipc	a0,0x4
    80006820:	cf450513          	addi	a0,a0,-780 # 8000a510 <CONSOLE_STATUS+0x500>
    80006824:	00000097          	auipc	ra,0x0
    80006828:	804080e7          	jalr	-2044(ra) # 80006028 <_Z11printStringPKc>
            break;
    8000682c:	f39ff06f          	j	80006764 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006830:	00004517          	auipc	a0,0x4
    80006834:	d3850513          	addi	a0,a0,-712 # 8000a568 <CONSOLE_STATUS+0x558>
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	7f0080e7          	jalr	2032(ra) # 80006028 <_Z11printStringPKc>
    80006840:	f25ff06f          	j	80006764 <_Z8userMainv+0x74>

0000000080006844 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006844:	fe010113          	addi	sp,sp,-32
    80006848:	00113c23          	sd	ra,24(sp)
    8000684c:	00813823          	sd	s0,16(sp)
    80006850:	00913423          	sd	s1,8(sp)
    80006854:	01213023          	sd	s2,0(sp)
    80006858:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000685c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006860:	00600493          	li	s1,6
    while (--i > 0) {
    80006864:	fff4849b          	addiw	s1,s1,-1
    80006868:	04905463          	blez	s1,800068b0 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    8000686c:	00004517          	auipc	a0,0x4
    80006870:	d4450513          	addi	a0,a0,-700 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	7b4080e7          	jalr	1972(ra) # 80006028 <_Z11printStringPKc>
        printInt(sleep_time);
    8000687c:	00000613          	li	a2,0
    80006880:	00a00593          	li	a1,10
    80006884:	0009051b          	sext.w	a0,s2
    80006888:	00000097          	auipc	ra,0x0
    8000688c:	950080e7          	jalr	-1712(ra) # 800061d8 <_Z8printIntiii>
        printString(" !\n");
    80006890:	00004517          	auipc	a0,0x4
    80006894:	d2850513          	addi	a0,a0,-728 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	790080e7          	jalr	1936(ra) # 80006028 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800068a0:	00090513          	mv	a0,s2
    800068a4:	ffffb097          	auipc	ra,0xffffb
    800068a8:	d30080e7          	jalr	-720(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800068ac:	fb9ff06f          	j	80006864 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800068b0:	00a00793          	li	a5,10
    800068b4:	02f95933          	divu	s2,s2,a5
    800068b8:	fff90913          	addi	s2,s2,-1
    800068bc:	00006797          	auipc	a5,0x6
    800068c0:	64c78793          	addi	a5,a5,1612 # 8000cf08 <_ZL8finished>
    800068c4:	01278933          	add	s2,a5,s2
    800068c8:	00100793          	li	a5,1
    800068cc:	00f90023          	sb	a5,0(s2)
}
    800068d0:	01813083          	ld	ra,24(sp)
    800068d4:	01013403          	ld	s0,16(sp)
    800068d8:	00813483          	ld	s1,8(sp)
    800068dc:	00013903          	ld	s2,0(sp)
    800068e0:	02010113          	addi	sp,sp,32
    800068e4:	00008067          	ret

00000000800068e8 <_Z12testSleepingv>:

void testSleeping() {
    800068e8:	fc010113          	addi	sp,sp,-64
    800068ec:	02113c23          	sd	ra,56(sp)
    800068f0:	02813823          	sd	s0,48(sp)
    800068f4:	02913423          	sd	s1,40(sp)
    800068f8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800068fc:	00a00793          	li	a5,10
    80006900:	fcf43823          	sd	a5,-48(s0)
    80006904:	01400793          	li	a5,20
    80006908:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000690c:	00000493          	li	s1,0
    80006910:	02c0006f          	j	8000693c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006914:	00349793          	slli	a5,s1,0x3
    80006918:	fd040613          	addi	a2,s0,-48
    8000691c:	00f60633          	add	a2,a2,a5
    80006920:	00000597          	auipc	a1,0x0
    80006924:	f2458593          	addi	a1,a1,-220 # 80006844 <_ZL9sleepyRunPv>
    80006928:	fc040513          	addi	a0,s0,-64
    8000692c:	00f50533          	add	a0,a0,a5
    80006930:	ffffb097          	auipc	ra,0xffffb
    80006934:	9c8080e7          	jalr	-1592(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006938:	0014849b          	addiw	s1,s1,1
    8000693c:	00100793          	li	a5,1
    80006940:	fc97dae3          	bge	a5,s1,80006914 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006944:	00006797          	auipc	a5,0x6
    80006948:	5c47c783          	lbu	a5,1476(a5) # 8000cf08 <_ZL8finished>
    8000694c:	fe078ce3          	beqz	a5,80006944 <_Z12testSleepingv+0x5c>
    80006950:	00006797          	auipc	a5,0x6
    80006954:	5b97c783          	lbu	a5,1465(a5) # 8000cf09 <_ZL8finished+0x1>
    80006958:	fe0786e3          	beqz	a5,80006944 <_Z12testSleepingv+0x5c>
}
    8000695c:	03813083          	ld	ra,56(sp)
    80006960:	03013403          	ld	s0,48(sp)
    80006964:	02813483          	ld	s1,40(sp)
    80006968:	04010113          	addi	sp,sp,64
    8000696c:	00008067          	ret

0000000080006970 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006970:	fe010113          	addi	sp,sp,-32
    80006974:	00113c23          	sd	ra,24(sp)
    80006978:	00813823          	sd	s0,16(sp)
    8000697c:	00913423          	sd	s1,8(sp)
    80006980:	01213023          	sd	s2,0(sp)
    80006984:	02010413          	addi	s0,sp,32
    80006988:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000698c:	00100793          	li	a5,1
    80006990:	02a7f863          	bgeu	a5,a0,800069c0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006994:	00a00793          	li	a5,10
    80006998:	02f577b3          	remu	a5,a0,a5
    8000699c:	02078e63          	beqz	a5,800069d8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800069a0:	fff48513          	addi	a0,s1,-1
    800069a4:	00000097          	auipc	ra,0x0
    800069a8:	fcc080e7          	jalr	-52(ra) # 80006970 <_ZL9fibonaccim>
    800069ac:	00050913          	mv	s2,a0
    800069b0:	ffe48513          	addi	a0,s1,-2
    800069b4:	00000097          	auipc	ra,0x0
    800069b8:	fbc080e7          	jalr	-68(ra) # 80006970 <_ZL9fibonaccim>
    800069bc:	00a90533          	add	a0,s2,a0
}
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00813483          	ld	s1,8(sp)
    800069cc:	00013903          	ld	s2,0(sp)
    800069d0:	02010113          	addi	sp,sp,32
    800069d4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	9f4080e7          	jalr	-1548(ra) # 800013cc <_Z15thread_dispatchv>
    800069e0:	fc1ff06f          	j	800069a0 <_ZL9fibonaccim+0x30>

00000000800069e4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00113c23          	sd	ra,24(sp)
    800069ec:	00813823          	sd	s0,16(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	01213023          	sd	s2,0(sp)
    800069f8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800069fc:	00a00493          	li	s1,10
    80006a00:	0400006f          	j	80006a40 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a04:	00004517          	auipc	a0,0x4
    80006a08:	87450513          	addi	a0,a0,-1932 # 8000a278 <CONSOLE_STATUS+0x268>
    80006a0c:	fffff097          	auipc	ra,0xfffff
    80006a10:	61c080e7          	jalr	1564(ra) # 80006028 <_Z11printStringPKc>
    80006a14:	00000613          	li	a2,0
    80006a18:	00a00593          	li	a1,10
    80006a1c:	00048513          	mv	a0,s1
    80006a20:	fffff097          	auipc	ra,0xfffff
    80006a24:	7b8080e7          	jalr	1976(ra) # 800061d8 <_Z8printIntiii>
    80006a28:	00004517          	auipc	a0,0x4
    80006a2c:	a5050513          	addi	a0,a0,-1456 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a30:	fffff097          	auipc	ra,0xfffff
    80006a34:	5f8080e7          	jalr	1528(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006a38:	0014849b          	addiw	s1,s1,1
    80006a3c:	0ff4f493          	andi	s1,s1,255
    80006a40:	00c00793          	li	a5,12
    80006a44:	fc97f0e3          	bgeu	a5,s1,80006a04 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006a48:	00004517          	auipc	a0,0x4
    80006a4c:	83850513          	addi	a0,a0,-1992 # 8000a280 <CONSOLE_STATUS+0x270>
    80006a50:	fffff097          	auipc	ra,0xfffff
    80006a54:	5d8080e7          	jalr	1496(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006a58:	00500313          	li	t1,5
    thread_dispatch();
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	970080e7          	jalr	-1680(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006a64:	01000513          	li	a0,16
    80006a68:	00000097          	auipc	ra,0x0
    80006a6c:	f08080e7          	jalr	-248(ra) # 80006970 <_ZL9fibonaccim>
    80006a70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006a74:	00004517          	auipc	a0,0x4
    80006a78:	81c50513          	addi	a0,a0,-2020 # 8000a290 <CONSOLE_STATUS+0x280>
    80006a7c:	fffff097          	auipc	ra,0xfffff
    80006a80:	5ac080e7          	jalr	1452(ra) # 80006028 <_Z11printStringPKc>
    80006a84:	00000613          	li	a2,0
    80006a88:	00a00593          	li	a1,10
    80006a8c:	0009051b          	sext.w	a0,s2
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	748080e7          	jalr	1864(ra) # 800061d8 <_Z8printIntiii>
    80006a98:	00004517          	auipc	a0,0x4
    80006a9c:	9e050513          	addi	a0,a0,-1568 # 8000a478 <CONSOLE_STATUS+0x468>
    80006aa0:	fffff097          	auipc	ra,0xfffff
    80006aa4:	588080e7          	jalr	1416(ra) # 80006028 <_Z11printStringPKc>
    80006aa8:	0400006f          	j	80006ae8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006aac:	00003517          	auipc	a0,0x3
    80006ab0:	7cc50513          	addi	a0,a0,1996 # 8000a278 <CONSOLE_STATUS+0x268>
    80006ab4:	fffff097          	auipc	ra,0xfffff
    80006ab8:	574080e7          	jalr	1396(ra) # 80006028 <_Z11printStringPKc>
    80006abc:	00000613          	li	a2,0
    80006ac0:	00a00593          	li	a1,10
    80006ac4:	00048513          	mv	a0,s1
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	710080e7          	jalr	1808(ra) # 800061d8 <_Z8printIntiii>
    80006ad0:	00004517          	auipc	a0,0x4
    80006ad4:	9a850513          	addi	a0,a0,-1624 # 8000a478 <CONSOLE_STATUS+0x468>
    80006ad8:	fffff097          	auipc	ra,0xfffff
    80006adc:	550080e7          	jalr	1360(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006ae0:	0014849b          	addiw	s1,s1,1
    80006ae4:	0ff4f493          	andi	s1,s1,255
    80006ae8:	00f00793          	li	a5,15
    80006aec:	fc97f0e3          	bgeu	a5,s1,80006aac <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006af0:	00003517          	auipc	a0,0x3
    80006af4:	7b050513          	addi	a0,a0,1968 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006af8:	fffff097          	auipc	ra,0xfffff
    80006afc:	530080e7          	jalr	1328(ra) # 80006028 <_Z11printStringPKc>
    finishedD = true;
    80006b00:	00100793          	li	a5,1
    80006b04:	00006717          	auipc	a4,0x6
    80006b08:	40f70323          	sb	a5,1030(a4) # 8000cf0a <_ZL9finishedD>
    thread_dispatch();
    80006b0c:	ffffb097          	auipc	ra,0xffffb
    80006b10:	8c0080e7          	jalr	-1856(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006b14:	01813083          	ld	ra,24(sp)
    80006b18:	01013403          	ld	s0,16(sp)
    80006b1c:	00813483          	ld	s1,8(sp)
    80006b20:	00013903          	ld	s2,0(sp)
    80006b24:	02010113          	addi	sp,sp,32
    80006b28:	00008067          	ret

0000000080006b2c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006b2c:	fe010113          	addi	sp,sp,-32
    80006b30:	00113c23          	sd	ra,24(sp)
    80006b34:	00813823          	sd	s0,16(sp)
    80006b38:	00913423          	sd	s1,8(sp)
    80006b3c:	01213023          	sd	s2,0(sp)
    80006b40:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006b44:	00000493          	li	s1,0
    80006b48:	0400006f          	j	80006b88 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006b4c:	00003517          	auipc	a0,0x3
    80006b50:	6fc50513          	addi	a0,a0,1788 # 8000a248 <CONSOLE_STATUS+0x238>
    80006b54:	fffff097          	auipc	ra,0xfffff
    80006b58:	4d4080e7          	jalr	1236(ra) # 80006028 <_Z11printStringPKc>
    80006b5c:	00000613          	li	a2,0
    80006b60:	00a00593          	li	a1,10
    80006b64:	00048513          	mv	a0,s1
    80006b68:	fffff097          	auipc	ra,0xfffff
    80006b6c:	670080e7          	jalr	1648(ra) # 800061d8 <_Z8printIntiii>
    80006b70:	00004517          	auipc	a0,0x4
    80006b74:	90850513          	addi	a0,a0,-1784 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	4b0080e7          	jalr	1200(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006b80:	0014849b          	addiw	s1,s1,1
    80006b84:	0ff4f493          	andi	s1,s1,255
    80006b88:	00200793          	li	a5,2
    80006b8c:	fc97f0e3          	bgeu	a5,s1,80006b4c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006b90:	00003517          	auipc	a0,0x3
    80006b94:	6c050513          	addi	a0,a0,1728 # 8000a250 <CONSOLE_STATUS+0x240>
    80006b98:	fffff097          	auipc	ra,0xfffff
    80006b9c:	490080e7          	jalr	1168(ra) # 80006028 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006ba0:	00700313          	li	t1,7
    thread_dispatch();
    80006ba4:	ffffb097          	auipc	ra,0xffffb
    80006ba8:	828080e7          	jalr	-2008(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006bac:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006bb0:	00003517          	auipc	a0,0x3
    80006bb4:	6b050513          	addi	a0,a0,1712 # 8000a260 <CONSOLE_STATUS+0x250>
    80006bb8:	fffff097          	auipc	ra,0xfffff
    80006bbc:	470080e7          	jalr	1136(ra) # 80006028 <_Z11printStringPKc>
    80006bc0:	00000613          	li	a2,0
    80006bc4:	00a00593          	li	a1,10
    80006bc8:	0009051b          	sext.w	a0,s2
    80006bcc:	fffff097          	auipc	ra,0xfffff
    80006bd0:	60c080e7          	jalr	1548(ra) # 800061d8 <_Z8printIntiii>
    80006bd4:	00004517          	auipc	a0,0x4
    80006bd8:	8a450513          	addi	a0,a0,-1884 # 8000a478 <CONSOLE_STATUS+0x468>
    80006bdc:	fffff097          	auipc	ra,0xfffff
    80006be0:	44c080e7          	jalr	1100(ra) # 80006028 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006be4:	00c00513          	li	a0,12
    80006be8:	00000097          	auipc	ra,0x0
    80006bec:	d88080e7          	jalr	-632(ra) # 80006970 <_ZL9fibonaccim>
    80006bf0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	67450513          	addi	a0,a0,1652 # 8000a268 <CONSOLE_STATUS+0x258>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	42c080e7          	jalr	1068(ra) # 80006028 <_Z11printStringPKc>
    80006c04:	00000613          	li	a2,0
    80006c08:	00a00593          	li	a1,10
    80006c0c:	0009051b          	sext.w	a0,s2
    80006c10:	fffff097          	auipc	ra,0xfffff
    80006c14:	5c8080e7          	jalr	1480(ra) # 800061d8 <_Z8printIntiii>
    80006c18:	00004517          	auipc	a0,0x4
    80006c1c:	86050513          	addi	a0,a0,-1952 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c20:	fffff097          	auipc	ra,0xfffff
    80006c24:	408080e7          	jalr	1032(ra) # 80006028 <_Z11printStringPKc>
    80006c28:	0400006f          	j	80006c68 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006c2c:	00003517          	auipc	a0,0x3
    80006c30:	61c50513          	addi	a0,a0,1564 # 8000a248 <CONSOLE_STATUS+0x238>
    80006c34:	fffff097          	auipc	ra,0xfffff
    80006c38:	3f4080e7          	jalr	1012(ra) # 80006028 <_Z11printStringPKc>
    80006c3c:	00000613          	li	a2,0
    80006c40:	00a00593          	li	a1,10
    80006c44:	00048513          	mv	a0,s1
    80006c48:	fffff097          	auipc	ra,0xfffff
    80006c4c:	590080e7          	jalr	1424(ra) # 800061d8 <_Z8printIntiii>
    80006c50:	00004517          	auipc	a0,0x4
    80006c54:	82850513          	addi	a0,a0,-2008 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c58:	fffff097          	auipc	ra,0xfffff
    80006c5c:	3d0080e7          	jalr	976(ra) # 80006028 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006c60:	0014849b          	addiw	s1,s1,1
    80006c64:	0ff4f493          	andi	s1,s1,255
    80006c68:	00500793          	li	a5,5
    80006c6c:	fc97f0e3          	bgeu	a5,s1,80006c2c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006c70:	00003517          	auipc	a0,0x3
    80006c74:	5b050513          	addi	a0,a0,1456 # 8000a220 <CONSOLE_STATUS+0x210>
    80006c78:	fffff097          	auipc	ra,0xfffff
    80006c7c:	3b0080e7          	jalr	944(ra) # 80006028 <_Z11printStringPKc>
    finishedC = true;
    80006c80:	00100793          	li	a5,1
    80006c84:	00006717          	auipc	a4,0x6
    80006c88:	28f703a3          	sb	a5,647(a4) # 8000cf0b <_ZL9finishedC>
    thread_dispatch();
    80006c8c:	ffffa097          	auipc	ra,0xffffa
    80006c90:	740080e7          	jalr	1856(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006c94:	01813083          	ld	ra,24(sp)
    80006c98:	01013403          	ld	s0,16(sp)
    80006c9c:	00813483          	ld	s1,8(sp)
    80006ca0:	00013903          	ld	s2,0(sp)
    80006ca4:	02010113          	addi	sp,sp,32
    80006ca8:	00008067          	ret

0000000080006cac <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006cac:	fe010113          	addi	sp,sp,-32
    80006cb0:	00113c23          	sd	ra,24(sp)
    80006cb4:	00813823          	sd	s0,16(sp)
    80006cb8:	00913423          	sd	s1,8(sp)
    80006cbc:	01213023          	sd	s2,0(sp)
    80006cc0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006cc4:	00000913          	li	s2,0
    80006cc8:	0400006f          	j	80006d08 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ccc:	ffffa097          	auipc	ra,0xffffa
    80006cd0:	700080e7          	jalr	1792(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006cd4:	00148493          	addi	s1,s1,1
    80006cd8:	000027b7          	lui	a5,0x2
    80006cdc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ce0:	0097ee63          	bltu	a5,s1,80006cfc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ce4:	00000713          	li	a4,0
    80006ce8:	000077b7          	lui	a5,0x7
    80006cec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006cf0:	fce7eee3          	bltu	a5,a4,80006ccc <_ZL11workerBodyBPv+0x20>
    80006cf4:	00170713          	addi	a4,a4,1
    80006cf8:	ff1ff06f          	j	80006ce8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006cfc:	00a00793          	li	a5,10
    80006d00:	04f90663          	beq	s2,a5,80006d4c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006d04:	00190913          	addi	s2,s2,1
    80006d08:	00f00793          	li	a5,15
    80006d0c:	0527e463          	bltu	a5,s2,80006d54 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006d10:	00003517          	auipc	a0,0x3
    80006d14:	52050513          	addi	a0,a0,1312 # 8000a230 <CONSOLE_STATUS+0x220>
    80006d18:	fffff097          	auipc	ra,0xfffff
    80006d1c:	310080e7          	jalr	784(ra) # 80006028 <_Z11printStringPKc>
    80006d20:	00000613          	li	a2,0
    80006d24:	00a00593          	li	a1,10
    80006d28:	0009051b          	sext.w	a0,s2
    80006d2c:	fffff097          	auipc	ra,0xfffff
    80006d30:	4ac080e7          	jalr	1196(ra) # 800061d8 <_Z8printIntiii>
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	74450513          	addi	a0,a0,1860 # 8000a478 <CONSOLE_STATUS+0x468>
    80006d3c:	fffff097          	auipc	ra,0xfffff
    80006d40:	2ec080e7          	jalr	748(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006d44:	00000493          	li	s1,0
    80006d48:	f91ff06f          	j	80006cd8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006d4c:	14102ff3          	csrr	t6,sepc
    80006d50:	fb5ff06f          	j	80006d04 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006d54:	00003517          	auipc	a0,0x3
    80006d58:	4e450513          	addi	a0,a0,1252 # 8000a238 <CONSOLE_STATUS+0x228>
    80006d5c:	fffff097          	auipc	ra,0xfffff
    80006d60:	2cc080e7          	jalr	716(ra) # 80006028 <_Z11printStringPKc>
    finishedB = true;
    80006d64:	00100793          	li	a5,1
    80006d68:	00006717          	auipc	a4,0x6
    80006d6c:	1af70223          	sb	a5,420(a4) # 8000cf0c <_ZL9finishedB>
    thread_dispatch();
    80006d70:	ffffa097          	auipc	ra,0xffffa
    80006d74:	65c080e7          	jalr	1628(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006d78:	01813083          	ld	ra,24(sp)
    80006d7c:	01013403          	ld	s0,16(sp)
    80006d80:	00813483          	ld	s1,8(sp)
    80006d84:	00013903          	ld	s2,0(sp)
    80006d88:	02010113          	addi	sp,sp,32
    80006d8c:	00008067          	ret

0000000080006d90 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006d90:	fe010113          	addi	sp,sp,-32
    80006d94:	00113c23          	sd	ra,24(sp)
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	01213023          	sd	s2,0(sp)
    80006da4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006da8:	00000913          	li	s2,0
    80006dac:	0380006f          	j	80006de4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006db0:	ffffa097          	auipc	ra,0xffffa
    80006db4:	61c080e7          	jalr	1564(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006db8:	00148493          	addi	s1,s1,1
    80006dbc:	000027b7          	lui	a5,0x2
    80006dc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006dc4:	0097ee63          	bltu	a5,s1,80006de0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006dc8:	00000713          	li	a4,0
    80006dcc:	000077b7          	lui	a5,0x7
    80006dd0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006dd4:	fce7eee3          	bltu	a5,a4,80006db0 <_ZL11workerBodyAPv+0x20>
    80006dd8:	00170713          	addi	a4,a4,1
    80006ddc:	ff1ff06f          	j	80006dcc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006de0:	00190913          	addi	s2,s2,1
    80006de4:	00900793          	li	a5,9
    80006de8:	0527e063          	bltu	a5,s2,80006e28 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006dec:	00003517          	auipc	a0,0x3
    80006df0:	42c50513          	addi	a0,a0,1068 # 8000a218 <CONSOLE_STATUS+0x208>
    80006df4:	fffff097          	auipc	ra,0xfffff
    80006df8:	234080e7          	jalr	564(ra) # 80006028 <_Z11printStringPKc>
    80006dfc:	00000613          	li	a2,0
    80006e00:	00a00593          	li	a1,10
    80006e04:	0009051b          	sext.w	a0,s2
    80006e08:	fffff097          	auipc	ra,0xfffff
    80006e0c:	3d0080e7          	jalr	976(ra) # 800061d8 <_Z8printIntiii>
    80006e10:	00003517          	auipc	a0,0x3
    80006e14:	66850513          	addi	a0,a0,1640 # 8000a478 <CONSOLE_STATUS+0x468>
    80006e18:	fffff097          	auipc	ra,0xfffff
    80006e1c:	210080e7          	jalr	528(ra) # 80006028 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006e20:	00000493          	li	s1,0
    80006e24:	f99ff06f          	j	80006dbc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006e28:	00003517          	auipc	a0,0x3
    80006e2c:	3f850513          	addi	a0,a0,1016 # 8000a220 <CONSOLE_STATUS+0x210>
    80006e30:	fffff097          	auipc	ra,0xfffff
    80006e34:	1f8080e7          	jalr	504(ra) # 80006028 <_Z11printStringPKc>
    finishedA = true;
    80006e38:	00100793          	li	a5,1
    80006e3c:	00006717          	auipc	a4,0x6
    80006e40:	0cf708a3          	sb	a5,209(a4) # 8000cf0d <_ZL9finishedA>
}
    80006e44:	01813083          	ld	ra,24(sp)
    80006e48:	01013403          	ld	s0,16(sp)
    80006e4c:	00813483          	ld	s1,8(sp)
    80006e50:	00013903          	ld	s2,0(sp)
    80006e54:	02010113          	addi	sp,sp,32
    80006e58:	00008067          	ret

0000000080006e5c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006e5c:	fd010113          	addi	sp,sp,-48
    80006e60:	02113423          	sd	ra,40(sp)
    80006e64:	02813023          	sd	s0,32(sp)
    80006e68:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006e6c:	00000613          	li	a2,0
    80006e70:	00000597          	auipc	a1,0x0
    80006e74:	f2058593          	addi	a1,a1,-224 # 80006d90 <_ZL11workerBodyAPv>
    80006e78:	fd040513          	addi	a0,s0,-48
    80006e7c:	ffffa097          	auipc	ra,0xffffa
    80006e80:	47c080e7          	jalr	1148(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006e84:	00003517          	auipc	a0,0x3
    80006e88:	42c50513          	addi	a0,a0,1068 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	19c080e7          	jalr	412(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006e94:	00000613          	li	a2,0
    80006e98:	00000597          	auipc	a1,0x0
    80006e9c:	e1458593          	addi	a1,a1,-492 # 80006cac <_ZL11workerBodyBPv>
    80006ea0:	fd840513          	addi	a0,s0,-40
    80006ea4:	ffffa097          	auipc	ra,0xffffa
    80006ea8:	454080e7          	jalr	1108(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006eac:	00003517          	auipc	a0,0x3
    80006eb0:	41c50513          	addi	a0,a0,1052 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006eb4:	fffff097          	auipc	ra,0xfffff
    80006eb8:	174080e7          	jalr	372(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006ebc:	00000613          	li	a2,0
    80006ec0:	00000597          	auipc	a1,0x0
    80006ec4:	c6c58593          	addi	a1,a1,-916 # 80006b2c <_ZL11workerBodyCPv>
    80006ec8:	fe040513          	addi	a0,s0,-32
    80006ecc:	ffffa097          	auipc	ra,0xffffa
    80006ed0:	42c080e7          	jalr	1068(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006ed4:	00003517          	auipc	a0,0x3
    80006ed8:	40c50513          	addi	a0,a0,1036 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006edc:	fffff097          	auipc	ra,0xfffff
    80006ee0:	14c080e7          	jalr	332(ra) # 80006028 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006ee4:	00000613          	li	a2,0
    80006ee8:	00000597          	auipc	a1,0x0
    80006eec:	afc58593          	addi	a1,a1,-1284 # 800069e4 <_ZL11workerBodyDPv>
    80006ef0:	fe840513          	addi	a0,s0,-24
    80006ef4:	ffffa097          	auipc	ra,0xffffa
    80006ef8:	404080e7          	jalr	1028(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006efc:	00003517          	auipc	a0,0x3
    80006f00:	3fc50513          	addi	a0,a0,1020 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006f04:	fffff097          	auipc	ra,0xfffff
    80006f08:	124080e7          	jalr	292(ra) # 80006028 <_Z11printStringPKc>
    80006f0c:	00c0006f          	j	80006f18 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006f10:	ffffa097          	auipc	ra,0xffffa
    80006f14:	4bc080e7          	jalr	1212(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006f18:	00006797          	auipc	a5,0x6
    80006f1c:	ff57c783          	lbu	a5,-11(a5) # 8000cf0d <_ZL9finishedA>
    80006f20:	fe0788e3          	beqz	a5,80006f10 <_Z16System_Mode_testv+0xb4>
    80006f24:	00006797          	auipc	a5,0x6
    80006f28:	fe87c783          	lbu	a5,-24(a5) # 8000cf0c <_ZL9finishedB>
    80006f2c:	fe0782e3          	beqz	a5,80006f10 <_Z16System_Mode_testv+0xb4>
    80006f30:	00006797          	auipc	a5,0x6
    80006f34:	fdb7c783          	lbu	a5,-37(a5) # 8000cf0b <_ZL9finishedC>
    80006f38:	fc078ce3          	beqz	a5,80006f10 <_Z16System_Mode_testv+0xb4>
    80006f3c:	00006797          	auipc	a5,0x6
    80006f40:	fce7c783          	lbu	a5,-50(a5) # 8000cf0a <_ZL9finishedD>
    80006f44:	fc0786e3          	beqz	a5,80006f10 <_Z16System_Mode_testv+0xb4>
    }

}
    80006f48:	02813083          	ld	ra,40(sp)
    80006f4c:	02013403          	ld	s0,32(sp)
    80006f50:	03010113          	addi	sp,sp,48
    80006f54:	00008067          	ret

0000000080006f58 <start>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813423          	sd	s0,8(sp)
    80006f60:	01010413          	addi	s0,sp,16
    80006f64:	300027f3          	csrr	a5,mstatus
    80006f68:	ffffe737          	lui	a4,0xffffe
    80006f6c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff068f>
    80006f70:	00e7f7b3          	and	a5,a5,a4
    80006f74:	00001737          	lui	a4,0x1
    80006f78:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f7c:	00e7e7b3          	or	a5,a5,a4
    80006f80:	30079073          	csrw	mstatus,a5
    80006f84:	00000797          	auipc	a5,0x0
    80006f88:	16078793          	addi	a5,a5,352 # 800070e4 <system_main>
    80006f8c:	34179073          	csrw	mepc,a5
    80006f90:	00000793          	li	a5,0
    80006f94:	18079073          	csrw	satp,a5
    80006f98:	000107b7          	lui	a5,0x10
    80006f9c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006fa0:	30279073          	csrw	medeleg,a5
    80006fa4:	30379073          	csrw	mideleg,a5
    80006fa8:	104027f3          	csrr	a5,sie
    80006fac:	2227e793          	ori	a5,a5,546
    80006fb0:	10479073          	csrw	sie,a5
    80006fb4:	fff00793          	li	a5,-1
    80006fb8:	00a7d793          	srli	a5,a5,0xa
    80006fbc:	3b079073          	csrw	pmpaddr0,a5
    80006fc0:	00f00793          	li	a5,15
    80006fc4:	3a079073          	csrw	pmpcfg0,a5
    80006fc8:	f14027f3          	csrr	a5,mhartid
    80006fcc:	0200c737          	lui	a4,0x200c
    80006fd0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fd4:	0007869b          	sext.w	a3,a5
    80006fd8:	00269713          	slli	a4,a3,0x2
    80006fdc:	000f4637          	lui	a2,0xf4
    80006fe0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006fe4:	00d70733          	add	a4,a4,a3
    80006fe8:	0037979b          	slliw	a5,a5,0x3
    80006fec:	020046b7          	lui	a3,0x2004
    80006ff0:	00d787b3          	add	a5,a5,a3
    80006ff4:	00c585b3          	add	a1,a1,a2
    80006ff8:	00371693          	slli	a3,a4,0x3
    80006ffc:	00006717          	auipc	a4,0x6
    80007000:	f1470713          	addi	a4,a4,-236 # 8000cf10 <timer_scratch>
    80007004:	00b7b023          	sd	a1,0(a5)
    80007008:	00d70733          	add	a4,a4,a3
    8000700c:	00f73c23          	sd	a5,24(a4)
    80007010:	02c73023          	sd	a2,32(a4)
    80007014:	34071073          	csrw	mscratch,a4
    80007018:	00000797          	auipc	a5,0x0
    8000701c:	6e878793          	addi	a5,a5,1768 # 80007700 <timervec>
    80007020:	30579073          	csrw	mtvec,a5
    80007024:	300027f3          	csrr	a5,mstatus
    80007028:	0087e793          	ori	a5,a5,8
    8000702c:	30079073          	csrw	mstatus,a5
    80007030:	304027f3          	csrr	a5,mie
    80007034:	0807e793          	ori	a5,a5,128
    80007038:	30479073          	csrw	mie,a5
    8000703c:	f14027f3          	csrr	a5,mhartid
    80007040:	0007879b          	sext.w	a5,a5
    80007044:	00078213          	mv	tp,a5
    80007048:	30200073          	mret
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <timerinit>:
    80007058:	ff010113          	addi	sp,sp,-16
    8000705c:	00813423          	sd	s0,8(sp)
    80007060:	01010413          	addi	s0,sp,16
    80007064:	f14027f3          	csrr	a5,mhartid
    80007068:	0200c737          	lui	a4,0x200c
    8000706c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007070:	0007869b          	sext.w	a3,a5
    80007074:	00269713          	slli	a4,a3,0x2
    80007078:	000f4637          	lui	a2,0xf4
    8000707c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007080:	00d70733          	add	a4,a4,a3
    80007084:	0037979b          	slliw	a5,a5,0x3
    80007088:	020046b7          	lui	a3,0x2004
    8000708c:	00d787b3          	add	a5,a5,a3
    80007090:	00c585b3          	add	a1,a1,a2
    80007094:	00371693          	slli	a3,a4,0x3
    80007098:	00006717          	auipc	a4,0x6
    8000709c:	e7870713          	addi	a4,a4,-392 # 8000cf10 <timer_scratch>
    800070a0:	00b7b023          	sd	a1,0(a5)
    800070a4:	00d70733          	add	a4,a4,a3
    800070a8:	00f73c23          	sd	a5,24(a4)
    800070ac:	02c73023          	sd	a2,32(a4)
    800070b0:	34071073          	csrw	mscratch,a4
    800070b4:	00000797          	auipc	a5,0x0
    800070b8:	64c78793          	addi	a5,a5,1612 # 80007700 <timervec>
    800070bc:	30579073          	csrw	mtvec,a5
    800070c0:	300027f3          	csrr	a5,mstatus
    800070c4:	0087e793          	ori	a5,a5,8
    800070c8:	30079073          	csrw	mstatus,a5
    800070cc:	304027f3          	csrr	a5,mie
    800070d0:	0807e793          	ori	a5,a5,128
    800070d4:	30479073          	csrw	mie,a5
    800070d8:	00813403          	ld	s0,8(sp)
    800070dc:	01010113          	addi	sp,sp,16
    800070e0:	00008067          	ret

00000000800070e4 <system_main>:
    800070e4:	fe010113          	addi	sp,sp,-32
    800070e8:	00813823          	sd	s0,16(sp)
    800070ec:	00913423          	sd	s1,8(sp)
    800070f0:	00113c23          	sd	ra,24(sp)
    800070f4:	02010413          	addi	s0,sp,32
    800070f8:	00000097          	auipc	ra,0x0
    800070fc:	0c4080e7          	jalr	196(ra) # 800071bc <cpuid>
    80007100:	00006497          	auipc	s1,0x6
    80007104:	d3048493          	addi	s1,s1,-720 # 8000ce30 <started>
    80007108:	02050263          	beqz	a0,8000712c <system_main+0x48>
    8000710c:	0004a783          	lw	a5,0(s1)
    80007110:	0007879b          	sext.w	a5,a5
    80007114:	fe078ce3          	beqz	a5,8000710c <system_main+0x28>
    80007118:	0ff0000f          	fence
    8000711c:	00003517          	auipc	a0,0x3
    80007120:	4d450513          	addi	a0,a0,1236 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    80007124:	00001097          	auipc	ra,0x1
    80007128:	a78080e7          	jalr	-1416(ra) # 80007b9c <panic>
    8000712c:	00001097          	auipc	ra,0x1
    80007130:	9cc080e7          	jalr	-1588(ra) # 80007af8 <consoleinit>
    80007134:	00001097          	auipc	ra,0x1
    80007138:	158080e7          	jalr	344(ra) # 8000828c <printfinit>
    8000713c:	00003517          	auipc	a0,0x3
    80007140:	33c50513          	addi	a0,a0,828 # 8000a478 <CONSOLE_STATUS+0x468>
    80007144:	00001097          	auipc	ra,0x1
    80007148:	ab4080e7          	jalr	-1356(ra) # 80007bf8 <__printf>
    8000714c:	00003517          	auipc	a0,0x3
    80007150:	47450513          	addi	a0,a0,1140 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007154:	00001097          	auipc	ra,0x1
    80007158:	aa4080e7          	jalr	-1372(ra) # 80007bf8 <__printf>
    8000715c:	00003517          	auipc	a0,0x3
    80007160:	31c50513          	addi	a0,a0,796 # 8000a478 <CONSOLE_STATUS+0x468>
    80007164:	00001097          	auipc	ra,0x1
    80007168:	a94080e7          	jalr	-1388(ra) # 80007bf8 <__printf>
    8000716c:	00001097          	auipc	ra,0x1
    80007170:	4ac080e7          	jalr	1196(ra) # 80008618 <kinit>
    80007174:	00000097          	auipc	ra,0x0
    80007178:	148080e7          	jalr	328(ra) # 800072bc <trapinit>
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	16c080e7          	jalr	364(ra) # 800072e8 <trapinithart>
    80007184:	00000097          	auipc	ra,0x0
    80007188:	5bc080e7          	jalr	1468(ra) # 80007740 <plicinit>
    8000718c:	00000097          	auipc	ra,0x0
    80007190:	5dc080e7          	jalr	1500(ra) # 80007768 <plicinithart>
    80007194:	00000097          	auipc	ra,0x0
    80007198:	078080e7          	jalr	120(ra) # 8000720c <userinit>
    8000719c:	0ff0000f          	fence
    800071a0:	00100793          	li	a5,1
    800071a4:	00003517          	auipc	a0,0x3
    800071a8:	43450513          	addi	a0,a0,1076 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800071ac:	00f4a023          	sw	a5,0(s1)
    800071b0:	00001097          	auipc	ra,0x1
    800071b4:	a48080e7          	jalr	-1464(ra) # 80007bf8 <__printf>
    800071b8:	0000006f          	j	800071b8 <system_main+0xd4>

00000000800071bc <cpuid>:
    800071bc:	ff010113          	addi	sp,sp,-16
    800071c0:	00813423          	sd	s0,8(sp)
    800071c4:	01010413          	addi	s0,sp,16
    800071c8:	00020513          	mv	a0,tp
    800071cc:	00813403          	ld	s0,8(sp)
    800071d0:	0005051b          	sext.w	a0,a0
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	00008067          	ret

00000000800071dc <mycpu>:
    800071dc:	ff010113          	addi	sp,sp,-16
    800071e0:	00813423          	sd	s0,8(sp)
    800071e4:	01010413          	addi	s0,sp,16
    800071e8:	00020793          	mv	a5,tp
    800071ec:	00813403          	ld	s0,8(sp)
    800071f0:	0007879b          	sext.w	a5,a5
    800071f4:	00779793          	slli	a5,a5,0x7
    800071f8:	00007517          	auipc	a0,0x7
    800071fc:	d4850513          	addi	a0,a0,-696 # 8000df40 <cpus>
    80007200:	00f50533          	add	a0,a0,a5
    80007204:	01010113          	addi	sp,sp,16
    80007208:	00008067          	ret

000000008000720c <userinit>:
    8000720c:	ff010113          	addi	sp,sp,-16
    80007210:	00813423          	sd	s0,8(sp)
    80007214:	01010413          	addi	s0,sp,16
    80007218:	00813403          	ld	s0,8(sp)
    8000721c:	01010113          	addi	sp,sp,16
    80007220:	ffffb317          	auipc	t1,0xffffb
    80007224:	a7430067          	jr	-1420(t1) # 80001c94 <main>

0000000080007228 <either_copyout>:
    80007228:	ff010113          	addi	sp,sp,-16
    8000722c:	00813023          	sd	s0,0(sp)
    80007230:	00113423          	sd	ra,8(sp)
    80007234:	01010413          	addi	s0,sp,16
    80007238:	02051663          	bnez	a0,80007264 <either_copyout+0x3c>
    8000723c:	00058513          	mv	a0,a1
    80007240:	00060593          	mv	a1,a2
    80007244:	0006861b          	sext.w	a2,a3
    80007248:	00002097          	auipc	ra,0x2
    8000724c:	c5c080e7          	jalr	-932(ra) # 80008ea4 <__memmove>
    80007250:	00813083          	ld	ra,8(sp)
    80007254:	00013403          	ld	s0,0(sp)
    80007258:	00000513          	li	a0,0
    8000725c:	01010113          	addi	sp,sp,16
    80007260:	00008067          	ret
    80007264:	00003517          	auipc	a0,0x3
    80007268:	3b450513          	addi	a0,a0,948 # 8000a618 <CONSOLE_STATUS+0x608>
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	930080e7          	jalr	-1744(ra) # 80007b9c <panic>

0000000080007274 <either_copyin>:
    80007274:	ff010113          	addi	sp,sp,-16
    80007278:	00813023          	sd	s0,0(sp)
    8000727c:	00113423          	sd	ra,8(sp)
    80007280:	01010413          	addi	s0,sp,16
    80007284:	02059463          	bnez	a1,800072ac <either_copyin+0x38>
    80007288:	00060593          	mv	a1,a2
    8000728c:	0006861b          	sext.w	a2,a3
    80007290:	00002097          	auipc	ra,0x2
    80007294:	c14080e7          	jalr	-1004(ra) # 80008ea4 <__memmove>
    80007298:	00813083          	ld	ra,8(sp)
    8000729c:	00013403          	ld	s0,0(sp)
    800072a0:	00000513          	li	a0,0
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00008067          	ret
    800072ac:	00003517          	auipc	a0,0x3
    800072b0:	39450513          	addi	a0,a0,916 # 8000a640 <CONSOLE_STATUS+0x630>
    800072b4:	00001097          	auipc	ra,0x1
    800072b8:	8e8080e7          	jalr	-1816(ra) # 80007b9c <panic>

00000000800072bc <trapinit>:
    800072bc:	ff010113          	addi	sp,sp,-16
    800072c0:	00813423          	sd	s0,8(sp)
    800072c4:	01010413          	addi	s0,sp,16
    800072c8:	00813403          	ld	s0,8(sp)
    800072cc:	00003597          	auipc	a1,0x3
    800072d0:	39c58593          	addi	a1,a1,924 # 8000a668 <CONSOLE_STATUS+0x658>
    800072d4:	00007517          	auipc	a0,0x7
    800072d8:	cec50513          	addi	a0,a0,-788 # 8000dfc0 <tickslock>
    800072dc:	01010113          	addi	sp,sp,16
    800072e0:	00001317          	auipc	t1,0x1
    800072e4:	5c830067          	jr	1480(t1) # 800088a8 <initlock>

00000000800072e8 <trapinithart>:
    800072e8:	ff010113          	addi	sp,sp,-16
    800072ec:	00813423          	sd	s0,8(sp)
    800072f0:	01010413          	addi	s0,sp,16
    800072f4:	00000797          	auipc	a5,0x0
    800072f8:	2fc78793          	addi	a5,a5,764 # 800075f0 <kernelvec>
    800072fc:	10579073          	csrw	stvec,a5
    80007300:	00813403          	ld	s0,8(sp)
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00008067          	ret

000000008000730c <usertrap>:
    8000730c:	ff010113          	addi	sp,sp,-16
    80007310:	00813423          	sd	s0,8(sp)
    80007314:	01010413          	addi	s0,sp,16
    80007318:	00813403          	ld	s0,8(sp)
    8000731c:	01010113          	addi	sp,sp,16
    80007320:	00008067          	ret

0000000080007324 <usertrapret>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813423          	sd	s0,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	00813403          	ld	s0,8(sp)
    80007334:	01010113          	addi	sp,sp,16
    80007338:	00008067          	ret

000000008000733c <kerneltrap>:
    8000733c:	fe010113          	addi	sp,sp,-32
    80007340:	00813823          	sd	s0,16(sp)
    80007344:	00113c23          	sd	ra,24(sp)
    80007348:	00913423          	sd	s1,8(sp)
    8000734c:	02010413          	addi	s0,sp,32
    80007350:	142025f3          	csrr	a1,scause
    80007354:	100027f3          	csrr	a5,sstatus
    80007358:	0027f793          	andi	a5,a5,2
    8000735c:	10079c63          	bnez	a5,80007474 <kerneltrap+0x138>
    80007360:	142027f3          	csrr	a5,scause
    80007364:	0207ce63          	bltz	a5,800073a0 <kerneltrap+0x64>
    80007368:	00003517          	auipc	a0,0x3
    8000736c:	34850513          	addi	a0,a0,840 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80007370:	00001097          	auipc	ra,0x1
    80007374:	888080e7          	jalr	-1912(ra) # 80007bf8 <__printf>
    80007378:	141025f3          	csrr	a1,sepc
    8000737c:	14302673          	csrr	a2,stval
    80007380:	00003517          	auipc	a0,0x3
    80007384:	34050513          	addi	a0,a0,832 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007388:	00001097          	auipc	ra,0x1
    8000738c:	870080e7          	jalr	-1936(ra) # 80007bf8 <__printf>
    80007390:	00003517          	auipc	a0,0x3
    80007394:	34850513          	addi	a0,a0,840 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    80007398:	00001097          	auipc	ra,0x1
    8000739c:	804080e7          	jalr	-2044(ra) # 80007b9c <panic>
    800073a0:	0ff7f713          	andi	a4,a5,255
    800073a4:	00900693          	li	a3,9
    800073a8:	04d70063          	beq	a4,a3,800073e8 <kerneltrap+0xac>
    800073ac:	fff00713          	li	a4,-1
    800073b0:	03f71713          	slli	a4,a4,0x3f
    800073b4:	00170713          	addi	a4,a4,1
    800073b8:	fae798e3          	bne	a5,a4,80007368 <kerneltrap+0x2c>
    800073bc:	00000097          	auipc	ra,0x0
    800073c0:	e00080e7          	jalr	-512(ra) # 800071bc <cpuid>
    800073c4:	06050663          	beqz	a0,80007430 <kerneltrap+0xf4>
    800073c8:	144027f3          	csrr	a5,sip
    800073cc:	ffd7f793          	andi	a5,a5,-3
    800073d0:	14479073          	csrw	sip,a5
    800073d4:	01813083          	ld	ra,24(sp)
    800073d8:	01013403          	ld	s0,16(sp)
    800073dc:	00813483          	ld	s1,8(sp)
    800073e0:	02010113          	addi	sp,sp,32
    800073e4:	00008067          	ret
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	3cc080e7          	jalr	972(ra) # 800077b4 <plic_claim>
    800073f0:	00a00793          	li	a5,10
    800073f4:	00050493          	mv	s1,a0
    800073f8:	06f50863          	beq	a0,a5,80007468 <kerneltrap+0x12c>
    800073fc:	fc050ce3          	beqz	a0,800073d4 <kerneltrap+0x98>
    80007400:	00050593          	mv	a1,a0
    80007404:	00003517          	auipc	a0,0x3
    80007408:	28c50513          	addi	a0,a0,652 # 8000a690 <CONSOLE_STATUS+0x680>
    8000740c:	00000097          	auipc	ra,0x0
    80007410:	7ec080e7          	jalr	2028(ra) # 80007bf8 <__printf>
    80007414:	01013403          	ld	s0,16(sp)
    80007418:	01813083          	ld	ra,24(sp)
    8000741c:	00048513          	mv	a0,s1
    80007420:	00813483          	ld	s1,8(sp)
    80007424:	02010113          	addi	sp,sp,32
    80007428:	00000317          	auipc	t1,0x0
    8000742c:	3c430067          	jr	964(t1) # 800077ec <plic_complete>
    80007430:	00007517          	auipc	a0,0x7
    80007434:	b9050513          	addi	a0,a0,-1136 # 8000dfc0 <tickslock>
    80007438:	00001097          	auipc	ra,0x1
    8000743c:	494080e7          	jalr	1172(ra) # 800088cc <acquire>
    80007440:	00006717          	auipc	a4,0x6
    80007444:	9f470713          	addi	a4,a4,-1548 # 8000ce34 <ticks>
    80007448:	00072783          	lw	a5,0(a4)
    8000744c:	00007517          	auipc	a0,0x7
    80007450:	b7450513          	addi	a0,a0,-1164 # 8000dfc0 <tickslock>
    80007454:	0017879b          	addiw	a5,a5,1
    80007458:	00f72023          	sw	a5,0(a4)
    8000745c:	00001097          	auipc	ra,0x1
    80007460:	53c080e7          	jalr	1340(ra) # 80008998 <release>
    80007464:	f65ff06f          	j	800073c8 <kerneltrap+0x8c>
    80007468:	00001097          	auipc	ra,0x1
    8000746c:	098080e7          	jalr	152(ra) # 80008500 <uartintr>
    80007470:	fa5ff06f          	j	80007414 <kerneltrap+0xd8>
    80007474:	00003517          	auipc	a0,0x3
    80007478:	1fc50513          	addi	a0,a0,508 # 8000a670 <CONSOLE_STATUS+0x660>
    8000747c:	00000097          	auipc	ra,0x0
    80007480:	720080e7          	jalr	1824(ra) # 80007b9c <panic>

0000000080007484 <clockintr>:
    80007484:	fe010113          	addi	sp,sp,-32
    80007488:	00813823          	sd	s0,16(sp)
    8000748c:	00913423          	sd	s1,8(sp)
    80007490:	00113c23          	sd	ra,24(sp)
    80007494:	02010413          	addi	s0,sp,32
    80007498:	00007497          	auipc	s1,0x7
    8000749c:	b2848493          	addi	s1,s1,-1240 # 8000dfc0 <tickslock>
    800074a0:	00048513          	mv	a0,s1
    800074a4:	00001097          	auipc	ra,0x1
    800074a8:	428080e7          	jalr	1064(ra) # 800088cc <acquire>
    800074ac:	00006717          	auipc	a4,0x6
    800074b0:	98870713          	addi	a4,a4,-1656 # 8000ce34 <ticks>
    800074b4:	00072783          	lw	a5,0(a4)
    800074b8:	01013403          	ld	s0,16(sp)
    800074bc:	01813083          	ld	ra,24(sp)
    800074c0:	00048513          	mv	a0,s1
    800074c4:	0017879b          	addiw	a5,a5,1
    800074c8:	00813483          	ld	s1,8(sp)
    800074cc:	00f72023          	sw	a5,0(a4)
    800074d0:	02010113          	addi	sp,sp,32
    800074d4:	00001317          	auipc	t1,0x1
    800074d8:	4c430067          	jr	1220(t1) # 80008998 <release>

00000000800074dc <devintr>:
    800074dc:	142027f3          	csrr	a5,scause
    800074e0:	00000513          	li	a0,0
    800074e4:	0007c463          	bltz	a5,800074ec <devintr+0x10>
    800074e8:	00008067          	ret
    800074ec:	fe010113          	addi	sp,sp,-32
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00113c23          	sd	ra,24(sp)
    800074f8:	00913423          	sd	s1,8(sp)
    800074fc:	02010413          	addi	s0,sp,32
    80007500:	0ff7f713          	andi	a4,a5,255
    80007504:	00900693          	li	a3,9
    80007508:	04d70c63          	beq	a4,a3,80007560 <devintr+0x84>
    8000750c:	fff00713          	li	a4,-1
    80007510:	03f71713          	slli	a4,a4,0x3f
    80007514:	00170713          	addi	a4,a4,1
    80007518:	00e78c63          	beq	a5,a4,80007530 <devintr+0x54>
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	01013403          	ld	s0,16(sp)
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret
    80007530:	00000097          	auipc	ra,0x0
    80007534:	c8c080e7          	jalr	-884(ra) # 800071bc <cpuid>
    80007538:	06050663          	beqz	a0,800075a4 <devintr+0xc8>
    8000753c:	144027f3          	csrr	a5,sip
    80007540:	ffd7f793          	andi	a5,a5,-3
    80007544:	14479073          	csrw	sip,a5
    80007548:	01813083          	ld	ra,24(sp)
    8000754c:	01013403          	ld	s0,16(sp)
    80007550:	00813483          	ld	s1,8(sp)
    80007554:	00200513          	li	a0,2
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret
    80007560:	00000097          	auipc	ra,0x0
    80007564:	254080e7          	jalr	596(ra) # 800077b4 <plic_claim>
    80007568:	00a00793          	li	a5,10
    8000756c:	00050493          	mv	s1,a0
    80007570:	06f50663          	beq	a0,a5,800075dc <devintr+0x100>
    80007574:	00100513          	li	a0,1
    80007578:	fa0482e3          	beqz	s1,8000751c <devintr+0x40>
    8000757c:	00048593          	mv	a1,s1
    80007580:	00003517          	auipc	a0,0x3
    80007584:	11050513          	addi	a0,a0,272 # 8000a690 <CONSOLE_STATUS+0x680>
    80007588:	00000097          	auipc	ra,0x0
    8000758c:	670080e7          	jalr	1648(ra) # 80007bf8 <__printf>
    80007590:	00048513          	mv	a0,s1
    80007594:	00000097          	auipc	ra,0x0
    80007598:	258080e7          	jalr	600(ra) # 800077ec <plic_complete>
    8000759c:	00100513          	li	a0,1
    800075a0:	f7dff06f          	j	8000751c <devintr+0x40>
    800075a4:	00007517          	auipc	a0,0x7
    800075a8:	a1c50513          	addi	a0,a0,-1508 # 8000dfc0 <tickslock>
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	320080e7          	jalr	800(ra) # 800088cc <acquire>
    800075b4:	00006717          	auipc	a4,0x6
    800075b8:	88070713          	addi	a4,a4,-1920 # 8000ce34 <ticks>
    800075bc:	00072783          	lw	a5,0(a4)
    800075c0:	00007517          	auipc	a0,0x7
    800075c4:	a0050513          	addi	a0,a0,-1536 # 8000dfc0 <tickslock>
    800075c8:	0017879b          	addiw	a5,a5,1
    800075cc:	00f72023          	sw	a5,0(a4)
    800075d0:	00001097          	auipc	ra,0x1
    800075d4:	3c8080e7          	jalr	968(ra) # 80008998 <release>
    800075d8:	f65ff06f          	j	8000753c <devintr+0x60>
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	f24080e7          	jalr	-220(ra) # 80008500 <uartintr>
    800075e4:	fadff06f          	j	80007590 <devintr+0xb4>
	...

00000000800075f0 <kernelvec>:
    800075f0:	f0010113          	addi	sp,sp,-256
    800075f4:	00113023          	sd	ra,0(sp)
    800075f8:	00213423          	sd	sp,8(sp)
    800075fc:	00313823          	sd	gp,16(sp)
    80007600:	00413c23          	sd	tp,24(sp)
    80007604:	02513023          	sd	t0,32(sp)
    80007608:	02613423          	sd	t1,40(sp)
    8000760c:	02713823          	sd	t2,48(sp)
    80007610:	02813c23          	sd	s0,56(sp)
    80007614:	04913023          	sd	s1,64(sp)
    80007618:	04a13423          	sd	a0,72(sp)
    8000761c:	04b13823          	sd	a1,80(sp)
    80007620:	04c13c23          	sd	a2,88(sp)
    80007624:	06d13023          	sd	a3,96(sp)
    80007628:	06e13423          	sd	a4,104(sp)
    8000762c:	06f13823          	sd	a5,112(sp)
    80007630:	07013c23          	sd	a6,120(sp)
    80007634:	09113023          	sd	a7,128(sp)
    80007638:	09213423          	sd	s2,136(sp)
    8000763c:	09313823          	sd	s3,144(sp)
    80007640:	09413c23          	sd	s4,152(sp)
    80007644:	0b513023          	sd	s5,160(sp)
    80007648:	0b613423          	sd	s6,168(sp)
    8000764c:	0b713823          	sd	s7,176(sp)
    80007650:	0b813c23          	sd	s8,184(sp)
    80007654:	0d913023          	sd	s9,192(sp)
    80007658:	0da13423          	sd	s10,200(sp)
    8000765c:	0db13823          	sd	s11,208(sp)
    80007660:	0dc13c23          	sd	t3,216(sp)
    80007664:	0fd13023          	sd	t4,224(sp)
    80007668:	0fe13423          	sd	t5,232(sp)
    8000766c:	0ff13823          	sd	t6,240(sp)
    80007670:	ccdff0ef          	jal	ra,8000733c <kerneltrap>
    80007674:	00013083          	ld	ra,0(sp)
    80007678:	00813103          	ld	sp,8(sp)
    8000767c:	01013183          	ld	gp,16(sp)
    80007680:	02013283          	ld	t0,32(sp)
    80007684:	02813303          	ld	t1,40(sp)
    80007688:	03013383          	ld	t2,48(sp)
    8000768c:	03813403          	ld	s0,56(sp)
    80007690:	04013483          	ld	s1,64(sp)
    80007694:	04813503          	ld	a0,72(sp)
    80007698:	05013583          	ld	a1,80(sp)
    8000769c:	05813603          	ld	a2,88(sp)
    800076a0:	06013683          	ld	a3,96(sp)
    800076a4:	06813703          	ld	a4,104(sp)
    800076a8:	07013783          	ld	a5,112(sp)
    800076ac:	07813803          	ld	a6,120(sp)
    800076b0:	08013883          	ld	a7,128(sp)
    800076b4:	08813903          	ld	s2,136(sp)
    800076b8:	09013983          	ld	s3,144(sp)
    800076bc:	09813a03          	ld	s4,152(sp)
    800076c0:	0a013a83          	ld	s5,160(sp)
    800076c4:	0a813b03          	ld	s6,168(sp)
    800076c8:	0b013b83          	ld	s7,176(sp)
    800076cc:	0b813c03          	ld	s8,184(sp)
    800076d0:	0c013c83          	ld	s9,192(sp)
    800076d4:	0c813d03          	ld	s10,200(sp)
    800076d8:	0d013d83          	ld	s11,208(sp)
    800076dc:	0d813e03          	ld	t3,216(sp)
    800076e0:	0e013e83          	ld	t4,224(sp)
    800076e4:	0e813f03          	ld	t5,232(sp)
    800076e8:	0f013f83          	ld	t6,240(sp)
    800076ec:	10010113          	addi	sp,sp,256
    800076f0:	10200073          	sret
    800076f4:	00000013          	nop
    800076f8:	00000013          	nop
    800076fc:	00000013          	nop

0000000080007700 <timervec>:
    80007700:	34051573          	csrrw	a0,mscratch,a0
    80007704:	00b53023          	sd	a1,0(a0)
    80007708:	00c53423          	sd	a2,8(a0)
    8000770c:	00d53823          	sd	a3,16(a0)
    80007710:	01853583          	ld	a1,24(a0)
    80007714:	02053603          	ld	a2,32(a0)
    80007718:	0005b683          	ld	a3,0(a1)
    8000771c:	00c686b3          	add	a3,a3,a2
    80007720:	00d5b023          	sd	a3,0(a1)
    80007724:	00200593          	li	a1,2
    80007728:	14459073          	csrw	sip,a1
    8000772c:	01053683          	ld	a3,16(a0)
    80007730:	00853603          	ld	a2,8(a0)
    80007734:	00053583          	ld	a1,0(a0)
    80007738:	34051573          	csrrw	a0,mscratch,a0
    8000773c:	30200073          	mret

0000000080007740 <plicinit>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00813403          	ld	s0,8(sp)
    80007750:	0c0007b7          	lui	a5,0xc000
    80007754:	00100713          	li	a4,1
    80007758:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000775c:	00e7a223          	sw	a4,4(a5)
    80007760:	01010113          	addi	sp,sp,16
    80007764:	00008067          	ret

0000000080007768 <plicinithart>:
    80007768:	ff010113          	addi	sp,sp,-16
    8000776c:	00813023          	sd	s0,0(sp)
    80007770:	00113423          	sd	ra,8(sp)
    80007774:	01010413          	addi	s0,sp,16
    80007778:	00000097          	auipc	ra,0x0
    8000777c:	a44080e7          	jalr	-1468(ra) # 800071bc <cpuid>
    80007780:	0085171b          	slliw	a4,a0,0x8
    80007784:	0c0027b7          	lui	a5,0xc002
    80007788:	00e787b3          	add	a5,a5,a4
    8000778c:	40200713          	li	a4,1026
    80007790:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007794:	00813083          	ld	ra,8(sp)
    80007798:	00013403          	ld	s0,0(sp)
    8000779c:	00d5151b          	slliw	a0,a0,0xd
    800077a0:	0c2017b7          	lui	a5,0xc201
    800077a4:	00a78533          	add	a0,a5,a0
    800077a8:	00052023          	sw	zero,0(a0)
    800077ac:	01010113          	addi	sp,sp,16
    800077b0:	00008067          	ret

00000000800077b4 <plic_claim>:
    800077b4:	ff010113          	addi	sp,sp,-16
    800077b8:	00813023          	sd	s0,0(sp)
    800077bc:	00113423          	sd	ra,8(sp)
    800077c0:	01010413          	addi	s0,sp,16
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	9f8080e7          	jalr	-1544(ra) # 800071bc <cpuid>
    800077cc:	00813083          	ld	ra,8(sp)
    800077d0:	00013403          	ld	s0,0(sp)
    800077d4:	00d5151b          	slliw	a0,a0,0xd
    800077d8:	0c2017b7          	lui	a5,0xc201
    800077dc:	00a78533          	add	a0,a5,a0
    800077e0:	00452503          	lw	a0,4(a0)
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00008067          	ret

00000000800077ec <plic_complete>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	00113c23          	sd	ra,24(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	00050493          	mv	s1,a0
    80007804:	00000097          	auipc	ra,0x0
    80007808:	9b8080e7          	jalr	-1608(ra) # 800071bc <cpuid>
    8000780c:	01813083          	ld	ra,24(sp)
    80007810:	01013403          	ld	s0,16(sp)
    80007814:	00d5179b          	slliw	a5,a0,0xd
    80007818:	0c201737          	lui	a4,0xc201
    8000781c:	00f707b3          	add	a5,a4,a5
    80007820:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007824:	00813483          	ld	s1,8(sp)
    80007828:	02010113          	addi	sp,sp,32
    8000782c:	00008067          	ret

0000000080007830 <consolewrite>:
    80007830:	fb010113          	addi	sp,sp,-80
    80007834:	04813023          	sd	s0,64(sp)
    80007838:	04113423          	sd	ra,72(sp)
    8000783c:	02913c23          	sd	s1,56(sp)
    80007840:	03213823          	sd	s2,48(sp)
    80007844:	03313423          	sd	s3,40(sp)
    80007848:	03413023          	sd	s4,32(sp)
    8000784c:	01513c23          	sd	s5,24(sp)
    80007850:	05010413          	addi	s0,sp,80
    80007854:	06c05c63          	blez	a2,800078cc <consolewrite+0x9c>
    80007858:	00060993          	mv	s3,a2
    8000785c:	00050a13          	mv	s4,a0
    80007860:	00058493          	mv	s1,a1
    80007864:	00000913          	li	s2,0
    80007868:	fff00a93          	li	s5,-1
    8000786c:	01c0006f          	j	80007888 <consolewrite+0x58>
    80007870:	fbf44503          	lbu	a0,-65(s0)
    80007874:	0019091b          	addiw	s2,s2,1
    80007878:	00148493          	addi	s1,s1,1
    8000787c:	00001097          	auipc	ra,0x1
    80007880:	a9c080e7          	jalr	-1380(ra) # 80008318 <uartputc>
    80007884:	03298063          	beq	s3,s2,800078a4 <consolewrite+0x74>
    80007888:	00048613          	mv	a2,s1
    8000788c:	00100693          	li	a3,1
    80007890:	000a0593          	mv	a1,s4
    80007894:	fbf40513          	addi	a0,s0,-65
    80007898:	00000097          	auipc	ra,0x0
    8000789c:	9dc080e7          	jalr	-1572(ra) # 80007274 <either_copyin>
    800078a0:	fd5518e3          	bne	a0,s5,80007870 <consolewrite+0x40>
    800078a4:	04813083          	ld	ra,72(sp)
    800078a8:	04013403          	ld	s0,64(sp)
    800078ac:	03813483          	ld	s1,56(sp)
    800078b0:	02813983          	ld	s3,40(sp)
    800078b4:	02013a03          	ld	s4,32(sp)
    800078b8:	01813a83          	ld	s5,24(sp)
    800078bc:	00090513          	mv	a0,s2
    800078c0:	03013903          	ld	s2,48(sp)
    800078c4:	05010113          	addi	sp,sp,80
    800078c8:	00008067          	ret
    800078cc:	00000913          	li	s2,0
    800078d0:	fd5ff06f          	j	800078a4 <consolewrite+0x74>

00000000800078d4 <consoleread>:
    800078d4:	f9010113          	addi	sp,sp,-112
    800078d8:	06813023          	sd	s0,96(sp)
    800078dc:	04913c23          	sd	s1,88(sp)
    800078e0:	05213823          	sd	s2,80(sp)
    800078e4:	05313423          	sd	s3,72(sp)
    800078e8:	05413023          	sd	s4,64(sp)
    800078ec:	03513c23          	sd	s5,56(sp)
    800078f0:	03613823          	sd	s6,48(sp)
    800078f4:	03713423          	sd	s7,40(sp)
    800078f8:	03813023          	sd	s8,32(sp)
    800078fc:	06113423          	sd	ra,104(sp)
    80007900:	01913c23          	sd	s9,24(sp)
    80007904:	07010413          	addi	s0,sp,112
    80007908:	00060b93          	mv	s7,a2
    8000790c:	00050913          	mv	s2,a0
    80007910:	00058c13          	mv	s8,a1
    80007914:	00060b1b          	sext.w	s6,a2
    80007918:	00006497          	auipc	s1,0x6
    8000791c:	6d048493          	addi	s1,s1,1744 # 8000dfe8 <cons>
    80007920:	00400993          	li	s3,4
    80007924:	fff00a13          	li	s4,-1
    80007928:	00a00a93          	li	s5,10
    8000792c:	05705e63          	blez	s7,80007988 <consoleread+0xb4>
    80007930:	09c4a703          	lw	a4,156(s1)
    80007934:	0984a783          	lw	a5,152(s1)
    80007938:	0007071b          	sext.w	a4,a4
    8000793c:	08e78463          	beq	a5,a4,800079c4 <consoleread+0xf0>
    80007940:	07f7f713          	andi	a4,a5,127
    80007944:	00e48733          	add	a4,s1,a4
    80007948:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000794c:	0017869b          	addiw	a3,a5,1
    80007950:	08d4ac23          	sw	a3,152(s1)
    80007954:	00070c9b          	sext.w	s9,a4
    80007958:	0b370663          	beq	a4,s3,80007a04 <consoleread+0x130>
    8000795c:	00100693          	li	a3,1
    80007960:	f9f40613          	addi	a2,s0,-97
    80007964:	000c0593          	mv	a1,s8
    80007968:	00090513          	mv	a0,s2
    8000796c:	f8e40fa3          	sb	a4,-97(s0)
    80007970:	00000097          	auipc	ra,0x0
    80007974:	8b8080e7          	jalr	-1864(ra) # 80007228 <either_copyout>
    80007978:	01450863          	beq	a0,s4,80007988 <consoleread+0xb4>
    8000797c:	001c0c13          	addi	s8,s8,1
    80007980:	fffb8b9b          	addiw	s7,s7,-1
    80007984:	fb5c94e3          	bne	s9,s5,8000792c <consoleread+0x58>
    80007988:	000b851b          	sext.w	a0,s7
    8000798c:	06813083          	ld	ra,104(sp)
    80007990:	06013403          	ld	s0,96(sp)
    80007994:	05813483          	ld	s1,88(sp)
    80007998:	05013903          	ld	s2,80(sp)
    8000799c:	04813983          	ld	s3,72(sp)
    800079a0:	04013a03          	ld	s4,64(sp)
    800079a4:	03813a83          	ld	s5,56(sp)
    800079a8:	02813b83          	ld	s7,40(sp)
    800079ac:	02013c03          	ld	s8,32(sp)
    800079b0:	01813c83          	ld	s9,24(sp)
    800079b4:	40ab053b          	subw	a0,s6,a0
    800079b8:	03013b03          	ld	s6,48(sp)
    800079bc:	07010113          	addi	sp,sp,112
    800079c0:	00008067          	ret
    800079c4:	00001097          	auipc	ra,0x1
    800079c8:	1d8080e7          	jalr	472(ra) # 80008b9c <push_on>
    800079cc:	0984a703          	lw	a4,152(s1)
    800079d0:	09c4a783          	lw	a5,156(s1)
    800079d4:	0007879b          	sext.w	a5,a5
    800079d8:	fef70ce3          	beq	a4,a5,800079d0 <consoleread+0xfc>
    800079dc:	00001097          	auipc	ra,0x1
    800079e0:	234080e7          	jalr	564(ra) # 80008c10 <pop_on>
    800079e4:	0984a783          	lw	a5,152(s1)
    800079e8:	07f7f713          	andi	a4,a5,127
    800079ec:	00e48733          	add	a4,s1,a4
    800079f0:	01874703          	lbu	a4,24(a4)
    800079f4:	0017869b          	addiw	a3,a5,1
    800079f8:	08d4ac23          	sw	a3,152(s1)
    800079fc:	00070c9b          	sext.w	s9,a4
    80007a00:	f5371ee3          	bne	a4,s3,8000795c <consoleread+0x88>
    80007a04:	000b851b          	sext.w	a0,s7
    80007a08:	f96bf2e3          	bgeu	s7,s6,8000798c <consoleread+0xb8>
    80007a0c:	08f4ac23          	sw	a5,152(s1)
    80007a10:	f7dff06f          	j	8000798c <consoleread+0xb8>

0000000080007a14 <consputc>:
    80007a14:	10000793          	li	a5,256
    80007a18:	00f50663          	beq	a0,a5,80007a24 <consputc+0x10>
    80007a1c:	00001317          	auipc	t1,0x1
    80007a20:	9f430067          	jr	-1548(t1) # 80008410 <uartputc_sync>
    80007a24:	ff010113          	addi	sp,sp,-16
    80007a28:	00113423          	sd	ra,8(sp)
    80007a2c:	00813023          	sd	s0,0(sp)
    80007a30:	01010413          	addi	s0,sp,16
    80007a34:	00800513          	li	a0,8
    80007a38:	00001097          	auipc	ra,0x1
    80007a3c:	9d8080e7          	jalr	-1576(ra) # 80008410 <uartputc_sync>
    80007a40:	02000513          	li	a0,32
    80007a44:	00001097          	auipc	ra,0x1
    80007a48:	9cc080e7          	jalr	-1588(ra) # 80008410 <uartputc_sync>
    80007a4c:	00013403          	ld	s0,0(sp)
    80007a50:	00813083          	ld	ra,8(sp)
    80007a54:	00800513          	li	a0,8
    80007a58:	01010113          	addi	sp,sp,16
    80007a5c:	00001317          	auipc	t1,0x1
    80007a60:	9b430067          	jr	-1612(t1) # 80008410 <uartputc_sync>

0000000080007a64 <consoleintr>:
    80007a64:	fe010113          	addi	sp,sp,-32
    80007a68:	00813823          	sd	s0,16(sp)
    80007a6c:	00913423          	sd	s1,8(sp)
    80007a70:	01213023          	sd	s2,0(sp)
    80007a74:	00113c23          	sd	ra,24(sp)
    80007a78:	02010413          	addi	s0,sp,32
    80007a7c:	00006917          	auipc	s2,0x6
    80007a80:	56c90913          	addi	s2,s2,1388 # 8000dfe8 <cons>
    80007a84:	00050493          	mv	s1,a0
    80007a88:	00090513          	mv	a0,s2
    80007a8c:	00001097          	auipc	ra,0x1
    80007a90:	e40080e7          	jalr	-448(ra) # 800088cc <acquire>
    80007a94:	02048c63          	beqz	s1,80007acc <consoleintr+0x68>
    80007a98:	0a092783          	lw	a5,160(s2)
    80007a9c:	09892703          	lw	a4,152(s2)
    80007aa0:	07f00693          	li	a3,127
    80007aa4:	40e7873b          	subw	a4,a5,a4
    80007aa8:	02e6e263          	bltu	a3,a4,80007acc <consoleintr+0x68>
    80007aac:	00d00713          	li	a4,13
    80007ab0:	04e48063          	beq	s1,a4,80007af0 <consoleintr+0x8c>
    80007ab4:	07f7f713          	andi	a4,a5,127
    80007ab8:	00e90733          	add	a4,s2,a4
    80007abc:	0017879b          	addiw	a5,a5,1
    80007ac0:	0af92023          	sw	a5,160(s2)
    80007ac4:	00970c23          	sb	s1,24(a4)
    80007ac8:	08f92e23          	sw	a5,156(s2)
    80007acc:	01013403          	ld	s0,16(sp)
    80007ad0:	01813083          	ld	ra,24(sp)
    80007ad4:	00813483          	ld	s1,8(sp)
    80007ad8:	00013903          	ld	s2,0(sp)
    80007adc:	00006517          	auipc	a0,0x6
    80007ae0:	50c50513          	addi	a0,a0,1292 # 8000dfe8 <cons>
    80007ae4:	02010113          	addi	sp,sp,32
    80007ae8:	00001317          	auipc	t1,0x1
    80007aec:	eb030067          	jr	-336(t1) # 80008998 <release>
    80007af0:	00a00493          	li	s1,10
    80007af4:	fc1ff06f          	j	80007ab4 <consoleintr+0x50>

0000000080007af8 <consoleinit>:
    80007af8:	fe010113          	addi	sp,sp,-32
    80007afc:	00113c23          	sd	ra,24(sp)
    80007b00:	00813823          	sd	s0,16(sp)
    80007b04:	00913423          	sd	s1,8(sp)
    80007b08:	02010413          	addi	s0,sp,32
    80007b0c:	00006497          	auipc	s1,0x6
    80007b10:	4dc48493          	addi	s1,s1,1244 # 8000dfe8 <cons>
    80007b14:	00048513          	mv	a0,s1
    80007b18:	00003597          	auipc	a1,0x3
    80007b1c:	bd058593          	addi	a1,a1,-1072 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007b20:	00001097          	auipc	ra,0x1
    80007b24:	d88080e7          	jalr	-632(ra) # 800088a8 <initlock>
    80007b28:	00000097          	auipc	ra,0x0
    80007b2c:	7ac080e7          	jalr	1964(ra) # 800082d4 <uartinit>
    80007b30:	01813083          	ld	ra,24(sp)
    80007b34:	01013403          	ld	s0,16(sp)
    80007b38:	00000797          	auipc	a5,0x0
    80007b3c:	d9c78793          	addi	a5,a5,-612 # 800078d4 <consoleread>
    80007b40:	0af4bc23          	sd	a5,184(s1)
    80007b44:	00000797          	auipc	a5,0x0
    80007b48:	cec78793          	addi	a5,a5,-788 # 80007830 <consolewrite>
    80007b4c:	0cf4b023          	sd	a5,192(s1)
    80007b50:	00813483          	ld	s1,8(sp)
    80007b54:	02010113          	addi	sp,sp,32
    80007b58:	00008067          	ret

0000000080007b5c <console_read>:
    80007b5c:	ff010113          	addi	sp,sp,-16
    80007b60:	00813423          	sd	s0,8(sp)
    80007b64:	01010413          	addi	s0,sp,16
    80007b68:	00813403          	ld	s0,8(sp)
    80007b6c:	00006317          	auipc	t1,0x6
    80007b70:	53433303          	ld	t1,1332(t1) # 8000e0a0 <devsw+0x10>
    80007b74:	01010113          	addi	sp,sp,16
    80007b78:	00030067          	jr	t1

0000000080007b7c <console_write>:
    80007b7c:	ff010113          	addi	sp,sp,-16
    80007b80:	00813423          	sd	s0,8(sp)
    80007b84:	01010413          	addi	s0,sp,16
    80007b88:	00813403          	ld	s0,8(sp)
    80007b8c:	00006317          	auipc	t1,0x6
    80007b90:	51c33303          	ld	t1,1308(t1) # 8000e0a8 <devsw+0x18>
    80007b94:	01010113          	addi	sp,sp,16
    80007b98:	00030067          	jr	t1

0000000080007b9c <panic>:
    80007b9c:	fe010113          	addi	sp,sp,-32
    80007ba0:	00113c23          	sd	ra,24(sp)
    80007ba4:	00813823          	sd	s0,16(sp)
    80007ba8:	00913423          	sd	s1,8(sp)
    80007bac:	02010413          	addi	s0,sp,32
    80007bb0:	00050493          	mv	s1,a0
    80007bb4:	00003517          	auipc	a0,0x3
    80007bb8:	b3c50513          	addi	a0,a0,-1220 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007bbc:	00006797          	auipc	a5,0x6
    80007bc0:	5807a623          	sw	zero,1420(a5) # 8000e148 <pr+0x18>
    80007bc4:	00000097          	auipc	ra,0x0
    80007bc8:	034080e7          	jalr	52(ra) # 80007bf8 <__printf>
    80007bcc:	00048513          	mv	a0,s1
    80007bd0:	00000097          	auipc	ra,0x0
    80007bd4:	028080e7          	jalr	40(ra) # 80007bf8 <__printf>
    80007bd8:	00003517          	auipc	a0,0x3
    80007bdc:	8a050513          	addi	a0,a0,-1888 # 8000a478 <CONSOLE_STATUS+0x468>
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	018080e7          	jalr	24(ra) # 80007bf8 <__printf>
    80007be8:	00100793          	li	a5,1
    80007bec:	00005717          	auipc	a4,0x5
    80007bf0:	24f72623          	sw	a5,588(a4) # 8000ce38 <panicked>
    80007bf4:	0000006f          	j	80007bf4 <panic+0x58>

0000000080007bf8 <__printf>:
    80007bf8:	f3010113          	addi	sp,sp,-208
    80007bfc:	08813023          	sd	s0,128(sp)
    80007c00:	07313423          	sd	s3,104(sp)
    80007c04:	09010413          	addi	s0,sp,144
    80007c08:	05813023          	sd	s8,64(sp)
    80007c0c:	08113423          	sd	ra,136(sp)
    80007c10:	06913c23          	sd	s1,120(sp)
    80007c14:	07213823          	sd	s2,112(sp)
    80007c18:	07413023          	sd	s4,96(sp)
    80007c1c:	05513c23          	sd	s5,88(sp)
    80007c20:	05613823          	sd	s6,80(sp)
    80007c24:	05713423          	sd	s7,72(sp)
    80007c28:	03913c23          	sd	s9,56(sp)
    80007c2c:	03a13823          	sd	s10,48(sp)
    80007c30:	03b13423          	sd	s11,40(sp)
    80007c34:	00006317          	auipc	t1,0x6
    80007c38:	4fc30313          	addi	t1,t1,1276 # 8000e130 <pr>
    80007c3c:	01832c03          	lw	s8,24(t1)
    80007c40:	00b43423          	sd	a1,8(s0)
    80007c44:	00c43823          	sd	a2,16(s0)
    80007c48:	00d43c23          	sd	a3,24(s0)
    80007c4c:	02e43023          	sd	a4,32(s0)
    80007c50:	02f43423          	sd	a5,40(s0)
    80007c54:	03043823          	sd	a6,48(s0)
    80007c58:	03143c23          	sd	a7,56(s0)
    80007c5c:	00050993          	mv	s3,a0
    80007c60:	4a0c1663          	bnez	s8,8000810c <__printf+0x514>
    80007c64:	60098c63          	beqz	s3,8000827c <__printf+0x684>
    80007c68:	0009c503          	lbu	a0,0(s3)
    80007c6c:	00840793          	addi	a5,s0,8
    80007c70:	f6f43c23          	sd	a5,-136(s0)
    80007c74:	00000493          	li	s1,0
    80007c78:	22050063          	beqz	a0,80007e98 <__printf+0x2a0>
    80007c7c:	00002a37          	lui	s4,0x2
    80007c80:	00018ab7          	lui	s5,0x18
    80007c84:	000f4b37          	lui	s6,0xf4
    80007c88:	00989bb7          	lui	s7,0x989
    80007c8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c9c:	00148c9b          	addiw	s9,s1,1
    80007ca0:	02500793          	li	a5,37
    80007ca4:	01998933          	add	s2,s3,s9
    80007ca8:	38f51263          	bne	a0,a5,8000802c <__printf+0x434>
    80007cac:	00094783          	lbu	a5,0(s2)
    80007cb0:	00078c9b          	sext.w	s9,a5
    80007cb4:	1e078263          	beqz	a5,80007e98 <__printf+0x2a0>
    80007cb8:	0024849b          	addiw	s1,s1,2
    80007cbc:	07000713          	li	a4,112
    80007cc0:	00998933          	add	s2,s3,s1
    80007cc4:	38e78a63          	beq	a5,a4,80008058 <__printf+0x460>
    80007cc8:	20f76863          	bltu	a4,a5,80007ed8 <__printf+0x2e0>
    80007ccc:	42a78863          	beq	a5,a0,800080fc <__printf+0x504>
    80007cd0:	06400713          	li	a4,100
    80007cd4:	40e79663          	bne	a5,a4,800080e0 <__printf+0x4e8>
    80007cd8:	f7843783          	ld	a5,-136(s0)
    80007cdc:	0007a603          	lw	a2,0(a5)
    80007ce0:	00878793          	addi	a5,a5,8
    80007ce4:	f6f43c23          	sd	a5,-136(s0)
    80007ce8:	42064a63          	bltz	a2,8000811c <__printf+0x524>
    80007cec:	00a00713          	li	a4,10
    80007cf0:	02e677bb          	remuw	a5,a2,a4
    80007cf4:	00003d97          	auipc	s11,0x3
    80007cf8:	a24d8d93          	addi	s11,s11,-1500 # 8000a718 <digits>
    80007cfc:	00900593          	li	a1,9
    80007d00:	0006051b          	sext.w	a0,a2
    80007d04:	00000c93          	li	s9,0
    80007d08:	02079793          	slli	a5,a5,0x20
    80007d0c:	0207d793          	srli	a5,a5,0x20
    80007d10:	00fd87b3          	add	a5,s11,a5
    80007d14:	0007c783          	lbu	a5,0(a5)
    80007d18:	02e656bb          	divuw	a3,a2,a4
    80007d1c:	f8f40023          	sb	a5,-128(s0)
    80007d20:	14c5d863          	bge	a1,a2,80007e70 <__printf+0x278>
    80007d24:	06300593          	li	a1,99
    80007d28:	00100c93          	li	s9,1
    80007d2c:	02e6f7bb          	remuw	a5,a3,a4
    80007d30:	02079793          	slli	a5,a5,0x20
    80007d34:	0207d793          	srli	a5,a5,0x20
    80007d38:	00fd87b3          	add	a5,s11,a5
    80007d3c:	0007c783          	lbu	a5,0(a5)
    80007d40:	02e6d73b          	divuw	a4,a3,a4
    80007d44:	f8f400a3          	sb	a5,-127(s0)
    80007d48:	12a5f463          	bgeu	a1,a0,80007e70 <__printf+0x278>
    80007d4c:	00a00693          	li	a3,10
    80007d50:	00900593          	li	a1,9
    80007d54:	02d777bb          	remuw	a5,a4,a3
    80007d58:	02079793          	slli	a5,a5,0x20
    80007d5c:	0207d793          	srli	a5,a5,0x20
    80007d60:	00fd87b3          	add	a5,s11,a5
    80007d64:	0007c503          	lbu	a0,0(a5)
    80007d68:	02d757bb          	divuw	a5,a4,a3
    80007d6c:	f8a40123          	sb	a0,-126(s0)
    80007d70:	48e5f263          	bgeu	a1,a4,800081f4 <__printf+0x5fc>
    80007d74:	06300513          	li	a0,99
    80007d78:	02d7f5bb          	remuw	a1,a5,a3
    80007d7c:	02059593          	slli	a1,a1,0x20
    80007d80:	0205d593          	srli	a1,a1,0x20
    80007d84:	00bd85b3          	add	a1,s11,a1
    80007d88:	0005c583          	lbu	a1,0(a1)
    80007d8c:	02d7d7bb          	divuw	a5,a5,a3
    80007d90:	f8b401a3          	sb	a1,-125(s0)
    80007d94:	48e57263          	bgeu	a0,a4,80008218 <__printf+0x620>
    80007d98:	3e700513          	li	a0,999
    80007d9c:	02d7f5bb          	remuw	a1,a5,a3
    80007da0:	02059593          	slli	a1,a1,0x20
    80007da4:	0205d593          	srli	a1,a1,0x20
    80007da8:	00bd85b3          	add	a1,s11,a1
    80007dac:	0005c583          	lbu	a1,0(a1)
    80007db0:	02d7d7bb          	divuw	a5,a5,a3
    80007db4:	f8b40223          	sb	a1,-124(s0)
    80007db8:	46e57663          	bgeu	a0,a4,80008224 <__printf+0x62c>
    80007dbc:	02d7f5bb          	remuw	a1,a5,a3
    80007dc0:	02059593          	slli	a1,a1,0x20
    80007dc4:	0205d593          	srli	a1,a1,0x20
    80007dc8:	00bd85b3          	add	a1,s11,a1
    80007dcc:	0005c583          	lbu	a1,0(a1)
    80007dd0:	02d7d7bb          	divuw	a5,a5,a3
    80007dd4:	f8b402a3          	sb	a1,-123(s0)
    80007dd8:	46ea7863          	bgeu	s4,a4,80008248 <__printf+0x650>
    80007ddc:	02d7f5bb          	remuw	a1,a5,a3
    80007de0:	02059593          	slli	a1,a1,0x20
    80007de4:	0205d593          	srli	a1,a1,0x20
    80007de8:	00bd85b3          	add	a1,s11,a1
    80007dec:	0005c583          	lbu	a1,0(a1)
    80007df0:	02d7d7bb          	divuw	a5,a5,a3
    80007df4:	f8b40323          	sb	a1,-122(s0)
    80007df8:	3eeaf863          	bgeu	s5,a4,800081e8 <__printf+0x5f0>
    80007dfc:	02d7f5bb          	remuw	a1,a5,a3
    80007e00:	02059593          	slli	a1,a1,0x20
    80007e04:	0205d593          	srli	a1,a1,0x20
    80007e08:	00bd85b3          	add	a1,s11,a1
    80007e0c:	0005c583          	lbu	a1,0(a1)
    80007e10:	02d7d7bb          	divuw	a5,a5,a3
    80007e14:	f8b403a3          	sb	a1,-121(s0)
    80007e18:	42eb7e63          	bgeu	s6,a4,80008254 <__printf+0x65c>
    80007e1c:	02d7f5bb          	remuw	a1,a5,a3
    80007e20:	02059593          	slli	a1,a1,0x20
    80007e24:	0205d593          	srli	a1,a1,0x20
    80007e28:	00bd85b3          	add	a1,s11,a1
    80007e2c:	0005c583          	lbu	a1,0(a1)
    80007e30:	02d7d7bb          	divuw	a5,a5,a3
    80007e34:	f8b40423          	sb	a1,-120(s0)
    80007e38:	42ebfc63          	bgeu	s7,a4,80008270 <__printf+0x678>
    80007e3c:	02079793          	slli	a5,a5,0x20
    80007e40:	0207d793          	srli	a5,a5,0x20
    80007e44:	00fd8db3          	add	s11,s11,a5
    80007e48:	000dc703          	lbu	a4,0(s11)
    80007e4c:	00a00793          	li	a5,10
    80007e50:	00900c93          	li	s9,9
    80007e54:	f8e404a3          	sb	a4,-119(s0)
    80007e58:	00065c63          	bgez	a2,80007e70 <__printf+0x278>
    80007e5c:	f9040713          	addi	a4,s0,-112
    80007e60:	00f70733          	add	a4,a4,a5
    80007e64:	02d00693          	li	a3,45
    80007e68:	fed70823          	sb	a3,-16(a4)
    80007e6c:	00078c93          	mv	s9,a5
    80007e70:	f8040793          	addi	a5,s0,-128
    80007e74:	01978cb3          	add	s9,a5,s9
    80007e78:	f7f40d13          	addi	s10,s0,-129
    80007e7c:	000cc503          	lbu	a0,0(s9)
    80007e80:	fffc8c93          	addi	s9,s9,-1
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	b90080e7          	jalr	-1136(ra) # 80007a14 <consputc>
    80007e8c:	ffac98e3          	bne	s9,s10,80007e7c <__printf+0x284>
    80007e90:	00094503          	lbu	a0,0(s2)
    80007e94:	e00514e3          	bnez	a0,80007c9c <__printf+0xa4>
    80007e98:	1a0c1663          	bnez	s8,80008044 <__printf+0x44c>
    80007e9c:	08813083          	ld	ra,136(sp)
    80007ea0:	08013403          	ld	s0,128(sp)
    80007ea4:	07813483          	ld	s1,120(sp)
    80007ea8:	07013903          	ld	s2,112(sp)
    80007eac:	06813983          	ld	s3,104(sp)
    80007eb0:	06013a03          	ld	s4,96(sp)
    80007eb4:	05813a83          	ld	s5,88(sp)
    80007eb8:	05013b03          	ld	s6,80(sp)
    80007ebc:	04813b83          	ld	s7,72(sp)
    80007ec0:	04013c03          	ld	s8,64(sp)
    80007ec4:	03813c83          	ld	s9,56(sp)
    80007ec8:	03013d03          	ld	s10,48(sp)
    80007ecc:	02813d83          	ld	s11,40(sp)
    80007ed0:	0d010113          	addi	sp,sp,208
    80007ed4:	00008067          	ret
    80007ed8:	07300713          	li	a4,115
    80007edc:	1ce78a63          	beq	a5,a4,800080b0 <__printf+0x4b8>
    80007ee0:	07800713          	li	a4,120
    80007ee4:	1ee79e63          	bne	a5,a4,800080e0 <__printf+0x4e8>
    80007ee8:	f7843783          	ld	a5,-136(s0)
    80007eec:	0007a703          	lw	a4,0(a5)
    80007ef0:	00878793          	addi	a5,a5,8
    80007ef4:	f6f43c23          	sd	a5,-136(s0)
    80007ef8:	28074263          	bltz	a4,8000817c <__printf+0x584>
    80007efc:	00003d97          	auipc	s11,0x3
    80007f00:	81cd8d93          	addi	s11,s11,-2020 # 8000a718 <digits>
    80007f04:	00f77793          	andi	a5,a4,15
    80007f08:	00fd87b3          	add	a5,s11,a5
    80007f0c:	0007c683          	lbu	a3,0(a5)
    80007f10:	00f00613          	li	a2,15
    80007f14:	0007079b          	sext.w	a5,a4
    80007f18:	f8d40023          	sb	a3,-128(s0)
    80007f1c:	0047559b          	srliw	a1,a4,0x4
    80007f20:	0047569b          	srliw	a3,a4,0x4
    80007f24:	00000c93          	li	s9,0
    80007f28:	0ee65063          	bge	a2,a4,80008008 <__printf+0x410>
    80007f2c:	00f6f693          	andi	a3,a3,15
    80007f30:	00dd86b3          	add	a3,s11,a3
    80007f34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f38:	0087d79b          	srliw	a5,a5,0x8
    80007f3c:	00100c93          	li	s9,1
    80007f40:	f8d400a3          	sb	a3,-127(s0)
    80007f44:	0cb67263          	bgeu	a2,a1,80008008 <__printf+0x410>
    80007f48:	00f7f693          	andi	a3,a5,15
    80007f4c:	00dd86b3          	add	a3,s11,a3
    80007f50:	0006c583          	lbu	a1,0(a3)
    80007f54:	00f00613          	li	a2,15
    80007f58:	0047d69b          	srliw	a3,a5,0x4
    80007f5c:	f8b40123          	sb	a1,-126(s0)
    80007f60:	0047d593          	srli	a1,a5,0x4
    80007f64:	28f67e63          	bgeu	a2,a5,80008200 <__printf+0x608>
    80007f68:	00f6f693          	andi	a3,a3,15
    80007f6c:	00dd86b3          	add	a3,s11,a3
    80007f70:	0006c503          	lbu	a0,0(a3)
    80007f74:	0087d813          	srli	a6,a5,0x8
    80007f78:	0087d69b          	srliw	a3,a5,0x8
    80007f7c:	f8a401a3          	sb	a0,-125(s0)
    80007f80:	28b67663          	bgeu	a2,a1,8000820c <__printf+0x614>
    80007f84:	00f6f693          	andi	a3,a3,15
    80007f88:	00dd86b3          	add	a3,s11,a3
    80007f8c:	0006c583          	lbu	a1,0(a3)
    80007f90:	00c7d513          	srli	a0,a5,0xc
    80007f94:	00c7d69b          	srliw	a3,a5,0xc
    80007f98:	f8b40223          	sb	a1,-124(s0)
    80007f9c:	29067a63          	bgeu	a2,a6,80008230 <__printf+0x638>
    80007fa0:	00f6f693          	andi	a3,a3,15
    80007fa4:	00dd86b3          	add	a3,s11,a3
    80007fa8:	0006c583          	lbu	a1,0(a3)
    80007fac:	0107d813          	srli	a6,a5,0x10
    80007fb0:	0107d69b          	srliw	a3,a5,0x10
    80007fb4:	f8b402a3          	sb	a1,-123(s0)
    80007fb8:	28a67263          	bgeu	a2,a0,8000823c <__printf+0x644>
    80007fbc:	00f6f693          	andi	a3,a3,15
    80007fc0:	00dd86b3          	add	a3,s11,a3
    80007fc4:	0006c683          	lbu	a3,0(a3)
    80007fc8:	0147d79b          	srliw	a5,a5,0x14
    80007fcc:	f8d40323          	sb	a3,-122(s0)
    80007fd0:	21067663          	bgeu	a2,a6,800081dc <__printf+0x5e4>
    80007fd4:	02079793          	slli	a5,a5,0x20
    80007fd8:	0207d793          	srli	a5,a5,0x20
    80007fdc:	00fd8db3          	add	s11,s11,a5
    80007fe0:	000dc683          	lbu	a3,0(s11)
    80007fe4:	00800793          	li	a5,8
    80007fe8:	00700c93          	li	s9,7
    80007fec:	f8d403a3          	sb	a3,-121(s0)
    80007ff0:	00075c63          	bgez	a4,80008008 <__printf+0x410>
    80007ff4:	f9040713          	addi	a4,s0,-112
    80007ff8:	00f70733          	add	a4,a4,a5
    80007ffc:	02d00693          	li	a3,45
    80008000:	fed70823          	sb	a3,-16(a4)
    80008004:	00078c93          	mv	s9,a5
    80008008:	f8040793          	addi	a5,s0,-128
    8000800c:	01978cb3          	add	s9,a5,s9
    80008010:	f7f40d13          	addi	s10,s0,-129
    80008014:	000cc503          	lbu	a0,0(s9)
    80008018:	fffc8c93          	addi	s9,s9,-1
    8000801c:	00000097          	auipc	ra,0x0
    80008020:	9f8080e7          	jalr	-1544(ra) # 80007a14 <consputc>
    80008024:	ff9d18e3          	bne	s10,s9,80008014 <__printf+0x41c>
    80008028:	0100006f          	j	80008038 <__printf+0x440>
    8000802c:	00000097          	auipc	ra,0x0
    80008030:	9e8080e7          	jalr	-1560(ra) # 80007a14 <consputc>
    80008034:	000c8493          	mv	s1,s9
    80008038:	00094503          	lbu	a0,0(s2)
    8000803c:	c60510e3          	bnez	a0,80007c9c <__printf+0xa4>
    80008040:	e40c0ee3          	beqz	s8,80007e9c <__printf+0x2a4>
    80008044:	00006517          	auipc	a0,0x6
    80008048:	0ec50513          	addi	a0,a0,236 # 8000e130 <pr>
    8000804c:	00001097          	auipc	ra,0x1
    80008050:	94c080e7          	jalr	-1716(ra) # 80008998 <release>
    80008054:	e49ff06f          	j	80007e9c <__printf+0x2a4>
    80008058:	f7843783          	ld	a5,-136(s0)
    8000805c:	03000513          	li	a0,48
    80008060:	01000d13          	li	s10,16
    80008064:	00878713          	addi	a4,a5,8
    80008068:	0007bc83          	ld	s9,0(a5)
    8000806c:	f6e43c23          	sd	a4,-136(s0)
    80008070:	00000097          	auipc	ra,0x0
    80008074:	9a4080e7          	jalr	-1628(ra) # 80007a14 <consputc>
    80008078:	07800513          	li	a0,120
    8000807c:	00000097          	auipc	ra,0x0
    80008080:	998080e7          	jalr	-1640(ra) # 80007a14 <consputc>
    80008084:	00002d97          	auipc	s11,0x2
    80008088:	694d8d93          	addi	s11,s11,1684 # 8000a718 <digits>
    8000808c:	03ccd793          	srli	a5,s9,0x3c
    80008090:	00fd87b3          	add	a5,s11,a5
    80008094:	0007c503          	lbu	a0,0(a5)
    80008098:	fffd0d1b          	addiw	s10,s10,-1
    8000809c:	004c9c93          	slli	s9,s9,0x4
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	974080e7          	jalr	-1676(ra) # 80007a14 <consputc>
    800080a8:	fe0d12e3          	bnez	s10,8000808c <__printf+0x494>
    800080ac:	f8dff06f          	j	80008038 <__printf+0x440>
    800080b0:	f7843783          	ld	a5,-136(s0)
    800080b4:	0007bc83          	ld	s9,0(a5)
    800080b8:	00878793          	addi	a5,a5,8
    800080bc:	f6f43c23          	sd	a5,-136(s0)
    800080c0:	000c9a63          	bnez	s9,800080d4 <__printf+0x4dc>
    800080c4:	1080006f          	j	800081cc <__printf+0x5d4>
    800080c8:	001c8c93          	addi	s9,s9,1
    800080cc:	00000097          	auipc	ra,0x0
    800080d0:	948080e7          	jalr	-1720(ra) # 80007a14 <consputc>
    800080d4:	000cc503          	lbu	a0,0(s9)
    800080d8:	fe0518e3          	bnez	a0,800080c8 <__printf+0x4d0>
    800080dc:	f5dff06f          	j	80008038 <__printf+0x440>
    800080e0:	02500513          	li	a0,37
    800080e4:	00000097          	auipc	ra,0x0
    800080e8:	930080e7          	jalr	-1744(ra) # 80007a14 <consputc>
    800080ec:	000c8513          	mv	a0,s9
    800080f0:	00000097          	auipc	ra,0x0
    800080f4:	924080e7          	jalr	-1756(ra) # 80007a14 <consputc>
    800080f8:	f41ff06f          	j	80008038 <__printf+0x440>
    800080fc:	02500513          	li	a0,37
    80008100:	00000097          	auipc	ra,0x0
    80008104:	914080e7          	jalr	-1772(ra) # 80007a14 <consputc>
    80008108:	f31ff06f          	j	80008038 <__printf+0x440>
    8000810c:	00030513          	mv	a0,t1
    80008110:	00000097          	auipc	ra,0x0
    80008114:	7bc080e7          	jalr	1980(ra) # 800088cc <acquire>
    80008118:	b4dff06f          	j	80007c64 <__printf+0x6c>
    8000811c:	40c0053b          	negw	a0,a2
    80008120:	00a00713          	li	a4,10
    80008124:	02e576bb          	remuw	a3,a0,a4
    80008128:	00002d97          	auipc	s11,0x2
    8000812c:	5f0d8d93          	addi	s11,s11,1520 # 8000a718 <digits>
    80008130:	ff700593          	li	a1,-9
    80008134:	02069693          	slli	a3,a3,0x20
    80008138:	0206d693          	srli	a3,a3,0x20
    8000813c:	00dd86b3          	add	a3,s11,a3
    80008140:	0006c683          	lbu	a3,0(a3)
    80008144:	02e557bb          	divuw	a5,a0,a4
    80008148:	f8d40023          	sb	a3,-128(s0)
    8000814c:	10b65e63          	bge	a2,a1,80008268 <__printf+0x670>
    80008150:	06300593          	li	a1,99
    80008154:	02e7f6bb          	remuw	a3,a5,a4
    80008158:	02069693          	slli	a3,a3,0x20
    8000815c:	0206d693          	srli	a3,a3,0x20
    80008160:	00dd86b3          	add	a3,s11,a3
    80008164:	0006c683          	lbu	a3,0(a3)
    80008168:	02e7d73b          	divuw	a4,a5,a4
    8000816c:	00200793          	li	a5,2
    80008170:	f8d400a3          	sb	a3,-127(s0)
    80008174:	bca5ece3          	bltu	a1,a0,80007d4c <__printf+0x154>
    80008178:	ce5ff06f          	j	80007e5c <__printf+0x264>
    8000817c:	40e007bb          	negw	a5,a4
    80008180:	00002d97          	auipc	s11,0x2
    80008184:	598d8d93          	addi	s11,s11,1432 # 8000a718 <digits>
    80008188:	00f7f693          	andi	a3,a5,15
    8000818c:	00dd86b3          	add	a3,s11,a3
    80008190:	0006c583          	lbu	a1,0(a3)
    80008194:	ff100613          	li	a2,-15
    80008198:	0047d69b          	srliw	a3,a5,0x4
    8000819c:	f8b40023          	sb	a1,-128(s0)
    800081a0:	0047d59b          	srliw	a1,a5,0x4
    800081a4:	0ac75e63          	bge	a4,a2,80008260 <__printf+0x668>
    800081a8:	00f6f693          	andi	a3,a3,15
    800081ac:	00dd86b3          	add	a3,s11,a3
    800081b0:	0006c603          	lbu	a2,0(a3)
    800081b4:	00f00693          	li	a3,15
    800081b8:	0087d79b          	srliw	a5,a5,0x8
    800081bc:	f8c400a3          	sb	a2,-127(s0)
    800081c0:	d8b6e4e3          	bltu	a3,a1,80007f48 <__printf+0x350>
    800081c4:	00200793          	li	a5,2
    800081c8:	e2dff06f          	j	80007ff4 <__printf+0x3fc>
    800081cc:	00002c97          	auipc	s9,0x2
    800081d0:	52cc8c93          	addi	s9,s9,1324 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    800081d4:	02800513          	li	a0,40
    800081d8:	ef1ff06f          	j	800080c8 <__printf+0x4d0>
    800081dc:	00700793          	li	a5,7
    800081e0:	00600c93          	li	s9,6
    800081e4:	e0dff06f          	j	80007ff0 <__printf+0x3f8>
    800081e8:	00700793          	li	a5,7
    800081ec:	00600c93          	li	s9,6
    800081f0:	c69ff06f          	j	80007e58 <__printf+0x260>
    800081f4:	00300793          	li	a5,3
    800081f8:	00200c93          	li	s9,2
    800081fc:	c5dff06f          	j	80007e58 <__printf+0x260>
    80008200:	00300793          	li	a5,3
    80008204:	00200c93          	li	s9,2
    80008208:	de9ff06f          	j	80007ff0 <__printf+0x3f8>
    8000820c:	00400793          	li	a5,4
    80008210:	00300c93          	li	s9,3
    80008214:	dddff06f          	j	80007ff0 <__printf+0x3f8>
    80008218:	00400793          	li	a5,4
    8000821c:	00300c93          	li	s9,3
    80008220:	c39ff06f          	j	80007e58 <__printf+0x260>
    80008224:	00500793          	li	a5,5
    80008228:	00400c93          	li	s9,4
    8000822c:	c2dff06f          	j	80007e58 <__printf+0x260>
    80008230:	00500793          	li	a5,5
    80008234:	00400c93          	li	s9,4
    80008238:	db9ff06f          	j	80007ff0 <__printf+0x3f8>
    8000823c:	00600793          	li	a5,6
    80008240:	00500c93          	li	s9,5
    80008244:	dadff06f          	j	80007ff0 <__printf+0x3f8>
    80008248:	00600793          	li	a5,6
    8000824c:	00500c93          	li	s9,5
    80008250:	c09ff06f          	j	80007e58 <__printf+0x260>
    80008254:	00800793          	li	a5,8
    80008258:	00700c93          	li	s9,7
    8000825c:	bfdff06f          	j	80007e58 <__printf+0x260>
    80008260:	00100793          	li	a5,1
    80008264:	d91ff06f          	j	80007ff4 <__printf+0x3fc>
    80008268:	00100793          	li	a5,1
    8000826c:	bf1ff06f          	j	80007e5c <__printf+0x264>
    80008270:	00900793          	li	a5,9
    80008274:	00800c93          	li	s9,8
    80008278:	be1ff06f          	j	80007e58 <__printf+0x260>
    8000827c:	00002517          	auipc	a0,0x2
    80008280:	48450513          	addi	a0,a0,1156 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80008284:	00000097          	auipc	ra,0x0
    80008288:	918080e7          	jalr	-1768(ra) # 80007b9c <panic>

000000008000828c <printfinit>:
    8000828c:	fe010113          	addi	sp,sp,-32
    80008290:	00813823          	sd	s0,16(sp)
    80008294:	00913423          	sd	s1,8(sp)
    80008298:	00113c23          	sd	ra,24(sp)
    8000829c:	02010413          	addi	s0,sp,32
    800082a0:	00006497          	auipc	s1,0x6
    800082a4:	e9048493          	addi	s1,s1,-368 # 8000e130 <pr>
    800082a8:	00048513          	mv	a0,s1
    800082ac:	00002597          	auipc	a1,0x2
    800082b0:	46458593          	addi	a1,a1,1124 # 8000a710 <CONSOLE_STATUS+0x700>
    800082b4:	00000097          	auipc	ra,0x0
    800082b8:	5f4080e7          	jalr	1524(ra) # 800088a8 <initlock>
    800082bc:	01813083          	ld	ra,24(sp)
    800082c0:	01013403          	ld	s0,16(sp)
    800082c4:	0004ac23          	sw	zero,24(s1)
    800082c8:	00813483          	ld	s1,8(sp)
    800082cc:	02010113          	addi	sp,sp,32
    800082d0:	00008067          	ret

00000000800082d4 <uartinit>:
    800082d4:	ff010113          	addi	sp,sp,-16
    800082d8:	00813423          	sd	s0,8(sp)
    800082dc:	01010413          	addi	s0,sp,16
    800082e0:	100007b7          	lui	a5,0x10000
    800082e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800082e8:	f8000713          	li	a4,-128
    800082ec:	00e781a3          	sb	a4,3(a5)
    800082f0:	00300713          	li	a4,3
    800082f4:	00e78023          	sb	a4,0(a5)
    800082f8:	000780a3          	sb	zero,1(a5)
    800082fc:	00e781a3          	sb	a4,3(a5)
    80008300:	00700693          	li	a3,7
    80008304:	00d78123          	sb	a3,2(a5)
    80008308:	00e780a3          	sb	a4,1(a5)
    8000830c:	00813403          	ld	s0,8(sp)
    80008310:	01010113          	addi	sp,sp,16
    80008314:	00008067          	ret

0000000080008318 <uartputc>:
    80008318:	00005797          	auipc	a5,0x5
    8000831c:	b207a783          	lw	a5,-1248(a5) # 8000ce38 <panicked>
    80008320:	00078463          	beqz	a5,80008328 <uartputc+0x10>
    80008324:	0000006f          	j	80008324 <uartputc+0xc>
    80008328:	fd010113          	addi	sp,sp,-48
    8000832c:	02813023          	sd	s0,32(sp)
    80008330:	00913c23          	sd	s1,24(sp)
    80008334:	01213823          	sd	s2,16(sp)
    80008338:	01313423          	sd	s3,8(sp)
    8000833c:	02113423          	sd	ra,40(sp)
    80008340:	03010413          	addi	s0,sp,48
    80008344:	00005917          	auipc	s2,0x5
    80008348:	afc90913          	addi	s2,s2,-1284 # 8000ce40 <uart_tx_r>
    8000834c:	00093783          	ld	a5,0(s2)
    80008350:	00005497          	auipc	s1,0x5
    80008354:	af848493          	addi	s1,s1,-1288 # 8000ce48 <uart_tx_w>
    80008358:	0004b703          	ld	a4,0(s1)
    8000835c:	02078693          	addi	a3,a5,32
    80008360:	00050993          	mv	s3,a0
    80008364:	02e69c63          	bne	a3,a4,8000839c <uartputc+0x84>
    80008368:	00001097          	auipc	ra,0x1
    8000836c:	834080e7          	jalr	-1996(ra) # 80008b9c <push_on>
    80008370:	00093783          	ld	a5,0(s2)
    80008374:	0004b703          	ld	a4,0(s1)
    80008378:	02078793          	addi	a5,a5,32
    8000837c:	00e79463          	bne	a5,a4,80008384 <uartputc+0x6c>
    80008380:	0000006f          	j	80008380 <uartputc+0x68>
    80008384:	00001097          	auipc	ra,0x1
    80008388:	88c080e7          	jalr	-1908(ra) # 80008c10 <pop_on>
    8000838c:	00093783          	ld	a5,0(s2)
    80008390:	0004b703          	ld	a4,0(s1)
    80008394:	02078693          	addi	a3,a5,32
    80008398:	fce688e3          	beq	a3,a4,80008368 <uartputc+0x50>
    8000839c:	01f77693          	andi	a3,a4,31
    800083a0:	00006597          	auipc	a1,0x6
    800083a4:	db058593          	addi	a1,a1,-592 # 8000e150 <uart_tx_buf>
    800083a8:	00d586b3          	add	a3,a1,a3
    800083ac:	00170713          	addi	a4,a4,1
    800083b0:	01368023          	sb	s3,0(a3)
    800083b4:	00e4b023          	sd	a4,0(s1)
    800083b8:	10000637          	lui	a2,0x10000
    800083bc:	02f71063          	bne	a4,a5,800083dc <uartputc+0xc4>
    800083c0:	0340006f          	j	800083f4 <uartputc+0xdc>
    800083c4:	00074703          	lbu	a4,0(a4)
    800083c8:	00f93023          	sd	a5,0(s2)
    800083cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800083d0:	00093783          	ld	a5,0(s2)
    800083d4:	0004b703          	ld	a4,0(s1)
    800083d8:	00f70e63          	beq	a4,a5,800083f4 <uartputc+0xdc>
    800083dc:	00564683          	lbu	a3,5(a2)
    800083e0:	01f7f713          	andi	a4,a5,31
    800083e4:	00e58733          	add	a4,a1,a4
    800083e8:	0206f693          	andi	a3,a3,32
    800083ec:	00178793          	addi	a5,a5,1
    800083f0:	fc069ae3          	bnez	a3,800083c4 <uartputc+0xac>
    800083f4:	02813083          	ld	ra,40(sp)
    800083f8:	02013403          	ld	s0,32(sp)
    800083fc:	01813483          	ld	s1,24(sp)
    80008400:	01013903          	ld	s2,16(sp)
    80008404:	00813983          	ld	s3,8(sp)
    80008408:	03010113          	addi	sp,sp,48
    8000840c:	00008067          	ret

0000000080008410 <uartputc_sync>:
    80008410:	ff010113          	addi	sp,sp,-16
    80008414:	00813423          	sd	s0,8(sp)
    80008418:	01010413          	addi	s0,sp,16
    8000841c:	00005717          	auipc	a4,0x5
    80008420:	a1c72703          	lw	a4,-1508(a4) # 8000ce38 <panicked>
    80008424:	02071663          	bnez	a4,80008450 <uartputc_sync+0x40>
    80008428:	00050793          	mv	a5,a0
    8000842c:	100006b7          	lui	a3,0x10000
    80008430:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008434:	02077713          	andi	a4,a4,32
    80008438:	fe070ce3          	beqz	a4,80008430 <uartputc_sync+0x20>
    8000843c:	0ff7f793          	andi	a5,a5,255
    80008440:	00f68023          	sb	a5,0(a3)
    80008444:	00813403          	ld	s0,8(sp)
    80008448:	01010113          	addi	sp,sp,16
    8000844c:	00008067          	ret
    80008450:	0000006f          	j	80008450 <uartputc_sync+0x40>

0000000080008454 <uartstart>:
    80008454:	ff010113          	addi	sp,sp,-16
    80008458:	00813423          	sd	s0,8(sp)
    8000845c:	01010413          	addi	s0,sp,16
    80008460:	00005617          	auipc	a2,0x5
    80008464:	9e060613          	addi	a2,a2,-1568 # 8000ce40 <uart_tx_r>
    80008468:	00005517          	auipc	a0,0x5
    8000846c:	9e050513          	addi	a0,a0,-1568 # 8000ce48 <uart_tx_w>
    80008470:	00063783          	ld	a5,0(a2)
    80008474:	00053703          	ld	a4,0(a0)
    80008478:	04f70263          	beq	a4,a5,800084bc <uartstart+0x68>
    8000847c:	100005b7          	lui	a1,0x10000
    80008480:	00006817          	auipc	a6,0x6
    80008484:	cd080813          	addi	a6,a6,-816 # 8000e150 <uart_tx_buf>
    80008488:	01c0006f          	j	800084a4 <uartstart+0x50>
    8000848c:	0006c703          	lbu	a4,0(a3)
    80008490:	00f63023          	sd	a5,0(a2)
    80008494:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008498:	00063783          	ld	a5,0(a2)
    8000849c:	00053703          	ld	a4,0(a0)
    800084a0:	00f70e63          	beq	a4,a5,800084bc <uartstart+0x68>
    800084a4:	01f7f713          	andi	a4,a5,31
    800084a8:	00e806b3          	add	a3,a6,a4
    800084ac:	0055c703          	lbu	a4,5(a1)
    800084b0:	00178793          	addi	a5,a5,1
    800084b4:	02077713          	andi	a4,a4,32
    800084b8:	fc071ae3          	bnez	a4,8000848c <uartstart+0x38>
    800084bc:	00813403          	ld	s0,8(sp)
    800084c0:	01010113          	addi	sp,sp,16
    800084c4:	00008067          	ret

00000000800084c8 <uartgetc>:
    800084c8:	ff010113          	addi	sp,sp,-16
    800084cc:	00813423          	sd	s0,8(sp)
    800084d0:	01010413          	addi	s0,sp,16
    800084d4:	10000737          	lui	a4,0x10000
    800084d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800084dc:	0017f793          	andi	a5,a5,1
    800084e0:	00078c63          	beqz	a5,800084f8 <uartgetc+0x30>
    800084e4:	00074503          	lbu	a0,0(a4)
    800084e8:	0ff57513          	andi	a0,a0,255
    800084ec:	00813403          	ld	s0,8(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret
    800084f8:	fff00513          	li	a0,-1
    800084fc:	ff1ff06f          	j	800084ec <uartgetc+0x24>

0000000080008500 <uartintr>:
    80008500:	100007b7          	lui	a5,0x10000
    80008504:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008508:	0017f793          	andi	a5,a5,1
    8000850c:	0a078463          	beqz	a5,800085b4 <uartintr+0xb4>
    80008510:	fe010113          	addi	sp,sp,-32
    80008514:	00813823          	sd	s0,16(sp)
    80008518:	00913423          	sd	s1,8(sp)
    8000851c:	00113c23          	sd	ra,24(sp)
    80008520:	02010413          	addi	s0,sp,32
    80008524:	100004b7          	lui	s1,0x10000
    80008528:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000852c:	0ff57513          	andi	a0,a0,255
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	534080e7          	jalr	1332(ra) # 80007a64 <consoleintr>
    80008538:	0054c783          	lbu	a5,5(s1)
    8000853c:	0017f793          	andi	a5,a5,1
    80008540:	fe0794e3          	bnez	a5,80008528 <uartintr+0x28>
    80008544:	00005617          	auipc	a2,0x5
    80008548:	8fc60613          	addi	a2,a2,-1796 # 8000ce40 <uart_tx_r>
    8000854c:	00005517          	auipc	a0,0x5
    80008550:	8fc50513          	addi	a0,a0,-1796 # 8000ce48 <uart_tx_w>
    80008554:	00063783          	ld	a5,0(a2)
    80008558:	00053703          	ld	a4,0(a0)
    8000855c:	04f70263          	beq	a4,a5,800085a0 <uartintr+0xa0>
    80008560:	100005b7          	lui	a1,0x10000
    80008564:	00006817          	auipc	a6,0x6
    80008568:	bec80813          	addi	a6,a6,-1044 # 8000e150 <uart_tx_buf>
    8000856c:	01c0006f          	j	80008588 <uartintr+0x88>
    80008570:	0006c703          	lbu	a4,0(a3)
    80008574:	00f63023          	sd	a5,0(a2)
    80008578:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000857c:	00063783          	ld	a5,0(a2)
    80008580:	00053703          	ld	a4,0(a0)
    80008584:	00f70e63          	beq	a4,a5,800085a0 <uartintr+0xa0>
    80008588:	01f7f713          	andi	a4,a5,31
    8000858c:	00e806b3          	add	a3,a6,a4
    80008590:	0055c703          	lbu	a4,5(a1)
    80008594:	00178793          	addi	a5,a5,1
    80008598:	02077713          	andi	a4,a4,32
    8000859c:	fc071ae3          	bnez	a4,80008570 <uartintr+0x70>
    800085a0:	01813083          	ld	ra,24(sp)
    800085a4:	01013403          	ld	s0,16(sp)
    800085a8:	00813483          	ld	s1,8(sp)
    800085ac:	02010113          	addi	sp,sp,32
    800085b0:	00008067          	ret
    800085b4:	00005617          	auipc	a2,0x5
    800085b8:	88c60613          	addi	a2,a2,-1908 # 8000ce40 <uart_tx_r>
    800085bc:	00005517          	auipc	a0,0x5
    800085c0:	88c50513          	addi	a0,a0,-1908 # 8000ce48 <uart_tx_w>
    800085c4:	00063783          	ld	a5,0(a2)
    800085c8:	00053703          	ld	a4,0(a0)
    800085cc:	04f70263          	beq	a4,a5,80008610 <uartintr+0x110>
    800085d0:	100005b7          	lui	a1,0x10000
    800085d4:	00006817          	auipc	a6,0x6
    800085d8:	b7c80813          	addi	a6,a6,-1156 # 8000e150 <uart_tx_buf>
    800085dc:	01c0006f          	j	800085f8 <uartintr+0xf8>
    800085e0:	0006c703          	lbu	a4,0(a3)
    800085e4:	00f63023          	sd	a5,0(a2)
    800085e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085ec:	00063783          	ld	a5,0(a2)
    800085f0:	00053703          	ld	a4,0(a0)
    800085f4:	02f70063          	beq	a4,a5,80008614 <uartintr+0x114>
    800085f8:	01f7f713          	andi	a4,a5,31
    800085fc:	00e806b3          	add	a3,a6,a4
    80008600:	0055c703          	lbu	a4,5(a1)
    80008604:	00178793          	addi	a5,a5,1
    80008608:	02077713          	andi	a4,a4,32
    8000860c:	fc071ae3          	bnez	a4,800085e0 <uartintr+0xe0>
    80008610:	00008067          	ret
    80008614:	00008067          	ret

0000000080008618 <kinit>:
    80008618:	fc010113          	addi	sp,sp,-64
    8000861c:	02913423          	sd	s1,40(sp)
    80008620:	fffff7b7          	lui	a5,0xfffff
    80008624:	00007497          	auipc	s1,0x7
    80008628:	b4b48493          	addi	s1,s1,-1205 # 8000f16f <end+0xfff>
    8000862c:	02813823          	sd	s0,48(sp)
    80008630:	01313c23          	sd	s3,24(sp)
    80008634:	00f4f4b3          	and	s1,s1,a5
    80008638:	02113c23          	sd	ra,56(sp)
    8000863c:	03213023          	sd	s2,32(sp)
    80008640:	01413823          	sd	s4,16(sp)
    80008644:	01513423          	sd	s5,8(sp)
    80008648:	04010413          	addi	s0,sp,64
    8000864c:	000017b7          	lui	a5,0x1
    80008650:	01100993          	li	s3,17
    80008654:	00f487b3          	add	a5,s1,a5
    80008658:	01b99993          	slli	s3,s3,0x1b
    8000865c:	06f9e063          	bltu	s3,a5,800086bc <kinit+0xa4>
    80008660:	00006a97          	auipc	s5,0x6
    80008664:	b10a8a93          	addi	s5,s5,-1264 # 8000e170 <end>
    80008668:	0754ec63          	bltu	s1,s5,800086e0 <kinit+0xc8>
    8000866c:	0734fa63          	bgeu	s1,s3,800086e0 <kinit+0xc8>
    80008670:	00088a37          	lui	s4,0x88
    80008674:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008678:	00004917          	auipc	s2,0x4
    8000867c:	7d890913          	addi	s2,s2,2008 # 8000ce50 <kmem>
    80008680:	00ca1a13          	slli	s4,s4,0xc
    80008684:	0140006f          	j	80008698 <kinit+0x80>
    80008688:	000017b7          	lui	a5,0x1
    8000868c:	00f484b3          	add	s1,s1,a5
    80008690:	0554e863          	bltu	s1,s5,800086e0 <kinit+0xc8>
    80008694:	0534f663          	bgeu	s1,s3,800086e0 <kinit+0xc8>
    80008698:	00001637          	lui	a2,0x1
    8000869c:	00100593          	li	a1,1
    800086a0:	00048513          	mv	a0,s1
    800086a4:	00000097          	auipc	ra,0x0
    800086a8:	5e4080e7          	jalr	1508(ra) # 80008c88 <__memset>
    800086ac:	00093783          	ld	a5,0(s2)
    800086b0:	00f4b023          	sd	a5,0(s1)
    800086b4:	00993023          	sd	s1,0(s2)
    800086b8:	fd4498e3          	bne	s1,s4,80008688 <kinit+0x70>
    800086bc:	03813083          	ld	ra,56(sp)
    800086c0:	03013403          	ld	s0,48(sp)
    800086c4:	02813483          	ld	s1,40(sp)
    800086c8:	02013903          	ld	s2,32(sp)
    800086cc:	01813983          	ld	s3,24(sp)
    800086d0:	01013a03          	ld	s4,16(sp)
    800086d4:	00813a83          	ld	s5,8(sp)
    800086d8:	04010113          	addi	sp,sp,64
    800086dc:	00008067          	ret
    800086e0:	00002517          	auipc	a0,0x2
    800086e4:	05050513          	addi	a0,a0,80 # 8000a730 <digits+0x18>
    800086e8:	fffff097          	auipc	ra,0xfffff
    800086ec:	4b4080e7          	jalr	1204(ra) # 80007b9c <panic>

00000000800086f0 <freerange>:
    800086f0:	fc010113          	addi	sp,sp,-64
    800086f4:	000017b7          	lui	a5,0x1
    800086f8:	02913423          	sd	s1,40(sp)
    800086fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008700:	009504b3          	add	s1,a0,s1
    80008704:	fffff537          	lui	a0,0xfffff
    80008708:	02813823          	sd	s0,48(sp)
    8000870c:	02113c23          	sd	ra,56(sp)
    80008710:	03213023          	sd	s2,32(sp)
    80008714:	01313c23          	sd	s3,24(sp)
    80008718:	01413823          	sd	s4,16(sp)
    8000871c:	01513423          	sd	s5,8(sp)
    80008720:	01613023          	sd	s6,0(sp)
    80008724:	04010413          	addi	s0,sp,64
    80008728:	00a4f4b3          	and	s1,s1,a0
    8000872c:	00f487b3          	add	a5,s1,a5
    80008730:	06f5e463          	bltu	a1,a5,80008798 <freerange+0xa8>
    80008734:	00006a97          	auipc	s5,0x6
    80008738:	a3ca8a93          	addi	s5,s5,-1476 # 8000e170 <end>
    8000873c:	0954e263          	bltu	s1,s5,800087c0 <freerange+0xd0>
    80008740:	01100993          	li	s3,17
    80008744:	01b99993          	slli	s3,s3,0x1b
    80008748:	0734fc63          	bgeu	s1,s3,800087c0 <freerange+0xd0>
    8000874c:	00058a13          	mv	s4,a1
    80008750:	00004917          	auipc	s2,0x4
    80008754:	70090913          	addi	s2,s2,1792 # 8000ce50 <kmem>
    80008758:	00002b37          	lui	s6,0x2
    8000875c:	0140006f          	j	80008770 <freerange+0x80>
    80008760:	000017b7          	lui	a5,0x1
    80008764:	00f484b3          	add	s1,s1,a5
    80008768:	0554ec63          	bltu	s1,s5,800087c0 <freerange+0xd0>
    8000876c:	0534fa63          	bgeu	s1,s3,800087c0 <freerange+0xd0>
    80008770:	00001637          	lui	a2,0x1
    80008774:	00100593          	li	a1,1
    80008778:	00048513          	mv	a0,s1
    8000877c:	00000097          	auipc	ra,0x0
    80008780:	50c080e7          	jalr	1292(ra) # 80008c88 <__memset>
    80008784:	00093703          	ld	a4,0(s2)
    80008788:	016487b3          	add	a5,s1,s6
    8000878c:	00e4b023          	sd	a4,0(s1)
    80008790:	00993023          	sd	s1,0(s2)
    80008794:	fcfa76e3          	bgeu	s4,a5,80008760 <freerange+0x70>
    80008798:	03813083          	ld	ra,56(sp)
    8000879c:	03013403          	ld	s0,48(sp)
    800087a0:	02813483          	ld	s1,40(sp)
    800087a4:	02013903          	ld	s2,32(sp)
    800087a8:	01813983          	ld	s3,24(sp)
    800087ac:	01013a03          	ld	s4,16(sp)
    800087b0:	00813a83          	ld	s5,8(sp)
    800087b4:	00013b03          	ld	s6,0(sp)
    800087b8:	04010113          	addi	sp,sp,64
    800087bc:	00008067          	ret
    800087c0:	00002517          	auipc	a0,0x2
    800087c4:	f7050513          	addi	a0,a0,-144 # 8000a730 <digits+0x18>
    800087c8:	fffff097          	auipc	ra,0xfffff
    800087cc:	3d4080e7          	jalr	980(ra) # 80007b9c <panic>

00000000800087d0 <kfree>:
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00113c23          	sd	ra,24(sp)
    800087dc:	00913423          	sd	s1,8(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	03451793          	slli	a5,a0,0x34
    800087e8:	04079c63          	bnez	a5,80008840 <kfree+0x70>
    800087ec:	00006797          	auipc	a5,0x6
    800087f0:	98478793          	addi	a5,a5,-1660 # 8000e170 <end>
    800087f4:	00050493          	mv	s1,a0
    800087f8:	04f56463          	bltu	a0,a5,80008840 <kfree+0x70>
    800087fc:	01100793          	li	a5,17
    80008800:	01b79793          	slli	a5,a5,0x1b
    80008804:	02f57e63          	bgeu	a0,a5,80008840 <kfree+0x70>
    80008808:	00001637          	lui	a2,0x1
    8000880c:	00100593          	li	a1,1
    80008810:	00000097          	auipc	ra,0x0
    80008814:	478080e7          	jalr	1144(ra) # 80008c88 <__memset>
    80008818:	00004797          	auipc	a5,0x4
    8000881c:	63878793          	addi	a5,a5,1592 # 8000ce50 <kmem>
    80008820:	0007b703          	ld	a4,0(a5)
    80008824:	01813083          	ld	ra,24(sp)
    80008828:	01013403          	ld	s0,16(sp)
    8000882c:	00e4b023          	sd	a4,0(s1)
    80008830:	0097b023          	sd	s1,0(a5)
    80008834:	00813483          	ld	s1,8(sp)
    80008838:	02010113          	addi	sp,sp,32
    8000883c:	00008067          	ret
    80008840:	00002517          	auipc	a0,0x2
    80008844:	ef050513          	addi	a0,a0,-272 # 8000a730 <digits+0x18>
    80008848:	fffff097          	auipc	ra,0xfffff
    8000884c:	354080e7          	jalr	852(ra) # 80007b9c <panic>

0000000080008850 <kalloc>:
    80008850:	fe010113          	addi	sp,sp,-32
    80008854:	00813823          	sd	s0,16(sp)
    80008858:	00913423          	sd	s1,8(sp)
    8000885c:	00113c23          	sd	ra,24(sp)
    80008860:	02010413          	addi	s0,sp,32
    80008864:	00004797          	auipc	a5,0x4
    80008868:	5ec78793          	addi	a5,a5,1516 # 8000ce50 <kmem>
    8000886c:	0007b483          	ld	s1,0(a5)
    80008870:	02048063          	beqz	s1,80008890 <kalloc+0x40>
    80008874:	0004b703          	ld	a4,0(s1)
    80008878:	00001637          	lui	a2,0x1
    8000887c:	00500593          	li	a1,5
    80008880:	00048513          	mv	a0,s1
    80008884:	00e7b023          	sd	a4,0(a5)
    80008888:	00000097          	auipc	ra,0x0
    8000888c:	400080e7          	jalr	1024(ra) # 80008c88 <__memset>
    80008890:	01813083          	ld	ra,24(sp)
    80008894:	01013403          	ld	s0,16(sp)
    80008898:	00048513          	mv	a0,s1
    8000889c:	00813483          	ld	s1,8(sp)
    800088a0:	02010113          	addi	sp,sp,32
    800088a4:	00008067          	ret

00000000800088a8 <initlock>:
    800088a8:	ff010113          	addi	sp,sp,-16
    800088ac:	00813423          	sd	s0,8(sp)
    800088b0:	01010413          	addi	s0,sp,16
    800088b4:	00813403          	ld	s0,8(sp)
    800088b8:	00b53423          	sd	a1,8(a0)
    800088bc:	00052023          	sw	zero,0(a0)
    800088c0:	00053823          	sd	zero,16(a0)
    800088c4:	01010113          	addi	sp,sp,16
    800088c8:	00008067          	ret

00000000800088cc <acquire>:
    800088cc:	fe010113          	addi	sp,sp,-32
    800088d0:	00813823          	sd	s0,16(sp)
    800088d4:	00913423          	sd	s1,8(sp)
    800088d8:	00113c23          	sd	ra,24(sp)
    800088dc:	01213023          	sd	s2,0(sp)
    800088e0:	02010413          	addi	s0,sp,32
    800088e4:	00050493          	mv	s1,a0
    800088e8:	10002973          	csrr	s2,sstatus
    800088ec:	100027f3          	csrr	a5,sstatus
    800088f0:	ffd7f793          	andi	a5,a5,-3
    800088f4:	10079073          	csrw	sstatus,a5
    800088f8:	fffff097          	auipc	ra,0xfffff
    800088fc:	8e4080e7          	jalr	-1820(ra) # 800071dc <mycpu>
    80008900:	07852783          	lw	a5,120(a0)
    80008904:	06078e63          	beqz	a5,80008980 <acquire+0xb4>
    80008908:	fffff097          	auipc	ra,0xfffff
    8000890c:	8d4080e7          	jalr	-1836(ra) # 800071dc <mycpu>
    80008910:	07852783          	lw	a5,120(a0)
    80008914:	0004a703          	lw	a4,0(s1)
    80008918:	0017879b          	addiw	a5,a5,1
    8000891c:	06f52c23          	sw	a5,120(a0)
    80008920:	04071063          	bnez	a4,80008960 <acquire+0x94>
    80008924:	00100713          	li	a4,1
    80008928:	00070793          	mv	a5,a4
    8000892c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008930:	0007879b          	sext.w	a5,a5
    80008934:	fe079ae3          	bnez	a5,80008928 <acquire+0x5c>
    80008938:	0ff0000f          	fence
    8000893c:	fffff097          	auipc	ra,0xfffff
    80008940:	8a0080e7          	jalr	-1888(ra) # 800071dc <mycpu>
    80008944:	01813083          	ld	ra,24(sp)
    80008948:	01013403          	ld	s0,16(sp)
    8000894c:	00a4b823          	sd	a0,16(s1)
    80008950:	00013903          	ld	s2,0(sp)
    80008954:	00813483          	ld	s1,8(sp)
    80008958:	02010113          	addi	sp,sp,32
    8000895c:	00008067          	ret
    80008960:	0104b903          	ld	s2,16(s1)
    80008964:	fffff097          	auipc	ra,0xfffff
    80008968:	878080e7          	jalr	-1928(ra) # 800071dc <mycpu>
    8000896c:	faa91ce3          	bne	s2,a0,80008924 <acquire+0x58>
    80008970:	00002517          	auipc	a0,0x2
    80008974:	dc850513          	addi	a0,a0,-568 # 8000a738 <digits+0x20>
    80008978:	fffff097          	auipc	ra,0xfffff
    8000897c:	224080e7          	jalr	548(ra) # 80007b9c <panic>
    80008980:	00195913          	srli	s2,s2,0x1
    80008984:	fffff097          	auipc	ra,0xfffff
    80008988:	858080e7          	jalr	-1960(ra) # 800071dc <mycpu>
    8000898c:	00197913          	andi	s2,s2,1
    80008990:	07252e23          	sw	s2,124(a0)
    80008994:	f75ff06f          	j	80008908 <acquire+0x3c>

0000000080008998 <release>:
    80008998:	fe010113          	addi	sp,sp,-32
    8000899c:	00813823          	sd	s0,16(sp)
    800089a0:	00113c23          	sd	ra,24(sp)
    800089a4:	00913423          	sd	s1,8(sp)
    800089a8:	01213023          	sd	s2,0(sp)
    800089ac:	02010413          	addi	s0,sp,32
    800089b0:	00052783          	lw	a5,0(a0)
    800089b4:	00079a63          	bnez	a5,800089c8 <release+0x30>
    800089b8:	00002517          	auipc	a0,0x2
    800089bc:	d8850513          	addi	a0,a0,-632 # 8000a740 <digits+0x28>
    800089c0:	fffff097          	auipc	ra,0xfffff
    800089c4:	1dc080e7          	jalr	476(ra) # 80007b9c <panic>
    800089c8:	01053903          	ld	s2,16(a0)
    800089cc:	00050493          	mv	s1,a0
    800089d0:	fffff097          	auipc	ra,0xfffff
    800089d4:	80c080e7          	jalr	-2036(ra) # 800071dc <mycpu>
    800089d8:	fea910e3          	bne	s2,a0,800089b8 <release+0x20>
    800089dc:	0004b823          	sd	zero,16(s1)
    800089e0:	0ff0000f          	fence
    800089e4:	0f50000f          	fence	iorw,ow
    800089e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800089ec:	ffffe097          	auipc	ra,0xffffe
    800089f0:	7f0080e7          	jalr	2032(ra) # 800071dc <mycpu>
    800089f4:	100027f3          	csrr	a5,sstatus
    800089f8:	0027f793          	andi	a5,a5,2
    800089fc:	04079a63          	bnez	a5,80008a50 <release+0xb8>
    80008a00:	07852783          	lw	a5,120(a0)
    80008a04:	02f05e63          	blez	a5,80008a40 <release+0xa8>
    80008a08:	fff7871b          	addiw	a4,a5,-1
    80008a0c:	06e52c23          	sw	a4,120(a0)
    80008a10:	00071c63          	bnez	a4,80008a28 <release+0x90>
    80008a14:	07c52783          	lw	a5,124(a0)
    80008a18:	00078863          	beqz	a5,80008a28 <release+0x90>
    80008a1c:	100027f3          	csrr	a5,sstatus
    80008a20:	0027e793          	ori	a5,a5,2
    80008a24:	10079073          	csrw	sstatus,a5
    80008a28:	01813083          	ld	ra,24(sp)
    80008a2c:	01013403          	ld	s0,16(sp)
    80008a30:	00813483          	ld	s1,8(sp)
    80008a34:	00013903          	ld	s2,0(sp)
    80008a38:	02010113          	addi	sp,sp,32
    80008a3c:	00008067          	ret
    80008a40:	00002517          	auipc	a0,0x2
    80008a44:	d2050513          	addi	a0,a0,-736 # 8000a760 <digits+0x48>
    80008a48:	fffff097          	auipc	ra,0xfffff
    80008a4c:	154080e7          	jalr	340(ra) # 80007b9c <panic>
    80008a50:	00002517          	auipc	a0,0x2
    80008a54:	cf850513          	addi	a0,a0,-776 # 8000a748 <digits+0x30>
    80008a58:	fffff097          	auipc	ra,0xfffff
    80008a5c:	144080e7          	jalr	324(ra) # 80007b9c <panic>

0000000080008a60 <holding>:
    80008a60:	00052783          	lw	a5,0(a0)
    80008a64:	00079663          	bnez	a5,80008a70 <holding+0x10>
    80008a68:	00000513          	li	a0,0
    80008a6c:	00008067          	ret
    80008a70:	fe010113          	addi	sp,sp,-32
    80008a74:	00813823          	sd	s0,16(sp)
    80008a78:	00913423          	sd	s1,8(sp)
    80008a7c:	00113c23          	sd	ra,24(sp)
    80008a80:	02010413          	addi	s0,sp,32
    80008a84:	01053483          	ld	s1,16(a0)
    80008a88:	ffffe097          	auipc	ra,0xffffe
    80008a8c:	754080e7          	jalr	1876(ra) # 800071dc <mycpu>
    80008a90:	01813083          	ld	ra,24(sp)
    80008a94:	01013403          	ld	s0,16(sp)
    80008a98:	40a48533          	sub	a0,s1,a0
    80008a9c:	00153513          	seqz	a0,a0
    80008aa0:	00813483          	ld	s1,8(sp)
    80008aa4:	02010113          	addi	sp,sp,32
    80008aa8:	00008067          	ret

0000000080008aac <push_off>:
    80008aac:	fe010113          	addi	sp,sp,-32
    80008ab0:	00813823          	sd	s0,16(sp)
    80008ab4:	00113c23          	sd	ra,24(sp)
    80008ab8:	00913423          	sd	s1,8(sp)
    80008abc:	02010413          	addi	s0,sp,32
    80008ac0:	100024f3          	csrr	s1,sstatus
    80008ac4:	100027f3          	csrr	a5,sstatus
    80008ac8:	ffd7f793          	andi	a5,a5,-3
    80008acc:	10079073          	csrw	sstatus,a5
    80008ad0:	ffffe097          	auipc	ra,0xffffe
    80008ad4:	70c080e7          	jalr	1804(ra) # 800071dc <mycpu>
    80008ad8:	07852783          	lw	a5,120(a0)
    80008adc:	02078663          	beqz	a5,80008b08 <push_off+0x5c>
    80008ae0:	ffffe097          	auipc	ra,0xffffe
    80008ae4:	6fc080e7          	jalr	1788(ra) # 800071dc <mycpu>
    80008ae8:	07852783          	lw	a5,120(a0)
    80008aec:	01813083          	ld	ra,24(sp)
    80008af0:	01013403          	ld	s0,16(sp)
    80008af4:	0017879b          	addiw	a5,a5,1
    80008af8:	06f52c23          	sw	a5,120(a0)
    80008afc:	00813483          	ld	s1,8(sp)
    80008b00:	02010113          	addi	sp,sp,32
    80008b04:	00008067          	ret
    80008b08:	0014d493          	srli	s1,s1,0x1
    80008b0c:	ffffe097          	auipc	ra,0xffffe
    80008b10:	6d0080e7          	jalr	1744(ra) # 800071dc <mycpu>
    80008b14:	0014f493          	andi	s1,s1,1
    80008b18:	06952e23          	sw	s1,124(a0)
    80008b1c:	fc5ff06f          	j	80008ae0 <push_off+0x34>

0000000080008b20 <pop_off>:
    80008b20:	ff010113          	addi	sp,sp,-16
    80008b24:	00813023          	sd	s0,0(sp)
    80008b28:	00113423          	sd	ra,8(sp)
    80008b2c:	01010413          	addi	s0,sp,16
    80008b30:	ffffe097          	auipc	ra,0xffffe
    80008b34:	6ac080e7          	jalr	1708(ra) # 800071dc <mycpu>
    80008b38:	100027f3          	csrr	a5,sstatus
    80008b3c:	0027f793          	andi	a5,a5,2
    80008b40:	04079663          	bnez	a5,80008b8c <pop_off+0x6c>
    80008b44:	07852783          	lw	a5,120(a0)
    80008b48:	02f05a63          	blez	a5,80008b7c <pop_off+0x5c>
    80008b4c:	fff7871b          	addiw	a4,a5,-1
    80008b50:	06e52c23          	sw	a4,120(a0)
    80008b54:	00071c63          	bnez	a4,80008b6c <pop_off+0x4c>
    80008b58:	07c52783          	lw	a5,124(a0)
    80008b5c:	00078863          	beqz	a5,80008b6c <pop_off+0x4c>
    80008b60:	100027f3          	csrr	a5,sstatus
    80008b64:	0027e793          	ori	a5,a5,2
    80008b68:	10079073          	csrw	sstatus,a5
    80008b6c:	00813083          	ld	ra,8(sp)
    80008b70:	00013403          	ld	s0,0(sp)
    80008b74:	01010113          	addi	sp,sp,16
    80008b78:	00008067          	ret
    80008b7c:	00002517          	auipc	a0,0x2
    80008b80:	be450513          	addi	a0,a0,-1052 # 8000a760 <digits+0x48>
    80008b84:	fffff097          	auipc	ra,0xfffff
    80008b88:	018080e7          	jalr	24(ra) # 80007b9c <panic>
    80008b8c:	00002517          	auipc	a0,0x2
    80008b90:	bbc50513          	addi	a0,a0,-1092 # 8000a748 <digits+0x30>
    80008b94:	fffff097          	auipc	ra,0xfffff
    80008b98:	008080e7          	jalr	8(ra) # 80007b9c <panic>

0000000080008b9c <push_on>:
    80008b9c:	fe010113          	addi	sp,sp,-32
    80008ba0:	00813823          	sd	s0,16(sp)
    80008ba4:	00113c23          	sd	ra,24(sp)
    80008ba8:	00913423          	sd	s1,8(sp)
    80008bac:	02010413          	addi	s0,sp,32
    80008bb0:	100024f3          	csrr	s1,sstatus
    80008bb4:	100027f3          	csrr	a5,sstatus
    80008bb8:	0027e793          	ori	a5,a5,2
    80008bbc:	10079073          	csrw	sstatus,a5
    80008bc0:	ffffe097          	auipc	ra,0xffffe
    80008bc4:	61c080e7          	jalr	1564(ra) # 800071dc <mycpu>
    80008bc8:	07852783          	lw	a5,120(a0)
    80008bcc:	02078663          	beqz	a5,80008bf8 <push_on+0x5c>
    80008bd0:	ffffe097          	auipc	ra,0xffffe
    80008bd4:	60c080e7          	jalr	1548(ra) # 800071dc <mycpu>
    80008bd8:	07852783          	lw	a5,120(a0)
    80008bdc:	01813083          	ld	ra,24(sp)
    80008be0:	01013403          	ld	s0,16(sp)
    80008be4:	0017879b          	addiw	a5,a5,1
    80008be8:	06f52c23          	sw	a5,120(a0)
    80008bec:	00813483          	ld	s1,8(sp)
    80008bf0:	02010113          	addi	sp,sp,32
    80008bf4:	00008067          	ret
    80008bf8:	0014d493          	srli	s1,s1,0x1
    80008bfc:	ffffe097          	auipc	ra,0xffffe
    80008c00:	5e0080e7          	jalr	1504(ra) # 800071dc <mycpu>
    80008c04:	0014f493          	andi	s1,s1,1
    80008c08:	06952e23          	sw	s1,124(a0)
    80008c0c:	fc5ff06f          	j	80008bd0 <push_on+0x34>

0000000080008c10 <pop_on>:
    80008c10:	ff010113          	addi	sp,sp,-16
    80008c14:	00813023          	sd	s0,0(sp)
    80008c18:	00113423          	sd	ra,8(sp)
    80008c1c:	01010413          	addi	s0,sp,16
    80008c20:	ffffe097          	auipc	ra,0xffffe
    80008c24:	5bc080e7          	jalr	1468(ra) # 800071dc <mycpu>
    80008c28:	100027f3          	csrr	a5,sstatus
    80008c2c:	0027f793          	andi	a5,a5,2
    80008c30:	04078463          	beqz	a5,80008c78 <pop_on+0x68>
    80008c34:	07852783          	lw	a5,120(a0)
    80008c38:	02f05863          	blez	a5,80008c68 <pop_on+0x58>
    80008c3c:	fff7879b          	addiw	a5,a5,-1
    80008c40:	06f52c23          	sw	a5,120(a0)
    80008c44:	07853783          	ld	a5,120(a0)
    80008c48:	00079863          	bnez	a5,80008c58 <pop_on+0x48>
    80008c4c:	100027f3          	csrr	a5,sstatus
    80008c50:	ffd7f793          	andi	a5,a5,-3
    80008c54:	10079073          	csrw	sstatus,a5
    80008c58:	00813083          	ld	ra,8(sp)
    80008c5c:	00013403          	ld	s0,0(sp)
    80008c60:	01010113          	addi	sp,sp,16
    80008c64:	00008067          	ret
    80008c68:	00002517          	auipc	a0,0x2
    80008c6c:	b2050513          	addi	a0,a0,-1248 # 8000a788 <digits+0x70>
    80008c70:	fffff097          	auipc	ra,0xfffff
    80008c74:	f2c080e7          	jalr	-212(ra) # 80007b9c <panic>
    80008c78:	00002517          	auipc	a0,0x2
    80008c7c:	af050513          	addi	a0,a0,-1296 # 8000a768 <digits+0x50>
    80008c80:	fffff097          	auipc	ra,0xfffff
    80008c84:	f1c080e7          	jalr	-228(ra) # 80007b9c <panic>

0000000080008c88 <__memset>:
    80008c88:	ff010113          	addi	sp,sp,-16
    80008c8c:	00813423          	sd	s0,8(sp)
    80008c90:	01010413          	addi	s0,sp,16
    80008c94:	1a060e63          	beqz	a2,80008e50 <__memset+0x1c8>
    80008c98:	40a007b3          	neg	a5,a0
    80008c9c:	0077f793          	andi	a5,a5,7
    80008ca0:	00778693          	addi	a3,a5,7
    80008ca4:	00b00813          	li	a6,11
    80008ca8:	0ff5f593          	andi	a1,a1,255
    80008cac:	fff6071b          	addiw	a4,a2,-1
    80008cb0:	1b06e663          	bltu	a3,a6,80008e5c <__memset+0x1d4>
    80008cb4:	1cd76463          	bltu	a4,a3,80008e7c <__memset+0x1f4>
    80008cb8:	1a078e63          	beqz	a5,80008e74 <__memset+0x1ec>
    80008cbc:	00b50023          	sb	a1,0(a0)
    80008cc0:	00100713          	li	a4,1
    80008cc4:	1ae78463          	beq	a5,a4,80008e6c <__memset+0x1e4>
    80008cc8:	00b500a3          	sb	a1,1(a0)
    80008ccc:	00200713          	li	a4,2
    80008cd0:	1ae78a63          	beq	a5,a4,80008e84 <__memset+0x1fc>
    80008cd4:	00b50123          	sb	a1,2(a0)
    80008cd8:	00300713          	li	a4,3
    80008cdc:	18e78463          	beq	a5,a4,80008e64 <__memset+0x1dc>
    80008ce0:	00b501a3          	sb	a1,3(a0)
    80008ce4:	00400713          	li	a4,4
    80008ce8:	1ae78263          	beq	a5,a4,80008e8c <__memset+0x204>
    80008cec:	00b50223          	sb	a1,4(a0)
    80008cf0:	00500713          	li	a4,5
    80008cf4:	1ae78063          	beq	a5,a4,80008e94 <__memset+0x20c>
    80008cf8:	00b502a3          	sb	a1,5(a0)
    80008cfc:	00700713          	li	a4,7
    80008d00:	18e79e63          	bne	a5,a4,80008e9c <__memset+0x214>
    80008d04:	00b50323          	sb	a1,6(a0)
    80008d08:	00700e93          	li	t4,7
    80008d0c:	00859713          	slli	a4,a1,0x8
    80008d10:	00e5e733          	or	a4,a1,a4
    80008d14:	01059e13          	slli	t3,a1,0x10
    80008d18:	01c76e33          	or	t3,a4,t3
    80008d1c:	01859313          	slli	t1,a1,0x18
    80008d20:	006e6333          	or	t1,t3,t1
    80008d24:	02059893          	slli	a7,a1,0x20
    80008d28:	40f60e3b          	subw	t3,a2,a5
    80008d2c:	011368b3          	or	a7,t1,a7
    80008d30:	02859813          	slli	a6,a1,0x28
    80008d34:	0108e833          	or	a6,a7,a6
    80008d38:	03059693          	slli	a3,a1,0x30
    80008d3c:	003e589b          	srliw	a7,t3,0x3
    80008d40:	00d866b3          	or	a3,a6,a3
    80008d44:	03859713          	slli	a4,a1,0x38
    80008d48:	00389813          	slli	a6,a7,0x3
    80008d4c:	00f507b3          	add	a5,a0,a5
    80008d50:	00e6e733          	or	a4,a3,a4
    80008d54:	000e089b          	sext.w	a7,t3
    80008d58:	00f806b3          	add	a3,a6,a5
    80008d5c:	00e7b023          	sd	a4,0(a5)
    80008d60:	00878793          	addi	a5,a5,8
    80008d64:	fed79ce3          	bne	a5,a3,80008d5c <__memset+0xd4>
    80008d68:	ff8e7793          	andi	a5,t3,-8
    80008d6c:	0007871b          	sext.w	a4,a5
    80008d70:	01d787bb          	addw	a5,a5,t4
    80008d74:	0ce88e63          	beq	a7,a4,80008e50 <__memset+0x1c8>
    80008d78:	00f50733          	add	a4,a0,a5
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0017871b          	addiw	a4,a5,1
    80008d84:	0cc77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	0027871b          	addiw	a4,a5,2
    80008d94:	0ac77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	0037871b          	addiw	a4,a5,3
    80008da4:	0ac77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0047871b          	addiw	a4,a5,4
    80008db4:	08c77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0057871b          	addiw	a4,a5,5
    80008dc4:	08c77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0067871b          	addiw	a4,a5,6
    80008dd4:	06c77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0077871b          	addiw	a4,a5,7
    80008de4:	06c77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	0087871b          	addiw	a4,a5,8
    80008df4:	04c77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	0097871b          	addiw	a4,a5,9
    80008e04:	04c77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	00a7871b          	addiw	a4,a5,10
    80008e14:	02c77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	00b7871b          	addiw	a4,a5,11
    80008e24:	02c77663          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008e28:	00e50733          	add	a4,a0,a4
    80008e2c:	00b70023          	sb	a1,0(a4)
    80008e30:	00c7871b          	addiw	a4,a5,12
    80008e34:	00c77e63          	bgeu	a4,a2,80008e50 <__memset+0x1c8>
    80008e38:	00e50733          	add	a4,a0,a4
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	00d7879b          	addiw	a5,a5,13
    80008e44:	00c7f663          	bgeu	a5,a2,80008e50 <__memset+0x1c8>
    80008e48:	00f507b3          	add	a5,a0,a5
    80008e4c:	00b78023          	sb	a1,0(a5)
    80008e50:	00813403          	ld	s0,8(sp)
    80008e54:	01010113          	addi	sp,sp,16
    80008e58:	00008067          	ret
    80008e5c:	00b00693          	li	a3,11
    80008e60:	e55ff06f          	j	80008cb4 <__memset+0x2c>
    80008e64:	00300e93          	li	t4,3
    80008e68:	ea5ff06f          	j	80008d0c <__memset+0x84>
    80008e6c:	00100e93          	li	t4,1
    80008e70:	e9dff06f          	j	80008d0c <__memset+0x84>
    80008e74:	00000e93          	li	t4,0
    80008e78:	e95ff06f          	j	80008d0c <__memset+0x84>
    80008e7c:	00000793          	li	a5,0
    80008e80:	ef9ff06f          	j	80008d78 <__memset+0xf0>
    80008e84:	00200e93          	li	t4,2
    80008e88:	e85ff06f          	j	80008d0c <__memset+0x84>
    80008e8c:	00400e93          	li	t4,4
    80008e90:	e7dff06f          	j	80008d0c <__memset+0x84>
    80008e94:	00500e93          	li	t4,5
    80008e98:	e75ff06f          	j	80008d0c <__memset+0x84>
    80008e9c:	00600e93          	li	t4,6
    80008ea0:	e6dff06f          	j	80008d0c <__memset+0x84>

0000000080008ea4 <__memmove>:
    80008ea4:	ff010113          	addi	sp,sp,-16
    80008ea8:	00813423          	sd	s0,8(sp)
    80008eac:	01010413          	addi	s0,sp,16
    80008eb0:	0e060863          	beqz	a2,80008fa0 <__memmove+0xfc>
    80008eb4:	fff6069b          	addiw	a3,a2,-1
    80008eb8:	0006881b          	sext.w	a6,a3
    80008ebc:	0ea5e863          	bltu	a1,a0,80008fac <__memmove+0x108>
    80008ec0:	00758713          	addi	a4,a1,7
    80008ec4:	00a5e7b3          	or	a5,a1,a0
    80008ec8:	40a70733          	sub	a4,a4,a0
    80008ecc:	0077f793          	andi	a5,a5,7
    80008ed0:	00f73713          	sltiu	a4,a4,15
    80008ed4:	00174713          	xori	a4,a4,1
    80008ed8:	0017b793          	seqz	a5,a5
    80008edc:	00e7f7b3          	and	a5,a5,a4
    80008ee0:	10078863          	beqz	a5,80008ff0 <__memmove+0x14c>
    80008ee4:	00900793          	li	a5,9
    80008ee8:	1107f463          	bgeu	a5,a6,80008ff0 <__memmove+0x14c>
    80008eec:	0036581b          	srliw	a6,a2,0x3
    80008ef0:	fff8081b          	addiw	a6,a6,-1
    80008ef4:	02081813          	slli	a6,a6,0x20
    80008ef8:	01d85893          	srli	a7,a6,0x1d
    80008efc:	00858813          	addi	a6,a1,8
    80008f00:	00058793          	mv	a5,a1
    80008f04:	00050713          	mv	a4,a0
    80008f08:	01088833          	add	a6,a7,a6
    80008f0c:	0007b883          	ld	a7,0(a5)
    80008f10:	00878793          	addi	a5,a5,8
    80008f14:	00870713          	addi	a4,a4,8
    80008f18:	ff173c23          	sd	a7,-8(a4)
    80008f1c:	ff0798e3          	bne	a5,a6,80008f0c <__memmove+0x68>
    80008f20:	ff867713          	andi	a4,a2,-8
    80008f24:	02071793          	slli	a5,a4,0x20
    80008f28:	0207d793          	srli	a5,a5,0x20
    80008f2c:	00f585b3          	add	a1,a1,a5
    80008f30:	40e686bb          	subw	a3,a3,a4
    80008f34:	00f507b3          	add	a5,a0,a5
    80008f38:	06e60463          	beq	a2,a4,80008fa0 <__memmove+0xfc>
    80008f3c:	0005c703          	lbu	a4,0(a1)
    80008f40:	00e78023          	sb	a4,0(a5)
    80008f44:	04068e63          	beqz	a3,80008fa0 <__memmove+0xfc>
    80008f48:	0015c603          	lbu	a2,1(a1)
    80008f4c:	00100713          	li	a4,1
    80008f50:	00c780a3          	sb	a2,1(a5)
    80008f54:	04e68663          	beq	a3,a4,80008fa0 <__memmove+0xfc>
    80008f58:	0025c603          	lbu	a2,2(a1)
    80008f5c:	00200713          	li	a4,2
    80008f60:	00c78123          	sb	a2,2(a5)
    80008f64:	02e68e63          	beq	a3,a4,80008fa0 <__memmove+0xfc>
    80008f68:	0035c603          	lbu	a2,3(a1)
    80008f6c:	00300713          	li	a4,3
    80008f70:	00c781a3          	sb	a2,3(a5)
    80008f74:	02e68663          	beq	a3,a4,80008fa0 <__memmove+0xfc>
    80008f78:	0045c603          	lbu	a2,4(a1)
    80008f7c:	00400713          	li	a4,4
    80008f80:	00c78223          	sb	a2,4(a5)
    80008f84:	00e68e63          	beq	a3,a4,80008fa0 <__memmove+0xfc>
    80008f88:	0055c603          	lbu	a2,5(a1)
    80008f8c:	00500713          	li	a4,5
    80008f90:	00c782a3          	sb	a2,5(a5)
    80008f94:	00e68663          	beq	a3,a4,80008fa0 <__memmove+0xfc>
    80008f98:	0065c703          	lbu	a4,6(a1)
    80008f9c:	00e78323          	sb	a4,6(a5)
    80008fa0:	00813403          	ld	s0,8(sp)
    80008fa4:	01010113          	addi	sp,sp,16
    80008fa8:	00008067          	ret
    80008fac:	02061713          	slli	a4,a2,0x20
    80008fb0:	02075713          	srli	a4,a4,0x20
    80008fb4:	00e587b3          	add	a5,a1,a4
    80008fb8:	f0f574e3          	bgeu	a0,a5,80008ec0 <__memmove+0x1c>
    80008fbc:	02069613          	slli	a2,a3,0x20
    80008fc0:	02065613          	srli	a2,a2,0x20
    80008fc4:	fff64613          	not	a2,a2
    80008fc8:	00e50733          	add	a4,a0,a4
    80008fcc:	00c78633          	add	a2,a5,a2
    80008fd0:	fff7c683          	lbu	a3,-1(a5)
    80008fd4:	fff78793          	addi	a5,a5,-1
    80008fd8:	fff70713          	addi	a4,a4,-1
    80008fdc:	00d70023          	sb	a3,0(a4)
    80008fe0:	fec798e3          	bne	a5,a2,80008fd0 <__memmove+0x12c>
    80008fe4:	00813403          	ld	s0,8(sp)
    80008fe8:	01010113          	addi	sp,sp,16
    80008fec:	00008067          	ret
    80008ff0:	02069713          	slli	a4,a3,0x20
    80008ff4:	02075713          	srli	a4,a4,0x20
    80008ff8:	00170713          	addi	a4,a4,1
    80008ffc:	00e50733          	add	a4,a0,a4
    80009000:	00050793          	mv	a5,a0
    80009004:	0005c683          	lbu	a3,0(a1)
    80009008:	00178793          	addi	a5,a5,1
    8000900c:	00158593          	addi	a1,a1,1
    80009010:	fed78fa3          	sb	a3,-1(a5)
    80009014:	fee798e3          	bne	a5,a4,80009004 <__memmove+0x160>
    80009018:	f89ff06f          	j	80008fa0 <__memmove+0xfc>
	...
