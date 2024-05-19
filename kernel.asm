
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e0013103          	ld	sp,-512(sp) # 8000ce00 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	771060ef          	jal	ra,80006f8c <start>

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
    80001080:	63d010ef          	jal	ra,80002ebc <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	61c080e7          	jalr	1564(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016c4:	4d078793          	addi	a5,a5,1232 # 8000cb90 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	cf4080e7          	jalr	-780(ra) # 800033c4 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	ba8080e7          	jalr	-1112(ra) # 80003288 <_ZN10ThreadListdlEPv>
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
    80001718:	47c78793          	addi	a5,a5,1148 # 8000cb90 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	b30080e7          	jalr	-1232(ra) # 80003258 <_ZN10ThreadListnwEm>
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
    8000176c:	6b093903          	ld	s2,1712(s2) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    8000178c:	b58080e7          	jalr	-1192(ra) # 800032e0 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	3d8080e7          	jalr	984(ra) # 80002b68 <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	d50080e7          	jalr	-688(ra) # 800034f4 <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	b94080e7          	jalr	-1132(ra) # 80003370 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	06c080e7          	jalr	108(ra) # 80003864 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	2f0080e7          	jalr	752(ra) # 80002af8 <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	3b0080e7          	jalr	944(ra) # 80002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	978080e7          	jalr	-1672(ra) # 800031c8 <_ZN10ThreadList9get_firstEv>
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
    80001964:	4b87b783          	ld	a5,1208(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	360080e7          	jalr	864(ra) # 80002cd8 <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	240080e7          	jalr	576(ra) # 80002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	ec0080e7          	jalr	-320(ra) # 80003864 <_ZN3TCB21clear_from_timed_waitEb>
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
    80001a14:	e78080e7          	jalr	-392(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	aac080e7          	jalr	-1364(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001a44:	bf8080e7          	jalr	-1032(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001ae0:	50c080e7          	jalr	1292(ra) # 8000dfe8 <_Unwind_Resume>

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
    80001b3c:	350080e7          	jalr	848(ra) # 80001e88 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000b797          	auipc	a5,0xb
    80001b44:	2b07b783          	ld	a5,688(a5) # 8000cdf0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000b797          	auipc	a5,0xb
    80001b54:	2887b783          	ld	a5,648(a5) # 8000cdd8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001b88:	ba0080e7          	jalr	-1120(ra) # 80006724 <_Z8userMainv>
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

0000000080001c94 <_Z6testerPv>:
        printNumber(value--);
        if (value < 0) terminate();
    }
};

[[noreturn]] void tester(void*) {
    80001c94:	fd010113          	addi	sp,sp,-48
    80001c98:	02113423          	sd	ra,40(sp)
    80001c9c:	02813023          	sd	s0,32(sp)
    80001ca0:	00913c23          	sd	s1,24(sp)
    80001ca4:	01213823          	sd	s2,16(sp)
    80001ca8:	01313423          	sd	s3,8(sp)
    80001cac:	03010413          	addi	s0,sp,48
    while (true) {
        char c1 = getc();
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	970080e7          	jalr	-1680(ra) # 80001620 <_Z4getcv>
    80001cb8:	00050993          	mv	s3,a0
        char c2 = getc();
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	964080e7          	jalr	-1692(ra) # 80001620 <_Z4getcv>
    80001cc4:	00050913          	mv	s2,a0
        char c3 = getc();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	958080e7          	jalr	-1704(ra) # 80001620 <_Z4getcv>
    80001cd0:	00050493          	mv	s1,a0
        putc(c1);
    80001cd4:	00098513          	mv	a0,s3
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	994080e7          	jalr	-1644(ra) # 8000166c <_Z4putcc>
        putc(c2);
    80001ce0:	00090513          	mv	a0,s2
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	988080e7          	jalr	-1656(ra) # 8000166c <_Z4putcc>
        putc(c3);
    80001cec:	00048513          	mv	a0,s1
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	97c080e7          	jalr	-1668(ra) # 8000166c <_Z4putcc>
    while (true) {
    80001cf8:	fb9ff06f          	j	80001cb0 <_Z6testerPv+0x1c>

0000000080001cfc <main>:
    }
}

int main() {
    80001cfc:	fd010113          	addi	sp,sp,-48
    80001d00:	02113423          	sd	ra,40(sp)
    80001d04:	02813023          	sd	s0,32(sp)
    80001d08:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001d0c:	0000b797          	auipc	a5,0xb
    80001d10:	0ec7b783          	ld	a5,236(a5) # 8000cdf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001d14:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	b90080e7          	jalr	-1136(ra) # 800028a8 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	070080e7          	jalr	112(ra) # 80001d90 <_ZN3Con10initializeEv>

    thread_t threads[3];

    /// Main Thread
    thread_create(&threads[0], nullptr, nullptr);
    80001d28:	00000613          	li	a2,0
    80001d2c:	00000593          	li	a1,0
    80001d30:	fd840513          	addi	a0,s0,-40
    80001d34:	fffff097          	auipc	ra,0xfffff
    80001d38:	5c4080e7          	jalr	1476(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d3c:	fd843703          	ld	a4,-40(s0)
    80001d40:	0000b797          	auipc	a5,0xb
    80001d44:	0d87b783          	ld	a5,216(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d48:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d4c:	00200793          	li	a5,2
    80001d50:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    /// Kernel Thread for console output
    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d54:	00000613          	li	a2,0
    80001d58:	00000597          	auipc	a1,0x0
    80001d5c:	dcc58593          	addi	a1,a1,-564 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001d60:	fe040513          	addi	a0,s0,-32
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	594080e7          	jalr	1428(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    /// Test Periodic Thread
//    Thread *periodic = new PeriodicWorker();
//    periodic -> start();
//    thread_create(&threads[2], tester, nullptr);
    /// Test Everything
    thread_create(&threads[2], userMainWrapper, nullptr);
    80001d6c:	00000613          	li	a2,0
    80001d70:	00000597          	auipc	a1,0x0
    80001d74:	e0458593          	addi	a1,a1,-508 # 80001b74 <_Z15userMainWrapperPv>
    80001d78:	fe840513          	addi	a0,s0,-24
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	57c080e7          	jalr	1404(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (true) thread_dispatch();
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	648080e7          	jalr	1608(ra) # 800013cc <_Z15thread_dispatchv>
    80001d8c:	ff9ff06f          	j	80001d84 <main+0x88>

0000000080001d90 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d90:	0000b797          	auipc	a5,0xb
    80001d94:	0e07c783          	lbu	a5,224(a5) # 8000ce70 <_ZN3Con11initializedE>
    80001d98:	00078463          	beqz	a5,80001da0 <_ZN3Con10initializeEv+0x10>
    80001d9c:	00008067          	ret
void Con::initialize() {
    80001da0:	fe010113          	addi	sp,sp,-32
    80001da4:	00113c23          	sd	ra,24(sp)
    80001da8:	00813823          	sd	s0,16(sp)
    80001dac:	00913423          	sd	s1,8(sp)
    80001db0:	01213023          	sd	s2,0(sp)
    80001db4:	02010413          	addi	s0,sp,32
        initialized = true;
    80001db8:	00100793          	li	a5,1
    80001dbc:	0000b717          	auipc	a4,0xb
    80001dc0:	0af70a23          	sb	a5,180(a4) # 8000ce70 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001dc4:	21000513          	li	a0,528
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	c00080e7          	jalr	-1024(ra) # 800029c8 <_ZN13BoundedBuffernwEm>
    80001dd0:	00050493          	mv	s1,a0
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	b5c080e7          	jalr	-1188(ra) # 80002930 <_ZN13BoundedBufferC1Ev>
    80001ddc:	0000b797          	auipc	a5,0xb
    80001de0:	0897be23          	sd	s1,156(a5) # 8000ce78 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001de4:	21000513          	li	a0,528
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	be0080e7          	jalr	-1056(ra) # 800029c8 <_ZN13BoundedBuffernwEm>
    80001df0:	00050493          	mv	s1,a0
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	b3c080e7          	jalr	-1220(ra) # 80002930 <_ZN13BoundedBufferC1Ev>
    80001dfc:	0000b797          	auipc	a5,0xb
    80001e00:	0897b223          	sd	s1,132(a5) # 8000ce80 <_ZN3Con13output_bufferE>
    }
}
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	00013903          	ld	s2,0(sp)
    80001e14:	02010113          	addi	sp,sp,32
    80001e18:	00008067          	ret
    80001e1c:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001e20:	00048513          	mv	a0,s1
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	bd4080e7          	jalr	-1068(ra) # 800029f8 <_ZN13BoundedBufferdlEPv>
    80001e2c:	00090513          	mv	a0,s2
    80001e30:	0000c097          	auipc	ra,0xc
    80001e34:	1b8080e7          	jalr	440(ra) # 8000dfe8 <_Unwind_Resume>
    80001e38:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e3c:	00048513          	mv	a0,s1
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	bb8080e7          	jalr	-1096(ra) # 800029f8 <_ZN13BoundedBufferdlEPv>
    80001e48:	00090513          	mv	a0,s2
    80001e4c:	0000c097          	auipc	ra,0xc
    80001e50:	19c080e7          	jalr	412(ra) # 8000dfe8 <_Unwind_Resume>

0000000080001e54 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    80001e64:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e68:	0000b517          	auipc	a0,0xb
    80001e6c:	01853503          	ld	a0,24(a0) # 8000ce80 <_ZN3Con13output_bufferE>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	bb0080e7          	jalr	-1104(ra) # 80002a20 <_ZN13BoundedBuffer4putcEc>
}
    80001e78:	00813083          	ld	ra,8(sp)
    80001e7c:	00013403          	ld	s0,0(sp)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e98:	0000b517          	auipc	a0,0xb
    80001e9c:	fe853503          	ld	a0,-24(a0) # 8000ce80 <_ZN3Con13output_bufferE>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	bec080e7          	jalr	-1044(ra) # 80002a8c <_ZN13BoundedBuffer4getcEv>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00113423          	sd	ra,8(sp)
    80001ec0:	00813023          	sd	s0,0(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001ecc:	0000b517          	auipc	a0,0xb
    80001ed0:	fac53503          	ld	a0,-84(a0) # 8000ce78 <_ZN3Con12input_bufferE>
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	b4c080e7          	jalr	-1204(ra) # 80002a20 <_ZN13BoundedBuffer4putcEc>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001efc:	0000b517          	auipc	a0,0xb
    80001f00:	f7c53503          	ld	a0,-132(a0) # 8000ce78 <_ZN3Con12input_bufferE>
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	b88080e7          	jalr	-1144(ra) # 80002a8c <_ZN13BoundedBuffer4getcEv>
    80001f0c:	00813083          	ld	ra,8(sp)
    80001f10:	00013403          	ld	s0,0(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001f2c:	01053783          	ld	a5,16(a0)
    80001f30:	00078e63          	beqz	a5,80001f4c <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001f34:	01853503          	ld	a0,24(a0)
    80001f38:	000780e7          	jalr	a5
}
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001f4c:	00053783          	ld	a5,0(a0)
    80001f50:	0107b783          	ld	a5,16(a5)
    80001f54:	000780e7          	jalr	a5
    80001f58:	fe5ff06f          	j	80001f3c <_ZN6Thread12start_helperEPv+0x20>

0000000080001f5c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00113c23          	sd	ra,24(sp)
    80001f64:	00813823          	sd	s0,16(sp)
    80001f68:	00913423          	sd	s1,8(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00050493          	mv	s1,a0
    80001f74:	0000b797          	auipc	a5,0xb
    80001f78:	c4478793          	addi	a5,a5,-956 # 8000cbb8 <_ZTV6Thread+0x10>
    80001f7c:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f80:	00853503          	ld	a0,8(a0)
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	8bc080e7          	jalr	-1860(ra) # 80003840 <_ZNK3TCB11is_finishedEv>
    80001f8c:	00050a63          	beqz	a0,80001fa0 <_ZN6ThreadD1Ev+0x44>
    80001f90:	0084b503          	ld	a0,8(s1)
    80001f94:	00050663          	beqz	a0,80001fa0 <_ZN6ThreadD1Ev+0x44>
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	784080e7          	jalr	1924(ra) # 8000371c <_ZN3TCBdlEPv>
}
    80001fa0:	01813083          	ld	ra,24(sp)
    80001fa4:	01013403          	ld	s0,16(sp)
    80001fa8:	00813483          	ld	s1,8(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN14PeriodicThread3runEv>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    if (period <= 0) this -> period = DEFAULT_TIME_SLICE;
    else this -> period = period;
}

[[noreturn]] void PeriodicThread::run() {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
    while (true) {
        periodicActivation();
    80001fcc:	0004b783          	ld	a5,0(s1)
    80001fd0:	0187b783          	ld	a5,24(a5)
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	000780e7          	jalr	a5
        time_sleep(period);
    80001fdc:	0204b503          	ld	a0,32(s1)
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	5f4080e7          	jalr	1524(ra) # 800015d4 <_Z10time_sleepm>
    while (true) {
    80001fe8:	fe5ff06f          	j	80001fcc <_ZN14PeriodicThread3runEv+0x18>

0000000080001fec <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001fec:	0000b797          	auipc	a5,0xb
    80001ff0:	bf478793          	addi	a5,a5,-1036 # 8000cbe0 <_ZTV9Semaphore+0x10>
    80001ff4:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001ff8:	00853503          	ld	a0,8(a0)
    80001ffc:	02050663          	beqz	a0,80002028 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002010:	fffff097          	auipc	ra,0xfffff
    80002014:	448080e7          	jalr	1096(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80002018:	00813083          	ld	ra,8(sp)
    8000201c:	00013403          	ld	s0,0(sp)
    80002020:	01010113          	addi	sp,sp,16
    80002024:	00008067          	ret
    80002028:	00008067          	ret

000000008000202c <_Znwm>:
void* operator new(size_t size){
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00113423          	sd	ra,8(sp)
    80002034:	00813023          	sd	s0,0(sp)
    80002038:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	21c080e7          	jalr	540(ra) # 80001258 <_Z9mem_allocm>
}
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	248080e7          	jalr	584(ra) # 800012ac <_Z8mem_freePv>
}
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00113c23          	sd	ra,24(sp)
    80002084:	00813823          	sd	s0,16(sp)
    80002088:	00913423          	sd	s1,8(sp)
    8000208c:	02010413          	addi	s0,sp,32
    80002090:	00050493          	mv	s1,a0
}
    80002094:	00000097          	auipc	ra,0x0
    80002098:	ec8080e7          	jalr	-312(ra) # 80001f5c <_ZN6ThreadD1Ev>
    8000209c:	00048513          	mv	a0,s1
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	fb4080e7          	jalr	-76(ra) # 80002054 <_ZdlPv>
    800020a8:	01813083          	ld	ra,24(sp)
    800020ac:	01013403          	ld	s0,16(sp)
    800020b0:	00813483          	ld	s1,8(sp)
    800020b4:	02010113          	addi	sp,sp,32
    800020b8:	00008067          	ret

00000000800020bc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	00050493          	mv	s1,a0
}
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	f18080e7          	jalr	-232(ra) # 80001fec <_ZN9SemaphoreD1Ev>
    800020dc:	00048513          	mv	a0,s1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	f74080e7          	jalr	-140(ra) # 80002054 <_ZdlPv>
    800020e8:	01813083          	ld	ra,24(sp)
    800020ec:	01013403          	ld	s0,16(sp)
    800020f0:	00813483          	ld	s1,8(sp)
    800020f4:	02010113          	addi	sp,sp,32
    800020f8:	00008067          	ret

00000000800020fc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	0000b797          	auipc	a5,0xb
    8000210c:	ab078793          	addi	a5,a5,-1360 # 8000cbb8 <_ZTV6Thread+0x10>
    80002110:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002114:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002118:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    8000211c:	00c53c23          	sd	a2,24(a0)
}
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	0000b797          	auipc	a5,0xb
    8000213c:	a8078793          	addi	a5,a5,-1408 # 8000cbb8 <_ZTV6Thread+0x10>
    80002140:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002144:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002148:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    8000214c:	00053c23          	sd	zero,24(a0)
}
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN6Thread5startEv>:
int Thread::start() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    8000216c:	00050613          	mv	a2,a0
    80002170:	00000597          	auipc	a1,0x0
    80002174:	dac58593          	addi	a1,a1,-596 # 80001f1c <_ZN6Thread12start_helperEPv>
    80002178:	00850513          	addi	a0,a0,8
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	17c080e7          	jalr	380(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	228080e7          	jalr	552(ra) # 800013cc <_Z15thread_dispatchv>
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00813023          	sd	s0,0(sp)
    800021c8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	408080e7          	jalr	1032(ra) # 800015d4 <_Z10time_sleepm>
}
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	0000b797          	auipc	a5,0xb
    800021f8:	9ec78793          	addi	a5,a5,-1556 # 8000cbe0 <_ZTV9Semaphore+0x10>
    800021fc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002200:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002204:	00850513          	addi	a0,a0,8
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	200080e7          	jalr	512(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002210:	00813083          	ld	ra,8(sp)
    80002214:	00013403          	ld	s0,0(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002220:	00853503          	ld	a0,8(a0)
    80002224:	02050663          	beqz	a0,80002250 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00113423          	sd	ra,8(sp)
    80002230:	00813023          	sd	s0,0(sp)
    80002234:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	26c080e7          	jalr	620(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    80002240:	00813083          	ld	ra,8(sp)
    80002244:	00013403          	ld	s0,0(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret
    return -1;
    80002250:	fff00513          	li	a0,-1
}
    80002254:	00008067          	ret

0000000080002258 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002258:	00853503          	ld	a0,8(a0)
    8000225c:	02050663          	beqz	a0,80002288 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002270:	fffff097          	auipc	ra,0xfffff
    80002274:	280080e7          	jalr	640(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80002278:	00813083          	ld	ra,8(sp)
    8000227c:	00013403          	ld	s0,0(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret
    return -1;
    80002288:	fff00513          	li	a0,-1
}
    8000228c:	00008067          	ret

0000000080002290 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800022a0:	00853503          	ld	a0,8(a0)
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	298080e7          	jalr	664(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800022ac:	00813083          	ld	ra,8(sp)
    800022b0:	00013403          	ld	s0,0(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800022cc:	00853503          	ld	a0,8(a0)
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	2b8080e7          	jalr	696(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    thread_exit();
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	088080e7          	jalr	136(ra) # 80001380 <_Z11thread_exitv>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002310:	fe010113          	addi	sp,sp,-32
    80002314:	00113c23          	sd	ra,24(sp)
    80002318:	00813823          	sd	s0,16(sp)
    8000231c:	00913423          	sd	s1,8(sp)
    80002320:	01213023          	sd	s2,0(sp)
    80002324:	02010413          	addi	s0,sp,32
    80002328:	00050493          	mv	s1,a0
    8000232c:	00058913          	mv	s2,a1
    80002330:	00000097          	auipc	ra,0x0
    80002334:	dfc080e7          	jalr	-516(ra) # 8000212c <_ZN6ThreadC1Ev>
    80002338:	0000b797          	auipc	a5,0xb
    8000233c:	8c878793          	addi	a5,a5,-1848 # 8000cc00 <_ZTV14PeriodicThread+0x10>
    80002340:	00f4b023          	sd	a5,0(s1)
    if (period <= 0) this -> period = DEFAULT_TIME_SLICE;
    80002344:	02091263          	bnez	s2,80002368 <_ZN14PeriodicThreadC1Em+0x58>
    80002348:	00200793          	li	a5,2
    8000234c:	02f4b023          	sd	a5,32(s1)
}
    80002350:	01813083          	ld	ra,24(sp)
    80002354:	01013403          	ld	s0,16(sp)
    80002358:	00813483          	ld	s1,8(sp)
    8000235c:	00013903          	ld	s2,0(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00008067          	ret
    else this -> period = period;
    80002368:	0324b023          	sd	s2,32(s1)
}
    8000236c:	fe5ff06f          	j	80002350 <_ZN14PeriodicThreadC1Em+0x40>

0000000080002370 <_ZN7Console4getcEv>:
    }
}

char Console::getc() {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00113423          	sd	ra,8(sp)
    80002378:	00813023          	sd	s0,0(sp)
    8000237c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	2a0080e7          	jalr	672(ra) # 80001620 <_Z4getcv>
}
    80002388:	00813083          	ld	ra,8(sp)
    8000238c:	00013403          	ld	s0,0(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	2c4080e7          	jalr	708(ra) # 8000166c <_Z4putcc>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);

    [[noreturn]] virtual void run() override;
    virtual void periodicActivation () {}
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00813423          	sd	s0,8(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	00813403          	ld	s0,8(sp)
    800023e8:	01010113          	addi	sp,sp,16
    800023ec:	00008067          	ret

00000000800023f0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00113423          	sd	ra,8(sp)
    800023f8:	00813023          	sd	s0,0(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	0000b797          	auipc	a5,0xb
    80002404:	80078793          	addi	a5,a5,-2048 # 8000cc00 <_ZTV14PeriodicThread+0x10>
    80002408:	00f53023          	sd	a5,0(a0)
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	b50080e7          	jalr	-1200(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN14PeriodicThreadD0Ev>:
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00050493          	mv	s1,a0
    8000243c:	0000a797          	auipc	a5,0xa
    80002440:	7c478793          	addi	a5,a5,1988 # 8000cc00 <_ZTV14PeriodicThread+0x10>
    80002444:	00f53023          	sd	a5,0(a0)
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	b14080e7          	jalr	-1260(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80002450:	00048513          	mv	a0,s1
    80002454:	00000097          	auipc	ra,0x0
    80002458:	c00080e7          	jalr	-1024(ra) # 80002054 <_ZdlPv>
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret

0000000080002470 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    8000247c:	00853783          	ld	a5,8(a0)
    80002480:	02078463          	beqz	a5,800024a8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002484:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    80002488:	01053783          	ld	a5,16(a0)
    8000248c:	00078863          	beqz	a5,8000249c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002490:	00061463          	bnez	a2,80002498 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002494:	00853583          	ld	a1,8(a0)
    80002498:	00b7b423          	sd	a1,8(a5)
}
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    800024a8:	00068863          	beqz	a3,800024b8 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    800024ac:	0000b797          	auipc	a5,0xb
    800024b0:	9cb7be23          	sd	a1,-1572(a5) # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    800024b4:	fd5ff06f          	j	80002488 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    800024b8:	0000b797          	auipc	a5,0xb
    800024bc:	9cb7bc23          	sd	a1,-1576(a5) # 8000ce90 <_ZN15MemoryAllocator11usedSegHeadE>
    800024c0:	fc9ff06f          	j	80002488 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

00000000800024c4 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	01213023          	sd	s2,0(sp)
    800024d8:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800024dc:	10050263          	beqz	a0,800025e0 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800024e0:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800024e4:	0000b497          	auipc	s1,0xb
    800024e8:	9a44b483          	ld	s1,-1628(s1) # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800024ec:	0c048263          	beqz	s1,800025b0 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    800024f0:	0004b783          	ld	a5,0(s1)
    800024f4:	0527e663          	bltu	a5,s2,80002540 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800024f8:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    800024fc:	01800713          	li	a4,24
    80002500:	04f76463          	bltu	a4,a5,80002548 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002504:	00100693          	li	a3,1
    80002508:	00000613          	li	a2,0
    8000250c:	0104b583          	ld	a1,16(s1)
    80002510:	00048513          	mv	a0,s1
    80002514:	00000097          	auipc	ra,0x0
    80002518:	f5c080e7          	jalr	-164(ra) # 80002470 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    8000251c:	0000b797          	auipc	a5,0xb
    80002520:	9747b783          	ld	a5,-1676(a5) # 8000ce90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002524:	04078a63          	beqz	a5,80002578 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002528:	0497fc63          	bgeu	a5,s1,80002580 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    8000252c:	00078713          	mv	a4,a5
    80002530:	0107b783          	ld	a5,16(a5)
    80002534:	04078863          	beqz	a5,80002584 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002538:	fe97eae3          	bltu	a5,s1,8000252c <_ZN15MemoryAllocator9mem_allocEm+0x68>
    8000253c:	0480006f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    80002540:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002544:	fa9ff06f          	j	800024ec <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    80002548:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    8000254c:	0084b703          	ld	a4,8(s1)
    80002550:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002554:	0104b703          	ld	a4,16(s1)
    80002558:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    8000255c:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    80002560:	00100693          	li	a3,1
    80002564:	00100613          	li	a2,1
    80002568:	00048513          	mv	a0,s1
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	f04080e7          	jalr	-252(ra) # 80002470 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    80002574:	fa9ff06f          	j	8000251c <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    80002578:	00078713          	mv	a4,a5
    8000257c:	0080006f          	j	80002584 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002580:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002584:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002588:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000258c:	04070063          	beqz	a4,800025cc <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002590:	01073783          	ld	a5,16(a4)
    80002594:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002598:	02070e63          	beqz	a4,800025d4 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    8000259c:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    800025a0:	0104b783          	ld	a5,16(s1)
    800025a4:	00078463          	beqz	a5,800025ac <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800025a8:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    800025ac:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    800025b0:	00048513          	mv	a0,s1
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	00013903          	ld	s2,0(sp)
    800025c4:	02010113          	addi	sp,sp,32
    800025c8:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800025cc:	00070793          	mv	a5,a4
    800025d0:	fc5ff06f          	j	80002594 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    800025d4:	0000b797          	auipc	a5,0xb
    800025d8:	8a97be23          	sd	s1,-1860(a5) # 8000ce90 <_ZN15MemoryAllocator11usedSegHeadE>
    800025dc:	fc5ff06f          	j	800025a0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    800025e0:	00000493          	li	s1,0
    800025e4:	fcdff06f          	j	800025b0 <_ZN15MemoryAllocator9mem_allocEm+0xec>

00000000800025e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00813423          	sd	s0,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800025f4:	01053783          	ld	a5,16(a0)
    800025f8:	00078863          	beqz	a5,80002608 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025fc:	00053703          	ld	a4,0(a0)
    80002600:	00e506b3          	add	a3,a0,a4
    80002604:	00d78863          	beq	a5,a3,80002614 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002614:	0007b683          	ld	a3,0(a5)
    80002618:	00d70733          	add	a4,a4,a3
    8000261c:	01870713          	addi	a4,a4,24
    80002620:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002624:	0107b783          	ld	a5,16(a5)
    80002628:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    8000262c:	fc078ee3          	beqz	a5,80002608 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002630:	00a7b423          	sd	a0,8(a5)
}
    80002634:	fd5ff06f          	j	80002608 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002638 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002638:	14050a63          	beqz	a0,8000278c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    8000263c:	fd010113          	addi	sp,sp,-48
    80002640:	02113423          	sd	ra,40(sp)
    80002644:	02813023          	sd	s0,32(sp)
    80002648:	00913c23          	sd	s1,24(sp)
    8000264c:	01213823          	sd	s2,16(sp)
    80002650:	01313423          	sd	s3,8(sp)
    80002654:	03010413          	addi	s0,sp,48
    80002658:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000265c:	0000a797          	auipc	a5,0xa
    80002660:	7847b783          	ld	a5,1924(a5) # 8000cde0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002664:	0007b783          	ld	a5,0(a5)
    80002668:	12f56663          	bltu	a0,a5,80002794 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	7b47b783          	ld	a5,1972(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002674:	0007b783          	ld	a5,0(a5)
    80002678:	12a7e263          	bltu	a5,a0,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    8000267c:	0000b797          	auipc	a5,0xb
    80002680:	8147b783          	ld	a5,-2028(a5) # 8000ce90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002684:	12078063          	beqz	a5,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002688:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000268c:	00078863          	beqz	a5,8000269c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002690:	0a978663          	beq	a5,s1,8000273c <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002694:	0107b783          	ld	a5,16(a5)
    80002698:	ff5ff06f          	j	8000268c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000269c:	00000793          	li	a5,0
    if (!found) return -3;
    800026a0:	10078663          	beqz	a5,800027ac <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    800026a4:	00000693          	li	a3,0
    800026a8:	00000613          	li	a2,0
    800026ac:	ff893583          	ld	a1,-8(s2)
    800026b0:	00048513          	mv	a0,s1
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	dbc080e7          	jalr	-580(ra) # 80002470 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    800026bc:	fe893783          	ld	a5,-24(s2)
    800026c0:	01878793          	addi	a5,a5,24
    800026c4:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    800026c8:	0000a797          	auipc	a5,0xa
    800026cc:	7c07b783          	ld	a5,1984(a5) # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    800026d0:	06078a63          	beqz	a5,80002744 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    800026d4:	08f4e463          	bltu	s1,a5,8000275c <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800026d8:	00078993          	mv	s3,a5
    800026dc:	0107b783          	ld	a5,16(a5)
    800026e0:	00078463          	beqz	a5,800026e8 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    800026e4:	fe97eae3          	bltu	a5,s1,800026d8 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    800026e8:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800026ec:	0109b783          	ld	a5,16(s3)
    800026f0:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800026f4:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800026f8:	ff893783          	ld	a5,-8(s2)
    800026fc:	00078463          	beqz	a5,80002704 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002700:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002704:	00048513          	mv	a0,s1
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	ee0080e7          	jalr	-288(ra) # 800025e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002710:	00098513          	mv	a0,s3
    80002714:	00000097          	auipc	ra,0x0
    80002718:	ed4080e7          	jalr	-300(ra) # 800025e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    8000271c:	00000513          	li	a0,0
}
    80002720:	02813083          	ld	ra,40(sp)
    80002724:	02013403          	ld	s0,32(sp)
    80002728:	01813483          	ld	s1,24(sp)
    8000272c:	01013903          	ld	s2,16(sp)
    80002730:	00813983          	ld	s3,8(sp)
    80002734:	03010113          	addi	sp,sp,48
    80002738:	00008067          	ret
            found = true;
    8000273c:	00100793          	li	a5,1
    80002740:	f61ff06f          	j	800026a0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002744:	0000a797          	auipc	a5,0xa
    80002748:	7497b223          	sd	s1,1860(a5) # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    8000274c:	fe093c23          	sd	zero,-8(s2)
    80002750:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002754:	00000513          	li	a0,0
    80002758:	fc9ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    8000275c:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002760:	0000a797          	auipc	a5,0xa
    80002764:	72878793          	addi	a5,a5,1832 # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002768:	0007b703          	ld	a4,0(a5)
    8000276c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002770:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002774:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002778:	00048513          	mv	a0,s1
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	e6c080e7          	jalr	-404(ra) # 800025e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002784:	00000513          	li	a0,0
    80002788:	f99ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000278c:	fff00513          	li	a0,-1
}
    80002790:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002794:	fff00513          	li	a0,-1
    80002798:	f89ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000279c:	fff00513          	li	a0,-1
    800027a0:	f81ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    800027a4:	ffe00513          	li	a0,-2
    800027a8:	f79ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    800027ac:	ffd00513          	li	a0,-3
    800027b0:	f71ff06f          	j	80002720 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

00000000800027b4 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
    putc('\n');
    800027c8:	00a00513          	li	a0,10
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	ea0080e7          	jalr	-352(ra) # 8000166c <_Z4putcc>
    putc('M');
    800027d4:	04d00513          	li	a0,77
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	e94080e7          	jalr	-364(ra) # 8000166c <_Z4putcc>
    putc(':');
    800027e0:	03a00513          	li	a0,58
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	e88080e7          	jalr	-376(ra) # 8000166c <_Z4putcc>
    putc(' ');
    800027ec:	02000513          	li	a0,32
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	e7c080e7          	jalr	-388(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027f8:	0000a497          	auipc	s1,0xa
    800027fc:	6904b483          	ld	s1,1680(s1) # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    80002800:	02048863          	beqz	s1,80002830 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    80002804:	0004b503          	ld	a0,0(s1)
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	394080e7          	jalr	916(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    80002810:	02000513          	li	a0,32
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	e58080e7          	jalr	-424(ra) # 8000166c <_Z4putcc>
        putc('f');
    8000281c:	06600513          	li	a0,102
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	e4c080e7          	jalr	-436(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    80002828:	0104b483          	ld	s1,16(s1)
    8000282c:	fd5ff06f          	j	80002800 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    putc('\t');
    80002830:	00900513          	li	a0,9
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	e38080e7          	jalr	-456(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000283c:	0000a497          	auipc	s1,0xa
    80002840:	6544b483          	ld	s1,1620(s1) # 8000ce90 <_ZN15MemoryAllocator11usedSegHeadE>
    80002844:	02048863          	beqz	s1,80002874 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    80002848:	0004b503          	ld	a0,0(s1)
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	350080e7          	jalr	848(ra) # 80001b9c <_Z11printNumberm>
        putc(' ');
    80002854:	02000513          	li	a0,32
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	e14080e7          	jalr	-492(ra) # 8000166c <_Z4putcc>
        putc('u');
    80002860:	07500513          	li	a0,117
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	e08080e7          	jalr	-504(ra) # 8000166c <_Z4putcc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000286c:	0104b483          	ld	s1,16(s1)
    80002870:	fd5ff06f          	j	80002844 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002874:	01813083          	ld	ra,24(sp)
    80002878:	01013403          	ld	s0,16(sp)
    8000287c:	00813483          	ld	s1,8(sp)
    80002880:	02010113          	addi	sp,sp,32
    80002884:	00008067          	ret

0000000080002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00813423          	sd	s0,8(sp)
    80002890:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002894:	05750513          	addi	a0,a0,87
}
    80002898:	00655513          	srli	a0,a0,0x6
    8000289c:	00813403          	ld	s0,8(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    800028a8:	0000a797          	auipc	a5,0xa
    800028ac:	5f07b783          	ld	a5,1520(a5) # 8000ce98 <_ZN15MemoryAllocator8instanceE>
    800028b0:	00078463          	beqz	a5,800028b8 <_ZN15MemoryAllocator10initializeEv+0x10>
    800028b4:	00008067          	ret
void MemoryAllocator::initialize() {
    800028b8:	fe010113          	addi	sp,sp,-32
    800028bc:	00113c23          	sd	ra,24(sp)
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    800028cc:	0000a797          	auipc	a5,0xa
    800028d0:	5147b783          	ld	a5,1300(a5) # 8000cde0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800028d4:	0007b783          	ld	a5,0(a5)
    800028d8:	0000a497          	auipc	s1,0xa
    800028dc:	5b048493          	addi	s1,s1,1456 # 8000ce88 <_ZN15MemoryAllocator11freeSegHeadE>
    800028e0:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800028e4:	0000a717          	auipc	a4,0xa
    800028e8:	53c73703          	ld	a4,1340(a4) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x58>
    800028ec:	00073703          	ld	a4,0(a4)
    800028f0:	40f70733          	sub	a4,a4,a5
    800028f4:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800028f8:	0004b783          	ld	a5,0(s1)
    800028fc:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002900:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    80002904:	00100513          	li	a0,1
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	f80080e7          	jalr	-128(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002910:	00000097          	auipc	ra,0x0
    80002914:	bb4080e7          	jalr	-1100(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
    80002918:	00a4b823          	sd	a0,16(s1)
}
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00008067          	ret

0000000080002930 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002930:	fe010113          	addi	sp,sp,-32
    80002934:	00113c23          	sd	ra,24(sp)
    80002938:	00813823          	sd	s0,16(sp)
    8000293c:	00913423          	sd	s1,8(sp)
    80002940:	02010413          	addi	s0,sp,32
    80002944:	00050493          	mv	s1,a0
    80002948:	00052023          	sw	zero,0(a0)
    8000294c:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    80002950:	00000593          	li	a1,0
    80002954:	01050513          	addi	a0,a0,16
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	100080e7          	jalr	256(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002960:	1f400593          	li	a1,500
    80002964:	00848513          	addi	a0,s1,8
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	0f0080e7          	jalr	240(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
}
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	01013403          	ld	s0,16(sp)
    80002978:	00813483          	ld	s1,8(sp)
    8000297c:	02010113          	addi	sp,sp,32
    80002980:	00008067          	ret

0000000080002984 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002984:	fe010113          	addi	sp,sp,-32
    80002988:	00113c23          	sd	ra,24(sp)
    8000298c:	00813823          	sd	s0,16(sp)
    80002990:	00913423          	sd	s1,8(sp)
    80002994:	02010413          	addi	s0,sp,32
    80002998:	00050493          	mv	s1,a0
    Sem::close(item_available);
    8000299c:	01053503          	ld	a0,16(a0)
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	e90080e7          	jalr	-368(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    800029a8:	0084b503          	ld	a0,8(s1)
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	e84080e7          	jalr	-380(ra) # 80001830 <_ZN3Sem5closeEPS_>
}
    800029b4:	01813083          	ld	ra,24(sp)
    800029b8:	01013403          	ld	s0,16(sp)
    800029bc:	00813483          	ld	s1,8(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	eb0080e7          	jalr	-336(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	ae4080e7          	jalr	-1308(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800029e8:	00813083          	ld	ra,8(sp)
    800029ec:	00013403          	ld	s0,0(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	c30080e7          	jalr	-976(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050493          	mv	s1,a0
    80002a3c:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002a40:	00853503          	ld	a0,8(a0)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	e58080e7          	jalr	-424(ra) # 8000189c <_ZN3Sem4waitEPS_>
    array[tail] = c;
    80002a4c:	0044a783          	lw	a5,4(s1)
    80002a50:	00f48733          	add	a4,s1,a5
    80002a54:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002a58:	0017879b          	addiw	a5,a5,1
    80002a5c:	1f400713          	li	a4,500
    80002a60:	02e7e7bb          	remw	a5,a5,a4
    80002a64:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002a68:	0104b503          	ld	a0,16(s1)
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	e84080e7          	jalr	-380(ra) # 800018f0 <_ZN3Sem6signalEPS_>
}
    80002a74:	01813083          	ld	ra,24(sp)
    80002a78:	01013403          	ld	s0,16(sp)
    80002a7c:	00813483          	ld	s1,8(sp)
    80002a80:	00013903          	ld	s2,0(sp)
    80002a84:	02010113          	addi	sp,sp,32
    80002a88:	00008067          	ret

0000000080002a8c <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a8c:	fe010113          	addi	sp,sp,-32
    80002a90:	00113c23          	sd	ra,24(sp)
    80002a94:	00813823          	sd	s0,16(sp)
    80002a98:	00913423          	sd	s1,8(sp)
    80002a9c:	01213023          	sd	s2,0(sp)
    80002aa0:	02010413          	addi	s0,sp,32
    80002aa4:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002aa8:	01053503          	ld	a0,16(a0)
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	df0080e7          	jalr	-528(ra) # 8000189c <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002ab4:	0004a783          	lw	a5,0(s1)
    80002ab8:	00f48733          	add	a4,s1,a5
    80002abc:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002ac0:	0017879b          	addiw	a5,a5,1
    80002ac4:	1f400713          	li	a4,500
    80002ac8:	02e7e7bb          	remw	a5,a5,a4
    80002acc:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002ad0:	0084b503          	ld	a0,8(s1)
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	e1c080e7          	jalr	-484(ra) # 800018f0 <_ZN3Sem6signalEPS_>
    return c;
}
    80002adc:	00090513          	mv	a0,s2
    80002ae0:	01813083          	ld	ra,24(sp)
    80002ae4:	01013403          	ld	s0,16(sp)
    80002ae8:	00813483          	ld	s1,8(sp)
    80002aec:	00013903          	ld	s2,0(sp)
    80002af0:	02010113          	addi	sp,sp,32
    80002af4:	00008067          	ret

0000000080002af8 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002af8:	fe010113          	addi	sp,sp,-32
    80002afc:	00113c23          	sd	ra,24(sp)
    80002b00:	00813823          	sd	s0,16(sp)
    80002b04:	00913423          	sd	s1,8(sp)
    80002b08:	02010413          	addi	s0,sp,32
    80002b0c:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002b10:	0000a517          	auipc	a0,0xa
    80002b14:	39053503          	ld	a0,912(a0) # 8000cea0 <_ZN9Scheduler10tail_readyE>
    80002b18:	02050e63          	beqz	a0,80002b54 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002b1c:	00048593          	mv	a1,s1
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	ad8080e7          	jalr	-1320(ra) # 800035f8 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002b28:	0000a797          	auipc	a5,0xa
    80002b2c:	3697bc23          	sd	s1,888(a5) # 8000cea0 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002b30:	00000593          	li	a1,0
    80002b34:	00048513          	mv	a0,s1
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	ac0080e7          	jalr	-1344(ra) # 800035f8 <_ZN3TCB14set_next_readyEPS_>
}
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002b54:	0000a797          	auipc	a5,0xa
    80002b58:	34c78793          	addi	a5,a5,844 # 8000cea0 <_ZN9Scheduler10tail_readyE>
    80002b5c:	0097b023          	sd	s1,0(a5)
    80002b60:	0097b423          	sd	s1,8(a5)
    80002b64:	fcdff06f          	j	80002b30 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002b68 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002b68:	fe010113          	addi	sp,sp,-32
    80002b6c:	00113c23          	sd	ra,24(sp)
    80002b70:	00813823          	sd	s0,16(sp)
    80002b74:	00913423          	sd	s1,8(sp)
    80002b78:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b7c:	0000a497          	auipc	s1,0xa
    80002b80:	32c4b483          	ld	s1,812(s1) # 8000cea8 <_ZN9Scheduler10head_readyE>
    80002b84:	02048663          	beqz	s1,80002bb0 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b88:	00048513          	mv	a0,s1
    80002b8c:	00001097          	auipc	ra,0x1
    80002b90:	a50080e7          	jalr	-1456(ra) # 800035dc <_ZNK3TCB14get_next_readyEv>
    80002b94:	0000a797          	auipc	a5,0xa
    80002b98:	30a7ba23          	sd	a0,788(a5) # 8000cea8 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b9c:	02050663          	beqz	a0,80002bc8 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002ba0:	00000593          	li	a1,0
    80002ba4:	00048513          	mv	a0,s1
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	a50080e7          	jalr	-1456(ra) # 800035f8 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	01813083          	ld	ra,24(sp)
    80002bb8:	01013403          	ld	s0,16(sp)
    80002bbc:	00813483          	ld	s1,8(sp)
    80002bc0:	02010113          	addi	sp,sp,32
    80002bc4:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002bc8:	0000a797          	auipc	a5,0xa
    80002bcc:	2c07bc23          	sd	zero,728(a5) # 8000cea0 <_ZN9Scheduler10tail_readyE>
    80002bd0:	fd1ff06f          	j	80002ba0 <_ZN9Scheduler3getEv+0x38>

0000000080002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002be0:	06050863          	beqz	a0,80002c50 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002be4:	0000a797          	auipc	a5,0xa
    80002be8:	2cc7b783          	ld	a5,716(a5) # 8000ceb0 <_ZN9Scheduler13head_sleepingE>
    80002bec:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002bf0:	00078a63          	beqz	a5,80002c04 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002bf4:	00a78863          	beq	a5,a0,80002c04 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002bf8:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002bfc:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002c00:	ff1ff06f          	j	80002bf0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002c04:	04078a63          	beqz	a5,80002c58 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002c08:	02070c63          	beqz	a4,80002c40 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002c0c:	0587b683          	ld	a3,88(a5)
    80002c10:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002c14:	0587b703          	ld	a4,88(a5)
    80002c18:	00070a63          	beqz	a4,80002c2c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002c1c:	0507b603          	ld	a2,80(a5)
    80002c20:	05073683          	ld	a3,80(a4)
    80002c24:	00c686b3          	add	a3,a3,a2
    80002c28:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002c2c:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002c30:	00000513          	li	a0,0
}
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002c40:	0587b703          	ld	a4,88(a5)
    80002c44:	0000a697          	auipc	a3,0xa
    80002c48:	26e6b623          	sd	a4,620(a3) # 8000ceb0 <_ZN9Scheduler13head_sleepingE>
    80002c4c:	fc9ff06f          	j	80002c14 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002c50:	fff00513          	li	a0,-1
    80002c54:	fe1ff06f          	j	80002c34 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002c58:	ffe00513          	li	a0,-2
    80002c5c:	fd9ff06f          	j	80002c34 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002c60 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00113c23          	sd	ra,24(sp)
    80002c68:	00813823          	sd	s0,16(sp)
    80002c6c:	00913423          	sd	s1,8(sp)
    80002c70:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c74:	0000a797          	auipc	a5,0xa
    80002c78:	1a47b783          	ld	a5,420(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c7c:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002c80:	00100593          	li	a1,1
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	9fc080e7          	jalr	-1540(ra) # 80003684 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002c90:	0484c783          	lbu	a5,72(s1)
    80002c94:	00078c63          	beqz	a5,80002cac <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002c98:	01813083          	ld	ra,24(sp)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret
        TCB::running = Scheduler::get();
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	ebc080e7          	jalr	-324(ra) # 80002b68 <_ZN9Scheduler3getEv>
    80002cb4:	00050593          	mv	a1,a0
    80002cb8:	0000a797          	auipc	a5,0xa
    80002cbc:	1607b783          	ld	a5,352(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cc0:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002cc4:	fca48ae3          	beq	s1,a0,80002c98 <_ZN9Scheduler13change_threadEv+0x38>
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	828080e7          	jalr	-2008(ra) # 800034f4 <_ZN3TCB5yieldEPS_S0_>
}
    80002cd4:	fc5ff06f          	j	80002c98 <_ZN9Scheduler13change_threadEv+0x38>

0000000080002cd8 <_ZN9Scheduler12put_to_sleepEm>:
    if (!time) return -1;
    80002cd8:	18050a63          	beqz	a0,80002e6c <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002cdc:	fc010113          	addi	sp,sp,-64
    80002ce0:	02113c23          	sd	ra,56(sp)
    80002ce4:	02813823          	sd	s0,48(sp)
    80002ce8:	02913423          	sd	s1,40(sp)
    80002cec:	03213023          	sd	s2,32(sp)
    80002cf0:	01313c23          	sd	s3,24(sp)
    80002cf4:	01413823          	sd	s4,16(sp)
    80002cf8:	01513423          	sd	s5,8(sp)
    80002cfc:	04010413          	addi	s0,sp,64
    80002d00:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002d04:	0000a797          	auipc	a5,0xa
    80002d08:	1147b783          	ld	a5,276(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d0c:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002d10:	0000a497          	auipc	s1,0xa
    80002d14:	1a04b483          	ld	s1,416(s1) # 8000ceb0 <_ZN9Scheduler13head_sleepingE>
    80002d18:	02048e63          	beqz	s1,80002d54 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002d1c:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002d20:	00000a13          	li	s4,0
    while (tmp) {
    80002d24:	0e048463          	beqz	s1,80002e0c <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	93c080e7          	jalr	-1732(ra) # 80003668 <_ZNK3TCB17get_time_to_sleepEv>
    80002d34:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002d38:	0529ea63          	bltu	s3,s2,80002d8c <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	8f0080e7          	jalr	-1808(ra) # 80003630 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002d48:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002d4c:	00050493          	mv	s1,a0
    while (tmp) {
    80002d50:	fd5ff06f          	j	80002d24 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002d54:	0000a797          	auipc	a5,0xa
    80002d58:	1557be23          	sd	s5,348(a5) # 8000ceb0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002d5c:	00000593          	li	a1,0
    80002d60:	000a8513          	mv	a0,s5
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	8b0080e7          	jalr	-1872(ra) # 80003614 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002d6c:	00098593          	mv	a1,s3
    80002d70:	000a8513          	mv	a0,s5
    80002d74:	00001097          	auipc	ra,0x1
    80002d78:	8d8080e7          	jalr	-1832(ra) # 8000364c <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	ee4080e7          	jalr	-284(ra) # 80002c60 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d84:	00000513          	li	a0,0
    80002d88:	0c00006f          	j	80002e48 <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d8c:	00048513          	mv	a0,s1
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	8d8080e7          	jalr	-1832(ra) # 80003668 <_ZNK3TCB17get_time_to_sleepEv>
    80002d98:	41250933          	sub	s2,a0,s2
    80002d9c:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002da0:	00098593          	mv	a1,s3
    80002da4:	000a8513          	mv	a0,s5
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	8a4080e7          	jalr	-1884(ra) # 8000364c <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002db0:	00048593          	mv	a1,s1
    80002db4:	000a8513          	mv	a0,s5
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	85c080e7          	jalr	-1956(ra) # 80003614 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002dc0:	040a0063          	beqz	s4,80002e00 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002dc4:	000a8593          	mv	a1,s5
    80002dc8:	000a0513          	mv	a0,s4
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	848080e7          	jalr	-1976(ra) # 80003614 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00001097          	auipc	ra,0x1
    80002ddc:	890080e7          	jalr	-1904(ra) # 80003668 <_ZNK3TCB17get_time_to_sleepEv>
    80002de0:	413505b3          	sub	a1,a0,s3
    80002de4:	00048513          	mv	a0,s1
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	864080e7          	jalr	-1948(ra) # 8000364c <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	e70080e7          	jalr	-400(ra) # 80002c60 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002df8:	00000513          	li	a0,0
    80002dfc:	04c0006f          	j	80002e48 <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002e00:	0000a797          	auipc	a5,0xa
    80002e04:	0b57b823          	sd	s5,176(a5) # 8000ceb0 <_ZN9Scheduler13head_sleepingE>
    80002e08:	fcdff06f          	j	80002dd4 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002e0c:	412985b3          	sub	a1,s3,s2
    80002e10:	000a8513          	mv	a0,s5
    80002e14:	00001097          	auipc	ra,0x1
    80002e18:	838080e7          	jalr	-1992(ra) # 8000364c <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002e1c:	000a8593          	mv	a1,s5
    80002e20:	000a0513          	mv	a0,s4
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	7f0080e7          	jalr	2032(ra) # 80003614 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002e2c:	00000593          	li	a1,0
    80002e30:	000a8513          	mv	a0,s5
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	7e0080e7          	jalr	2016(ra) # 80003614 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	e24080e7          	jalr	-476(ra) # 80002c60 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002e44:	00000513          	li	a0,0
}
    80002e48:	03813083          	ld	ra,56(sp)
    80002e4c:	03013403          	ld	s0,48(sp)
    80002e50:	02813483          	ld	s1,40(sp)
    80002e54:	02013903          	ld	s2,32(sp)
    80002e58:	01813983          	ld	s3,24(sp)
    80002e5c:	01013a03          	ld	s4,16(sp)
    80002e60:	00813a83          	ld	s5,8(sp)
    80002e64:	04010113          	addi	sp,sp,64
    80002e68:	00008067          	ret
    if (!time) return -1;
    80002e6c:	fff00513          	li	a0,-1
}
    80002e70:	00008067          	ret

0000000080002e74 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00813423          	sd	s0,8(sp)
    80002e7c:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002e80:	0000a797          	auipc	a5,0xa
    80002e84:	f987b783          	ld	a5,-104(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e88:	0007b783          	ld	a5,0(a5)
    80002e8c:	0287b783          	ld	a5,40(a5)
    80002e90:	00078c63          	beqz	a5,80002ea8 <_ZN5RiscV10popSppSpieEv+0x34>
    80002e94:	0000a717          	auipc	a4,0xa
    80002e98:	f7c73703          	ld	a4,-132(a4) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e9c:	00e78663          	beq	a5,a4,80002ea8 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002ea0:	10000793          	li	a5,256
    80002ea4:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002ea8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002eac:	10200073          	sret
}
    80002eb0:	00813403          	ld	s0,8(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ebc:	f9010113          	addi	sp,sp,-112
    80002ec0:	06113423          	sd	ra,104(sp)
    80002ec4:	06813023          	sd	s0,96(sp)
    80002ec8:	04913c23          	sd	s1,88(sp)
    80002ecc:	05213823          	sd	s2,80(sp)
    80002ed0:	05313423          	sd	s3,72(sp)
    80002ed4:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002ed8:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002edc:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002ee0:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002ee4:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ee8:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002eec:	14202773          	csrr	a4,scause
    80002ef0:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002ef4:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002ef8:	ff870893          	addi	a7,a4,-8
    80002efc:	00100813          	li	a6,1
    80002f00:	07187063          	bgeu	a6,a7,80002f60 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002f04:	fff00793          	li	a5,-1
    80002f08:	03f79793          	slli	a5,a5,0x3f
    80002f0c:	00178793          	addi	a5,a5,1
    80002f10:	16f70063          	beq	a4,a5,80003070 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002f14:	fff00793          	li	a5,-1
    80002f18:	03f79793          	slli	a5,a5,0x3f
    80002f1c:	00978793          	addi	a5,a5,9
    80002f20:	22f70463          	beq	a4,a5,80003148 <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002f24:	00070513          	mv	a0,a4
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	c74080e7          	jalr	-908(ra) # 80001b9c <_Z11printNumberm>
        putc('!');
    80002f30:	02100513          	li	a0,33
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	738080e7          	jalr	1848(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002f3c:	03f00513          	li	a0,63
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	72c080e7          	jalr	1836(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002f48:	02100513          	li	a0,33
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	720080e7          	jalr	1824(ra) # 8000166c <_Z4putcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002f54:	00100793          	li	a5,1
    80002f58:	00078513          	mv	a0,a5
    }
    80002f5c:	0540006f          	j	80002fb0 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f60:	14102773          	csrr	a4,sepc
    80002f64:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002f68:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002f6c:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f70:	10002773          	csrr	a4,sstatus
    80002f74:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002f78:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002f7c:	04200713          	li	a4,66
    80002f80:	02f76463          	bltu	a4,a5,80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002f84:	00279793          	slli	a5,a5,0x2
    80002f88:	00007717          	auipc	a4,0x7
    80002f8c:	09870713          	addi	a4,a4,152 # 8000a020 <CONSOLE_STATUS+0x10>
    80002f90:	00e787b3          	add	a5,a5,a4
    80002f94:	0007a783          	lw	a5,0(a5)
    80002f98:	00e787b3          	add	a5,a5,a4
    80002f9c:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002fa0:	fffff097          	auipc	ra,0xfffff
    80002fa4:	524080e7          	jalr	1316(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002fa8:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002fac:	10091073          	csrw	sstatus,s2
    80002fb0:	06813083          	ld	ra,104(sp)
    80002fb4:	06013403          	ld	s0,96(sp)
    80002fb8:	05813483          	ld	s1,88(sp)
    80002fbc:	05013903          	ld	s2,80(sp)
    80002fc0:	04813983          	ld	s3,72(sp)
    80002fc4:	07010113          	addi	sp,sp,112
    80002fc8:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	66c080e7          	jalr	1644(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002fd4:	fd5ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	76c080e7          	jalr	1900(ra) # 80003744 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002fe0:	fc9ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	6bc080e7          	jalr	1724(ra) # 800036a0 <_ZN3TCB11thread_exitEv>
                break;
    80002fec:	fbdff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	560080e7          	jalr	1376(ra) # 80003550 <_ZN3TCB8dispatchEv>
                break;
    80002ff8:	fb1ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80002ffc:	0005859b          	sext.w	a1,a1
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	a58080e7          	jalr	-1448(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80003008:	fa1ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	824080e7          	jalr	-2012(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    80003014:	f95ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	884080e7          	jalr	-1916(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    80003020:	f89ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	8cc080e7          	jalr	-1844(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    8000302c:	f7dff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	914080e7          	jalr	-1772(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    80003038:	f71ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	98c080e7          	jalr	-1652(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    80003044:	f65ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	c90080e7          	jalr	-880(ra) # 80002cd8 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80003050:	f59ff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	e98080e7          	jalr	-360(ra) # 80001eec <_ZN3Con10getc_inputEv>
                break;
    8000305c:	f4dff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80003060:	0ff57513          	andi	a0,a0,255
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	df0080e7          	jalr	-528(ra) # 80001e54 <_ZN3Con11putc_outputEc>
                break;
    8000306c:	f3dff06f          	j	80002fa8 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003070:	00200793          	li	a5,2
    80003074:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80003078:	0000a797          	auipc	a5,0xa
    8000307c:	d707b783          	ld	a5,-656(a5) # 8000cde8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003080:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003084:	06048263          	beqz	s1,800030e8 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    80003088:	0504b783          	ld	a5,80(s1)
    8000308c:	fff78793          	addi	a5,a5,-1
    80003090:	04f4b823          	sd	a5,80(s1)
    80003094:	03c0006f          	j	800030d0 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003098:	00100593          	li	a1,1
    8000309c:	00048513          	mv	a0,s1
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	7c4080e7          	jalr	1988(ra) # 80003864 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	a4c080e7          	jalr	-1460(ra) # 80002af8 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    800030b4:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    800030b8:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    800030bc:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    800030c0:	0000a717          	auipc	a4,0xa
    800030c4:	d2873703          	ld	a4,-728(a4) # 8000cde8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800030c8:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    800030cc:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    800030d0:	00048c63          	beqz	s1,800030e8 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    800030d4:	0504b783          	ld	a5,80(s1)
    800030d8:	00079863          	bnez	a5,800030e8 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    800030dc:	0484c783          	lbu	a5,72(s1)
    800030e0:	fc0784e3          	beqz	a5,800030a8 <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    800030e4:	fb5ff06f          	j	80003098 <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    800030e8:	0000a717          	auipc	a4,0xa
    800030ec:	d2073703          	ld	a4,-736(a4) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030f0:	00073783          	ld	a5,0(a4)
    800030f4:	00178793          	addi	a5,a5,1
    800030f8:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    800030fc:	0000a717          	auipc	a4,0xa
    80003100:	d1c73703          	ld	a4,-740(a4) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003104:	00073703          	ld	a4,0(a4)
    80003108:	00073703          	ld	a4,0(a4)
    8000310c:	eae7e2e3          	bltu	a5,a4,80002fb0 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003110:	141027f3          	csrr	a5,sepc
    80003114:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80003118:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000311c:	100027f3          	csrr	a5,sstatus
    80003120:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003124:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    80003128:	0000a797          	auipc	a5,0xa
    8000312c:	ce07b783          	ld	a5,-800(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003130:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80003134:	00000097          	auipc	ra,0x0
    80003138:	41c080e7          	jalr	1052(ra) # 80003550 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    8000313c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003140:	14149073          	csrw	sepc,s1
}
    80003144:	e6dff06f          	j	80002fb0 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003148:	141027f3          	csrr	a5,sepc
    8000314c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003150:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003154:	100027f3          	csrr	a5,sstatus
    80003158:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    8000315c:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80003160:	00004097          	auipc	ra,0x4
    80003164:	684080e7          	jalr	1668(ra) # 800077e4 <plic_claim>
    80003168:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    8000316c:	00a00793          	li	a5,10
    80003170:	02f50263          	beq	a0,a5,80003194 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    80003174:	00048513          	mv	a0,s1
    80003178:	00004097          	auipc	ra,0x4
    8000317c:	6a4080e7          	jalr	1700(ra) # 8000781c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003180:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003184:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003188:	20000793          	li	a5,512
    8000318c:	1447b073          	csrc	sip,a5
}
    80003190:	e21ff06f          	j	80002fb0 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003194:	0000a797          	auipc	a5,0xa
    80003198:	c447b783          	ld	a5,-956(a5) # 8000cdd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000319c:	0007b783          	ld	a5,0(a5)
    800031a0:	0007c783          	lbu	a5,0(a5)
    800031a4:	0017f793          	andi	a5,a5,1
    800031a8:	fc0786e3          	beqz	a5,80003174 <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    800031ac:	0000a797          	auipc	a5,0xa
    800031b0:	c247b783          	ld	a5,-988(a5) # 8000cdd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031b4:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    800031b8:	0007c503          	lbu	a0,0(a5)
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	cfc080e7          	jalr	-772(ra) # 80001eb8 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800031c4:	fd1ff06f          	j	80003194 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

00000000800031c8 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00813423          	sd	s0,8(sp)
    800031d0:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800031d4:	00053503          	ld	a0,0(a0)
    800031d8:	00050463          	beqz	a0,800031e0 <_ZN10ThreadList9get_firstEv+0x18>
    800031dc:	00053503          	ld	a0,0(a0)
}
    800031e0:	00813403          	ld	s0,8(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN10ThreadList6removeEP3TCB>:
    tmp -> next = nullptr;
    delete tmp;
    return thread;
}

int ThreadList::remove(TCB *thread) {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00813423          	sd	s0,8(sp)
    800031f4:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    800031f8:	04058863          	beqz	a1,80003248 <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    800031fc:	00053783          	ld	a5,0(a0)
    80003200:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    80003204:	00078c63          	beqz	a5,8000321c <_ZN10ThreadList6removeEP3TCB+0x30>
    80003208:	0007b703          	ld	a4,0(a5)
    8000320c:	00b70863          	beq	a4,a1,8000321c <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    80003210:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    80003214:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    80003218:	fedff06f          	j	80003204 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    8000321c:	02078a63          	beqz	a5,80003250 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    80003220:	00068e63          	beqz	a3,8000323c <_ZN10ThreadList6removeEP3TCB+0x50>
    80003224:	0087b783          	ld	a5,8(a5)
    80003228:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    8000322c:	00000513          	li	a0,0
}
    80003230:	00813403          	ld	s0,8(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret
    else head = tmp;
    8000323c:	00f53023          	sd	a5,0(a0)
    return 0;
    80003240:	00000513          	li	a0,0
    80003244:	fedff06f          	j	80003230 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    80003248:	fff00513          	li	a0,-1
    8000324c:	fe5ff06f          	j	80003230 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    80003250:	ffe00513          	li	a0,-2
    80003254:	fddff06f          	j	80003230 <_ZN10ThreadList6removeEP3TCB+0x44>

0000000080003258 <_ZN10ThreadListnwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00113423          	sd	ra,8(sp)
    80003260:	00813023          	sd	s0,0(sp)
    80003264:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	620080e7          	jalr	1568(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	254080e7          	jalr	596(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003278:	00813083          	ld	ra,8(sp)
    8000327c:	00013403          	ld	s0,0(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret

0000000080003288 <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00113423          	sd	ra,8(sp)
    80003290:	00813023          	sd	s0,0(sp)
    80003294:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	3a0080e7          	jalr	928(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800032a0:	00813083          	ld	ra,8(sp)
    800032a4:	00013403          	ld	s0,0(sp)
    800032a8:	01010113          	addi	sp,sp,16
    800032ac:	00008067          	ret

00000000800032b0 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	5c8080e7          	jalr	1480(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	1fc080e7          	jalr	508(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800032d0:	00813083          	ld	ra,8(sp)
    800032d4:	00013403          	ld	s0,0(sp)
    800032d8:	01010113          	addi	sp,sp,16
    800032dc:	00008067          	ret

00000000800032e0 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    800032e0:	fe010113          	addi	sp,sp,-32
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	00813823          	sd	s0,16(sp)
    800032ec:	00913423          	sd	s1,8(sp)
    800032f0:	01213023          	sd	s2,0(sp)
    800032f4:	02010413          	addi	s0,sp,32
    800032f8:	00050493          	mv	s1,a0
    800032fc:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003300:	01000513          	li	a0,16
    80003304:	00000097          	auipc	ra,0x0
    80003308:	fac080e7          	jalr	-84(ra) # 800032b0 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    8000330c:	01253023          	sd	s2,0(a0)
    80003310:	00053423          	sd	zero,8(a0)
    80003314:	0004b783          	ld	a5,0(s1)
    80003318:	02078463          	beqz	a5,80003340 <_ZN10ThreadList9push_backEP3TCB+0x60>
    8000331c:	0084b783          	ld	a5,8(s1)
    80003320:	00a7b423          	sd	a0,8(a5)
    80003324:	00a4b423          	sd	a0,8(s1)
}
    80003328:	01813083          	ld	ra,24(sp)
    8000332c:	01013403          	ld	s0,16(sp)
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	00013903          	ld	s2,0(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003340:	00a4b023          	sd	a0,0(s1)
    80003344:	fe1ff06f          	j	80003324 <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080003348 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	00813023          	sd	s0,0(sp)
    80003354:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	2e0080e7          	jalr	736(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003360:	00813083          	ld	ra,8(sp)
    80003364:	00013403          	ld	s0,0(sp)
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret

0000000080003370 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00113c23          	sd	ra,24(sp)
    80003378:	00813823          	sd	s0,16(sp)
    8000337c:	00913423          	sd	s1,8(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80003388:	00053503          	ld	a0,0(a0)
    8000338c:	02050863          	beqz	a0,800033bc <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003390:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003394:	00853703          	ld	a4,8(a0)
    80003398:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	fac080e7          	jalr	-84(ra) # 80003348 <_ZN10ThreadList4NodedlEPv>
}
    800033a4:	00048513          	mv	a0,s1
    800033a8:	01813083          	ld	ra,24(sp)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	02010113          	addi	sp,sp,32
    800033b8:	00008067          	ret
    if (!head) return nullptr;
    800033bc:	00050493          	mv	s1,a0
    800033c0:	fe5ff06f          	j	800033a4 <_ZN10ThreadList12remove_firstEv+0x34>

00000000800033c4 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800033c4:	fe010113          	addi	sp,sp,-32
    800033c8:	00113c23          	sd	ra,24(sp)
    800033cc:	00813823          	sd	s0,16(sp)
    800033d0:	00913423          	sd	s1,8(sp)
    800033d4:	02010413          	addi	s0,sp,32
    800033d8:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800033dc:	00048513          	mv	a0,s1
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	de8080e7          	jalr	-536(ra) # 800031c8 <_ZN10ThreadList9get_firstEv>
    800033e8:	00050a63          	beqz	a0,800033fc <_ZN10ThreadList4freeEv+0x38>
    800033ec:	00048513          	mv	a0,s1
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	f80080e7          	jalr	-128(ra) # 80003370 <_ZN10ThreadList12remove_firstEv>
    800033f8:	fe5ff06f          	j	800033dc <_ZN10ThreadList4freeEv+0x18>
}
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <_ZN3TCB16wrapper_functionEv>:
//    thread_dispatch();
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00113423          	sd	ra,8(sp)
    80003418:	00813023          	sd	s0,0(sp)
    8000341c:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003420:	00000097          	auipc	ra,0x0
    80003424:	a54080e7          	jalr	-1452(ra) # 80002e74 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003428:	0000a717          	auipc	a4,0xa
    8000342c:	a9073703          	ld	a4,-1392(a4) # 8000ceb8 <_ZN3TCB7runningE>
    80003430:	02873783          	ld	a5,40(a4)
    80003434:	00078663          	beqz	a5,80003440 <_ZN3TCB16wrapper_functionEv+0x30>
    80003438:	03073503          	ld	a0,48(a4)
    8000343c:	000780e7          	jalr	a5
//    thread_exit();
    ::thread_exit();
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f40080e7          	jalr	-192(ra) # 80001380 <_Z11thread_exitv>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003458:	08068863          	beqz	a3,800034e8 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    8000345c:	000017b7          	lui	a5,0x1
    80003460:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003464:	00f687b3          	add	a5,a3,a5
    context = {
    80003468:	00000717          	auipc	a4,0x0
    8000346c:	fa870713          	addi	a4,a4,-88 # 80003410 <_ZN3TCB16wrapper_functionEv>
    80003470:	00e53823          	sd	a4,16(a0)
    80003474:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    80003478:	0000a717          	auipc	a4,0xa
    8000347c:	a4070713          	addi	a4,a4,-1472 # 8000ceb8 <_ZN3TCB7runningE>
    80003480:	00872783          	lw	a5,8(a4)
    80003484:	0017881b          	addiw	a6,a5,1
    80003488:	01072423          	sw	a6,8(a4)
    8000348c:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80003490:	00200793          	li	a5,2
    80003494:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    80003498:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    8000349c:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    800034a0:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    800034a4:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    800034a8:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    800034ac:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    800034b0:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800034b4:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    800034b8:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    800034bc:	02058a63          	beqz	a1,800034f0 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00113423          	sd	ra,8(sp)
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	628080e7          	jalr	1576(ra) # 80002af8 <_ZN9Scheduler3putEP3TCB>
}
    800034d8:	00813083          	ld	ra,8(sp)
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    800034e8:	00000793          	li	a5,0
    800034ec:	f7dff06f          	j	80003468 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    800034f0:	00008067          	ret

00000000800034f4 <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    800034f4:	fe010113          	addi	sp,sp,-32
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00813823          	sd	s0,16(sp)
    80003500:	00913423          	sd	s1,8(sp)
    80003504:	01213023          	sd	s2,0(sp)
    80003508:	02010413          	addi	s0,sp,32
    8000350c:	00050493          	mv	s1,a0
    80003510:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	bf4080e7          	jalr	-1036(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    8000351c:	01248a63          	beq	s1,s2,80003530 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003520:	01090593          	addi	a1,s2,16
    80003524:	01048513          	addi	a0,s1,16
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	ce0080e7          	jalr	-800(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	c58080e7          	jalr	-936(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003538:	01813083          	ld	ra,24(sp)
    8000353c:	01013403          	ld	s0,16(sp)
    80003540:	00813483          	ld	s1,8(sp)
    80003544:	00013903          	ld	s2,0(sp)
    80003548:	02010113          	addi	sp,sp,32
    8000354c:	00008067          	ret

0000000080003550 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003550:	fe010113          	addi	sp,sp,-32
    80003554:	00113c23          	sd	ra,24(sp)
    80003558:	00813823          	sd	s0,16(sp)
    8000355c:	00913423          	sd	s1,8(sp)
    80003560:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003564:	0000a497          	auipc	s1,0xa
    80003568:	9544b483          	ld	s1,-1708(s1) # 8000ceb8 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    8000356c:	0204a783          	lw	a5,32(s1)
    80003570:	04078663          	beqz	a5,800035bc <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003574:	00300713          	li	a4,3
    80003578:	04e78a63          	beq	a5,a4,800035cc <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    8000357c:	fffff097          	auipc	ra,0xfffff
    80003580:	5ec080e7          	jalr	1516(ra) # 80002b68 <_ZN9Scheduler3getEv>
    80003584:	00050593          	mv	a1,a0
    80003588:	0000a797          	auipc	a5,0xa
    8000358c:	93078793          	addi	a5,a5,-1744 # 8000ceb8 <_ZN3TCB7runningE>
    80003590:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    80003594:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    80003598:	00a48863          	beq	s1,a0,800035a8 <_ZN3TCB8dispatchEv+0x58>
    8000359c:	00048513          	mv	a0,s1
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	f54080e7          	jalr	-172(ra) # 800034f4 <_ZN3TCB5yieldEPS_S0_>
}
    800035a8:	01813083          	ld	ra,24(sp)
    800035ac:	01013403          	ld	s0,16(sp)
    800035b0:	00813483          	ld	s1,8(sp)
    800035b4:	02010113          	addi	sp,sp,32
    800035b8:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800035bc:	00048513          	mv	a0,s1
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	538080e7          	jalr	1336(ra) # 80002af8 <_ZN9Scheduler3putEP3TCB>
    800035c8:	fb5ff06f          	j	8000357c <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800035cc:	0384b503          	ld	a0,56(s1)
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	068080e7          	jalr	104(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
    800035d8:	fa5ff06f          	j	8000357c <_ZN3TCB8dispatchEv+0x2c>

00000000800035dc <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00813423          	sd	s0,8(sp)
    800035e4:	01010413          	addi	s0,sp,16
    return next_ready;
}
    800035e8:	04053503          	ld	a0,64(a0)
    800035ec:	00813403          	ld	s0,8(sp)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret

00000000800035f8 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    800035f8:	ff010113          	addi	sp,sp,-16
    800035fc:	00813423          	sd	s0,8(sp)
    80003600:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003604:	04b53023          	sd	a1,64(a0)
}
    80003608:	00813403          	ld	s0,8(sp)
    8000360c:	01010113          	addi	sp,sp,16
    80003610:	00008067          	ret

0000000080003614 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00813423          	sd	s0,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003620:	04b53c23          	sd	a1,88(a0)
}
    80003624:	00813403          	ld	s0,8(sp)
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00008067          	ret

0000000080003630 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80003630:	ff010113          	addi	sp,sp,-16
    80003634:	00813423          	sd	s0,8(sp)
    80003638:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    8000363c:	05853503          	ld	a0,88(a0)
    80003640:	00813403          	ld	s0,8(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret

000000008000364c <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00813423          	sd	s0,8(sp)
    80003654:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003658:	04b53823          	sd	a1,80(a0)
}
    8000365c:	00813403          	ld	s0,8(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret

0000000080003668 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003668:	ff010113          	addi	sp,sp,-16
    8000366c:	00813423          	sd	s0,8(sp)
    80003670:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    80003674:	05053503          	ld	a0,80(a0)
    80003678:	00813403          	ld	s0,8(sp)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret

0000000080003684 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00813423          	sd	s0,8(sp)
    8000368c:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003690:	02b52023          	sw	a1,32(a0)
}
    80003694:	00813403          	ld	s0,8(sp)
    80003698:	01010113          	addi	sp,sp,16
    8000369c:	00008067          	ret

00000000800036a0 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    800036a0:	0000a517          	auipc	a0,0xa
    800036a4:	81853503          	ld	a0,-2024(a0) # 8000ceb8 <_ZN3TCB7runningE>
    800036a8:	02050e63          	beqz	a0,800036e4 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00113423          	sd	ra,8(sp)
    800036b4:	00813023          	sd	s0,0(sp)
    800036b8:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800036bc:	00300593          	li	a1,3
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	fc4080e7          	jalr	-60(ra) # 80003684 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    800036c8:	00000097          	auipc	ra,0x0
    800036cc:	e88080e7          	jalr	-376(ra) # 80003550 <_ZN3TCB8dispatchEv>
    return 0;
    800036d0:	00000513          	li	a0,0
}
    800036d4:	00813083          	ld	ra,8(sp)
    800036d8:	00013403          	ld	s0,0(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret
    if (!running) return -1;
    800036e4:	fff00513          	li	a0,-1
}
    800036e8:	00008067          	ret

00000000800036ec <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	18c080e7          	jalr	396(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	dc0080e7          	jalr	-576(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	f0c080e7          	jalr	-244(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003744:	fc010113          	addi	sp,sp,-64
    80003748:	02113c23          	sd	ra,56(sp)
    8000374c:	02813823          	sd	s0,48(sp)
    80003750:	02913423          	sd	s1,40(sp)
    80003754:	03213023          	sd	s2,32(sp)
    80003758:	01313c23          	sd	s3,24(sp)
    8000375c:	01413823          	sd	s4,16(sp)
    80003760:	01513423          	sd	s5,8(sp)
    80003764:	04010413          	addi	s0,sp,64
    80003768:	00050913          	mv	s2,a0
    8000376c:	00058993          	mv	s3,a1
    80003770:	00060a13          	mv	s4,a2
    80003774:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003778:	06800513          	li	a0,104
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	f70080e7          	jalr	-144(ra) # 800036ec <_ZN3TCBnwEm>
    80003784:	00050493          	mv	s1,a0
    80003788:	000a8693          	mv	a3,s5
    8000378c:	000a0613          	mv	a2,s4
    80003790:	00098593          	mv	a1,s3
    80003794:	00000097          	auipc	ra,0x0
    80003798:	cc4080e7          	jalr	-828(ra) # 80003458 <_ZN3TCBC1EPFvPvES0_S0_>
    8000379c:	0200006f          	j	800037bc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    800037a0:	00050913          	mv	s2,a0
    800037a4:	00048513          	mv	a0,s1
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	f74080e7          	jalr	-140(ra) # 8000371c <_ZN3TCBdlEPv>
    800037b0:	00090513          	mv	a0,s2
    800037b4:	0000b097          	auipc	ra,0xb
    800037b8:	834080e7          	jalr	-1996(ra) # 8000dfe8 <_Unwind_Resume>
    800037bc:	00993023          	sd	s1,0(s2)
}
    800037c0:	00000513          	li	a0,0
    800037c4:	03813083          	ld	ra,56(sp)
    800037c8:	03013403          	ld	s0,48(sp)
    800037cc:	02813483          	ld	s1,40(sp)
    800037d0:	02013903          	ld	s2,32(sp)
    800037d4:	01813983          	ld	s3,24(sp)
    800037d8:	01013a03          	ld	s4,16(sp)
    800037dc:	00813a83          	ld	s5,8(sp)
    800037e0:	04010113          	addi	sp,sp,64
    800037e4:	00008067          	ret

00000000800037e8 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00113423          	sd	ra,8(sp)
    800037f0:	00813023          	sd	s0,0(sp)
    800037f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	090080e7          	jalr	144(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	cc4080e7          	jalr	-828(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003808:	00813083          	ld	ra,8(sp)
    8000380c:	00013403          	ld	s0,0(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	e10080e7          	jalr	-496(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003830:	00813083          	ld	ra,8(sp)
    80003834:	00013403          	ld	s0,0(sp)
    80003838:	01010113          	addi	sp,sp,16
    8000383c:	00008067          	ret

0000000080003840 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00813423          	sd	s0,8(sp)
    80003848:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    8000384c:	02052503          	lw	a0,32(a0)
    80003850:	ffd50513          	addi	a0,a0,-3
}
    80003854:	00153513          	seqz	a0,a0
    80003858:	00813403          	ld	s0,8(sp)
    8000385c:	01010113          	addi	sp,sp,16
    80003860:	00008067          	ret

0000000080003864 <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003864:	fe010113          	addi	sp,sp,-32
    80003868:	00113c23          	sd	ra,24(sp)
    8000386c:	00813823          	sd	s0,16(sp)
    80003870:	00913423          	sd	s1,8(sp)
    80003874:	02010413          	addi	s0,sp,32
    80003878:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    8000387c:	02059063          	bnez	a1,8000389c <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003880:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003884:	0604b023          	sd	zero,96(s1)
}
    80003888:	01813083          	ld	ra,24(sp)
    8000388c:	01013403          	ld	s0,16(sp)
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    8000389c:	06053783          	ld	a5,96(a0)
    800038a0:	00050593          	mv	a1,a0
    800038a4:	0087b503          	ld	a0,8(a5)
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	944080e7          	jalr	-1724(ra) # 800031ec <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    800038b0:	0604b703          	ld	a4,96(s1)
    800038b4:	01072783          	lw	a5,16(a4)
    800038b8:	0017879b          	addiw	a5,a5,1
    800038bc:	00f72823          	sw	a5,16(a4)
    800038c0:	fc1ff06f          	j	80003880 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

00000000800038c4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800038c4:	fe010113          	addi	sp,sp,-32
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00913423          	sd	s1,8(sp)
    800038d4:	01213023          	sd	s2,0(sp)
    800038d8:	02010413          	addi	s0,sp,32
    800038dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800038e0:	00000913          	li	s2,0
    800038e4:	00c0006f          	j	800038f0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x31) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	ae4080e7          	jalr	-1308(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x31) {
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	d30080e7          	jalr	-720(ra) # 80001620 <_Z4getcv>
    800038f8:	0005059b          	sext.w	a1,a0
    800038fc:	03100793          	li	a5,49
    80003900:	02f58a63          	beq	a1,a5,80003934 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003904:	0084b503          	ld	a0,8(s1)
    80003908:	00001097          	auipc	ra,0x1
    8000390c:	66c080e7          	jalr	1644(ra) # 80004f74 <_ZN6Buffer3putEi>
        i++;
    80003910:	0019071b          	addiw	a4,s2,1
    80003914:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003918:	0004a683          	lw	a3,0(s1)
    8000391c:	0026979b          	slliw	a5,a3,0x2
    80003920:	00d787bb          	addw	a5,a5,a3
    80003924:	0017979b          	slliw	a5,a5,0x1
    80003928:	02f767bb          	remw	a5,a4,a5
    8000392c:	fc0792e3          	bnez	a5,800038f0 <_ZL16producerKeyboardPv+0x2c>
    80003930:	fb9ff06f          	j	800038e8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003934:	00100793          	li	a5,1
    80003938:	00009717          	auipc	a4,0x9
    8000393c:	58f72c23          	sw	a5,1432(a4) # 8000ced0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003940:	02100593          	li	a1,33
    80003944:	0084b503          	ld	a0,8(s1)
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	62c080e7          	jalr	1580(ra) # 80004f74 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003950:	0104b503          	ld	a0,16(s1)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	b9c080e7          	jalr	-1124(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	00013903          	ld	s2,0(sp)
    8000396c:	02010113          	addi	sp,sp,32
    80003970:	00008067          	ret

0000000080003974 <_ZL8producerPv>:

static void producer(void *arg) {
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00913423          	sd	s1,8(sp)
    80003984:	01213023          	sd	s2,0(sp)
    80003988:	02010413          	addi	s0,sp,32
    8000398c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003990:	00000913          	li	s2,0
    80003994:	00c0006f          	j	800039a0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	a34080e7          	jalr	-1484(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800039a0:	00009797          	auipc	a5,0x9
    800039a4:	5307a783          	lw	a5,1328(a5) # 8000ced0 <_ZL9threadEnd>
    800039a8:	02079e63          	bnez	a5,800039e4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800039ac:	0004a583          	lw	a1,0(s1)
    800039b0:	0305859b          	addiw	a1,a1,48
    800039b4:	0084b503          	ld	a0,8(s1)
    800039b8:	00001097          	auipc	ra,0x1
    800039bc:	5bc080e7          	jalr	1468(ra) # 80004f74 <_ZN6Buffer3putEi>
        i++;
    800039c0:	0019071b          	addiw	a4,s2,1
    800039c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039c8:	0004a683          	lw	a3,0(s1)
    800039cc:	0026979b          	slliw	a5,a3,0x2
    800039d0:	00d787bb          	addw	a5,a5,a3
    800039d4:	0017979b          	slliw	a5,a5,0x1
    800039d8:	02f767bb          	remw	a5,a4,a5
    800039dc:	fc0792e3          	bnez	a5,800039a0 <_ZL8producerPv+0x2c>
    800039e0:	fb9ff06f          	j	80003998 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800039e4:	0104b503          	ld	a0,16(s1)
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	b08080e7          	jalr	-1272(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	00013903          	ld	s2,0(sp)
    80003a00:	02010113          	addi	sp,sp,32
    80003a04:	00008067          	ret

0000000080003a08 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003a08:	fd010113          	addi	sp,sp,-48
    80003a0c:	02113423          	sd	ra,40(sp)
    80003a10:	02813023          	sd	s0,32(sp)
    80003a14:	00913c23          	sd	s1,24(sp)
    80003a18:	01213823          	sd	s2,16(sp)
    80003a1c:	01313423          	sd	s3,8(sp)
    80003a20:	03010413          	addi	s0,sp,48
    80003a24:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a28:	00000993          	li	s3,0
    80003a2c:	01c0006f          	j	80003a48 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	99c080e7          	jalr	-1636(ra) # 800013cc <_Z15thread_dispatchv>
    80003a38:	0500006f          	j	80003a88 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a3c:	00a00513          	li	a0,10
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	c2c080e7          	jalr	-980(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003a48:	00009797          	auipc	a5,0x9
    80003a4c:	4887a783          	lw	a5,1160(a5) # 8000ced0 <_ZL9threadEnd>
    80003a50:	06079063          	bnez	a5,80003ab0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003a54:	00893503          	ld	a0,8(s2)
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	5ac080e7          	jalr	1452(ra) # 80005004 <_ZN6Buffer3getEv>
        i++;
    80003a60:	0019849b          	addiw	s1,s3,1
    80003a64:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a68:	0ff57513          	andi	a0,a0,255
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	c00080e7          	jalr	-1024(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003a74:	00092703          	lw	a4,0(s2)
    80003a78:	0027179b          	slliw	a5,a4,0x2
    80003a7c:	00e787bb          	addw	a5,a5,a4
    80003a80:	02f4e7bb          	remw	a5,s1,a5
    80003a84:	fa0786e3          	beqz	a5,80003a30 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a88:	05000793          	li	a5,80
    80003a8c:	02f4e4bb          	remw	s1,s1,a5
    80003a90:	fa049ce3          	bnez	s1,80003a48 <_ZL8consumerPv+0x40>
    80003a94:	fa9ff06f          	j	80003a3c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a98:	00893503          	ld	a0,8(s2)
    80003a9c:	00001097          	auipc	ra,0x1
    80003aa0:	568080e7          	jalr	1384(ra) # 80005004 <_ZN6Buffer3getEv>
        putc(key);
    80003aa4:	0ff57513          	andi	a0,a0,255
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	bc4080e7          	jalr	-1084(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003ab0:	00893503          	ld	a0,8(s2)
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	5dc080e7          	jalr	1500(ra) # 80005090 <_ZN6Buffer6getCntEv>
    80003abc:	fca04ee3          	bgtz	a0,80003a98 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003ac0:	01093503          	ld	a0,16(s2)
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	a2c080e7          	jalr	-1492(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003acc:	02813083          	ld	ra,40(sp)
    80003ad0:	02013403          	ld	s0,32(sp)
    80003ad4:	01813483          	ld	s1,24(sp)
    80003ad8:	01013903          	ld	s2,16(sp)
    80003adc:	00813983          	ld	s3,8(sp)
    80003ae0:	03010113          	addi	sp,sp,48
    80003ae4:	00008067          	ret

0000000080003ae8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003ae8:	f9010113          	addi	sp,sp,-112
    80003aec:	06113423          	sd	ra,104(sp)
    80003af0:	06813023          	sd	s0,96(sp)
    80003af4:	04913c23          	sd	s1,88(sp)
    80003af8:	05213823          	sd	s2,80(sp)
    80003afc:	05313423          	sd	s3,72(sp)
    80003b00:	05413023          	sd	s4,64(sp)
    80003b04:	03513c23          	sd	s5,56(sp)
    80003b08:	03613823          	sd	s6,48(sp)
    80003b0c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003b10:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	61c50513          	addi	a0,a0,1564 # 8000a130 <CONSOLE_STATUS+0x120>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	540080e7          	jalr	1344(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    80003b24:	01e00593          	li	a1,30
    80003b28:	fa040493          	addi	s1,s0,-96
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	5b4080e7          	jalr	1460(ra) # 800060e4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	680080e7          	jalr	1664(ra) # 800061bc <_Z11stringToIntPKc>
    80003b44:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003b48:	00006517          	auipc	a0,0x6
    80003b4c:	60850513          	addi	a0,a0,1544 # 8000a150 <CONSOLE_STATUS+0x140>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	50c080e7          	jalr	1292(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    80003b58:	01e00593          	li	a1,30
    80003b5c:	00048513          	mv	a0,s1
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	584080e7          	jalr	1412(ra) # 800060e4 <_Z9getStringPci>
    n = stringToInt(input);
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	650080e7          	jalr	1616(ra) # 800061bc <_Z11stringToIntPKc>
    80003b74:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b78:	00006517          	auipc	a0,0x6
    80003b7c:	5f850513          	addi	a0,a0,1528 # 8000a170 <CONSOLE_STATUS+0x160>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	4dc080e7          	jalr	1244(ra) # 8000605c <_Z11printStringPKc>
    80003b88:	00000613          	li	a2,0
    80003b8c:	00a00593          	li	a1,10
    80003b90:	00090513          	mv	a0,s2
    80003b94:	00002097          	auipc	ra,0x2
    80003b98:	678080e7          	jalr	1656(ra) # 8000620c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b9c:	00006517          	auipc	a0,0x6
    80003ba0:	5ec50513          	addi	a0,a0,1516 # 8000a188 <CONSOLE_STATUS+0x178>
    80003ba4:	00002097          	auipc	ra,0x2
    80003ba8:	4b8080e7          	jalr	1208(ra) # 8000605c <_Z11printStringPKc>
    80003bac:	00000613          	li	a2,0
    80003bb0:	00a00593          	li	a1,10
    80003bb4:	00048513          	mv	a0,s1
    80003bb8:	00002097          	auipc	ra,0x2
    80003bbc:	654080e7          	jalr	1620(ra) # 8000620c <_Z8printIntiii>
    printString(".\n");
    80003bc0:	00006517          	auipc	a0,0x6
    80003bc4:	5e050513          	addi	a0,a0,1504 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	494080e7          	jalr	1172(ra) # 8000605c <_Z11printStringPKc>
    if(threadNum > n) {
    80003bd0:	0324c463          	blt	s1,s2,80003bf8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003bd4:	03205c63          	blez	s2,80003c0c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003bd8:	03800513          	li	a0,56
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	450080e7          	jalr	1104(ra) # 8000202c <_Znwm>
    80003be4:	00050a13          	mv	s4,a0
    80003be8:	00048593          	mv	a1,s1
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	2ec080e7          	jalr	748(ra) # 80004ed8 <_ZN6BufferC1Ei>
    80003bf4:	0300006f          	j	80003c24 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003bf8:	00006517          	auipc	a0,0x6
    80003bfc:	5b050513          	addi	a0,a0,1456 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	45c080e7          	jalr	1116(ra) # 8000605c <_Z11printStringPKc>
        return;
    80003c08:	0140006f          	j	80003c1c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c0c:	00006517          	auipc	a0,0x6
    80003c10:	5dc50513          	addi	a0,a0,1500 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	448080e7          	jalr	1096(ra) # 8000605c <_Z11printStringPKc>
        return;
    80003c1c:	000b0113          	mv	sp,s6
    80003c20:	1500006f          	j	80003d70 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003c24:	00000593          	li	a1,0
    80003c28:	00009517          	auipc	a0,0x9
    80003c2c:	2b050513          	addi	a0,a0,688 # 8000ced8 <_ZL10waitForAll>
    80003c30:	ffffd097          	auipc	ra,0xffffd
    80003c34:	7d8080e7          	jalr	2008(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003c38:	00391793          	slli	a5,s2,0x3
    80003c3c:	00f78793          	addi	a5,a5,15
    80003c40:	ff07f793          	andi	a5,a5,-16
    80003c44:	40f10133          	sub	sp,sp,a5
    80003c48:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003c4c:	0019071b          	addiw	a4,s2,1
    80003c50:	00171793          	slli	a5,a4,0x1
    80003c54:	00e787b3          	add	a5,a5,a4
    80003c58:	00379793          	slli	a5,a5,0x3
    80003c5c:	00f78793          	addi	a5,a5,15
    80003c60:	ff07f793          	andi	a5,a5,-16
    80003c64:	40f10133          	sub	sp,sp,a5
    80003c68:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c6c:	00191613          	slli	a2,s2,0x1
    80003c70:	012607b3          	add	a5,a2,s2
    80003c74:	00379793          	slli	a5,a5,0x3
    80003c78:	00f987b3          	add	a5,s3,a5
    80003c7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c80:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c84:	00009717          	auipc	a4,0x9
    80003c88:	25473703          	ld	a4,596(a4) # 8000ced8 <_ZL10waitForAll>
    80003c8c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c90:	00078613          	mv	a2,a5
    80003c94:	00000597          	auipc	a1,0x0
    80003c98:	d7458593          	addi	a1,a1,-652 # 80003a08 <_ZL8consumerPv>
    80003c9c:	f9840513          	addi	a0,s0,-104
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	658080e7          	jalr	1624(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003ca8:	00000493          	li	s1,0
    80003cac:	0280006f          	j	80003cd4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003cb0:	00000597          	auipc	a1,0x0
    80003cb4:	c1458593          	addi	a1,a1,-1004 # 800038c4 <_ZL16producerKeyboardPv>
                      data + i);
    80003cb8:	00179613          	slli	a2,a5,0x1
    80003cbc:	00f60633          	add	a2,a2,a5
    80003cc0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003cc4:	00c98633          	add	a2,s3,a2
    80003cc8:	ffffd097          	auipc	ra,0xffffd
    80003ccc:	630080e7          	jalr	1584(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003cd0:	0014849b          	addiw	s1,s1,1
    80003cd4:	0524d263          	bge	s1,s2,80003d18 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003cd8:	00149793          	slli	a5,s1,0x1
    80003cdc:	009787b3          	add	a5,a5,s1
    80003ce0:	00379793          	slli	a5,a5,0x3
    80003ce4:	00f987b3          	add	a5,s3,a5
    80003ce8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003cec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003cf0:	00009717          	auipc	a4,0x9
    80003cf4:	1e873703          	ld	a4,488(a4) # 8000ced8 <_ZL10waitForAll>
    80003cf8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003cfc:	00048793          	mv	a5,s1
    80003d00:	00349513          	slli	a0,s1,0x3
    80003d04:	00aa8533          	add	a0,s5,a0
    80003d08:	fa9054e3          	blez	s1,80003cb0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003d0c:	00000597          	auipc	a1,0x0
    80003d10:	c6858593          	addi	a1,a1,-920 # 80003974 <_ZL8producerPv>
    80003d14:	fa5ff06f          	j	80003cb8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003d18:	ffffd097          	auipc	ra,0xffffd
    80003d1c:	6b4080e7          	jalr	1716(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003d20:	00000493          	li	s1,0
    80003d24:	00994e63          	blt	s2,s1,80003d40 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003d28:	00009517          	auipc	a0,0x9
    80003d2c:	1b053503          	ld	a0,432(a0) # 8000ced8 <_ZL10waitForAll>
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	774080e7          	jalr	1908(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003d38:	0014849b          	addiw	s1,s1,1
    80003d3c:	fe9ff06f          	j	80003d24 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003d40:	00009517          	auipc	a0,0x9
    80003d44:	19853503          	ld	a0,408(a0) # 8000ced8 <_ZL10waitForAll>
    80003d48:	ffffd097          	auipc	ra,0xffffd
    80003d4c:	710080e7          	jalr	1808(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003d50:	000a0e63          	beqz	s4,80003d6c <_Z22producerConsumer_C_APIv+0x284>
    80003d54:	000a0513          	mv	a0,s4
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	3c0080e7          	jalr	960(ra) # 80005118 <_ZN6BufferD1Ev>
    80003d60:	000a0513          	mv	a0,s4
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	2f0080e7          	jalr	752(ra) # 80002054 <_ZdlPv>
    80003d6c:	000b0113          	mv	sp,s6

}
    80003d70:	f9040113          	addi	sp,s0,-112
    80003d74:	06813083          	ld	ra,104(sp)
    80003d78:	06013403          	ld	s0,96(sp)
    80003d7c:	05813483          	ld	s1,88(sp)
    80003d80:	05013903          	ld	s2,80(sp)
    80003d84:	04813983          	ld	s3,72(sp)
    80003d88:	04013a03          	ld	s4,64(sp)
    80003d8c:	03813a83          	ld	s5,56(sp)
    80003d90:	03013b03          	ld	s6,48(sp)
    80003d94:	07010113          	addi	sp,sp,112
    80003d98:	00008067          	ret
    80003d9c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003da0:	000a0513          	mv	a0,s4
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	2b0080e7          	jalr	688(ra) # 80002054 <_ZdlPv>
    80003dac:	00048513          	mv	a0,s1
    80003db0:	0000a097          	auipc	ra,0xa
    80003db4:	238080e7          	jalr	568(ra) # 8000dfe8 <_Unwind_Resume>

0000000080003db8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003dd4:	00100793          	li	a5,1
    80003dd8:	02a7f863          	bgeu	a5,a0,80003e08 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ddc:	00a00793          	li	a5,10
    80003de0:	02f577b3          	remu	a5,a0,a5
    80003de4:	02078e63          	beqz	a5,80003e20 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003de8:	fff48513          	addi	a0,s1,-1
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	fcc080e7          	jalr	-52(ra) # 80003db8 <_ZL9fibonaccim>
    80003df4:	00050913          	mv	s2,a0
    80003df8:	ffe48513          	addi	a0,s1,-2
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	fbc080e7          	jalr	-68(ra) # 80003db8 <_ZL9fibonaccim>
    80003e04:	00a90533          	add	a0,s2,a0
}
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	01013403          	ld	s0,16(sp)
    80003e10:	00813483          	ld	s1,8(sp)
    80003e14:	00013903          	ld	s2,0(sp)
    80003e18:	02010113          	addi	sp,sp,32
    80003e1c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003e20:	ffffd097          	auipc	ra,0xffffd
    80003e24:	5ac080e7          	jalr	1452(ra) # 800013cc <_Z15thread_dispatchv>
    80003e28:	fc1ff06f          	j	80003de8 <_ZL9fibonaccim+0x30>

0000000080003e2c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	00813823          	sd	s0,16(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	01213023          	sd	s2,0(sp)
    80003e40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e44:	00000913          	li	s2,0
    80003e48:	0380006f          	j	80003e80 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	580080e7          	jalr	1408(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e54:	00148493          	addi	s1,s1,1
    80003e58:	000027b7          	lui	a5,0x2
    80003e5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e60:	0097ee63          	bltu	a5,s1,80003e7c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e64:	00000713          	li	a4,0
    80003e68:	000077b7          	lui	a5,0x7
    80003e6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e70:	fce7eee3          	bltu	a5,a4,80003e4c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e74:	00170713          	addi	a4,a4,1
    80003e78:	ff1ff06f          	j	80003e68 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e7c:	00190913          	addi	s2,s2,1
    80003e80:	00900793          	li	a5,9
    80003e84:	0527e063          	bltu	a5,s2,80003ec4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e88:	00006517          	auipc	a0,0x6
    80003e8c:	39050513          	addi	a0,a0,912 # 8000a218 <CONSOLE_STATUS+0x208>
    80003e90:	00002097          	auipc	ra,0x2
    80003e94:	1cc080e7          	jalr	460(ra) # 8000605c <_Z11printStringPKc>
    80003e98:	00000613          	li	a2,0
    80003e9c:	00a00593          	li	a1,10
    80003ea0:	0009051b          	sext.w	a0,s2
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	368080e7          	jalr	872(ra) # 8000620c <_Z8printIntiii>
    80003eac:	00006517          	auipc	a0,0x6
    80003eb0:	5cc50513          	addi	a0,a0,1484 # 8000a478 <CONSOLE_STATUS+0x468>
    80003eb4:	00002097          	auipc	ra,0x2
    80003eb8:	1a8080e7          	jalr	424(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ebc:	00000493          	li	s1,0
    80003ec0:	f99ff06f          	j	80003e58 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ec4:	00006517          	auipc	a0,0x6
    80003ec8:	35c50513          	addi	a0,a0,860 # 8000a220 <CONSOLE_STATUS+0x210>
    80003ecc:	00002097          	auipc	ra,0x2
    80003ed0:	190080e7          	jalr	400(ra) # 8000605c <_Z11printStringPKc>
    finishedA = true;
    80003ed4:	00100793          	li	a5,1
    80003ed8:	00009717          	auipc	a4,0x9
    80003edc:	00f70423          	sb	a5,8(a4) # 8000cee0 <_ZL9finishedA>
}
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	00013903          	ld	s2,0(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret

0000000080003ef8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ef8:	fe010113          	addi	sp,sp,-32
    80003efc:	00113c23          	sd	ra,24(sp)
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	01213023          	sd	s2,0(sp)
    80003f0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f10:	00000913          	li	s2,0
    80003f14:	0380006f          	j	80003f4c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	4b4080e7          	jalr	1204(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f20:	00148493          	addi	s1,s1,1
    80003f24:	000027b7          	lui	a5,0x2
    80003f28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f2c:	0097ee63          	bltu	a5,s1,80003f48 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f30:	00000713          	li	a4,0
    80003f34:	000077b7          	lui	a5,0x7
    80003f38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f3c:	fce7eee3          	bltu	a5,a4,80003f18 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003f40:	00170713          	addi	a4,a4,1
    80003f44:	ff1ff06f          	j	80003f34 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f48:	00190913          	addi	s2,s2,1
    80003f4c:	00f00793          	li	a5,15
    80003f50:	0527e063          	bltu	a5,s2,80003f90 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f54:	00006517          	auipc	a0,0x6
    80003f58:	2dc50513          	addi	a0,a0,732 # 8000a230 <CONSOLE_STATUS+0x220>
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	100080e7          	jalr	256(ra) # 8000605c <_Z11printStringPKc>
    80003f64:	00000613          	li	a2,0
    80003f68:	00a00593          	li	a1,10
    80003f6c:	0009051b          	sext.w	a0,s2
    80003f70:	00002097          	auipc	ra,0x2
    80003f74:	29c080e7          	jalr	668(ra) # 8000620c <_Z8printIntiii>
    80003f78:	00006517          	auipc	a0,0x6
    80003f7c:	50050513          	addi	a0,a0,1280 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	0dc080e7          	jalr	220(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f88:	00000493          	li	s1,0
    80003f8c:	f99ff06f          	j	80003f24 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f90:	00006517          	auipc	a0,0x6
    80003f94:	2a850513          	addi	a0,a0,680 # 8000a238 <CONSOLE_STATUS+0x228>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	0c4080e7          	jalr	196(ra) # 8000605c <_Z11printStringPKc>
    finishedB = true;
    80003fa0:	00100793          	li	a5,1
    80003fa4:	00009717          	auipc	a4,0x9
    80003fa8:	f2f70ea3          	sb	a5,-195(a4) # 8000cee1 <_ZL9finishedB>
    thread_dispatch();
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	420080e7          	jalr	1056(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	01013403          	ld	s0,16(sp)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	00013903          	ld	s2,0(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003fcc:	fe010113          	addi	sp,sp,-32
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00813823          	sd	s0,16(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	01213023          	sd	s2,0(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003fe4:	00000493          	li	s1,0
    80003fe8:	0400006f          	j	80004028 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003fec:	00006517          	auipc	a0,0x6
    80003ff0:	25c50513          	addi	a0,a0,604 # 8000a248 <CONSOLE_STATUS+0x238>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	068080e7          	jalr	104(ra) # 8000605c <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	00048513          	mv	a0,s1
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	204080e7          	jalr	516(ra) # 8000620c <_Z8printIntiii>
    80004010:	00006517          	auipc	a0,0x6
    80004014:	46850513          	addi	a0,a0,1128 # 8000a478 <CONSOLE_STATUS+0x468>
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	044080e7          	jalr	68(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004020:	0014849b          	addiw	s1,s1,1
    80004024:	0ff4f493          	andi	s1,s1,255
    80004028:	00200793          	li	a5,2
    8000402c:	fc97f0e3          	bgeu	a5,s1,80003fec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004030:	00006517          	auipc	a0,0x6
    80004034:	22050513          	addi	a0,a0,544 # 8000a250 <CONSOLE_STATUS+0x240>
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	024080e7          	jalr	36(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004040:	00700313          	li	t1,7
    thread_dispatch();
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	388080e7          	jalr	904(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000404c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004050:	00006517          	auipc	a0,0x6
    80004054:	21050513          	addi	a0,a0,528 # 8000a260 <CONSOLE_STATUS+0x250>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	004080e7          	jalr	4(ra) # 8000605c <_Z11printStringPKc>
    80004060:	00000613          	li	a2,0
    80004064:	00a00593          	li	a1,10
    80004068:	0009051b          	sext.w	a0,s2
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	1a0080e7          	jalr	416(ra) # 8000620c <_Z8printIntiii>
    80004074:	00006517          	auipc	a0,0x6
    80004078:	40450513          	addi	a0,a0,1028 # 8000a478 <CONSOLE_STATUS+0x468>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	fe0080e7          	jalr	-32(ra) # 8000605c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004084:	00c00513          	li	a0,12
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	d30080e7          	jalr	-720(ra) # 80003db8 <_ZL9fibonaccim>
    80004090:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004094:	00006517          	auipc	a0,0x6
    80004098:	1d450513          	addi	a0,a0,468 # 8000a268 <CONSOLE_STATUS+0x258>
    8000409c:	00002097          	auipc	ra,0x2
    800040a0:	fc0080e7          	jalr	-64(ra) # 8000605c <_Z11printStringPKc>
    800040a4:	00000613          	li	a2,0
    800040a8:	00a00593          	li	a1,10
    800040ac:	0009051b          	sext.w	a0,s2
    800040b0:	00002097          	auipc	ra,0x2
    800040b4:	15c080e7          	jalr	348(ra) # 8000620c <_Z8printIntiii>
    800040b8:	00006517          	auipc	a0,0x6
    800040bc:	3c050513          	addi	a0,a0,960 # 8000a478 <CONSOLE_STATUS+0x468>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	f9c080e7          	jalr	-100(ra) # 8000605c <_Z11printStringPKc>
    800040c8:	0400006f          	j	80004108 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040cc:	00006517          	auipc	a0,0x6
    800040d0:	17c50513          	addi	a0,a0,380 # 8000a248 <CONSOLE_STATUS+0x238>
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	f88080e7          	jalr	-120(ra) # 8000605c <_Z11printStringPKc>
    800040dc:	00000613          	li	a2,0
    800040e0:	00a00593          	li	a1,10
    800040e4:	00048513          	mv	a0,s1
    800040e8:	00002097          	auipc	ra,0x2
    800040ec:	124080e7          	jalr	292(ra) # 8000620c <_Z8printIntiii>
    800040f0:	00006517          	auipc	a0,0x6
    800040f4:	38850513          	addi	a0,a0,904 # 8000a478 <CONSOLE_STATUS+0x468>
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	f64080e7          	jalr	-156(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004100:	0014849b          	addiw	s1,s1,1
    80004104:	0ff4f493          	andi	s1,s1,255
    80004108:	00500793          	li	a5,5
    8000410c:	fc97f0e3          	bgeu	a5,s1,800040cc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004110:	00006517          	auipc	a0,0x6
    80004114:	11050513          	addi	a0,a0,272 # 8000a220 <CONSOLE_STATUS+0x210>
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	f44080e7          	jalr	-188(ra) # 8000605c <_Z11printStringPKc>
    finishedC = true;
    80004120:	00100793          	li	a5,1
    80004124:	00009717          	auipc	a4,0x9
    80004128:	daf70f23          	sb	a5,-578(a4) # 8000cee2 <_ZL9finishedC>
    thread_dispatch();
    8000412c:	ffffd097          	auipc	ra,0xffffd
    80004130:	2a0080e7          	jalr	672(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	00013903          	ld	s2,0(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	00813823          	sd	s0,16(sp)
    80004158:	00913423          	sd	s1,8(sp)
    8000415c:	01213023          	sd	s2,0(sp)
    80004160:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004164:	00a00493          	li	s1,10
    80004168:	0400006f          	j	800041a8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000416c:	00006517          	auipc	a0,0x6
    80004170:	10c50513          	addi	a0,a0,268 # 8000a278 <CONSOLE_STATUS+0x268>
    80004174:	00002097          	auipc	ra,0x2
    80004178:	ee8080e7          	jalr	-280(ra) # 8000605c <_Z11printStringPKc>
    8000417c:	00000613          	li	a2,0
    80004180:	00a00593          	li	a1,10
    80004184:	00048513          	mv	a0,s1
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	084080e7          	jalr	132(ra) # 8000620c <_Z8printIntiii>
    80004190:	00006517          	auipc	a0,0x6
    80004194:	2e850513          	addi	a0,a0,744 # 8000a478 <CONSOLE_STATUS+0x468>
    80004198:	00002097          	auipc	ra,0x2
    8000419c:	ec4080e7          	jalr	-316(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800041a0:	0014849b          	addiw	s1,s1,1
    800041a4:	0ff4f493          	andi	s1,s1,255
    800041a8:	00c00793          	li	a5,12
    800041ac:	fc97f0e3          	bgeu	a5,s1,8000416c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800041b0:	00006517          	auipc	a0,0x6
    800041b4:	0d050513          	addi	a0,a0,208 # 8000a280 <CONSOLE_STATUS+0x270>
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	ea4080e7          	jalr	-348(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800041c0:	00500313          	li	t1,5
    thread_dispatch();
    800041c4:	ffffd097          	auipc	ra,0xffffd
    800041c8:	208080e7          	jalr	520(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800041cc:	01000513          	li	a0,16
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	be8080e7          	jalr	-1048(ra) # 80003db8 <_ZL9fibonaccim>
    800041d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800041dc:	00006517          	auipc	a0,0x6
    800041e0:	0b450513          	addi	a0,a0,180 # 8000a290 <CONSOLE_STATUS+0x280>
    800041e4:	00002097          	auipc	ra,0x2
    800041e8:	e78080e7          	jalr	-392(ra) # 8000605c <_Z11printStringPKc>
    800041ec:	00000613          	li	a2,0
    800041f0:	00a00593          	li	a1,10
    800041f4:	0009051b          	sext.w	a0,s2
    800041f8:	00002097          	auipc	ra,0x2
    800041fc:	014080e7          	jalr	20(ra) # 8000620c <_Z8printIntiii>
    80004200:	00006517          	auipc	a0,0x6
    80004204:	27850513          	addi	a0,a0,632 # 8000a478 <CONSOLE_STATUS+0x468>
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	e54080e7          	jalr	-428(ra) # 8000605c <_Z11printStringPKc>
    80004210:	0400006f          	j	80004250 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004214:	00006517          	auipc	a0,0x6
    80004218:	06450513          	addi	a0,a0,100 # 8000a278 <CONSOLE_STATUS+0x268>
    8000421c:	00002097          	auipc	ra,0x2
    80004220:	e40080e7          	jalr	-448(ra) # 8000605c <_Z11printStringPKc>
    80004224:	00000613          	li	a2,0
    80004228:	00a00593          	li	a1,10
    8000422c:	00048513          	mv	a0,s1
    80004230:	00002097          	auipc	ra,0x2
    80004234:	fdc080e7          	jalr	-36(ra) # 8000620c <_Z8printIntiii>
    80004238:	00006517          	auipc	a0,0x6
    8000423c:	24050513          	addi	a0,a0,576 # 8000a478 <CONSOLE_STATUS+0x468>
    80004240:	00002097          	auipc	ra,0x2
    80004244:	e1c080e7          	jalr	-484(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004248:	0014849b          	addiw	s1,s1,1
    8000424c:	0ff4f493          	andi	s1,s1,255
    80004250:	00f00793          	li	a5,15
    80004254:	fc97f0e3          	bgeu	a5,s1,80004214 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004258:	00006517          	auipc	a0,0x6
    8000425c:	04850513          	addi	a0,a0,72 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004260:	00002097          	auipc	ra,0x2
    80004264:	dfc080e7          	jalr	-516(ra) # 8000605c <_Z11printStringPKc>
    finishedD = true;
    80004268:	00100793          	li	a5,1
    8000426c:	00009717          	auipc	a4,0x9
    80004270:	c6f70ba3          	sb	a5,-905(a4) # 8000cee3 <_ZL9finishedD>
    thread_dispatch();
    80004274:	ffffd097          	auipc	ra,0xffffd
    80004278:	158080e7          	jalr	344(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000427c:	01813083          	ld	ra,24(sp)
    80004280:	01013403          	ld	s0,16(sp)
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	00013903          	ld	s2,0(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004294:	fc010113          	addi	sp,sp,-64
    80004298:	02113c23          	sd	ra,56(sp)
    8000429c:	02813823          	sd	s0,48(sp)
    800042a0:	02913423          	sd	s1,40(sp)
    800042a4:	03213023          	sd	s2,32(sp)
    800042a8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800042ac:	02000513          	li	a0,32
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	d7c080e7          	jalr	-644(ra) # 8000202c <_Znwm>
    800042b8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	e70080e7          	jalr	-400(ra) # 8000212c <_ZN6ThreadC1Ev>
    800042c4:	00009797          	auipc	a5,0x9
    800042c8:	96c78793          	addi	a5,a5,-1684 # 8000cc30 <_ZTV7WorkerA+0x10>
    800042cc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800042d0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800042d4:	00006517          	auipc	a0,0x6
    800042d8:	fdc50513          	addi	a0,a0,-36 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800042dc:	00002097          	auipc	ra,0x2
    800042e0:	d80080e7          	jalr	-640(ra) # 8000605c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800042e4:	02000513          	li	a0,32
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	d44080e7          	jalr	-700(ra) # 8000202c <_Znwm>
    800042f0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	e38080e7          	jalr	-456(ra) # 8000212c <_ZN6ThreadC1Ev>
    800042fc:	00009797          	auipc	a5,0x9
    80004300:	95c78793          	addi	a5,a5,-1700 # 8000cc58 <_ZTV7WorkerB+0x10>
    80004304:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004308:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000430c:	00006517          	auipc	a0,0x6
    80004310:	fbc50513          	addi	a0,a0,-68 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004314:	00002097          	auipc	ra,0x2
    80004318:	d48080e7          	jalr	-696(ra) # 8000605c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000431c:	02000513          	li	a0,32
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	d0c080e7          	jalr	-756(ra) # 8000202c <_Znwm>
    80004328:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000432c:	ffffe097          	auipc	ra,0xffffe
    80004330:	e00080e7          	jalr	-512(ra) # 8000212c <_ZN6ThreadC1Ev>
    80004334:	00009797          	auipc	a5,0x9
    80004338:	94c78793          	addi	a5,a5,-1716 # 8000cc80 <_ZTV7WorkerC+0x10>
    8000433c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004340:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004344:	00006517          	auipc	a0,0x6
    80004348:	f9c50513          	addi	a0,a0,-100 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000434c:	00002097          	auipc	ra,0x2
    80004350:	d10080e7          	jalr	-752(ra) # 8000605c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004354:	02000513          	li	a0,32
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	cd4080e7          	jalr	-812(ra) # 8000202c <_Znwm>
    80004360:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	dc8080e7          	jalr	-568(ra) # 8000212c <_ZN6ThreadC1Ev>
    8000436c:	00009797          	auipc	a5,0x9
    80004370:	93c78793          	addi	a5,a5,-1732 # 8000cca8 <_ZTV7WorkerD+0x10>
    80004374:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004378:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000437c:	00006517          	auipc	a0,0x6
    80004380:	f7c50513          	addi	a0,a0,-132 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004384:	00002097          	auipc	ra,0x2
    80004388:	cd8080e7          	jalr	-808(ra) # 8000605c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000438c:	00000493          	li	s1,0
    80004390:	00300793          	li	a5,3
    80004394:	0297c663          	blt	a5,s1,800043c0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004398:	00349793          	slli	a5,s1,0x3
    8000439c:	fe040713          	addi	a4,s0,-32
    800043a0:	00f707b3          	add	a5,a4,a5
    800043a4:	fe07b503          	ld	a0,-32(a5)
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	db4080e7          	jalr	-588(ra) # 8000215c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800043b0:	0014849b          	addiw	s1,s1,1
    800043b4:	fddff06f          	j	80004390 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	ddc080e7          	jalr	-548(ra) # 80002194 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800043c0:	00009797          	auipc	a5,0x9
    800043c4:	b207c783          	lbu	a5,-1248(a5) # 8000cee0 <_ZL9finishedA>
    800043c8:	fe0788e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043cc:	00009797          	auipc	a5,0x9
    800043d0:	b157c783          	lbu	a5,-1259(a5) # 8000cee1 <_ZL9finishedB>
    800043d4:	fe0782e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043d8:	00009797          	auipc	a5,0x9
    800043dc:	b0a7c783          	lbu	a5,-1270(a5) # 8000cee2 <_ZL9finishedC>
    800043e0:	fc078ce3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043e4:	00009797          	auipc	a5,0x9
    800043e8:	aff7c783          	lbu	a5,-1281(a5) # 8000cee3 <_ZL9finishedD>
    800043ec:	fc0786e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043f0:	fc040493          	addi	s1,s0,-64
    800043f4:	0080006f          	j	800043fc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800043f8:	00848493          	addi	s1,s1,8
    800043fc:	fe040793          	addi	a5,s0,-32
    80004400:	08f48663          	beq	s1,a5,8000448c <_Z20Threads_CPP_API_testv+0x1f8>
    80004404:	0004b503          	ld	a0,0(s1)
    80004408:	fe0508e3          	beqz	a0,800043f8 <_Z20Threads_CPP_API_testv+0x164>
    8000440c:	00053783          	ld	a5,0(a0)
    80004410:	0087b783          	ld	a5,8(a5)
    80004414:	000780e7          	jalr	a5
    80004418:	fe1ff06f          	j	800043f8 <_Z20Threads_CPP_API_testv+0x164>
    8000441c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004420:	00048513          	mv	a0,s1
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	c30080e7          	jalr	-976(ra) # 80002054 <_ZdlPv>
    8000442c:	00090513          	mv	a0,s2
    80004430:	0000a097          	auipc	ra,0xa
    80004434:	bb8080e7          	jalr	-1096(ra) # 8000dfe8 <_Unwind_Resume>
    80004438:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000443c:	00048513          	mv	a0,s1
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	c14080e7          	jalr	-1004(ra) # 80002054 <_ZdlPv>
    80004448:	00090513          	mv	a0,s2
    8000444c:	0000a097          	auipc	ra,0xa
    80004450:	b9c080e7          	jalr	-1124(ra) # 8000dfe8 <_Unwind_Resume>
    80004454:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004458:	00048513          	mv	a0,s1
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	bf8080e7          	jalr	-1032(ra) # 80002054 <_ZdlPv>
    80004464:	00090513          	mv	a0,s2
    80004468:	0000a097          	auipc	ra,0xa
    8000446c:	b80080e7          	jalr	-1152(ra) # 8000dfe8 <_Unwind_Resume>
    80004470:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004474:	00048513          	mv	a0,s1
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	bdc080e7          	jalr	-1060(ra) # 80002054 <_ZdlPv>
    80004480:	00090513          	mv	a0,s2
    80004484:	0000a097          	auipc	ra,0xa
    80004488:	b64080e7          	jalr	-1180(ra) # 8000dfe8 <_Unwind_Resume>
}
    8000448c:	03813083          	ld	ra,56(sp)
    80004490:	03013403          	ld	s0,48(sp)
    80004494:	02813483          	ld	s1,40(sp)
    80004498:	02013903          	ld	s2,32(sp)
    8000449c:	04010113          	addi	sp,sp,64
    800044a0:	00008067          	ret

00000000800044a4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800044a4:	ff010113          	addi	sp,sp,-16
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	00813023          	sd	s0,0(sp)
    800044b0:	01010413          	addi	s0,sp,16
    800044b4:	00008797          	auipc	a5,0x8
    800044b8:	77c78793          	addi	a5,a5,1916 # 8000cc30 <_ZTV7WorkerA+0x10>
    800044bc:	00f53023          	sd	a5,0(a0)
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	a9c080e7          	jalr	-1380(ra) # 80001f5c <_ZN6ThreadD1Ev>
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret

00000000800044d8 <_ZN7WorkerAD0Ev>:
    800044d8:	fe010113          	addi	sp,sp,-32
    800044dc:	00113c23          	sd	ra,24(sp)
    800044e0:	00813823          	sd	s0,16(sp)
    800044e4:	00913423          	sd	s1,8(sp)
    800044e8:	02010413          	addi	s0,sp,32
    800044ec:	00050493          	mv	s1,a0
    800044f0:	00008797          	auipc	a5,0x8
    800044f4:	74078793          	addi	a5,a5,1856 # 8000cc30 <_ZTV7WorkerA+0x10>
    800044f8:	00f53023          	sd	a5,0(a0)
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	a60080e7          	jalr	-1440(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004504:	00048513          	mv	a0,s1
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	b4c080e7          	jalr	-1204(ra) # 80002054 <_ZdlPv>
    80004510:	01813083          	ld	ra,24(sp)
    80004514:	01013403          	ld	s0,16(sp)
    80004518:	00813483          	ld	s1,8(sp)
    8000451c:	02010113          	addi	sp,sp,32
    80004520:	00008067          	ret

0000000080004524 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004524:	ff010113          	addi	sp,sp,-16
    80004528:	00113423          	sd	ra,8(sp)
    8000452c:	00813023          	sd	s0,0(sp)
    80004530:	01010413          	addi	s0,sp,16
    80004534:	00008797          	auipc	a5,0x8
    80004538:	72478793          	addi	a5,a5,1828 # 8000cc58 <_ZTV7WorkerB+0x10>
    8000453c:	00f53023          	sd	a5,0(a0)
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	a1c080e7          	jalr	-1508(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004548:	00813083          	ld	ra,8(sp)
    8000454c:	00013403          	ld	s0,0(sp)
    80004550:	01010113          	addi	sp,sp,16
    80004554:	00008067          	ret

0000000080004558 <_ZN7WorkerBD0Ev>:
    80004558:	fe010113          	addi	sp,sp,-32
    8000455c:	00113c23          	sd	ra,24(sp)
    80004560:	00813823          	sd	s0,16(sp)
    80004564:	00913423          	sd	s1,8(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00050493          	mv	s1,a0
    80004570:	00008797          	auipc	a5,0x8
    80004574:	6e878793          	addi	a5,a5,1768 # 8000cc58 <_ZTV7WorkerB+0x10>
    80004578:	00f53023          	sd	a5,0(a0)
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	9e0080e7          	jalr	-1568(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004584:	00048513          	mv	a0,s1
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	acc080e7          	jalr	-1332(ra) # 80002054 <_ZdlPv>
    80004590:	01813083          	ld	ra,24(sp)
    80004594:	01013403          	ld	s0,16(sp)
    80004598:	00813483          	ld	s1,8(sp)
    8000459c:	02010113          	addi	sp,sp,32
    800045a0:	00008067          	ret

00000000800045a4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00113423          	sd	ra,8(sp)
    800045ac:	00813023          	sd	s0,0(sp)
    800045b0:	01010413          	addi	s0,sp,16
    800045b4:	00008797          	auipc	a5,0x8
    800045b8:	6cc78793          	addi	a5,a5,1740 # 8000cc80 <_ZTV7WorkerC+0x10>
    800045bc:	00f53023          	sd	a5,0(a0)
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	99c080e7          	jalr	-1636(ra) # 80001f5c <_ZN6ThreadD1Ev>
    800045c8:	00813083          	ld	ra,8(sp)
    800045cc:	00013403          	ld	s0,0(sp)
    800045d0:	01010113          	addi	sp,sp,16
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerCD0Ev>:
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00113c23          	sd	ra,24(sp)
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	02010413          	addi	s0,sp,32
    800045ec:	00050493          	mv	s1,a0
    800045f0:	00008797          	auipc	a5,0x8
    800045f4:	69078793          	addi	a5,a5,1680 # 8000cc80 <_ZTV7WorkerC+0x10>
    800045f8:	00f53023          	sd	a5,0(a0)
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	960080e7          	jalr	-1696(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004604:	00048513          	mv	a0,s1
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	a4c080e7          	jalr	-1460(ra) # 80002054 <_ZdlPv>
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	00813483          	ld	s1,8(sp)
    8000461c:	02010113          	addi	sp,sp,32
    80004620:	00008067          	ret

0000000080004624 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004624:	ff010113          	addi	sp,sp,-16
    80004628:	00113423          	sd	ra,8(sp)
    8000462c:	00813023          	sd	s0,0(sp)
    80004630:	01010413          	addi	s0,sp,16
    80004634:	00008797          	auipc	a5,0x8
    80004638:	67478793          	addi	a5,a5,1652 # 8000cca8 <_ZTV7WorkerD+0x10>
    8000463c:	00f53023          	sd	a5,0(a0)
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	91c080e7          	jalr	-1764(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004648:	00813083          	ld	ra,8(sp)
    8000464c:	00013403          	ld	s0,0(sp)
    80004650:	01010113          	addi	sp,sp,16
    80004654:	00008067          	ret

0000000080004658 <_ZN7WorkerDD0Ev>:
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	02010413          	addi	s0,sp,32
    8000466c:	00050493          	mv	s1,a0
    80004670:	00008797          	auipc	a5,0x8
    80004674:	63878793          	addi	a5,a5,1592 # 8000cca8 <_ZTV7WorkerD+0x10>
    80004678:	00f53023          	sd	a5,0(a0)
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	8e0080e7          	jalr	-1824(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004684:	00048513          	mv	a0,s1
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	9cc080e7          	jalr	-1588(ra) # 80002054 <_ZdlPv>
    80004690:	01813083          	ld	ra,24(sp)
    80004694:	01013403          	ld	s0,16(sp)
    80004698:	00813483          	ld	s1,8(sp)
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret

00000000800046a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	00813023          	sd	s0,0(sp)
    800046b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800046b4:	00000593          	li	a1,0
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	774080e7          	jalr	1908(ra) # 80003e2c <_ZN7WorkerA11workerBodyAEPv>
    }
    800046c0:	00813083          	ld	ra,8(sp)
    800046c4:	00013403          	ld	s0,0(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret

00000000800046d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00113423          	sd	ra,8(sp)
    800046d8:	00813023          	sd	s0,0(sp)
    800046dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800046e0:	00000593          	li	a1,0
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	814080e7          	jalr	-2028(ra) # 80003ef8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <_ZN7WorkerC3runEv>:
    void run() override {
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00113423          	sd	ra,8(sp)
    80004704:	00813023          	sd	s0,0(sp)
    80004708:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000470c:	00000593          	li	a1,0
    80004710:	00000097          	auipc	ra,0x0
    80004714:	8bc080e7          	jalr	-1860(ra) # 80003fcc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN7WorkerD3runEv>:
    void run() override {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004738:	00000593          	li	a1,0
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	a10080e7          	jalr	-1520(ra) # 8000414c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004744:	00813083          	ld	ra,8(sp)
    80004748:	00013403          	ld	s0,0(sp)
    8000474c:	01010113          	addi	sp,sp,16
    80004750:	00008067          	ret

0000000080004754 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004754:	f8010113          	addi	sp,sp,-128
    80004758:	06113c23          	sd	ra,120(sp)
    8000475c:	06813823          	sd	s0,112(sp)
    80004760:	06913423          	sd	s1,104(sp)
    80004764:	07213023          	sd	s2,96(sp)
    80004768:	05313c23          	sd	s3,88(sp)
    8000476c:	05413823          	sd	s4,80(sp)
    80004770:	05513423          	sd	s5,72(sp)
    80004774:	05613023          	sd	s6,64(sp)
    80004778:	03713c23          	sd	s7,56(sp)
    8000477c:	03813823          	sd	s8,48(sp)
    80004780:	03913423          	sd	s9,40(sp)
    80004784:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004788:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000478c:	00006517          	auipc	a0,0x6
    80004790:	9a450513          	addi	a0,a0,-1628 # 8000a130 <CONSOLE_STATUS+0x120>
    80004794:	00002097          	auipc	ra,0x2
    80004798:	8c8080e7          	jalr	-1848(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    8000479c:	01e00593          	li	a1,30
    800047a0:	f8040493          	addi	s1,s0,-128
    800047a4:	00048513          	mv	a0,s1
    800047a8:	00002097          	auipc	ra,0x2
    800047ac:	93c080e7          	jalr	-1732(ra) # 800060e4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00002097          	auipc	ra,0x2
    800047b8:	a08080e7          	jalr	-1528(ra) # 800061bc <_Z11stringToIntPKc>
    800047bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800047c0:	00006517          	auipc	a0,0x6
    800047c4:	99050513          	addi	a0,a0,-1648 # 8000a150 <CONSOLE_STATUS+0x140>
    800047c8:	00002097          	auipc	ra,0x2
    800047cc:	894080e7          	jalr	-1900(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    800047d0:	01e00593          	li	a1,30
    800047d4:	00048513          	mv	a0,s1
    800047d8:	00002097          	auipc	ra,0x2
    800047dc:	90c080e7          	jalr	-1780(ra) # 800060e4 <_Z9getStringPci>
    n = stringToInt(input);
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00002097          	auipc	ra,0x2
    800047e8:	9d8080e7          	jalr	-1576(ra) # 800061bc <_Z11stringToIntPKc>
    800047ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800047f0:	00006517          	auipc	a0,0x6
    800047f4:	98050513          	addi	a0,a0,-1664 # 8000a170 <CONSOLE_STATUS+0x160>
    800047f8:	00002097          	auipc	ra,0x2
    800047fc:	864080e7          	jalr	-1948(ra) # 8000605c <_Z11printStringPKc>
    printInt(threadNum);
    80004800:	00000613          	li	a2,0
    80004804:	00a00593          	li	a1,10
    80004808:	00098513          	mv	a0,s3
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	a00080e7          	jalr	-1536(ra) # 8000620c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004814:	00006517          	auipc	a0,0x6
    80004818:	97450513          	addi	a0,a0,-1676 # 8000a188 <CONSOLE_STATUS+0x178>
    8000481c:	00002097          	auipc	ra,0x2
    80004820:	840080e7          	jalr	-1984(ra) # 8000605c <_Z11printStringPKc>
    printInt(n);
    80004824:	00000613          	li	a2,0
    80004828:	00a00593          	li	a1,10
    8000482c:	00048513          	mv	a0,s1
    80004830:	00002097          	auipc	ra,0x2
    80004834:	9dc080e7          	jalr	-1572(ra) # 8000620c <_Z8printIntiii>
    printString(".\n");
    80004838:	00006517          	auipc	a0,0x6
    8000483c:	96850513          	addi	a0,a0,-1688 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004840:	00002097          	auipc	ra,0x2
    80004844:	81c080e7          	jalr	-2020(ra) # 8000605c <_Z11printStringPKc>
    if (threadNum > n) {
    80004848:	0334c463          	blt	s1,s3,80004870 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000484c:	03305c63          	blez	s3,80004884 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004850:	03800513          	li	a0,56
    80004854:	ffffd097          	auipc	ra,0xffffd
    80004858:	7d8080e7          	jalr	2008(ra) # 8000202c <_Znwm>
    8000485c:	00050a93          	mv	s5,a0
    80004860:	00048593          	mv	a1,s1
    80004864:	00002097          	auipc	ra,0x2
    80004868:	ac8080e7          	jalr	-1336(ra) # 8000632c <_ZN9BufferCPPC1Ei>
    8000486c:	0300006f          	j	8000489c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004870:	00006517          	auipc	a0,0x6
    80004874:	93850513          	addi	a0,a0,-1736 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	7e4080e7          	jalr	2020(ra) # 8000605c <_Z11printStringPKc>
        return;
    80004880:	0140006f          	j	80004894 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004884:	00006517          	auipc	a0,0x6
    80004888:	96450513          	addi	a0,a0,-1692 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	7d0080e7          	jalr	2000(ra) # 8000605c <_Z11printStringPKc>
        return;
    80004894:	000c0113          	mv	sp,s8
    80004898:	2140006f          	j	80004aac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000489c:	01000513          	li	a0,16
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	78c080e7          	jalr	1932(ra) # 8000202c <_Znwm>
    800048a8:	00050913          	mv	s2,a0
    800048ac:	00000593          	li	a1,0
    800048b0:	ffffe097          	auipc	ra,0xffffe
    800048b4:	934080e7          	jalr	-1740(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    800048b8:	00008797          	auipc	a5,0x8
    800048bc:	6327bc23          	sd	s2,1592(a5) # 8000cef0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800048c0:	00399793          	slli	a5,s3,0x3
    800048c4:	00f78793          	addi	a5,a5,15
    800048c8:	ff07f793          	andi	a5,a5,-16
    800048cc:	40f10133          	sub	sp,sp,a5
    800048d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800048d4:	0019871b          	addiw	a4,s3,1
    800048d8:	00171793          	slli	a5,a4,0x1
    800048dc:	00e787b3          	add	a5,a5,a4
    800048e0:	00379793          	slli	a5,a5,0x3
    800048e4:	00f78793          	addi	a5,a5,15
    800048e8:	ff07f793          	andi	a5,a5,-16
    800048ec:	40f10133          	sub	sp,sp,a5
    800048f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800048f4:	00199493          	slli	s1,s3,0x1
    800048f8:	013484b3          	add	s1,s1,s3
    800048fc:	00349493          	slli	s1,s1,0x3
    80004900:	009b04b3          	add	s1,s6,s1
    80004904:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004908:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000490c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004910:	02800513          	li	a0,40
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	718080e7          	jalr	1816(ra) # 8000202c <_Znwm>
    8000491c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	80c080e7          	jalr	-2036(ra) # 8000212c <_ZN6ThreadC1Ev>
    80004928:	00008797          	auipc	a5,0x8
    8000492c:	3f878793          	addi	a5,a5,1016 # 8000cd20 <_ZTV8Consumer+0x10>
    80004930:	00fbb023          	sd	a5,0(s7)
    80004934:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004938:	000b8513          	mv	a0,s7
    8000493c:	ffffe097          	auipc	ra,0xffffe
    80004940:	820080e7          	jalr	-2016(ra) # 8000215c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004944:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004948:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000494c:	00008797          	auipc	a5,0x8
    80004950:	5a47b783          	ld	a5,1444(a5) # 8000cef0 <_ZL10waitForAll>
    80004954:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004958:	02800513          	li	a0,40
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	6d0080e7          	jalr	1744(ra) # 8000202c <_Znwm>
    80004964:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	7c4080e7          	jalr	1988(ra) # 8000212c <_ZN6ThreadC1Ev>
    80004970:	00008797          	auipc	a5,0x8
    80004974:	36078793          	addi	a5,a5,864 # 8000ccd0 <_ZTV16ProducerKeyborad+0x10>
    80004978:	00f4b023          	sd	a5,0(s1)
    8000497c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004980:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004984:	00048513          	mv	a0,s1
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	7d4080e7          	jalr	2004(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004990:	00100913          	li	s2,1
    80004994:	0300006f          	j	800049c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004998:	00008797          	auipc	a5,0x8
    8000499c:	36078793          	addi	a5,a5,864 # 8000ccf8 <_ZTV8Producer+0x10>
    800049a0:	00fcb023          	sd	a5,0(s9)
    800049a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800049a8:	00391793          	slli	a5,s2,0x3
    800049ac:	00fa07b3          	add	a5,s4,a5
    800049b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800049b4:	000c8513          	mv	a0,s9
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	7a4080e7          	jalr	1956(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800049c0:	0019091b          	addiw	s2,s2,1
    800049c4:	05395263          	bge	s2,s3,80004a08 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800049c8:	00191493          	slli	s1,s2,0x1
    800049cc:	012484b3          	add	s1,s1,s2
    800049d0:	00349493          	slli	s1,s1,0x3
    800049d4:	009b04b3          	add	s1,s6,s1
    800049d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800049dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800049e0:	00008797          	auipc	a5,0x8
    800049e4:	5107b783          	ld	a5,1296(a5) # 8000cef0 <_ZL10waitForAll>
    800049e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800049ec:	02800513          	li	a0,40
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	63c080e7          	jalr	1596(ra) # 8000202c <_Znwm>
    800049f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	730080e7          	jalr	1840(ra) # 8000212c <_ZN6ThreadC1Ev>
    80004a04:	f95ff06f          	j	80004998 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	78c080e7          	jalr	1932(ra) # 80002194 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a10:	00000493          	li	s1,0
    80004a14:	0099ce63          	blt	s3,s1,80004a30 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004a18:	00008517          	auipc	a0,0x8
    80004a1c:	4d853503          	ld	a0,1240(a0) # 8000cef0 <_ZL10waitForAll>
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	800080e7          	jalr	-2048(ra) # 80002220 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a28:	0014849b          	addiw	s1,s1,1
    80004a2c:	fe9ff06f          	j	80004a14 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004a30:	00008517          	auipc	a0,0x8
    80004a34:	4c053503          	ld	a0,1216(a0) # 8000cef0 <_ZL10waitForAll>
    80004a38:	00050863          	beqz	a0,80004a48 <_Z20testConsumerProducerv+0x2f4>
    80004a3c:	00053783          	ld	a5,0(a0)
    80004a40:	0087b783          	ld	a5,8(a5)
    80004a44:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004a48:	00000493          	li	s1,0
    80004a4c:	0080006f          	j	80004a54 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004a50:	0014849b          	addiw	s1,s1,1
    80004a54:	0334d263          	bge	s1,s3,80004a78 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004a58:	00349793          	slli	a5,s1,0x3
    80004a5c:	00fa07b3          	add	a5,s4,a5
    80004a60:	0007b503          	ld	a0,0(a5)
    80004a64:	fe0506e3          	beqz	a0,80004a50 <_Z20testConsumerProducerv+0x2fc>
    80004a68:	00053783          	ld	a5,0(a0)
    80004a6c:	0087b783          	ld	a5,8(a5)
    80004a70:	000780e7          	jalr	a5
    80004a74:	fddff06f          	j	80004a50 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004a78:	000b8a63          	beqz	s7,80004a8c <_Z20testConsumerProducerv+0x338>
    80004a7c:	000bb783          	ld	a5,0(s7)
    80004a80:	0087b783          	ld	a5,8(a5)
    80004a84:	000b8513          	mv	a0,s7
    80004a88:	000780e7          	jalr	a5
    delete buffer;
    80004a8c:	000a8e63          	beqz	s5,80004aa8 <_Z20testConsumerProducerv+0x354>
    80004a90:	000a8513          	mv	a0,s5
    80004a94:	00002097          	auipc	ra,0x2
    80004a98:	b90080e7          	jalr	-1136(ra) # 80006624 <_ZN9BufferCPPD1Ev>
    80004a9c:	000a8513          	mv	a0,s5
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	5b4080e7          	jalr	1460(ra) # 80002054 <_ZdlPv>
    80004aa8:	000c0113          	mv	sp,s8
}
    80004aac:	f8040113          	addi	sp,s0,-128
    80004ab0:	07813083          	ld	ra,120(sp)
    80004ab4:	07013403          	ld	s0,112(sp)
    80004ab8:	06813483          	ld	s1,104(sp)
    80004abc:	06013903          	ld	s2,96(sp)
    80004ac0:	05813983          	ld	s3,88(sp)
    80004ac4:	05013a03          	ld	s4,80(sp)
    80004ac8:	04813a83          	ld	s5,72(sp)
    80004acc:	04013b03          	ld	s6,64(sp)
    80004ad0:	03813b83          	ld	s7,56(sp)
    80004ad4:	03013c03          	ld	s8,48(sp)
    80004ad8:	02813c83          	ld	s9,40(sp)
    80004adc:	08010113          	addi	sp,sp,128
    80004ae0:	00008067          	ret
    80004ae4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ae8:	000a8513          	mv	a0,s5
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	568080e7          	jalr	1384(ra) # 80002054 <_ZdlPv>
    80004af4:	00048513          	mv	a0,s1
    80004af8:	00009097          	auipc	ra,0x9
    80004afc:	4f0080e7          	jalr	1264(ra) # 8000dfe8 <_Unwind_Resume>
    80004b00:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004b04:	00090513          	mv	a0,s2
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	54c080e7          	jalr	1356(ra) # 80002054 <_ZdlPv>
    80004b10:	00048513          	mv	a0,s1
    80004b14:	00009097          	auipc	ra,0x9
    80004b18:	4d4080e7          	jalr	1236(ra) # 8000dfe8 <_Unwind_Resume>
    80004b1c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004b20:	000b8513          	mv	a0,s7
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	530080e7          	jalr	1328(ra) # 80002054 <_ZdlPv>
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00009097          	auipc	ra,0x9
    80004b34:	4b8080e7          	jalr	1208(ra) # 8000dfe8 <_Unwind_Resume>
    80004b38:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b3c:	00048513          	mv	a0,s1
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	514080e7          	jalr	1300(ra) # 80002054 <_ZdlPv>
    80004b48:	00090513          	mv	a0,s2
    80004b4c:	00009097          	auipc	ra,0x9
    80004b50:	49c080e7          	jalr	1180(ra) # 8000dfe8 <_Unwind_Resume>
    80004b54:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004b58:	000c8513          	mv	a0,s9
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	4f8080e7          	jalr	1272(ra) # 80002054 <_ZdlPv>
    80004b64:	00048513          	mv	a0,s1
    80004b68:	00009097          	auipc	ra,0x9
    80004b6c:	480080e7          	jalr	1152(ra) # 8000dfe8 <_Unwind_Resume>

0000000080004b70 <_ZN8Consumer3runEv>:
    void run() override {
    80004b70:	fd010113          	addi	sp,sp,-48
    80004b74:	02113423          	sd	ra,40(sp)
    80004b78:	02813023          	sd	s0,32(sp)
    80004b7c:	00913c23          	sd	s1,24(sp)
    80004b80:	01213823          	sd	s2,16(sp)
    80004b84:	01313423          	sd	s3,8(sp)
    80004b88:	03010413          	addi	s0,sp,48
    80004b8c:	00050913          	mv	s2,a0
        int i = 0;
    80004b90:	00000993          	li	s3,0
    80004b94:	0100006f          	j	80004ba4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b98:	00a00513          	li	a0,10
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	7fc080e7          	jalr	2044(ra) # 80002398 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004ba4:	00008797          	auipc	a5,0x8
    80004ba8:	3447a783          	lw	a5,836(a5) # 8000cee8 <_ZL9threadEnd>
    80004bac:	04079a63          	bnez	a5,80004c00 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004bb0:	02093783          	ld	a5,32(s2)
    80004bb4:	0087b503          	ld	a0,8(a5)
    80004bb8:	00002097          	auipc	ra,0x2
    80004bbc:	958080e7          	jalr	-1704(ra) # 80006510 <_ZN9BufferCPP3getEv>
            i++;
    80004bc0:	0019849b          	addiw	s1,s3,1
    80004bc4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004bc8:	0ff57513          	andi	a0,a0,255
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	7cc080e7          	jalr	1996(ra) # 80002398 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004bd4:	05000793          	li	a5,80
    80004bd8:	02f4e4bb          	remw	s1,s1,a5
    80004bdc:	fc0494e3          	bnez	s1,80004ba4 <_ZN8Consumer3runEv+0x34>
    80004be0:	fb9ff06f          	j	80004b98 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004be4:	02093783          	ld	a5,32(s2)
    80004be8:	0087b503          	ld	a0,8(a5)
    80004bec:	00002097          	auipc	ra,0x2
    80004bf0:	924080e7          	jalr	-1756(ra) # 80006510 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004bf4:	0ff57513          	andi	a0,a0,255
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	7a0080e7          	jalr	1952(ra) # 80002398 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004c00:	02093783          	ld	a5,32(s2)
    80004c04:	0087b503          	ld	a0,8(a5)
    80004c08:	00002097          	auipc	ra,0x2
    80004c0c:	994080e7          	jalr	-1644(ra) # 8000659c <_ZN9BufferCPP6getCntEv>
    80004c10:	fca04ae3          	bgtz	a0,80004be4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004c14:	02093783          	ld	a5,32(s2)
    80004c18:	0107b503          	ld	a0,16(a5)
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	63c080e7          	jalr	1596(ra) # 80002258 <_ZN9Semaphore6signalEv>
    }
    80004c24:	02813083          	ld	ra,40(sp)
    80004c28:	02013403          	ld	s0,32(sp)
    80004c2c:	01813483          	ld	s1,24(sp)
    80004c30:	01013903          	ld	s2,16(sp)
    80004c34:	00813983          	ld	s3,8(sp)
    80004c38:	03010113          	addi	sp,sp,48
    80004c3c:	00008067          	ret

0000000080004c40 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004c40:	ff010113          	addi	sp,sp,-16
    80004c44:	00113423          	sd	ra,8(sp)
    80004c48:	00813023          	sd	s0,0(sp)
    80004c4c:	01010413          	addi	s0,sp,16
    80004c50:	00008797          	auipc	a5,0x8
    80004c54:	0d078793          	addi	a5,a5,208 # 8000cd20 <_ZTV8Consumer+0x10>
    80004c58:	00f53023          	sd	a5,0(a0)
    80004c5c:	ffffd097          	auipc	ra,0xffffd
    80004c60:	300080e7          	jalr	768(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004c64:	00813083          	ld	ra,8(sp)
    80004c68:	00013403          	ld	s0,0(sp)
    80004c6c:	01010113          	addi	sp,sp,16
    80004c70:	00008067          	ret

0000000080004c74 <_ZN8ConsumerD0Ev>:
    80004c74:	fe010113          	addi	sp,sp,-32
    80004c78:	00113c23          	sd	ra,24(sp)
    80004c7c:	00813823          	sd	s0,16(sp)
    80004c80:	00913423          	sd	s1,8(sp)
    80004c84:	02010413          	addi	s0,sp,32
    80004c88:	00050493          	mv	s1,a0
    80004c8c:	00008797          	auipc	a5,0x8
    80004c90:	09478793          	addi	a5,a5,148 # 8000cd20 <_ZTV8Consumer+0x10>
    80004c94:	00f53023          	sd	a5,0(a0)
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	2c4080e7          	jalr	708(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004ca0:	00048513          	mv	a0,s1
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	3b0080e7          	jalr	944(ra) # 80002054 <_ZdlPv>
    80004cac:	01813083          	ld	ra,24(sp)
    80004cb0:	01013403          	ld	s0,16(sp)
    80004cb4:	00813483          	ld	s1,8(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004cc0:	ff010113          	addi	sp,sp,-16
    80004cc4:	00113423          	sd	ra,8(sp)
    80004cc8:	00813023          	sd	s0,0(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	00008797          	auipc	a5,0x8
    80004cd4:	00078793          	mv	a5,a5
    80004cd8:	00f53023          	sd	a5,0(a0)
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	280080e7          	jalr	640(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004ce4:	00813083          	ld	ra,8(sp)
    80004ce8:	00013403          	ld	s0,0(sp)
    80004cec:	01010113          	addi	sp,sp,16
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN16ProducerKeyboradD0Ev>:
    80004cf4:	fe010113          	addi	sp,sp,-32
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	00813823          	sd	s0,16(sp)
    80004d00:	00913423          	sd	s1,8(sp)
    80004d04:	02010413          	addi	s0,sp,32
    80004d08:	00050493          	mv	s1,a0
    80004d0c:	00008797          	auipc	a5,0x8
    80004d10:	fc478793          	addi	a5,a5,-60 # 8000ccd0 <_ZTV16ProducerKeyborad+0x10>
    80004d14:	00f53023          	sd	a5,0(a0)
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	244080e7          	jalr	580(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004d20:	00048513          	mv	a0,s1
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	330080e7          	jalr	816(ra) # 80002054 <_ZdlPv>
    80004d2c:	01813083          	ld	ra,24(sp)
    80004d30:	01013403          	ld	s0,16(sp)
    80004d34:	00813483          	ld	s1,8(sp)
    80004d38:	02010113          	addi	sp,sp,32
    80004d3c:	00008067          	ret

0000000080004d40 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00113423          	sd	ra,8(sp)
    80004d48:	00813023          	sd	s0,0(sp)
    80004d4c:	01010413          	addi	s0,sp,16
    80004d50:	00008797          	auipc	a5,0x8
    80004d54:	fa878793          	addi	a5,a5,-88 # 8000ccf8 <_ZTV8Producer+0x10>
    80004d58:	00f53023          	sd	a5,0(a0)
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	200080e7          	jalr	512(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004d64:	00813083          	ld	ra,8(sp)
    80004d68:	00013403          	ld	s0,0(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <_ZN8ProducerD0Ev>:
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	02010413          	addi	s0,sp,32
    80004d88:	00050493          	mv	s1,a0
    80004d8c:	00008797          	auipc	a5,0x8
    80004d90:	f6c78793          	addi	a5,a5,-148 # 8000ccf8 <_ZTV8Producer+0x10>
    80004d94:	00f53023          	sd	a5,0(a0)
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	1c4080e7          	jalr	452(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80004da0:	00048513          	mv	a0,s1
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	2b0080e7          	jalr	688(ra) # 80002054 <_ZdlPv>
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	02010113          	addi	sp,sp,32
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004dc0:	fe010113          	addi	sp,sp,-32
    80004dc4:	00113c23          	sd	ra,24(sp)
    80004dc8:	00813823          	sd	s0,16(sp)
    80004dcc:	00913423          	sd	s1,8(sp)
    80004dd0:	02010413          	addi	s0,sp,32
    80004dd4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	848080e7          	jalr	-1976(ra) # 80001620 <_Z4getcv>
    80004de0:	0005059b          	sext.w	a1,a0
    80004de4:	01b00793          	li	a5,27
    80004de8:	00f58c63          	beq	a1,a5,80004e00 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004dec:	0204b783          	ld	a5,32(s1)
    80004df0:	0087b503          	ld	a0,8(a5)
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	68c080e7          	jalr	1676(ra) # 80006480 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004dfc:	fddff06f          	j	80004dd8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004e00:	00100793          	li	a5,1
    80004e04:	00008717          	auipc	a4,0x8
    80004e08:	0ef72223          	sw	a5,228(a4) # 8000cee8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004e0c:	0204b783          	ld	a5,32(s1)
    80004e10:	02100593          	li	a1,33
    80004e14:	0087b503          	ld	a0,8(a5)
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	668080e7          	jalr	1640(ra) # 80006480 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004e20:	0204b783          	ld	a5,32(s1)
    80004e24:	0107b503          	ld	a0,16(a5)
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	430080e7          	jalr	1072(ra) # 80002258 <_ZN9Semaphore6signalEv>
    }
    80004e30:	01813083          	ld	ra,24(sp)
    80004e34:	01013403          	ld	s0,16(sp)
    80004e38:	00813483          	ld	s1,8(sp)
    80004e3c:	02010113          	addi	sp,sp,32
    80004e40:	00008067          	ret

0000000080004e44 <_ZN8Producer3runEv>:
    void run() override {
    80004e44:	fe010113          	addi	sp,sp,-32
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00813823          	sd	s0,16(sp)
    80004e50:	00913423          	sd	s1,8(sp)
    80004e54:	01213023          	sd	s2,0(sp)
    80004e58:	02010413          	addi	s0,sp,32
    80004e5c:	00050493          	mv	s1,a0
        int i = 0;
    80004e60:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e64:	00008797          	auipc	a5,0x8
    80004e68:	0847a783          	lw	a5,132(a5) # 8000cee8 <_ZL9threadEnd>
    80004e6c:	04079263          	bnez	a5,80004eb0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004e70:	0204b783          	ld	a5,32(s1)
    80004e74:	0007a583          	lw	a1,0(a5)
    80004e78:	0305859b          	addiw	a1,a1,48
    80004e7c:	0087b503          	ld	a0,8(a5)
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	600080e7          	jalr	1536(ra) # 80006480 <_ZN9BufferCPP3putEi>
            i++;
    80004e88:	0019071b          	addiw	a4,s2,1
    80004e8c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e90:	0204b783          	ld	a5,32(s1)
    80004e94:	0007a783          	lw	a5,0(a5)
    80004e98:	00e787bb          	addw	a5,a5,a4
    80004e9c:	00500513          	li	a0,5
    80004ea0:	02a7e53b          	remw	a0,a5,a0
    80004ea4:	ffffd097          	auipc	ra,0xffffd
    80004ea8:	318080e7          	jalr	792(ra) # 800021bc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004eac:	fb9ff06f          	j	80004e64 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004eb0:	0204b783          	ld	a5,32(s1)
    80004eb4:	0107b503          	ld	a0,16(a5)
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	3a0080e7          	jalr	928(ra) # 80002258 <_ZN9Semaphore6signalEv>
    }
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	00013903          	ld	s2,0(sp)
    80004ed0:	02010113          	addi	sp,sp,32
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	01213023          	sd	s2,0(sp)
    80004eec:	02010413          	addi	s0,sp,32
    80004ef0:	00050493          	mv	s1,a0
    80004ef4:	00058913          	mv	s2,a1
    80004ef8:	0015879b          	addiw	a5,a1,1
    80004efc:	0007851b          	sext.w	a0,a5
    80004f00:	00f4a023          	sw	a5,0(s1)
    80004f04:	0004a823          	sw	zero,16(s1)
    80004f08:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004f0c:	00251513          	slli	a0,a0,0x2
    80004f10:	ffffc097          	auipc	ra,0xffffc
    80004f14:	348080e7          	jalr	840(ra) # 80001258 <_Z9mem_allocm>
    80004f18:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004f1c:	00000593          	li	a1,0
    80004f20:	02048513          	addi	a0,s1,32
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	4e4080e7          	jalr	1252(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004f2c:	00090593          	mv	a1,s2
    80004f30:	01848513          	addi	a0,s1,24
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	4d4080e7          	jalr	1236(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004f3c:	00100593          	li	a1,1
    80004f40:	02848513          	addi	a0,s1,40
    80004f44:	ffffc097          	auipc	ra,0xffffc
    80004f48:	4c4080e7          	jalr	1220(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004f4c:	00100593          	li	a1,1
    80004f50:	03048513          	addi	a0,s1,48
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	4b4080e7          	jalr	1204(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004f5c:	01813083          	ld	ra,24(sp)
    80004f60:	01013403          	ld	s0,16(sp)
    80004f64:	00813483          	ld	s1,8(sp)
    80004f68:	00013903          	ld	s2,0(sp)
    80004f6c:	02010113          	addi	sp,sp,32
    80004f70:	00008067          	ret

0000000080004f74 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00113c23          	sd	ra,24(sp)
    80004f7c:	00813823          	sd	s0,16(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	01213023          	sd	s2,0(sp)
    80004f88:	02010413          	addi	s0,sp,32
    80004f8c:	00050493          	mv	s1,a0
    80004f90:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004f94:	01853503          	ld	a0,24(a0)
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	50c080e7          	jalr	1292(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004fa0:	0304b503          	ld	a0,48(s1)
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	500080e7          	jalr	1280(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004fac:	0084b783          	ld	a5,8(s1)
    80004fb0:	0144a703          	lw	a4,20(s1)
    80004fb4:	00271713          	slli	a4,a4,0x2
    80004fb8:	00e787b3          	add	a5,a5,a4
    80004fbc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004fc0:	0144a783          	lw	a5,20(s1)
    80004fc4:	0017879b          	addiw	a5,a5,1
    80004fc8:	0004a703          	lw	a4,0(s1)
    80004fcc:	02e7e7bb          	remw	a5,a5,a4
    80004fd0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004fd4:	0304b503          	ld	a0,48(s1)
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	518080e7          	jalr	1304(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004fe0:	0204b503          	ld	a0,32(s1)
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	50c080e7          	jalr	1292(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004fec:	01813083          	ld	ra,24(sp)
    80004ff0:	01013403          	ld	s0,16(sp)
    80004ff4:	00813483          	ld	s1,8(sp)
    80004ff8:	00013903          	ld	s2,0(sp)
    80004ffc:	02010113          	addi	sp,sp,32
    80005000:	00008067          	ret

0000000080005004 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005004:	fe010113          	addi	sp,sp,-32
    80005008:	00113c23          	sd	ra,24(sp)
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00913423          	sd	s1,8(sp)
    80005014:	01213023          	sd	s2,0(sp)
    80005018:	02010413          	addi	s0,sp,32
    8000501c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005020:	02053503          	ld	a0,32(a0)
    80005024:	ffffc097          	auipc	ra,0xffffc
    80005028:	480080e7          	jalr	1152(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000502c:	0284b503          	ld	a0,40(s1)
    80005030:	ffffc097          	auipc	ra,0xffffc
    80005034:	474080e7          	jalr	1140(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005038:	0084b703          	ld	a4,8(s1)
    8000503c:	0104a783          	lw	a5,16(s1)
    80005040:	00279693          	slli	a3,a5,0x2
    80005044:	00d70733          	add	a4,a4,a3
    80005048:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000504c:	0017879b          	addiw	a5,a5,1
    80005050:	0004a703          	lw	a4,0(s1)
    80005054:	02e7e7bb          	remw	a5,a5,a4
    80005058:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000505c:	0284b503          	ld	a0,40(s1)
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	490080e7          	jalr	1168(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005068:	0184b503          	ld	a0,24(s1)
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	484080e7          	jalr	1156(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005074:	00090513          	mv	a0,s2
    80005078:	01813083          	ld	ra,24(sp)
    8000507c:	01013403          	ld	s0,16(sp)
    80005080:	00813483          	ld	s1,8(sp)
    80005084:	00013903          	ld	s2,0(sp)
    80005088:	02010113          	addi	sp,sp,32
    8000508c:	00008067          	ret

0000000080005090 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005090:	fe010113          	addi	sp,sp,-32
    80005094:	00113c23          	sd	ra,24(sp)
    80005098:	00813823          	sd	s0,16(sp)
    8000509c:	00913423          	sd	s1,8(sp)
    800050a0:	01213023          	sd	s2,0(sp)
    800050a4:	02010413          	addi	s0,sp,32
    800050a8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800050ac:	02853503          	ld	a0,40(a0)
    800050b0:	ffffc097          	auipc	ra,0xffffc
    800050b4:	3f4080e7          	jalr	1012(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800050b8:	0304b503          	ld	a0,48(s1)
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	3e8080e7          	jalr	1000(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800050c4:	0144a783          	lw	a5,20(s1)
    800050c8:	0104a903          	lw	s2,16(s1)
    800050cc:	0327ce63          	blt	a5,s2,80005108 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800050d0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800050d4:	0304b503          	ld	a0,48(s1)
    800050d8:	ffffc097          	auipc	ra,0xffffc
    800050dc:	418080e7          	jalr	1048(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800050e0:	0284b503          	ld	a0,40(s1)
    800050e4:	ffffc097          	auipc	ra,0xffffc
    800050e8:	40c080e7          	jalr	1036(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800050ec:	00090513          	mv	a0,s2
    800050f0:	01813083          	ld	ra,24(sp)
    800050f4:	01013403          	ld	s0,16(sp)
    800050f8:	00813483          	ld	s1,8(sp)
    800050fc:	00013903          	ld	s2,0(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret
        ret = cap - head + tail;
    80005108:	0004a703          	lw	a4,0(s1)
    8000510c:	4127093b          	subw	s2,a4,s2
    80005110:	00f9093b          	addw	s2,s2,a5
    80005114:	fc1ff06f          	j	800050d4 <_ZN6Buffer6getCntEv+0x44>

0000000080005118 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005118:	fe010113          	addi	sp,sp,-32
    8000511c:	00113c23          	sd	ra,24(sp)
    80005120:	00813823          	sd	s0,16(sp)
    80005124:	00913423          	sd	s1,8(sp)
    80005128:	02010413          	addi	s0,sp,32
    8000512c:	00050493          	mv	s1,a0
    putc('\n');
    80005130:	00a00513          	li	a0,10
    80005134:	ffffc097          	auipc	ra,0xffffc
    80005138:	538080e7          	jalr	1336(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000513c:	00005517          	auipc	a0,0x5
    80005140:	1d450513          	addi	a0,a0,468 # 8000a310 <CONSOLE_STATUS+0x300>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	f18080e7          	jalr	-232(ra) # 8000605c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000514c:	00048513          	mv	a0,s1
    80005150:	00000097          	auipc	ra,0x0
    80005154:	f40080e7          	jalr	-192(ra) # 80005090 <_ZN6Buffer6getCntEv>
    80005158:	02a05c63          	blez	a0,80005190 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000515c:	0084b783          	ld	a5,8(s1)
    80005160:	0104a703          	lw	a4,16(s1)
    80005164:	00271713          	slli	a4,a4,0x2
    80005168:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000516c:	0007c503          	lbu	a0,0(a5)
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	4fc080e7          	jalr	1276(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80005178:	0104a783          	lw	a5,16(s1)
    8000517c:	0017879b          	addiw	a5,a5,1
    80005180:	0004a703          	lw	a4,0(s1)
    80005184:	02e7e7bb          	remw	a5,a5,a4
    80005188:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000518c:	fc1ff06f          	j	8000514c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005190:	02100513          	li	a0,33
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	4d8080e7          	jalr	1240(ra) # 8000166c <_Z4putcc>
    putc('\n');
    8000519c:	00a00513          	li	a0,10
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	4cc080e7          	jalr	1228(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    800051a8:	0084b503          	ld	a0,8(s1)
    800051ac:	ffffc097          	auipc	ra,0xffffc
    800051b0:	100080e7          	jalr	256(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    800051b4:	0204b503          	ld	a0,32(s1)
    800051b8:	ffffc097          	auipc	ra,0xffffc
    800051bc:	2a0080e7          	jalr	672(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800051c0:	0184b503          	ld	a0,24(s1)
    800051c4:	ffffc097          	auipc	ra,0xffffc
    800051c8:	294080e7          	jalr	660(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800051cc:	0304b503          	ld	a0,48(s1)
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	288080e7          	jalr	648(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800051d8:	0284b503          	ld	a0,40(s1)
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	27c080e7          	jalr	636(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    800051e4:	01813083          	ld	ra,24(sp)
    800051e8:	01013403          	ld	s0,16(sp)
    800051ec:	00813483          	ld	s1,8(sp)
    800051f0:	02010113          	addi	sp,sp,32
    800051f4:	00008067          	ret

00000000800051f8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800051f8:	fe010113          	addi	sp,sp,-32
    800051fc:	00113c23          	sd	ra,24(sp)
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00913423          	sd	s1,8(sp)
    80005208:	01213023          	sd	s2,0(sp)
    8000520c:	02010413          	addi	s0,sp,32
    80005210:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005214:	00100793          	li	a5,1
    80005218:	02a7f863          	bgeu	a5,a0,80005248 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000521c:	00a00793          	li	a5,10
    80005220:	02f577b3          	remu	a5,a0,a5
    80005224:	02078e63          	beqz	a5,80005260 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005228:	fff48513          	addi	a0,s1,-1
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	fcc080e7          	jalr	-52(ra) # 800051f8 <_ZL9fibonaccim>
    80005234:	00050913          	mv	s2,a0
    80005238:	ffe48513          	addi	a0,s1,-2
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	fbc080e7          	jalr	-68(ra) # 800051f8 <_ZL9fibonaccim>
    80005244:	00a90533          	add	a0,s2,a0
}
    80005248:	01813083          	ld	ra,24(sp)
    8000524c:	01013403          	ld	s0,16(sp)
    80005250:	00813483          	ld	s1,8(sp)
    80005254:	00013903          	ld	s2,0(sp)
    80005258:	02010113          	addi	sp,sp,32
    8000525c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	16c080e7          	jalr	364(ra) # 800013cc <_Z15thread_dispatchv>
    80005268:	fc1ff06f          	j	80005228 <_ZL9fibonaccim+0x30>

000000008000526c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000526c:	fe010113          	addi	sp,sp,-32
    80005270:	00113c23          	sd	ra,24(sp)
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	01213023          	sd	s2,0(sp)
    80005280:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005284:	00a00493          	li	s1,10
    80005288:	0400006f          	j	800052c8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000528c:	00005517          	auipc	a0,0x5
    80005290:	fec50513          	addi	a0,a0,-20 # 8000a278 <CONSOLE_STATUS+0x268>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	dc8080e7          	jalr	-568(ra) # 8000605c <_Z11printStringPKc>
    8000529c:	00000613          	li	a2,0
    800052a0:	00a00593          	li	a1,10
    800052a4:	00048513          	mv	a0,s1
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	f64080e7          	jalr	-156(ra) # 8000620c <_Z8printIntiii>
    800052b0:	00005517          	auipc	a0,0x5
    800052b4:	1c850513          	addi	a0,a0,456 # 8000a478 <CONSOLE_STATUS+0x468>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	da4080e7          	jalr	-604(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800052c0:	0014849b          	addiw	s1,s1,1
    800052c4:	0ff4f493          	andi	s1,s1,255
    800052c8:	00c00793          	li	a5,12
    800052cc:	fc97f0e3          	bgeu	a5,s1,8000528c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800052d0:	00005517          	auipc	a0,0x5
    800052d4:	fb050513          	addi	a0,a0,-80 # 8000a280 <CONSOLE_STATUS+0x270>
    800052d8:	00001097          	auipc	ra,0x1
    800052dc:	d84080e7          	jalr	-636(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052e0:	00500313          	li	t1,5
    thread_dispatch();
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	0e8080e7          	jalr	232(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800052ec:	01000513          	li	a0,16
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	f08080e7          	jalr	-248(ra) # 800051f8 <_ZL9fibonaccim>
    800052f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052fc:	00005517          	auipc	a0,0x5
    80005300:	f9450513          	addi	a0,a0,-108 # 8000a290 <CONSOLE_STATUS+0x280>
    80005304:	00001097          	auipc	ra,0x1
    80005308:	d58080e7          	jalr	-680(ra) # 8000605c <_Z11printStringPKc>
    8000530c:	00000613          	li	a2,0
    80005310:	00a00593          	li	a1,10
    80005314:	0009051b          	sext.w	a0,s2
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	ef4080e7          	jalr	-268(ra) # 8000620c <_Z8printIntiii>
    80005320:	00005517          	auipc	a0,0x5
    80005324:	15850513          	addi	a0,a0,344 # 8000a478 <CONSOLE_STATUS+0x468>
    80005328:	00001097          	auipc	ra,0x1
    8000532c:	d34080e7          	jalr	-716(ra) # 8000605c <_Z11printStringPKc>
    80005330:	0400006f          	j	80005370 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005334:	00005517          	auipc	a0,0x5
    80005338:	f4450513          	addi	a0,a0,-188 # 8000a278 <CONSOLE_STATUS+0x268>
    8000533c:	00001097          	auipc	ra,0x1
    80005340:	d20080e7          	jalr	-736(ra) # 8000605c <_Z11printStringPKc>
    80005344:	00000613          	li	a2,0
    80005348:	00a00593          	li	a1,10
    8000534c:	00048513          	mv	a0,s1
    80005350:	00001097          	auipc	ra,0x1
    80005354:	ebc080e7          	jalr	-324(ra) # 8000620c <_Z8printIntiii>
    80005358:	00005517          	auipc	a0,0x5
    8000535c:	12050513          	addi	a0,a0,288 # 8000a478 <CONSOLE_STATUS+0x468>
    80005360:	00001097          	auipc	ra,0x1
    80005364:	cfc080e7          	jalr	-772(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005368:	0014849b          	addiw	s1,s1,1
    8000536c:	0ff4f493          	andi	s1,s1,255
    80005370:	00f00793          	li	a5,15
    80005374:	fc97f0e3          	bgeu	a5,s1,80005334 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005378:	00005517          	auipc	a0,0x5
    8000537c:	f2850513          	addi	a0,a0,-216 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005380:	00001097          	auipc	ra,0x1
    80005384:	cdc080e7          	jalr	-804(ra) # 8000605c <_Z11printStringPKc>
    finishedD = true;
    80005388:	00100793          	li	a5,1
    8000538c:	00008717          	auipc	a4,0x8
    80005390:	b6f70623          	sb	a5,-1172(a4) # 8000cef8 <_ZL9finishedD>
    thread_dispatch();
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	038080e7          	jalr	56(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000539c:	01813083          	ld	ra,24(sp)
    800053a0:	01013403          	ld	s0,16(sp)
    800053a4:	00813483          	ld	s1,8(sp)
    800053a8:	00013903          	ld	s2,0(sp)
    800053ac:	02010113          	addi	sp,sp,32
    800053b0:	00008067          	ret

00000000800053b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800053b4:	fe010113          	addi	sp,sp,-32
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00813823          	sd	s0,16(sp)
    800053c0:	00913423          	sd	s1,8(sp)
    800053c4:	01213023          	sd	s2,0(sp)
    800053c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800053cc:	00000493          	li	s1,0
    800053d0:	0400006f          	j	80005410 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800053d4:	00005517          	auipc	a0,0x5
    800053d8:	e7450513          	addi	a0,a0,-396 # 8000a248 <CONSOLE_STATUS+0x238>
    800053dc:	00001097          	auipc	ra,0x1
    800053e0:	c80080e7          	jalr	-896(ra) # 8000605c <_Z11printStringPKc>
    800053e4:	00000613          	li	a2,0
    800053e8:	00a00593          	li	a1,10
    800053ec:	00048513          	mv	a0,s1
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	e1c080e7          	jalr	-484(ra) # 8000620c <_Z8printIntiii>
    800053f8:	00005517          	auipc	a0,0x5
    800053fc:	08050513          	addi	a0,a0,128 # 8000a478 <CONSOLE_STATUS+0x468>
    80005400:	00001097          	auipc	ra,0x1
    80005404:	c5c080e7          	jalr	-932(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005408:	0014849b          	addiw	s1,s1,1
    8000540c:	0ff4f493          	andi	s1,s1,255
    80005410:	00200793          	li	a5,2
    80005414:	fc97f0e3          	bgeu	a5,s1,800053d4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005418:	00005517          	auipc	a0,0x5
    8000541c:	e3850513          	addi	a0,a0,-456 # 8000a250 <CONSOLE_STATUS+0x240>
    80005420:	00001097          	auipc	ra,0x1
    80005424:	c3c080e7          	jalr	-964(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005428:	00700313          	li	t1,7
    thread_dispatch();
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	fa0080e7          	jalr	-96(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005434:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005438:	00005517          	auipc	a0,0x5
    8000543c:	e2850513          	addi	a0,a0,-472 # 8000a260 <CONSOLE_STATUS+0x250>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	c1c080e7          	jalr	-996(ra) # 8000605c <_Z11printStringPKc>
    80005448:	00000613          	li	a2,0
    8000544c:	00a00593          	li	a1,10
    80005450:	0009051b          	sext.w	a0,s2
    80005454:	00001097          	auipc	ra,0x1
    80005458:	db8080e7          	jalr	-584(ra) # 8000620c <_Z8printIntiii>
    8000545c:	00005517          	auipc	a0,0x5
    80005460:	01c50513          	addi	a0,a0,28 # 8000a478 <CONSOLE_STATUS+0x468>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	bf8080e7          	jalr	-1032(ra) # 8000605c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000546c:	00c00513          	li	a0,12
    80005470:	00000097          	auipc	ra,0x0
    80005474:	d88080e7          	jalr	-632(ra) # 800051f8 <_ZL9fibonaccim>
    80005478:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000547c:	00005517          	auipc	a0,0x5
    80005480:	dec50513          	addi	a0,a0,-532 # 8000a268 <CONSOLE_STATUS+0x258>
    80005484:	00001097          	auipc	ra,0x1
    80005488:	bd8080e7          	jalr	-1064(ra) # 8000605c <_Z11printStringPKc>
    8000548c:	00000613          	li	a2,0
    80005490:	00a00593          	li	a1,10
    80005494:	0009051b          	sext.w	a0,s2
    80005498:	00001097          	auipc	ra,0x1
    8000549c:	d74080e7          	jalr	-652(ra) # 8000620c <_Z8printIntiii>
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	fd850513          	addi	a0,a0,-40 # 8000a478 <CONSOLE_STATUS+0x468>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	bb4080e7          	jalr	-1100(ra) # 8000605c <_Z11printStringPKc>
    800054b0:	0400006f          	j	800054f0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800054b4:	00005517          	auipc	a0,0x5
    800054b8:	d9450513          	addi	a0,a0,-620 # 8000a248 <CONSOLE_STATUS+0x238>
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	ba0080e7          	jalr	-1120(ra) # 8000605c <_Z11printStringPKc>
    800054c4:	00000613          	li	a2,0
    800054c8:	00a00593          	li	a1,10
    800054cc:	00048513          	mv	a0,s1
    800054d0:	00001097          	auipc	ra,0x1
    800054d4:	d3c080e7          	jalr	-708(ra) # 8000620c <_Z8printIntiii>
    800054d8:	00005517          	auipc	a0,0x5
    800054dc:	fa050513          	addi	a0,a0,-96 # 8000a478 <CONSOLE_STATUS+0x468>
    800054e0:	00001097          	auipc	ra,0x1
    800054e4:	b7c080e7          	jalr	-1156(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800054e8:	0014849b          	addiw	s1,s1,1
    800054ec:	0ff4f493          	andi	s1,s1,255
    800054f0:	00500793          	li	a5,5
    800054f4:	fc97f0e3          	bgeu	a5,s1,800054b4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800054f8:	00005517          	auipc	a0,0x5
    800054fc:	e3050513          	addi	a0,a0,-464 # 8000a328 <CONSOLE_STATUS+0x318>
    80005500:	00001097          	auipc	ra,0x1
    80005504:	b5c080e7          	jalr	-1188(ra) # 8000605c <_Z11printStringPKc>
    finishedC = true;
    80005508:	00100793          	li	a5,1
    8000550c:	00008717          	auipc	a4,0x8
    80005510:	9ef706a3          	sb	a5,-1555(a4) # 8000cef9 <_ZL9finishedC>
    thread_dispatch();
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	eb8080e7          	jalr	-328(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000551c:	01813083          	ld	ra,24(sp)
    80005520:	01013403          	ld	s0,16(sp)
    80005524:	00813483          	ld	s1,8(sp)
    80005528:	00013903          	ld	s2,0(sp)
    8000552c:	02010113          	addi	sp,sp,32
    80005530:	00008067          	ret

0000000080005534 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005534:	fe010113          	addi	sp,sp,-32
    80005538:	00113c23          	sd	ra,24(sp)
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00913423          	sd	s1,8(sp)
    80005544:	01213023          	sd	s2,0(sp)
    80005548:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000554c:	00000913          	li	s2,0
    80005550:	0380006f          	j	80005588 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	e78080e7          	jalr	-392(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000555c:	00148493          	addi	s1,s1,1
    80005560:	000027b7          	lui	a5,0x2
    80005564:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005568:	0097ee63          	bltu	a5,s1,80005584 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000556c:	00000713          	li	a4,0
    80005570:	000077b7          	lui	a5,0x7
    80005574:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005578:	fce7eee3          	bltu	a5,a4,80005554 <_ZL11workerBodyBPv+0x20>
    8000557c:	00170713          	addi	a4,a4,1
    80005580:	ff1ff06f          	j	80005570 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005584:	00190913          	addi	s2,s2,1
    80005588:	00f00793          	li	a5,15
    8000558c:	0527e063          	bltu	a5,s2,800055cc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005590:	00005517          	auipc	a0,0x5
    80005594:	ca050513          	addi	a0,a0,-864 # 8000a230 <CONSOLE_STATUS+0x220>
    80005598:	00001097          	auipc	ra,0x1
    8000559c:	ac4080e7          	jalr	-1340(ra) # 8000605c <_Z11printStringPKc>
    800055a0:	00000613          	li	a2,0
    800055a4:	00a00593          	li	a1,10
    800055a8:	0009051b          	sext.w	a0,s2
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	c60080e7          	jalr	-928(ra) # 8000620c <_Z8printIntiii>
    800055b4:	00005517          	auipc	a0,0x5
    800055b8:	ec450513          	addi	a0,a0,-316 # 8000a478 <CONSOLE_STATUS+0x468>
    800055bc:	00001097          	auipc	ra,0x1
    800055c0:	aa0080e7          	jalr	-1376(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055c4:	00000493          	li	s1,0
    800055c8:	f99ff06f          	j	80005560 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800055cc:	00005517          	auipc	a0,0x5
    800055d0:	c6c50513          	addi	a0,a0,-916 # 8000a238 <CONSOLE_STATUS+0x228>
    800055d4:	00001097          	auipc	ra,0x1
    800055d8:	a88080e7          	jalr	-1400(ra) # 8000605c <_Z11printStringPKc>
    finishedB = true;
    800055dc:	00100793          	li	a5,1
    800055e0:	00008717          	auipc	a4,0x8
    800055e4:	90f70d23          	sb	a5,-1766(a4) # 8000cefa <_ZL9finishedB>
    thread_dispatch();
    800055e8:	ffffc097          	auipc	ra,0xffffc
    800055ec:	de4080e7          	jalr	-540(ra) # 800013cc <_Z15thread_dispatchv>
}
    800055f0:	01813083          	ld	ra,24(sp)
    800055f4:	01013403          	ld	s0,16(sp)
    800055f8:	00813483          	ld	s1,8(sp)
    800055fc:	00013903          	ld	s2,0(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret

0000000080005608 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005608:	fe010113          	addi	sp,sp,-32
    8000560c:	00113c23          	sd	ra,24(sp)
    80005610:	00813823          	sd	s0,16(sp)
    80005614:	00913423          	sd	s1,8(sp)
    80005618:	01213023          	sd	s2,0(sp)
    8000561c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005620:	00000913          	li	s2,0
    80005624:	0380006f          	j	8000565c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005628:	ffffc097          	auipc	ra,0xffffc
    8000562c:	da4080e7          	jalr	-604(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005630:	00148493          	addi	s1,s1,1
    80005634:	000027b7          	lui	a5,0x2
    80005638:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000563c:	0097ee63          	bltu	a5,s1,80005658 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005640:	00000713          	li	a4,0
    80005644:	000077b7          	lui	a5,0x7
    80005648:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000564c:	fce7eee3          	bltu	a5,a4,80005628 <_ZL11workerBodyAPv+0x20>
    80005650:	00170713          	addi	a4,a4,1
    80005654:	ff1ff06f          	j	80005644 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005658:	00190913          	addi	s2,s2,1
    8000565c:	00900793          	li	a5,9
    80005660:	0527e063          	bltu	a5,s2,800056a0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005664:	00005517          	auipc	a0,0x5
    80005668:	bb450513          	addi	a0,a0,-1100 # 8000a218 <CONSOLE_STATUS+0x208>
    8000566c:	00001097          	auipc	ra,0x1
    80005670:	9f0080e7          	jalr	-1552(ra) # 8000605c <_Z11printStringPKc>
    80005674:	00000613          	li	a2,0
    80005678:	00a00593          	li	a1,10
    8000567c:	0009051b          	sext.w	a0,s2
    80005680:	00001097          	auipc	ra,0x1
    80005684:	b8c080e7          	jalr	-1140(ra) # 8000620c <_Z8printIntiii>
    80005688:	00005517          	auipc	a0,0x5
    8000568c:	df050513          	addi	a0,a0,-528 # 8000a478 <CONSOLE_STATUS+0x468>
    80005690:	00001097          	auipc	ra,0x1
    80005694:	9cc080e7          	jalr	-1588(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005698:	00000493          	li	s1,0
    8000569c:	f99ff06f          	j	80005634 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800056a0:	00005517          	auipc	a0,0x5
    800056a4:	b8050513          	addi	a0,a0,-1152 # 8000a220 <CONSOLE_STATUS+0x210>
    800056a8:	00001097          	auipc	ra,0x1
    800056ac:	9b4080e7          	jalr	-1612(ra) # 8000605c <_Z11printStringPKc>
    finishedA = true;
    800056b0:	00100793          	li	a5,1
    800056b4:	00008717          	auipc	a4,0x8
    800056b8:	84f703a3          	sb	a5,-1977(a4) # 8000cefb <_ZL9finishedA>
}
    800056bc:	01813083          	ld	ra,24(sp)
    800056c0:	01013403          	ld	s0,16(sp)
    800056c4:	00813483          	ld	s1,8(sp)
    800056c8:	00013903          	ld	s2,0(sp)
    800056cc:	02010113          	addi	sp,sp,32
    800056d0:	00008067          	ret

00000000800056d4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800056d4:	fd010113          	addi	sp,sp,-48
    800056d8:	02113423          	sd	ra,40(sp)
    800056dc:	02813023          	sd	s0,32(sp)
    800056e0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800056e4:	00000613          	li	a2,0
    800056e8:	00000597          	auipc	a1,0x0
    800056ec:	f2058593          	addi	a1,a1,-224 # 80005608 <_ZL11workerBodyAPv>
    800056f0:	fd040513          	addi	a0,s0,-48
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	c04080e7          	jalr	-1020(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800056fc:	00005517          	auipc	a0,0x5
    80005700:	bb450513          	addi	a0,a0,-1100 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005704:	00001097          	auipc	ra,0x1
    80005708:	958080e7          	jalr	-1704(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000570c:	00000613          	li	a2,0
    80005710:	00000597          	auipc	a1,0x0
    80005714:	e2458593          	addi	a1,a1,-476 # 80005534 <_ZL11workerBodyBPv>
    80005718:	fd840513          	addi	a0,s0,-40
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	bdc080e7          	jalr	-1060(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005724:	00005517          	auipc	a0,0x5
    80005728:	ba450513          	addi	a0,a0,-1116 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    8000572c:	00001097          	auipc	ra,0x1
    80005730:	930080e7          	jalr	-1744(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005734:	00000613          	li	a2,0
    80005738:	00000597          	auipc	a1,0x0
    8000573c:	c7c58593          	addi	a1,a1,-900 # 800053b4 <_ZL11workerBodyCPv>
    80005740:	fe040513          	addi	a0,s0,-32
    80005744:	ffffc097          	auipc	ra,0xffffc
    80005748:	bb4080e7          	jalr	-1100(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000574c:	00005517          	auipc	a0,0x5
    80005750:	b9450513          	addi	a0,a0,-1132 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005754:	00001097          	auipc	ra,0x1
    80005758:	908080e7          	jalr	-1784(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000575c:	00000613          	li	a2,0
    80005760:	00000597          	auipc	a1,0x0
    80005764:	b0c58593          	addi	a1,a1,-1268 # 8000526c <_ZL11workerBodyDPv>
    80005768:	fe840513          	addi	a0,s0,-24
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	b8c080e7          	jalr	-1140(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005774:	00005517          	auipc	a0,0x5
    80005778:	b8450513          	addi	a0,a0,-1148 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    8000577c:	00001097          	auipc	ra,0x1
    80005780:	8e0080e7          	jalr	-1824(ra) # 8000605c <_Z11printStringPKc>
    80005784:	00c0006f          	j	80005790 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	c44080e7          	jalr	-956(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005790:	00007797          	auipc	a5,0x7
    80005794:	76b7c783          	lbu	a5,1899(a5) # 8000cefb <_ZL9finishedA>
    80005798:	fe0788e3          	beqz	a5,80005788 <_Z18Threads_C_API_testv+0xb4>
    8000579c:	00007797          	auipc	a5,0x7
    800057a0:	75e7c783          	lbu	a5,1886(a5) # 8000cefa <_ZL9finishedB>
    800057a4:	fe0782e3          	beqz	a5,80005788 <_Z18Threads_C_API_testv+0xb4>
    800057a8:	00007797          	auipc	a5,0x7
    800057ac:	7517c783          	lbu	a5,1873(a5) # 8000cef9 <_ZL9finishedC>
    800057b0:	fc078ce3          	beqz	a5,80005788 <_Z18Threads_C_API_testv+0xb4>
    800057b4:	00007797          	auipc	a5,0x7
    800057b8:	7447c783          	lbu	a5,1860(a5) # 8000cef8 <_ZL9finishedD>
    800057bc:	fc0786e3          	beqz	a5,80005788 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800057c0:	02813083          	ld	ra,40(sp)
    800057c4:	02013403          	ld	s0,32(sp)
    800057c8:	03010113          	addi	sp,sp,48
    800057cc:	00008067          	ret

00000000800057d0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800057d0:	fd010113          	addi	sp,sp,-48
    800057d4:	02113423          	sd	ra,40(sp)
    800057d8:	02813023          	sd	s0,32(sp)
    800057dc:	00913c23          	sd	s1,24(sp)
    800057e0:	01213823          	sd	s2,16(sp)
    800057e4:	01313423          	sd	s3,8(sp)
    800057e8:	03010413          	addi	s0,sp,48
    800057ec:	00050993          	mv	s3,a0
    800057f0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800057f4:	00000913          	li	s2,0
    800057f8:	00c0006f          	j	80005804 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057fc:	ffffd097          	auipc	ra,0xffffd
    80005800:	998080e7          	jalr	-1640(ra) # 80002194 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005804:	ffffc097          	auipc	ra,0xffffc
    80005808:	e1c080e7          	jalr	-484(ra) # 80001620 <_Z4getcv>
    8000580c:	0005059b          	sext.w	a1,a0
    80005810:	01b00793          	li	a5,27
    80005814:	02f58a63          	beq	a1,a5,80005848 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005818:	0084b503          	ld	a0,8(s1)
    8000581c:	00001097          	auipc	ra,0x1
    80005820:	c64080e7          	jalr	-924(ra) # 80006480 <_ZN9BufferCPP3putEi>
        i++;
    80005824:	0019071b          	addiw	a4,s2,1
    80005828:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000582c:	0004a683          	lw	a3,0(s1)
    80005830:	0026979b          	slliw	a5,a3,0x2
    80005834:	00d787bb          	addw	a5,a5,a3
    80005838:	0017979b          	slliw	a5,a5,0x1
    8000583c:	02f767bb          	remw	a5,a4,a5
    80005840:	fc0792e3          	bnez	a5,80005804 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005844:	fb9ff06f          	j	800057fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005848:	00100793          	li	a5,1
    8000584c:	00007717          	auipc	a4,0x7
    80005850:	6af72a23          	sw	a5,1716(a4) # 8000cf00 <_ZL9threadEnd>
    td->buffer->put('!');
    80005854:	0209b783          	ld	a5,32(s3)
    80005858:	02100593          	li	a1,33
    8000585c:	0087b503          	ld	a0,8(a5)
    80005860:	00001097          	auipc	ra,0x1
    80005864:	c20080e7          	jalr	-992(ra) # 80006480 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005868:	0104b503          	ld	a0,16(s1)
    8000586c:	ffffd097          	auipc	ra,0xffffd
    80005870:	9ec080e7          	jalr	-1556(ra) # 80002258 <_ZN9Semaphore6signalEv>
}
    80005874:	02813083          	ld	ra,40(sp)
    80005878:	02013403          	ld	s0,32(sp)
    8000587c:	01813483          	ld	s1,24(sp)
    80005880:	01013903          	ld	s2,16(sp)
    80005884:	00813983          	ld	s3,8(sp)
    80005888:	03010113          	addi	sp,sp,48
    8000588c:	00008067          	ret

0000000080005890 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005890:	fe010113          	addi	sp,sp,-32
    80005894:	00113c23          	sd	ra,24(sp)
    80005898:	00813823          	sd	s0,16(sp)
    8000589c:	00913423          	sd	s1,8(sp)
    800058a0:	01213023          	sd	s2,0(sp)
    800058a4:	02010413          	addi	s0,sp,32
    800058a8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058ac:	00000913          	li	s2,0
    800058b0:	00c0006f          	j	800058bc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	8e0080e7          	jalr	-1824(ra) # 80002194 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800058bc:	00007797          	auipc	a5,0x7
    800058c0:	6447a783          	lw	a5,1604(a5) # 8000cf00 <_ZL9threadEnd>
    800058c4:	02079e63          	bnez	a5,80005900 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800058c8:	0004a583          	lw	a1,0(s1)
    800058cc:	0305859b          	addiw	a1,a1,48
    800058d0:	0084b503          	ld	a0,8(s1)
    800058d4:	00001097          	auipc	ra,0x1
    800058d8:	bac080e7          	jalr	-1108(ra) # 80006480 <_ZN9BufferCPP3putEi>
        i++;
    800058dc:	0019071b          	addiw	a4,s2,1
    800058e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058e4:	0004a683          	lw	a3,0(s1)
    800058e8:	0026979b          	slliw	a5,a3,0x2
    800058ec:	00d787bb          	addw	a5,a5,a3
    800058f0:	0017979b          	slliw	a5,a5,0x1
    800058f4:	02f767bb          	remw	a5,a4,a5
    800058f8:	fc0792e3          	bnez	a5,800058bc <_ZN12ProducerSync8producerEPv+0x2c>
    800058fc:	fb9ff06f          	j	800058b4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005900:	0104b503          	ld	a0,16(s1)
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	954080e7          	jalr	-1708(ra) # 80002258 <_ZN9Semaphore6signalEv>
}
    8000590c:	01813083          	ld	ra,24(sp)
    80005910:	01013403          	ld	s0,16(sp)
    80005914:	00813483          	ld	s1,8(sp)
    80005918:	00013903          	ld	s2,0(sp)
    8000591c:	02010113          	addi	sp,sp,32
    80005920:	00008067          	ret

0000000080005924 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005924:	fd010113          	addi	sp,sp,-48
    80005928:	02113423          	sd	ra,40(sp)
    8000592c:	02813023          	sd	s0,32(sp)
    80005930:	00913c23          	sd	s1,24(sp)
    80005934:	01213823          	sd	s2,16(sp)
    80005938:	01313423          	sd	s3,8(sp)
    8000593c:	01413023          	sd	s4,0(sp)
    80005940:	03010413          	addi	s0,sp,48
    80005944:	00050993          	mv	s3,a0
    80005948:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000594c:	00000a13          	li	s4,0
    80005950:	01c0006f          	j	8000596c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	840080e7          	jalr	-1984(ra) # 80002194 <_ZN6Thread8dispatchEv>
    8000595c:	0500006f          	j	800059ac <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005960:	00a00513          	li	a0,10
    80005964:	ffffc097          	auipc	ra,0xffffc
    80005968:	d08080e7          	jalr	-760(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    8000596c:	00007797          	auipc	a5,0x7
    80005970:	5947a783          	lw	a5,1428(a5) # 8000cf00 <_ZL9threadEnd>
    80005974:	06079263          	bnez	a5,800059d8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005978:	00893503          	ld	a0,8(s2)
    8000597c:	00001097          	auipc	ra,0x1
    80005980:	b94080e7          	jalr	-1132(ra) # 80006510 <_ZN9BufferCPP3getEv>
        i++;
    80005984:	001a049b          	addiw	s1,s4,1
    80005988:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000598c:	0ff57513          	andi	a0,a0,255
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	cdc080e7          	jalr	-804(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005998:	00092703          	lw	a4,0(s2)
    8000599c:	0027179b          	slliw	a5,a4,0x2
    800059a0:	00e787bb          	addw	a5,a5,a4
    800059a4:	02f4e7bb          	remw	a5,s1,a5
    800059a8:	fa0786e3          	beqz	a5,80005954 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800059ac:	05000793          	li	a5,80
    800059b0:	02f4e4bb          	remw	s1,s1,a5
    800059b4:	fa049ce3          	bnez	s1,8000596c <_ZN12ConsumerSync8consumerEPv+0x48>
    800059b8:	fa9ff06f          	j	80005960 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800059bc:	0209b783          	ld	a5,32(s3)
    800059c0:	0087b503          	ld	a0,8(a5)
    800059c4:	00001097          	auipc	ra,0x1
    800059c8:	b4c080e7          	jalr	-1204(ra) # 80006510 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800059cc:	0ff57513          	andi	a0,a0,255
    800059d0:	ffffd097          	auipc	ra,0xffffd
    800059d4:	9c8080e7          	jalr	-1592(ra) # 80002398 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800059d8:	0209b783          	ld	a5,32(s3)
    800059dc:	0087b503          	ld	a0,8(a5)
    800059e0:	00001097          	auipc	ra,0x1
    800059e4:	bbc080e7          	jalr	-1092(ra) # 8000659c <_ZN9BufferCPP6getCntEv>
    800059e8:	fca04ae3          	bgtz	a0,800059bc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800059ec:	01093503          	ld	a0,16(s2)
    800059f0:	ffffd097          	auipc	ra,0xffffd
    800059f4:	868080e7          	jalr	-1944(ra) # 80002258 <_ZN9Semaphore6signalEv>
}
    800059f8:	02813083          	ld	ra,40(sp)
    800059fc:	02013403          	ld	s0,32(sp)
    80005a00:	01813483          	ld	s1,24(sp)
    80005a04:	01013903          	ld	s2,16(sp)
    80005a08:	00813983          	ld	s3,8(sp)
    80005a0c:	00013a03          	ld	s4,0(sp)
    80005a10:	03010113          	addi	sp,sp,48
    80005a14:	00008067          	ret

0000000080005a18 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005a18:	f8010113          	addi	sp,sp,-128
    80005a1c:	06113c23          	sd	ra,120(sp)
    80005a20:	06813823          	sd	s0,112(sp)
    80005a24:	06913423          	sd	s1,104(sp)
    80005a28:	07213023          	sd	s2,96(sp)
    80005a2c:	05313c23          	sd	s3,88(sp)
    80005a30:	05413823          	sd	s4,80(sp)
    80005a34:	05513423          	sd	s5,72(sp)
    80005a38:	05613023          	sd	s6,64(sp)
    80005a3c:	03713c23          	sd	s7,56(sp)
    80005a40:	03813823          	sd	s8,48(sp)
    80005a44:	03913423          	sd	s9,40(sp)
    80005a48:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005a4c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	6e050513          	addi	a0,a0,1760 # 8000a130 <CONSOLE_STATUS+0x120>
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	604080e7          	jalr	1540(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    80005a60:	01e00593          	li	a1,30
    80005a64:	f8040493          	addi	s1,s0,-128
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	678080e7          	jalr	1656(ra) # 800060e4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005a74:	00048513          	mv	a0,s1
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	744080e7          	jalr	1860(ra) # 800061bc <_Z11stringToIntPKc>
    80005a80:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a84:	00004517          	auipc	a0,0x4
    80005a88:	6cc50513          	addi	a0,a0,1740 # 8000a150 <CONSOLE_STATUS+0x140>
    80005a8c:	00000097          	auipc	ra,0x0
    80005a90:	5d0080e7          	jalr	1488(ra) # 8000605c <_Z11printStringPKc>
    getString(input, 30);
    80005a94:	01e00593          	li	a1,30
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	648080e7          	jalr	1608(ra) # 800060e4 <_Z9getStringPci>
    n = stringToInt(input);
    80005aa4:	00048513          	mv	a0,s1
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	714080e7          	jalr	1812(ra) # 800061bc <_Z11stringToIntPKc>
    80005ab0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	6bc50513          	addi	a0,a0,1724 # 8000a170 <CONSOLE_STATUS+0x160>
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	5a0080e7          	jalr	1440(ra) # 8000605c <_Z11printStringPKc>
    80005ac4:	00000613          	li	a2,0
    80005ac8:	00a00593          	li	a1,10
    80005acc:	00090513          	mv	a0,s2
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	73c080e7          	jalr	1852(ra) # 8000620c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	6b050513          	addi	a0,a0,1712 # 8000a188 <CONSOLE_STATUS+0x178>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	57c080e7          	jalr	1404(ra) # 8000605c <_Z11printStringPKc>
    80005ae8:	00000613          	li	a2,0
    80005aec:	00a00593          	li	a1,10
    80005af0:	00048513          	mv	a0,s1
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	718080e7          	jalr	1816(ra) # 8000620c <_Z8printIntiii>
    printString(".\n");
    80005afc:	00004517          	auipc	a0,0x4
    80005b00:	6a450513          	addi	a0,a0,1700 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	558080e7          	jalr	1368(ra) # 8000605c <_Z11printStringPKc>
    if(threadNum > n) {
    80005b0c:	0324c463          	blt	s1,s2,80005b34 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005b10:	03205c63          	blez	s2,80005b48 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005b14:	03800513          	li	a0,56
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	514080e7          	jalr	1300(ra) # 8000202c <_Znwm>
    80005b20:	00050a93          	mv	s5,a0
    80005b24:	00048593          	mv	a1,s1
    80005b28:	00001097          	auipc	ra,0x1
    80005b2c:	804080e7          	jalr	-2044(ra) # 8000632c <_ZN9BufferCPPC1Ei>
    80005b30:	0300006f          	j	80005b60 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	67450513          	addi	a0,a0,1652 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005b3c:	00000097          	auipc	ra,0x0
    80005b40:	520080e7          	jalr	1312(ra) # 8000605c <_Z11printStringPKc>
        return;
    80005b44:	0140006f          	j	80005b58 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b48:	00004517          	auipc	a0,0x4
    80005b4c:	6a050513          	addi	a0,a0,1696 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	50c080e7          	jalr	1292(ra) # 8000605c <_Z11printStringPKc>
        return;
    80005b58:	000b8113          	mv	sp,s7
    80005b5c:	2380006f          	j	80005d94 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b60:	01000513          	li	a0,16
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	4c8080e7          	jalr	1224(ra) # 8000202c <_Znwm>
    80005b6c:	00050493          	mv	s1,a0
    80005b70:	00000593          	li	a1,0
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	670080e7          	jalr	1648(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005b7c:	00007797          	auipc	a5,0x7
    80005b80:	3897b623          	sd	s1,908(a5) # 8000cf08 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005b84:	00391793          	slli	a5,s2,0x3
    80005b88:	00f78793          	addi	a5,a5,15
    80005b8c:	ff07f793          	andi	a5,a5,-16
    80005b90:	40f10133          	sub	sp,sp,a5
    80005b94:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005b98:	0019071b          	addiw	a4,s2,1
    80005b9c:	00171793          	slli	a5,a4,0x1
    80005ba0:	00e787b3          	add	a5,a5,a4
    80005ba4:	00379793          	slli	a5,a5,0x3
    80005ba8:	00f78793          	addi	a5,a5,15
    80005bac:	ff07f793          	andi	a5,a5,-16
    80005bb0:	40f10133          	sub	sp,sp,a5
    80005bb4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005bb8:	00191c13          	slli	s8,s2,0x1
    80005bbc:	012c07b3          	add	a5,s8,s2
    80005bc0:	00379793          	slli	a5,a5,0x3
    80005bc4:	00fa07b3          	add	a5,s4,a5
    80005bc8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005bcc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005bd0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005bd4:	02800513          	li	a0,40
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	454080e7          	jalr	1108(ra) # 8000202c <_Znwm>
    80005be0:	00050b13          	mv	s6,a0
    80005be4:	012c0c33          	add	s8,s8,s2
    80005be8:	003c1c13          	slli	s8,s8,0x3
    80005bec:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005bf0:	ffffc097          	auipc	ra,0xffffc
    80005bf4:	53c080e7          	jalr	1340(ra) # 8000212c <_ZN6ThreadC1Ev>
    80005bf8:	00007797          	auipc	a5,0x7
    80005bfc:	1a078793          	addi	a5,a5,416 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005c00:	00fb3023          	sd	a5,0(s6)
    80005c04:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005c08:	000b0513          	mv	a0,s6
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	550080e7          	jalr	1360(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c14:	00000493          	li	s1,0
    80005c18:	0380006f          	j	80005c50 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c1c:	00007797          	auipc	a5,0x7
    80005c20:	15478793          	addi	a5,a5,340 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005c24:	00fcb023          	sd	a5,0(s9)
    80005c28:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005c2c:	00349793          	slli	a5,s1,0x3
    80005c30:	00f987b3          	add	a5,s3,a5
    80005c34:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c38:	00349793          	slli	a5,s1,0x3
    80005c3c:	00f987b3          	add	a5,s3,a5
    80005c40:	0007b503          	ld	a0,0(a5)
    80005c44:	ffffc097          	auipc	ra,0xffffc
    80005c48:	518080e7          	jalr	1304(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c4c:	0014849b          	addiw	s1,s1,1
    80005c50:	0b24d063          	bge	s1,s2,80005cf0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005c54:	00149793          	slli	a5,s1,0x1
    80005c58:	009787b3          	add	a5,a5,s1
    80005c5c:	00379793          	slli	a5,a5,0x3
    80005c60:	00fa07b3          	add	a5,s4,a5
    80005c64:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c68:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005c6c:	00007717          	auipc	a4,0x7
    80005c70:	29c73703          	ld	a4,668(a4) # 8000cf08 <_ZL10waitForAll>
    80005c74:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005c78:	02905863          	blez	s1,80005ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005c7c:	02800513          	li	a0,40
    80005c80:	ffffc097          	auipc	ra,0xffffc
    80005c84:	3ac080e7          	jalr	940(ra) # 8000202c <_Znwm>
    80005c88:	00050c93          	mv	s9,a0
    80005c8c:	00149c13          	slli	s8,s1,0x1
    80005c90:	009c0c33          	add	s8,s8,s1
    80005c94:	003c1c13          	slli	s8,s8,0x3
    80005c98:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	490080e7          	jalr	1168(ra) # 8000212c <_ZN6ThreadC1Ev>
    80005ca4:	f79ff06f          	j	80005c1c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005ca8:	02800513          	li	a0,40
    80005cac:	ffffc097          	auipc	ra,0xffffc
    80005cb0:	380080e7          	jalr	896(ra) # 8000202c <_Znwm>
    80005cb4:	00050c93          	mv	s9,a0
    80005cb8:	00149c13          	slli	s8,s1,0x1
    80005cbc:	009c0c33          	add	s8,s8,s1
    80005cc0:	003c1c13          	slli	s8,s8,0x3
    80005cc4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005cc8:	ffffc097          	auipc	ra,0xffffc
    80005ccc:	464080e7          	jalr	1124(ra) # 8000212c <_ZN6ThreadC1Ev>
    80005cd0:	00007797          	auipc	a5,0x7
    80005cd4:	07878793          	addi	a5,a5,120 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005cd8:	00fcb023          	sd	a5,0(s9)
    80005cdc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ce0:	00349793          	slli	a5,s1,0x3
    80005ce4:	00f987b3          	add	a5,s3,a5
    80005ce8:	0197b023          	sd	s9,0(a5)
    80005cec:	f4dff06f          	j	80005c38 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	4a4080e7          	jalr	1188(ra) # 80002194 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cf8:	00000493          	li	s1,0
    80005cfc:	00994e63          	blt	s2,s1,80005d18 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005d00:	00007517          	auipc	a0,0x7
    80005d04:	20853503          	ld	a0,520(a0) # 8000cf08 <_ZL10waitForAll>
    80005d08:	ffffc097          	auipc	ra,0xffffc
    80005d0c:	518080e7          	jalr	1304(ra) # 80002220 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d10:	0014849b          	addiw	s1,s1,1
    80005d14:	fe9ff06f          	j	80005cfc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005d18:	00000493          	li	s1,0
    80005d1c:	0080006f          	j	80005d24 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005d20:	0014849b          	addiw	s1,s1,1
    80005d24:	0324d263          	bge	s1,s2,80005d48 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005d28:	00349793          	slli	a5,s1,0x3
    80005d2c:	00f987b3          	add	a5,s3,a5
    80005d30:	0007b503          	ld	a0,0(a5)
    80005d34:	fe0506e3          	beqz	a0,80005d20 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d38:	00053783          	ld	a5,0(a0)
    80005d3c:	0087b783          	ld	a5,8(a5)
    80005d40:	000780e7          	jalr	a5
    80005d44:	fddff06f          	j	80005d20 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005d48:	000b0a63          	beqz	s6,80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005d4c:	000b3783          	ld	a5,0(s6)
    80005d50:	0087b783          	ld	a5,8(a5)
    80005d54:	000b0513          	mv	a0,s6
    80005d58:	000780e7          	jalr	a5
    delete waitForAll;
    80005d5c:	00007517          	auipc	a0,0x7
    80005d60:	1ac53503          	ld	a0,428(a0) # 8000cf08 <_ZL10waitForAll>
    80005d64:	00050863          	beqz	a0,80005d74 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005d68:	00053783          	ld	a5,0(a0)
    80005d6c:	0087b783          	ld	a5,8(a5)
    80005d70:	000780e7          	jalr	a5
    delete buffer;
    80005d74:	000a8e63          	beqz	s5,80005d90 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005d78:	000a8513          	mv	a0,s5
    80005d7c:	00001097          	auipc	ra,0x1
    80005d80:	8a8080e7          	jalr	-1880(ra) # 80006624 <_ZN9BufferCPPD1Ev>
    80005d84:	000a8513          	mv	a0,s5
    80005d88:	ffffc097          	auipc	ra,0xffffc
    80005d8c:	2cc080e7          	jalr	716(ra) # 80002054 <_ZdlPv>
    80005d90:	000b8113          	mv	sp,s7

}
    80005d94:	f8040113          	addi	sp,s0,-128
    80005d98:	07813083          	ld	ra,120(sp)
    80005d9c:	07013403          	ld	s0,112(sp)
    80005da0:	06813483          	ld	s1,104(sp)
    80005da4:	06013903          	ld	s2,96(sp)
    80005da8:	05813983          	ld	s3,88(sp)
    80005dac:	05013a03          	ld	s4,80(sp)
    80005db0:	04813a83          	ld	s5,72(sp)
    80005db4:	04013b03          	ld	s6,64(sp)
    80005db8:	03813b83          	ld	s7,56(sp)
    80005dbc:	03013c03          	ld	s8,48(sp)
    80005dc0:	02813c83          	ld	s9,40(sp)
    80005dc4:	08010113          	addi	sp,sp,128
    80005dc8:	00008067          	ret
    80005dcc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005dd0:	000a8513          	mv	a0,s5
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	280080e7          	jalr	640(ra) # 80002054 <_ZdlPv>
    80005ddc:	00048513          	mv	a0,s1
    80005de0:	00008097          	auipc	ra,0x8
    80005de4:	208080e7          	jalr	520(ra) # 8000dfe8 <_Unwind_Resume>
    80005de8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005dec:	00048513          	mv	a0,s1
    80005df0:	ffffc097          	auipc	ra,0xffffc
    80005df4:	264080e7          	jalr	612(ra) # 80002054 <_ZdlPv>
    80005df8:	00090513          	mv	a0,s2
    80005dfc:	00008097          	auipc	ra,0x8
    80005e00:	1ec080e7          	jalr	492(ra) # 8000dfe8 <_Unwind_Resume>
    80005e04:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005e08:	000b0513          	mv	a0,s6
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	248080e7          	jalr	584(ra) # 80002054 <_ZdlPv>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	00008097          	auipc	ra,0x8
    80005e1c:	1d0080e7          	jalr	464(ra) # 8000dfe8 <_Unwind_Resume>
    80005e20:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005e24:	000c8513          	mv	a0,s9
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	22c080e7          	jalr	556(ra) # 80002054 <_ZdlPv>
    80005e30:	00048513          	mv	a0,s1
    80005e34:	00008097          	auipc	ra,0x8
    80005e38:	1b4080e7          	jalr	436(ra) # 8000dfe8 <_Unwind_Resume>
    80005e3c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e40:	000c8513          	mv	a0,s9
    80005e44:	ffffc097          	auipc	ra,0xffffc
    80005e48:	210080e7          	jalr	528(ra) # 80002054 <_ZdlPv>
    80005e4c:	00048513          	mv	a0,s1
    80005e50:	00008097          	auipc	ra,0x8
    80005e54:	198080e7          	jalr	408(ra) # 8000dfe8 <_Unwind_Resume>

0000000080005e58 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e58:	ff010113          	addi	sp,sp,-16
    80005e5c:	00113423          	sd	ra,8(sp)
    80005e60:	00813023          	sd	s0,0(sp)
    80005e64:	01010413          	addi	s0,sp,16
    80005e68:	00007797          	auipc	a5,0x7
    80005e6c:	f3078793          	addi	a5,a5,-208 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005e70:	00f53023          	sd	a5,0(a0)
    80005e74:	ffffc097          	auipc	ra,0xffffc
    80005e78:	0e8080e7          	jalr	232(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005e7c:	00813083          	ld	ra,8(sp)
    80005e80:	00013403          	ld	s0,0(sp)
    80005e84:	01010113          	addi	sp,sp,16
    80005e88:	00008067          	ret

0000000080005e8c <_ZN12ConsumerSyncD0Ev>:
    80005e8c:	fe010113          	addi	sp,sp,-32
    80005e90:	00113c23          	sd	ra,24(sp)
    80005e94:	00813823          	sd	s0,16(sp)
    80005e98:	00913423          	sd	s1,8(sp)
    80005e9c:	02010413          	addi	s0,sp,32
    80005ea0:	00050493          	mv	s1,a0
    80005ea4:	00007797          	auipc	a5,0x7
    80005ea8:	ef478793          	addi	a5,a5,-268 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005eac:	00f53023          	sd	a5,0(a0)
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	0ac080e7          	jalr	172(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005eb8:	00048513          	mv	a0,s1
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	198080e7          	jalr	408(ra) # 80002054 <_ZdlPv>
    80005ec4:	01813083          	ld	ra,24(sp)
    80005ec8:	01013403          	ld	s0,16(sp)
    80005ecc:	00813483          	ld	s1,8(sp)
    80005ed0:	02010113          	addi	sp,sp,32
    80005ed4:	00008067          	ret

0000000080005ed8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005ed8:	ff010113          	addi	sp,sp,-16
    80005edc:	00113423          	sd	ra,8(sp)
    80005ee0:	00813023          	sd	s0,0(sp)
    80005ee4:	01010413          	addi	s0,sp,16
    80005ee8:	00007797          	auipc	a5,0x7
    80005eec:	e8878793          	addi	a5,a5,-376 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005ef0:	00f53023          	sd	a5,0(a0)
    80005ef4:	ffffc097          	auipc	ra,0xffffc
    80005ef8:	068080e7          	jalr	104(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005efc:	00813083          	ld	ra,8(sp)
    80005f00:	00013403          	ld	s0,0(sp)
    80005f04:	01010113          	addi	sp,sp,16
    80005f08:	00008067          	ret

0000000080005f0c <_ZN12ProducerSyncD0Ev>:
    80005f0c:	fe010113          	addi	sp,sp,-32
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	00813823          	sd	s0,16(sp)
    80005f18:	00913423          	sd	s1,8(sp)
    80005f1c:	02010413          	addi	s0,sp,32
    80005f20:	00050493          	mv	s1,a0
    80005f24:	00007797          	auipc	a5,0x7
    80005f28:	e4c78793          	addi	a5,a5,-436 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005f2c:	00f53023          	sd	a5,0(a0)
    80005f30:	ffffc097          	auipc	ra,0xffffc
    80005f34:	02c080e7          	jalr	44(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005f38:	00048513          	mv	a0,s1
    80005f3c:	ffffc097          	auipc	ra,0xffffc
    80005f40:	118080e7          	jalr	280(ra) # 80002054 <_ZdlPv>
    80005f44:	01813083          	ld	ra,24(sp)
    80005f48:	01013403          	ld	s0,16(sp)
    80005f4c:	00813483          	ld	s1,8(sp)
    80005f50:	02010113          	addi	sp,sp,32
    80005f54:	00008067          	ret

0000000080005f58 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f58:	ff010113          	addi	sp,sp,-16
    80005f5c:	00113423          	sd	ra,8(sp)
    80005f60:	00813023          	sd	s0,0(sp)
    80005f64:	01010413          	addi	s0,sp,16
    80005f68:	00007797          	auipc	a5,0x7
    80005f6c:	de078793          	addi	a5,a5,-544 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005f70:	00f53023          	sd	a5,0(a0)
    80005f74:	ffffc097          	auipc	ra,0xffffc
    80005f78:	fe8080e7          	jalr	-24(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005f7c:	00813083          	ld	ra,8(sp)
    80005f80:	00013403          	ld	s0,0(sp)
    80005f84:	01010113          	addi	sp,sp,16
    80005f88:	00008067          	ret

0000000080005f8c <_ZN16ProducerKeyboardD0Ev>:
    80005f8c:	fe010113          	addi	sp,sp,-32
    80005f90:	00113c23          	sd	ra,24(sp)
    80005f94:	00813823          	sd	s0,16(sp)
    80005f98:	00913423          	sd	s1,8(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    80005fa0:	00050493          	mv	s1,a0
    80005fa4:	00007797          	auipc	a5,0x7
    80005fa8:	da478793          	addi	a5,a5,-604 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005fac:	00f53023          	sd	a5,0(a0)
    80005fb0:	ffffc097          	auipc	ra,0xffffc
    80005fb4:	fac080e7          	jalr	-84(ra) # 80001f5c <_ZN6ThreadD1Ev>
    80005fb8:	00048513          	mv	a0,s1
    80005fbc:	ffffc097          	auipc	ra,0xffffc
    80005fc0:	098080e7          	jalr	152(ra) # 80002054 <_ZdlPv>
    80005fc4:	01813083          	ld	ra,24(sp)
    80005fc8:	01013403          	ld	s0,16(sp)
    80005fcc:	00813483          	ld	s1,8(sp)
    80005fd0:	02010113          	addi	sp,sp,32
    80005fd4:	00008067          	ret

0000000080005fd8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005fd8:	ff010113          	addi	sp,sp,-16
    80005fdc:	00113423          	sd	ra,8(sp)
    80005fe0:	00813023          	sd	s0,0(sp)
    80005fe4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005fe8:	02053583          	ld	a1,32(a0)
    80005fec:	fffff097          	auipc	ra,0xfffff
    80005ff0:	7e4080e7          	jalr	2020(ra) # 800057d0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005ff4:	00813083          	ld	ra,8(sp)
    80005ff8:	00013403          	ld	s0,0(sp)
    80005ffc:	01010113          	addi	sp,sp,16
    80006000:	00008067          	ret

0000000080006004 <_ZN12ProducerSync3runEv>:
    void run() override {
    80006004:	ff010113          	addi	sp,sp,-16
    80006008:	00113423          	sd	ra,8(sp)
    8000600c:	00813023          	sd	s0,0(sp)
    80006010:	01010413          	addi	s0,sp,16
        producer(td);
    80006014:	02053583          	ld	a1,32(a0)
    80006018:	00000097          	auipc	ra,0x0
    8000601c:	878080e7          	jalr	-1928(ra) # 80005890 <_ZN12ProducerSync8producerEPv>
    }
    80006020:	00813083          	ld	ra,8(sp)
    80006024:	00013403          	ld	s0,0(sp)
    80006028:	01010113          	addi	sp,sp,16
    8000602c:	00008067          	ret

0000000080006030 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006030:	ff010113          	addi	sp,sp,-16
    80006034:	00113423          	sd	ra,8(sp)
    80006038:	00813023          	sd	s0,0(sp)
    8000603c:	01010413          	addi	s0,sp,16
        consumer(td);
    80006040:	02053583          	ld	a1,32(a0)
    80006044:	00000097          	auipc	ra,0x0
    80006048:	8e0080e7          	jalr	-1824(ra) # 80005924 <_ZN12ConsumerSync8consumerEPv>
    }
    8000604c:	00813083          	ld	ra,8(sp)
    80006050:	00013403          	ld	s0,0(sp)
    80006054:	01010113          	addi	sp,sp,16
    80006058:	00008067          	ret

000000008000605c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000605c:	fe010113          	addi	sp,sp,-32
    80006060:	00113c23          	sd	ra,24(sp)
    80006064:	00813823          	sd	s0,16(sp)
    80006068:	00913423          	sd	s1,8(sp)
    8000606c:	02010413          	addi	s0,sp,32
    80006070:	00050493          	mv	s1,a0
    LOCK();
    80006074:	00100613          	li	a2,1
    80006078:	00000593          	li	a1,0
    8000607c:	00007517          	auipc	a0,0x7
    80006080:	e9450513          	addi	a0,a0,-364 # 8000cf10 <lockPrint>
    80006084:	ffffb097          	auipc	ra,0xffffb
    80006088:	198080e7          	jalr	408(ra) # 8000121c <copy_and_swap>
    8000608c:	00050863          	beqz	a0,8000609c <_Z11printStringPKc+0x40>
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	33c080e7          	jalr	828(ra) # 800013cc <_Z15thread_dispatchv>
    80006098:	fddff06f          	j	80006074 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000609c:	0004c503          	lbu	a0,0(s1)
    800060a0:	00050a63          	beqz	a0,800060b4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	5c8080e7          	jalr	1480(ra) # 8000166c <_Z4putcc>
        string++;
    800060ac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800060b0:	fedff06f          	j	8000609c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800060b4:	00000613          	li	a2,0
    800060b8:	00100593          	li	a1,1
    800060bc:	00007517          	auipc	a0,0x7
    800060c0:	e5450513          	addi	a0,a0,-428 # 8000cf10 <lockPrint>
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	158080e7          	jalr	344(ra) # 8000121c <copy_and_swap>
    800060cc:	fe0514e3          	bnez	a0,800060b4 <_Z11printStringPKc+0x58>
}
    800060d0:	01813083          	ld	ra,24(sp)
    800060d4:	01013403          	ld	s0,16(sp)
    800060d8:	00813483          	ld	s1,8(sp)
    800060dc:	02010113          	addi	sp,sp,32
    800060e0:	00008067          	ret

00000000800060e4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800060e4:	fd010113          	addi	sp,sp,-48
    800060e8:	02113423          	sd	ra,40(sp)
    800060ec:	02813023          	sd	s0,32(sp)
    800060f0:	00913c23          	sd	s1,24(sp)
    800060f4:	01213823          	sd	s2,16(sp)
    800060f8:	01313423          	sd	s3,8(sp)
    800060fc:	01413023          	sd	s4,0(sp)
    80006100:	03010413          	addi	s0,sp,48
    80006104:	00050993          	mv	s3,a0
    80006108:	00058a13          	mv	s4,a1
    LOCK();
    8000610c:	00100613          	li	a2,1
    80006110:	00000593          	li	a1,0
    80006114:	00007517          	auipc	a0,0x7
    80006118:	dfc50513          	addi	a0,a0,-516 # 8000cf10 <lockPrint>
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	100080e7          	jalr	256(ra) # 8000121c <copy_and_swap>
    80006124:	00050863          	beqz	a0,80006134 <_Z9getStringPci+0x50>
    80006128:	ffffb097          	auipc	ra,0xffffb
    8000612c:	2a4080e7          	jalr	676(ra) # 800013cc <_Z15thread_dispatchv>
    80006130:	fddff06f          	j	8000610c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006134:	00000913          	li	s2,0
    80006138:	00090493          	mv	s1,s2
    8000613c:	0019091b          	addiw	s2,s2,1
    80006140:	03495a63          	bge	s2,s4,80006174 <_Z9getStringPci+0x90>
        cc = getc();
    80006144:	ffffb097          	auipc	ra,0xffffb
    80006148:	4dc080e7          	jalr	1244(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    8000614c:	02050463          	beqz	a0,80006174 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006150:	009984b3          	add	s1,s3,s1
    80006154:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006158:	00a00793          	li	a5,10
    8000615c:	00f50a63          	beq	a0,a5,80006170 <_Z9getStringPci+0x8c>
    80006160:	00d00793          	li	a5,13
    80006164:	fcf51ae3          	bne	a0,a5,80006138 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006168:	00090493          	mv	s1,s2
    8000616c:	0080006f          	j	80006174 <_Z9getStringPci+0x90>
    80006170:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006174:	009984b3          	add	s1,s3,s1
    80006178:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000617c:	00000613          	li	a2,0
    80006180:	00100593          	li	a1,1
    80006184:	00007517          	auipc	a0,0x7
    80006188:	d8c50513          	addi	a0,a0,-628 # 8000cf10 <lockPrint>
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	090080e7          	jalr	144(ra) # 8000121c <copy_and_swap>
    80006194:	fe0514e3          	bnez	a0,8000617c <_Z9getStringPci+0x98>
    return buf;
}
    80006198:	00098513          	mv	a0,s3
    8000619c:	02813083          	ld	ra,40(sp)
    800061a0:	02013403          	ld	s0,32(sp)
    800061a4:	01813483          	ld	s1,24(sp)
    800061a8:	01013903          	ld	s2,16(sp)
    800061ac:	00813983          	ld	s3,8(sp)
    800061b0:	00013a03          	ld	s4,0(sp)
    800061b4:	03010113          	addi	sp,sp,48
    800061b8:	00008067          	ret

00000000800061bc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800061bc:	ff010113          	addi	sp,sp,-16
    800061c0:	00813423          	sd	s0,8(sp)
    800061c4:	01010413          	addi	s0,sp,16
    800061c8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800061cc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800061d0:	0006c603          	lbu	a2,0(a3)
    800061d4:	fd06071b          	addiw	a4,a2,-48
    800061d8:	0ff77713          	andi	a4,a4,255
    800061dc:	00900793          	li	a5,9
    800061e0:	02e7e063          	bltu	a5,a4,80006200 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800061e4:	0025179b          	slliw	a5,a0,0x2
    800061e8:	00a787bb          	addw	a5,a5,a0
    800061ec:	0017979b          	slliw	a5,a5,0x1
    800061f0:	00168693          	addi	a3,a3,1
    800061f4:	00c787bb          	addw	a5,a5,a2
    800061f8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800061fc:	fd5ff06f          	j	800061d0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006200:	00813403          	ld	s0,8(sp)
    80006204:	01010113          	addi	sp,sp,16
    80006208:	00008067          	ret

000000008000620c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000620c:	fc010113          	addi	sp,sp,-64
    80006210:	02113c23          	sd	ra,56(sp)
    80006214:	02813823          	sd	s0,48(sp)
    80006218:	02913423          	sd	s1,40(sp)
    8000621c:	03213023          	sd	s2,32(sp)
    80006220:	01313c23          	sd	s3,24(sp)
    80006224:	04010413          	addi	s0,sp,64
    80006228:	00050493          	mv	s1,a0
    8000622c:	00058913          	mv	s2,a1
    80006230:	00060993          	mv	s3,a2
    LOCK();
    80006234:	00100613          	li	a2,1
    80006238:	00000593          	li	a1,0
    8000623c:	00007517          	auipc	a0,0x7
    80006240:	cd450513          	addi	a0,a0,-812 # 8000cf10 <lockPrint>
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	fd8080e7          	jalr	-40(ra) # 8000121c <copy_and_swap>
    8000624c:	00050863          	beqz	a0,8000625c <_Z8printIntiii+0x50>
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	17c080e7          	jalr	380(ra) # 800013cc <_Z15thread_dispatchv>
    80006258:	fddff06f          	j	80006234 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000625c:	00098463          	beqz	s3,80006264 <_Z8printIntiii+0x58>
    80006260:	0804c463          	bltz	s1,800062e8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006264:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006268:	00000593          	li	a1,0
    }

    i = 0;
    8000626c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006270:	0009079b          	sext.w	a5,s2
    80006274:	0325773b          	remuw	a4,a0,s2
    80006278:	00048613          	mv	a2,s1
    8000627c:	0014849b          	addiw	s1,s1,1
    80006280:	02071693          	slli	a3,a4,0x20
    80006284:	0206d693          	srli	a3,a3,0x20
    80006288:	00007717          	auipc	a4,0x7
    8000628c:	b2870713          	addi	a4,a4,-1240 # 8000cdb0 <digits>
    80006290:	00d70733          	add	a4,a4,a3
    80006294:	00074683          	lbu	a3,0(a4)
    80006298:	fd040713          	addi	a4,s0,-48
    8000629c:	00c70733          	add	a4,a4,a2
    800062a0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800062a4:	0005071b          	sext.w	a4,a0
    800062a8:	0325553b          	divuw	a0,a0,s2
    800062ac:	fcf772e3          	bgeu	a4,a5,80006270 <_Z8printIntiii+0x64>
    if(neg)
    800062b0:	00058c63          	beqz	a1,800062c8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800062b4:	fd040793          	addi	a5,s0,-48
    800062b8:	009784b3          	add	s1,a5,s1
    800062bc:	02d00793          	li	a5,45
    800062c0:	fef48823          	sb	a5,-16(s1)
    800062c4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800062c8:	fff4849b          	addiw	s1,s1,-1
    800062cc:	0204c463          	bltz	s1,800062f4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800062d0:	fd040793          	addi	a5,s0,-48
    800062d4:	009787b3          	add	a5,a5,s1
    800062d8:	ff07c503          	lbu	a0,-16(a5)
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	390080e7          	jalr	912(ra) # 8000166c <_Z4putcc>
    800062e4:	fe5ff06f          	j	800062c8 <_Z8printIntiii+0xbc>
        x = -xx;
    800062e8:	4090053b          	negw	a0,s1
        neg = 1;
    800062ec:	00100593          	li	a1,1
        x = -xx;
    800062f0:	f7dff06f          	j	8000626c <_Z8printIntiii+0x60>

    UNLOCK();
    800062f4:	00000613          	li	a2,0
    800062f8:	00100593          	li	a1,1
    800062fc:	00007517          	auipc	a0,0x7
    80006300:	c1450513          	addi	a0,a0,-1004 # 8000cf10 <lockPrint>
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	f18080e7          	jalr	-232(ra) # 8000121c <copy_and_swap>
    8000630c:	fe0514e3          	bnez	a0,800062f4 <_Z8printIntiii+0xe8>
    80006310:	03813083          	ld	ra,56(sp)
    80006314:	03013403          	ld	s0,48(sp)
    80006318:	02813483          	ld	s1,40(sp)
    8000631c:	02013903          	ld	s2,32(sp)
    80006320:	01813983          	ld	s3,24(sp)
    80006324:	04010113          	addi	sp,sp,64
    80006328:	00008067          	ret

000000008000632c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000632c:	fd010113          	addi	sp,sp,-48
    80006330:	02113423          	sd	ra,40(sp)
    80006334:	02813023          	sd	s0,32(sp)
    80006338:	00913c23          	sd	s1,24(sp)
    8000633c:	01213823          	sd	s2,16(sp)
    80006340:	01313423          	sd	s3,8(sp)
    80006344:	03010413          	addi	s0,sp,48
    80006348:	00050493          	mv	s1,a0
    8000634c:	00058913          	mv	s2,a1
    80006350:	0015879b          	addiw	a5,a1,1
    80006354:	0007851b          	sext.w	a0,a5
    80006358:	00f4a023          	sw	a5,0(s1)
    8000635c:	0004a823          	sw	zero,16(s1)
    80006360:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006364:	00251513          	slli	a0,a0,0x2
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	ef0080e7          	jalr	-272(ra) # 80001258 <_Z9mem_allocm>
    80006370:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006374:	01000513          	li	a0,16
    80006378:	ffffc097          	auipc	ra,0xffffc
    8000637c:	cb4080e7          	jalr	-844(ra) # 8000202c <_Znwm>
    80006380:	00050993          	mv	s3,a0
    80006384:	00000593          	li	a1,0
    80006388:	ffffc097          	auipc	ra,0xffffc
    8000638c:	e5c080e7          	jalr	-420(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80006390:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006394:	01000513          	li	a0,16
    80006398:	ffffc097          	auipc	ra,0xffffc
    8000639c:	c94080e7          	jalr	-876(ra) # 8000202c <_Znwm>
    800063a0:	00050993          	mv	s3,a0
    800063a4:	00090593          	mv	a1,s2
    800063a8:	ffffc097          	auipc	ra,0xffffc
    800063ac:	e3c080e7          	jalr	-452(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    800063b0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800063b4:	01000513          	li	a0,16
    800063b8:	ffffc097          	auipc	ra,0xffffc
    800063bc:	c74080e7          	jalr	-908(ra) # 8000202c <_Znwm>
    800063c0:	00050913          	mv	s2,a0
    800063c4:	00100593          	li	a1,1
    800063c8:	ffffc097          	auipc	ra,0xffffc
    800063cc:	e1c080e7          	jalr	-484(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    800063d0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800063d4:	01000513          	li	a0,16
    800063d8:	ffffc097          	auipc	ra,0xffffc
    800063dc:	c54080e7          	jalr	-940(ra) # 8000202c <_Znwm>
    800063e0:	00050913          	mv	s2,a0
    800063e4:	00100593          	li	a1,1
    800063e8:	ffffc097          	auipc	ra,0xffffc
    800063ec:	dfc080e7          	jalr	-516(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    800063f0:	0324b823          	sd	s2,48(s1)
}
    800063f4:	02813083          	ld	ra,40(sp)
    800063f8:	02013403          	ld	s0,32(sp)
    800063fc:	01813483          	ld	s1,24(sp)
    80006400:	01013903          	ld	s2,16(sp)
    80006404:	00813983          	ld	s3,8(sp)
    80006408:	03010113          	addi	sp,sp,48
    8000640c:	00008067          	ret
    80006410:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006414:	00098513          	mv	a0,s3
    80006418:	ffffc097          	auipc	ra,0xffffc
    8000641c:	c3c080e7          	jalr	-964(ra) # 80002054 <_ZdlPv>
    80006420:	00048513          	mv	a0,s1
    80006424:	00008097          	auipc	ra,0x8
    80006428:	bc4080e7          	jalr	-1084(ra) # 8000dfe8 <_Unwind_Resume>
    8000642c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006430:	00098513          	mv	a0,s3
    80006434:	ffffc097          	auipc	ra,0xffffc
    80006438:	c20080e7          	jalr	-992(ra) # 80002054 <_ZdlPv>
    8000643c:	00048513          	mv	a0,s1
    80006440:	00008097          	auipc	ra,0x8
    80006444:	ba8080e7          	jalr	-1112(ra) # 8000dfe8 <_Unwind_Resume>
    80006448:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000644c:	00090513          	mv	a0,s2
    80006450:	ffffc097          	auipc	ra,0xffffc
    80006454:	c04080e7          	jalr	-1020(ra) # 80002054 <_ZdlPv>
    80006458:	00048513          	mv	a0,s1
    8000645c:	00008097          	auipc	ra,0x8
    80006460:	b8c080e7          	jalr	-1140(ra) # 8000dfe8 <_Unwind_Resume>
    80006464:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006468:	00090513          	mv	a0,s2
    8000646c:	ffffc097          	auipc	ra,0xffffc
    80006470:	be8080e7          	jalr	-1048(ra) # 80002054 <_ZdlPv>
    80006474:	00048513          	mv	a0,s1
    80006478:	00008097          	auipc	ra,0x8
    8000647c:	b70080e7          	jalr	-1168(ra) # 8000dfe8 <_Unwind_Resume>

0000000080006480 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006480:	fe010113          	addi	sp,sp,-32
    80006484:	00113c23          	sd	ra,24(sp)
    80006488:	00813823          	sd	s0,16(sp)
    8000648c:	00913423          	sd	s1,8(sp)
    80006490:	01213023          	sd	s2,0(sp)
    80006494:	02010413          	addi	s0,sp,32
    80006498:	00050493          	mv	s1,a0
    8000649c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800064a0:	01853503          	ld	a0,24(a0)
    800064a4:	ffffc097          	auipc	ra,0xffffc
    800064a8:	d7c080e7          	jalr	-644(ra) # 80002220 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800064ac:	0304b503          	ld	a0,48(s1)
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	d70080e7          	jalr	-656(ra) # 80002220 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800064b8:	0084b783          	ld	a5,8(s1)
    800064bc:	0144a703          	lw	a4,20(s1)
    800064c0:	00271713          	slli	a4,a4,0x2
    800064c4:	00e787b3          	add	a5,a5,a4
    800064c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800064cc:	0144a783          	lw	a5,20(s1)
    800064d0:	0017879b          	addiw	a5,a5,1
    800064d4:	0004a703          	lw	a4,0(s1)
    800064d8:	02e7e7bb          	remw	a5,a5,a4
    800064dc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800064e0:	0304b503          	ld	a0,48(s1)
    800064e4:	ffffc097          	auipc	ra,0xffffc
    800064e8:	d74080e7          	jalr	-652(ra) # 80002258 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800064ec:	0204b503          	ld	a0,32(s1)
    800064f0:	ffffc097          	auipc	ra,0xffffc
    800064f4:	d68080e7          	jalr	-664(ra) # 80002258 <_ZN9Semaphore6signalEv>

}
    800064f8:	01813083          	ld	ra,24(sp)
    800064fc:	01013403          	ld	s0,16(sp)
    80006500:	00813483          	ld	s1,8(sp)
    80006504:	00013903          	ld	s2,0(sp)
    80006508:	02010113          	addi	sp,sp,32
    8000650c:	00008067          	ret

0000000080006510 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006510:	fe010113          	addi	sp,sp,-32
    80006514:	00113c23          	sd	ra,24(sp)
    80006518:	00813823          	sd	s0,16(sp)
    8000651c:	00913423          	sd	s1,8(sp)
    80006520:	01213023          	sd	s2,0(sp)
    80006524:	02010413          	addi	s0,sp,32
    80006528:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000652c:	02053503          	ld	a0,32(a0)
    80006530:	ffffc097          	auipc	ra,0xffffc
    80006534:	cf0080e7          	jalr	-784(ra) # 80002220 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006538:	0284b503          	ld	a0,40(s1)
    8000653c:	ffffc097          	auipc	ra,0xffffc
    80006540:	ce4080e7          	jalr	-796(ra) # 80002220 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006544:	0084b703          	ld	a4,8(s1)
    80006548:	0104a783          	lw	a5,16(s1)
    8000654c:	00279693          	slli	a3,a5,0x2
    80006550:	00d70733          	add	a4,a4,a3
    80006554:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006558:	0017879b          	addiw	a5,a5,1
    8000655c:	0004a703          	lw	a4,0(s1)
    80006560:	02e7e7bb          	remw	a5,a5,a4
    80006564:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006568:	0284b503          	ld	a0,40(s1)
    8000656c:	ffffc097          	auipc	ra,0xffffc
    80006570:	cec080e7          	jalr	-788(ra) # 80002258 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006574:	0184b503          	ld	a0,24(s1)
    80006578:	ffffc097          	auipc	ra,0xffffc
    8000657c:	ce0080e7          	jalr	-800(ra) # 80002258 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006580:	00090513          	mv	a0,s2
    80006584:	01813083          	ld	ra,24(sp)
    80006588:	01013403          	ld	s0,16(sp)
    8000658c:	00813483          	ld	s1,8(sp)
    80006590:	00013903          	ld	s2,0(sp)
    80006594:	02010113          	addi	sp,sp,32
    80006598:	00008067          	ret

000000008000659c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000659c:	fe010113          	addi	sp,sp,-32
    800065a0:	00113c23          	sd	ra,24(sp)
    800065a4:	00813823          	sd	s0,16(sp)
    800065a8:	00913423          	sd	s1,8(sp)
    800065ac:	01213023          	sd	s2,0(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800065b8:	02853503          	ld	a0,40(a0)
    800065bc:	ffffc097          	auipc	ra,0xffffc
    800065c0:	c64080e7          	jalr	-924(ra) # 80002220 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800065c4:	0304b503          	ld	a0,48(s1)
    800065c8:	ffffc097          	auipc	ra,0xffffc
    800065cc:	c58080e7          	jalr	-936(ra) # 80002220 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800065d0:	0144a783          	lw	a5,20(s1)
    800065d4:	0104a903          	lw	s2,16(s1)
    800065d8:	0327ce63          	blt	a5,s2,80006614 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800065dc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800065e0:	0304b503          	ld	a0,48(s1)
    800065e4:	ffffc097          	auipc	ra,0xffffc
    800065e8:	c74080e7          	jalr	-908(ra) # 80002258 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800065ec:	0284b503          	ld	a0,40(s1)
    800065f0:	ffffc097          	auipc	ra,0xffffc
    800065f4:	c68080e7          	jalr	-920(ra) # 80002258 <_ZN9Semaphore6signalEv>

    return ret;
}
    800065f8:	00090513          	mv	a0,s2
    800065fc:	01813083          	ld	ra,24(sp)
    80006600:	01013403          	ld	s0,16(sp)
    80006604:	00813483          	ld	s1,8(sp)
    80006608:	00013903          	ld	s2,0(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret
        ret = cap - head + tail;
    80006614:	0004a703          	lw	a4,0(s1)
    80006618:	4127093b          	subw	s2,a4,s2
    8000661c:	00f9093b          	addw	s2,s2,a5
    80006620:	fc1ff06f          	j	800065e0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006624 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006624:	fe010113          	addi	sp,sp,-32
    80006628:	00113c23          	sd	ra,24(sp)
    8000662c:	00813823          	sd	s0,16(sp)
    80006630:	00913423          	sd	s1,8(sp)
    80006634:	02010413          	addi	s0,sp,32
    80006638:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000663c:	00a00513          	li	a0,10
    80006640:	ffffc097          	auipc	ra,0xffffc
    80006644:	d58080e7          	jalr	-680(ra) # 80002398 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006648:	00004517          	auipc	a0,0x4
    8000664c:	cc850513          	addi	a0,a0,-824 # 8000a310 <CONSOLE_STATUS+0x300>
    80006650:	00000097          	auipc	ra,0x0
    80006654:	a0c080e7          	jalr	-1524(ra) # 8000605c <_Z11printStringPKc>
    while (getCnt()) {
    80006658:	00048513          	mv	a0,s1
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	f40080e7          	jalr	-192(ra) # 8000659c <_ZN9BufferCPP6getCntEv>
    80006664:	02050c63          	beqz	a0,8000669c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006668:	0084b783          	ld	a5,8(s1)
    8000666c:	0104a703          	lw	a4,16(s1)
    80006670:	00271713          	slli	a4,a4,0x2
    80006674:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006678:	0007c503          	lbu	a0,0(a5)
    8000667c:	ffffc097          	auipc	ra,0xffffc
    80006680:	d1c080e7          	jalr	-740(ra) # 80002398 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006684:	0104a783          	lw	a5,16(s1)
    80006688:	0017879b          	addiw	a5,a5,1
    8000668c:	0004a703          	lw	a4,0(s1)
    80006690:	02e7e7bb          	remw	a5,a5,a4
    80006694:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006698:	fc1ff06f          	j	80006658 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000669c:	02100513          	li	a0,33
    800066a0:	ffffc097          	auipc	ra,0xffffc
    800066a4:	cf8080e7          	jalr	-776(ra) # 80002398 <_ZN7Console4putcEc>
    Console::putc('\n');
    800066a8:	00a00513          	li	a0,10
    800066ac:	ffffc097          	auipc	ra,0xffffc
    800066b0:	cec080e7          	jalr	-788(ra) # 80002398 <_ZN7Console4putcEc>
    mem_free(buffer);
    800066b4:	0084b503          	ld	a0,8(s1)
    800066b8:	ffffb097          	auipc	ra,0xffffb
    800066bc:	bf4080e7          	jalr	-1036(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800066c0:	0204b503          	ld	a0,32(s1)
    800066c4:	00050863          	beqz	a0,800066d4 <_ZN9BufferCPPD1Ev+0xb0>
    800066c8:	00053783          	ld	a5,0(a0)
    800066cc:	0087b783          	ld	a5,8(a5)
    800066d0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800066d4:	0184b503          	ld	a0,24(s1)
    800066d8:	00050863          	beqz	a0,800066e8 <_ZN9BufferCPPD1Ev+0xc4>
    800066dc:	00053783          	ld	a5,0(a0)
    800066e0:	0087b783          	ld	a5,8(a5)
    800066e4:	000780e7          	jalr	a5
    delete mutexTail;
    800066e8:	0304b503          	ld	a0,48(s1)
    800066ec:	00050863          	beqz	a0,800066fc <_ZN9BufferCPPD1Ev+0xd8>
    800066f0:	00053783          	ld	a5,0(a0)
    800066f4:	0087b783          	ld	a5,8(a5)
    800066f8:	000780e7          	jalr	a5
    delete mutexHead;
    800066fc:	0284b503          	ld	a0,40(s1)
    80006700:	00050863          	beqz	a0,80006710 <_ZN9BufferCPPD1Ev+0xec>
    80006704:	00053783          	ld	a5,0(a0)
    80006708:	0087b783          	ld	a5,8(a5)
    8000670c:	000780e7          	jalr	a5
}
    80006710:	01813083          	ld	ra,24(sp)
    80006714:	01013403          	ld	s0,16(sp)
    80006718:	00813483          	ld	s1,8(sp)
    8000671c:	02010113          	addi	sp,sp,32
    80006720:	00008067          	ret

0000000080006724 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006724:	fe010113          	addi	sp,sp,-32
    80006728:	00113c23          	sd	ra,24(sp)
    8000672c:	00813823          	sd	s0,16(sp)
    80006730:	00913423          	sd	s1,8(sp)
    80006734:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006738:	00004517          	auipc	a0,0x4
    8000673c:	c0050513          	addi	a0,a0,-1024 # 8000a338 <CONSOLE_STATUS+0x328>
    80006740:	00000097          	auipc	ra,0x0
    80006744:	91c080e7          	jalr	-1764(ra) # 8000605c <_Z11printStringPKc>
    int test = getc() - '0';
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	ed8080e7          	jalr	-296(ra) # 80001620 <_Z4getcv>
    80006750:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	ecc080e7          	jalr	-308(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000675c:	00700793          	li	a5,7
    80006760:	1097e263          	bltu	a5,s1,80006864 <_Z8userMainv+0x140>
    80006764:	00249493          	slli	s1,s1,0x2
    80006768:	00004717          	auipc	a4,0x4
    8000676c:	e2870713          	addi	a4,a4,-472 # 8000a590 <CONSOLE_STATUS+0x580>
    80006770:	00e484b3          	add	s1,s1,a4
    80006774:	0004a783          	lw	a5,0(s1)
    80006778:	00e787b3          	add	a5,a5,a4
    8000677c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006780:	fffff097          	auipc	ra,0xfffff
    80006784:	f54080e7          	jalr	-172(ra) # 800056d4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006788:	00004517          	auipc	a0,0x4
    8000678c:	bd050513          	addi	a0,a0,-1072 # 8000a358 <CONSOLE_STATUS+0x348>
    80006790:	00000097          	auipc	ra,0x0
    80006794:	8cc080e7          	jalr	-1844(ra) # 8000605c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006798:	01813083          	ld	ra,24(sp)
    8000679c:	01013403          	ld	s0,16(sp)
    800067a0:	00813483          	ld	s1,8(sp)
    800067a4:	02010113          	addi	sp,sp,32
    800067a8:	00008067          	ret
            Threads_CPP_API_test();
    800067ac:	ffffe097          	auipc	ra,0xffffe
    800067b0:	ae8080e7          	jalr	-1304(ra) # 80004294 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800067b4:	00004517          	auipc	a0,0x4
    800067b8:	be450513          	addi	a0,a0,-1052 # 8000a398 <CONSOLE_STATUS+0x388>
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	8a0080e7          	jalr	-1888(ra) # 8000605c <_Z11printStringPKc>
            break;
    800067c4:	fd5ff06f          	j	80006798 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800067c8:	ffffd097          	auipc	ra,0xffffd
    800067cc:	320080e7          	jalr	800(ra) # 80003ae8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800067d0:	00004517          	auipc	a0,0x4
    800067d4:	c0850513          	addi	a0,a0,-1016 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800067d8:	00000097          	auipc	ra,0x0
    800067dc:	884080e7          	jalr	-1916(ra) # 8000605c <_Z11printStringPKc>
            break;
    800067e0:	fb9ff06f          	j	80006798 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800067e4:	fffff097          	auipc	ra,0xfffff
    800067e8:	234080e7          	jalr	564(ra) # 80005a18 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800067ec:	00004517          	auipc	a0,0x4
    800067f0:	c3c50513          	addi	a0,a0,-964 # 8000a428 <CONSOLE_STATUS+0x418>
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	868080e7          	jalr	-1944(ra) # 8000605c <_Z11printStringPKc>
            break;
    800067fc:	f9dff06f          	j	80006798 <_Z8userMainv+0x74>
            testSleeping();
    80006800:	00000097          	auipc	ra,0x0
    80006804:	11c080e7          	jalr	284(ra) # 8000691c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006808:	00004517          	auipc	a0,0x4
    8000680c:	c7850513          	addi	a0,a0,-904 # 8000a480 <CONSOLE_STATUS+0x470>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	84c080e7          	jalr	-1972(ra) # 8000605c <_Z11printStringPKc>
            break;
    80006818:	f81ff06f          	j	80006798 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000681c:	ffffe097          	auipc	ra,0xffffe
    80006820:	f38080e7          	jalr	-200(ra) # 80004754 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006824:	00004517          	auipc	a0,0x4
    80006828:	c8c50513          	addi	a0,a0,-884 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    8000682c:	00000097          	auipc	ra,0x0
    80006830:	830080e7          	jalr	-2000(ra) # 8000605c <_Z11printStringPKc>
            break;
    80006834:	f65ff06f          	j	80006798 <_Z8userMainv+0x74>
            System_Mode_test();
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	658080e7          	jalr	1624(ra) # 80006e90 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006840:	00004517          	auipc	a0,0x4
    80006844:	cb050513          	addi	a0,a0,-848 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	814080e7          	jalr	-2028(ra) # 8000605c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006850:	00004517          	auipc	a0,0x4
    80006854:	cc050513          	addi	a0,a0,-832 # 8000a510 <CONSOLE_STATUS+0x500>
    80006858:	00000097          	auipc	ra,0x0
    8000685c:	804080e7          	jalr	-2044(ra) # 8000605c <_Z11printStringPKc>
            break;
    80006860:	f39ff06f          	j	80006798 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006864:	00004517          	auipc	a0,0x4
    80006868:	d0450513          	addi	a0,a0,-764 # 8000a568 <CONSOLE_STATUS+0x558>
    8000686c:	fffff097          	auipc	ra,0xfffff
    80006870:	7f0080e7          	jalr	2032(ra) # 8000605c <_Z11printStringPKc>
    80006874:	f25ff06f          	j	80006798 <_Z8userMainv+0x74>

0000000080006878 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006878:	fe010113          	addi	sp,sp,-32
    8000687c:	00113c23          	sd	ra,24(sp)
    80006880:	00813823          	sd	s0,16(sp)
    80006884:	00913423          	sd	s1,8(sp)
    80006888:	01213023          	sd	s2,0(sp)
    8000688c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006890:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006894:	00600493          	li	s1,6
    while (--i > 0) {
    80006898:	fff4849b          	addiw	s1,s1,-1
    8000689c:	04905463          	blez	s1,800068e4 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    800068a0:	00004517          	auipc	a0,0x4
    800068a4:	d1050513          	addi	a0,a0,-752 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	7b4080e7          	jalr	1972(ra) # 8000605c <_Z11printStringPKc>
        printInt(sleep_time);
    800068b0:	00000613          	li	a2,0
    800068b4:	00a00593          	li	a1,10
    800068b8:	0009051b          	sext.w	a0,s2
    800068bc:	00000097          	auipc	ra,0x0
    800068c0:	950080e7          	jalr	-1712(ra) # 8000620c <_Z8printIntiii>
        printString(" !\n");
    800068c4:	00004517          	auipc	a0,0x4
    800068c8:	cf450513          	addi	a0,a0,-780 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	790080e7          	jalr	1936(ra) # 8000605c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800068d4:	00090513          	mv	a0,s2
    800068d8:	ffffb097          	auipc	ra,0xffffb
    800068dc:	cfc080e7          	jalr	-772(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    800068e0:	fb9ff06f          	j	80006898 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800068e4:	00a00793          	li	a5,10
    800068e8:	02f95933          	divu	s2,s2,a5
    800068ec:	fff90913          	addi	s2,s2,-1
    800068f0:	00006797          	auipc	a5,0x6
    800068f4:	62878793          	addi	a5,a5,1576 # 8000cf18 <_ZL8finished>
    800068f8:	01278933          	add	s2,a5,s2
    800068fc:	00100793          	li	a5,1
    80006900:	00f90023          	sb	a5,0(s2)
}
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	01013403          	ld	s0,16(sp)
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	00013903          	ld	s2,0(sp)
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret

000000008000691c <_Z12testSleepingv>:

void testSleeping() {
    8000691c:	fc010113          	addi	sp,sp,-64
    80006920:	02113c23          	sd	ra,56(sp)
    80006924:	02813823          	sd	s0,48(sp)
    80006928:	02913423          	sd	s1,40(sp)
    8000692c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006930:	00a00793          	li	a5,10
    80006934:	fcf43823          	sd	a5,-48(s0)
    80006938:	01400793          	li	a5,20
    8000693c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006940:	00000493          	li	s1,0
    80006944:	02c0006f          	j	80006970 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006948:	00349793          	slli	a5,s1,0x3
    8000694c:	fd040613          	addi	a2,s0,-48
    80006950:	00f60633          	add	a2,a2,a5
    80006954:	00000597          	auipc	a1,0x0
    80006958:	f2458593          	addi	a1,a1,-220 # 80006878 <_ZL9sleepyRunPv>
    8000695c:	fc040513          	addi	a0,s0,-64
    80006960:	00f50533          	add	a0,a0,a5
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	994080e7          	jalr	-1644(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000696c:	0014849b          	addiw	s1,s1,1
    80006970:	00100793          	li	a5,1
    80006974:	fc97dae3          	bge	a5,s1,80006948 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006978:	00006797          	auipc	a5,0x6
    8000697c:	5a07c783          	lbu	a5,1440(a5) # 8000cf18 <_ZL8finished>
    80006980:	fe078ce3          	beqz	a5,80006978 <_Z12testSleepingv+0x5c>
    80006984:	00006797          	auipc	a5,0x6
    80006988:	5957c783          	lbu	a5,1429(a5) # 8000cf19 <_ZL8finished+0x1>
    8000698c:	fe0786e3          	beqz	a5,80006978 <_Z12testSleepingv+0x5c>
}
    80006990:	03813083          	ld	ra,56(sp)
    80006994:	03013403          	ld	s0,48(sp)
    80006998:	02813483          	ld	s1,40(sp)
    8000699c:	04010113          	addi	sp,sp,64
    800069a0:	00008067          	ret

00000000800069a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800069a4:	fe010113          	addi	sp,sp,-32
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	01213023          	sd	s2,0(sp)
    800069b8:	02010413          	addi	s0,sp,32
    800069bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800069c0:	00100793          	li	a5,1
    800069c4:	02a7f863          	bgeu	a5,a0,800069f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800069c8:	00a00793          	li	a5,10
    800069cc:	02f577b3          	remu	a5,a0,a5
    800069d0:	02078e63          	beqz	a5,80006a0c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800069d4:	fff48513          	addi	a0,s1,-1
    800069d8:	00000097          	auipc	ra,0x0
    800069dc:	fcc080e7          	jalr	-52(ra) # 800069a4 <_ZL9fibonaccim>
    800069e0:	00050913          	mv	s2,a0
    800069e4:	ffe48513          	addi	a0,s1,-2
    800069e8:	00000097          	auipc	ra,0x0
    800069ec:	fbc080e7          	jalr	-68(ra) # 800069a4 <_ZL9fibonaccim>
    800069f0:	00a90533          	add	a0,s2,a0
}
    800069f4:	01813083          	ld	ra,24(sp)
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	00813483          	ld	s1,8(sp)
    80006a00:	00013903          	ld	s2,0(sp)
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	9c0080e7          	jalr	-1600(ra) # 800013cc <_Z15thread_dispatchv>
    80006a14:	fc1ff06f          	j	800069d4 <_ZL9fibonaccim+0x30>

0000000080006a18 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006a18:	fe010113          	addi	sp,sp,-32
    80006a1c:	00113c23          	sd	ra,24(sp)
    80006a20:	00813823          	sd	s0,16(sp)
    80006a24:	00913423          	sd	s1,8(sp)
    80006a28:	01213023          	sd	s2,0(sp)
    80006a2c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006a30:	00a00493          	li	s1,10
    80006a34:	0400006f          	j	80006a74 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a38:	00004517          	auipc	a0,0x4
    80006a3c:	84050513          	addi	a0,a0,-1984 # 8000a278 <CONSOLE_STATUS+0x268>
    80006a40:	fffff097          	auipc	ra,0xfffff
    80006a44:	61c080e7          	jalr	1564(ra) # 8000605c <_Z11printStringPKc>
    80006a48:	00000613          	li	a2,0
    80006a4c:	00a00593          	li	a1,10
    80006a50:	00048513          	mv	a0,s1
    80006a54:	fffff097          	auipc	ra,0xfffff
    80006a58:	7b8080e7          	jalr	1976(ra) # 8000620c <_Z8printIntiii>
    80006a5c:	00004517          	auipc	a0,0x4
    80006a60:	a1c50513          	addi	a0,a0,-1508 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a64:	fffff097          	auipc	ra,0xfffff
    80006a68:	5f8080e7          	jalr	1528(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006a6c:	0014849b          	addiw	s1,s1,1
    80006a70:	0ff4f493          	andi	s1,s1,255
    80006a74:	00c00793          	li	a5,12
    80006a78:	fc97f0e3          	bgeu	a5,s1,80006a38 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006a7c:	00004517          	auipc	a0,0x4
    80006a80:	80450513          	addi	a0,a0,-2044 # 8000a280 <CONSOLE_STATUS+0x270>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	5d8080e7          	jalr	1496(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006a8c:	00500313          	li	t1,5
    thread_dispatch();
    80006a90:	ffffb097          	auipc	ra,0xffffb
    80006a94:	93c080e7          	jalr	-1732(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006a98:	01000513          	li	a0,16
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	f08080e7          	jalr	-248(ra) # 800069a4 <_ZL9fibonaccim>
    80006aa4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006aa8:	00003517          	auipc	a0,0x3
    80006aac:	7e850513          	addi	a0,a0,2024 # 8000a290 <CONSOLE_STATUS+0x280>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	5ac080e7          	jalr	1452(ra) # 8000605c <_Z11printStringPKc>
    80006ab8:	00000613          	li	a2,0
    80006abc:	00a00593          	li	a1,10
    80006ac0:	0009051b          	sext.w	a0,s2
    80006ac4:	fffff097          	auipc	ra,0xfffff
    80006ac8:	748080e7          	jalr	1864(ra) # 8000620c <_Z8printIntiii>
    80006acc:	00004517          	auipc	a0,0x4
    80006ad0:	9ac50513          	addi	a0,a0,-1620 # 8000a478 <CONSOLE_STATUS+0x468>
    80006ad4:	fffff097          	auipc	ra,0xfffff
    80006ad8:	588080e7          	jalr	1416(ra) # 8000605c <_Z11printStringPKc>
    80006adc:	0400006f          	j	80006b1c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006ae0:	00003517          	auipc	a0,0x3
    80006ae4:	79850513          	addi	a0,a0,1944 # 8000a278 <CONSOLE_STATUS+0x268>
    80006ae8:	fffff097          	auipc	ra,0xfffff
    80006aec:	574080e7          	jalr	1396(ra) # 8000605c <_Z11printStringPKc>
    80006af0:	00000613          	li	a2,0
    80006af4:	00a00593          	li	a1,10
    80006af8:	00048513          	mv	a0,s1
    80006afc:	fffff097          	auipc	ra,0xfffff
    80006b00:	710080e7          	jalr	1808(ra) # 8000620c <_Z8printIntiii>
    80006b04:	00004517          	auipc	a0,0x4
    80006b08:	97450513          	addi	a0,a0,-1676 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b0c:	fffff097          	auipc	ra,0xfffff
    80006b10:	550080e7          	jalr	1360(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006b14:	0014849b          	addiw	s1,s1,1
    80006b18:	0ff4f493          	andi	s1,s1,255
    80006b1c:	00f00793          	li	a5,15
    80006b20:	fc97f0e3          	bgeu	a5,s1,80006ae0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006b24:	00003517          	auipc	a0,0x3
    80006b28:	77c50513          	addi	a0,a0,1916 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006b2c:	fffff097          	auipc	ra,0xfffff
    80006b30:	530080e7          	jalr	1328(ra) # 8000605c <_Z11printStringPKc>
    finishedD = true;
    80006b34:	00100793          	li	a5,1
    80006b38:	00006717          	auipc	a4,0x6
    80006b3c:	3ef70123          	sb	a5,994(a4) # 8000cf1a <_ZL9finishedD>
    thread_dispatch();
    80006b40:	ffffb097          	auipc	ra,0xffffb
    80006b44:	88c080e7          	jalr	-1908(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006b48:	01813083          	ld	ra,24(sp)
    80006b4c:	01013403          	ld	s0,16(sp)
    80006b50:	00813483          	ld	s1,8(sp)
    80006b54:	00013903          	ld	s2,0(sp)
    80006b58:	02010113          	addi	sp,sp,32
    80006b5c:	00008067          	ret

0000000080006b60 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006b60:	fe010113          	addi	sp,sp,-32
    80006b64:	00113c23          	sd	ra,24(sp)
    80006b68:	00813823          	sd	s0,16(sp)
    80006b6c:	00913423          	sd	s1,8(sp)
    80006b70:	01213023          	sd	s2,0(sp)
    80006b74:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006b78:	00000493          	li	s1,0
    80006b7c:	0400006f          	j	80006bbc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006b80:	00003517          	auipc	a0,0x3
    80006b84:	6c850513          	addi	a0,a0,1736 # 8000a248 <CONSOLE_STATUS+0x238>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	4d4080e7          	jalr	1236(ra) # 8000605c <_Z11printStringPKc>
    80006b90:	00000613          	li	a2,0
    80006b94:	00a00593          	li	a1,10
    80006b98:	00048513          	mv	a0,s1
    80006b9c:	fffff097          	auipc	ra,0xfffff
    80006ba0:	670080e7          	jalr	1648(ra) # 8000620c <_Z8printIntiii>
    80006ba4:	00004517          	auipc	a0,0x4
    80006ba8:	8d450513          	addi	a0,a0,-1836 # 8000a478 <CONSOLE_STATUS+0x468>
    80006bac:	fffff097          	auipc	ra,0xfffff
    80006bb0:	4b0080e7          	jalr	1200(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006bb4:	0014849b          	addiw	s1,s1,1
    80006bb8:	0ff4f493          	andi	s1,s1,255
    80006bbc:	00200793          	li	a5,2
    80006bc0:	fc97f0e3          	bgeu	a5,s1,80006b80 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006bc4:	00003517          	auipc	a0,0x3
    80006bc8:	68c50513          	addi	a0,a0,1676 # 8000a250 <CONSOLE_STATUS+0x240>
    80006bcc:	fffff097          	auipc	ra,0xfffff
    80006bd0:	490080e7          	jalr	1168(ra) # 8000605c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006bd4:	00700313          	li	t1,7
    thread_dispatch();
    80006bd8:	ffffa097          	auipc	ra,0xffffa
    80006bdc:	7f4080e7          	jalr	2036(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006be0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	67c50513          	addi	a0,a0,1660 # 8000a260 <CONSOLE_STATUS+0x250>
    80006bec:	fffff097          	auipc	ra,0xfffff
    80006bf0:	470080e7          	jalr	1136(ra) # 8000605c <_Z11printStringPKc>
    80006bf4:	00000613          	li	a2,0
    80006bf8:	00a00593          	li	a1,10
    80006bfc:	0009051b          	sext.w	a0,s2
    80006c00:	fffff097          	auipc	ra,0xfffff
    80006c04:	60c080e7          	jalr	1548(ra) # 8000620c <_Z8printIntiii>
    80006c08:	00004517          	auipc	a0,0x4
    80006c0c:	87050513          	addi	a0,a0,-1936 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c10:	fffff097          	auipc	ra,0xfffff
    80006c14:	44c080e7          	jalr	1100(ra) # 8000605c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006c18:	00c00513          	li	a0,12
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	d88080e7          	jalr	-632(ra) # 800069a4 <_ZL9fibonaccim>
    80006c24:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006c28:	00003517          	auipc	a0,0x3
    80006c2c:	64050513          	addi	a0,a0,1600 # 8000a268 <CONSOLE_STATUS+0x258>
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	42c080e7          	jalr	1068(ra) # 8000605c <_Z11printStringPKc>
    80006c38:	00000613          	li	a2,0
    80006c3c:	00a00593          	li	a1,10
    80006c40:	0009051b          	sext.w	a0,s2
    80006c44:	fffff097          	auipc	ra,0xfffff
    80006c48:	5c8080e7          	jalr	1480(ra) # 8000620c <_Z8printIntiii>
    80006c4c:	00004517          	auipc	a0,0x4
    80006c50:	82c50513          	addi	a0,a0,-2004 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c54:	fffff097          	auipc	ra,0xfffff
    80006c58:	408080e7          	jalr	1032(ra) # 8000605c <_Z11printStringPKc>
    80006c5c:	0400006f          	j	80006c9c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006c60:	00003517          	auipc	a0,0x3
    80006c64:	5e850513          	addi	a0,a0,1512 # 8000a248 <CONSOLE_STATUS+0x238>
    80006c68:	fffff097          	auipc	ra,0xfffff
    80006c6c:	3f4080e7          	jalr	1012(ra) # 8000605c <_Z11printStringPKc>
    80006c70:	00000613          	li	a2,0
    80006c74:	00a00593          	li	a1,10
    80006c78:	00048513          	mv	a0,s1
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	590080e7          	jalr	1424(ra) # 8000620c <_Z8printIntiii>
    80006c84:	00003517          	auipc	a0,0x3
    80006c88:	7f450513          	addi	a0,a0,2036 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c8c:	fffff097          	auipc	ra,0xfffff
    80006c90:	3d0080e7          	jalr	976(ra) # 8000605c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006c94:	0014849b          	addiw	s1,s1,1
    80006c98:	0ff4f493          	andi	s1,s1,255
    80006c9c:	00500793          	li	a5,5
    80006ca0:	fc97f0e3          	bgeu	a5,s1,80006c60 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006ca4:	00003517          	auipc	a0,0x3
    80006ca8:	57c50513          	addi	a0,a0,1404 # 8000a220 <CONSOLE_STATUS+0x210>
    80006cac:	fffff097          	auipc	ra,0xfffff
    80006cb0:	3b0080e7          	jalr	944(ra) # 8000605c <_Z11printStringPKc>
    finishedC = true;
    80006cb4:	00100793          	li	a5,1
    80006cb8:	00006717          	auipc	a4,0x6
    80006cbc:	26f701a3          	sb	a5,611(a4) # 8000cf1b <_ZL9finishedC>
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

0000000080006ce0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006ce0:	fe010113          	addi	sp,sp,-32
    80006ce4:	00113c23          	sd	ra,24(sp)
    80006ce8:	00813823          	sd	s0,16(sp)
    80006cec:	00913423          	sd	s1,8(sp)
    80006cf0:	01213023          	sd	s2,0(sp)
    80006cf4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006cf8:	00000913          	li	s2,0
    80006cfc:	0400006f          	j	80006d3c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006d00:	ffffa097          	auipc	ra,0xffffa
    80006d04:	6cc080e7          	jalr	1740(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d08:	00148493          	addi	s1,s1,1
    80006d0c:	000027b7          	lui	a5,0x2
    80006d10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d14:	0097ee63          	bltu	a5,s1,80006d30 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d18:	00000713          	li	a4,0
    80006d1c:	000077b7          	lui	a5,0x7
    80006d20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d24:	fce7eee3          	bltu	a5,a4,80006d00 <_ZL11workerBodyBPv+0x20>
    80006d28:	00170713          	addi	a4,a4,1
    80006d2c:	ff1ff06f          	j	80006d1c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006d30:	00a00793          	li	a5,10
    80006d34:	04f90663          	beq	s2,a5,80006d80 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006d38:	00190913          	addi	s2,s2,1
    80006d3c:	00f00793          	li	a5,15
    80006d40:	0527e463          	bltu	a5,s2,80006d88 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006d44:	00003517          	auipc	a0,0x3
    80006d48:	4ec50513          	addi	a0,a0,1260 # 8000a230 <CONSOLE_STATUS+0x220>
    80006d4c:	fffff097          	auipc	ra,0xfffff
    80006d50:	310080e7          	jalr	784(ra) # 8000605c <_Z11printStringPKc>
    80006d54:	00000613          	li	a2,0
    80006d58:	00a00593          	li	a1,10
    80006d5c:	0009051b          	sext.w	a0,s2
    80006d60:	fffff097          	auipc	ra,0xfffff
    80006d64:	4ac080e7          	jalr	1196(ra) # 8000620c <_Z8printIntiii>
    80006d68:	00003517          	auipc	a0,0x3
    80006d6c:	71050513          	addi	a0,a0,1808 # 8000a478 <CONSOLE_STATUS+0x468>
    80006d70:	fffff097          	auipc	ra,0xfffff
    80006d74:	2ec080e7          	jalr	748(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006d78:	00000493          	li	s1,0
    80006d7c:	f91ff06f          	j	80006d0c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006d80:	14102ff3          	csrr	t6,sepc
    80006d84:	fb5ff06f          	j	80006d38 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006d88:	00003517          	auipc	a0,0x3
    80006d8c:	4b050513          	addi	a0,a0,1200 # 8000a238 <CONSOLE_STATUS+0x228>
    80006d90:	fffff097          	auipc	ra,0xfffff
    80006d94:	2cc080e7          	jalr	716(ra) # 8000605c <_Z11printStringPKc>
    finishedB = true;
    80006d98:	00100793          	li	a5,1
    80006d9c:	00006717          	auipc	a4,0x6
    80006da0:	18f70023          	sb	a5,384(a4) # 8000cf1c <_ZL9finishedB>
    thread_dispatch();
    80006da4:	ffffa097          	auipc	ra,0xffffa
    80006da8:	628080e7          	jalr	1576(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006dac:	01813083          	ld	ra,24(sp)
    80006db0:	01013403          	ld	s0,16(sp)
    80006db4:	00813483          	ld	s1,8(sp)
    80006db8:	00013903          	ld	s2,0(sp)
    80006dbc:	02010113          	addi	sp,sp,32
    80006dc0:	00008067          	ret

0000000080006dc4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006dc4:	fe010113          	addi	sp,sp,-32
    80006dc8:	00113c23          	sd	ra,24(sp)
    80006dcc:	00813823          	sd	s0,16(sp)
    80006dd0:	00913423          	sd	s1,8(sp)
    80006dd4:	01213023          	sd	s2,0(sp)
    80006dd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006ddc:	00000913          	li	s2,0
    80006de0:	0380006f          	j	80006e18 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006de4:	ffffa097          	auipc	ra,0xffffa
    80006de8:	5e8080e7          	jalr	1512(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006dec:	00148493          	addi	s1,s1,1
    80006df0:	000027b7          	lui	a5,0x2
    80006df4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006df8:	0097ee63          	bltu	a5,s1,80006e14 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006dfc:	00000713          	li	a4,0
    80006e00:	000077b7          	lui	a5,0x7
    80006e04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e08:	fce7eee3          	bltu	a5,a4,80006de4 <_ZL11workerBodyAPv+0x20>
    80006e0c:	00170713          	addi	a4,a4,1
    80006e10:	ff1ff06f          	j	80006e00 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006e14:	00190913          	addi	s2,s2,1
    80006e18:	00900793          	li	a5,9
    80006e1c:	0527e063          	bltu	a5,s2,80006e5c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006e20:	00003517          	auipc	a0,0x3
    80006e24:	3f850513          	addi	a0,a0,1016 # 8000a218 <CONSOLE_STATUS+0x208>
    80006e28:	fffff097          	auipc	ra,0xfffff
    80006e2c:	234080e7          	jalr	564(ra) # 8000605c <_Z11printStringPKc>
    80006e30:	00000613          	li	a2,0
    80006e34:	00a00593          	li	a1,10
    80006e38:	0009051b          	sext.w	a0,s2
    80006e3c:	fffff097          	auipc	ra,0xfffff
    80006e40:	3d0080e7          	jalr	976(ra) # 8000620c <_Z8printIntiii>
    80006e44:	00003517          	auipc	a0,0x3
    80006e48:	63450513          	addi	a0,a0,1588 # 8000a478 <CONSOLE_STATUS+0x468>
    80006e4c:	fffff097          	auipc	ra,0xfffff
    80006e50:	210080e7          	jalr	528(ra) # 8000605c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006e54:	00000493          	li	s1,0
    80006e58:	f99ff06f          	j	80006df0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006e5c:	00003517          	auipc	a0,0x3
    80006e60:	3c450513          	addi	a0,a0,964 # 8000a220 <CONSOLE_STATUS+0x210>
    80006e64:	fffff097          	auipc	ra,0xfffff
    80006e68:	1f8080e7          	jalr	504(ra) # 8000605c <_Z11printStringPKc>
    finishedA = true;
    80006e6c:	00100793          	li	a5,1
    80006e70:	00006717          	auipc	a4,0x6
    80006e74:	0af706a3          	sb	a5,173(a4) # 8000cf1d <_ZL9finishedA>
}
    80006e78:	01813083          	ld	ra,24(sp)
    80006e7c:	01013403          	ld	s0,16(sp)
    80006e80:	00813483          	ld	s1,8(sp)
    80006e84:	00013903          	ld	s2,0(sp)
    80006e88:	02010113          	addi	sp,sp,32
    80006e8c:	00008067          	ret

0000000080006e90 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006e90:	fd010113          	addi	sp,sp,-48
    80006e94:	02113423          	sd	ra,40(sp)
    80006e98:	02813023          	sd	s0,32(sp)
    80006e9c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ea0:	00000613          	li	a2,0
    80006ea4:	00000597          	auipc	a1,0x0
    80006ea8:	f2058593          	addi	a1,a1,-224 # 80006dc4 <_ZL11workerBodyAPv>
    80006eac:	fd040513          	addi	a0,s0,-48
    80006eb0:	ffffa097          	auipc	ra,0xffffa
    80006eb4:	448080e7          	jalr	1096(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006eb8:	00003517          	auipc	a0,0x3
    80006ebc:	3f850513          	addi	a0,a0,1016 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006ec0:	fffff097          	auipc	ra,0xfffff
    80006ec4:	19c080e7          	jalr	412(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ec8:	00000613          	li	a2,0
    80006ecc:	00000597          	auipc	a1,0x0
    80006ed0:	e1458593          	addi	a1,a1,-492 # 80006ce0 <_ZL11workerBodyBPv>
    80006ed4:	fd840513          	addi	a0,s0,-40
    80006ed8:	ffffa097          	auipc	ra,0xffffa
    80006edc:	420080e7          	jalr	1056(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006ee0:	00003517          	auipc	a0,0x3
    80006ee4:	3e850513          	addi	a0,a0,1000 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006ee8:	fffff097          	auipc	ra,0xfffff
    80006eec:	174080e7          	jalr	372(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006ef0:	00000613          	li	a2,0
    80006ef4:	00000597          	auipc	a1,0x0
    80006ef8:	c6c58593          	addi	a1,a1,-916 # 80006b60 <_ZL11workerBodyCPv>
    80006efc:	fe040513          	addi	a0,s0,-32
    80006f00:	ffffa097          	auipc	ra,0xffffa
    80006f04:	3f8080e7          	jalr	1016(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006f08:	00003517          	auipc	a0,0x3
    80006f0c:	3d850513          	addi	a0,a0,984 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006f10:	fffff097          	auipc	ra,0xfffff
    80006f14:	14c080e7          	jalr	332(ra) # 8000605c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006f18:	00000613          	li	a2,0
    80006f1c:	00000597          	auipc	a1,0x0
    80006f20:	afc58593          	addi	a1,a1,-1284 # 80006a18 <_ZL11workerBodyDPv>
    80006f24:	fe840513          	addi	a0,s0,-24
    80006f28:	ffffa097          	auipc	ra,0xffffa
    80006f2c:	3d0080e7          	jalr	976(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006f30:	00003517          	auipc	a0,0x3
    80006f34:	3c850513          	addi	a0,a0,968 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006f38:	fffff097          	auipc	ra,0xfffff
    80006f3c:	124080e7          	jalr	292(ra) # 8000605c <_Z11printStringPKc>
    80006f40:	00c0006f          	j	80006f4c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006f44:	ffffa097          	auipc	ra,0xffffa
    80006f48:	488080e7          	jalr	1160(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006f4c:	00006797          	auipc	a5,0x6
    80006f50:	fd17c783          	lbu	a5,-47(a5) # 8000cf1d <_ZL9finishedA>
    80006f54:	fe0788e3          	beqz	a5,80006f44 <_Z16System_Mode_testv+0xb4>
    80006f58:	00006797          	auipc	a5,0x6
    80006f5c:	fc47c783          	lbu	a5,-60(a5) # 8000cf1c <_ZL9finishedB>
    80006f60:	fe0782e3          	beqz	a5,80006f44 <_Z16System_Mode_testv+0xb4>
    80006f64:	00006797          	auipc	a5,0x6
    80006f68:	fb77c783          	lbu	a5,-73(a5) # 8000cf1b <_ZL9finishedC>
    80006f6c:	fc078ce3          	beqz	a5,80006f44 <_Z16System_Mode_testv+0xb4>
    80006f70:	00006797          	auipc	a5,0x6
    80006f74:	faa7c783          	lbu	a5,-86(a5) # 8000cf1a <_ZL9finishedD>
    80006f78:	fc0786e3          	beqz	a5,80006f44 <_Z16System_Mode_testv+0xb4>
    }

}
    80006f7c:	02813083          	ld	ra,40(sp)
    80006f80:	02013403          	ld	s0,32(sp)
    80006f84:	03010113          	addi	sp,sp,48
    80006f88:	00008067          	ret

0000000080006f8c <start>:
    80006f8c:	ff010113          	addi	sp,sp,-16
    80006f90:	00813423          	sd	s0,8(sp)
    80006f94:	01010413          	addi	s0,sp,16
    80006f98:	300027f3          	csrr	a5,mstatus
    80006f9c:	ffffe737          	lui	a4,0xffffe
    80006fa0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff067f>
    80006fa4:	00e7f7b3          	and	a5,a5,a4
    80006fa8:	00001737          	lui	a4,0x1
    80006fac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006fb0:	00e7e7b3          	or	a5,a5,a4
    80006fb4:	30079073          	csrw	mstatus,a5
    80006fb8:	00000797          	auipc	a5,0x0
    80006fbc:	16078793          	addi	a5,a5,352 # 80007118 <system_main>
    80006fc0:	34179073          	csrw	mepc,a5
    80006fc4:	00000793          	li	a5,0
    80006fc8:	18079073          	csrw	satp,a5
    80006fcc:	000107b7          	lui	a5,0x10
    80006fd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006fd4:	30279073          	csrw	medeleg,a5
    80006fd8:	30379073          	csrw	mideleg,a5
    80006fdc:	104027f3          	csrr	a5,sie
    80006fe0:	2227e793          	ori	a5,a5,546
    80006fe4:	10479073          	csrw	sie,a5
    80006fe8:	fff00793          	li	a5,-1
    80006fec:	00a7d793          	srli	a5,a5,0xa
    80006ff0:	3b079073          	csrw	pmpaddr0,a5
    80006ff4:	00f00793          	li	a5,15
    80006ff8:	3a079073          	csrw	pmpcfg0,a5
    80006ffc:	f14027f3          	csrr	a5,mhartid
    80007000:	0200c737          	lui	a4,0x200c
    80007004:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007008:	0007869b          	sext.w	a3,a5
    8000700c:	00269713          	slli	a4,a3,0x2
    80007010:	000f4637          	lui	a2,0xf4
    80007014:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007018:	00d70733          	add	a4,a4,a3
    8000701c:	0037979b          	slliw	a5,a5,0x3
    80007020:	020046b7          	lui	a3,0x2004
    80007024:	00d787b3          	add	a5,a5,a3
    80007028:	00c585b3          	add	a1,a1,a2
    8000702c:	00371693          	slli	a3,a4,0x3
    80007030:	00006717          	auipc	a4,0x6
    80007034:	ef070713          	addi	a4,a4,-272 # 8000cf20 <timer_scratch>
    80007038:	00b7b023          	sd	a1,0(a5)
    8000703c:	00d70733          	add	a4,a4,a3
    80007040:	00f73c23          	sd	a5,24(a4)
    80007044:	02c73023          	sd	a2,32(a4)
    80007048:	34071073          	csrw	mscratch,a4
    8000704c:	00000797          	auipc	a5,0x0
    80007050:	6e478793          	addi	a5,a5,1764 # 80007730 <timervec>
    80007054:	30579073          	csrw	mtvec,a5
    80007058:	300027f3          	csrr	a5,mstatus
    8000705c:	0087e793          	ori	a5,a5,8
    80007060:	30079073          	csrw	mstatus,a5
    80007064:	304027f3          	csrr	a5,mie
    80007068:	0807e793          	ori	a5,a5,128
    8000706c:	30479073          	csrw	mie,a5
    80007070:	f14027f3          	csrr	a5,mhartid
    80007074:	0007879b          	sext.w	a5,a5
    80007078:	00078213          	mv	tp,a5
    8000707c:	30200073          	mret
    80007080:	00813403          	ld	s0,8(sp)
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00008067          	ret

000000008000708c <timerinit>:
    8000708c:	ff010113          	addi	sp,sp,-16
    80007090:	00813423          	sd	s0,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	f14027f3          	csrr	a5,mhartid
    8000709c:	0200c737          	lui	a4,0x200c
    800070a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070a4:	0007869b          	sext.w	a3,a5
    800070a8:	00269713          	slli	a4,a3,0x2
    800070ac:	000f4637          	lui	a2,0xf4
    800070b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070b4:	00d70733          	add	a4,a4,a3
    800070b8:	0037979b          	slliw	a5,a5,0x3
    800070bc:	020046b7          	lui	a3,0x2004
    800070c0:	00d787b3          	add	a5,a5,a3
    800070c4:	00c585b3          	add	a1,a1,a2
    800070c8:	00371693          	slli	a3,a4,0x3
    800070cc:	00006717          	auipc	a4,0x6
    800070d0:	e5470713          	addi	a4,a4,-428 # 8000cf20 <timer_scratch>
    800070d4:	00b7b023          	sd	a1,0(a5)
    800070d8:	00d70733          	add	a4,a4,a3
    800070dc:	00f73c23          	sd	a5,24(a4)
    800070e0:	02c73023          	sd	a2,32(a4)
    800070e4:	34071073          	csrw	mscratch,a4
    800070e8:	00000797          	auipc	a5,0x0
    800070ec:	64878793          	addi	a5,a5,1608 # 80007730 <timervec>
    800070f0:	30579073          	csrw	mtvec,a5
    800070f4:	300027f3          	csrr	a5,mstatus
    800070f8:	0087e793          	ori	a5,a5,8
    800070fc:	30079073          	csrw	mstatus,a5
    80007100:	304027f3          	csrr	a5,mie
    80007104:	0807e793          	ori	a5,a5,128
    80007108:	30479073          	csrw	mie,a5
    8000710c:	00813403          	ld	s0,8(sp)
    80007110:	01010113          	addi	sp,sp,16
    80007114:	00008067          	ret

0000000080007118 <system_main>:
    80007118:	fe010113          	addi	sp,sp,-32
    8000711c:	00813823          	sd	s0,16(sp)
    80007120:	00913423          	sd	s1,8(sp)
    80007124:	00113c23          	sd	ra,24(sp)
    80007128:	02010413          	addi	s0,sp,32
    8000712c:	00000097          	auipc	ra,0x0
    80007130:	0c4080e7          	jalr	196(ra) # 800071f0 <cpuid>
    80007134:	00006497          	auipc	s1,0x6
    80007138:	d0c48493          	addi	s1,s1,-756 # 8000ce40 <started>
    8000713c:	02050263          	beqz	a0,80007160 <system_main+0x48>
    80007140:	0004a783          	lw	a5,0(s1)
    80007144:	0007879b          	sext.w	a5,a5
    80007148:	fe078ce3          	beqz	a5,80007140 <system_main+0x28>
    8000714c:	0ff0000f          	fence
    80007150:	00003517          	auipc	a0,0x3
    80007154:	4a050513          	addi	a0,a0,1184 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	a74080e7          	jalr	-1420(ra) # 80007bcc <panic>
    80007160:	00001097          	auipc	ra,0x1
    80007164:	9c8080e7          	jalr	-1592(ra) # 80007b28 <consoleinit>
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	154080e7          	jalr	340(ra) # 800082bc <printfinit>
    80007170:	00003517          	auipc	a0,0x3
    80007174:	30850513          	addi	a0,a0,776 # 8000a478 <CONSOLE_STATUS+0x468>
    80007178:	00001097          	auipc	ra,0x1
    8000717c:	ab0080e7          	jalr	-1360(ra) # 80007c28 <__printf>
    80007180:	00003517          	auipc	a0,0x3
    80007184:	44050513          	addi	a0,a0,1088 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007188:	00001097          	auipc	ra,0x1
    8000718c:	aa0080e7          	jalr	-1376(ra) # 80007c28 <__printf>
    80007190:	00003517          	auipc	a0,0x3
    80007194:	2e850513          	addi	a0,a0,744 # 8000a478 <CONSOLE_STATUS+0x468>
    80007198:	00001097          	auipc	ra,0x1
    8000719c:	a90080e7          	jalr	-1392(ra) # 80007c28 <__printf>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	4a8080e7          	jalr	1192(ra) # 80008648 <kinit>
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	148080e7          	jalr	328(ra) # 800072f0 <trapinit>
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	16c080e7          	jalr	364(ra) # 8000731c <trapinithart>
    800071b8:	00000097          	auipc	ra,0x0
    800071bc:	5b8080e7          	jalr	1464(ra) # 80007770 <plicinit>
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	5d8080e7          	jalr	1496(ra) # 80007798 <plicinithart>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	078080e7          	jalr	120(ra) # 80007240 <userinit>
    800071d0:	0ff0000f          	fence
    800071d4:	00100793          	li	a5,1
    800071d8:	00003517          	auipc	a0,0x3
    800071dc:	40050513          	addi	a0,a0,1024 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800071e0:	00f4a023          	sw	a5,0(s1)
    800071e4:	00001097          	auipc	ra,0x1
    800071e8:	a44080e7          	jalr	-1468(ra) # 80007c28 <__printf>
    800071ec:	0000006f          	j	800071ec <system_main+0xd4>

00000000800071f0 <cpuid>:
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00813423          	sd	s0,8(sp)
    800071f8:	01010413          	addi	s0,sp,16
    800071fc:	00020513          	mv	a0,tp
    80007200:	00813403          	ld	s0,8(sp)
    80007204:	0005051b          	sext.w	a0,a0
    80007208:	01010113          	addi	sp,sp,16
    8000720c:	00008067          	ret

0000000080007210 <mycpu>:
    80007210:	ff010113          	addi	sp,sp,-16
    80007214:	00813423          	sd	s0,8(sp)
    80007218:	01010413          	addi	s0,sp,16
    8000721c:	00020793          	mv	a5,tp
    80007220:	00813403          	ld	s0,8(sp)
    80007224:	0007879b          	sext.w	a5,a5
    80007228:	00779793          	slli	a5,a5,0x7
    8000722c:	00007517          	auipc	a0,0x7
    80007230:	d2450513          	addi	a0,a0,-732 # 8000df50 <cpus>
    80007234:	00f50533          	add	a0,a0,a5
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00008067          	ret

0000000080007240 <userinit>:
    80007240:	ff010113          	addi	sp,sp,-16
    80007244:	00813423          	sd	s0,8(sp)
    80007248:	01010413          	addi	s0,sp,16
    8000724c:	00813403          	ld	s0,8(sp)
    80007250:	01010113          	addi	sp,sp,16
    80007254:	ffffb317          	auipc	t1,0xffffb
    80007258:	aa830067          	jr	-1368(t1) # 80001cfc <main>

000000008000725c <either_copyout>:
    8000725c:	ff010113          	addi	sp,sp,-16
    80007260:	00813023          	sd	s0,0(sp)
    80007264:	00113423          	sd	ra,8(sp)
    80007268:	01010413          	addi	s0,sp,16
    8000726c:	02051663          	bnez	a0,80007298 <either_copyout+0x3c>
    80007270:	00058513          	mv	a0,a1
    80007274:	00060593          	mv	a1,a2
    80007278:	0006861b          	sext.w	a2,a3
    8000727c:	00002097          	auipc	ra,0x2
    80007280:	c58080e7          	jalr	-936(ra) # 80008ed4 <__memmove>
    80007284:	00813083          	ld	ra,8(sp)
    80007288:	00013403          	ld	s0,0(sp)
    8000728c:	00000513          	li	a0,0
    80007290:	01010113          	addi	sp,sp,16
    80007294:	00008067          	ret
    80007298:	00003517          	auipc	a0,0x3
    8000729c:	38050513          	addi	a0,a0,896 # 8000a618 <CONSOLE_STATUS+0x608>
    800072a0:	00001097          	auipc	ra,0x1
    800072a4:	92c080e7          	jalr	-1748(ra) # 80007bcc <panic>

00000000800072a8 <either_copyin>:
    800072a8:	ff010113          	addi	sp,sp,-16
    800072ac:	00813023          	sd	s0,0(sp)
    800072b0:	00113423          	sd	ra,8(sp)
    800072b4:	01010413          	addi	s0,sp,16
    800072b8:	02059463          	bnez	a1,800072e0 <either_copyin+0x38>
    800072bc:	00060593          	mv	a1,a2
    800072c0:	0006861b          	sext.w	a2,a3
    800072c4:	00002097          	auipc	ra,0x2
    800072c8:	c10080e7          	jalr	-1008(ra) # 80008ed4 <__memmove>
    800072cc:	00813083          	ld	ra,8(sp)
    800072d0:	00013403          	ld	s0,0(sp)
    800072d4:	00000513          	li	a0,0
    800072d8:	01010113          	addi	sp,sp,16
    800072dc:	00008067          	ret
    800072e0:	00003517          	auipc	a0,0x3
    800072e4:	36050513          	addi	a0,a0,864 # 8000a640 <CONSOLE_STATUS+0x630>
    800072e8:	00001097          	auipc	ra,0x1
    800072ec:	8e4080e7          	jalr	-1820(ra) # 80007bcc <panic>

00000000800072f0 <trapinit>:
    800072f0:	ff010113          	addi	sp,sp,-16
    800072f4:	00813423          	sd	s0,8(sp)
    800072f8:	01010413          	addi	s0,sp,16
    800072fc:	00813403          	ld	s0,8(sp)
    80007300:	00003597          	auipc	a1,0x3
    80007304:	36858593          	addi	a1,a1,872 # 8000a668 <CONSOLE_STATUS+0x658>
    80007308:	00007517          	auipc	a0,0x7
    8000730c:	cc850513          	addi	a0,a0,-824 # 8000dfd0 <tickslock>
    80007310:	01010113          	addi	sp,sp,16
    80007314:	00001317          	auipc	t1,0x1
    80007318:	5c430067          	jr	1476(t1) # 800088d8 <initlock>

000000008000731c <trapinithart>:
    8000731c:	ff010113          	addi	sp,sp,-16
    80007320:	00813423          	sd	s0,8(sp)
    80007324:	01010413          	addi	s0,sp,16
    80007328:	00000797          	auipc	a5,0x0
    8000732c:	2f878793          	addi	a5,a5,760 # 80007620 <kernelvec>
    80007330:	10579073          	csrw	stvec,a5
    80007334:	00813403          	ld	s0,8(sp)
    80007338:	01010113          	addi	sp,sp,16
    8000733c:	00008067          	ret

0000000080007340 <usertrap>:
    80007340:	ff010113          	addi	sp,sp,-16
    80007344:	00813423          	sd	s0,8(sp)
    80007348:	01010413          	addi	s0,sp,16
    8000734c:	00813403          	ld	s0,8(sp)
    80007350:	01010113          	addi	sp,sp,16
    80007354:	00008067          	ret

0000000080007358 <usertrapret>:
    80007358:	ff010113          	addi	sp,sp,-16
    8000735c:	00813423          	sd	s0,8(sp)
    80007360:	01010413          	addi	s0,sp,16
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret

0000000080007370 <kerneltrap>:
    80007370:	fe010113          	addi	sp,sp,-32
    80007374:	00813823          	sd	s0,16(sp)
    80007378:	00113c23          	sd	ra,24(sp)
    8000737c:	00913423          	sd	s1,8(sp)
    80007380:	02010413          	addi	s0,sp,32
    80007384:	142025f3          	csrr	a1,scause
    80007388:	100027f3          	csrr	a5,sstatus
    8000738c:	0027f793          	andi	a5,a5,2
    80007390:	10079c63          	bnez	a5,800074a8 <kerneltrap+0x138>
    80007394:	142027f3          	csrr	a5,scause
    80007398:	0207ce63          	bltz	a5,800073d4 <kerneltrap+0x64>
    8000739c:	00003517          	auipc	a0,0x3
    800073a0:	31450513          	addi	a0,a0,788 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    800073a4:	00001097          	auipc	ra,0x1
    800073a8:	884080e7          	jalr	-1916(ra) # 80007c28 <__printf>
    800073ac:	141025f3          	csrr	a1,sepc
    800073b0:	14302673          	csrr	a2,stval
    800073b4:	00003517          	auipc	a0,0x3
    800073b8:	30c50513          	addi	a0,a0,780 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    800073bc:	00001097          	auipc	ra,0x1
    800073c0:	86c080e7          	jalr	-1940(ra) # 80007c28 <__printf>
    800073c4:	00003517          	auipc	a0,0x3
    800073c8:	31450513          	addi	a0,a0,788 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	800080e7          	jalr	-2048(ra) # 80007bcc <panic>
    800073d4:	0ff7f713          	andi	a4,a5,255
    800073d8:	00900693          	li	a3,9
    800073dc:	04d70063          	beq	a4,a3,8000741c <kerneltrap+0xac>
    800073e0:	fff00713          	li	a4,-1
    800073e4:	03f71713          	slli	a4,a4,0x3f
    800073e8:	00170713          	addi	a4,a4,1
    800073ec:	fae798e3          	bne	a5,a4,8000739c <kerneltrap+0x2c>
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	e00080e7          	jalr	-512(ra) # 800071f0 <cpuid>
    800073f8:	06050663          	beqz	a0,80007464 <kerneltrap+0xf4>
    800073fc:	144027f3          	csrr	a5,sip
    80007400:	ffd7f793          	andi	a5,a5,-3
    80007404:	14479073          	csrw	sip,a5
    80007408:	01813083          	ld	ra,24(sp)
    8000740c:	01013403          	ld	s0,16(sp)
    80007410:	00813483          	ld	s1,8(sp)
    80007414:	02010113          	addi	sp,sp,32
    80007418:	00008067          	ret
    8000741c:	00000097          	auipc	ra,0x0
    80007420:	3c8080e7          	jalr	968(ra) # 800077e4 <plic_claim>
    80007424:	00a00793          	li	a5,10
    80007428:	00050493          	mv	s1,a0
    8000742c:	06f50863          	beq	a0,a5,8000749c <kerneltrap+0x12c>
    80007430:	fc050ce3          	beqz	a0,80007408 <kerneltrap+0x98>
    80007434:	00050593          	mv	a1,a0
    80007438:	00003517          	auipc	a0,0x3
    8000743c:	25850513          	addi	a0,a0,600 # 8000a690 <CONSOLE_STATUS+0x680>
    80007440:	00000097          	auipc	ra,0x0
    80007444:	7e8080e7          	jalr	2024(ra) # 80007c28 <__printf>
    80007448:	01013403          	ld	s0,16(sp)
    8000744c:	01813083          	ld	ra,24(sp)
    80007450:	00048513          	mv	a0,s1
    80007454:	00813483          	ld	s1,8(sp)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00000317          	auipc	t1,0x0
    80007460:	3c030067          	jr	960(t1) # 8000781c <plic_complete>
    80007464:	00007517          	auipc	a0,0x7
    80007468:	b6c50513          	addi	a0,a0,-1172 # 8000dfd0 <tickslock>
    8000746c:	00001097          	auipc	ra,0x1
    80007470:	490080e7          	jalr	1168(ra) # 800088fc <acquire>
    80007474:	00006717          	auipc	a4,0x6
    80007478:	9d070713          	addi	a4,a4,-1584 # 8000ce44 <ticks>
    8000747c:	00072783          	lw	a5,0(a4)
    80007480:	00007517          	auipc	a0,0x7
    80007484:	b5050513          	addi	a0,a0,-1200 # 8000dfd0 <tickslock>
    80007488:	0017879b          	addiw	a5,a5,1
    8000748c:	00f72023          	sw	a5,0(a4)
    80007490:	00001097          	auipc	ra,0x1
    80007494:	538080e7          	jalr	1336(ra) # 800089c8 <release>
    80007498:	f65ff06f          	j	800073fc <kerneltrap+0x8c>
    8000749c:	00001097          	auipc	ra,0x1
    800074a0:	094080e7          	jalr	148(ra) # 80008530 <uartintr>
    800074a4:	fa5ff06f          	j	80007448 <kerneltrap+0xd8>
    800074a8:	00003517          	auipc	a0,0x3
    800074ac:	1c850513          	addi	a0,a0,456 # 8000a670 <CONSOLE_STATUS+0x660>
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	71c080e7          	jalr	1820(ra) # 80007bcc <panic>

00000000800074b8 <clockintr>:
    800074b8:	fe010113          	addi	sp,sp,-32
    800074bc:	00813823          	sd	s0,16(sp)
    800074c0:	00913423          	sd	s1,8(sp)
    800074c4:	00113c23          	sd	ra,24(sp)
    800074c8:	02010413          	addi	s0,sp,32
    800074cc:	00007497          	auipc	s1,0x7
    800074d0:	b0448493          	addi	s1,s1,-1276 # 8000dfd0 <tickslock>
    800074d4:	00048513          	mv	a0,s1
    800074d8:	00001097          	auipc	ra,0x1
    800074dc:	424080e7          	jalr	1060(ra) # 800088fc <acquire>
    800074e0:	00006717          	auipc	a4,0x6
    800074e4:	96470713          	addi	a4,a4,-1692 # 8000ce44 <ticks>
    800074e8:	00072783          	lw	a5,0(a4)
    800074ec:	01013403          	ld	s0,16(sp)
    800074f0:	01813083          	ld	ra,24(sp)
    800074f4:	00048513          	mv	a0,s1
    800074f8:	0017879b          	addiw	a5,a5,1
    800074fc:	00813483          	ld	s1,8(sp)
    80007500:	00f72023          	sw	a5,0(a4)
    80007504:	02010113          	addi	sp,sp,32
    80007508:	00001317          	auipc	t1,0x1
    8000750c:	4c030067          	jr	1216(t1) # 800089c8 <release>

0000000080007510 <devintr>:
    80007510:	142027f3          	csrr	a5,scause
    80007514:	00000513          	li	a0,0
    80007518:	0007c463          	bltz	a5,80007520 <devintr+0x10>
    8000751c:	00008067          	ret
    80007520:	fe010113          	addi	sp,sp,-32
    80007524:	00813823          	sd	s0,16(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	00913423          	sd	s1,8(sp)
    80007530:	02010413          	addi	s0,sp,32
    80007534:	0ff7f713          	andi	a4,a5,255
    80007538:	00900693          	li	a3,9
    8000753c:	04d70c63          	beq	a4,a3,80007594 <devintr+0x84>
    80007540:	fff00713          	li	a4,-1
    80007544:	03f71713          	slli	a4,a4,0x3f
    80007548:	00170713          	addi	a4,a4,1
    8000754c:	00e78c63          	beq	a5,a4,80007564 <devintr+0x54>
    80007550:	01813083          	ld	ra,24(sp)
    80007554:	01013403          	ld	s0,16(sp)
    80007558:	00813483          	ld	s1,8(sp)
    8000755c:	02010113          	addi	sp,sp,32
    80007560:	00008067          	ret
    80007564:	00000097          	auipc	ra,0x0
    80007568:	c8c080e7          	jalr	-884(ra) # 800071f0 <cpuid>
    8000756c:	06050663          	beqz	a0,800075d8 <devintr+0xc8>
    80007570:	144027f3          	csrr	a5,sip
    80007574:	ffd7f793          	andi	a5,a5,-3
    80007578:	14479073          	csrw	sip,a5
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	00200513          	li	a0,2
    8000758c:	02010113          	addi	sp,sp,32
    80007590:	00008067          	ret
    80007594:	00000097          	auipc	ra,0x0
    80007598:	250080e7          	jalr	592(ra) # 800077e4 <plic_claim>
    8000759c:	00a00793          	li	a5,10
    800075a0:	00050493          	mv	s1,a0
    800075a4:	06f50663          	beq	a0,a5,80007610 <devintr+0x100>
    800075a8:	00100513          	li	a0,1
    800075ac:	fa0482e3          	beqz	s1,80007550 <devintr+0x40>
    800075b0:	00048593          	mv	a1,s1
    800075b4:	00003517          	auipc	a0,0x3
    800075b8:	0dc50513          	addi	a0,a0,220 # 8000a690 <CONSOLE_STATUS+0x680>
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	66c080e7          	jalr	1644(ra) # 80007c28 <__printf>
    800075c4:	00048513          	mv	a0,s1
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	254080e7          	jalr	596(ra) # 8000781c <plic_complete>
    800075d0:	00100513          	li	a0,1
    800075d4:	f7dff06f          	j	80007550 <devintr+0x40>
    800075d8:	00007517          	auipc	a0,0x7
    800075dc:	9f850513          	addi	a0,a0,-1544 # 8000dfd0 <tickslock>
    800075e0:	00001097          	auipc	ra,0x1
    800075e4:	31c080e7          	jalr	796(ra) # 800088fc <acquire>
    800075e8:	00006717          	auipc	a4,0x6
    800075ec:	85c70713          	addi	a4,a4,-1956 # 8000ce44 <ticks>
    800075f0:	00072783          	lw	a5,0(a4)
    800075f4:	00007517          	auipc	a0,0x7
    800075f8:	9dc50513          	addi	a0,a0,-1572 # 8000dfd0 <tickslock>
    800075fc:	0017879b          	addiw	a5,a5,1
    80007600:	00f72023          	sw	a5,0(a4)
    80007604:	00001097          	auipc	ra,0x1
    80007608:	3c4080e7          	jalr	964(ra) # 800089c8 <release>
    8000760c:	f65ff06f          	j	80007570 <devintr+0x60>
    80007610:	00001097          	auipc	ra,0x1
    80007614:	f20080e7          	jalr	-224(ra) # 80008530 <uartintr>
    80007618:	fadff06f          	j	800075c4 <devintr+0xb4>
    8000761c:	0000                	unimp
	...

0000000080007620 <kernelvec>:
    80007620:	f0010113          	addi	sp,sp,-256
    80007624:	00113023          	sd	ra,0(sp)
    80007628:	00213423          	sd	sp,8(sp)
    8000762c:	00313823          	sd	gp,16(sp)
    80007630:	00413c23          	sd	tp,24(sp)
    80007634:	02513023          	sd	t0,32(sp)
    80007638:	02613423          	sd	t1,40(sp)
    8000763c:	02713823          	sd	t2,48(sp)
    80007640:	02813c23          	sd	s0,56(sp)
    80007644:	04913023          	sd	s1,64(sp)
    80007648:	04a13423          	sd	a0,72(sp)
    8000764c:	04b13823          	sd	a1,80(sp)
    80007650:	04c13c23          	sd	a2,88(sp)
    80007654:	06d13023          	sd	a3,96(sp)
    80007658:	06e13423          	sd	a4,104(sp)
    8000765c:	06f13823          	sd	a5,112(sp)
    80007660:	07013c23          	sd	a6,120(sp)
    80007664:	09113023          	sd	a7,128(sp)
    80007668:	09213423          	sd	s2,136(sp)
    8000766c:	09313823          	sd	s3,144(sp)
    80007670:	09413c23          	sd	s4,152(sp)
    80007674:	0b513023          	sd	s5,160(sp)
    80007678:	0b613423          	sd	s6,168(sp)
    8000767c:	0b713823          	sd	s7,176(sp)
    80007680:	0b813c23          	sd	s8,184(sp)
    80007684:	0d913023          	sd	s9,192(sp)
    80007688:	0da13423          	sd	s10,200(sp)
    8000768c:	0db13823          	sd	s11,208(sp)
    80007690:	0dc13c23          	sd	t3,216(sp)
    80007694:	0fd13023          	sd	t4,224(sp)
    80007698:	0fe13423          	sd	t5,232(sp)
    8000769c:	0ff13823          	sd	t6,240(sp)
    800076a0:	cd1ff0ef          	jal	ra,80007370 <kerneltrap>
    800076a4:	00013083          	ld	ra,0(sp)
    800076a8:	00813103          	ld	sp,8(sp)
    800076ac:	01013183          	ld	gp,16(sp)
    800076b0:	02013283          	ld	t0,32(sp)
    800076b4:	02813303          	ld	t1,40(sp)
    800076b8:	03013383          	ld	t2,48(sp)
    800076bc:	03813403          	ld	s0,56(sp)
    800076c0:	04013483          	ld	s1,64(sp)
    800076c4:	04813503          	ld	a0,72(sp)
    800076c8:	05013583          	ld	a1,80(sp)
    800076cc:	05813603          	ld	a2,88(sp)
    800076d0:	06013683          	ld	a3,96(sp)
    800076d4:	06813703          	ld	a4,104(sp)
    800076d8:	07013783          	ld	a5,112(sp)
    800076dc:	07813803          	ld	a6,120(sp)
    800076e0:	08013883          	ld	a7,128(sp)
    800076e4:	08813903          	ld	s2,136(sp)
    800076e8:	09013983          	ld	s3,144(sp)
    800076ec:	09813a03          	ld	s4,152(sp)
    800076f0:	0a013a83          	ld	s5,160(sp)
    800076f4:	0a813b03          	ld	s6,168(sp)
    800076f8:	0b013b83          	ld	s7,176(sp)
    800076fc:	0b813c03          	ld	s8,184(sp)
    80007700:	0c013c83          	ld	s9,192(sp)
    80007704:	0c813d03          	ld	s10,200(sp)
    80007708:	0d013d83          	ld	s11,208(sp)
    8000770c:	0d813e03          	ld	t3,216(sp)
    80007710:	0e013e83          	ld	t4,224(sp)
    80007714:	0e813f03          	ld	t5,232(sp)
    80007718:	0f013f83          	ld	t6,240(sp)
    8000771c:	10010113          	addi	sp,sp,256
    80007720:	10200073          	sret
    80007724:	00000013          	nop
    80007728:	00000013          	nop
    8000772c:	00000013          	nop

0000000080007730 <timervec>:
    80007730:	34051573          	csrrw	a0,mscratch,a0
    80007734:	00b53023          	sd	a1,0(a0)
    80007738:	00c53423          	sd	a2,8(a0)
    8000773c:	00d53823          	sd	a3,16(a0)
    80007740:	01853583          	ld	a1,24(a0)
    80007744:	02053603          	ld	a2,32(a0)
    80007748:	0005b683          	ld	a3,0(a1)
    8000774c:	00c686b3          	add	a3,a3,a2
    80007750:	00d5b023          	sd	a3,0(a1)
    80007754:	00200593          	li	a1,2
    80007758:	14459073          	csrw	sip,a1
    8000775c:	01053683          	ld	a3,16(a0)
    80007760:	00853603          	ld	a2,8(a0)
    80007764:	00053583          	ld	a1,0(a0)
    80007768:	34051573          	csrrw	a0,mscratch,a0
    8000776c:	30200073          	mret

0000000080007770 <plicinit>:
    80007770:	ff010113          	addi	sp,sp,-16
    80007774:	00813423          	sd	s0,8(sp)
    80007778:	01010413          	addi	s0,sp,16
    8000777c:	00813403          	ld	s0,8(sp)
    80007780:	0c0007b7          	lui	a5,0xc000
    80007784:	00100713          	li	a4,1
    80007788:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000778c:	00e7a223          	sw	a4,4(a5)
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret

0000000080007798 <plicinithart>:
    80007798:	ff010113          	addi	sp,sp,-16
    8000779c:	00813023          	sd	s0,0(sp)
    800077a0:	00113423          	sd	ra,8(sp)
    800077a4:	01010413          	addi	s0,sp,16
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	a48080e7          	jalr	-1464(ra) # 800071f0 <cpuid>
    800077b0:	0085171b          	slliw	a4,a0,0x8
    800077b4:	0c0027b7          	lui	a5,0xc002
    800077b8:	00e787b3          	add	a5,a5,a4
    800077bc:	40200713          	li	a4,1026
    800077c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800077c4:	00813083          	ld	ra,8(sp)
    800077c8:	00013403          	ld	s0,0(sp)
    800077cc:	00d5151b          	slliw	a0,a0,0xd
    800077d0:	0c2017b7          	lui	a5,0xc201
    800077d4:	00a78533          	add	a0,a5,a0
    800077d8:	00052023          	sw	zero,0(a0)
    800077dc:	01010113          	addi	sp,sp,16
    800077e0:	00008067          	ret

00000000800077e4 <plic_claim>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813023          	sd	s0,0(sp)
    800077ec:	00113423          	sd	ra,8(sp)
    800077f0:	01010413          	addi	s0,sp,16
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	9fc080e7          	jalr	-1540(ra) # 800071f0 <cpuid>
    800077fc:	00813083          	ld	ra,8(sp)
    80007800:	00013403          	ld	s0,0(sp)
    80007804:	00d5151b          	slliw	a0,a0,0xd
    80007808:	0c2017b7          	lui	a5,0xc201
    8000780c:	00a78533          	add	a0,a5,a0
    80007810:	00452503          	lw	a0,4(a0)
    80007814:	01010113          	addi	sp,sp,16
    80007818:	00008067          	ret

000000008000781c <plic_complete>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00813823          	sd	s0,16(sp)
    80007824:	00913423          	sd	s1,8(sp)
    80007828:	00113c23          	sd	ra,24(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00050493          	mv	s1,a0
    80007834:	00000097          	auipc	ra,0x0
    80007838:	9bc080e7          	jalr	-1604(ra) # 800071f0 <cpuid>
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	00d5179b          	slliw	a5,a0,0xd
    80007848:	0c201737          	lui	a4,0xc201
    8000784c:	00f707b3          	add	a5,a4,a5
    80007850:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007854:	00813483          	ld	s1,8(sp)
    80007858:	02010113          	addi	sp,sp,32
    8000785c:	00008067          	ret

0000000080007860 <consolewrite>:
    80007860:	fb010113          	addi	sp,sp,-80
    80007864:	04813023          	sd	s0,64(sp)
    80007868:	04113423          	sd	ra,72(sp)
    8000786c:	02913c23          	sd	s1,56(sp)
    80007870:	03213823          	sd	s2,48(sp)
    80007874:	03313423          	sd	s3,40(sp)
    80007878:	03413023          	sd	s4,32(sp)
    8000787c:	01513c23          	sd	s5,24(sp)
    80007880:	05010413          	addi	s0,sp,80
    80007884:	06c05c63          	blez	a2,800078fc <consolewrite+0x9c>
    80007888:	00060993          	mv	s3,a2
    8000788c:	00050a13          	mv	s4,a0
    80007890:	00058493          	mv	s1,a1
    80007894:	00000913          	li	s2,0
    80007898:	fff00a93          	li	s5,-1
    8000789c:	01c0006f          	j	800078b8 <consolewrite+0x58>
    800078a0:	fbf44503          	lbu	a0,-65(s0)
    800078a4:	0019091b          	addiw	s2,s2,1
    800078a8:	00148493          	addi	s1,s1,1
    800078ac:	00001097          	auipc	ra,0x1
    800078b0:	a9c080e7          	jalr	-1380(ra) # 80008348 <uartputc>
    800078b4:	03298063          	beq	s3,s2,800078d4 <consolewrite+0x74>
    800078b8:	00048613          	mv	a2,s1
    800078bc:	00100693          	li	a3,1
    800078c0:	000a0593          	mv	a1,s4
    800078c4:	fbf40513          	addi	a0,s0,-65
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	9e0080e7          	jalr	-1568(ra) # 800072a8 <either_copyin>
    800078d0:	fd5518e3          	bne	a0,s5,800078a0 <consolewrite+0x40>
    800078d4:	04813083          	ld	ra,72(sp)
    800078d8:	04013403          	ld	s0,64(sp)
    800078dc:	03813483          	ld	s1,56(sp)
    800078e0:	02813983          	ld	s3,40(sp)
    800078e4:	02013a03          	ld	s4,32(sp)
    800078e8:	01813a83          	ld	s5,24(sp)
    800078ec:	00090513          	mv	a0,s2
    800078f0:	03013903          	ld	s2,48(sp)
    800078f4:	05010113          	addi	sp,sp,80
    800078f8:	00008067          	ret
    800078fc:	00000913          	li	s2,0
    80007900:	fd5ff06f          	j	800078d4 <consolewrite+0x74>

0000000080007904 <consoleread>:
    80007904:	f9010113          	addi	sp,sp,-112
    80007908:	06813023          	sd	s0,96(sp)
    8000790c:	04913c23          	sd	s1,88(sp)
    80007910:	05213823          	sd	s2,80(sp)
    80007914:	05313423          	sd	s3,72(sp)
    80007918:	05413023          	sd	s4,64(sp)
    8000791c:	03513c23          	sd	s5,56(sp)
    80007920:	03613823          	sd	s6,48(sp)
    80007924:	03713423          	sd	s7,40(sp)
    80007928:	03813023          	sd	s8,32(sp)
    8000792c:	06113423          	sd	ra,104(sp)
    80007930:	01913c23          	sd	s9,24(sp)
    80007934:	07010413          	addi	s0,sp,112
    80007938:	00060b93          	mv	s7,a2
    8000793c:	00050913          	mv	s2,a0
    80007940:	00058c13          	mv	s8,a1
    80007944:	00060b1b          	sext.w	s6,a2
    80007948:	00006497          	auipc	s1,0x6
    8000794c:	6b048493          	addi	s1,s1,1712 # 8000dff8 <cons>
    80007950:	00400993          	li	s3,4
    80007954:	fff00a13          	li	s4,-1
    80007958:	00a00a93          	li	s5,10
    8000795c:	05705e63          	blez	s7,800079b8 <consoleread+0xb4>
    80007960:	09c4a703          	lw	a4,156(s1)
    80007964:	0984a783          	lw	a5,152(s1)
    80007968:	0007071b          	sext.w	a4,a4
    8000796c:	08e78463          	beq	a5,a4,800079f4 <consoleread+0xf0>
    80007970:	07f7f713          	andi	a4,a5,127
    80007974:	00e48733          	add	a4,s1,a4
    80007978:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000797c:	0017869b          	addiw	a3,a5,1
    80007980:	08d4ac23          	sw	a3,152(s1)
    80007984:	00070c9b          	sext.w	s9,a4
    80007988:	0b370663          	beq	a4,s3,80007a34 <consoleread+0x130>
    8000798c:	00100693          	li	a3,1
    80007990:	f9f40613          	addi	a2,s0,-97
    80007994:	000c0593          	mv	a1,s8
    80007998:	00090513          	mv	a0,s2
    8000799c:	f8e40fa3          	sb	a4,-97(s0)
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	8bc080e7          	jalr	-1860(ra) # 8000725c <either_copyout>
    800079a8:	01450863          	beq	a0,s4,800079b8 <consoleread+0xb4>
    800079ac:	001c0c13          	addi	s8,s8,1
    800079b0:	fffb8b9b          	addiw	s7,s7,-1
    800079b4:	fb5c94e3          	bne	s9,s5,8000795c <consoleread+0x58>
    800079b8:	000b851b          	sext.w	a0,s7
    800079bc:	06813083          	ld	ra,104(sp)
    800079c0:	06013403          	ld	s0,96(sp)
    800079c4:	05813483          	ld	s1,88(sp)
    800079c8:	05013903          	ld	s2,80(sp)
    800079cc:	04813983          	ld	s3,72(sp)
    800079d0:	04013a03          	ld	s4,64(sp)
    800079d4:	03813a83          	ld	s5,56(sp)
    800079d8:	02813b83          	ld	s7,40(sp)
    800079dc:	02013c03          	ld	s8,32(sp)
    800079e0:	01813c83          	ld	s9,24(sp)
    800079e4:	40ab053b          	subw	a0,s6,a0
    800079e8:	03013b03          	ld	s6,48(sp)
    800079ec:	07010113          	addi	sp,sp,112
    800079f0:	00008067          	ret
    800079f4:	00001097          	auipc	ra,0x1
    800079f8:	1d8080e7          	jalr	472(ra) # 80008bcc <push_on>
    800079fc:	0984a703          	lw	a4,152(s1)
    80007a00:	09c4a783          	lw	a5,156(s1)
    80007a04:	0007879b          	sext.w	a5,a5
    80007a08:	fef70ce3          	beq	a4,a5,80007a00 <consoleread+0xfc>
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	234080e7          	jalr	564(ra) # 80008c40 <pop_on>
    80007a14:	0984a783          	lw	a5,152(s1)
    80007a18:	07f7f713          	andi	a4,a5,127
    80007a1c:	00e48733          	add	a4,s1,a4
    80007a20:	01874703          	lbu	a4,24(a4)
    80007a24:	0017869b          	addiw	a3,a5,1
    80007a28:	08d4ac23          	sw	a3,152(s1)
    80007a2c:	00070c9b          	sext.w	s9,a4
    80007a30:	f5371ee3          	bne	a4,s3,8000798c <consoleread+0x88>
    80007a34:	000b851b          	sext.w	a0,s7
    80007a38:	f96bf2e3          	bgeu	s7,s6,800079bc <consoleread+0xb8>
    80007a3c:	08f4ac23          	sw	a5,152(s1)
    80007a40:	f7dff06f          	j	800079bc <consoleread+0xb8>

0000000080007a44 <consputc>:
    80007a44:	10000793          	li	a5,256
    80007a48:	00f50663          	beq	a0,a5,80007a54 <consputc+0x10>
    80007a4c:	00001317          	auipc	t1,0x1
    80007a50:	9f430067          	jr	-1548(t1) # 80008440 <uartputc_sync>
    80007a54:	ff010113          	addi	sp,sp,-16
    80007a58:	00113423          	sd	ra,8(sp)
    80007a5c:	00813023          	sd	s0,0(sp)
    80007a60:	01010413          	addi	s0,sp,16
    80007a64:	00800513          	li	a0,8
    80007a68:	00001097          	auipc	ra,0x1
    80007a6c:	9d8080e7          	jalr	-1576(ra) # 80008440 <uartputc_sync>
    80007a70:	02000513          	li	a0,32
    80007a74:	00001097          	auipc	ra,0x1
    80007a78:	9cc080e7          	jalr	-1588(ra) # 80008440 <uartputc_sync>
    80007a7c:	00013403          	ld	s0,0(sp)
    80007a80:	00813083          	ld	ra,8(sp)
    80007a84:	00800513          	li	a0,8
    80007a88:	01010113          	addi	sp,sp,16
    80007a8c:	00001317          	auipc	t1,0x1
    80007a90:	9b430067          	jr	-1612(t1) # 80008440 <uartputc_sync>

0000000080007a94 <consoleintr>:
    80007a94:	fe010113          	addi	sp,sp,-32
    80007a98:	00813823          	sd	s0,16(sp)
    80007a9c:	00913423          	sd	s1,8(sp)
    80007aa0:	01213023          	sd	s2,0(sp)
    80007aa4:	00113c23          	sd	ra,24(sp)
    80007aa8:	02010413          	addi	s0,sp,32
    80007aac:	00006917          	auipc	s2,0x6
    80007ab0:	54c90913          	addi	s2,s2,1356 # 8000dff8 <cons>
    80007ab4:	00050493          	mv	s1,a0
    80007ab8:	00090513          	mv	a0,s2
    80007abc:	00001097          	auipc	ra,0x1
    80007ac0:	e40080e7          	jalr	-448(ra) # 800088fc <acquire>
    80007ac4:	02048c63          	beqz	s1,80007afc <consoleintr+0x68>
    80007ac8:	0a092783          	lw	a5,160(s2)
    80007acc:	09892703          	lw	a4,152(s2)
    80007ad0:	07f00693          	li	a3,127
    80007ad4:	40e7873b          	subw	a4,a5,a4
    80007ad8:	02e6e263          	bltu	a3,a4,80007afc <consoleintr+0x68>
    80007adc:	00d00713          	li	a4,13
    80007ae0:	04e48063          	beq	s1,a4,80007b20 <consoleintr+0x8c>
    80007ae4:	07f7f713          	andi	a4,a5,127
    80007ae8:	00e90733          	add	a4,s2,a4
    80007aec:	0017879b          	addiw	a5,a5,1
    80007af0:	0af92023          	sw	a5,160(s2)
    80007af4:	00970c23          	sb	s1,24(a4)
    80007af8:	08f92e23          	sw	a5,156(s2)
    80007afc:	01013403          	ld	s0,16(sp)
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	00813483          	ld	s1,8(sp)
    80007b08:	00013903          	ld	s2,0(sp)
    80007b0c:	00006517          	auipc	a0,0x6
    80007b10:	4ec50513          	addi	a0,a0,1260 # 8000dff8 <cons>
    80007b14:	02010113          	addi	sp,sp,32
    80007b18:	00001317          	auipc	t1,0x1
    80007b1c:	eb030067          	jr	-336(t1) # 800089c8 <release>
    80007b20:	00a00493          	li	s1,10
    80007b24:	fc1ff06f          	j	80007ae4 <consoleintr+0x50>

0000000080007b28 <consoleinit>:
    80007b28:	fe010113          	addi	sp,sp,-32
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	00813823          	sd	s0,16(sp)
    80007b34:	00913423          	sd	s1,8(sp)
    80007b38:	02010413          	addi	s0,sp,32
    80007b3c:	00006497          	auipc	s1,0x6
    80007b40:	4bc48493          	addi	s1,s1,1212 # 8000dff8 <cons>
    80007b44:	00048513          	mv	a0,s1
    80007b48:	00003597          	auipc	a1,0x3
    80007b4c:	ba058593          	addi	a1,a1,-1120 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007b50:	00001097          	auipc	ra,0x1
    80007b54:	d88080e7          	jalr	-632(ra) # 800088d8 <initlock>
    80007b58:	00000097          	auipc	ra,0x0
    80007b5c:	7ac080e7          	jalr	1964(ra) # 80008304 <uartinit>
    80007b60:	01813083          	ld	ra,24(sp)
    80007b64:	01013403          	ld	s0,16(sp)
    80007b68:	00000797          	auipc	a5,0x0
    80007b6c:	d9c78793          	addi	a5,a5,-612 # 80007904 <consoleread>
    80007b70:	0af4bc23          	sd	a5,184(s1)
    80007b74:	00000797          	auipc	a5,0x0
    80007b78:	cec78793          	addi	a5,a5,-788 # 80007860 <consolewrite>
    80007b7c:	0cf4b023          	sd	a5,192(s1)
    80007b80:	00813483          	ld	s1,8(sp)
    80007b84:	02010113          	addi	sp,sp,32
    80007b88:	00008067          	ret

0000000080007b8c <console_read>:
    80007b8c:	ff010113          	addi	sp,sp,-16
    80007b90:	00813423          	sd	s0,8(sp)
    80007b94:	01010413          	addi	s0,sp,16
    80007b98:	00813403          	ld	s0,8(sp)
    80007b9c:	00006317          	auipc	t1,0x6
    80007ba0:	51433303          	ld	t1,1300(t1) # 8000e0b0 <devsw+0x10>
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00030067          	jr	t1

0000000080007bac <console_write>:
    80007bac:	ff010113          	addi	sp,sp,-16
    80007bb0:	00813423          	sd	s0,8(sp)
    80007bb4:	01010413          	addi	s0,sp,16
    80007bb8:	00813403          	ld	s0,8(sp)
    80007bbc:	00006317          	auipc	t1,0x6
    80007bc0:	4fc33303          	ld	t1,1276(t1) # 8000e0b8 <devsw+0x18>
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00030067          	jr	t1

0000000080007bcc <panic>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00113c23          	sd	ra,24(sp)
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	02010413          	addi	s0,sp,32
    80007be0:	00050493          	mv	s1,a0
    80007be4:	00003517          	auipc	a0,0x3
    80007be8:	b0c50513          	addi	a0,a0,-1268 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007bec:	00006797          	auipc	a5,0x6
    80007bf0:	5607a623          	sw	zero,1388(a5) # 8000e158 <pr+0x18>
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	034080e7          	jalr	52(ra) # 80007c28 <__printf>
    80007bfc:	00048513          	mv	a0,s1
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	028080e7          	jalr	40(ra) # 80007c28 <__printf>
    80007c08:	00003517          	auipc	a0,0x3
    80007c0c:	87050513          	addi	a0,a0,-1936 # 8000a478 <CONSOLE_STATUS+0x468>
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	018080e7          	jalr	24(ra) # 80007c28 <__printf>
    80007c18:	00100793          	li	a5,1
    80007c1c:	00005717          	auipc	a4,0x5
    80007c20:	22f72623          	sw	a5,556(a4) # 8000ce48 <panicked>
    80007c24:	0000006f          	j	80007c24 <panic+0x58>

0000000080007c28 <__printf>:
    80007c28:	f3010113          	addi	sp,sp,-208
    80007c2c:	08813023          	sd	s0,128(sp)
    80007c30:	07313423          	sd	s3,104(sp)
    80007c34:	09010413          	addi	s0,sp,144
    80007c38:	05813023          	sd	s8,64(sp)
    80007c3c:	08113423          	sd	ra,136(sp)
    80007c40:	06913c23          	sd	s1,120(sp)
    80007c44:	07213823          	sd	s2,112(sp)
    80007c48:	07413023          	sd	s4,96(sp)
    80007c4c:	05513c23          	sd	s5,88(sp)
    80007c50:	05613823          	sd	s6,80(sp)
    80007c54:	05713423          	sd	s7,72(sp)
    80007c58:	03913c23          	sd	s9,56(sp)
    80007c5c:	03a13823          	sd	s10,48(sp)
    80007c60:	03b13423          	sd	s11,40(sp)
    80007c64:	00006317          	auipc	t1,0x6
    80007c68:	4dc30313          	addi	t1,t1,1244 # 8000e140 <pr>
    80007c6c:	01832c03          	lw	s8,24(t1)
    80007c70:	00b43423          	sd	a1,8(s0)
    80007c74:	00c43823          	sd	a2,16(s0)
    80007c78:	00d43c23          	sd	a3,24(s0)
    80007c7c:	02e43023          	sd	a4,32(s0)
    80007c80:	02f43423          	sd	a5,40(s0)
    80007c84:	03043823          	sd	a6,48(s0)
    80007c88:	03143c23          	sd	a7,56(s0)
    80007c8c:	00050993          	mv	s3,a0
    80007c90:	4a0c1663          	bnez	s8,8000813c <__printf+0x514>
    80007c94:	60098c63          	beqz	s3,800082ac <__printf+0x684>
    80007c98:	0009c503          	lbu	a0,0(s3)
    80007c9c:	00840793          	addi	a5,s0,8
    80007ca0:	f6f43c23          	sd	a5,-136(s0)
    80007ca4:	00000493          	li	s1,0
    80007ca8:	22050063          	beqz	a0,80007ec8 <__printf+0x2a0>
    80007cac:	00002a37          	lui	s4,0x2
    80007cb0:	00018ab7          	lui	s5,0x18
    80007cb4:	000f4b37          	lui	s6,0xf4
    80007cb8:	00989bb7          	lui	s7,0x989
    80007cbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007cc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007cc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007cc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007ccc:	00148c9b          	addiw	s9,s1,1
    80007cd0:	02500793          	li	a5,37
    80007cd4:	01998933          	add	s2,s3,s9
    80007cd8:	38f51263          	bne	a0,a5,8000805c <__printf+0x434>
    80007cdc:	00094783          	lbu	a5,0(s2)
    80007ce0:	00078c9b          	sext.w	s9,a5
    80007ce4:	1e078263          	beqz	a5,80007ec8 <__printf+0x2a0>
    80007ce8:	0024849b          	addiw	s1,s1,2
    80007cec:	07000713          	li	a4,112
    80007cf0:	00998933          	add	s2,s3,s1
    80007cf4:	38e78a63          	beq	a5,a4,80008088 <__printf+0x460>
    80007cf8:	20f76863          	bltu	a4,a5,80007f08 <__printf+0x2e0>
    80007cfc:	42a78863          	beq	a5,a0,8000812c <__printf+0x504>
    80007d00:	06400713          	li	a4,100
    80007d04:	40e79663          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007d08:	f7843783          	ld	a5,-136(s0)
    80007d0c:	0007a603          	lw	a2,0(a5)
    80007d10:	00878793          	addi	a5,a5,8
    80007d14:	f6f43c23          	sd	a5,-136(s0)
    80007d18:	42064a63          	bltz	a2,8000814c <__printf+0x524>
    80007d1c:	00a00713          	li	a4,10
    80007d20:	02e677bb          	remuw	a5,a2,a4
    80007d24:	00003d97          	auipc	s11,0x3
    80007d28:	9f4d8d93          	addi	s11,s11,-1548 # 8000a718 <digits>
    80007d2c:	00900593          	li	a1,9
    80007d30:	0006051b          	sext.w	a0,a2
    80007d34:	00000c93          	li	s9,0
    80007d38:	02079793          	slli	a5,a5,0x20
    80007d3c:	0207d793          	srli	a5,a5,0x20
    80007d40:	00fd87b3          	add	a5,s11,a5
    80007d44:	0007c783          	lbu	a5,0(a5)
    80007d48:	02e656bb          	divuw	a3,a2,a4
    80007d4c:	f8f40023          	sb	a5,-128(s0)
    80007d50:	14c5d863          	bge	a1,a2,80007ea0 <__printf+0x278>
    80007d54:	06300593          	li	a1,99
    80007d58:	00100c93          	li	s9,1
    80007d5c:	02e6f7bb          	remuw	a5,a3,a4
    80007d60:	02079793          	slli	a5,a5,0x20
    80007d64:	0207d793          	srli	a5,a5,0x20
    80007d68:	00fd87b3          	add	a5,s11,a5
    80007d6c:	0007c783          	lbu	a5,0(a5)
    80007d70:	02e6d73b          	divuw	a4,a3,a4
    80007d74:	f8f400a3          	sb	a5,-127(s0)
    80007d78:	12a5f463          	bgeu	a1,a0,80007ea0 <__printf+0x278>
    80007d7c:	00a00693          	li	a3,10
    80007d80:	00900593          	li	a1,9
    80007d84:	02d777bb          	remuw	a5,a4,a3
    80007d88:	02079793          	slli	a5,a5,0x20
    80007d8c:	0207d793          	srli	a5,a5,0x20
    80007d90:	00fd87b3          	add	a5,s11,a5
    80007d94:	0007c503          	lbu	a0,0(a5)
    80007d98:	02d757bb          	divuw	a5,a4,a3
    80007d9c:	f8a40123          	sb	a0,-126(s0)
    80007da0:	48e5f263          	bgeu	a1,a4,80008224 <__printf+0x5fc>
    80007da4:	06300513          	li	a0,99
    80007da8:	02d7f5bb          	remuw	a1,a5,a3
    80007dac:	02059593          	slli	a1,a1,0x20
    80007db0:	0205d593          	srli	a1,a1,0x20
    80007db4:	00bd85b3          	add	a1,s11,a1
    80007db8:	0005c583          	lbu	a1,0(a1)
    80007dbc:	02d7d7bb          	divuw	a5,a5,a3
    80007dc0:	f8b401a3          	sb	a1,-125(s0)
    80007dc4:	48e57263          	bgeu	a0,a4,80008248 <__printf+0x620>
    80007dc8:	3e700513          	li	a0,999
    80007dcc:	02d7f5bb          	remuw	a1,a5,a3
    80007dd0:	02059593          	slli	a1,a1,0x20
    80007dd4:	0205d593          	srli	a1,a1,0x20
    80007dd8:	00bd85b3          	add	a1,s11,a1
    80007ddc:	0005c583          	lbu	a1,0(a1)
    80007de0:	02d7d7bb          	divuw	a5,a5,a3
    80007de4:	f8b40223          	sb	a1,-124(s0)
    80007de8:	46e57663          	bgeu	a0,a4,80008254 <__printf+0x62c>
    80007dec:	02d7f5bb          	remuw	a1,a5,a3
    80007df0:	02059593          	slli	a1,a1,0x20
    80007df4:	0205d593          	srli	a1,a1,0x20
    80007df8:	00bd85b3          	add	a1,s11,a1
    80007dfc:	0005c583          	lbu	a1,0(a1)
    80007e00:	02d7d7bb          	divuw	a5,a5,a3
    80007e04:	f8b402a3          	sb	a1,-123(s0)
    80007e08:	46ea7863          	bgeu	s4,a4,80008278 <__printf+0x650>
    80007e0c:	02d7f5bb          	remuw	a1,a5,a3
    80007e10:	02059593          	slli	a1,a1,0x20
    80007e14:	0205d593          	srli	a1,a1,0x20
    80007e18:	00bd85b3          	add	a1,s11,a1
    80007e1c:	0005c583          	lbu	a1,0(a1)
    80007e20:	02d7d7bb          	divuw	a5,a5,a3
    80007e24:	f8b40323          	sb	a1,-122(s0)
    80007e28:	3eeaf863          	bgeu	s5,a4,80008218 <__printf+0x5f0>
    80007e2c:	02d7f5bb          	remuw	a1,a5,a3
    80007e30:	02059593          	slli	a1,a1,0x20
    80007e34:	0205d593          	srli	a1,a1,0x20
    80007e38:	00bd85b3          	add	a1,s11,a1
    80007e3c:	0005c583          	lbu	a1,0(a1)
    80007e40:	02d7d7bb          	divuw	a5,a5,a3
    80007e44:	f8b403a3          	sb	a1,-121(s0)
    80007e48:	42eb7e63          	bgeu	s6,a4,80008284 <__printf+0x65c>
    80007e4c:	02d7f5bb          	remuw	a1,a5,a3
    80007e50:	02059593          	slli	a1,a1,0x20
    80007e54:	0205d593          	srli	a1,a1,0x20
    80007e58:	00bd85b3          	add	a1,s11,a1
    80007e5c:	0005c583          	lbu	a1,0(a1)
    80007e60:	02d7d7bb          	divuw	a5,a5,a3
    80007e64:	f8b40423          	sb	a1,-120(s0)
    80007e68:	42ebfc63          	bgeu	s7,a4,800082a0 <__printf+0x678>
    80007e6c:	02079793          	slli	a5,a5,0x20
    80007e70:	0207d793          	srli	a5,a5,0x20
    80007e74:	00fd8db3          	add	s11,s11,a5
    80007e78:	000dc703          	lbu	a4,0(s11)
    80007e7c:	00a00793          	li	a5,10
    80007e80:	00900c93          	li	s9,9
    80007e84:	f8e404a3          	sb	a4,-119(s0)
    80007e88:	00065c63          	bgez	a2,80007ea0 <__printf+0x278>
    80007e8c:	f9040713          	addi	a4,s0,-112
    80007e90:	00f70733          	add	a4,a4,a5
    80007e94:	02d00693          	li	a3,45
    80007e98:	fed70823          	sb	a3,-16(a4)
    80007e9c:	00078c93          	mv	s9,a5
    80007ea0:	f8040793          	addi	a5,s0,-128
    80007ea4:	01978cb3          	add	s9,a5,s9
    80007ea8:	f7f40d13          	addi	s10,s0,-129
    80007eac:	000cc503          	lbu	a0,0(s9)
    80007eb0:	fffc8c93          	addi	s9,s9,-1
    80007eb4:	00000097          	auipc	ra,0x0
    80007eb8:	b90080e7          	jalr	-1136(ra) # 80007a44 <consputc>
    80007ebc:	ffac98e3          	bne	s9,s10,80007eac <__printf+0x284>
    80007ec0:	00094503          	lbu	a0,0(s2)
    80007ec4:	e00514e3          	bnez	a0,80007ccc <__printf+0xa4>
    80007ec8:	1a0c1663          	bnez	s8,80008074 <__printf+0x44c>
    80007ecc:	08813083          	ld	ra,136(sp)
    80007ed0:	08013403          	ld	s0,128(sp)
    80007ed4:	07813483          	ld	s1,120(sp)
    80007ed8:	07013903          	ld	s2,112(sp)
    80007edc:	06813983          	ld	s3,104(sp)
    80007ee0:	06013a03          	ld	s4,96(sp)
    80007ee4:	05813a83          	ld	s5,88(sp)
    80007ee8:	05013b03          	ld	s6,80(sp)
    80007eec:	04813b83          	ld	s7,72(sp)
    80007ef0:	04013c03          	ld	s8,64(sp)
    80007ef4:	03813c83          	ld	s9,56(sp)
    80007ef8:	03013d03          	ld	s10,48(sp)
    80007efc:	02813d83          	ld	s11,40(sp)
    80007f00:	0d010113          	addi	sp,sp,208
    80007f04:	00008067          	ret
    80007f08:	07300713          	li	a4,115
    80007f0c:	1ce78a63          	beq	a5,a4,800080e0 <__printf+0x4b8>
    80007f10:	07800713          	li	a4,120
    80007f14:	1ee79e63          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007f18:	f7843783          	ld	a5,-136(s0)
    80007f1c:	0007a703          	lw	a4,0(a5)
    80007f20:	00878793          	addi	a5,a5,8
    80007f24:	f6f43c23          	sd	a5,-136(s0)
    80007f28:	28074263          	bltz	a4,800081ac <__printf+0x584>
    80007f2c:	00002d97          	auipc	s11,0x2
    80007f30:	7ecd8d93          	addi	s11,s11,2028 # 8000a718 <digits>
    80007f34:	00f77793          	andi	a5,a4,15
    80007f38:	00fd87b3          	add	a5,s11,a5
    80007f3c:	0007c683          	lbu	a3,0(a5)
    80007f40:	00f00613          	li	a2,15
    80007f44:	0007079b          	sext.w	a5,a4
    80007f48:	f8d40023          	sb	a3,-128(s0)
    80007f4c:	0047559b          	srliw	a1,a4,0x4
    80007f50:	0047569b          	srliw	a3,a4,0x4
    80007f54:	00000c93          	li	s9,0
    80007f58:	0ee65063          	bge	a2,a4,80008038 <__printf+0x410>
    80007f5c:	00f6f693          	andi	a3,a3,15
    80007f60:	00dd86b3          	add	a3,s11,a3
    80007f64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f68:	0087d79b          	srliw	a5,a5,0x8
    80007f6c:	00100c93          	li	s9,1
    80007f70:	f8d400a3          	sb	a3,-127(s0)
    80007f74:	0cb67263          	bgeu	a2,a1,80008038 <__printf+0x410>
    80007f78:	00f7f693          	andi	a3,a5,15
    80007f7c:	00dd86b3          	add	a3,s11,a3
    80007f80:	0006c583          	lbu	a1,0(a3)
    80007f84:	00f00613          	li	a2,15
    80007f88:	0047d69b          	srliw	a3,a5,0x4
    80007f8c:	f8b40123          	sb	a1,-126(s0)
    80007f90:	0047d593          	srli	a1,a5,0x4
    80007f94:	28f67e63          	bgeu	a2,a5,80008230 <__printf+0x608>
    80007f98:	00f6f693          	andi	a3,a3,15
    80007f9c:	00dd86b3          	add	a3,s11,a3
    80007fa0:	0006c503          	lbu	a0,0(a3)
    80007fa4:	0087d813          	srli	a6,a5,0x8
    80007fa8:	0087d69b          	srliw	a3,a5,0x8
    80007fac:	f8a401a3          	sb	a0,-125(s0)
    80007fb0:	28b67663          	bgeu	a2,a1,8000823c <__printf+0x614>
    80007fb4:	00f6f693          	andi	a3,a3,15
    80007fb8:	00dd86b3          	add	a3,s11,a3
    80007fbc:	0006c583          	lbu	a1,0(a3)
    80007fc0:	00c7d513          	srli	a0,a5,0xc
    80007fc4:	00c7d69b          	srliw	a3,a5,0xc
    80007fc8:	f8b40223          	sb	a1,-124(s0)
    80007fcc:	29067a63          	bgeu	a2,a6,80008260 <__printf+0x638>
    80007fd0:	00f6f693          	andi	a3,a3,15
    80007fd4:	00dd86b3          	add	a3,s11,a3
    80007fd8:	0006c583          	lbu	a1,0(a3)
    80007fdc:	0107d813          	srli	a6,a5,0x10
    80007fe0:	0107d69b          	srliw	a3,a5,0x10
    80007fe4:	f8b402a3          	sb	a1,-123(s0)
    80007fe8:	28a67263          	bgeu	a2,a0,8000826c <__printf+0x644>
    80007fec:	00f6f693          	andi	a3,a3,15
    80007ff0:	00dd86b3          	add	a3,s11,a3
    80007ff4:	0006c683          	lbu	a3,0(a3)
    80007ff8:	0147d79b          	srliw	a5,a5,0x14
    80007ffc:	f8d40323          	sb	a3,-122(s0)
    80008000:	21067663          	bgeu	a2,a6,8000820c <__printf+0x5e4>
    80008004:	02079793          	slli	a5,a5,0x20
    80008008:	0207d793          	srli	a5,a5,0x20
    8000800c:	00fd8db3          	add	s11,s11,a5
    80008010:	000dc683          	lbu	a3,0(s11)
    80008014:	00800793          	li	a5,8
    80008018:	00700c93          	li	s9,7
    8000801c:	f8d403a3          	sb	a3,-121(s0)
    80008020:	00075c63          	bgez	a4,80008038 <__printf+0x410>
    80008024:	f9040713          	addi	a4,s0,-112
    80008028:	00f70733          	add	a4,a4,a5
    8000802c:	02d00693          	li	a3,45
    80008030:	fed70823          	sb	a3,-16(a4)
    80008034:	00078c93          	mv	s9,a5
    80008038:	f8040793          	addi	a5,s0,-128
    8000803c:	01978cb3          	add	s9,a5,s9
    80008040:	f7f40d13          	addi	s10,s0,-129
    80008044:	000cc503          	lbu	a0,0(s9)
    80008048:	fffc8c93          	addi	s9,s9,-1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	9f8080e7          	jalr	-1544(ra) # 80007a44 <consputc>
    80008054:	ff9d18e3          	bne	s10,s9,80008044 <__printf+0x41c>
    80008058:	0100006f          	j	80008068 <__printf+0x440>
    8000805c:	00000097          	auipc	ra,0x0
    80008060:	9e8080e7          	jalr	-1560(ra) # 80007a44 <consputc>
    80008064:	000c8493          	mv	s1,s9
    80008068:	00094503          	lbu	a0,0(s2)
    8000806c:	c60510e3          	bnez	a0,80007ccc <__printf+0xa4>
    80008070:	e40c0ee3          	beqz	s8,80007ecc <__printf+0x2a4>
    80008074:	00006517          	auipc	a0,0x6
    80008078:	0cc50513          	addi	a0,a0,204 # 8000e140 <pr>
    8000807c:	00001097          	auipc	ra,0x1
    80008080:	94c080e7          	jalr	-1716(ra) # 800089c8 <release>
    80008084:	e49ff06f          	j	80007ecc <__printf+0x2a4>
    80008088:	f7843783          	ld	a5,-136(s0)
    8000808c:	03000513          	li	a0,48
    80008090:	01000d13          	li	s10,16
    80008094:	00878713          	addi	a4,a5,8
    80008098:	0007bc83          	ld	s9,0(a5)
    8000809c:	f6e43c23          	sd	a4,-136(s0)
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	9a4080e7          	jalr	-1628(ra) # 80007a44 <consputc>
    800080a8:	07800513          	li	a0,120
    800080ac:	00000097          	auipc	ra,0x0
    800080b0:	998080e7          	jalr	-1640(ra) # 80007a44 <consputc>
    800080b4:	00002d97          	auipc	s11,0x2
    800080b8:	664d8d93          	addi	s11,s11,1636 # 8000a718 <digits>
    800080bc:	03ccd793          	srli	a5,s9,0x3c
    800080c0:	00fd87b3          	add	a5,s11,a5
    800080c4:	0007c503          	lbu	a0,0(a5)
    800080c8:	fffd0d1b          	addiw	s10,s10,-1
    800080cc:	004c9c93          	slli	s9,s9,0x4
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	974080e7          	jalr	-1676(ra) # 80007a44 <consputc>
    800080d8:	fe0d12e3          	bnez	s10,800080bc <__printf+0x494>
    800080dc:	f8dff06f          	j	80008068 <__printf+0x440>
    800080e0:	f7843783          	ld	a5,-136(s0)
    800080e4:	0007bc83          	ld	s9,0(a5)
    800080e8:	00878793          	addi	a5,a5,8
    800080ec:	f6f43c23          	sd	a5,-136(s0)
    800080f0:	000c9a63          	bnez	s9,80008104 <__printf+0x4dc>
    800080f4:	1080006f          	j	800081fc <__printf+0x5d4>
    800080f8:	001c8c93          	addi	s9,s9,1
    800080fc:	00000097          	auipc	ra,0x0
    80008100:	948080e7          	jalr	-1720(ra) # 80007a44 <consputc>
    80008104:	000cc503          	lbu	a0,0(s9)
    80008108:	fe0518e3          	bnez	a0,800080f8 <__printf+0x4d0>
    8000810c:	f5dff06f          	j	80008068 <__printf+0x440>
    80008110:	02500513          	li	a0,37
    80008114:	00000097          	auipc	ra,0x0
    80008118:	930080e7          	jalr	-1744(ra) # 80007a44 <consputc>
    8000811c:	000c8513          	mv	a0,s9
    80008120:	00000097          	auipc	ra,0x0
    80008124:	924080e7          	jalr	-1756(ra) # 80007a44 <consputc>
    80008128:	f41ff06f          	j	80008068 <__printf+0x440>
    8000812c:	02500513          	li	a0,37
    80008130:	00000097          	auipc	ra,0x0
    80008134:	914080e7          	jalr	-1772(ra) # 80007a44 <consputc>
    80008138:	f31ff06f          	j	80008068 <__printf+0x440>
    8000813c:	00030513          	mv	a0,t1
    80008140:	00000097          	auipc	ra,0x0
    80008144:	7bc080e7          	jalr	1980(ra) # 800088fc <acquire>
    80008148:	b4dff06f          	j	80007c94 <__printf+0x6c>
    8000814c:	40c0053b          	negw	a0,a2
    80008150:	00a00713          	li	a4,10
    80008154:	02e576bb          	remuw	a3,a0,a4
    80008158:	00002d97          	auipc	s11,0x2
    8000815c:	5c0d8d93          	addi	s11,s11,1472 # 8000a718 <digits>
    80008160:	ff700593          	li	a1,-9
    80008164:	02069693          	slli	a3,a3,0x20
    80008168:	0206d693          	srli	a3,a3,0x20
    8000816c:	00dd86b3          	add	a3,s11,a3
    80008170:	0006c683          	lbu	a3,0(a3)
    80008174:	02e557bb          	divuw	a5,a0,a4
    80008178:	f8d40023          	sb	a3,-128(s0)
    8000817c:	10b65e63          	bge	a2,a1,80008298 <__printf+0x670>
    80008180:	06300593          	li	a1,99
    80008184:	02e7f6bb          	remuw	a3,a5,a4
    80008188:	02069693          	slli	a3,a3,0x20
    8000818c:	0206d693          	srli	a3,a3,0x20
    80008190:	00dd86b3          	add	a3,s11,a3
    80008194:	0006c683          	lbu	a3,0(a3)
    80008198:	02e7d73b          	divuw	a4,a5,a4
    8000819c:	00200793          	li	a5,2
    800081a0:	f8d400a3          	sb	a3,-127(s0)
    800081a4:	bca5ece3          	bltu	a1,a0,80007d7c <__printf+0x154>
    800081a8:	ce5ff06f          	j	80007e8c <__printf+0x264>
    800081ac:	40e007bb          	negw	a5,a4
    800081b0:	00002d97          	auipc	s11,0x2
    800081b4:	568d8d93          	addi	s11,s11,1384 # 8000a718 <digits>
    800081b8:	00f7f693          	andi	a3,a5,15
    800081bc:	00dd86b3          	add	a3,s11,a3
    800081c0:	0006c583          	lbu	a1,0(a3)
    800081c4:	ff100613          	li	a2,-15
    800081c8:	0047d69b          	srliw	a3,a5,0x4
    800081cc:	f8b40023          	sb	a1,-128(s0)
    800081d0:	0047d59b          	srliw	a1,a5,0x4
    800081d4:	0ac75e63          	bge	a4,a2,80008290 <__printf+0x668>
    800081d8:	00f6f693          	andi	a3,a3,15
    800081dc:	00dd86b3          	add	a3,s11,a3
    800081e0:	0006c603          	lbu	a2,0(a3)
    800081e4:	00f00693          	li	a3,15
    800081e8:	0087d79b          	srliw	a5,a5,0x8
    800081ec:	f8c400a3          	sb	a2,-127(s0)
    800081f0:	d8b6e4e3          	bltu	a3,a1,80007f78 <__printf+0x350>
    800081f4:	00200793          	li	a5,2
    800081f8:	e2dff06f          	j	80008024 <__printf+0x3fc>
    800081fc:	00002c97          	auipc	s9,0x2
    80008200:	4fcc8c93          	addi	s9,s9,1276 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008204:	02800513          	li	a0,40
    80008208:	ef1ff06f          	j	800080f8 <__printf+0x4d0>
    8000820c:	00700793          	li	a5,7
    80008210:	00600c93          	li	s9,6
    80008214:	e0dff06f          	j	80008020 <__printf+0x3f8>
    80008218:	00700793          	li	a5,7
    8000821c:	00600c93          	li	s9,6
    80008220:	c69ff06f          	j	80007e88 <__printf+0x260>
    80008224:	00300793          	li	a5,3
    80008228:	00200c93          	li	s9,2
    8000822c:	c5dff06f          	j	80007e88 <__printf+0x260>
    80008230:	00300793          	li	a5,3
    80008234:	00200c93          	li	s9,2
    80008238:	de9ff06f          	j	80008020 <__printf+0x3f8>
    8000823c:	00400793          	li	a5,4
    80008240:	00300c93          	li	s9,3
    80008244:	dddff06f          	j	80008020 <__printf+0x3f8>
    80008248:	00400793          	li	a5,4
    8000824c:	00300c93          	li	s9,3
    80008250:	c39ff06f          	j	80007e88 <__printf+0x260>
    80008254:	00500793          	li	a5,5
    80008258:	00400c93          	li	s9,4
    8000825c:	c2dff06f          	j	80007e88 <__printf+0x260>
    80008260:	00500793          	li	a5,5
    80008264:	00400c93          	li	s9,4
    80008268:	db9ff06f          	j	80008020 <__printf+0x3f8>
    8000826c:	00600793          	li	a5,6
    80008270:	00500c93          	li	s9,5
    80008274:	dadff06f          	j	80008020 <__printf+0x3f8>
    80008278:	00600793          	li	a5,6
    8000827c:	00500c93          	li	s9,5
    80008280:	c09ff06f          	j	80007e88 <__printf+0x260>
    80008284:	00800793          	li	a5,8
    80008288:	00700c93          	li	s9,7
    8000828c:	bfdff06f          	j	80007e88 <__printf+0x260>
    80008290:	00100793          	li	a5,1
    80008294:	d91ff06f          	j	80008024 <__printf+0x3fc>
    80008298:	00100793          	li	a5,1
    8000829c:	bf1ff06f          	j	80007e8c <__printf+0x264>
    800082a0:	00900793          	li	a5,9
    800082a4:	00800c93          	li	s9,8
    800082a8:	be1ff06f          	j	80007e88 <__printf+0x260>
    800082ac:	00002517          	auipc	a0,0x2
    800082b0:	45450513          	addi	a0,a0,1108 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800082b4:	00000097          	auipc	ra,0x0
    800082b8:	918080e7          	jalr	-1768(ra) # 80007bcc <panic>

00000000800082bc <printfinit>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00913423          	sd	s1,8(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	00006497          	auipc	s1,0x6
    800082d4:	e7048493          	addi	s1,s1,-400 # 8000e140 <pr>
    800082d8:	00048513          	mv	a0,s1
    800082dc:	00002597          	auipc	a1,0x2
    800082e0:	43458593          	addi	a1,a1,1076 # 8000a710 <CONSOLE_STATUS+0x700>
    800082e4:	00000097          	auipc	ra,0x0
    800082e8:	5f4080e7          	jalr	1524(ra) # 800088d8 <initlock>
    800082ec:	01813083          	ld	ra,24(sp)
    800082f0:	01013403          	ld	s0,16(sp)
    800082f4:	0004ac23          	sw	zero,24(s1)
    800082f8:	00813483          	ld	s1,8(sp)
    800082fc:	02010113          	addi	sp,sp,32
    80008300:	00008067          	ret

0000000080008304 <uartinit>:
    80008304:	ff010113          	addi	sp,sp,-16
    80008308:	00813423          	sd	s0,8(sp)
    8000830c:	01010413          	addi	s0,sp,16
    80008310:	100007b7          	lui	a5,0x10000
    80008314:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008318:	f8000713          	li	a4,-128
    8000831c:	00e781a3          	sb	a4,3(a5)
    80008320:	00300713          	li	a4,3
    80008324:	00e78023          	sb	a4,0(a5)
    80008328:	000780a3          	sb	zero,1(a5)
    8000832c:	00e781a3          	sb	a4,3(a5)
    80008330:	00700693          	li	a3,7
    80008334:	00d78123          	sb	a3,2(a5)
    80008338:	00e780a3          	sb	a4,1(a5)
    8000833c:	00813403          	ld	s0,8(sp)
    80008340:	01010113          	addi	sp,sp,16
    80008344:	00008067          	ret

0000000080008348 <uartputc>:
    80008348:	00005797          	auipc	a5,0x5
    8000834c:	b007a783          	lw	a5,-1280(a5) # 8000ce48 <panicked>
    80008350:	00078463          	beqz	a5,80008358 <uartputc+0x10>
    80008354:	0000006f          	j	80008354 <uartputc+0xc>
    80008358:	fd010113          	addi	sp,sp,-48
    8000835c:	02813023          	sd	s0,32(sp)
    80008360:	00913c23          	sd	s1,24(sp)
    80008364:	01213823          	sd	s2,16(sp)
    80008368:	01313423          	sd	s3,8(sp)
    8000836c:	02113423          	sd	ra,40(sp)
    80008370:	03010413          	addi	s0,sp,48
    80008374:	00005917          	auipc	s2,0x5
    80008378:	adc90913          	addi	s2,s2,-1316 # 8000ce50 <uart_tx_r>
    8000837c:	00093783          	ld	a5,0(s2)
    80008380:	00005497          	auipc	s1,0x5
    80008384:	ad848493          	addi	s1,s1,-1320 # 8000ce58 <uart_tx_w>
    80008388:	0004b703          	ld	a4,0(s1)
    8000838c:	02078693          	addi	a3,a5,32
    80008390:	00050993          	mv	s3,a0
    80008394:	02e69c63          	bne	a3,a4,800083cc <uartputc+0x84>
    80008398:	00001097          	auipc	ra,0x1
    8000839c:	834080e7          	jalr	-1996(ra) # 80008bcc <push_on>
    800083a0:	00093783          	ld	a5,0(s2)
    800083a4:	0004b703          	ld	a4,0(s1)
    800083a8:	02078793          	addi	a5,a5,32
    800083ac:	00e79463          	bne	a5,a4,800083b4 <uartputc+0x6c>
    800083b0:	0000006f          	j	800083b0 <uartputc+0x68>
    800083b4:	00001097          	auipc	ra,0x1
    800083b8:	88c080e7          	jalr	-1908(ra) # 80008c40 <pop_on>
    800083bc:	00093783          	ld	a5,0(s2)
    800083c0:	0004b703          	ld	a4,0(s1)
    800083c4:	02078693          	addi	a3,a5,32
    800083c8:	fce688e3          	beq	a3,a4,80008398 <uartputc+0x50>
    800083cc:	01f77693          	andi	a3,a4,31
    800083d0:	00006597          	auipc	a1,0x6
    800083d4:	d9058593          	addi	a1,a1,-624 # 8000e160 <uart_tx_buf>
    800083d8:	00d586b3          	add	a3,a1,a3
    800083dc:	00170713          	addi	a4,a4,1
    800083e0:	01368023          	sb	s3,0(a3)
    800083e4:	00e4b023          	sd	a4,0(s1)
    800083e8:	10000637          	lui	a2,0x10000
    800083ec:	02f71063          	bne	a4,a5,8000840c <uartputc+0xc4>
    800083f0:	0340006f          	j	80008424 <uartputc+0xdc>
    800083f4:	00074703          	lbu	a4,0(a4)
    800083f8:	00f93023          	sd	a5,0(s2)
    800083fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008400:	00093783          	ld	a5,0(s2)
    80008404:	0004b703          	ld	a4,0(s1)
    80008408:	00f70e63          	beq	a4,a5,80008424 <uartputc+0xdc>
    8000840c:	00564683          	lbu	a3,5(a2)
    80008410:	01f7f713          	andi	a4,a5,31
    80008414:	00e58733          	add	a4,a1,a4
    80008418:	0206f693          	andi	a3,a3,32
    8000841c:	00178793          	addi	a5,a5,1
    80008420:	fc069ae3          	bnez	a3,800083f4 <uartputc+0xac>
    80008424:	02813083          	ld	ra,40(sp)
    80008428:	02013403          	ld	s0,32(sp)
    8000842c:	01813483          	ld	s1,24(sp)
    80008430:	01013903          	ld	s2,16(sp)
    80008434:	00813983          	ld	s3,8(sp)
    80008438:	03010113          	addi	sp,sp,48
    8000843c:	00008067          	ret

0000000080008440 <uartputc_sync>:
    80008440:	ff010113          	addi	sp,sp,-16
    80008444:	00813423          	sd	s0,8(sp)
    80008448:	01010413          	addi	s0,sp,16
    8000844c:	00005717          	auipc	a4,0x5
    80008450:	9fc72703          	lw	a4,-1540(a4) # 8000ce48 <panicked>
    80008454:	02071663          	bnez	a4,80008480 <uartputc_sync+0x40>
    80008458:	00050793          	mv	a5,a0
    8000845c:	100006b7          	lui	a3,0x10000
    80008460:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008464:	02077713          	andi	a4,a4,32
    80008468:	fe070ce3          	beqz	a4,80008460 <uartputc_sync+0x20>
    8000846c:	0ff7f793          	andi	a5,a5,255
    80008470:	00f68023          	sb	a5,0(a3)
    80008474:	00813403          	ld	s0,8(sp)
    80008478:	01010113          	addi	sp,sp,16
    8000847c:	00008067          	ret
    80008480:	0000006f          	j	80008480 <uartputc_sync+0x40>

0000000080008484 <uartstart>:
    80008484:	ff010113          	addi	sp,sp,-16
    80008488:	00813423          	sd	s0,8(sp)
    8000848c:	01010413          	addi	s0,sp,16
    80008490:	00005617          	auipc	a2,0x5
    80008494:	9c060613          	addi	a2,a2,-1600 # 8000ce50 <uart_tx_r>
    80008498:	00005517          	auipc	a0,0x5
    8000849c:	9c050513          	addi	a0,a0,-1600 # 8000ce58 <uart_tx_w>
    800084a0:	00063783          	ld	a5,0(a2)
    800084a4:	00053703          	ld	a4,0(a0)
    800084a8:	04f70263          	beq	a4,a5,800084ec <uartstart+0x68>
    800084ac:	100005b7          	lui	a1,0x10000
    800084b0:	00006817          	auipc	a6,0x6
    800084b4:	cb080813          	addi	a6,a6,-848 # 8000e160 <uart_tx_buf>
    800084b8:	01c0006f          	j	800084d4 <uartstart+0x50>
    800084bc:	0006c703          	lbu	a4,0(a3)
    800084c0:	00f63023          	sd	a5,0(a2)
    800084c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084c8:	00063783          	ld	a5,0(a2)
    800084cc:	00053703          	ld	a4,0(a0)
    800084d0:	00f70e63          	beq	a4,a5,800084ec <uartstart+0x68>
    800084d4:	01f7f713          	andi	a4,a5,31
    800084d8:	00e806b3          	add	a3,a6,a4
    800084dc:	0055c703          	lbu	a4,5(a1)
    800084e0:	00178793          	addi	a5,a5,1
    800084e4:	02077713          	andi	a4,a4,32
    800084e8:	fc071ae3          	bnez	a4,800084bc <uartstart+0x38>
    800084ec:	00813403          	ld	s0,8(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret

00000000800084f8 <uartgetc>:
    800084f8:	ff010113          	addi	sp,sp,-16
    800084fc:	00813423          	sd	s0,8(sp)
    80008500:	01010413          	addi	s0,sp,16
    80008504:	10000737          	lui	a4,0x10000
    80008508:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000850c:	0017f793          	andi	a5,a5,1
    80008510:	00078c63          	beqz	a5,80008528 <uartgetc+0x30>
    80008514:	00074503          	lbu	a0,0(a4)
    80008518:	0ff57513          	andi	a0,a0,255
    8000851c:	00813403          	ld	s0,8(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret
    80008528:	fff00513          	li	a0,-1
    8000852c:	ff1ff06f          	j	8000851c <uartgetc+0x24>

0000000080008530 <uartintr>:
    80008530:	100007b7          	lui	a5,0x10000
    80008534:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008538:	0017f793          	andi	a5,a5,1
    8000853c:	0a078463          	beqz	a5,800085e4 <uartintr+0xb4>
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	00113c23          	sd	ra,24(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	100004b7          	lui	s1,0x10000
    80008558:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000855c:	0ff57513          	andi	a0,a0,255
    80008560:	fffff097          	auipc	ra,0xfffff
    80008564:	534080e7          	jalr	1332(ra) # 80007a94 <consoleintr>
    80008568:	0054c783          	lbu	a5,5(s1)
    8000856c:	0017f793          	andi	a5,a5,1
    80008570:	fe0794e3          	bnez	a5,80008558 <uartintr+0x28>
    80008574:	00005617          	auipc	a2,0x5
    80008578:	8dc60613          	addi	a2,a2,-1828 # 8000ce50 <uart_tx_r>
    8000857c:	00005517          	auipc	a0,0x5
    80008580:	8dc50513          	addi	a0,a0,-1828 # 8000ce58 <uart_tx_w>
    80008584:	00063783          	ld	a5,0(a2)
    80008588:	00053703          	ld	a4,0(a0)
    8000858c:	04f70263          	beq	a4,a5,800085d0 <uartintr+0xa0>
    80008590:	100005b7          	lui	a1,0x10000
    80008594:	00006817          	auipc	a6,0x6
    80008598:	bcc80813          	addi	a6,a6,-1076 # 8000e160 <uart_tx_buf>
    8000859c:	01c0006f          	j	800085b8 <uartintr+0x88>
    800085a0:	0006c703          	lbu	a4,0(a3)
    800085a4:	00f63023          	sd	a5,0(a2)
    800085a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085ac:	00063783          	ld	a5,0(a2)
    800085b0:	00053703          	ld	a4,0(a0)
    800085b4:	00f70e63          	beq	a4,a5,800085d0 <uartintr+0xa0>
    800085b8:	01f7f713          	andi	a4,a5,31
    800085bc:	00e806b3          	add	a3,a6,a4
    800085c0:	0055c703          	lbu	a4,5(a1)
    800085c4:	00178793          	addi	a5,a5,1
    800085c8:	02077713          	andi	a4,a4,32
    800085cc:	fc071ae3          	bnez	a4,800085a0 <uartintr+0x70>
    800085d0:	01813083          	ld	ra,24(sp)
    800085d4:	01013403          	ld	s0,16(sp)
    800085d8:	00813483          	ld	s1,8(sp)
    800085dc:	02010113          	addi	sp,sp,32
    800085e0:	00008067          	ret
    800085e4:	00005617          	auipc	a2,0x5
    800085e8:	86c60613          	addi	a2,a2,-1940 # 8000ce50 <uart_tx_r>
    800085ec:	00005517          	auipc	a0,0x5
    800085f0:	86c50513          	addi	a0,a0,-1940 # 8000ce58 <uart_tx_w>
    800085f4:	00063783          	ld	a5,0(a2)
    800085f8:	00053703          	ld	a4,0(a0)
    800085fc:	04f70263          	beq	a4,a5,80008640 <uartintr+0x110>
    80008600:	100005b7          	lui	a1,0x10000
    80008604:	00006817          	auipc	a6,0x6
    80008608:	b5c80813          	addi	a6,a6,-1188 # 8000e160 <uart_tx_buf>
    8000860c:	01c0006f          	j	80008628 <uartintr+0xf8>
    80008610:	0006c703          	lbu	a4,0(a3)
    80008614:	00f63023          	sd	a5,0(a2)
    80008618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000861c:	00063783          	ld	a5,0(a2)
    80008620:	00053703          	ld	a4,0(a0)
    80008624:	02f70063          	beq	a4,a5,80008644 <uartintr+0x114>
    80008628:	01f7f713          	andi	a4,a5,31
    8000862c:	00e806b3          	add	a3,a6,a4
    80008630:	0055c703          	lbu	a4,5(a1)
    80008634:	00178793          	addi	a5,a5,1
    80008638:	02077713          	andi	a4,a4,32
    8000863c:	fc071ae3          	bnez	a4,80008610 <uartintr+0xe0>
    80008640:	00008067          	ret
    80008644:	00008067          	ret

0000000080008648 <kinit>:
    80008648:	fc010113          	addi	sp,sp,-64
    8000864c:	02913423          	sd	s1,40(sp)
    80008650:	fffff7b7          	lui	a5,0xfffff
    80008654:	00007497          	auipc	s1,0x7
    80008658:	b2b48493          	addi	s1,s1,-1237 # 8000f17f <end+0xfff>
    8000865c:	02813823          	sd	s0,48(sp)
    80008660:	01313c23          	sd	s3,24(sp)
    80008664:	00f4f4b3          	and	s1,s1,a5
    80008668:	02113c23          	sd	ra,56(sp)
    8000866c:	03213023          	sd	s2,32(sp)
    80008670:	01413823          	sd	s4,16(sp)
    80008674:	01513423          	sd	s5,8(sp)
    80008678:	04010413          	addi	s0,sp,64
    8000867c:	000017b7          	lui	a5,0x1
    80008680:	01100993          	li	s3,17
    80008684:	00f487b3          	add	a5,s1,a5
    80008688:	01b99993          	slli	s3,s3,0x1b
    8000868c:	06f9e063          	bltu	s3,a5,800086ec <kinit+0xa4>
    80008690:	00006a97          	auipc	s5,0x6
    80008694:	af0a8a93          	addi	s5,s5,-1296 # 8000e180 <end>
    80008698:	0754ec63          	bltu	s1,s5,80008710 <kinit+0xc8>
    8000869c:	0734fa63          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086a0:	00088a37          	lui	s4,0x88
    800086a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800086a8:	00004917          	auipc	s2,0x4
    800086ac:	7b890913          	addi	s2,s2,1976 # 8000ce60 <kmem>
    800086b0:	00ca1a13          	slli	s4,s4,0xc
    800086b4:	0140006f          	j	800086c8 <kinit+0x80>
    800086b8:	000017b7          	lui	a5,0x1
    800086bc:	00f484b3          	add	s1,s1,a5
    800086c0:	0554e863          	bltu	s1,s5,80008710 <kinit+0xc8>
    800086c4:	0534f663          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086c8:	00001637          	lui	a2,0x1
    800086cc:	00100593          	li	a1,1
    800086d0:	00048513          	mv	a0,s1
    800086d4:	00000097          	auipc	ra,0x0
    800086d8:	5e4080e7          	jalr	1508(ra) # 80008cb8 <__memset>
    800086dc:	00093783          	ld	a5,0(s2)
    800086e0:	00f4b023          	sd	a5,0(s1)
    800086e4:	00993023          	sd	s1,0(s2)
    800086e8:	fd4498e3          	bne	s1,s4,800086b8 <kinit+0x70>
    800086ec:	03813083          	ld	ra,56(sp)
    800086f0:	03013403          	ld	s0,48(sp)
    800086f4:	02813483          	ld	s1,40(sp)
    800086f8:	02013903          	ld	s2,32(sp)
    800086fc:	01813983          	ld	s3,24(sp)
    80008700:	01013a03          	ld	s4,16(sp)
    80008704:	00813a83          	ld	s5,8(sp)
    80008708:	04010113          	addi	sp,sp,64
    8000870c:	00008067          	ret
    80008710:	00002517          	auipc	a0,0x2
    80008714:	02050513          	addi	a0,a0,32 # 8000a730 <digits+0x18>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	4b4080e7          	jalr	1204(ra) # 80007bcc <panic>

0000000080008720 <freerange>:
    80008720:	fc010113          	addi	sp,sp,-64
    80008724:	000017b7          	lui	a5,0x1
    80008728:	02913423          	sd	s1,40(sp)
    8000872c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008730:	009504b3          	add	s1,a0,s1
    80008734:	fffff537          	lui	a0,0xfffff
    80008738:	02813823          	sd	s0,48(sp)
    8000873c:	02113c23          	sd	ra,56(sp)
    80008740:	03213023          	sd	s2,32(sp)
    80008744:	01313c23          	sd	s3,24(sp)
    80008748:	01413823          	sd	s4,16(sp)
    8000874c:	01513423          	sd	s5,8(sp)
    80008750:	01613023          	sd	s6,0(sp)
    80008754:	04010413          	addi	s0,sp,64
    80008758:	00a4f4b3          	and	s1,s1,a0
    8000875c:	00f487b3          	add	a5,s1,a5
    80008760:	06f5e463          	bltu	a1,a5,800087c8 <freerange+0xa8>
    80008764:	00006a97          	auipc	s5,0x6
    80008768:	a1ca8a93          	addi	s5,s5,-1508 # 8000e180 <end>
    8000876c:	0954e263          	bltu	s1,s5,800087f0 <freerange+0xd0>
    80008770:	01100993          	li	s3,17
    80008774:	01b99993          	slli	s3,s3,0x1b
    80008778:	0734fc63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    8000877c:	00058a13          	mv	s4,a1
    80008780:	00004917          	auipc	s2,0x4
    80008784:	6e090913          	addi	s2,s2,1760 # 8000ce60 <kmem>
    80008788:	00002b37          	lui	s6,0x2
    8000878c:	0140006f          	j	800087a0 <freerange+0x80>
    80008790:	000017b7          	lui	a5,0x1
    80008794:	00f484b3          	add	s1,s1,a5
    80008798:	0554ec63          	bltu	s1,s5,800087f0 <freerange+0xd0>
    8000879c:	0534fa63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    800087a0:	00001637          	lui	a2,0x1
    800087a4:	00100593          	li	a1,1
    800087a8:	00048513          	mv	a0,s1
    800087ac:	00000097          	auipc	ra,0x0
    800087b0:	50c080e7          	jalr	1292(ra) # 80008cb8 <__memset>
    800087b4:	00093703          	ld	a4,0(s2)
    800087b8:	016487b3          	add	a5,s1,s6
    800087bc:	00e4b023          	sd	a4,0(s1)
    800087c0:	00993023          	sd	s1,0(s2)
    800087c4:	fcfa76e3          	bgeu	s4,a5,80008790 <freerange+0x70>
    800087c8:	03813083          	ld	ra,56(sp)
    800087cc:	03013403          	ld	s0,48(sp)
    800087d0:	02813483          	ld	s1,40(sp)
    800087d4:	02013903          	ld	s2,32(sp)
    800087d8:	01813983          	ld	s3,24(sp)
    800087dc:	01013a03          	ld	s4,16(sp)
    800087e0:	00813a83          	ld	s5,8(sp)
    800087e4:	00013b03          	ld	s6,0(sp)
    800087e8:	04010113          	addi	sp,sp,64
    800087ec:	00008067          	ret
    800087f0:	00002517          	auipc	a0,0x2
    800087f4:	f4050513          	addi	a0,a0,-192 # 8000a730 <digits+0x18>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	3d4080e7          	jalr	980(ra) # 80007bcc <panic>

0000000080008800 <kfree>:
    80008800:	fe010113          	addi	sp,sp,-32
    80008804:	00813823          	sd	s0,16(sp)
    80008808:	00113c23          	sd	ra,24(sp)
    8000880c:	00913423          	sd	s1,8(sp)
    80008810:	02010413          	addi	s0,sp,32
    80008814:	03451793          	slli	a5,a0,0x34
    80008818:	04079c63          	bnez	a5,80008870 <kfree+0x70>
    8000881c:	00006797          	auipc	a5,0x6
    80008820:	96478793          	addi	a5,a5,-1692 # 8000e180 <end>
    80008824:	00050493          	mv	s1,a0
    80008828:	04f56463          	bltu	a0,a5,80008870 <kfree+0x70>
    8000882c:	01100793          	li	a5,17
    80008830:	01b79793          	slli	a5,a5,0x1b
    80008834:	02f57e63          	bgeu	a0,a5,80008870 <kfree+0x70>
    80008838:	00001637          	lui	a2,0x1
    8000883c:	00100593          	li	a1,1
    80008840:	00000097          	auipc	ra,0x0
    80008844:	478080e7          	jalr	1144(ra) # 80008cb8 <__memset>
    80008848:	00004797          	auipc	a5,0x4
    8000884c:	61878793          	addi	a5,a5,1560 # 8000ce60 <kmem>
    80008850:	0007b703          	ld	a4,0(a5)
    80008854:	01813083          	ld	ra,24(sp)
    80008858:	01013403          	ld	s0,16(sp)
    8000885c:	00e4b023          	sd	a4,0(s1)
    80008860:	0097b023          	sd	s1,0(a5)
    80008864:	00813483          	ld	s1,8(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret
    80008870:	00002517          	auipc	a0,0x2
    80008874:	ec050513          	addi	a0,a0,-320 # 8000a730 <digits+0x18>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	354080e7          	jalr	852(ra) # 80007bcc <panic>

0000000080008880 <kalloc>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00913423          	sd	s1,8(sp)
    8000888c:	00113c23          	sd	ra,24(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	00004797          	auipc	a5,0x4
    80008898:	5cc78793          	addi	a5,a5,1484 # 8000ce60 <kmem>
    8000889c:	0007b483          	ld	s1,0(a5)
    800088a0:	02048063          	beqz	s1,800088c0 <kalloc+0x40>
    800088a4:	0004b703          	ld	a4,0(s1)
    800088a8:	00001637          	lui	a2,0x1
    800088ac:	00500593          	li	a1,5
    800088b0:	00048513          	mv	a0,s1
    800088b4:	00e7b023          	sd	a4,0(a5)
    800088b8:	00000097          	auipc	ra,0x0
    800088bc:	400080e7          	jalr	1024(ra) # 80008cb8 <__memset>
    800088c0:	01813083          	ld	ra,24(sp)
    800088c4:	01013403          	ld	s0,16(sp)
    800088c8:	00048513          	mv	a0,s1
    800088cc:	00813483          	ld	s1,8(sp)
    800088d0:	02010113          	addi	sp,sp,32
    800088d4:	00008067          	ret

00000000800088d8 <initlock>:
    800088d8:	ff010113          	addi	sp,sp,-16
    800088dc:	00813423          	sd	s0,8(sp)
    800088e0:	01010413          	addi	s0,sp,16
    800088e4:	00813403          	ld	s0,8(sp)
    800088e8:	00b53423          	sd	a1,8(a0)
    800088ec:	00052023          	sw	zero,0(a0)
    800088f0:	00053823          	sd	zero,16(a0)
    800088f4:	01010113          	addi	sp,sp,16
    800088f8:	00008067          	ret

00000000800088fc <acquire>:
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00813823          	sd	s0,16(sp)
    80008904:	00913423          	sd	s1,8(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	01213023          	sd	s2,0(sp)
    80008910:	02010413          	addi	s0,sp,32
    80008914:	00050493          	mv	s1,a0
    80008918:	10002973          	csrr	s2,sstatus
    8000891c:	100027f3          	csrr	a5,sstatus
    80008920:	ffd7f793          	andi	a5,a5,-3
    80008924:	10079073          	csrw	sstatus,a5
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	8e8080e7          	jalr	-1816(ra) # 80007210 <mycpu>
    80008930:	07852783          	lw	a5,120(a0)
    80008934:	06078e63          	beqz	a5,800089b0 <acquire+0xb4>
    80008938:	fffff097          	auipc	ra,0xfffff
    8000893c:	8d8080e7          	jalr	-1832(ra) # 80007210 <mycpu>
    80008940:	07852783          	lw	a5,120(a0)
    80008944:	0004a703          	lw	a4,0(s1)
    80008948:	0017879b          	addiw	a5,a5,1
    8000894c:	06f52c23          	sw	a5,120(a0)
    80008950:	04071063          	bnez	a4,80008990 <acquire+0x94>
    80008954:	00100713          	li	a4,1
    80008958:	00070793          	mv	a5,a4
    8000895c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008960:	0007879b          	sext.w	a5,a5
    80008964:	fe079ae3          	bnez	a5,80008958 <acquire+0x5c>
    80008968:	0ff0000f          	fence
    8000896c:	fffff097          	auipc	ra,0xfffff
    80008970:	8a4080e7          	jalr	-1884(ra) # 80007210 <mycpu>
    80008974:	01813083          	ld	ra,24(sp)
    80008978:	01013403          	ld	s0,16(sp)
    8000897c:	00a4b823          	sd	a0,16(s1)
    80008980:	00013903          	ld	s2,0(sp)
    80008984:	00813483          	ld	s1,8(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret
    80008990:	0104b903          	ld	s2,16(s1)
    80008994:	fffff097          	auipc	ra,0xfffff
    80008998:	87c080e7          	jalr	-1924(ra) # 80007210 <mycpu>
    8000899c:	faa91ce3          	bne	s2,a0,80008954 <acquire+0x58>
    800089a0:	00002517          	auipc	a0,0x2
    800089a4:	d9850513          	addi	a0,a0,-616 # 8000a738 <digits+0x20>
    800089a8:	fffff097          	auipc	ra,0xfffff
    800089ac:	224080e7          	jalr	548(ra) # 80007bcc <panic>
    800089b0:	00195913          	srli	s2,s2,0x1
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	85c080e7          	jalr	-1956(ra) # 80007210 <mycpu>
    800089bc:	00197913          	andi	s2,s2,1
    800089c0:	07252e23          	sw	s2,124(a0)
    800089c4:	f75ff06f          	j	80008938 <acquire+0x3c>

00000000800089c8 <release>:
    800089c8:	fe010113          	addi	sp,sp,-32
    800089cc:	00813823          	sd	s0,16(sp)
    800089d0:	00113c23          	sd	ra,24(sp)
    800089d4:	00913423          	sd	s1,8(sp)
    800089d8:	01213023          	sd	s2,0(sp)
    800089dc:	02010413          	addi	s0,sp,32
    800089e0:	00052783          	lw	a5,0(a0)
    800089e4:	00079a63          	bnez	a5,800089f8 <release+0x30>
    800089e8:	00002517          	auipc	a0,0x2
    800089ec:	d5850513          	addi	a0,a0,-680 # 8000a740 <digits+0x28>
    800089f0:	fffff097          	auipc	ra,0xfffff
    800089f4:	1dc080e7          	jalr	476(ra) # 80007bcc <panic>
    800089f8:	01053903          	ld	s2,16(a0)
    800089fc:	00050493          	mv	s1,a0
    80008a00:	fffff097          	auipc	ra,0xfffff
    80008a04:	810080e7          	jalr	-2032(ra) # 80007210 <mycpu>
    80008a08:	fea910e3          	bne	s2,a0,800089e8 <release+0x20>
    80008a0c:	0004b823          	sd	zero,16(s1)
    80008a10:	0ff0000f          	fence
    80008a14:	0f50000f          	fence	iorw,ow
    80008a18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008a1c:	ffffe097          	auipc	ra,0xffffe
    80008a20:	7f4080e7          	jalr	2036(ra) # 80007210 <mycpu>
    80008a24:	100027f3          	csrr	a5,sstatus
    80008a28:	0027f793          	andi	a5,a5,2
    80008a2c:	04079a63          	bnez	a5,80008a80 <release+0xb8>
    80008a30:	07852783          	lw	a5,120(a0)
    80008a34:	02f05e63          	blez	a5,80008a70 <release+0xa8>
    80008a38:	fff7871b          	addiw	a4,a5,-1
    80008a3c:	06e52c23          	sw	a4,120(a0)
    80008a40:	00071c63          	bnez	a4,80008a58 <release+0x90>
    80008a44:	07c52783          	lw	a5,124(a0)
    80008a48:	00078863          	beqz	a5,80008a58 <release+0x90>
    80008a4c:	100027f3          	csrr	a5,sstatus
    80008a50:	0027e793          	ori	a5,a5,2
    80008a54:	10079073          	csrw	sstatus,a5
    80008a58:	01813083          	ld	ra,24(sp)
    80008a5c:	01013403          	ld	s0,16(sp)
    80008a60:	00813483          	ld	s1,8(sp)
    80008a64:	00013903          	ld	s2,0(sp)
    80008a68:	02010113          	addi	sp,sp,32
    80008a6c:	00008067          	ret
    80008a70:	00002517          	auipc	a0,0x2
    80008a74:	cf050513          	addi	a0,a0,-784 # 8000a760 <digits+0x48>
    80008a78:	fffff097          	auipc	ra,0xfffff
    80008a7c:	154080e7          	jalr	340(ra) # 80007bcc <panic>
    80008a80:	00002517          	auipc	a0,0x2
    80008a84:	cc850513          	addi	a0,a0,-824 # 8000a748 <digits+0x30>
    80008a88:	fffff097          	auipc	ra,0xfffff
    80008a8c:	144080e7          	jalr	324(ra) # 80007bcc <panic>

0000000080008a90 <holding>:
    80008a90:	00052783          	lw	a5,0(a0)
    80008a94:	00079663          	bnez	a5,80008aa0 <holding+0x10>
    80008a98:	00000513          	li	a0,0
    80008a9c:	00008067          	ret
    80008aa0:	fe010113          	addi	sp,sp,-32
    80008aa4:	00813823          	sd	s0,16(sp)
    80008aa8:	00913423          	sd	s1,8(sp)
    80008aac:	00113c23          	sd	ra,24(sp)
    80008ab0:	02010413          	addi	s0,sp,32
    80008ab4:	01053483          	ld	s1,16(a0)
    80008ab8:	ffffe097          	auipc	ra,0xffffe
    80008abc:	758080e7          	jalr	1880(ra) # 80007210 <mycpu>
    80008ac0:	01813083          	ld	ra,24(sp)
    80008ac4:	01013403          	ld	s0,16(sp)
    80008ac8:	40a48533          	sub	a0,s1,a0
    80008acc:	00153513          	seqz	a0,a0
    80008ad0:	00813483          	ld	s1,8(sp)
    80008ad4:	02010113          	addi	sp,sp,32
    80008ad8:	00008067          	ret

0000000080008adc <push_off>:
    80008adc:	fe010113          	addi	sp,sp,-32
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00113c23          	sd	ra,24(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	100024f3          	csrr	s1,sstatus
    80008af4:	100027f3          	csrr	a5,sstatus
    80008af8:	ffd7f793          	andi	a5,a5,-3
    80008afc:	10079073          	csrw	sstatus,a5
    80008b00:	ffffe097          	auipc	ra,0xffffe
    80008b04:	710080e7          	jalr	1808(ra) # 80007210 <mycpu>
    80008b08:	07852783          	lw	a5,120(a0)
    80008b0c:	02078663          	beqz	a5,80008b38 <push_off+0x5c>
    80008b10:	ffffe097          	auipc	ra,0xffffe
    80008b14:	700080e7          	jalr	1792(ra) # 80007210 <mycpu>
    80008b18:	07852783          	lw	a5,120(a0)
    80008b1c:	01813083          	ld	ra,24(sp)
    80008b20:	01013403          	ld	s0,16(sp)
    80008b24:	0017879b          	addiw	a5,a5,1
    80008b28:	06f52c23          	sw	a5,120(a0)
    80008b2c:	00813483          	ld	s1,8(sp)
    80008b30:	02010113          	addi	sp,sp,32
    80008b34:	00008067          	ret
    80008b38:	0014d493          	srli	s1,s1,0x1
    80008b3c:	ffffe097          	auipc	ra,0xffffe
    80008b40:	6d4080e7          	jalr	1748(ra) # 80007210 <mycpu>
    80008b44:	0014f493          	andi	s1,s1,1
    80008b48:	06952e23          	sw	s1,124(a0)
    80008b4c:	fc5ff06f          	j	80008b10 <push_off+0x34>

0000000080008b50 <pop_off>:
    80008b50:	ff010113          	addi	sp,sp,-16
    80008b54:	00813023          	sd	s0,0(sp)
    80008b58:	00113423          	sd	ra,8(sp)
    80008b5c:	01010413          	addi	s0,sp,16
    80008b60:	ffffe097          	auipc	ra,0xffffe
    80008b64:	6b0080e7          	jalr	1712(ra) # 80007210 <mycpu>
    80008b68:	100027f3          	csrr	a5,sstatus
    80008b6c:	0027f793          	andi	a5,a5,2
    80008b70:	04079663          	bnez	a5,80008bbc <pop_off+0x6c>
    80008b74:	07852783          	lw	a5,120(a0)
    80008b78:	02f05a63          	blez	a5,80008bac <pop_off+0x5c>
    80008b7c:	fff7871b          	addiw	a4,a5,-1
    80008b80:	06e52c23          	sw	a4,120(a0)
    80008b84:	00071c63          	bnez	a4,80008b9c <pop_off+0x4c>
    80008b88:	07c52783          	lw	a5,124(a0)
    80008b8c:	00078863          	beqz	a5,80008b9c <pop_off+0x4c>
    80008b90:	100027f3          	csrr	a5,sstatus
    80008b94:	0027e793          	ori	a5,a5,2
    80008b98:	10079073          	csrw	sstatus,a5
    80008b9c:	00813083          	ld	ra,8(sp)
    80008ba0:	00013403          	ld	s0,0(sp)
    80008ba4:	01010113          	addi	sp,sp,16
    80008ba8:	00008067          	ret
    80008bac:	00002517          	auipc	a0,0x2
    80008bb0:	bb450513          	addi	a0,a0,-1100 # 8000a760 <digits+0x48>
    80008bb4:	fffff097          	auipc	ra,0xfffff
    80008bb8:	018080e7          	jalr	24(ra) # 80007bcc <panic>
    80008bbc:	00002517          	auipc	a0,0x2
    80008bc0:	b8c50513          	addi	a0,a0,-1140 # 8000a748 <digits+0x30>
    80008bc4:	fffff097          	auipc	ra,0xfffff
    80008bc8:	008080e7          	jalr	8(ra) # 80007bcc <panic>

0000000080008bcc <push_on>:
    80008bcc:	fe010113          	addi	sp,sp,-32
    80008bd0:	00813823          	sd	s0,16(sp)
    80008bd4:	00113c23          	sd	ra,24(sp)
    80008bd8:	00913423          	sd	s1,8(sp)
    80008bdc:	02010413          	addi	s0,sp,32
    80008be0:	100024f3          	csrr	s1,sstatus
    80008be4:	100027f3          	csrr	a5,sstatus
    80008be8:	0027e793          	ori	a5,a5,2
    80008bec:	10079073          	csrw	sstatus,a5
    80008bf0:	ffffe097          	auipc	ra,0xffffe
    80008bf4:	620080e7          	jalr	1568(ra) # 80007210 <mycpu>
    80008bf8:	07852783          	lw	a5,120(a0)
    80008bfc:	02078663          	beqz	a5,80008c28 <push_on+0x5c>
    80008c00:	ffffe097          	auipc	ra,0xffffe
    80008c04:	610080e7          	jalr	1552(ra) # 80007210 <mycpu>
    80008c08:	07852783          	lw	a5,120(a0)
    80008c0c:	01813083          	ld	ra,24(sp)
    80008c10:	01013403          	ld	s0,16(sp)
    80008c14:	0017879b          	addiw	a5,a5,1
    80008c18:	06f52c23          	sw	a5,120(a0)
    80008c1c:	00813483          	ld	s1,8(sp)
    80008c20:	02010113          	addi	sp,sp,32
    80008c24:	00008067          	ret
    80008c28:	0014d493          	srli	s1,s1,0x1
    80008c2c:	ffffe097          	auipc	ra,0xffffe
    80008c30:	5e4080e7          	jalr	1508(ra) # 80007210 <mycpu>
    80008c34:	0014f493          	andi	s1,s1,1
    80008c38:	06952e23          	sw	s1,124(a0)
    80008c3c:	fc5ff06f          	j	80008c00 <push_on+0x34>

0000000080008c40 <pop_on>:
    80008c40:	ff010113          	addi	sp,sp,-16
    80008c44:	00813023          	sd	s0,0(sp)
    80008c48:	00113423          	sd	ra,8(sp)
    80008c4c:	01010413          	addi	s0,sp,16
    80008c50:	ffffe097          	auipc	ra,0xffffe
    80008c54:	5c0080e7          	jalr	1472(ra) # 80007210 <mycpu>
    80008c58:	100027f3          	csrr	a5,sstatus
    80008c5c:	0027f793          	andi	a5,a5,2
    80008c60:	04078463          	beqz	a5,80008ca8 <pop_on+0x68>
    80008c64:	07852783          	lw	a5,120(a0)
    80008c68:	02f05863          	blez	a5,80008c98 <pop_on+0x58>
    80008c6c:	fff7879b          	addiw	a5,a5,-1
    80008c70:	06f52c23          	sw	a5,120(a0)
    80008c74:	07853783          	ld	a5,120(a0)
    80008c78:	00079863          	bnez	a5,80008c88 <pop_on+0x48>
    80008c7c:	100027f3          	csrr	a5,sstatus
    80008c80:	ffd7f793          	andi	a5,a5,-3
    80008c84:	10079073          	csrw	sstatus,a5
    80008c88:	00813083          	ld	ra,8(sp)
    80008c8c:	00013403          	ld	s0,0(sp)
    80008c90:	01010113          	addi	sp,sp,16
    80008c94:	00008067          	ret
    80008c98:	00002517          	auipc	a0,0x2
    80008c9c:	af050513          	addi	a0,a0,-1296 # 8000a788 <digits+0x70>
    80008ca0:	fffff097          	auipc	ra,0xfffff
    80008ca4:	f2c080e7          	jalr	-212(ra) # 80007bcc <panic>
    80008ca8:	00002517          	auipc	a0,0x2
    80008cac:	ac050513          	addi	a0,a0,-1344 # 8000a768 <digits+0x50>
    80008cb0:	fffff097          	auipc	ra,0xfffff
    80008cb4:	f1c080e7          	jalr	-228(ra) # 80007bcc <panic>

0000000080008cb8 <__memset>:
    80008cb8:	ff010113          	addi	sp,sp,-16
    80008cbc:	00813423          	sd	s0,8(sp)
    80008cc0:	01010413          	addi	s0,sp,16
    80008cc4:	1a060e63          	beqz	a2,80008e80 <__memset+0x1c8>
    80008cc8:	40a007b3          	neg	a5,a0
    80008ccc:	0077f793          	andi	a5,a5,7
    80008cd0:	00778693          	addi	a3,a5,7
    80008cd4:	00b00813          	li	a6,11
    80008cd8:	0ff5f593          	andi	a1,a1,255
    80008cdc:	fff6071b          	addiw	a4,a2,-1
    80008ce0:	1b06e663          	bltu	a3,a6,80008e8c <__memset+0x1d4>
    80008ce4:	1cd76463          	bltu	a4,a3,80008eac <__memset+0x1f4>
    80008ce8:	1a078e63          	beqz	a5,80008ea4 <__memset+0x1ec>
    80008cec:	00b50023          	sb	a1,0(a0)
    80008cf0:	00100713          	li	a4,1
    80008cf4:	1ae78463          	beq	a5,a4,80008e9c <__memset+0x1e4>
    80008cf8:	00b500a3          	sb	a1,1(a0)
    80008cfc:	00200713          	li	a4,2
    80008d00:	1ae78a63          	beq	a5,a4,80008eb4 <__memset+0x1fc>
    80008d04:	00b50123          	sb	a1,2(a0)
    80008d08:	00300713          	li	a4,3
    80008d0c:	18e78463          	beq	a5,a4,80008e94 <__memset+0x1dc>
    80008d10:	00b501a3          	sb	a1,3(a0)
    80008d14:	00400713          	li	a4,4
    80008d18:	1ae78263          	beq	a5,a4,80008ebc <__memset+0x204>
    80008d1c:	00b50223          	sb	a1,4(a0)
    80008d20:	00500713          	li	a4,5
    80008d24:	1ae78063          	beq	a5,a4,80008ec4 <__memset+0x20c>
    80008d28:	00b502a3          	sb	a1,5(a0)
    80008d2c:	00700713          	li	a4,7
    80008d30:	18e79e63          	bne	a5,a4,80008ecc <__memset+0x214>
    80008d34:	00b50323          	sb	a1,6(a0)
    80008d38:	00700e93          	li	t4,7
    80008d3c:	00859713          	slli	a4,a1,0x8
    80008d40:	00e5e733          	or	a4,a1,a4
    80008d44:	01059e13          	slli	t3,a1,0x10
    80008d48:	01c76e33          	or	t3,a4,t3
    80008d4c:	01859313          	slli	t1,a1,0x18
    80008d50:	006e6333          	or	t1,t3,t1
    80008d54:	02059893          	slli	a7,a1,0x20
    80008d58:	40f60e3b          	subw	t3,a2,a5
    80008d5c:	011368b3          	or	a7,t1,a7
    80008d60:	02859813          	slli	a6,a1,0x28
    80008d64:	0108e833          	or	a6,a7,a6
    80008d68:	03059693          	slli	a3,a1,0x30
    80008d6c:	003e589b          	srliw	a7,t3,0x3
    80008d70:	00d866b3          	or	a3,a6,a3
    80008d74:	03859713          	slli	a4,a1,0x38
    80008d78:	00389813          	slli	a6,a7,0x3
    80008d7c:	00f507b3          	add	a5,a0,a5
    80008d80:	00e6e733          	or	a4,a3,a4
    80008d84:	000e089b          	sext.w	a7,t3
    80008d88:	00f806b3          	add	a3,a6,a5
    80008d8c:	00e7b023          	sd	a4,0(a5)
    80008d90:	00878793          	addi	a5,a5,8
    80008d94:	fed79ce3          	bne	a5,a3,80008d8c <__memset+0xd4>
    80008d98:	ff8e7793          	andi	a5,t3,-8
    80008d9c:	0007871b          	sext.w	a4,a5
    80008da0:	01d787bb          	addw	a5,a5,t4
    80008da4:	0ce88e63          	beq	a7,a4,80008e80 <__memset+0x1c8>
    80008da8:	00f50733          	add	a4,a0,a5
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0017871b          	addiw	a4,a5,1
    80008db4:	0cc77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0027871b          	addiw	a4,a5,2
    80008dc4:	0ac77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0037871b          	addiw	a4,a5,3
    80008dd4:	0ac77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0047871b          	addiw	a4,a5,4
    80008de4:	08c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	0057871b          	addiw	a4,a5,5
    80008df4:	08c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	0067871b          	addiw	a4,a5,6
    80008e04:	06c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	0077871b          	addiw	a4,a5,7
    80008e14:	06c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	0087871b          	addiw	a4,a5,8
    80008e24:	04c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e28:	00e50733          	add	a4,a0,a4
    80008e2c:	00b70023          	sb	a1,0(a4)
    80008e30:	0097871b          	addiw	a4,a5,9
    80008e34:	04c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e38:	00e50733          	add	a4,a0,a4
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	00a7871b          	addiw	a4,a5,10
    80008e44:	02c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e48:	00e50733          	add	a4,a0,a4
    80008e4c:	00b70023          	sb	a1,0(a4)
    80008e50:	00b7871b          	addiw	a4,a5,11
    80008e54:	02c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	00c7871b          	addiw	a4,a5,12
    80008e64:	00c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	00d7879b          	addiw	a5,a5,13
    80008e74:	00c7f663          	bgeu	a5,a2,80008e80 <__memset+0x1c8>
    80008e78:	00f507b3          	add	a5,a0,a5
    80008e7c:	00b78023          	sb	a1,0(a5)
    80008e80:	00813403          	ld	s0,8(sp)
    80008e84:	01010113          	addi	sp,sp,16
    80008e88:	00008067          	ret
    80008e8c:	00b00693          	li	a3,11
    80008e90:	e55ff06f          	j	80008ce4 <__memset+0x2c>
    80008e94:	00300e93          	li	t4,3
    80008e98:	ea5ff06f          	j	80008d3c <__memset+0x84>
    80008e9c:	00100e93          	li	t4,1
    80008ea0:	e9dff06f          	j	80008d3c <__memset+0x84>
    80008ea4:	00000e93          	li	t4,0
    80008ea8:	e95ff06f          	j	80008d3c <__memset+0x84>
    80008eac:	00000793          	li	a5,0
    80008eb0:	ef9ff06f          	j	80008da8 <__memset+0xf0>
    80008eb4:	00200e93          	li	t4,2
    80008eb8:	e85ff06f          	j	80008d3c <__memset+0x84>
    80008ebc:	00400e93          	li	t4,4
    80008ec0:	e7dff06f          	j	80008d3c <__memset+0x84>
    80008ec4:	00500e93          	li	t4,5
    80008ec8:	e75ff06f          	j	80008d3c <__memset+0x84>
    80008ecc:	00600e93          	li	t4,6
    80008ed0:	e6dff06f          	j	80008d3c <__memset+0x84>

0000000080008ed4 <__memmove>:
    80008ed4:	ff010113          	addi	sp,sp,-16
    80008ed8:	00813423          	sd	s0,8(sp)
    80008edc:	01010413          	addi	s0,sp,16
    80008ee0:	0e060863          	beqz	a2,80008fd0 <__memmove+0xfc>
    80008ee4:	fff6069b          	addiw	a3,a2,-1
    80008ee8:	0006881b          	sext.w	a6,a3
    80008eec:	0ea5e863          	bltu	a1,a0,80008fdc <__memmove+0x108>
    80008ef0:	00758713          	addi	a4,a1,7
    80008ef4:	00a5e7b3          	or	a5,a1,a0
    80008ef8:	40a70733          	sub	a4,a4,a0
    80008efc:	0077f793          	andi	a5,a5,7
    80008f00:	00f73713          	sltiu	a4,a4,15
    80008f04:	00174713          	xori	a4,a4,1
    80008f08:	0017b793          	seqz	a5,a5
    80008f0c:	00e7f7b3          	and	a5,a5,a4
    80008f10:	10078863          	beqz	a5,80009020 <__memmove+0x14c>
    80008f14:	00900793          	li	a5,9
    80008f18:	1107f463          	bgeu	a5,a6,80009020 <__memmove+0x14c>
    80008f1c:	0036581b          	srliw	a6,a2,0x3
    80008f20:	fff8081b          	addiw	a6,a6,-1
    80008f24:	02081813          	slli	a6,a6,0x20
    80008f28:	01d85893          	srli	a7,a6,0x1d
    80008f2c:	00858813          	addi	a6,a1,8
    80008f30:	00058793          	mv	a5,a1
    80008f34:	00050713          	mv	a4,a0
    80008f38:	01088833          	add	a6,a7,a6
    80008f3c:	0007b883          	ld	a7,0(a5)
    80008f40:	00878793          	addi	a5,a5,8
    80008f44:	00870713          	addi	a4,a4,8
    80008f48:	ff173c23          	sd	a7,-8(a4)
    80008f4c:	ff0798e3          	bne	a5,a6,80008f3c <__memmove+0x68>
    80008f50:	ff867713          	andi	a4,a2,-8
    80008f54:	02071793          	slli	a5,a4,0x20
    80008f58:	0207d793          	srli	a5,a5,0x20
    80008f5c:	00f585b3          	add	a1,a1,a5
    80008f60:	40e686bb          	subw	a3,a3,a4
    80008f64:	00f507b3          	add	a5,a0,a5
    80008f68:	06e60463          	beq	a2,a4,80008fd0 <__memmove+0xfc>
    80008f6c:	0005c703          	lbu	a4,0(a1)
    80008f70:	00e78023          	sb	a4,0(a5)
    80008f74:	04068e63          	beqz	a3,80008fd0 <__memmove+0xfc>
    80008f78:	0015c603          	lbu	a2,1(a1)
    80008f7c:	00100713          	li	a4,1
    80008f80:	00c780a3          	sb	a2,1(a5)
    80008f84:	04e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f88:	0025c603          	lbu	a2,2(a1)
    80008f8c:	00200713          	li	a4,2
    80008f90:	00c78123          	sb	a2,2(a5)
    80008f94:	02e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f98:	0035c603          	lbu	a2,3(a1)
    80008f9c:	00300713          	li	a4,3
    80008fa0:	00c781a3          	sb	a2,3(a5)
    80008fa4:	02e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fa8:	0045c603          	lbu	a2,4(a1)
    80008fac:	00400713          	li	a4,4
    80008fb0:	00c78223          	sb	a2,4(a5)
    80008fb4:	00e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fb8:	0055c603          	lbu	a2,5(a1)
    80008fbc:	00500713          	li	a4,5
    80008fc0:	00c782a3          	sb	a2,5(a5)
    80008fc4:	00e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fc8:	0065c703          	lbu	a4,6(a1)
    80008fcc:	00e78323          	sb	a4,6(a5)
    80008fd0:	00813403          	ld	s0,8(sp)
    80008fd4:	01010113          	addi	sp,sp,16
    80008fd8:	00008067          	ret
    80008fdc:	02061713          	slli	a4,a2,0x20
    80008fe0:	02075713          	srli	a4,a4,0x20
    80008fe4:	00e587b3          	add	a5,a1,a4
    80008fe8:	f0f574e3          	bgeu	a0,a5,80008ef0 <__memmove+0x1c>
    80008fec:	02069613          	slli	a2,a3,0x20
    80008ff0:	02065613          	srli	a2,a2,0x20
    80008ff4:	fff64613          	not	a2,a2
    80008ff8:	00e50733          	add	a4,a0,a4
    80008ffc:	00c78633          	add	a2,a5,a2
    80009000:	fff7c683          	lbu	a3,-1(a5)
    80009004:	fff78793          	addi	a5,a5,-1
    80009008:	fff70713          	addi	a4,a4,-1
    8000900c:	00d70023          	sb	a3,0(a4)
    80009010:	fec798e3          	bne	a5,a2,80009000 <__memmove+0x12c>
    80009014:	00813403          	ld	s0,8(sp)
    80009018:	01010113          	addi	sp,sp,16
    8000901c:	00008067          	ret
    80009020:	02069713          	slli	a4,a3,0x20
    80009024:	02075713          	srli	a4,a4,0x20
    80009028:	00170713          	addi	a4,a4,1
    8000902c:	00e50733          	add	a4,a0,a4
    80009030:	00050793          	mv	a5,a0
    80009034:	0005c683          	lbu	a3,0(a1)
    80009038:	00178793          	addi	a5,a5,1
    8000903c:	00158593          	addi	a1,a1,1
    80009040:	fed78fa3          	sb	a3,-1(a5)
    80009044:	fee798e3          	bne	a5,a4,80009034 <__memmove+0x160>
    80009048:	f89ff06f          	j	80008fd0 <__memmove+0xfc>
	...
