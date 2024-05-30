
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e3013103          	ld	sp,-464(sp) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7a1060ef          	jal	ra,80006fbc <start>

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
    80001080:	665010ef          	jal	ra,80002ee4 <_ZN5RiscV22handle_supervisor_trapEv>

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
    800016c4:	50078793          	addi	a5,a5,1280 # 8000cbc0 <_ZTV3Sem+0x10>
    800016c8:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads -> free();
    800016cc:	00853503          	ld	a0,8(a0)
    800016d0:	00002097          	auipc	ra,0x2
    800016d4:	d1c080e7          	jalr	-740(ra) # 800033ec <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	bd0080e7          	jalr	-1072(ra) # 800032b0 <_ZN10ThreadListdlEPv>
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
    80001718:	4ac78793          	addi	a5,a5,1196 # 8000cbc0 <_ZTV3Sem+0x10>
    8000171c:	00f53023          	sd	a5,0(a0)
    80001720:	00b52823          	sw	a1,16(a0)
    blocked_threads = new ThreadList();
    80001724:	01000513          	li	a0,16
    80001728:	00002097          	auipc	ra,0x2
    8000172c:	b58080e7          	jalr	-1192(ra) # 80003280 <_ZN10ThreadListnwEm>
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
    8000176c:	6e093903          	ld	s2,1760(s2) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    8000178c:	b80080e7          	jalr	-1152(ra) # 80003308 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	400080e7          	jalr	1024(ra) # 80002b90 <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	d78080e7          	jalr	-648(ra) # 8000351c <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	bbc080e7          	jalr	-1092(ra) # 80003398 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	09c080e7          	jalr	156(ra) # 80003894 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	318080e7          	jalr	792(ra) # 80002b20 <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	3d8080e7          	jalr	984(ra) # 80002bfc <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	9a0080e7          	jalr	-1632(ra) # 800031f0 <_ZN10ThreadList9get_firstEv>
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
    80001964:	4e87b783          	ld	a5,1256(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001968:	0007b903          	ld	s2,0(a5)
    thread -> timed_wait = true;
    8000196c:	00100793          	li	a5,1
    80001970:	04f90423          	sb	a5,72(s2)
    Scheduler::put_to_sleep(time);
    80001974:	00058513          	mv	a0,a1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	388080e7          	jalr	904(ra) # 80002d00 <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	268080e7          	jalr	616(ra) # 80002bfc <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	ef0080e7          	jalr	-272(ra) # 80003894 <_ZN3TCB21clear_from_timed_waitEb>
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
    80001ae0:	53c080e7          	jalr	1340(ra) # 8000e018 <_Unwind_Resume>

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
    80001b3c:	318080e7          	jalr	792(ra) # 80001e50 <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001b40:	0000b797          	auipc	a5,0xb
    80001b44:	2e07b783          	ld	a5,736(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b48:	0007b783          	ld	a5,0(a5)
    80001b4c:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001b50:	0000b797          	auipc	a5,0xb
    80001b54:	2b87b783          	ld	a5,696(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001b88:	bd0080e7          	jalr	-1072(ra) # 80006754 <_Z8userMainv>
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
    80001ca8:	1847b783          	ld	a5,388(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001cac:	10579073          	csrw	stvec,a5

    /// Initialization
    MemoryAllocator::initialize();
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	bf8080e7          	jalr	-1032(ra) # 800028a8 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	0a0080e7          	jalr	160(ra) # 80001d58 <_ZN3Con10initializeEv>

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
    80001cdc:	1707b783          	ld	a5,368(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80001d1c:	00c0006f          	j	80001d28 <main+0x94>
    while (!threads[2] -> is_finished() || !Con::isOutputBufferEmpty()) thread_dispatch();
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	6ac080e7          	jalr	1708(ra) # 800013cc <_Z15thread_dispatchv>
    80001d28:	fe843503          	ld	a0,-24(s0)
    80001d2c:	00002097          	auipc	ra,0x2
    80001d30:	b44080e7          	jalr	-1212(ra) # 80003870 <_ZNK3TCB11is_finishedEv>
    80001d34:	fe0506e3          	beqz	a0,80001d20 <main+0x8c>
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	1ac080e7          	jalr	428(ra) # 80001ee4 <_ZN3Con19isOutputBufferEmptyEv>
    80001d40:	fe0500e3          	beqz	a0,80001d20 <main+0x8c>

    return 0;
    80001d44:	00000513          	li	a0,0
    80001d48:	02813083          	ld	ra,40(sp)
    80001d4c:	02013403          	ld	s0,32(sp)
    80001d50:	03010113          	addi	sp,sp,48
    80001d54:	00008067          	ret

0000000080001d58 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d58:	0000b797          	auipc	a5,0xb
    80001d5c:	1487c783          	lbu	a5,328(a5) # 8000cea0 <_ZN3Con11initializedE>
    80001d60:	00078463          	beqz	a5,80001d68 <_ZN3Con10initializeEv+0x10>
    80001d64:	00008067          	ret
void Con::initialize() {
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	01213023          	sd	s2,0(sp)
    80001d7c:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d80:	00100793          	li	a5,1
    80001d84:	0000b717          	auipc	a4,0xb
    80001d88:	10f70e23          	sb	a5,284(a4) # 8000cea0 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d8c:	21000513          	li	a0,528
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	c38080e7          	jalr	-968(ra) # 800029c8 <_ZN13BoundedBuffernwEm>
    80001d98:	00050493          	mv	s1,a0
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	b94080e7          	jalr	-1132(ra) # 80002930 <_ZN13BoundedBufferC1Ev>
    80001da4:	0000b797          	auipc	a5,0xb
    80001da8:	1097b223          	sd	s1,260(a5) # 8000cea8 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001dac:	21000513          	li	a0,528
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	c18080e7          	jalr	-1000(ra) # 800029c8 <_ZN13BoundedBuffernwEm>
    80001db8:	00050493          	mv	s1,a0
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	b74080e7          	jalr	-1164(ra) # 80002930 <_ZN13BoundedBufferC1Ev>
    80001dc4:	0000b797          	auipc	a5,0xb
    80001dc8:	0e97b623          	sd	s1,236(a5) # 8000ceb0 <_ZN3Con13output_bufferE>
    }
}
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	00013903          	ld	s2,0(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    80001de4:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001de8:	00048513          	mv	a0,s1
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	c0c080e7          	jalr	-1012(ra) # 800029f8 <_ZN13BoundedBufferdlEPv>
    80001df4:	00090513          	mv	a0,s2
    80001df8:	0000c097          	auipc	ra,0xc
    80001dfc:	220080e7          	jalr	544(ra) # 8000e018 <_Unwind_Resume>
    80001e00:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e04:	00048513          	mv	a0,s1
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	bf0080e7          	jalr	-1040(ra) # 800029f8 <_ZN13BoundedBufferdlEPv>
    80001e10:	00090513          	mv	a0,s2
    80001e14:	0000c097          	auipc	ra,0xc
    80001e18:	204080e7          	jalr	516(ra) # 8000e018 <_Unwind_Resume>

0000000080001e1c <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
    80001e2c:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e30:	0000b517          	auipc	a0,0xb
    80001e34:	08053503          	ld	a0,128(a0) # 8000ceb0 <_ZN3Con13output_bufferE>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	be8080e7          	jalr	-1048(ra) # 80002a20 <_ZN13BoundedBuffer4putcEc>
}
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e60:	0000b517          	auipc	a0,0xb
    80001e64:	05053503          	ld	a0,80(a0) # 8000ceb0 <_ZN3Con13output_bufferE>
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	c24080e7          	jalr	-988(ra) # 80002a8c <_ZN13BoundedBuffer4getcEv>
}
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    80001e90:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e94:	0000b517          	auipc	a0,0xb
    80001e98:	01453503          	ld	a0,20(a0) # 8000cea8 <_ZN3Con12input_bufferE>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	b84080e7          	jalr	-1148(ra) # 80002a20 <_ZN13BoundedBuffer4putcEc>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001ec4:	0000b517          	auipc	a0,0xb
    80001ec8:	fe453503          	ld	a0,-28(a0) # 8000cea8 <_ZN3Con12input_bufferE>
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	bc0080e7          	jalr	-1088(ra) # 80002a8c <_ZN13BoundedBuffer4getcEv>
}
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN3Con19isOutputBufferEmptyEv>:

bool Con::isOutputBufferEmpty() {
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00113423          	sd	ra,8(sp)
    80001eec:	00813023          	sd	s0,0(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    return output_buffer -> isEmpty();
    80001ef4:	0000b517          	auipc	a0,0xb
    80001ef8:	fbc53503          	ld	a0,-68(a0) # 8000ceb0 <_ZN3Con13output_bufferE>
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	bfc080e7          	jalr	-1028(ra) # 80002af8 <_ZN13BoundedBuffer7isEmptyEv>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001f24:	01053783          	ld	a5,16(a0)
    80001f28:	00078e63          	beqz	a5,80001f44 <_ZN6Thread12start_helperEPv+0x30>
    else thread -> body(thread -> arg);
    80001f2c:	01853503          	ld	a0,24(a0)
    80001f30:	000780e7          	jalr	a5
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001f44:	00053783          	ld	a5,0(a0)
    80001f48:	0107b783          	ld	a5,16(a5)
    80001f4c:	000780e7          	jalr	a5
    80001f50:	fe5ff06f          	j	80001f34 <_ZN6Thread12start_helperEPv+0x20>

0000000080001f54 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	02010413          	addi	s0,sp,32
    80001f68:	00050493          	mv	s1,a0
    80001f6c:	0000b797          	auipc	a5,0xb
    80001f70:	c7c78793          	addi	a5,a5,-900 # 8000cbe8 <_ZTV6Thread+0x10>
    80001f74:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f78:	00853503          	ld	a0,8(a0)
    80001f7c:	00002097          	auipc	ra,0x2
    80001f80:	8f4080e7          	jalr	-1804(ra) # 80003870 <_ZNK3TCB11is_finishedEv>
    80001f84:	00050a63          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f88:	0084b503          	ld	a0,8(s1)
    80001f8c:	00050663          	beqz	a0,80001f98 <_ZN6ThreadD1Ev+0x44>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	7b4080e7          	jalr	1972(ra) # 80003744 <_ZN3TCBdlEPv>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this -> period = period;
}

void PeriodicThread::run() {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	02010413          	addi	s0,sp,32
    80001fc0:	00050493          	mv	s1,a0
    while (period != (time_t) -1) {
    80001fc4:	0204b703          	ld	a4,32(s1)
    80001fc8:	fff00793          	li	a5,-1
    80001fcc:	02f70263          	beq	a4,a5,80001ff0 <_ZN14PeriodicThread3runEv+0x44>
        periodicActivation();
    80001fd0:	0004b783          	ld	a5,0(s1)
    80001fd4:	0187b783          	ld	a5,24(a5)
    80001fd8:	00048513          	mv	a0,s1
    80001fdc:	000780e7          	jalr	a5
        time_sleep(period);
    80001fe0:	0204b503          	ld	a0,32(s1)
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	5f0080e7          	jalr	1520(ra) # 800015d4 <_Z10time_sleepm>
    while (period != (time_t) -1) {
    80001fec:	fd9ff06f          	j	80001fc4 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	00813483          	ld	s1,8(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret

0000000080002004 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002004:	0000b797          	auipc	a5,0xb
    80002008:	c0c78793          	addi	a5,a5,-1012 # 8000cc10 <_ZTV9Semaphore+0x10>
    8000200c:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80002010:	00853503          	ld	a0,8(a0)
    80002014:	02050663          	beqz	a0,80002040 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	430080e7          	jalr	1072(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret
    80002040:	00008067          	ret

0000000080002044 <_Znwm>:
void* operator new(size_t size){
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	204080e7          	jalr	516(ra) # 80001258 <_Z9mem_allocm>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZdlPv>:
void operator delete(void* p) noexcept {
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	230080e7          	jalr	560(ra) # 800012ac <_Z8mem_freePv>
}
    80002084:	00813083          	ld	ra,8(sp)
    80002088:	00013403          	ld	s0,0(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	02010413          	addi	s0,sp,32
    800020a8:	00050493          	mv	s1,a0
}
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	ea8080e7          	jalr	-344(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800020b4:	00048513          	mv	a0,s1
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	fb4080e7          	jalr	-76(ra) # 8000206c <_ZdlPv>
    800020c0:	01813083          	ld	ra,24(sp)
    800020c4:	01013403          	ld	s0,16(sp)
    800020c8:	00813483          	ld	s1,8(sp)
    800020cc:	02010113          	addi	sp,sp,32
    800020d0:	00008067          	ret

00000000800020d4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020d4:	fe010113          	addi	sp,sp,-32
    800020d8:	00113c23          	sd	ra,24(sp)
    800020dc:	00813823          	sd	s0,16(sp)
    800020e0:	00913423          	sd	s1,8(sp)
    800020e4:	02010413          	addi	s0,sp,32
    800020e8:	00050493          	mv	s1,a0
}
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	f18080e7          	jalr	-232(ra) # 80002004 <_ZN9SemaphoreD1Ev>
    800020f4:	00048513          	mv	a0,s1
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	f74080e7          	jalr	-140(ra) # 8000206c <_ZdlPv>
    80002100:	01813083          	ld	ra,24(sp)
    80002104:	01013403          	ld	s0,16(sp)
    80002108:	00813483          	ld	s1,8(sp)
    8000210c:	02010113          	addi	sp,sp,32
    80002110:	00008067          	ret

0000000080002114 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00813423          	sd	s0,8(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	0000b797          	auipc	a5,0xb
    80002124:	ac878793          	addi	a5,a5,-1336 # 8000cbe8 <_ZTV6Thread+0x10>
    80002128:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000212c:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002130:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80002134:	00c53c23          	sd	a2,24(a0)
}
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	0000b797          	auipc	a5,0xb
    80002154:	a9878793          	addi	a5,a5,-1384 # 8000cbe8 <_ZTV6Thread+0x10>
    80002158:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000215c:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80002160:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80002164:	00053c23          	sd	zero,24(a0)
}
    80002168:	00813403          	ld	s0,8(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN6Thread5startEv>:
int Thread::start() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80002184:	00050613          	mv	a2,a0
    80002188:	00000597          	auipc	a1,0x0
    8000218c:	d8c58593          	addi	a1,a1,-628 # 80001f14 <_ZN6Thread12start_helperEPv>
    80002190:	00850513          	addi	a0,a0,8
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	164080e7          	jalr	356(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000219c:	00813083          	ld	ra,8(sp)
    800021a0:	00013403          	ld	s0,0(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret

00000000800021ac <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	210080e7          	jalr	528(ra) # 800013cc <_Z15thread_dispatchv>
}
    800021c4:	00813083          	ld	ra,8(sp)
    800021c8:	00013403          	ld	s0,0(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	3f0080e7          	jalr	1008(ra) # 800015d4 <_Z10time_sleepm>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00113423          	sd	ra,8(sp)
    80002204:	00813023          	sd	s0,0(sp)
    80002208:	01010413          	addi	s0,sp,16
    8000220c:	0000b797          	auipc	a5,0xb
    80002210:	a0478793          	addi	a5,a5,-1532 # 8000cc10 <_ZTV9Semaphore+0x10>
    80002214:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002218:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    8000221c:	00850513          	addi	a0,a0,8
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	1e8080e7          	jalr	488(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002228:	00813083          	ld	ra,8(sp)
    8000222c:	00013403          	ld	s0,0(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <_ZN9Semaphore4waitEv>:
    if (myHandle) return sem_wait(myHandle);
    80002238:	00853503          	ld	a0,8(a0)
    8000223c:	02050663          	beqz	a0,80002268 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	254080e7          	jalr	596(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    80002258:	00813083          	ld	ra,8(sp)
    8000225c:	00013403          	ld	s0,0(sp)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret
    return -1;
    80002268:	fff00513          	li	a0,-1
}
    8000226c:	00008067          	ret

0000000080002270 <_ZN9Semaphore6signalEv>:
    if (myHandle) return sem_signal(myHandle);
    80002270:	00853503          	ld	a0,8(a0)
    80002274:	02050663          	beqz	a0,800022a0 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00113423          	sd	ra,8(sp)
    80002280:	00813023          	sd	s0,0(sp)
    80002284:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002288:	fffff097          	auipc	ra,0xfffff
    8000228c:	268080e7          	jalr	616(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80002290:	00813083          	ld	ra,8(sp)
    80002294:	00013403          	ld	s0,0(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret
    return -1;
    800022a0:	fff00513          	li	a0,-1
}
    800022a4:	00008067          	ret

00000000800022a8 <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t time) {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	00813023          	sd	s0,0(sp)
    800022b4:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800022b8:	00853503          	ld	a0,8(a0)
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	280080e7          	jalr	640(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800022c4:	00813083          	ld	ra,8(sp)
    800022c8:	00013403          	ld	s0,0(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00113423          	sd	ra,8(sp)
    800022dc:	00813023          	sd	s0,0(sp)
    800022e0:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800022e4:	00853503          	ld	a0,8(a0)
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	2a0080e7          	jalr	672(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret

0000000080002300 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002300:	ff010113          	addi	sp,sp,-16
    80002304:	00813423          	sd	s0,8(sp)
    80002308:	01010413          	addi	s0,sp,16
    period = (time_t) -1;
    8000230c:	fff00793          	li	a5,-1
    80002310:	02f53023          	sd	a5,32(a0)
}
    80002314:	00813403          	ld	s0,8(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	01213023          	sd	s2,0(sp)
    80002334:	02010413          	addi	s0,sp,32
    80002338:	00050493          	mv	s1,a0
    8000233c:	00058913          	mv	s2,a1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	e04080e7          	jalr	-508(ra) # 80002144 <_ZN6ThreadC1Ev>
    80002348:	0000b797          	auipc	a5,0xb
    8000234c:	8e878793          	addi	a5,a5,-1816 # 8000cc30 <_ZTV14PeriodicThread+0x10>
    80002350:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    80002354:	0324b023          	sd	s2,32(s1)
}
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	00013903          	ld	s2,0(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret

0000000080002370 <_ZN7Console4getcEv>:

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

    virtual void run() override;
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
    80002404:	83078793          	addi	a5,a5,-2000 # 8000cc30 <_ZTV14PeriodicThread+0x10>
    80002408:	00f53023          	sd	a5,0(a0)
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	b48080e7          	jalr	-1208(ra) # 80001f54 <_ZN6ThreadD1Ev>
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
    80002440:	7f478793          	addi	a5,a5,2036 # 8000cc30 <_ZTV14PeriodicThread+0x10>
    80002444:	00f53023          	sd	a5,0(a0)
    80002448:	00000097          	auipc	ra,0x0
    8000244c:	b0c080e7          	jalr	-1268(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80002450:	00048513          	mv	a0,s1
    80002454:	00000097          	auipc	ra,0x0
    80002458:	c18080e7          	jalr	-1000(ra) # 8000206c <_ZdlPv>
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
    800024b0:	a0b7b623          	sd	a1,-1524(a5) # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
    800024b4:	fd5ff06f          	j	80002488 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    800024b8:	0000b797          	auipc	a5,0xb
    800024bc:	a0b7b423          	sd	a1,-1528(a5) # 8000cec0 <_ZN15MemoryAllocator11usedSegHeadE>
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
    800024e8:	9d44b483          	ld	s1,-1580(s1) # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002520:	9a47b783          	ld	a5,-1628(a5) # 8000cec0 <_ZN15MemoryAllocator11usedSegHeadE>
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
    800025d8:	8e97b623          	sd	s1,-1812(a5) # 8000cec0 <_ZN15MemoryAllocator11usedSegHeadE>
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
    80002660:	7b47b783          	ld	a5,1972(a5) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002664:	0007b783          	ld	a5,0(a5)
    80002668:	12f56663          	bltu	a0,a5,80002794 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	7e47b783          	ld	a5,2020(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002674:	0007b783          	ld	a5,0(a5)
    80002678:	12a7e263          	bltu	a5,a0,8000279c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    8000267c:	0000b797          	auipc	a5,0xb
    80002680:	8447b783          	ld	a5,-1980(a5) # 8000cec0 <_ZN15MemoryAllocator11usedSegHeadE>
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
    800026cc:	7f07b783          	ld	a5,2032(a5) # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002748:	7697ba23          	sd	s1,1908(a5) # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002764:	75878793          	addi	a5,a5,1880 # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
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
    800027fc:	6c04b483          	ld	s1,1728(s1) # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
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
    80002840:	6844b483          	ld	s1,1668(s1) # 8000cec0 <_ZN15MemoryAllocator11usedSegHeadE>
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
    800028ac:	6207b783          	ld	a5,1568(a5) # 8000cec8 <_ZN15MemoryAllocator8instanceE>
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
    800028d0:	5447b783          	ld	a5,1348(a5) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x18>
    800028d4:	0007b783          	ld	a5,0(a5)
    800028d8:	0000a497          	auipc	s1,0xa
    800028dc:	5e048493          	addi	s1,s1,1504 # 8000ceb8 <_ZN15MemoryAllocator11freeSegHeadE>
    800028e0:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800028e4:	0000a717          	auipc	a4,0xa
    800028e8:	56c73703          	ld	a4,1388(a4) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x58>
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

0000000080002af8 <_ZN13BoundedBuffer7isEmptyEv>:

bool BoundedBuffer::isEmpty() {
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00813423          	sd	s0,8(sp)
    80002b00:	01010413          	addi	s0,sp,16
    return head == tail;
    80002b04:	00052783          	lw	a5,0(a0)
    80002b08:	00452503          	lw	a0,4(a0)
    80002b0c:	40f50533          	sub	a0,a0,a5
}
    80002b10:	00153513          	seqz	a0,a0
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN9Scheduler3putEP3TCB>:
TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

/// place thread in scheduler
void Scheduler::put(TCB *thread) {
    80002b20:	fe010113          	addi	sp,sp,-32
    80002b24:	00113c23          	sd	ra,24(sp)
    80002b28:	00813823          	sd	s0,16(sp)
    80002b2c:	00913423          	sd	s1,8(sp)
    80002b30:	02010413          	addi	s0,sp,32
    80002b34:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002b38:	0000a517          	auipc	a0,0xa
    80002b3c:	39853503          	ld	a0,920(a0) # 8000ced0 <_ZN9Scheduler10tail_readyE>
    80002b40:	02050e63          	beqz	a0,80002b7c <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002b44:	00048593          	mv	a1,s1
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	ad8080e7          	jalr	-1320(ra) # 80003620 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002b50:	0000a797          	auipc	a5,0xa
    80002b54:	3897b023          	sd	s1,896(a5) # 8000ced0 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002b58:	00000593          	li	a1,0
    80002b5c:	00048513          	mv	a0,s1
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	ac0080e7          	jalr	-1344(ra) # 80003620 <_ZN3TCB14set_next_readyEPS_>
}
    80002b68:	01813083          	ld	ra,24(sp)
    80002b6c:	01013403          	ld	s0,16(sp)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	02010113          	addi	sp,sp,32
    80002b78:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002b7c:	0000a797          	auipc	a5,0xa
    80002b80:	35478793          	addi	a5,a5,852 # 8000ced0 <_ZN9Scheduler10tail_readyE>
    80002b84:	0097b023          	sd	s1,0(a5)
    80002b88:	0097b423          	sd	s1,8(a5)
    80002b8c:	fcdff06f          	j	80002b58 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002b90 <_ZN9Scheduler3getEv>:

/// retrieve thread from scheduler
TCB* Scheduler::get() {
    80002b90:	fe010113          	addi	sp,sp,-32
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	00813823          	sd	s0,16(sp)
    80002b9c:	00913423          	sd	s1,8(sp)
    80002ba0:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002ba4:	0000a497          	auipc	s1,0xa
    80002ba8:	3344b483          	ld	s1,820(s1) # 8000ced8 <_ZN9Scheduler10head_readyE>
    80002bac:	02048663          	beqz	s1,80002bd8 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	a50080e7          	jalr	-1456(ra) # 80003604 <_ZNK3TCB14get_next_readyEv>
    80002bbc:	0000a797          	auipc	a5,0xa
    80002bc0:	30a7be23          	sd	a0,796(a5) # 8000ced8 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002bc4:	02050663          	beqz	a0,80002bf0 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002bc8:	00000593          	li	a1,0
    80002bcc:	00048513          	mv	a0,s1
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	a50080e7          	jalr	-1456(ra) # 80003620 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	01813083          	ld	ra,24(sp)
    80002be0:	01013403          	ld	s0,16(sp)
    80002be4:	00813483          	ld	s1,8(sp)
    80002be8:	02010113          	addi	sp,sp,32
    80002bec:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002bf0:	0000a797          	auipc	a5,0xa
    80002bf4:	2e07b023          	sd	zero,736(a5) # 8000ced0 <_ZN9Scheduler10tail_readyE>
    80002bf8:	fd1ff06f          	j	80002bc8 <_ZN9Scheduler3getEv+0x38>

0000000080002bfc <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    change_thread();
    return 0;
}

/// remove thread from sleeping list (used for timed wait)
int Scheduler::remove_from_sleep(TCB *thread) {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002c08:	06050863          	beqz	a0,80002c78 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002c0c:	0000a797          	auipc	a5,0xa
    80002c10:	2d47b783          	ld	a5,724(a5) # 8000cee0 <_ZN9Scheduler13head_sleepingE>
    80002c14:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002c18:	00078a63          	beqz	a5,80002c2c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002c1c:	00a78863          	beq	a5,a0,80002c2c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002c20:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002c24:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002c28:	ff1ff06f          	j	80002c18 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002c2c:	04078a63          	beqz	a5,80002c80 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002c30:	02070c63          	beqz	a4,80002c68 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002c34:	0587b683          	ld	a3,88(a5)
    80002c38:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002c3c:	0587b703          	ld	a4,88(a5)
    80002c40:	00070a63          	beqz	a4,80002c54 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002c44:	0507b603          	ld	a2,80(a5)
    80002c48:	05073683          	ld	a3,80(a4)
    80002c4c:	00c686b3          	add	a3,a3,a2
    80002c50:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002c54:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002c58:	00000513          	li	a0,0
}
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002c68:	0587b703          	ld	a4,88(a5)
    80002c6c:	0000a697          	auipc	a3,0xa
    80002c70:	26e6ba23          	sd	a4,628(a3) # 8000cee0 <_ZN9Scheduler13head_sleepingE>
    80002c74:	fc9ff06f          	j	80002c3c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002c78:	fff00513          	li	a0,-1
    80002c7c:	fe1ff06f          	j	80002c5c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002c80:	ffe00513          	li	a0,-2
    80002c84:	fd9ff06f          	j	80002c5c <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002c88 <_ZN9Scheduler13change_threadEv>:

/// dispatch, without putting running back in scheduler
void Scheduler::change_thread() {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002c9c:	0000a797          	auipc	a5,0xa
    80002ca0:	1ac7b783          	ld	a5,428(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ca4:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002ca8:	00100593          	li	a1,1
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	9fc080e7          	jalr	-1540(ra) # 800036ac <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002cb8:	0484c783          	lbu	a5,72(s1)
    80002cbc:	00078c63          	beqz	a5,80002cd4 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002cc0:	01813083          	ld	ra,24(sp)
    80002cc4:	01013403          	ld	s0,16(sp)
    80002cc8:	00813483          	ld	s1,8(sp)
    80002ccc:	02010113          	addi	sp,sp,32
    80002cd0:	00008067          	ret
        TCB::running = Scheduler::get();
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	ebc080e7          	jalr	-324(ra) # 80002b90 <_ZN9Scheduler3getEv>
    80002cdc:	00050593          	mv	a1,a0
    80002ce0:	0000a797          	auipc	a5,0xa
    80002ce4:	1687b783          	ld	a5,360(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ce8:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002cec:	fca48ae3          	beq	s1,a0,80002cc0 <_ZN9Scheduler13change_threadEv+0x38>
    80002cf0:	00048513          	mv	a0,s1
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	828080e7          	jalr	-2008(ra) # 8000351c <_ZN3TCB5yieldEPS_S0_>
}
    80002cfc:	fc5ff06f          	j	80002cc0 <_ZN9Scheduler13change_threadEv+0x38>

0000000080002d00 <_ZN9Scheduler12put_to_sleepEm>:
    if (time <= 0) return -1;
    80002d00:	18050a63          	beqz	a0,80002e94 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002d04:	fc010113          	addi	sp,sp,-64
    80002d08:	02113c23          	sd	ra,56(sp)
    80002d0c:	02813823          	sd	s0,48(sp)
    80002d10:	02913423          	sd	s1,40(sp)
    80002d14:	03213023          	sd	s2,32(sp)
    80002d18:	01313c23          	sd	s3,24(sp)
    80002d1c:	01413823          	sd	s4,16(sp)
    80002d20:	01513423          	sd	s5,8(sp)
    80002d24:	04010413          	addi	s0,sp,64
    80002d28:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002d2c:	0000a797          	auipc	a5,0xa
    80002d30:	11c7b783          	ld	a5,284(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d34:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002d38:	0000a497          	auipc	s1,0xa
    80002d3c:	1a84b483          	ld	s1,424(s1) # 8000cee0 <_ZN9Scheduler13head_sleepingE>
    80002d40:	02048e63          	beqz	s1,80002d7c <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002d44:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002d48:	00000a13          	li	s4,0
    while (tmp) {
    80002d4c:	0e048463          	beqz	s1,80002e34 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	93c080e7          	jalr	-1732(ra) # 80003690 <_ZNK3TCB17get_time_to_sleepEv>
    80002d5c:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002d60:	0529ea63          	bltu	s3,s2,80002db4 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002d64:	00048513          	mv	a0,s1
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	8f0080e7          	jalr	-1808(ra) # 80003658 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002d70:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002d74:	00050493          	mv	s1,a0
    while (tmp) {
    80002d78:	fd5ff06f          	j	80002d4c <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002d7c:	0000a797          	auipc	a5,0xa
    80002d80:	1757b223          	sd	s5,356(a5) # 8000cee0 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002d84:	00000593          	li	a1,0
    80002d88:	000a8513          	mv	a0,s5
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	8b0080e7          	jalr	-1872(ra) # 8000363c <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002d94:	00098593          	mv	a1,s3
    80002d98:	000a8513          	mv	a0,s5
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	8d8080e7          	jalr	-1832(ra) # 80003674 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	ee4080e7          	jalr	-284(ra) # 80002c88 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002dac:	00000513          	li	a0,0
    80002db0:	0c00006f          	j	80002e70 <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	8d8080e7          	jalr	-1832(ra) # 80003690 <_ZNK3TCB17get_time_to_sleepEv>
    80002dc0:	41250933          	sub	s2,a0,s2
    80002dc4:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002dc8:	00098593          	mv	a1,s3
    80002dcc:	000a8513          	mv	a0,s5
    80002dd0:	00001097          	auipc	ra,0x1
    80002dd4:	8a4080e7          	jalr	-1884(ra) # 80003674 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002dd8:	00048593          	mv	a1,s1
    80002ddc:	000a8513          	mv	a0,s5
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	85c080e7          	jalr	-1956(ra) # 8000363c <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002de8:	040a0063          	beqz	s4,80002e28 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002dec:	000a8593          	mv	a1,s5
    80002df0:	000a0513          	mv	a0,s4
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	848080e7          	jalr	-1976(ra) # 8000363c <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002dfc:	00048513          	mv	a0,s1
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	890080e7          	jalr	-1904(ra) # 80003690 <_ZNK3TCB17get_time_to_sleepEv>
    80002e08:	413505b3          	sub	a1,a0,s3
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	864080e7          	jalr	-1948(ra) # 80003674 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	e70080e7          	jalr	-400(ra) # 80002c88 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002e20:	00000513          	li	a0,0
    80002e24:	04c0006f          	j	80002e70 <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002e28:	0000a797          	auipc	a5,0xa
    80002e2c:	0b57bc23          	sd	s5,184(a5) # 8000cee0 <_ZN9Scheduler13head_sleepingE>
    80002e30:	fcdff06f          	j	80002dfc <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002e34:	412985b3          	sub	a1,s3,s2
    80002e38:	000a8513          	mv	a0,s5
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	838080e7          	jalr	-1992(ra) # 80003674 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002e44:	000a8593          	mv	a1,s5
    80002e48:	000a0513          	mv	a0,s4
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	7f0080e7          	jalr	2032(ra) # 8000363c <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002e54:	00000593          	li	a1,0
    80002e58:	000a8513          	mv	a0,s5
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	7e0080e7          	jalr	2016(ra) # 8000363c <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	e24080e7          	jalr	-476(ra) # 80002c88 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002e6c:	00000513          	li	a0,0
}
    80002e70:	03813083          	ld	ra,56(sp)
    80002e74:	03013403          	ld	s0,48(sp)
    80002e78:	02813483          	ld	s1,40(sp)
    80002e7c:	02013903          	ld	s2,32(sp)
    80002e80:	01813983          	ld	s3,24(sp)
    80002e84:	01013a03          	ld	s4,16(sp)
    80002e88:	00813a83          	ld	s5,8(sp)
    80002e8c:	04010113          	addi	sp,sp,64
    80002e90:	00008067          	ret
    if (time <= 0) return -1;
    80002e94:	fff00513          	li	a0,-1
}
    80002e98:	00008067          	ret

0000000080002e9c <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00813423          	sd	s0,8(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002ea8:	0000a797          	auipc	a5,0xa
    80002eac:	fa07b783          	ld	a5,-96(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002eb0:	0007b783          	ld	a5,0(a5)
    80002eb4:	0287b783          	ld	a5,40(a5)
    80002eb8:	00078c63          	beqz	a5,80002ed0 <_ZN5RiscV10popSppSpieEv+0x34>
    80002ebc:	0000a717          	auipc	a4,0xa
    80002ec0:	f8473703          	ld	a4,-124(a4) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002ec4:	00e78663          	beq	a5,a4,80002ed0 <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002ec8:	10000793          	li	a5,256
    80002ecc:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002ed0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ed4:	10200073          	sret
}
    80002ed8:	00813403          	ld	s0,8(sp)
    80002edc:	01010113          	addi	sp,sp,16
    80002ee0:	00008067          	ret

0000000080002ee4 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002ee4:	f9010113          	addi	sp,sp,-112
    80002ee8:	06113423          	sd	ra,104(sp)
    80002eec:	06813023          	sd	s0,96(sp)
    80002ef0:	04913c23          	sd	s1,88(sp)
    80002ef4:	05213823          	sd	s2,80(sp)
    80002ef8:	05313423          	sd	s3,72(sp)
    80002efc:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002f00:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002f04:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002f08:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002f0c:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002f10:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002f14:	14202773          	csrr	a4,scause
    80002f18:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002f1c:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002f20:	ff870893          	addi	a7,a4,-8
    80002f24:	00100813          	li	a6,1
    80002f28:	07187063          	bgeu	a6,a7,80002f88 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002f2c:	fff00793          	li	a5,-1
    80002f30:	03f79793          	slli	a5,a5,0x3f
    80002f34:	00178793          	addi	a5,a5,1
    80002f38:	16f70063          	beq	a4,a5,80003098 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002f3c:	fff00793          	li	a5,-1
    80002f40:	03f79793          	slli	a5,a5,0x3f
    80002f44:	00978793          	addi	a5,a5,9
    80002f48:	22f70463          	beq	a4,a5,80003170 <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002f4c:	00070513          	mv	a0,a4
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	c4c080e7          	jalr	-948(ra) # 80001b9c <_Z11printNumberm>
        putc('!');
    80002f58:	02100513          	li	a0,33
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	710080e7          	jalr	1808(ra) # 8000166c <_Z4putcc>
        putc('?');
    80002f64:	03f00513          	li	a0,63
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	704080e7          	jalr	1796(ra) # 8000166c <_Z4putcc>
        putc('!');
    80002f70:	02100513          	li	a0,33
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	6f8080e7          	jalr	1784(ra) # 8000166c <_Z4putcc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002f7c:	00100793          	li	a5,1
    80002f80:	00078513          	mv	a0,a5
    }
    80002f84:	0540006f          	j	80002fd8 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002f88:	14102773          	csrr	a4,sepc
    80002f8c:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002f90:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002f94:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002f98:	10002773          	csrr	a4,sstatus
    80002f9c:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002fa0:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002fa4:	04200713          	li	a4,66
    80002fa8:	02f76463          	bltu	a4,a5,80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002fac:	00279793          	slli	a5,a5,0x2
    80002fb0:	00007717          	auipc	a4,0x7
    80002fb4:	07070713          	addi	a4,a4,112 # 8000a020 <CONSOLE_STATUS+0x10>
    80002fb8:	00e787b3          	add	a5,a5,a4
    80002fbc:	0007a783          	lw	a5,0(a5)
    80002fc0:	00e787b3          	add	a5,a5,a4
    80002fc4:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	4fc080e7          	jalr	1276(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002fd0:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002fd4:	10091073          	csrw	sstatus,s2
    80002fd8:	06813083          	ld	ra,104(sp)
    80002fdc:	06013403          	ld	s0,96(sp)
    80002fe0:	05813483          	ld	s1,88(sp)
    80002fe4:	05013903          	ld	s2,80(sp)
    80002fe8:	04813983          	ld	s3,72(sp)
    80002fec:	07010113          	addi	sp,sp,112
    80002ff0:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	644080e7          	jalr	1604(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002ffc:	fd5ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80003000:	00000097          	auipc	ra,0x0
    80003004:	76c080e7          	jalr	1900(ra) # 8000376c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80003008:	fc9ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	6bc080e7          	jalr	1724(ra) # 800036c8 <_ZN3TCB11thread_exitEv>
                break;
    80003014:	fbdff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	560080e7          	jalr	1376(ra) # 80003578 <_ZN3TCB8dispatchEv>
                break;
    80003020:	fb1ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80003024:	0005859b          	sext.w	a1,a1
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	a30080e7          	jalr	-1488(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80003030:	fa1ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	7fc080e7          	jalr	2044(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    8000303c:	f95ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	85c080e7          	jalr	-1956(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    80003048:	f89ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	8a4080e7          	jalr	-1884(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    80003054:	f7dff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	8ec080e7          	jalr	-1812(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    80003060:	f71ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	964080e7          	jalr	-1692(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    8000306c:	f65ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    80003070:	00000097          	auipc	ra,0x0
    80003074:	c90080e7          	jalr	-880(ra) # 80002d00 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80003078:	f59ff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	e38080e7          	jalr	-456(ra) # 80001eb4 <_ZN3Con10getc_inputEv>
                break;
    80003084:	f4dff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80003088:	0ff57513          	andi	a0,a0,255
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	d90080e7          	jalr	-624(ra) # 80001e1c <_ZN3Con11putc_outputEc>
                break;
    80003094:	f3dff06f          	j	80002fd0 <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80003098:	00200793          	li	a5,2
    8000309c:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    800030a0:	0000a797          	auipc	a5,0xa
    800030a4:	d787b783          	ld	a5,-648(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x20>
    800030a8:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    800030ac:	06048263          	beqz	s1,80003110 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    800030b0:	0504b783          	ld	a5,80(s1)
    800030b4:	fff78793          	addi	a5,a5,-1
    800030b8:	04f4b823          	sd	a5,80(s1)
    800030bc:	03c0006f          	j	800030f8 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    800030c0:	00100593          	li	a1,1
    800030c4:	00048513          	mv	a0,s1
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	7cc080e7          	jalr	1996(ra) # 80003894 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    800030d0:	00048513          	mv	a0,s1
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	a4c080e7          	jalr	-1460(ra) # 80002b20 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    800030dc:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    800030e0:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    800030e4:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    800030e8:	0000a717          	auipc	a4,0xa
    800030ec:	d3073703          	ld	a4,-720(a4) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x20>
    800030f0:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    800030f4:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    800030f8:	00048c63          	beqz	s1,80003110 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    800030fc:	0504b783          	ld	a5,80(s1)
    80003100:	00079863          	bnez	a5,80003110 <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003104:	0484c783          	lbu	a5,72(s1)
    80003108:	fc0784e3          	beqz	a5,800030d0 <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    8000310c:	fb5ff06f          	j	800030c0 <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    80003110:	0000a717          	auipc	a4,0xa
    80003114:	d2873703          	ld	a4,-728(a4) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003118:	00073783          	ld	a5,0(a4)
    8000311c:	00178793          	addi	a5,a5,1
    80003120:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80003124:	0000a717          	auipc	a4,0xa
    80003128:	d2473703          	ld	a4,-732(a4) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000312c:	00073703          	ld	a4,0(a4)
    80003130:	00073703          	ld	a4,0(a4)
    80003134:	eae7e2e3          	bltu	a5,a4,80002fd8 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003138:	141027f3          	csrr	a5,sepc
    8000313c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80003140:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80003144:	100027f3          	csrr	a5,sstatus
    80003148:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    8000314c:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    80003150:	0000a797          	auipc	a5,0xa
    80003154:	ce87b783          	ld	a5,-792(a5) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003158:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	41c080e7          	jalr	1052(ra) # 80003578 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003164:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003168:	14149073          	csrw	sepc,s1
}
    8000316c:	e6dff06f          	j	80002fd8 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003170:	141027f3          	csrr	a5,sepc
    80003174:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003178:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000317c:	100027f3          	csrr	a5,sstatus
    80003180:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003184:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    80003188:	00004097          	auipc	ra,0x4
    8000318c:	68c080e7          	jalr	1676(ra) # 80007814 <plic_claim>
    80003190:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80003194:	00a00793          	li	a5,10
    80003198:	02f50263          	beq	a0,a5,800031bc <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    8000319c:	00048513          	mv	a0,s1
    800031a0:	00004097          	auipc	ra,0x4
    800031a4:	6ac080e7          	jalr	1708(ra) # 8000784c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    800031a8:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    800031ac:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    800031b0:	20000793          	li	a5,512
    800031b4:	1447b073          	csrc	sip,a5
}
    800031b8:	e21ff06f          	j	80002fd8 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800031bc:	0000a797          	auipc	a5,0xa
    800031c0:	c4c7b783          	ld	a5,-948(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x10>
    800031c4:	0007b783          	ld	a5,0(a5)
    800031c8:	0007c783          	lbu	a5,0(a5)
    800031cc:	0017f793          	andi	a5,a5,1
    800031d0:	fc0786e3          	beqz	a5,8000319c <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    800031d4:	0000a797          	auipc	a5,0xa
    800031d8:	c2c7b783          	ld	a5,-980(a5) # 8000ce00 <_GLOBAL_OFFSET_TABLE_+0x8>
    800031dc:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    800031e0:	0007c503          	lbu	a0,0(a5)
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	c9c080e7          	jalr	-868(ra) # 80001e80 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    800031ec:	fd1ff06f          	j	800031bc <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

00000000800031f0 <_ZN10ThreadList9get_firstEv>:
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813423          	sd	s0,8(sp)
    800031f8:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    800031fc:	00053503          	ld	a0,0(a0)
    80003200:	00050463          	beqz	a0,80003208 <_ZN10ThreadList9get_firstEv+0x18>
    80003204:	00053503          	ld	a0,0(a0)
}
    80003208:	00813403          	ld	s0,8(sp)
    8000320c:	01010113          	addi	sp,sp,16
    80003210:	00008067          	ret

0000000080003214 <_ZN10ThreadList6removeEP3TCB>:
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00813423          	sd	s0,8(sp)
    8000321c:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80003220:	04058863          	beqz	a1,80003270 <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    80003224:	00053783          	ld	a5,0(a0)
    80003228:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    8000322c:	00078c63          	beqz	a5,80003244 <_ZN10ThreadList6removeEP3TCB+0x30>
    80003230:	0007b703          	ld	a4,0(a5)
    80003234:	00b70863          	beq	a4,a1,80003244 <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    80003238:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    8000323c:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    80003240:	fedff06f          	j	8000322c <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    80003244:	02078a63          	beqz	a5,80003278 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    80003248:	00068e63          	beqz	a3,80003264 <_ZN10ThreadList6removeEP3TCB+0x50>
    8000324c:	0087b783          	ld	a5,8(a5)
    80003250:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    80003254:	00000513          	li	a0,0
}
    80003258:	00813403          	ld	s0,8(sp)
    8000325c:	01010113          	addi	sp,sp,16
    80003260:	00008067          	ret
    else head = tmp;
    80003264:	00f53023          	sd	a5,0(a0)
    return 0;
    80003268:	00000513          	li	a0,0
    8000326c:	fedff06f          	j	80003258 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    80003270:	fff00513          	li	a0,-1
    80003274:	fe5ff06f          	j	80003258 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    80003278:	ffe00513          	li	a0,-2
    8000327c:	fddff06f          	j	80003258 <_ZN10ThreadList6removeEP3TCB+0x44>

0000000080003280 <_ZN10ThreadListnwEm>:
/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    80003280:	ff010113          	addi	sp,sp,-16
    80003284:	00113423          	sd	ra,8(sp)
    80003288:	00813023          	sd	s0,0(sp)
    8000328c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	5f8080e7          	jalr	1528(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	22c080e7          	jalr	556(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800032a0:	00813083          	ld	ra,8(sp)
    800032a4:	00013403          	ld	s0,0(sp)
    800032a8:	01010113          	addi	sp,sp,16
    800032ac:	00008067          	ret

00000000800032b0 <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	378080e7          	jalr	888(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800032c8:	00813083          	ld	ra,8(sp)
    800032cc:	00013403          	ld	s0,0(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    800032d8:	ff010113          	addi	sp,sp,-16
    800032dc:	00113423          	sd	ra,8(sp)
    800032e0:	00813023          	sd	s0,0(sp)
    800032e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	5a0080e7          	jalr	1440(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	1d4080e7          	jalr	468(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    800032f8:	00813083          	ld	ra,8(sp)
    800032fc:	00013403          	ld	s0,0(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003308:	fe010113          	addi	sp,sp,-32
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	01213023          	sd	s2,0(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	00050493          	mv	s1,a0
    80003324:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003328:	01000513          	li	a0,16
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	fac080e7          	jalr	-84(ra) # 800032d8 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003334:	01253023          	sd	s2,0(a0)
    80003338:	00053423          	sd	zero,8(a0)
    8000333c:	0004b783          	ld	a5,0(s1)
    80003340:	02078463          	beqz	a5,80003368 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003344:	0084b783          	ld	a5,8(s1)
    80003348:	00a7b423          	sd	a0,8(a5)
    8000334c:	00a4b423          	sd	a0,8(s1)
}
    80003350:	01813083          	ld	ra,24(sp)
    80003354:	01013403          	ld	s0,16(sp)
    80003358:	00813483          	ld	s1,8(sp)
    8000335c:	00013903          	ld	s2,0(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003368:	00a4b023          	sd	a0,0(s1)
    8000336c:	fe1ff06f          	j	8000334c <_ZN10ThreadList9push_backEP3TCB+0x44>

0000000080003370 <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00113423          	sd	ra,8(sp)
    80003378:	00813023          	sd	s0,0(sp)
    8000337c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	2b8080e7          	jalr	696(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003388:	00813083          	ld	ra,8(sp)
    8000338c:	00013403          	ld	s0,0(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	02010413          	addi	s0,sp,32
    800033ac:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    800033b0:	00053503          	ld	a0,0(a0)
    800033b4:	02050863          	beqz	a0,800033e4 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    800033b8:	00053483          	ld	s1,0(a0)
    head = head -> next;
    800033bc:	00853703          	ld	a4,8(a0)
    800033c0:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	fac080e7          	jalr	-84(ra) # 80003370 <_ZN10ThreadList4NodedlEPv>
}
    800033cc:	00048513          	mv	a0,s1
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret
    if (!head) return nullptr;
    800033e4:	00050493          	mv	s1,a0
    800033e8:	fe5ff06f          	j	800033cc <_ZN10ThreadList12remove_firstEv+0x34>

00000000800033ec <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00113c23          	sd	ra,24(sp)
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	02010413          	addi	s0,sp,32
    80003400:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003404:	00048513          	mv	a0,s1
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	de8080e7          	jalr	-536(ra) # 800031f0 <_ZN10ThreadList9get_firstEv>
    80003410:	00050a63          	beqz	a0,80003424 <_ZN10ThreadList4freeEv+0x38>
    80003414:	00048513          	mv	a0,s1
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	f80080e7          	jalr	-128(ra) # 80003398 <_ZN10ThreadList12remove_firstEv>
    80003420:	fe5ff06f          	j	80003404 <_ZN10ThreadList4freeEv+0x18>
}
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	02010113          	addi	sp,sp,32
    80003434:	00008067          	ret

0000000080003438 <_ZN3TCB16wrapper_functionEv>:
    running -> set_status(Status::FINISHED);
    dispatch();
    return 0;
}

void TCB::wrapper_function() {
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	a54080e7          	jalr	-1452(ra) # 80002e9c <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003450:	0000a717          	auipc	a4,0xa
    80003454:	a9873703          	ld	a4,-1384(a4) # 8000cee8 <_ZN3TCB7runningE>
    80003458:	02873783          	ld	a5,40(a4)
    8000345c:	00078663          	beqz	a5,80003468 <_ZN3TCB16wrapper_functionEv+0x30>
    80003460:	03073503          	ld	a0,48(a4)
    80003464:	000780e7          	jalr	a5
    ::thread_exit();
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	f18080e7          	jalr	-232(ra) # 80001380 <_Z11thread_exitv>
}
    80003470:	00813083          	ld	ra,8(sp)
    80003474:	00013403          	ld	s0,0(sp)
    80003478:	01010113          	addi	sp,sp,16
    8000347c:	00008067          	ret

0000000080003480 <_ZN3TCBC1EPFvPvES0_S0_>:
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003480:	08068863          	beqz	a3,80003510 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    80003484:	000017b7          	lui	a5,0x1
    80003488:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    8000348c:	00f687b3          	add	a5,a3,a5
    context = {
    80003490:	00000717          	auipc	a4,0x0
    80003494:	fa870713          	addi	a4,a4,-88 # 80003438 <_ZN3TCB16wrapper_functionEv>
    80003498:	00e53823          	sd	a4,16(a0)
    8000349c:	00f53c23          	sd	a5,24(a0)
    id = cnt++;
    800034a0:	0000a717          	auipc	a4,0xa
    800034a4:	a4870713          	addi	a4,a4,-1464 # 8000cee8 <_ZN3TCB7runningE>
    800034a8:	00872783          	lw	a5,8(a4)
    800034ac:	0017881b          	addiw	a6,a5,1
    800034b0:	01072423          	sw	a6,8(a4)
    800034b4:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    800034b8:	00200793          	li	a5,2
    800034bc:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    800034c0:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    800034c4:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    800034c8:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    800034cc:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    800034d0:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    800034d4:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    800034d8:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800034dc:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    800034e0:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    800034e4:	02058a63          	beqz	a1,80003518 <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	628080e7          	jalr	1576(ra) # 80002b20 <_ZN9Scheduler3putEP3TCB>
}
    80003500:	00813083          	ld	ra,8(sp)
    80003504:	00013403          	ld	s0,0(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003510:	00000793          	li	a5,0
    80003514:	f7dff06f          	j	80003490 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003518:	00008067          	ret

000000008000351c <_ZN3TCB5yieldEPS_S0_>:

void TCB::yield(TCB *old_running, TCB *new_running) {
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00113c23          	sd	ra,24(sp)
    80003524:	00813823          	sd	s0,16(sp)
    80003528:	00913423          	sd	s1,8(sp)
    8000352c:	01213023          	sd	s2,0(sp)
    80003530:	02010413          	addi	s0,sp,32
    80003534:	00050493          	mv	s1,a0
    80003538:	00058913          	mv	s2,a1
    RiscV::push_registers();
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	bcc080e7          	jalr	-1076(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003544:	01248a63          	beq	s1,s2,80003558 <_ZN3TCB5yieldEPS_S0_+0x3c>
    80003548:	01090593          	addi	a1,s2,16
    8000354c:	01048513          	addi	a0,s1,16
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	cb8080e7          	jalr	-840(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	c30080e7          	jalr	-976(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	00013903          	ld	s2,0(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	02010413          	addi	s0,sp,32
    TCB* old = running;
    8000358c:	0000a497          	auipc	s1,0xa
    80003590:	95c4b483          	ld	s1,-1700(s1) # 8000cee8 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003594:	0204a783          	lw	a5,32(s1)
    80003598:	04078663          	beqz	a5,800035e4 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    8000359c:	00300713          	li	a4,3
    800035a0:	04e78a63          	beq	a5,a4,800035f4 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    800035a4:	fffff097          	auipc	ra,0xfffff
    800035a8:	5ec080e7          	jalr	1516(ra) # 80002b90 <_ZN9Scheduler3getEv>
    800035ac:	00050593          	mv	a1,a0
    800035b0:	0000a797          	auipc	a5,0xa
    800035b4:	93878793          	addi	a5,a5,-1736 # 8000cee8 <_ZN3TCB7runningE>
    800035b8:	00a7b023          	sd	a0,0(a5)
    time_slice_counter = 0;
    800035bc:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    800035c0:	00a48863          	beq	s1,a0,800035d0 <_ZN3TCB8dispatchEv+0x58>
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	f54080e7          	jalr	-172(ra) # 8000351c <_ZN3TCB5yieldEPS_S0_>
}
    800035d0:	01813083          	ld	ra,24(sp)
    800035d4:	01013403          	ld	s0,16(sp)
    800035d8:	00813483          	ld	s1,8(sp)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800035e4:	00048513          	mv	a0,s1
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	538080e7          	jalr	1336(ra) # 80002b20 <_ZN9Scheduler3putEP3TCB>
    800035f0:	fb5ff06f          	j	800035a4 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800035f4:	0384b503          	ld	a0,56(s1)
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	040080e7          	jalr	64(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
    80003600:	fa5ff06f          	j	800035a4 <_ZN3TCB8dispatchEv+0x2c>

0000000080003604 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00813423          	sd	s0,8(sp)
    8000360c:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003610:	04053503          	ld	a0,64(a0)
    80003614:	00813403          	ld	s0,8(sp)
    80003618:	01010113          	addi	sp,sp,16
    8000361c:	00008067          	ret

0000000080003620 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00813423          	sd	s0,8(sp)
    80003628:	01010413          	addi	s0,sp,16
    next_ready = next;
    8000362c:	04b53023          	sd	a1,64(a0)
}
    80003630:	00813403          	ld	s0,8(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00813423          	sd	s0,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    80003648:	04b53c23          	sd	a1,88(a0)
}
    8000364c:	00813403          	ld	s0,8(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003664:	05853503          	ld	a0,88(a0)
    80003668:	00813403          	ld	s0,8(sp)
    8000366c:	01010113          	addi	sp,sp,16
    80003670:	00008067          	ret

0000000080003674 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00813423          	sd	s0,8(sp)
    8000367c:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003680:	04b53823          	sd	a1,80(a0)
}
    80003684:	00813403          	ld	s0,8(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret

0000000080003690 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    80003690:	ff010113          	addi	sp,sp,-16
    80003694:	00813423          	sd	s0,8(sp)
    80003698:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    8000369c:	05053503          	ld	a0,80(a0)
    800036a0:	00813403          	ld	s0,8(sp)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00813423          	sd	s0,8(sp)
    800036b4:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800036b8:	02b52023          	sw	a1,32(a0)
}
    800036bc:	00813403          	ld	s0,8(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret

00000000800036c8 <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    800036c8:	0000a517          	auipc	a0,0xa
    800036cc:	82053503          	ld	a0,-2016(a0) # 8000cee8 <_ZN3TCB7runningE>
    800036d0:	02050e63          	beqz	a0,8000370c <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00113423          	sd	ra,8(sp)
    800036dc:	00813023          	sd	s0,0(sp)
    800036e0:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800036e4:	00300593          	li	a1,3
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	fc4080e7          	jalr	-60(ra) # 800036ac <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	e88080e7          	jalr	-376(ra) # 80003578 <_ZN3TCB8dispatchEv>
    return 0;
    800036f8:	00000513          	li	a0,0
}
    800036fc:	00813083          	ld	ra,8(sp)
    80003700:	00013403          	ld	s0,0(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret
    if (!running) return -1;
    8000370c:	fff00513          	li	a0,-1
}
    80003710:	00008067          	ret

0000000080003714 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00113423          	sd	ra,8(sp)
    8000371c:	00813023          	sd	s0,0(sp)
    80003720:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	164080e7          	jalr	356(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	d98080e7          	jalr	-616(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	ee4080e7          	jalr	-284(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000375c:	00813083          	ld	ra,8(sp)
    80003760:	00013403          	ld	s0,0(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret

000000008000376c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    8000376c:	fc010113          	addi	sp,sp,-64
    80003770:	02113c23          	sd	ra,56(sp)
    80003774:	02813823          	sd	s0,48(sp)
    80003778:	02913423          	sd	s1,40(sp)
    8000377c:	03213023          	sd	s2,32(sp)
    80003780:	01313c23          	sd	s3,24(sp)
    80003784:	01413823          	sd	s4,16(sp)
    80003788:	01513423          	sd	s5,8(sp)
    8000378c:	04010413          	addi	s0,sp,64
    80003790:	00050913          	mv	s2,a0
    80003794:	00058993          	mv	s3,a1
    80003798:	00060a13          	mv	s4,a2
    8000379c:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    800037a0:	06800513          	li	a0,104
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	f70080e7          	jalr	-144(ra) # 80003714 <_ZN3TCBnwEm>
    800037ac:	00050493          	mv	s1,a0
    800037b0:	000a8693          	mv	a3,s5
    800037b4:	000a0613          	mv	a2,s4
    800037b8:	00098593          	mv	a1,s3
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	cc4080e7          	jalr	-828(ra) # 80003480 <_ZN3TCBC1EPFvPvES0_S0_>
    800037c4:	00993023          	sd	s1,0(s2)
    if (!*handle) return -1;
    800037c8:	02048663          	beqz	s1,800037f4 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x88>
    return 0;
    800037cc:	00000513          	li	a0,0
}
    800037d0:	03813083          	ld	ra,56(sp)
    800037d4:	03013403          	ld	s0,48(sp)
    800037d8:	02813483          	ld	s1,40(sp)
    800037dc:	02013903          	ld	s2,32(sp)
    800037e0:	01813983          	ld	s3,24(sp)
    800037e4:	01013a03          	ld	s4,16(sp)
    800037e8:	00813a83          	ld	s5,8(sp)
    800037ec:	04010113          	addi	sp,sp,64
    800037f0:	00008067          	ret
    if (!*handle) return -1;
    800037f4:	fff00513          	li	a0,-1
    800037f8:	fd9ff06f          	j	800037d0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x64>
    800037fc:	00050913          	mv	s2,a0
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003800:	00048513          	mv	a0,s1
    80003804:	00000097          	auipc	ra,0x0
    80003808:	f40080e7          	jalr	-192(ra) # 80003744 <_ZN3TCBdlEPv>
    8000380c:	00090513          	mv	a0,s2
    80003810:	0000b097          	auipc	ra,0xb
    80003814:	808080e7          	jalr	-2040(ra) # 8000e018 <_Unwind_Resume>

0000000080003818 <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	060080e7          	jalr	96(ra) # 80002888 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003830:	fffff097          	auipc	ra,0xfffff
    80003834:	c94080e7          	jalr	-876(ra) # 800024c4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003838:	00813083          	ld	ra,8(sp)
    8000383c:	00013403          	ld	s0,0(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00113423          	sd	ra,8(sp)
    80003850:	00813023          	sd	s0,0(sp)
    80003854:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	de0080e7          	jalr	-544(ra) # 80002638 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003860:	00813083          	ld	ra,8(sp)
    80003864:	00013403          	ld	s0,0(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret

0000000080003870 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813423          	sd	s0,8(sp)
    80003878:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    8000387c:	02052503          	lw	a0,32(a0)
    80003880:	ffd50513          	addi	a0,a0,-3
}
    80003884:	00153513          	seqz	a0,a0
    80003888:	00813403          	ld	s0,8(sp)
    8000388c:	01010113          	addi	sp,sp,16
    80003890:	00008067          	ret

0000000080003894 <_ZN3TCB21clear_from_timed_waitEb>:

/// reset state after timed wait
void TCB::clear_from_timed_wait(bool removed_from_timer) {
    80003894:	fe010113          	addi	sp,sp,-32
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00813823          	sd	s0,16(sp)
    800038a0:	00913423          	sd	s1,8(sp)
    800038a4:	02010413          	addi	s0,sp,32
    800038a8:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    800038ac:	02059063          	bnez	a1,800038cc <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    800038b0:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    800038b4:	0604b023          	sd	zero,96(s1)
}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    800038cc:	06053783          	ld	a5,96(a0)
    800038d0:	00050593          	mv	a1,a0
    800038d4:	0087b503          	ld	a0,8(a5)
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	93c080e7          	jalr	-1732(ra) # 80003214 <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    800038e0:	0604b703          	ld	a4,96(s1)
    800038e4:	01072783          	lw	a5,16(a4)
    800038e8:	0017879b          	addiw	a5,a5,1
    800038ec:	00f72823          	sw	a5,16(a4)
    800038f0:	fc1ff06f          	j	800038b0 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

00000000800038f4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	01213023          	sd	s2,0(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003910:	00000913          	li	s2,0
    80003914:	00c0006f          	j	80003920 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x31) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	ab4080e7          	jalr	-1356(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x31) {
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	d00080e7          	jalr	-768(ra) # 80001620 <_Z4getcv>
    80003928:	0005059b          	sext.w	a1,a0
    8000392c:	03100793          	li	a5,49
    80003930:	02f58a63          	beq	a1,a5,80003964 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003934:	0084b503          	ld	a0,8(s1)
    80003938:	00001097          	auipc	ra,0x1
    8000393c:	66c080e7          	jalr	1644(ra) # 80004fa4 <_ZN6Buffer3putEi>
        i++;
    80003940:	0019071b          	addiw	a4,s2,1
    80003944:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003948:	0004a683          	lw	a3,0(s1)
    8000394c:	0026979b          	slliw	a5,a3,0x2
    80003950:	00d787bb          	addw	a5,a5,a3
    80003954:	0017979b          	slliw	a5,a5,0x1
    80003958:	02f767bb          	remw	a5,a4,a5
    8000395c:	fc0792e3          	bnez	a5,80003920 <_ZL16producerKeyboardPv+0x2c>
    80003960:	fb9ff06f          	j	80003918 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003964:	00100793          	li	a5,1
    80003968:	00009717          	auipc	a4,0x9
    8000396c:	58f72c23          	sw	a5,1432(a4) # 8000cf00 <_ZL9threadEnd>
    data->buffer->put('!');
    80003970:	02100593          	li	a1,33
    80003974:	0084b503          	ld	a0,8(s1)
    80003978:	00001097          	auipc	ra,0x1
    8000397c:	62c080e7          	jalr	1580(ra) # 80004fa4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003980:	0104b503          	ld	a0,16(s1)
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	b6c080e7          	jalr	-1172(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	00813483          	ld	s1,8(sp)
    80003998:	00013903          	ld	s2,0(sp)
    8000399c:	02010113          	addi	sp,sp,32
    800039a0:	00008067          	ret

00000000800039a4 <_ZL8producerPv>:

static void producer(void *arg) {
    800039a4:	fe010113          	addi	sp,sp,-32
    800039a8:	00113c23          	sd	ra,24(sp)
    800039ac:	00813823          	sd	s0,16(sp)
    800039b0:	00913423          	sd	s1,8(sp)
    800039b4:	01213023          	sd	s2,0(sp)
    800039b8:	02010413          	addi	s0,sp,32
    800039bc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039c0:	00000913          	li	s2,0
    800039c4:	00c0006f          	j	800039d0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	a04080e7          	jalr	-1532(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800039d0:	00009797          	auipc	a5,0x9
    800039d4:	5307a783          	lw	a5,1328(a5) # 8000cf00 <_ZL9threadEnd>
    800039d8:	02079e63          	bnez	a5,80003a14 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800039dc:	0004a583          	lw	a1,0(s1)
    800039e0:	0305859b          	addiw	a1,a1,48
    800039e4:	0084b503          	ld	a0,8(s1)
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	5bc080e7          	jalr	1468(ra) # 80004fa4 <_ZN6Buffer3putEi>
        i++;
    800039f0:	0019071b          	addiw	a4,s2,1
    800039f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039f8:	0004a683          	lw	a3,0(s1)
    800039fc:	0026979b          	slliw	a5,a3,0x2
    80003a00:	00d787bb          	addw	a5,a5,a3
    80003a04:	0017979b          	slliw	a5,a5,0x1
    80003a08:	02f767bb          	remw	a5,a4,a5
    80003a0c:	fc0792e3          	bnez	a5,800039d0 <_ZL8producerPv+0x2c>
    80003a10:	fb9ff06f          	j	800039c8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003a14:	0104b503          	ld	a0,16(s1)
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	ad8080e7          	jalr	-1320(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a20:	01813083          	ld	ra,24(sp)
    80003a24:	01013403          	ld	s0,16(sp)
    80003a28:	00813483          	ld	s1,8(sp)
    80003a2c:	00013903          	ld	s2,0(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret

0000000080003a38 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003a38:	fd010113          	addi	sp,sp,-48
    80003a3c:	02113423          	sd	ra,40(sp)
    80003a40:	02813023          	sd	s0,32(sp)
    80003a44:	00913c23          	sd	s1,24(sp)
    80003a48:	01213823          	sd	s2,16(sp)
    80003a4c:	01313423          	sd	s3,8(sp)
    80003a50:	03010413          	addi	s0,sp,48
    80003a54:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a58:	00000993          	li	s3,0
    80003a5c:	01c0006f          	j	80003a78 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	96c080e7          	jalr	-1684(ra) # 800013cc <_Z15thread_dispatchv>
    80003a68:	0500006f          	j	80003ab8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a6c:	00a00513          	li	a0,10
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	bfc080e7          	jalr	-1028(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003a78:	00009797          	auipc	a5,0x9
    80003a7c:	4887a783          	lw	a5,1160(a5) # 8000cf00 <_ZL9threadEnd>
    80003a80:	06079063          	bnez	a5,80003ae0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003a84:	00893503          	ld	a0,8(s2)
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	5ac080e7          	jalr	1452(ra) # 80005034 <_ZN6Buffer3getEv>
        i++;
    80003a90:	0019849b          	addiw	s1,s3,1
    80003a94:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a98:	0ff57513          	andi	a0,a0,255
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	bd0080e7          	jalr	-1072(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003aa4:	00092703          	lw	a4,0(s2)
    80003aa8:	0027179b          	slliw	a5,a4,0x2
    80003aac:	00e787bb          	addw	a5,a5,a4
    80003ab0:	02f4e7bb          	remw	a5,s1,a5
    80003ab4:	fa0786e3          	beqz	a5,80003a60 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003ab8:	05000793          	li	a5,80
    80003abc:	02f4e4bb          	remw	s1,s1,a5
    80003ac0:	fa049ce3          	bnez	s1,80003a78 <_ZL8consumerPv+0x40>
    80003ac4:	fa9ff06f          	j	80003a6c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003ac8:	00893503          	ld	a0,8(s2)
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	568080e7          	jalr	1384(ra) # 80005034 <_ZN6Buffer3getEv>
        putc(key);
    80003ad4:	0ff57513          	andi	a0,a0,255
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	b94080e7          	jalr	-1132(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003ae0:	00893503          	ld	a0,8(s2)
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	5dc080e7          	jalr	1500(ra) # 800050c0 <_ZN6Buffer6getCntEv>
    80003aec:	fca04ee3          	bgtz	a0,80003ac8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003af0:	01093503          	ld	a0,16(s2)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	9fc080e7          	jalr	-1540(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003afc:	02813083          	ld	ra,40(sp)
    80003b00:	02013403          	ld	s0,32(sp)
    80003b04:	01813483          	ld	s1,24(sp)
    80003b08:	01013903          	ld	s2,16(sp)
    80003b0c:	00813983          	ld	s3,8(sp)
    80003b10:	03010113          	addi	sp,sp,48
    80003b14:	00008067          	ret

0000000080003b18 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003b18:	f9010113          	addi	sp,sp,-112
    80003b1c:	06113423          	sd	ra,104(sp)
    80003b20:	06813023          	sd	s0,96(sp)
    80003b24:	04913c23          	sd	s1,88(sp)
    80003b28:	05213823          	sd	s2,80(sp)
    80003b2c:	05313423          	sd	s3,72(sp)
    80003b30:	05413023          	sd	s4,64(sp)
    80003b34:	03513c23          	sd	s5,56(sp)
    80003b38:	03613823          	sd	s6,48(sp)
    80003b3c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003b40:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b44:	00006517          	auipc	a0,0x6
    80003b48:	5ec50513          	addi	a0,a0,1516 # 8000a130 <CONSOLE_STATUS+0x120>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	540080e7          	jalr	1344(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    80003b54:	01e00593          	li	a1,30
    80003b58:	fa040493          	addi	s1,s0,-96
    80003b5c:	00048513          	mv	a0,s1
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	5b4080e7          	jalr	1460(ra) # 80006114 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	680080e7          	jalr	1664(ra) # 800061ec <_Z11stringToIntPKc>
    80003b74:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003b78:	00006517          	auipc	a0,0x6
    80003b7c:	5d850513          	addi	a0,a0,1496 # 8000a150 <CONSOLE_STATUS+0x140>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	50c080e7          	jalr	1292(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    80003b88:	01e00593          	li	a1,30
    80003b8c:	00048513          	mv	a0,s1
    80003b90:	00002097          	auipc	ra,0x2
    80003b94:	584080e7          	jalr	1412(ra) # 80006114 <_Z9getStringPci>
    n = stringToInt(input);
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	650080e7          	jalr	1616(ra) # 800061ec <_Z11stringToIntPKc>
    80003ba4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003ba8:	00006517          	auipc	a0,0x6
    80003bac:	5c850513          	addi	a0,a0,1480 # 8000a170 <CONSOLE_STATUS+0x160>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	4dc080e7          	jalr	1244(ra) # 8000608c <_Z11printStringPKc>
    80003bb8:	00000613          	li	a2,0
    80003bbc:	00a00593          	li	a1,10
    80003bc0:	00090513          	mv	a0,s2
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	678080e7          	jalr	1656(ra) # 8000623c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003bcc:	00006517          	auipc	a0,0x6
    80003bd0:	5bc50513          	addi	a0,a0,1468 # 8000a188 <CONSOLE_STATUS+0x178>
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	4b8080e7          	jalr	1208(ra) # 8000608c <_Z11printStringPKc>
    80003bdc:	00000613          	li	a2,0
    80003be0:	00a00593          	li	a1,10
    80003be4:	00048513          	mv	a0,s1
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	654080e7          	jalr	1620(ra) # 8000623c <_Z8printIntiii>
    printString(".\n");
    80003bf0:	00006517          	auipc	a0,0x6
    80003bf4:	5b050513          	addi	a0,a0,1456 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	494080e7          	jalr	1172(ra) # 8000608c <_Z11printStringPKc>
    if(threadNum > n) {
    80003c00:	0324c463          	blt	s1,s2,80003c28 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003c04:	03205c63          	blez	s2,80003c3c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003c08:	03800513          	li	a0,56
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	438080e7          	jalr	1080(ra) # 80002044 <_Znwm>
    80003c14:	00050a13          	mv	s4,a0
    80003c18:	00048593          	mv	a1,s1
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	2ec080e7          	jalr	748(ra) # 80004f08 <_ZN6BufferC1Ei>
    80003c24:	0300006f          	j	80003c54 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c28:	00006517          	auipc	a0,0x6
    80003c2c:	58050513          	addi	a0,a0,1408 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	45c080e7          	jalr	1116(ra) # 8000608c <_Z11printStringPKc>
        return;
    80003c38:	0140006f          	j	80003c4c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c3c:	00006517          	auipc	a0,0x6
    80003c40:	5ac50513          	addi	a0,a0,1452 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003c44:	00002097          	auipc	ra,0x2
    80003c48:	448080e7          	jalr	1096(ra) # 8000608c <_Z11printStringPKc>
        return;
    80003c4c:	000b0113          	mv	sp,s6
    80003c50:	1500006f          	j	80003da0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003c54:	00000593          	li	a1,0
    80003c58:	00009517          	auipc	a0,0x9
    80003c5c:	2b050513          	addi	a0,a0,688 # 8000cf08 <_ZL10waitForAll>
    80003c60:	ffffd097          	auipc	ra,0xffffd
    80003c64:	7a8080e7          	jalr	1960(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003c68:	00391793          	slli	a5,s2,0x3
    80003c6c:	00f78793          	addi	a5,a5,15
    80003c70:	ff07f793          	andi	a5,a5,-16
    80003c74:	40f10133          	sub	sp,sp,a5
    80003c78:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003c7c:	0019071b          	addiw	a4,s2,1
    80003c80:	00171793          	slli	a5,a4,0x1
    80003c84:	00e787b3          	add	a5,a5,a4
    80003c88:	00379793          	slli	a5,a5,0x3
    80003c8c:	00f78793          	addi	a5,a5,15
    80003c90:	ff07f793          	andi	a5,a5,-16
    80003c94:	40f10133          	sub	sp,sp,a5
    80003c98:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c9c:	00191613          	slli	a2,s2,0x1
    80003ca0:	012607b3          	add	a5,a2,s2
    80003ca4:	00379793          	slli	a5,a5,0x3
    80003ca8:	00f987b3          	add	a5,s3,a5
    80003cac:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003cb0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003cb4:	00009717          	auipc	a4,0x9
    80003cb8:	25473703          	ld	a4,596(a4) # 8000cf08 <_ZL10waitForAll>
    80003cbc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003cc0:	00078613          	mv	a2,a5
    80003cc4:	00000597          	auipc	a1,0x0
    80003cc8:	d7458593          	addi	a1,a1,-652 # 80003a38 <_ZL8consumerPv>
    80003ccc:	f9840513          	addi	a0,s0,-104
    80003cd0:	ffffd097          	auipc	ra,0xffffd
    80003cd4:	628080e7          	jalr	1576(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003cd8:	00000493          	li	s1,0
    80003cdc:	0280006f          	j	80003d04 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003ce0:	00000597          	auipc	a1,0x0
    80003ce4:	c1458593          	addi	a1,a1,-1004 # 800038f4 <_ZL16producerKeyboardPv>
                      data + i);
    80003ce8:	00179613          	slli	a2,a5,0x1
    80003cec:	00f60633          	add	a2,a2,a5
    80003cf0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003cf4:	00c98633          	add	a2,s3,a2
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	600080e7          	jalr	1536(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003d00:	0014849b          	addiw	s1,s1,1
    80003d04:	0524d263          	bge	s1,s2,80003d48 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003d08:	00149793          	slli	a5,s1,0x1
    80003d0c:	009787b3          	add	a5,a5,s1
    80003d10:	00379793          	slli	a5,a5,0x3
    80003d14:	00f987b3          	add	a5,s3,a5
    80003d18:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003d1c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003d20:	00009717          	auipc	a4,0x9
    80003d24:	1e873703          	ld	a4,488(a4) # 8000cf08 <_ZL10waitForAll>
    80003d28:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003d2c:	00048793          	mv	a5,s1
    80003d30:	00349513          	slli	a0,s1,0x3
    80003d34:	00aa8533          	add	a0,s5,a0
    80003d38:	fa9054e3          	blez	s1,80003ce0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003d3c:	00000597          	auipc	a1,0x0
    80003d40:	c6858593          	addi	a1,a1,-920 # 800039a4 <_ZL8producerPv>
    80003d44:	fa5ff06f          	j	80003ce8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003d48:	ffffd097          	auipc	ra,0xffffd
    80003d4c:	684080e7          	jalr	1668(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003d50:	00000493          	li	s1,0
    80003d54:	00994e63          	blt	s2,s1,80003d70 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003d58:	00009517          	auipc	a0,0x9
    80003d5c:	1b053503          	ld	a0,432(a0) # 8000cf08 <_ZL10waitForAll>
    80003d60:	ffffd097          	auipc	ra,0xffffd
    80003d64:	744080e7          	jalr	1860(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003d68:	0014849b          	addiw	s1,s1,1
    80003d6c:	fe9ff06f          	j	80003d54 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003d70:	00009517          	auipc	a0,0x9
    80003d74:	19853503          	ld	a0,408(a0) # 8000cf08 <_ZL10waitForAll>
    80003d78:	ffffd097          	auipc	ra,0xffffd
    80003d7c:	6e0080e7          	jalr	1760(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003d80:	000a0e63          	beqz	s4,80003d9c <_Z22producerConsumer_C_APIv+0x284>
    80003d84:	000a0513          	mv	a0,s4
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	3c0080e7          	jalr	960(ra) # 80005148 <_ZN6BufferD1Ev>
    80003d90:	000a0513          	mv	a0,s4
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	2d8080e7          	jalr	728(ra) # 8000206c <_ZdlPv>
    80003d9c:	000b0113          	mv	sp,s6

}
    80003da0:	f9040113          	addi	sp,s0,-112
    80003da4:	06813083          	ld	ra,104(sp)
    80003da8:	06013403          	ld	s0,96(sp)
    80003dac:	05813483          	ld	s1,88(sp)
    80003db0:	05013903          	ld	s2,80(sp)
    80003db4:	04813983          	ld	s3,72(sp)
    80003db8:	04013a03          	ld	s4,64(sp)
    80003dbc:	03813a83          	ld	s5,56(sp)
    80003dc0:	03013b03          	ld	s6,48(sp)
    80003dc4:	07010113          	addi	sp,sp,112
    80003dc8:	00008067          	ret
    80003dcc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003dd0:	000a0513          	mv	a0,s4
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	298080e7          	jalr	664(ra) # 8000206c <_ZdlPv>
    80003ddc:	00048513          	mv	a0,s1
    80003de0:	0000a097          	auipc	ra,0xa
    80003de4:	238080e7          	jalr	568(ra) # 8000e018 <_Unwind_Resume>

0000000080003de8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	01213023          	sd	s2,0(sp)
    80003dfc:	02010413          	addi	s0,sp,32
    80003e00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e04:	00100793          	li	a5,1
    80003e08:	02a7f863          	bgeu	a5,a0,80003e38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e0c:	00a00793          	li	a5,10
    80003e10:	02f577b3          	remu	a5,a0,a5
    80003e14:	02078e63          	beqz	a5,80003e50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e18:	fff48513          	addi	a0,s1,-1
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	fcc080e7          	jalr	-52(ra) # 80003de8 <_ZL9fibonaccim>
    80003e24:	00050913          	mv	s2,a0
    80003e28:	ffe48513          	addi	a0,s1,-2
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	fbc080e7          	jalr	-68(ra) # 80003de8 <_ZL9fibonaccim>
    80003e34:	00a90533          	add	a0,s2,a0
}
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	00013903          	ld	s2,0(sp)
    80003e48:	02010113          	addi	sp,sp,32
    80003e4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003e50:	ffffd097          	auipc	ra,0xffffd
    80003e54:	57c080e7          	jalr	1404(ra) # 800013cc <_Z15thread_dispatchv>
    80003e58:	fc1ff06f          	j	80003e18 <_ZL9fibonaccim+0x30>

0000000080003e5c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00113c23          	sd	ra,24(sp)
    80003e64:	00813823          	sd	s0,16(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	01213023          	sd	s2,0(sp)
    80003e70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e74:	00000913          	li	s2,0
    80003e78:	0380006f          	j	80003eb0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e7c:	ffffd097          	auipc	ra,0xffffd
    80003e80:	550080e7          	jalr	1360(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e84:	00148493          	addi	s1,s1,1
    80003e88:	000027b7          	lui	a5,0x2
    80003e8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e90:	0097ee63          	bltu	a5,s1,80003eac <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e94:	00000713          	li	a4,0
    80003e98:	000077b7          	lui	a5,0x7
    80003e9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ea0:	fce7eee3          	bltu	a5,a4,80003e7c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ea4:	00170713          	addi	a4,a4,1
    80003ea8:	ff1ff06f          	j	80003e98 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003eac:	00190913          	addi	s2,s2,1
    80003eb0:	00900793          	li	a5,9
    80003eb4:	0527e063          	bltu	a5,s2,80003ef4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003eb8:	00006517          	auipc	a0,0x6
    80003ebc:	36050513          	addi	a0,a0,864 # 8000a218 <CONSOLE_STATUS+0x208>
    80003ec0:	00002097          	auipc	ra,0x2
    80003ec4:	1cc080e7          	jalr	460(ra) # 8000608c <_Z11printStringPKc>
    80003ec8:	00000613          	li	a2,0
    80003ecc:	00a00593          	li	a1,10
    80003ed0:	0009051b          	sext.w	a0,s2
    80003ed4:	00002097          	auipc	ra,0x2
    80003ed8:	368080e7          	jalr	872(ra) # 8000623c <_Z8printIntiii>
    80003edc:	00006517          	auipc	a0,0x6
    80003ee0:	59c50513          	addi	a0,a0,1436 # 8000a478 <CONSOLE_STATUS+0x468>
    80003ee4:	00002097          	auipc	ra,0x2
    80003ee8:	1a8080e7          	jalr	424(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003eec:	00000493          	li	s1,0
    80003ef0:	f99ff06f          	j	80003e88 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ef4:	00006517          	auipc	a0,0x6
    80003ef8:	32c50513          	addi	a0,a0,812 # 8000a220 <CONSOLE_STATUS+0x210>
    80003efc:	00002097          	auipc	ra,0x2
    80003f00:	190080e7          	jalr	400(ra) # 8000608c <_Z11printStringPKc>
    finishedA = true;
    80003f04:	00100793          	li	a5,1
    80003f08:	00009717          	auipc	a4,0x9
    80003f0c:	00f70423          	sb	a5,8(a4) # 8000cf10 <_ZL9finishedA>
}
    80003f10:	01813083          	ld	ra,24(sp)
    80003f14:	01013403          	ld	s0,16(sp)
    80003f18:	00813483          	ld	s1,8(sp)
    80003f1c:	00013903          	ld	s2,0(sp)
    80003f20:	02010113          	addi	sp,sp,32
    80003f24:	00008067          	ret

0000000080003f28 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00113c23          	sd	ra,24(sp)
    80003f30:	00813823          	sd	s0,16(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	01213023          	sd	s2,0(sp)
    80003f3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f40:	00000913          	li	s2,0
    80003f44:	0380006f          	j	80003f7c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f48:	ffffd097          	auipc	ra,0xffffd
    80003f4c:	484080e7          	jalr	1156(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f50:	00148493          	addi	s1,s1,1
    80003f54:	000027b7          	lui	a5,0x2
    80003f58:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f5c:	0097ee63          	bltu	a5,s1,80003f78 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f60:	00000713          	li	a4,0
    80003f64:	000077b7          	lui	a5,0x7
    80003f68:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f6c:	fce7eee3          	bltu	a5,a4,80003f48 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003f70:	00170713          	addi	a4,a4,1
    80003f74:	ff1ff06f          	j	80003f64 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f78:	00190913          	addi	s2,s2,1
    80003f7c:	00f00793          	li	a5,15
    80003f80:	0527e063          	bltu	a5,s2,80003fc0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f84:	00006517          	auipc	a0,0x6
    80003f88:	2ac50513          	addi	a0,a0,684 # 8000a230 <CONSOLE_STATUS+0x220>
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	100080e7          	jalr	256(ra) # 8000608c <_Z11printStringPKc>
    80003f94:	00000613          	li	a2,0
    80003f98:	00a00593          	li	a1,10
    80003f9c:	0009051b          	sext.w	a0,s2
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	29c080e7          	jalr	668(ra) # 8000623c <_Z8printIntiii>
    80003fa8:	00006517          	auipc	a0,0x6
    80003fac:	4d050513          	addi	a0,a0,1232 # 8000a478 <CONSOLE_STATUS+0x468>
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	0dc080e7          	jalr	220(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fb8:	00000493          	li	s1,0
    80003fbc:	f99ff06f          	j	80003f54 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003fc0:	00006517          	auipc	a0,0x6
    80003fc4:	27850513          	addi	a0,a0,632 # 8000a238 <CONSOLE_STATUS+0x228>
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	0c4080e7          	jalr	196(ra) # 8000608c <_Z11printStringPKc>
    finishedB = true;
    80003fd0:	00100793          	li	a5,1
    80003fd4:	00009717          	auipc	a4,0x9
    80003fd8:	f2f70ea3          	sb	a5,-195(a4) # 8000cf11 <_ZL9finishedB>
    thread_dispatch();
    80003fdc:	ffffd097          	auipc	ra,0xffffd
    80003fe0:	3f0080e7          	jalr	1008(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003fe4:	01813083          	ld	ra,24(sp)
    80003fe8:	01013403          	ld	s0,16(sp)
    80003fec:	00813483          	ld	s1,8(sp)
    80003ff0:	00013903          	ld	s2,0(sp)
    80003ff4:	02010113          	addi	sp,sp,32
    80003ff8:	00008067          	ret

0000000080003ffc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00113c23          	sd	ra,24(sp)
    80004004:	00813823          	sd	s0,16(sp)
    80004008:	00913423          	sd	s1,8(sp)
    8000400c:	01213023          	sd	s2,0(sp)
    80004010:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004014:	00000493          	li	s1,0
    80004018:	0400006f          	j	80004058 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000401c:	00006517          	auipc	a0,0x6
    80004020:	22c50513          	addi	a0,a0,556 # 8000a248 <CONSOLE_STATUS+0x238>
    80004024:	00002097          	auipc	ra,0x2
    80004028:	068080e7          	jalr	104(ra) # 8000608c <_Z11printStringPKc>
    8000402c:	00000613          	li	a2,0
    80004030:	00a00593          	li	a1,10
    80004034:	00048513          	mv	a0,s1
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	204080e7          	jalr	516(ra) # 8000623c <_Z8printIntiii>
    80004040:	00006517          	auipc	a0,0x6
    80004044:	43850513          	addi	a0,a0,1080 # 8000a478 <CONSOLE_STATUS+0x468>
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	044080e7          	jalr	68(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004050:	0014849b          	addiw	s1,s1,1
    80004054:	0ff4f493          	andi	s1,s1,255
    80004058:	00200793          	li	a5,2
    8000405c:	fc97f0e3          	bgeu	a5,s1,8000401c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004060:	00006517          	auipc	a0,0x6
    80004064:	1f050513          	addi	a0,a0,496 # 8000a250 <CONSOLE_STATUS+0x240>
    80004068:	00002097          	auipc	ra,0x2
    8000406c:	024080e7          	jalr	36(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004070:	00700313          	li	t1,7
    thread_dispatch();
    80004074:	ffffd097          	auipc	ra,0xffffd
    80004078:	358080e7          	jalr	856(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000407c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004080:	00006517          	auipc	a0,0x6
    80004084:	1e050513          	addi	a0,a0,480 # 8000a260 <CONSOLE_STATUS+0x250>
    80004088:	00002097          	auipc	ra,0x2
    8000408c:	004080e7          	jalr	4(ra) # 8000608c <_Z11printStringPKc>
    80004090:	00000613          	li	a2,0
    80004094:	00a00593          	li	a1,10
    80004098:	0009051b          	sext.w	a0,s2
    8000409c:	00002097          	auipc	ra,0x2
    800040a0:	1a0080e7          	jalr	416(ra) # 8000623c <_Z8printIntiii>
    800040a4:	00006517          	auipc	a0,0x6
    800040a8:	3d450513          	addi	a0,a0,980 # 8000a478 <CONSOLE_STATUS+0x468>
    800040ac:	00002097          	auipc	ra,0x2
    800040b0:	fe0080e7          	jalr	-32(ra) # 8000608c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800040b4:	00c00513          	li	a0,12
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	d30080e7          	jalr	-720(ra) # 80003de8 <_ZL9fibonaccim>
    800040c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800040c4:	00006517          	auipc	a0,0x6
    800040c8:	1a450513          	addi	a0,a0,420 # 8000a268 <CONSOLE_STATUS+0x258>
    800040cc:	00002097          	auipc	ra,0x2
    800040d0:	fc0080e7          	jalr	-64(ra) # 8000608c <_Z11printStringPKc>
    800040d4:	00000613          	li	a2,0
    800040d8:	00a00593          	li	a1,10
    800040dc:	0009051b          	sext.w	a0,s2
    800040e0:	00002097          	auipc	ra,0x2
    800040e4:	15c080e7          	jalr	348(ra) # 8000623c <_Z8printIntiii>
    800040e8:	00006517          	auipc	a0,0x6
    800040ec:	39050513          	addi	a0,a0,912 # 8000a478 <CONSOLE_STATUS+0x468>
    800040f0:	00002097          	auipc	ra,0x2
    800040f4:	f9c080e7          	jalr	-100(ra) # 8000608c <_Z11printStringPKc>
    800040f8:	0400006f          	j	80004138 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040fc:	00006517          	auipc	a0,0x6
    80004100:	14c50513          	addi	a0,a0,332 # 8000a248 <CONSOLE_STATUS+0x238>
    80004104:	00002097          	auipc	ra,0x2
    80004108:	f88080e7          	jalr	-120(ra) # 8000608c <_Z11printStringPKc>
    8000410c:	00000613          	li	a2,0
    80004110:	00a00593          	li	a1,10
    80004114:	00048513          	mv	a0,s1
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	124080e7          	jalr	292(ra) # 8000623c <_Z8printIntiii>
    80004120:	00006517          	auipc	a0,0x6
    80004124:	35850513          	addi	a0,a0,856 # 8000a478 <CONSOLE_STATUS+0x468>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	f64080e7          	jalr	-156(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004130:	0014849b          	addiw	s1,s1,1
    80004134:	0ff4f493          	andi	s1,s1,255
    80004138:	00500793          	li	a5,5
    8000413c:	fc97f0e3          	bgeu	a5,s1,800040fc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004140:	00006517          	auipc	a0,0x6
    80004144:	0e050513          	addi	a0,a0,224 # 8000a220 <CONSOLE_STATUS+0x210>
    80004148:	00002097          	auipc	ra,0x2
    8000414c:	f44080e7          	jalr	-188(ra) # 8000608c <_Z11printStringPKc>
    finishedC = true;
    80004150:	00100793          	li	a5,1
    80004154:	00009717          	auipc	a4,0x9
    80004158:	daf70f23          	sb	a5,-578(a4) # 8000cf12 <_ZL9finishedC>
    thread_dispatch();
    8000415c:	ffffd097          	auipc	ra,0xffffd
    80004160:	270080e7          	jalr	624(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004164:	01813083          	ld	ra,24(sp)
    80004168:	01013403          	ld	s0,16(sp)
    8000416c:	00813483          	ld	s1,8(sp)
    80004170:	00013903          	ld	s2,0(sp)
    80004174:	02010113          	addi	sp,sp,32
    80004178:	00008067          	ret

000000008000417c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000417c:	fe010113          	addi	sp,sp,-32
    80004180:	00113c23          	sd	ra,24(sp)
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00913423          	sd	s1,8(sp)
    8000418c:	01213023          	sd	s2,0(sp)
    80004190:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004194:	00a00493          	li	s1,10
    80004198:	0400006f          	j	800041d8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000419c:	00006517          	auipc	a0,0x6
    800041a0:	0dc50513          	addi	a0,a0,220 # 8000a278 <CONSOLE_STATUS+0x268>
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	ee8080e7          	jalr	-280(ra) # 8000608c <_Z11printStringPKc>
    800041ac:	00000613          	li	a2,0
    800041b0:	00a00593          	li	a1,10
    800041b4:	00048513          	mv	a0,s1
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	084080e7          	jalr	132(ra) # 8000623c <_Z8printIntiii>
    800041c0:	00006517          	auipc	a0,0x6
    800041c4:	2b850513          	addi	a0,a0,696 # 8000a478 <CONSOLE_STATUS+0x468>
    800041c8:	00002097          	auipc	ra,0x2
    800041cc:	ec4080e7          	jalr	-316(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800041d0:	0014849b          	addiw	s1,s1,1
    800041d4:	0ff4f493          	andi	s1,s1,255
    800041d8:	00c00793          	li	a5,12
    800041dc:	fc97f0e3          	bgeu	a5,s1,8000419c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800041e0:	00006517          	auipc	a0,0x6
    800041e4:	0a050513          	addi	a0,a0,160 # 8000a280 <CONSOLE_STATUS+0x270>
    800041e8:	00002097          	auipc	ra,0x2
    800041ec:	ea4080e7          	jalr	-348(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800041f0:	00500313          	li	t1,5
    thread_dispatch();
    800041f4:	ffffd097          	auipc	ra,0xffffd
    800041f8:	1d8080e7          	jalr	472(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800041fc:	01000513          	li	a0,16
    80004200:	00000097          	auipc	ra,0x0
    80004204:	be8080e7          	jalr	-1048(ra) # 80003de8 <_ZL9fibonaccim>
    80004208:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000420c:	00006517          	auipc	a0,0x6
    80004210:	08450513          	addi	a0,a0,132 # 8000a290 <CONSOLE_STATUS+0x280>
    80004214:	00002097          	auipc	ra,0x2
    80004218:	e78080e7          	jalr	-392(ra) # 8000608c <_Z11printStringPKc>
    8000421c:	00000613          	li	a2,0
    80004220:	00a00593          	li	a1,10
    80004224:	0009051b          	sext.w	a0,s2
    80004228:	00002097          	auipc	ra,0x2
    8000422c:	014080e7          	jalr	20(ra) # 8000623c <_Z8printIntiii>
    80004230:	00006517          	auipc	a0,0x6
    80004234:	24850513          	addi	a0,a0,584 # 8000a478 <CONSOLE_STATUS+0x468>
    80004238:	00002097          	auipc	ra,0x2
    8000423c:	e54080e7          	jalr	-428(ra) # 8000608c <_Z11printStringPKc>
    80004240:	0400006f          	j	80004280 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004244:	00006517          	auipc	a0,0x6
    80004248:	03450513          	addi	a0,a0,52 # 8000a278 <CONSOLE_STATUS+0x268>
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	e40080e7          	jalr	-448(ra) # 8000608c <_Z11printStringPKc>
    80004254:	00000613          	li	a2,0
    80004258:	00a00593          	li	a1,10
    8000425c:	00048513          	mv	a0,s1
    80004260:	00002097          	auipc	ra,0x2
    80004264:	fdc080e7          	jalr	-36(ra) # 8000623c <_Z8printIntiii>
    80004268:	00006517          	auipc	a0,0x6
    8000426c:	21050513          	addi	a0,a0,528 # 8000a478 <CONSOLE_STATUS+0x468>
    80004270:	00002097          	auipc	ra,0x2
    80004274:	e1c080e7          	jalr	-484(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004278:	0014849b          	addiw	s1,s1,1
    8000427c:	0ff4f493          	andi	s1,s1,255
    80004280:	00f00793          	li	a5,15
    80004284:	fc97f0e3          	bgeu	a5,s1,80004244 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004288:	00006517          	auipc	a0,0x6
    8000428c:	01850513          	addi	a0,a0,24 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004290:	00002097          	auipc	ra,0x2
    80004294:	dfc080e7          	jalr	-516(ra) # 8000608c <_Z11printStringPKc>
    finishedD = true;
    80004298:	00100793          	li	a5,1
    8000429c:	00009717          	auipc	a4,0x9
    800042a0:	c6f70ba3          	sb	a5,-905(a4) # 8000cf13 <_ZL9finishedD>
    thread_dispatch();
    800042a4:	ffffd097          	auipc	ra,0xffffd
    800042a8:	128080e7          	jalr	296(ra) # 800013cc <_Z15thread_dispatchv>
}
    800042ac:	01813083          	ld	ra,24(sp)
    800042b0:	01013403          	ld	s0,16(sp)
    800042b4:	00813483          	ld	s1,8(sp)
    800042b8:	00013903          	ld	s2,0(sp)
    800042bc:	02010113          	addi	sp,sp,32
    800042c0:	00008067          	ret

00000000800042c4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800042c4:	fc010113          	addi	sp,sp,-64
    800042c8:	02113c23          	sd	ra,56(sp)
    800042cc:	02813823          	sd	s0,48(sp)
    800042d0:	02913423          	sd	s1,40(sp)
    800042d4:	03213023          	sd	s2,32(sp)
    800042d8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800042dc:	02000513          	li	a0,32
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	d64080e7          	jalr	-668(ra) # 80002044 <_Znwm>
    800042e8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	e58080e7          	jalr	-424(ra) # 80002144 <_ZN6ThreadC1Ev>
    800042f4:	00009797          	auipc	a5,0x9
    800042f8:	96c78793          	addi	a5,a5,-1684 # 8000cc60 <_ZTV7WorkerA+0x10>
    800042fc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004300:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004304:	00006517          	auipc	a0,0x6
    80004308:	fac50513          	addi	a0,a0,-84 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    8000430c:	00002097          	auipc	ra,0x2
    80004310:	d80080e7          	jalr	-640(ra) # 8000608c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004314:	02000513          	li	a0,32
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	d2c080e7          	jalr	-724(ra) # 80002044 <_Znwm>
    80004320:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	e20080e7          	jalr	-480(ra) # 80002144 <_ZN6ThreadC1Ev>
    8000432c:	00009797          	auipc	a5,0x9
    80004330:	95c78793          	addi	a5,a5,-1700 # 8000cc88 <_ZTV7WorkerB+0x10>
    80004334:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004338:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000433c:	00006517          	auipc	a0,0x6
    80004340:	f8c50513          	addi	a0,a0,-116 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004344:	00002097          	auipc	ra,0x2
    80004348:	d48080e7          	jalr	-696(ra) # 8000608c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000434c:	02000513          	li	a0,32
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	cf4080e7          	jalr	-780(ra) # 80002044 <_Znwm>
    80004358:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	de8080e7          	jalr	-536(ra) # 80002144 <_ZN6ThreadC1Ev>
    80004364:	00009797          	auipc	a5,0x9
    80004368:	94c78793          	addi	a5,a5,-1716 # 8000ccb0 <_ZTV7WorkerC+0x10>
    8000436c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004370:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004374:	00006517          	auipc	a0,0x6
    80004378:	f6c50513          	addi	a0,a0,-148 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000437c:	00002097          	auipc	ra,0x2
    80004380:	d10080e7          	jalr	-752(ra) # 8000608c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004384:	02000513          	li	a0,32
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	cbc080e7          	jalr	-836(ra) # 80002044 <_Znwm>
    80004390:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	db0080e7          	jalr	-592(ra) # 80002144 <_ZN6ThreadC1Ev>
    8000439c:	00009797          	auipc	a5,0x9
    800043a0:	93c78793          	addi	a5,a5,-1732 # 8000ccd8 <_ZTV7WorkerD+0x10>
    800043a4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800043a8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800043ac:	00006517          	auipc	a0,0x6
    800043b0:	f4c50513          	addi	a0,a0,-180 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800043b4:	00002097          	auipc	ra,0x2
    800043b8:	cd8080e7          	jalr	-808(ra) # 8000608c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800043bc:	00000493          	li	s1,0
    800043c0:	00300793          	li	a5,3
    800043c4:	0297c663          	blt	a5,s1,800043f0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800043c8:	00349793          	slli	a5,s1,0x3
    800043cc:	fe040713          	addi	a4,s0,-32
    800043d0:	00f707b3          	add	a5,a4,a5
    800043d4:	fe07b503          	ld	a0,-32(a5)
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	d9c080e7          	jalr	-612(ra) # 80002174 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800043e0:	0014849b          	addiw	s1,s1,1
    800043e4:	fddff06f          	j	800043c0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	dc4080e7          	jalr	-572(ra) # 800021ac <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800043f0:	00009797          	auipc	a5,0x9
    800043f4:	b207c783          	lbu	a5,-1248(a5) # 8000cf10 <_ZL9finishedA>
    800043f8:	fe0788e3          	beqz	a5,800043e8 <_Z20Threads_CPP_API_testv+0x124>
    800043fc:	00009797          	auipc	a5,0x9
    80004400:	b157c783          	lbu	a5,-1259(a5) # 8000cf11 <_ZL9finishedB>
    80004404:	fe0782e3          	beqz	a5,800043e8 <_Z20Threads_CPP_API_testv+0x124>
    80004408:	00009797          	auipc	a5,0x9
    8000440c:	b0a7c783          	lbu	a5,-1270(a5) # 8000cf12 <_ZL9finishedC>
    80004410:	fc078ce3          	beqz	a5,800043e8 <_Z20Threads_CPP_API_testv+0x124>
    80004414:	00009797          	auipc	a5,0x9
    80004418:	aff7c783          	lbu	a5,-1281(a5) # 8000cf13 <_ZL9finishedD>
    8000441c:	fc0786e3          	beqz	a5,800043e8 <_Z20Threads_CPP_API_testv+0x124>
    80004420:	fc040493          	addi	s1,s0,-64
    80004424:	0080006f          	j	8000442c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004428:	00848493          	addi	s1,s1,8
    8000442c:	fe040793          	addi	a5,s0,-32
    80004430:	08f48663          	beq	s1,a5,800044bc <_Z20Threads_CPP_API_testv+0x1f8>
    80004434:	0004b503          	ld	a0,0(s1)
    80004438:	fe0508e3          	beqz	a0,80004428 <_Z20Threads_CPP_API_testv+0x164>
    8000443c:	00053783          	ld	a5,0(a0)
    80004440:	0087b783          	ld	a5,8(a5)
    80004444:	000780e7          	jalr	a5
    80004448:	fe1ff06f          	j	80004428 <_Z20Threads_CPP_API_testv+0x164>
    8000444c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004450:	00048513          	mv	a0,s1
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	c18080e7          	jalr	-1000(ra) # 8000206c <_ZdlPv>
    8000445c:	00090513          	mv	a0,s2
    80004460:	0000a097          	auipc	ra,0xa
    80004464:	bb8080e7          	jalr	-1096(ra) # 8000e018 <_Unwind_Resume>
    80004468:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000446c:	00048513          	mv	a0,s1
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	bfc080e7          	jalr	-1028(ra) # 8000206c <_ZdlPv>
    80004478:	00090513          	mv	a0,s2
    8000447c:	0000a097          	auipc	ra,0xa
    80004480:	b9c080e7          	jalr	-1124(ra) # 8000e018 <_Unwind_Resume>
    80004484:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004488:	00048513          	mv	a0,s1
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	be0080e7          	jalr	-1056(ra) # 8000206c <_ZdlPv>
    80004494:	00090513          	mv	a0,s2
    80004498:	0000a097          	auipc	ra,0xa
    8000449c:	b80080e7          	jalr	-1152(ra) # 8000e018 <_Unwind_Resume>
    800044a0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800044a4:	00048513          	mv	a0,s1
    800044a8:	ffffe097          	auipc	ra,0xffffe
    800044ac:	bc4080e7          	jalr	-1084(ra) # 8000206c <_ZdlPv>
    800044b0:	00090513          	mv	a0,s2
    800044b4:	0000a097          	auipc	ra,0xa
    800044b8:	b64080e7          	jalr	-1180(ra) # 8000e018 <_Unwind_Resume>
}
    800044bc:	03813083          	ld	ra,56(sp)
    800044c0:	03013403          	ld	s0,48(sp)
    800044c4:	02813483          	ld	s1,40(sp)
    800044c8:	02013903          	ld	s2,32(sp)
    800044cc:	04010113          	addi	sp,sp,64
    800044d0:	00008067          	ret

00000000800044d4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	00813023          	sd	s0,0(sp)
    800044e0:	01010413          	addi	s0,sp,16
    800044e4:	00008797          	auipc	a5,0x8
    800044e8:	77c78793          	addi	a5,a5,1916 # 8000cc60 <_ZTV7WorkerA+0x10>
    800044ec:	00f53023          	sd	a5,0(a0)
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	a64080e7          	jalr	-1436(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800044f8:	00813083          	ld	ra,8(sp)
    800044fc:	00013403          	ld	s0,0(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <_ZN7WorkerAD0Ev>:
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00050493          	mv	s1,a0
    80004520:	00008797          	auipc	a5,0x8
    80004524:	74078793          	addi	a5,a5,1856 # 8000cc60 <_ZTV7WorkerA+0x10>
    80004528:	00f53023          	sd	a5,0(a0)
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	a28080e7          	jalr	-1496(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004534:	00048513          	mv	a0,s1
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	b34080e7          	jalr	-1228(ra) # 8000206c <_ZdlPv>
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00813483          	ld	s1,8(sp)
    8000454c:	02010113          	addi	sp,sp,32
    80004550:	00008067          	ret

0000000080004554 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
    80004564:	00008797          	auipc	a5,0x8
    80004568:	72478793          	addi	a5,a5,1828 # 8000cc88 <_ZTV7WorkerB+0x10>
    8000456c:	00f53023          	sd	a5,0(a0)
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	9e4080e7          	jalr	-1564(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004578:	00813083          	ld	ra,8(sp)
    8000457c:	00013403          	ld	s0,0(sp)
    80004580:	01010113          	addi	sp,sp,16
    80004584:	00008067          	ret

0000000080004588 <_ZN7WorkerBD0Ev>:
    80004588:	fe010113          	addi	sp,sp,-32
    8000458c:	00113c23          	sd	ra,24(sp)
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00913423          	sd	s1,8(sp)
    80004598:	02010413          	addi	s0,sp,32
    8000459c:	00050493          	mv	s1,a0
    800045a0:	00008797          	auipc	a5,0x8
    800045a4:	6e878793          	addi	a5,a5,1768 # 8000cc88 <_ZTV7WorkerB+0x10>
    800045a8:	00f53023          	sd	a5,0(a0)
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	9a8080e7          	jalr	-1624(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800045b4:	00048513          	mv	a0,s1
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	ab4080e7          	jalr	-1356(ra) # 8000206c <_ZdlPv>
    800045c0:	01813083          	ld	ra,24(sp)
    800045c4:	01013403          	ld	s0,16(sp)
    800045c8:	00813483          	ld	s1,8(sp)
    800045cc:	02010113          	addi	sp,sp,32
    800045d0:	00008067          	ret

00000000800045d4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800045d4:	ff010113          	addi	sp,sp,-16
    800045d8:	00113423          	sd	ra,8(sp)
    800045dc:	00813023          	sd	s0,0(sp)
    800045e0:	01010413          	addi	s0,sp,16
    800045e4:	00008797          	auipc	a5,0x8
    800045e8:	6cc78793          	addi	a5,a5,1740 # 8000ccb0 <_ZTV7WorkerC+0x10>
    800045ec:	00f53023          	sd	a5,0(a0)
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	964080e7          	jalr	-1692(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800045f8:	00813083          	ld	ra,8(sp)
    800045fc:	00013403          	ld	s0,0(sp)
    80004600:	01010113          	addi	sp,sp,16
    80004604:	00008067          	ret

0000000080004608 <_ZN7WorkerCD0Ev>:
    80004608:	fe010113          	addi	sp,sp,-32
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	00813823          	sd	s0,16(sp)
    80004614:	00913423          	sd	s1,8(sp)
    80004618:	02010413          	addi	s0,sp,32
    8000461c:	00050493          	mv	s1,a0
    80004620:	00008797          	auipc	a5,0x8
    80004624:	69078793          	addi	a5,a5,1680 # 8000ccb0 <_ZTV7WorkerC+0x10>
    80004628:	00f53023          	sd	a5,0(a0)
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	928080e7          	jalr	-1752(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004634:	00048513          	mv	a0,s1
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	a34080e7          	jalr	-1484(ra) # 8000206c <_ZdlPv>
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	02010113          	addi	sp,sp,32
    80004650:	00008067          	ret

0000000080004654 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00113423          	sd	ra,8(sp)
    8000465c:	00813023          	sd	s0,0(sp)
    80004660:	01010413          	addi	s0,sp,16
    80004664:	00008797          	auipc	a5,0x8
    80004668:	67478793          	addi	a5,a5,1652 # 8000ccd8 <_ZTV7WorkerD+0x10>
    8000466c:	00f53023          	sd	a5,0(a0)
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	8e4080e7          	jalr	-1820(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN7WorkerDD0Ev>:
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00113c23          	sd	ra,24(sp)
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	02010413          	addi	s0,sp,32
    8000469c:	00050493          	mv	s1,a0
    800046a0:	00008797          	auipc	a5,0x8
    800046a4:	63878793          	addi	a5,a5,1592 # 8000ccd8 <_ZTV7WorkerD+0x10>
    800046a8:	00f53023          	sd	a5,0(a0)
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	8a8080e7          	jalr	-1880(ra) # 80001f54 <_ZN6ThreadD1Ev>
    800046b4:	00048513          	mv	a0,s1
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	9b4080e7          	jalr	-1612(ra) # 8000206c <_ZdlPv>
    800046c0:	01813083          	ld	ra,24(sp)
    800046c4:	01013403          	ld	s0,16(sp)
    800046c8:	00813483          	ld	s1,8(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <_ZN7WorkerA3runEv>:
    void run() override {
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00113423          	sd	ra,8(sp)
    800046dc:	00813023          	sd	s0,0(sp)
    800046e0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800046e4:	00000593          	li	a1,0
    800046e8:	fffff097          	auipc	ra,0xfffff
    800046ec:	774080e7          	jalr	1908(ra) # 80003e5c <_ZN7WorkerA11workerBodyAEPv>
    }
    800046f0:	00813083          	ld	ra,8(sp)
    800046f4:	00013403          	ld	s0,0(sp)
    800046f8:	01010113          	addi	sp,sp,16
    800046fc:	00008067          	ret

0000000080004700 <_ZN7WorkerB3runEv>:
    void run() override {
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00113423          	sd	ra,8(sp)
    80004708:	00813023          	sd	s0,0(sp)
    8000470c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004710:	00000593          	li	a1,0
    80004714:	00000097          	auipc	ra,0x0
    80004718:	814080e7          	jalr	-2028(ra) # 80003f28 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000471c:	00813083          	ld	ra,8(sp)
    80004720:	00013403          	ld	s0,0(sp)
    80004724:	01010113          	addi	sp,sp,16
    80004728:	00008067          	ret

000000008000472c <_ZN7WorkerC3runEv>:
    void run() override {
    8000472c:	ff010113          	addi	sp,sp,-16
    80004730:	00113423          	sd	ra,8(sp)
    80004734:	00813023          	sd	s0,0(sp)
    80004738:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000473c:	00000593          	li	a1,0
    80004740:	00000097          	auipc	ra,0x0
    80004744:	8bc080e7          	jalr	-1860(ra) # 80003ffc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004748:	00813083          	ld	ra,8(sp)
    8000474c:	00013403          	ld	s0,0(sp)
    80004750:	01010113          	addi	sp,sp,16
    80004754:	00008067          	ret

0000000080004758 <_ZN7WorkerD3runEv>:
    void run() override {
    80004758:	ff010113          	addi	sp,sp,-16
    8000475c:	00113423          	sd	ra,8(sp)
    80004760:	00813023          	sd	s0,0(sp)
    80004764:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004768:	00000593          	li	a1,0
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	a10080e7          	jalr	-1520(ra) # 8000417c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004774:	00813083          	ld	ra,8(sp)
    80004778:	00013403          	ld	s0,0(sp)
    8000477c:	01010113          	addi	sp,sp,16
    80004780:	00008067          	ret

0000000080004784 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004784:	f8010113          	addi	sp,sp,-128
    80004788:	06113c23          	sd	ra,120(sp)
    8000478c:	06813823          	sd	s0,112(sp)
    80004790:	06913423          	sd	s1,104(sp)
    80004794:	07213023          	sd	s2,96(sp)
    80004798:	05313c23          	sd	s3,88(sp)
    8000479c:	05413823          	sd	s4,80(sp)
    800047a0:	05513423          	sd	s5,72(sp)
    800047a4:	05613023          	sd	s6,64(sp)
    800047a8:	03713c23          	sd	s7,56(sp)
    800047ac:	03813823          	sd	s8,48(sp)
    800047b0:	03913423          	sd	s9,40(sp)
    800047b4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800047b8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800047bc:	00006517          	auipc	a0,0x6
    800047c0:	97450513          	addi	a0,a0,-1676 # 8000a130 <CONSOLE_STATUS+0x120>
    800047c4:	00002097          	auipc	ra,0x2
    800047c8:	8c8080e7          	jalr	-1848(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    800047cc:	01e00593          	li	a1,30
    800047d0:	f8040493          	addi	s1,s0,-128
    800047d4:	00048513          	mv	a0,s1
    800047d8:	00002097          	auipc	ra,0x2
    800047dc:	93c080e7          	jalr	-1732(ra) # 80006114 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00002097          	auipc	ra,0x2
    800047e8:	a08080e7          	jalr	-1528(ra) # 800061ec <_Z11stringToIntPKc>
    800047ec:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800047f0:	00006517          	auipc	a0,0x6
    800047f4:	96050513          	addi	a0,a0,-1696 # 8000a150 <CONSOLE_STATUS+0x140>
    800047f8:	00002097          	auipc	ra,0x2
    800047fc:	894080e7          	jalr	-1900(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    80004800:	01e00593          	li	a1,30
    80004804:	00048513          	mv	a0,s1
    80004808:	00002097          	auipc	ra,0x2
    8000480c:	90c080e7          	jalr	-1780(ra) # 80006114 <_Z9getStringPci>
    n = stringToInt(input);
    80004810:	00048513          	mv	a0,s1
    80004814:	00002097          	auipc	ra,0x2
    80004818:	9d8080e7          	jalr	-1576(ra) # 800061ec <_Z11stringToIntPKc>
    8000481c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004820:	00006517          	auipc	a0,0x6
    80004824:	95050513          	addi	a0,a0,-1712 # 8000a170 <CONSOLE_STATUS+0x160>
    80004828:	00002097          	auipc	ra,0x2
    8000482c:	864080e7          	jalr	-1948(ra) # 8000608c <_Z11printStringPKc>
    printInt(threadNum);
    80004830:	00000613          	li	a2,0
    80004834:	00a00593          	li	a1,10
    80004838:	00098513          	mv	a0,s3
    8000483c:	00002097          	auipc	ra,0x2
    80004840:	a00080e7          	jalr	-1536(ra) # 8000623c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004844:	00006517          	auipc	a0,0x6
    80004848:	94450513          	addi	a0,a0,-1724 # 8000a188 <CONSOLE_STATUS+0x178>
    8000484c:	00002097          	auipc	ra,0x2
    80004850:	840080e7          	jalr	-1984(ra) # 8000608c <_Z11printStringPKc>
    printInt(n);
    80004854:	00000613          	li	a2,0
    80004858:	00a00593          	li	a1,10
    8000485c:	00048513          	mv	a0,s1
    80004860:	00002097          	auipc	ra,0x2
    80004864:	9dc080e7          	jalr	-1572(ra) # 8000623c <_Z8printIntiii>
    printString(".\n");
    80004868:	00006517          	auipc	a0,0x6
    8000486c:	93850513          	addi	a0,a0,-1736 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004870:	00002097          	auipc	ra,0x2
    80004874:	81c080e7          	jalr	-2020(ra) # 8000608c <_Z11printStringPKc>
    if (threadNum > n) {
    80004878:	0334c463          	blt	s1,s3,800048a0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000487c:	03305c63          	blez	s3,800048b4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004880:	03800513          	li	a0,56
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	7c0080e7          	jalr	1984(ra) # 80002044 <_Znwm>
    8000488c:	00050a93          	mv	s5,a0
    80004890:	00048593          	mv	a1,s1
    80004894:	00002097          	auipc	ra,0x2
    80004898:	ac8080e7          	jalr	-1336(ra) # 8000635c <_ZN9BufferCPPC1Ei>
    8000489c:	0300006f          	j	800048cc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800048a0:	00006517          	auipc	a0,0x6
    800048a4:	90850513          	addi	a0,a0,-1784 # 8000a1a8 <CONSOLE_STATUS+0x198>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	7e4080e7          	jalr	2020(ra) # 8000608c <_Z11printStringPKc>
        return;
    800048b0:	0140006f          	j	800048c4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800048b4:	00006517          	auipc	a0,0x6
    800048b8:	93450513          	addi	a0,a0,-1740 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	7d0080e7          	jalr	2000(ra) # 8000608c <_Z11printStringPKc>
        return;
    800048c4:	000c0113          	mv	sp,s8
    800048c8:	2140006f          	j	80004adc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800048cc:	01000513          	li	a0,16
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	774080e7          	jalr	1908(ra) # 80002044 <_Znwm>
    800048d8:	00050913          	mv	s2,a0
    800048dc:	00000593          	li	a1,0
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	91c080e7          	jalr	-1764(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    800048e8:	00008797          	auipc	a5,0x8
    800048ec:	6327bc23          	sd	s2,1592(a5) # 8000cf20 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800048f0:	00399793          	slli	a5,s3,0x3
    800048f4:	00f78793          	addi	a5,a5,15
    800048f8:	ff07f793          	andi	a5,a5,-16
    800048fc:	40f10133          	sub	sp,sp,a5
    80004900:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004904:	0019871b          	addiw	a4,s3,1
    80004908:	00171793          	slli	a5,a4,0x1
    8000490c:	00e787b3          	add	a5,a5,a4
    80004910:	00379793          	slli	a5,a5,0x3
    80004914:	00f78793          	addi	a5,a5,15
    80004918:	ff07f793          	andi	a5,a5,-16
    8000491c:	40f10133          	sub	sp,sp,a5
    80004920:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004924:	00199493          	slli	s1,s3,0x1
    80004928:	013484b3          	add	s1,s1,s3
    8000492c:	00349493          	slli	s1,s1,0x3
    80004930:	009b04b3          	add	s1,s6,s1
    80004934:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004938:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000493c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004940:	02800513          	li	a0,40
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	700080e7          	jalr	1792(ra) # 80002044 <_Znwm>
    8000494c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	7f4080e7          	jalr	2036(ra) # 80002144 <_ZN6ThreadC1Ev>
    80004958:	00008797          	auipc	a5,0x8
    8000495c:	3f878793          	addi	a5,a5,1016 # 8000cd50 <_ZTV8Consumer+0x10>
    80004960:	00fbb023          	sd	a5,0(s7)
    80004964:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004968:	000b8513          	mv	a0,s7
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	808080e7          	jalr	-2040(ra) # 80002174 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004974:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004978:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000497c:	00008797          	auipc	a5,0x8
    80004980:	5a47b783          	ld	a5,1444(a5) # 8000cf20 <_ZL10waitForAll>
    80004984:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004988:	02800513          	li	a0,40
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	6b8080e7          	jalr	1720(ra) # 80002044 <_Znwm>
    80004994:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	7ac080e7          	jalr	1964(ra) # 80002144 <_ZN6ThreadC1Ev>
    800049a0:	00008797          	auipc	a5,0x8
    800049a4:	36078793          	addi	a5,a5,864 # 8000cd00 <_ZTV16ProducerKeyborad+0x10>
    800049a8:	00f4b023          	sd	a5,0(s1)
    800049ac:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800049b0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800049b4:	00048513          	mv	a0,s1
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	7bc080e7          	jalr	1980(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800049c0:	00100913          	li	s2,1
    800049c4:	0300006f          	j	800049f4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800049c8:	00008797          	auipc	a5,0x8
    800049cc:	36078793          	addi	a5,a5,864 # 8000cd28 <_ZTV8Producer+0x10>
    800049d0:	00fcb023          	sd	a5,0(s9)
    800049d4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800049d8:	00391793          	slli	a5,s2,0x3
    800049dc:	00fa07b3          	add	a5,s4,a5
    800049e0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800049e4:	000c8513          	mv	a0,s9
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	78c080e7          	jalr	1932(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800049f0:	0019091b          	addiw	s2,s2,1
    800049f4:	05395263          	bge	s2,s3,80004a38 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800049f8:	00191493          	slli	s1,s2,0x1
    800049fc:	012484b3          	add	s1,s1,s2
    80004a00:	00349493          	slli	s1,s1,0x3
    80004a04:	009b04b3          	add	s1,s6,s1
    80004a08:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004a0c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004a10:	00008797          	auipc	a5,0x8
    80004a14:	5107b783          	ld	a5,1296(a5) # 8000cf20 <_ZL10waitForAll>
    80004a18:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004a1c:	02800513          	li	a0,40
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	624080e7          	jalr	1572(ra) # 80002044 <_Znwm>
    80004a28:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	718080e7          	jalr	1816(ra) # 80002144 <_ZN6ThreadC1Ev>
    80004a34:	f95ff06f          	j	800049c8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	774080e7          	jalr	1908(ra) # 800021ac <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a40:	00000493          	li	s1,0
    80004a44:	0099ce63          	blt	s3,s1,80004a60 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004a48:	00008517          	auipc	a0,0x8
    80004a4c:	4d853503          	ld	a0,1240(a0) # 8000cf20 <_ZL10waitForAll>
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	7e8080e7          	jalr	2024(ra) # 80002238 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a58:	0014849b          	addiw	s1,s1,1
    80004a5c:	fe9ff06f          	j	80004a44 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004a60:	00008517          	auipc	a0,0x8
    80004a64:	4c053503          	ld	a0,1216(a0) # 8000cf20 <_ZL10waitForAll>
    80004a68:	00050863          	beqz	a0,80004a78 <_Z20testConsumerProducerv+0x2f4>
    80004a6c:	00053783          	ld	a5,0(a0)
    80004a70:	0087b783          	ld	a5,8(a5)
    80004a74:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004a78:	00000493          	li	s1,0
    80004a7c:	0080006f          	j	80004a84 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004a80:	0014849b          	addiw	s1,s1,1
    80004a84:	0334d263          	bge	s1,s3,80004aa8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004a88:	00349793          	slli	a5,s1,0x3
    80004a8c:	00fa07b3          	add	a5,s4,a5
    80004a90:	0007b503          	ld	a0,0(a5)
    80004a94:	fe0506e3          	beqz	a0,80004a80 <_Z20testConsumerProducerv+0x2fc>
    80004a98:	00053783          	ld	a5,0(a0)
    80004a9c:	0087b783          	ld	a5,8(a5)
    80004aa0:	000780e7          	jalr	a5
    80004aa4:	fddff06f          	j	80004a80 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004aa8:	000b8a63          	beqz	s7,80004abc <_Z20testConsumerProducerv+0x338>
    80004aac:	000bb783          	ld	a5,0(s7)
    80004ab0:	0087b783          	ld	a5,8(a5)
    80004ab4:	000b8513          	mv	a0,s7
    80004ab8:	000780e7          	jalr	a5
    delete buffer;
    80004abc:	000a8e63          	beqz	s5,80004ad8 <_Z20testConsumerProducerv+0x354>
    80004ac0:	000a8513          	mv	a0,s5
    80004ac4:	00002097          	auipc	ra,0x2
    80004ac8:	b90080e7          	jalr	-1136(ra) # 80006654 <_ZN9BufferCPPD1Ev>
    80004acc:	000a8513          	mv	a0,s5
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	59c080e7          	jalr	1436(ra) # 8000206c <_ZdlPv>
    80004ad8:	000c0113          	mv	sp,s8
}
    80004adc:	f8040113          	addi	sp,s0,-128
    80004ae0:	07813083          	ld	ra,120(sp)
    80004ae4:	07013403          	ld	s0,112(sp)
    80004ae8:	06813483          	ld	s1,104(sp)
    80004aec:	06013903          	ld	s2,96(sp)
    80004af0:	05813983          	ld	s3,88(sp)
    80004af4:	05013a03          	ld	s4,80(sp)
    80004af8:	04813a83          	ld	s5,72(sp)
    80004afc:	04013b03          	ld	s6,64(sp)
    80004b00:	03813b83          	ld	s7,56(sp)
    80004b04:	03013c03          	ld	s8,48(sp)
    80004b08:	02813c83          	ld	s9,40(sp)
    80004b0c:	08010113          	addi	sp,sp,128
    80004b10:	00008067          	ret
    80004b14:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b18:	000a8513          	mv	a0,s5
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	550080e7          	jalr	1360(ra) # 8000206c <_ZdlPv>
    80004b24:	00048513          	mv	a0,s1
    80004b28:	00009097          	auipc	ra,0x9
    80004b2c:	4f0080e7          	jalr	1264(ra) # 8000e018 <_Unwind_Resume>
    80004b30:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004b34:	00090513          	mv	a0,s2
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	534080e7          	jalr	1332(ra) # 8000206c <_ZdlPv>
    80004b40:	00048513          	mv	a0,s1
    80004b44:	00009097          	auipc	ra,0x9
    80004b48:	4d4080e7          	jalr	1236(ra) # 8000e018 <_Unwind_Resume>
    80004b4c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004b50:	000b8513          	mv	a0,s7
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	518080e7          	jalr	1304(ra) # 8000206c <_ZdlPv>
    80004b5c:	00048513          	mv	a0,s1
    80004b60:	00009097          	auipc	ra,0x9
    80004b64:	4b8080e7          	jalr	1208(ra) # 8000e018 <_Unwind_Resume>
    80004b68:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b6c:	00048513          	mv	a0,s1
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	4fc080e7          	jalr	1276(ra) # 8000206c <_ZdlPv>
    80004b78:	00090513          	mv	a0,s2
    80004b7c:	00009097          	auipc	ra,0x9
    80004b80:	49c080e7          	jalr	1180(ra) # 8000e018 <_Unwind_Resume>
    80004b84:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004b88:	000c8513          	mv	a0,s9
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	4e0080e7          	jalr	1248(ra) # 8000206c <_ZdlPv>
    80004b94:	00048513          	mv	a0,s1
    80004b98:	00009097          	auipc	ra,0x9
    80004b9c:	480080e7          	jalr	1152(ra) # 8000e018 <_Unwind_Resume>

0000000080004ba0 <_ZN8Consumer3runEv>:
    void run() override {
    80004ba0:	fd010113          	addi	sp,sp,-48
    80004ba4:	02113423          	sd	ra,40(sp)
    80004ba8:	02813023          	sd	s0,32(sp)
    80004bac:	00913c23          	sd	s1,24(sp)
    80004bb0:	01213823          	sd	s2,16(sp)
    80004bb4:	01313423          	sd	s3,8(sp)
    80004bb8:	03010413          	addi	s0,sp,48
    80004bbc:	00050913          	mv	s2,a0
        int i = 0;
    80004bc0:	00000993          	li	s3,0
    80004bc4:	0100006f          	j	80004bd4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004bc8:	00a00513          	li	a0,10
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	7cc080e7          	jalr	1996(ra) # 80002398 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004bd4:	00008797          	auipc	a5,0x8
    80004bd8:	3447a783          	lw	a5,836(a5) # 8000cf18 <_ZL9threadEnd>
    80004bdc:	04079a63          	bnez	a5,80004c30 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004be0:	02093783          	ld	a5,32(s2)
    80004be4:	0087b503          	ld	a0,8(a5)
    80004be8:	00002097          	auipc	ra,0x2
    80004bec:	958080e7          	jalr	-1704(ra) # 80006540 <_ZN9BufferCPP3getEv>
            i++;
    80004bf0:	0019849b          	addiw	s1,s3,1
    80004bf4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004bf8:	0ff57513          	andi	a0,a0,255
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	79c080e7          	jalr	1948(ra) # 80002398 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004c04:	05000793          	li	a5,80
    80004c08:	02f4e4bb          	remw	s1,s1,a5
    80004c0c:	fc0494e3          	bnez	s1,80004bd4 <_ZN8Consumer3runEv+0x34>
    80004c10:	fb9ff06f          	j	80004bc8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004c14:	02093783          	ld	a5,32(s2)
    80004c18:	0087b503          	ld	a0,8(a5)
    80004c1c:	00002097          	auipc	ra,0x2
    80004c20:	924080e7          	jalr	-1756(ra) # 80006540 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004c24:	0ff57513          	andi	a0,a0,255
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	770080e7          	jalr	1904(ra) # 80002398 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004c30:	02093783          	ld	a5,32(s2)
    80004c34:	0087b503          	ld	a0,8(a5)
    80004c38:	00002097          	auipc	ra,0x2
    80004c3c:	994080e7          	jalr	-1644(ra) # 800065cc <_ZN9BufferCPP6getCntEv>
    80004c40:	fca04ae3          	bgtz	a0,80004c14 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004c44:	02093783          	ld	a5,32(s2)
    80004c48:	0107b503          	ld	a0,16(a5)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	624080e7          	jalr	1572(ra) # 80002270 <_ZN9Semaphore6signalEv>
    }
    80004c54:	02813083          	ld	ra,40(sp)
    80004c58:	02013403          	ld	s0,32(sp)
    80004c5c:	01813483          	ld	s1,24(sp)
    80004c60:	01013903          	ld	s2,16(sp)
    80004c64:	00813983          	ld	s3,8(sp)
    80004c68:	03010113          	addi	sp,sp,48
    80004c6c:	00008067          	ret

0000000080004c70 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00113423          	sd	ra,8(sp)
    80004c78:	00813023          	sd	s0,0(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    80004c80:	00008797          	auipc	a5,0x8
    80004c84:	0d078793          	addi	a5,a5,208 # 8000cd50 <_ZTV8Consumer+0x10>
    80004c88:	00f53023          	sd	a5,0(a0)
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	2c8080e7          	jalr	712(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004c94:	00813083          	ld	ra,8(sp)
    80004c98:	00013403          	ld	s0,0(sp)
    80004c9c:	01010113          	addi	sp,sp,16
    80004ca0:	00008067          	ret

0000000080004ca4 <_ZN8ConsumerD0Ev>:
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	00050493          	mv	s1,a0
    80004cbc:	00008797          	auipc	a5,0x8
    80004cc0:	09478793          	addi	a5,a5,148 # 8000cd50 <_ZTV8Consumer+0x10>
    80004cc4:	00f53023          	sd	a5,0(a0)
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	28c080e7          	jalr	652(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	398080e7          	jalr	920(ra) # 8000206c <_ZdlPv>
    80004cdc:	01813083          	ld	ra,24(sp)
    80004ce0:	01013403          	ld	s0,16(sp)
    80004ce4:	00813483          	ld	s1,8(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	00008067          	ret

0000000080004cf0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004cf0:	ff010113          	addi	sp,sp,-16
    80004cf4:	00113423          	sd	ra,8(sp)
    80004cf8:	00813023          	sd	s0,0(sp)
    80004cfc:	01010413          	addi	s0,sp,16
    80004d00:	00008797          	auipc	a5,0x8
    80004d04:	00078793          	mv	a5,a5
    80004d08:	00f53023          	sd	a5,0(a0)
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	248080e7          	jalr	584(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004d14:	00813083          	ld	ra,8(sp)
    80004d18:	00013403          	ld	s0,0(sp)
    80004d1c:	01010113          	addi	sp,sp,16
    80004d20:	00008067          	ret

0000000080004d24 <_ZN16ProducerKeyboradD0Ev>:
    80004d24:	fe010113          	addi	sp,sp,-32
    80004d28:	00113c23          	sd	ra,24(sp)
    80004d2c:	00813823          	sd	s0,16(sp)
    80004d30:	00913423          	sd	s1,8(sp)
    80004d34:	02010413          	addi	s0,sp,32
    80004d38:	00050493          	mv	s1,a0
    80004d3c:	00008797          	auipc	a5,0x8
    80004d40:	fc478793          	addi	a5,a5,-60 # 8000cd00 <_ZTV16ProducerKeyborad+0x10>
    80004d44:	00f53023          	sd	a5,0(a0)
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	20c080e7          	jalr	524(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004d50:	00048513          	mv	a0,s1
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	318080e7          	jalr	792(ra) # 8000206c <_ZdlPv>
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	00813483          	ld	s1,8(sp)
    80004d68:	02010113          	addi	sp,sp,32
    80004d6c:	00008067          	ret

0000000080004d70 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004d70:	ff010113          	addi	sp,sp,-16
    80004d74:	00113423          	sd	ra,8(sp)
    80004d78:	00813023          	sd	s0,0(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	00008797          	auipc	a5,0x8
    80004d84:	fa878793          	addi	a5,a5,-88 # 8000cd28 <_ZTV8Producer+0x10>
    80004d88:	00f53023          	sd	a5,0(a0)
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	1c8080e7          	jalr	456(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004d94:	00813083          	ld	ra,8(sp)
    80004d98:	00013403          	ld	s0,0(sp)
    80004d9c:	01010113          	addi	sp,sp,16
    80004da0:	00008067          	ret

0000000080004da4 <_ZN8ProducerD0Ev>:
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	02010413          	addi	s0,sp,32
    80004db8:	00050493          	mv	s1,a0
    80004dbc:	00008797          	auipc	a5,0x8
    80004dc0:	f6c78793          	addi	a5,a5,-148 # 8000cd28 <_ZTV8Producer+0x10>
    80004dc4:	00f53023          	sd	a5,0(a0)
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	18c080e7          	jalr	396(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80004dd0:	00048513          	mv	a0,s1
    80004dd4:	ffffd097          	auipc	ra,0xffffd
    80004dd8:	298080e7          	jalr	664(ra) # 8000206c <_ZdlPv>
    80004ddc:	01813083          	ld	ra,24(sp)
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	02010113          	addi	sp,sp,32
    80004dec:	00008067          	ret

0000000080004df0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004df0:	fe010113          	addi	sp,sp,-32
    80004df4:	00113c23          	sd	ra,24(sp)
    80004df8:	00813823          	sd	s0,16(sp)
    80004dfc:	00913423          	sd	s1,8(sp)
    80004e00:	02010413          	addi	s0,sp,32
    80004e04:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x31) {
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	818080e7          	jalr	-2024(ra) # 80001620 <_Z4getcv>
    80004e10:	0005059b          	sext.w	a1,a0
    80004e14:	03100793          	li	a5,49
    80004e18:	00f58c63          	beq	a1,a5,80004e30 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004e1c:	0204b783          	ld	a5,32(s1)
    80004e20:	0087b503          	ld	a0,8(a5)
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	68c080e7          	jalr	1676(ra) # 800064b0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x31) {
    80004e2c:	fddff06f          	j	80004e08 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004e30:	00100793          	li	a5,1
    80004e34:	00008717          	auipc	a4,0x8
    80004e38:	0ef72223          	sw	a5,228(a4) # 8000cf18 <_ZL9threadEnd>
        td->buffer->put('!');
    80004e3c:	0204b783          	ld	a5,32(s1)
    80004e40:	02100593          	li	a1,33
    80004e44:	0087b503          	ld	a0,8(a5)
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	668080e7          	jalr	1640(ra) # 800064b0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004e50:	0204b783          	ld	a5,32(s1)
    80004e54:	0107b503          	ld	a0,16(a5)
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	418080e7          	jalr	1048(ra) # 80002270 <_ZN9Semaphore6signalEv>
    }
    80004e60:	01813083          	ld	ra,24(sp)
    80004e64:	01013403          	ld	s0,16(sp)
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_ZN8Producer3runEv>:
    void run() override {
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	01213023          	sd	s2,0(sp)
    80004e88:	02010413          	addi	s0,sp,32
    80004e8c:	00050493          	mv	s1,a0
        int i = 0;
    80004e90:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e94:	00008797          	auipc	a5,0x8
    80004e98:	0847a783          	lw	a5,132(a5) # 8000cf18 <_ZL9threadEnd>
    80004e9c:	04079263          	bnez	a5,80004ee0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004ea0:	0204b783          	ld	a5,32(s1)
    80004ea4:	0007a583          	lw	a1,0(a5)
    80004ea8:	0305859b          	addiw	a1,a1,48
    80004eac:	0087b503          	ld	a0,8(a5)
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	600080e7          	jalr	1536(ra) # 800064b0 <_ZN9BufferCPP3putEi>
            i++;
    80004eb8:	0019071b          	addiw	a4,s2,1
    80004ebc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ec0:	0204b783          	ld	a5,32(s1)
    80004ec4:	0007a783          	lw	a5,0(a5)
    80004ec8:	00e787bb          	addw	a5,a5,a4
    80004ecc:	00500513          	li	a0,5
    80004ed0:	02a7e53b          	remw	a0,a5,a0
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	300080e7          	jalr	768(ra) # 800021d4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004edc:	fb9ff06f          	j	80004e94 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004ee0:	0204b783          	ld	a5,32(s1)
    80004ee4:	0107b503          	ld	a0,16(a5)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	388080e7          	jalr	904(ra) # 80002270 <_ZN9Semaphore6signalEv>
    }
    80004ef0:	01813083          	ld	ra,24(sp)
    80004ef4:	01013403          	ld	s0,16(sp)
    80004ef8:	00813483          	ld	s1,8(sp)
    80004efc:	00013903          	ld	s2,0(sp)
    80004f00:	02010113          	addi	sp,sp,32
    80004f04:	00008067          	ret

0000000080004f08 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f08:	fe010113          	addi	sp,sp,-32
    80004f0c:	00113c23          	sd	ra,24(sp)
    80004f10:	00813823          	sd	s0,16(sp)
    80004f14:	00913423          	sd	s1,8(sp)
    80004f18:	01213023          	sd	s2,0(sp)
    80004f1c:	02010413          	addi	s0,sp,32
    80004f20:	00050493          	mv	s1,a0
    80004f24:	00058913          	mv	s2,a1
    80004f28:	0015879b          	addiw	a5,a1,1
    80004f2c:	0007851b          	sext.w	a0,a5
    80004f30:	00f4a023          	sw	a5,0(s1)
    80004f34:	0004a823          	sw	zero,16(s1)
    80004f38:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004f3c:	00251513          	slli	a0,a0,0x2
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	318080e7          	jalr	792(ra) # 80001258 <_Z9mem_allocm>
    80004f48:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004f4c:	00000593          	li	a1,0
    80004f50:	02048513          	addi	a0,s1,32
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	4b4080e7          	jalr	1204(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004f5c:	00090593          	mv	a1,s2
    80004f60:	01848513          	addi	a0,s1,24
    80004f64:	ffffc097          	auipc	ra,0xffffc
    80004f68:	4a4080e7          	jalr	1188(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004f6c:	00100593          	li	a1,1
    80004f70:	02848513          	addi	a0,s1,40
    80004f74:	ffffc097          	auipc	ra,0xffffc
    80004f78:	494080e7          	jalr	1172(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004f7c:	00100593          	li	a1,1
    80004f80:	03048513          	addi	a0,s1,48
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	484080e7          	jalr	1156(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004f8c:	01813083          	ld	ra,24(sp)
    80004f90:	01013403          	ld	s0,16(sp)
    80004f94:	00813483          	ld	s1,8(sp)
    80004f98:	00013903          	ld	s2,0(sp)
    80004f9c:	02010113          	addi	sp,sp,32
    80004fa0:	00008067          	ret

0000000080004fa4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004fa4:	fe010113          	addi	sp,sp,-32
    80004fa8:	00113c23          	sd	ra,24(sp)
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00913423          	sd	s1,8(sp)
    80004fb4:	01213023          	sd	s2,0(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    80004fbc:	00050493          	mv	s1,a0
    80004fc0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004fc4:	01853503          	ld	a0,24(a0)
    80004fc8:	ffffc097          	auipc	ra,0xffffc
    80004fcc:	4dc080e7          	jalr	1244(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004fd0:	0304b503          	ld	a0,48(s1)
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	4d0080e7          	jalr	1232(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004fdc:	0084b783          	ld	a5,8(s1)
    80004fe0:	0144a703          	lw	a4,20(s1)
    80004fe4:	00271713          	slli	a4,a4,0x2
    80004fe8:	00e787b3          	add	a5,a5,a4
    80004fec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004ff0:	0144a783          	lw	a5,20(s1)
    80004ff4:	0017879b          	addiw	a5,a5,1
    80004ff8:	0004a703          	lw	a4,0(s1)
    80004ffc:	02e7e7bb          	remw	a5,a5,a4
    80005000:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005004:	0304b503          	ld	a0,48(s1)
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	4e8080e7          	jalr	1256(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005010:	0204b503          	ld	a0,32(s1)
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	4dc080e7          	jalr	1244(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    8000501c:	01813083          	ld	ra,24(sp)
    80005020:	01013403          	ld	s0,16(sp)
    80005024:	00813483          	ld	s1,8(sp)
    80005028:	00013903          	ld	s2,0(sp)
    8000502c:	02010113          	addi	sp,sp,32
    80005030:	00008067          	ret

0000000080005034 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005034:	fe010113          	addi	sp,sp,-32
    80005038:	00113c23          	sd	ra,24(sp)
    8000503c:	00813823          	sd	s0,16(sp)
    80005040:	00913423          	sd	s1,8(sp)
    80005044:	01213023          	sd	s2,0(sp)
    80005048:	02010413          	addi	s0,sp,32
    8000504c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005050:	02053503          	ld	a0,32(a0)
    80005054:	ffffc097          	auipc	ra,0xffffc
    80005058:	450080e7          	jalr	1104(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000505c:	0284b503          	ld	a0,40(s1)
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	444080e7          	jalr	1092(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005068:	0084b703          	ld	a4,8(s1)
    8000506c:	0104a783          	lw	a5,16(s1)
    80005070:	00279693          	slli	a3,a5,0x2
    80005074:	00d70733          	add	a4,a4,a3
    80005078:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000507c:	0017879b          	addiw	a5,a5,1
    80005080:	0004a703          	lw	a4,0(s1)
    80005084:	02e7e7bb          	remw	a5,a5,a4
    80005088:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000508c:	0284b503          	ld	a0,40(s1)
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	460080e7          	jalr	1120(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005098:	0184b503          	ld	a0,24(s1)
    8000509c:	ffffc097          	auipc	ra,0xffffc
    800050a0:	454080e7          	jalr	1108(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800050a4:	00090513          	mv	a0,s2
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    800050d8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800050dc:	02853503          	ld	a0,40(a0)
    800050e0:	ffffc097          	auipc	ra,0xffffc
    800050e4:	3c4080e7          	jalr	964(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800050e8:	0304b503          	ld	a0,48(s1)
    800050ec:	ffffc097          	auipc	ra,0xffffc
    800050f0:	3b8080e7          	jalr	952(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800050f4:	0144a783          	lw	a5,20(s1)
    800050f8:	0104a903          	lw	s2,16(s1)
    800050fc:	0327ce63          	blt	a5,s2,80005138 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005100:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005104:	0304b503          	ld	a0,48(s1)
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	3e8080e7          	jalr	1000(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005110:	0284b503          	ld	a0,40(s1)
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	3dc080e7          	jalr	988(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    8000511c:	00090513          	mv	a0,s2
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	00013903          	ld	s2,0(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret
        ret = cap - head + tail;
    80005138:	0004a703          	lw	a4,0(s1)
    8000513c:	4127093b          	subw	s2,a4,s2
    80005140:	00f9093b          	addw	s2,s2,a5
    80005144:	fc1ff06f          	j	80005104 <_ZN6Buffer6getCntEv+0x44>

0000000080005148 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005148:	fe010113          	addi	sp,sp,-32
    8000514c:	00113c23          	sd	ra,24(sp)
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	02010413          	addi	s0,sp,32
    8000515c:	00050493          	mv	s1,a0
    putc('\n');
    80005160:	00a00513          	li	a0,10
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	508080e7          	jalr	1288(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000516c:	00005517          	auipc	a0,0x5
    80005170:	1a450513          	addi	a0,a0,420 # 8000a310 <CONSOLE_STATUS+0x300>
    80005174:	00001097          	auipc	ra,0x1
    80005178:	f18080e7          	jalr	-232(ra) # 8000608c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000517c:	00048513          	mv	a0,s1
    80005180:	00000097          	auipc	ra,0x0
    80005184:	f40080e7          	jalr	-192(ra) # 800050c0 <_ZN6Buffer6getCntEv>
    80005188:	02a05c63          	blez	a0,800051c0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000518c:	0084b783          	ld	a5,8(s1)
    80005190:	0104a703          	lw	a4,16(s1)
    80005194:	00271713          	slli	a4,a4,0x2
    80005198:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000519c:	0007c503          	lbu	a0,0(a5)
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	4cc080e7          	jalr	1228(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    800051a8:	0104a783          	lw	a5,16(s1)
    800051ac:	0017879b          	addiw	a5,a5,1
    800051b0:	0004a703          	lw	a4,0(s1)
    800051b4:	02e7e7bb          	remw	a5,a5,a4
    800051b8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800051bc:	fc1ff06f          	j	8000517c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800051c0:	02100513          	li	a0,33
    800051c4:	ffffc097          	auipc	ra,0xffffc
    800051c8:	4a8080e7          	jalr	1192(ra) # 8000166c <_Z4putcc>
    putc('\n');
    800051cc:	00a00513          	li	a0,10
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	49c080e7          	jalr	1180(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    800051d8:	0084b503          	ld	a0,8(s1)
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	0d0080e7          	jalr	208(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    800051e4:	0204b503          	ld	a0,32(s1)
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	270080e7          	jalr	624(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800051f0:	0184b503          	ld	a0,24(s1)
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	264080e7          	jalr	612(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800051fc:	0304b503          	ld	a0,48(s1)
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	258080e7          	jalr	600(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005208:	0284b503          	ld	a0,40(s1)
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	24c080e7          	jalr	588(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	02010113          	addi	sp,sp,32
    80005224:	00008067          	ret

0000000080005228 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005228:	fe010113          	addi	sp,sp,-32
    8000522c:	00113c23          	sd	ra,24(sp)
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00913423          	sd	s1,8(sp)
    80005238:	01213023          	sd	s2,0(sp)
    8000523c:	02010413          	addi	s0,sp,32
    80005240:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005244:	00100793          	li	a5,1
    80005248:	02a7f863          	bgeu	a5,a0,80005278 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000524c:	00a00793          	li	a5,10
    80005250:	02f577b3          	remu	a5,a0,a5
    80005254:	02078e63          	beqz	a5,80005290 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005258:	fff48513          	addi	a0,s1,-1
    8000525c:	00000097          	auipc	ra,0x0
    80005260:	fcc080e7          	jalr	-52(ra) # 80005228 <_ZL9fibonaccim>
    80005264:	00050913          	mv	s2,a0
    80005268:	ffe48513          	addi	a0,s1,-2
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	fbc080e7          	jalr	-68(ra) # 80005228 <_ZL9fibonaccim>
    80005274:	00a90533          	add	a0,s2,a0
}
    80005278:	01813083          	ld	ra,24(sp)
    8000527c:	01013403          	ld	s0,16(sp)
    80005280:	00813483          	ld	s1,8(sp)
    80005284:	00013903          	ld	s2,0(sp)
    80005288:	02010113          	addi	sp,sp,32
    8000528c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	13c080e7          	jalr	316(ra) # 800013cc <_Z15thread_dispatchv>
    80005298:	fc1ff06f          	j	80005258 <_ZL9fibonaccim+0x30>

000000008000529c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000529c:	fe010113          	addi	sp,sp,-32
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00913423          	sd	s1,8(sp)
    800052ac:	01213023          	sd	s2,0(sp)
    800052b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800052b4:	00a00493          	li	s1,10
    800052b8:	0400006f          	j	800052f8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052bc:	00005517          	auipc	a0,0x5
    800052c0:	fbc50513          	addi	a0,a0,-68 # 8000a278 <CONSOLE_STATUS+0x268>
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	dc8080e7          	jalr	-568(ra) # 8000608c <_Z11printStringPKc>
    800052cc:	00000613          	li	a2,0
    800052d0:	00a00593          	li	a1,10
    800052d4:	00048513          	mv	a0,s1
    800052d8:	00001097          	auipc	ra,0x1
    800052dc:	f64080e7          	jalr	-156(ra) # 8000623c <_Z8printIntiii>
    800052e0:	00005517          	auipc	a0,0x5
    800052e4:	19850513          	addi	a0,a0,408 # 8000a478 <CONSOLE_STATUS+0x468>
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	da4080e7          	jalr	-604(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800052f0:	0014849b          	addiw	s1,s1,1
    800052f4:	0ff4f493          	andi	s1,s1,255
    800052f8:	00c00793          	li	a5,12
    800052fc:	fc97f0e3          	bgeu	a5,s1,800052bc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005300:	00005517          	auipc	a0,0x5
    80005304:	f8050513          	addi	a0,a0,-128 # 8000a280 <CONSOLE_STATUS+0x270>
    80005308:	00001097          	auipc	ra,0x1
    8000530c:	d84080e7          	jalr	-636(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005310:	00500313          	li	t1,5
    thread_dispatch();
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	0b8080e7          	jalr	184(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000531c:	01000513          	li	a0,16
    80005320:	00000097          	auipc	ra,0x0
    80005324:	f08080e7          	jalr	-248(ra) # 80005228 <_ZL9fibonaccim>
    80005328:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000532c:	00005517          	auipc	a0,0x5
    80005330:	f6450513          	addi	a0,a0,-156 # 8000a290 <CONSOLE_STATUS+0x280>
    80005334:	00001097          	auipc	ra,0x1
    80005338:	d58080e7          	jalr	-680(ra) # 8000608c <_Z11printStringPKc>
    8000533c:	00000613          	li	a2,0
    80005340:	00a00593          	li	a1,10
    80005344:	0009051b          	sext.w	a0,s2
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	ef4080e7          	jalr	-268(ra) # 8000623c <_Z8printIntiii>
    80005350:	00005517          	auipc	a0,0x5
    80005354:	12850513          	addi	a0,a0,296 # 8000a478 <CONSOLE_STATUS+0x468>
    80005358:	00001097          	auipc	ra,0x1
    8000535c:	d34080e7          	jalr	-716(ra) # 8000608c <_Z11printStringPKc>
    80005360:	0400006f          	j	800053a0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005364:	00005517          	auipc	a0,0x5
    80005368:	f1450513          	addi	a0,a0,-236 # 8000a278 <CONSOLE_STATUS+0x268>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	d20080e7          	jalr	-736(ra) # 8000608c <_Z11printStringPKc>
    80005374:	00000613          	li	a2,0
    80005378:	00a00593          	li	a1,10
    8000537c:	00048513          	mv	a0,s1
    80005380:	00001097          	auipc	ra,0x1
    80005384:	ebc080e7          	jalr	-324(ra) # 8000623c <_Z8printIntiii>
    80005388:	00005517          	auipc	a0,0x5
    8000538c:	0f050513          	addi	a0,a0,240 # 8000a478 <CONSOLE_STATUS+0x468>
    80005390:	00001097          	auipc	ra,0x1
    80005394:	cfc080e7          	jalr	-772(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005398:	0014849b          	addiw	s1,s1,1
    8000539c:	0ff4f493          	andi	s1,s1,255
    800053a0:	00f00793          	li	a5,15
    800053a4:	fc97f0e3          	bgeu	a5,s1,80005364 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800053a8:	00005517          	auipc	a0,0x5
    800053ac:	ef850513          	addi	a0,a0,-264 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800053b0:	00001097          	auipc	ra,0x1
    800053b4:	cdc080e7          	jalr	-804(ra) # 8000608c <_Z11printStringPKc>
    finishedD = true;
    800053b8:	00100793          	li	a5,1
    800053bc:	00008717          	auipc	a4,0x8
    800053c0:	b6f70623          	sb	a5,-1172(a4) # 8000cf28 <_ZL9finishedD>
    thread_dispatch();
    800053c4:	ffffc097          	auipc	ra,0xffffc
    800053c8:	008080e7          	jalr	8(ra) # 800013cc <_Z15thread_dispatchv>
}
    800053cc:	01813083          	ld	ra,24(sp)
    800053d0:	01013403          	ld	s0,16(sp)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	00013903          	ld	s2,0(sp)
    800053dc:	02010113          	addi	sp,sp,32
    800053e0:	00008067          	ret

00000000800053e4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800053e4:	fe010113          	addi	sp,sp,-32
    800053e8:	00113c23          	sd	ra,24(sp)
    800053ec:	00813823          	sd	s0,16(sp)
    800053f0:	00913423          	sd	s1,8(sp)
    800053f4:	01213023          	sd	s2,0(sp)
    800053f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800053fc:	00000493          	li	s1,0
    80005400:	0400006f          	j	80005440 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005404:	00005517          	auipc	a0,0x5
    80005408:	e4450513          	addi	a0,a0,-444 # 8000a248 <CONSOLE_STATUS+0x238>
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	c80080e7          	jalr	-896(ra) # 8000608c <_Z11printStringPKc>
    80005414:	00000613          	li	a2,0
    80005418:	00a00593          	li	a1,10
    8000541c:	00048513          	mv	a0,s1
    80005420:	00001097          	auipc	ra,0x1
    80005424:	e1c080e7          	jalr	-484(ra) # 8000623c <_Z8printIntiii>
    80005428:	00005517          	auipc	a0,0x5
    8000542c:	05050513          	addi	a0,a0,80 # 8000a478 <CONSOLE_STATUS+0x468>
    80005430:	00001097          	auipc	ra,0x1
    80005434:	c5c080e7          	jalr	-932(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005438:	0014849b          	addiw	s1,s1,1
    8000543c:	0ff4f493          	andi	s1,s1,255
    80005440:	00200793          	li	a5,2
    80005444:	fc97f0e3          	bgeu	a5,s1,80005404 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005448:	00005517          	auipc	a0,0x5
    8000544c:	e0850513          	addi	a0,a0,-504 # 8000a250 <CONSOLE_STATUS+0x240>
    80005450:	00001097          	auipc	ra,0x1
    80005454:	c3c080e7          	jalr	-964(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005458:	00700313          	li	t1,7
    thread_dispatch();
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	f70080e7          	jalr	-144(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005464:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005468:	00005517          	auipc	a0,0x5
    8000546c:	df850513          	addi	a0,a0,-520 # 8000a260 <CONSOLE_STATUS+0x250>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	c1c080e7          	jalr	-996(ra) # 8000608c <_Z11printStringPKc>
    80005478:	00000613          	li	a2,0
    8000547c:	00a00593          	li	a1,10
    80005480:	0009051b          	sext.w	a0,s2
    80005484:	00001097          	auipc	ra,0x1
    80005488:	db8080e7          	jalr	-584(ra) # 8000623c <_Z8printIntiii>
    8000548c:	00005517          	auipc	a0,0x5
    80005490:	fec50513          	addi	a0,a0,-20 # 8000a478 <CONSOLE_STATUS+0x468>
    80005494:	00001097          	auipc	ra,0x1
    80005498:	bf8080e7          	jalr	-1032(ra) # 8000608c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000549c:	00c00513          	li	a0,12
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	d88080e7          	jalr	-632(ra) # 80005228 <_ZL9fibonaccim>
    800054a8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800054ac:	00005517          	auipc	a0,0x5
    800054b0:	dbc50513          	addi	a0,a0,-580 # 8000a268 <CONSOLE_STATUS+0x258>
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	bd8080e7          	jalr	-1064(ra) # 8000608c <_Z11printStringPKc>
    800054bc:	00000613          	li	a2,0
    800054c0:	00a00593          	li	a1,10
    800054c4:	0009051b          	sext.w	a0,s2
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	d74080e7          	jalr	-652(ra) # 8000623c <_Z8printIntiii>
    800054d0:	00005517          	auipc	a0,0x5
    800054d4:	fa850513          	addi	a0,a0,-88 # 8000a478 <CONSOLE_STATUS+0x468>
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	bb4080e7          	jalr	-1100(ra) # 8000608c <_Z11printStringPKc>
    800054e0:	0400006f          	j	80005520 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800054e4:	00005517          	auipc	a0,0x5
    800054e8:	d6450513          	addi	a0,a0,-668 # 8000a248 <CONSOLE_STATUS+0x238>
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	ba0080e7          	jalr	-1120(ra) # 8000608c <_Z11printStringPKc>
    800054f4:	00000613          	li	a2,0
    800054f8:	00a00593          	li	a1,10
    800054fc:	00048513          	mv	a0,s1
    80005500:	00001097          	auipc	ra,0x1
    80005504:	d3c080e7          	jalr	-708(ra) # 8000623c <_Z8printIntiii>
    80005508:	00005517          	auipc	a0,0x5
    8000550c:	f7050513          	addi	a0,a0,-144 # 8000a478 <CONSOLE_STATUS+0x468>
    80005510:	00001097          	auipc	ra,0x1
    80005514:	b7c080e7          	jalr	-1156(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005518:	0014849b          	addiw	s1,s1,1
    8000551c:	0ff4f493          	andi	s1,s1,255
    80005520:	00500793          	li	a5,5
    80005524:	fc97f0e3          	bgeu	a5,s1,800054e4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80005528:	00005517          	auipc	a0,0x5
    8000552c:	e0050513          	addi	a0,a0,-512 # 8000a328 <CONSOLE_STATUS+0x318>
    80005530:	00001097          	auipc	ra,0x1
    80005534:	b5c080e7          	jalr	-1188(ra) # 8000608c <_Z11printStringPKc>
    finishedC = true;
    80005538:	00100793          	li	a5,1
    8000553c:	00008717          	auipc	a4,0x8
    80005540:	9ef706a3          	sb	a5,-1555(a4) # 8000cf29 <_ZL9finishedC>
    thread_dispatch();
    80005544:	ffffc097          	auipc	ra,0xffffc
    80005548:	e88080e7          	jalr	-376(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	00013903          	ld	s2,0(sp)
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret

0000000080005564 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005564:	fe010113          	addi	sp,sp,-32
    80005568:	00113c23          	sd	ra,24(sp)
    8000556c:	00813823          	sd	s0,16(sp)
    80005570:	00913423          	sd	s1,8(sp)
    80005574:	01213023          	sd	s2,0(sp)
    80005578:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000557c:	00000913          	li	s2,0
    80005580:	0380006f          	j	800055b8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005584:	ffffc097          	auipc	ra,0xffffc
    80005588:	e48080e7          	jalr	-440(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000558c:	00148493          	addi	s1,s1,1
    80005590:	000027b7          	lui	a5,0x2
    80005594:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005598:	0097ee63          	bltu	a5,s1,800055b4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000559c:	00000713          	li	a4,0
    800055a0:	000077b7          	lui	a5,0x7
    800055a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055a8:	fce7eee3          	bltu	a5,a4,80005584 <_ZL11workerBodyBPv+0x20>
    800055ac:	00170713          	addi	a4,a4,1
    800055b0:	ff1ff06f          	j	800055a0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800055b4:	00190913          	addi	s2,s2,1
    800055b8:	00f00793          	li	a5,15
    800055bc:	0527e063          	bltu	a5,s2,800055fc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800055c0:	00005517          	auipc	a0,0x5
    800055c4:	c7050513          	addi	a0,a0,-912 # 8000a230 <CONSOLE_STATUS+0x220>
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	ac4080e7          	jalr	-1340(ra) # 8000608c <_Z11printStringPKc>
    800055d0:	00000613          	li	a2,0
    800055d4:	00a00593          	li	a1,10
    800055d8:	0009051b          	sext.w	a0,s2
    800055dc:	00001097          	auipc	ra,0x1
    800055e0:	c60080e7          	jalr	-928(ra) # 8000623c <_Z8printIntiii>
    800055e4:	00005517          	auipc	a0,0x5
    800055e8:	e9450513          	addi	a0,a0,-364 # 8000a478 <CONSOLE_STATUS+0x468>
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	aa0080e7          	jalr	-1376(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055f4:	00000493          	li	s1,0
    800055f8:	f99ff06f          	j	80005590 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800055fc:	00005517          	auipc	a0,0x5
    80005600:	c3c50513          	addi	a0,a0,-964 # 8000a238 <CONSOLE_STATUS+0x228>
    80005604:	00001097          	auipc	ra,0x1
    80005608:	a88080e7          	jalr	-1400(ra) # 8000608c <_Z11printStringPKc>
    finishedB = true;
    8000560c:	00100793          	li	a5,1
    80005610:	00008717          	auipc	a4,0x8
    80005614:	90f70d23          	sb	a5,-1766(a4) # 8000cf2a <_ZL9finishedB>
    thread_dispatch();
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	db4080e7          	jalr	-588(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005620:	01813083          	ld	ra,24(sp)
    80005624:	01013403          	ld	s0,16(sp)
    80005628:	00813483          	ld	s1,8(sp)
    8000562c:	00013903          	ld	s2,0(sp)
    80005630:	02010113          	addi	sp,sp,32
    80005634:	00008067          	ret

0000000080005638 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005638:	fe010113          	addi	sp,sp,-32
    8000563c:	00113c23          	sd	ra,24(sp)
    80005640:	00813823          	sd	s0,16(sp)
    80005644:	00913423          	sd	s1,8(sp)
    80005648:	01213023          	sd	s2,0(sp)
    8000564c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005650:	00000913          	li	s2,0
    80005654:	0380006f          	j	8000568c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005658:	ffffc097          	auipc	ra,0xffffc
    8000565c:	d74080e7          	jalr	-652(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005660:	00148493          	addi	s1,s1,1
    80005664:	000027b7          	lui	a5,0x2
    80005668:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000566c:	0097ee63          	bltu	a5,s1,80005688 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005670:	00000713          	li	a4,0
    80005674:	000077b7          	lui	a5,0x7
    80005678:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000567c:	fce7eee3          	bltu	a5,a4,80005658 <_ZL11workerBodyAPv+0x20>
    80005680:	00170713          	addi	a4,a4,1
    80005684:	ff1ff06f          	j	80005674 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005688:	00190913          	addi	s2,s2,1
    8000568c:	00900793          	li	a5,9
    80005690:	0527e063          	bltu	a5,s2,800056d0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005694:	00005517          	auipc	a0,0x5
    80005698:	b8450513          	addi	a0,a0,-1148 # 8000a218 <CONSOLE_STATUS+0x208>
    8000569c:	00001097          	auipc	ra,0x1
    800056a0:	9f0080e7          	jalr	-1552(ra) # 8000608c <_Z11printStringPKc>
    800056a4:	00000613          	li	a2,0
    800056a8:	00a00593          	li	a1,10
    800056ac:	0009051b          	sext.w	a0,s2
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	b8c080e7          	jalr	-1140(ra) # 8000623c <_Z8printIntiii>
    800056b8:	00005517          	auipc	a0,0x5
    800056bc:	dc050513          	addi	a0,a0,-576 # 8000a478 <CONSOLE_STATUS+0x468>
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	9cc080e7          	jalr	-1588(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056c8:	00000493          	li	s1,0
    800056cc:	f99ff06f          	j	80005664 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800056d0:	00005517          	auipc	a0,0x5
    800056d4:	b5050513          	addi	a0,a0,-1200 # 8000a220 <CONSOLE_STATUS+0x210>
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	9b4080e7          	jalr	-1612(ra) # 8000608c <_Z11printStringPKc>
    finishedA = true;
    800056e0:	00100793          	li	a5,1
    800056e4:	00008717          	auipc	a4,0x8
    800056e8:	84f703a3          	sb	a5,-1977(a4) # 8000cf2b <_ZL9finishedA>
}
    800056ec:	01813083          	ld	ra,24(sp)
    800056f0:	01013403          	ld	s0,16(sp)
    800056f4:	00813483          	ld	s1,8(sp)
    800056f8:	00013903          	ld	s2,0(sp)
    800056fc:	02010113          	addi	sp,sp,32
    80005700:	00008067          	ret

0000000080005704 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005704:	fd010113          	addi	sp,sp,-48
    80005708:	02113423          	sd	ra,40(sp)
    8000570c:	02813023          	sd	s0,32(sp)
    80005710:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005714:	00000613          	li	a2,0
    80005718:	00000597          	auipc	a1,0x0
    8000571c:	f2058593          	addi	a1,a1,-224 # 80005638 <_ZL11workerBodyAPv>
    80005720:	fd040513          	addi	a0,s0,-48
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	bd4080e7          	jalr	-1068(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000572c:	00005517          	auipc	a0,0x5
    80005730:	b8450513          	addi	a0,a0,-1148 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005734:	00001097          	auipc	ra,0x1
    80005738:	958080e7          	jalr	-1704(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000573c:	00000613          	li	a2,0
    80005740:	00000597          	auipc	a1,0x0
    80005744:	e2458593          	addi	a1,a1,-476 # 80005564 <_ZL11workerBodyBPv>
    80005748:	fd840513          	addi	a0,s0,-40
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	bac080e7          	jalr	-1108(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005754:	00005517          	auipc	a0,0x5
    80005758:	b7450513          	addi	a0,a0,-1164 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	930080e7          	jalr	-1744(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005764:	00000613          	li	a2,0
    80005768:	00000597          	auipc	a1,0x0
    8000576c:	c7c58593          	addi	a1,a1,-900 # 800053e4 <_ZL11workerBodyCPv>
    80005770:	fe040513          	addi	a0,s0,-32
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	b84080e7          	jalr	-1148(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000577c:	00005517          	auipc	a0,0x5
    80005780:	b6450513          	addi	a0,a0,-1180 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005784:	00001097          	auipc	ra,0x1
    80005788:	908080e7          	jalr	-1784(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000578c:	00000613          	li	a2,0
    80005790:	00000597          	auipc	a1,0x0
    80005794:	b0c58593          	addi	a1,a1,-1268 # 8000529c <_ZL11workerBodyDPv>
    80005798:	fe840513          	addi	a0,s0,-24
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	b5c080e7          	jalr	-1188(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800057a4:	00005517          	auipc	a0,0x5
    800057a8:	b5450513          	addi	a0,a0,-1196 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800057ac:	00001097          	auipc	ra,0x1
    800057b0:	8e0080e7          	jalr	-1824(ra) # 8000608c <_Z11printStringPKc>
    800057b4:	00c0006f          	j	800057c0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800057b8:	ffffc097          	auipc	ra,0xffffc
    800057bc:	c14080e7          	jalr	-1004(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800057c0:	00007797          	auipc	a5,0x7
    800057c4:	76b7c783          	lbu	a5,1899(a5) # 8000cf2b <_ZL9finishedA>
    800057c8:	fe0788e3          	beqz	a5,800057b8 <_Z18Threads_C_API_testv+0xb4>
    800057cc:	00007797          	auipc	a5,0x7
    800057d0:	75e7c783          	lbu	a5,1886(a5) # 8000cf2a <_ZL9finishedB>
    800057d4:	fe0782e3          	beqz	a5,800057b8 <_Z18Threads_C_API_testv+0xb4>
    800057d8:	00007797          	auipc	a5,0x7
    800057dc:	7517c783          	lbu	a5,1873(a5) # 8000cf29 <_ZL9finishedC>
    800057e0:	fc078ce3          	beqz	a5,800057b8 <_Z18Threads_C_API_testv+0xb4>
    800057e4:	00007797          	auipc	a5,0x7
    800057e8:	7447c783          	lbu	a5,1860(a5) # 8000cf28 <_ZL9finishedD>
    800057ec:	fc0786e3          	beqz	a5,800057b8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800057f0:	02813083          	ld	ra,40(sp)
    800057f4:	02013403          	ld	s0,32(sp)
    800057f8:	03010113          	addi	sp,sp,48
    800057fc:	00008067          	ret

0000000080005800 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005800:	fd010113          	addi	sp,sp,-48
    80005804:	02113423          	sd	ra,40(sp)
    80005808:	02813023          	sd	s0,32(sp)
    8000580c:	00913c23          	sd	s1,24(sp)
    80005810:	01213823          	sd	s2,16(sp)
    80005814:	01313423          	sd	s3,8(sp)
    80005818:	03010413          	addi	s0,sp,48
    8000581c:	00050993          	mv	s3,a0
    80005820:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005824:	00000913          	li	s2,0
    80005828:	00c0006f          	j	80005834 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000582c:	ffffd097          	auipc	ra,0xffffd
    80005830:	980080e7          	jalr	-1664(ra) # 800021ac <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	dec080e7          	jalr	-532(ra) # 80001620 <_Z4getcv>
    8000583c:	0005059b          	sext.w	a1,a0
    80005840:	01b00793          	li	a5,27
    80005844:	02f58a63          	beq	a1,a5,80005878 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005848:	0084b503          	ld	a0,8(s1)
    8000584c:	00001097          	auipc	ra,0x1
    80005850:	c64080e7          	jalr	-924(ra) # 800064b0 <_ZN9BufferCPP3putEi>
        i++;
    80005854:	0019071b          	addiw	a4,s2,1
    80005858:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000585c:	0004a683          	lw	a3,0(s1)
    80005860:	0026979b          	slliw	a5,a3,0x2
    80005864:	00d787bb          	addw	a5,a5,a3
    80005868:	0017979b          	slliw	a5,a5,0x1
    8000586c:	02f767bb          	remw	a5,a4,a5
    80005870:	fc0792e3          	bnez	a5,80005834 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005874:	fb9ff06f          	j	8000582c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005878:	00100793          	li	a5,1
    8000587c:	00007717          	auipc	a4,0x7
    80005880:	6af72a23          	sw	a5,1716(a4) # 8000cf30 <_ZL9threadEnd>
    td->buffer->put('!');
    80005884:	0209b783          	ld	a5,32(s3)
    80005888:	02100593          	li	a1,33
    8000588c:	0087b503          	ld	a0,8(a5)
    80005890:	00001097          	auipc	ra,0x1
    80005894:	c20080e7          	jalr	-992(ra) # 800064b0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005898:	0104b503          	ld	a0,16(s1)
    8000589c:	ffffd097          	auipc	ra,0xffffd
    800058a0:	9d4080e7          	jalr	-1580(ra) # 80002270 <_ZN9Semaphore6signalEv>
}
    800058a4:	02813083          	ld	ra,40(sp)
    800058a8:	02013403          	ld	s0,32(sp)
    800058ac:	01813483          	ld	s1,24(sp)
    800058b0:	01013903          	ld	s2,16(sp)
    800058b4:	00813983          	ld	s3,8(sp)
    800058b8:	03010113          	addi	sp,sp,48
    800058bc:	00008067          	ret

00000000800058c0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800058c0:	fe010113          	addi	sp,sp,-32
    800058c4:	00113c23          	sd	ra,24(sp)
    800058c8:	00813823          	sd	s0,16(sp)
    800058cc:	00913423          	sd	s1,8(sp)
    800058d0:	01213023          	sd	s2,0(sp)
    800058d4:	02010413          	addi	s0,sp,32
    800058d8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058dc:	00000913          	li	s2,0
    800058e0:	00c0006f          	j	800058ec <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	8c8080e7          	jalr	-1848(ra) # 800021ac <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800058ec:	00007797          	auipc	a5,0x7
    800058f0:	6447a783          	lw	a5,1604(a5) # 8000cf30 <_ZL9threadEnd>
    800058f4:	02079e63          	bnez	a5,80005930 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800058f8:	0004a583          	lw	a1,0(s1)
    800058fc:	0305859b          	addiw	a1,a1,48
    80005900:	0084b503          	ld	a0,8(s1)
    80005904:	00001097          	auipc	ra,0x1
    80005908:	bac080e7          	jalr	-1108(ra) # 800064b0 <_ZN9BufferCPP3putEi>
        i++;
    8000590c:	0019071b          	addiw	a4,s2,1
    80005910:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005914:	0004a683          	lw	a3,0(s1)
    80005918:	0026979b          	slliw	a5,a3,0x2
    8000591c:	00d787bb          	addw	a5,a5,a3
    80005920:	0017979b          	slliw	a5,a5,0x1
    80005924:	02f767bb          	remw	a5,a4,a5
    80005928:	fc0792e3          	bnez	a5,800058ec <_ZN12ProducerSync8producerEPv+0x2c>
    8000592c:	fb9ff06f          	j	800058e4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005930:	0104b503          	ld	a0,16(s1)
    80005934:	ffffd097          	auipc	ra,0xffffd
    80005938:	93c080e7          	jalr	-1732(ra) # 80002270 <_ZN9Semaphore6signalEv>
}
    8000593c:	01813083          	ld	ra,24(sp)
    80005940:	01013403          	ld	s0,16(sp)
    80005944:	00813483          	ld	s1,8(sp)
    80005948:	00013903          	ld	s2,0(sp)
    8000594c:	02010113          	addi	sp,sp,32
    80005950:	00008067          	ret

0000000080005954 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005954:	fd010113          	addi	sp,sp,-48
    80005958:	02113423          	sd	ra,40(sp)
    8000595c:	02813023          	sd	s0,32(sp)
    80005960:	00913c23          	sd	s1,24(sp)
    80005964:	01213823          	sd	s2,16(sp)
    80005968:	01313423          	sd	s3,8(sp)
    8000596c:	01413023          	sd	s4,0(sp)
    80005970:	03010413          	addi	s0,sp,48
    80005974:	00050993          	mv	s3,a0
    80005978:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000597c:	00000a13          	li	s4,0
    80005980:	01c0006f          	j	8000599c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005984:	ffffd097          	auipc	ra,0xffffd
    80005988:	828080e7          	jalr	-2008(ra) # 800021ac <_ZN6Thread8dispatchEv>
    8000598c:	0500006f          	j	800059dc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005990:	00a00513          	li	a0,10
    80005994:	ffffc097          	auipc	ra,0xffffc
    80005998:	cd8080e7          	jalr	-808(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    8000599c:	00007797          	auipc	a5,0x7
    800059a0:	5947a783          	lw	a5,1428(a5) # 8000cf30 <_ZL9threadEnd>
    800059a4:	06079263          	bnez	a5,80005a08 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800059a8:	00893503          	ld	a0,8(s2)
    800059ac:	00001097          	auipc	ra,0x1
    800059b0:	b94080e7          	jalr	-1132(ra) # 80006540 <_ZN9BufferCPP3getEv>
        i++;
    800059b4:	001a049b          	addiw	s1,s4,1
    800059b8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800059bc:	0ff57513          	andi	a0,a0,255
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	cac080e7          	jalr	-852(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800059c8:	00092703          	lw	a4,0(s2)
    800059cc:	0027179b          	slliw	a5,a4,0x2
    800059d0:	00e787bb          	addw	a5,a5,a4
    800059d4:	02f4e7bb          	remw	a5,s1,a5
    800059d8:	fa0786e3          	beqz	a5,80005984 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800059dc:	05000793          	li	a5,80
    800059e0:	02f4e4bb          	remw	s1,s1,a5
    800059e4:	fa049ce3          	bnez	s1,8000599c <_ZN12ConsumerSync8consumerEPv+0x48>
    800059e8:	fa9ff06f          	j	80005990 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800059ec:	0209b783          	ld	a5,32(s3)
    800059f0:	0087b503          	ld	a0,8(a5)
    800059f4:	00001097          	auipc	ra,0x1
    800059f8:	b4c080e7          	jalr	-1204(ra) # 80006540 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800059fc:	0ff57513          	andi	a0,a0,255
    80005a00:	ffffd097          	auipc	ra,0xffffd
    80005a04:	998080e7          	jalr	-1640(ra) # 80002398 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005a08:	0209b783          	ld	a5,32(s3)
    80005a0c:	0087b503          	ld	a0,8(a5)
    80005a10:	00001097          	auipc	ra,0x1
    80005a14:	bbc080e7          	jalr	-1092(ra) # 800065cc <_ZN9BufferCPP6getCntEv>
    80005a18:	fca04ae3          	bgtz	a0,800059ec <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005a1c:	01093503          	ld	a0,16(s2)
    80005a20:	ffffd097          	auipc	ra,0xffffd
    80005a24:	850080e7          	jalr	-1968(ra) # 80002270 <_ZN9Semaphore6signalEv>
}
    80005a28:	02813083          	ld	ra,40(sp)
    80005a2c:	02013403          	ld	s0,32(sp)
    80005a30:	01813483          	ld	s1,24(sp)
    80005a34:	01013903          	ld	s2,16(sp)
    80005a38:	00813983          	ld	s3,8(sp)
    80005a3c:	00013a03          	ld	s4,0(sp)
    80005a40:	03010113          	addi	sp,sp,48
    80005a44:	00008067          	ret

0000000080005a48 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005a48:	f8010113          	addi	sp,sp,-128
    80005a4c:	06113c23          	sd	ra,120(sp)
    80005a50:	06813823          	sd	s0,112(sp)
    80005a54:	06913423          	sd	s1,104(sp)
    80005a58:	07213023          	sd	s2,96(sp)
    80005a5c:	05313c23          	sd	s3,88(sp)
    80005a60:	05413823          	sd	s4,80(sp)
    80005a64:	05513423          	sd	s5,72(sp)
    80005a68:	05613023          	sd	s6,64(sp)
    80005a6c:	03713c23          	sd	s7,56(sp)
    80005a70:	03813823          	sd	s8,48(sp)
    80005a74:	03913423          	sd	s9,40(sp)
    80005a78:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005a7c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	6b050513          	addi	a0,a0,1712 # 8000a130 <CONSOLE_STATUS+0x120>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	604080e7          	jalr	1540(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    80005a90:	01e00593          	li	a1,30
    80005a94:	f8040493          	addi	s1,s0,-128
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	678080e7          	jalr	1656(ra) # 80006114 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005aa4:	00048513          	mv	a0,s1
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	744080e7          	jalr	1860(ra) # 800061ec <_Z11stringToIntPKc>
    80005ab0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	69c50513          	addi	a0,a0,1692 # 8000a150 <CONSOLE_STATUS+0x140>
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	5d0080e7          	jalr	1488(ra) # 8000608c <_Z11printStringPKc>
    getString(input, 30);
    80005ac4:	01e00593          	li	a1,30
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	648080e7          	jalr	1608(ra) # 80006114 <_Z9getStringPci>
    n = stringToInt(input);
    80005ad4:	00048513          	mv	a0,s1
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	714080e7          	jalr	1812(ra) # 800061ec <_Z11stringToIntPKc>
    80005ae0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005ae4:	00004517          	auipc	a0,0x4
    80005ae8:	68c50513          	addi	a0,a0,1676 # 8000a170 <CONSOLE_STATUS+0x160>
    80005aec:	00000097          	auipc	ra,0x0
    80005af0:	5a0080e7          	jalr	1440(ra) # 8000608c <_Z11printStringPKc>
    80005af4:	00000613          	li	a2,0
    80005af8:	00a00593          	li	a1,10
    80005afc:	00090513          	mv	a0,s2
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	73c080e7          	jalr	1852(ra) # 8000623c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b08:	00004517          	auipc	a0,0x4
    80005b0c:	68050513          	addi	a0,a0,1664 # 8000a188 <CONSOLE_STATUS+0x178>
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	57c080e7          	jalr	1404(ra) # 8000608c <_Z11printStringPKc>
    80005b18:	00000613          	li	a2,0
    80005b1c:	00a00593          	li	a1,10
    80005b20:	00048513          	mv	a0,s1
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	718080e7          	jalr	1816(ra) # 8000623c <_Z8printIntiii>
    printString(".\n");
    80005b2c:	00004517          	auipc	a0,0x4
    80005b30:	67450513          	addi	a0,a0,1652 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	558080e7          	jalr	1368(ra) # 8000608c <_Z11printStringPKc>
    if(threadNum > n) {
    80005b3c:	0324c463          	blt	s1,s2,80005b64 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005b40:	03205c63          	blez	s2,80005b78 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005b44:	03800513          	li	a0,56
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	4fc080e7          	jalr	1276(ra) # 80002044 <_Znwm>
    80005b50:	00050a93          	mv	s5,a0
    80005b54:	00048593          	mv	a1,s1
    80005b58:	00001097          	auipc	ra,0x1
    80005b5c:	804080e7          	jalr	-2044(ra) # 8000635c <_ZN9BufferCPPC1Ei>
    80005b60:	0300006f          	j	80005b90 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b64:	00004517          	auipc	a0,0x4
    80005b68:	64450513          	addi	a0,a0,1604 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005b6c:	00000097          	auipc	ra,0x0
    80005b70:	520080e7          	jalr	1312(ra) # 8000608c <_Z11printStringPKc>
        return;
    80005b74:	0140006f          	j	80005b88 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b78:	00004517          	auipc	a0,0x4
    80005b7c:	67050513          	addi	a0,a0,1648 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	50c080e7          	jalr	1292(ra) # 8000608c <_Z11printStringPKc>
        return;
    80005b88:	000b8113          	mv	sp,s7
    80005b8c:	2380006f          	j	80005dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b90:	01000513          	li	a0,16
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	4b0080e7          	jalr	1200(ra) # 80002044 <_Znwm>
    80005b9c:	00050493          	mv	s1,a0
    80005ba0:	00000593          	li	a1,0
    80005ba4:	ffffc097          	auipc	ra,0xffffc
    80005ba8:	658080e7          	jalr	1624(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    80005bac:	00007797          	auipc	a5,0x7
    80005bb0:	3897b623          	sd	s1,908(a5) # 8000cf38 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005bb4:	00391793          	slli	a5,s2,0x3
    80005bb8:	00f78793          	addi	a5,a5,15
    80005bbc:	ff07f793          	andi	a5,a5,-16
    80005bc0:	40f10133          	sub	sp,sp,a5
    80005bc4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005bc8:	0019071b          	addiw	a4,s2,1
    80005bcc:	00171793          	slli	a5,a4,0x1
    80005bd0:	00e787b3          	add	a5,a5,a4
    80005bd4:	00379793          	slli	a5,a5,0x3
    80005bd8:	00f78793          	addi	a5,a5,15
    80005bdc:	ff07f793          	andi	a5,a5,-16
    80005be0:	40f10133          	sub	sp,sp,a5
    80005be4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005be8:	00191c13          	slli	s8,s2,0x1
    80005bec:	012c07b3          	add	a5,s8,s2
    80005bf0:	00379793          	slli	a5,a5,0x3
    80005bf4:	00fa07b3          	add	a5,s4,a5
    80005bf8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005bfc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c00:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005c04:	02800513          	li	a0,40
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	43c080e7          	jalr	1084(ra) # 80002044 <_Znwm>
    80005c10:	00050b13          	mv	s6,a0
    80005c14:	012c0c33          	add	s8,s8,s2
    80005c18:	003c1c13          	slli	s8,s8,0x3
    80005c1c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	524080e7          	jalr	1316(ra) # 80002144 <_ZN6ThreadC1Ev>
    80005c28:	00007797          	auipc	a5,0x7
    80005c2c:	1a078793          	addi	a5,a5,416 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    80005c30:	00fb3023          	sd	a5,0(s6)
    80005c34:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005c38:	000b0513          	mv	a0,s6
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	538080e7          	jalr	1336(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c44:	00000493          	li	s1,0
    80005c48:	0380006f          	j	80005c80 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c4c:	00007797          	auipc	a5,0x7
    80005c50:	15478793          	addi	a5,a5,340 # 8000cda0 <_ZTV12ProducerSync+0x10>
    80005c54:	00fcb023          	sd	a5,0(s9)
    80005c58:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005c5c:	00349793          	slli	a5,s1,0x3
    80005c60:	00f987b3          	add	a5,s3,a5
    80005c64:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c68:	00349793          	slli	a5,s1,0x3
    80005c6c:	00f987b3          	add	a5,s3,a5
    80005c70:	0007b503          	ld	a0,0(a5)
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	500080e7          	jalr	1280(ra) # 80002174 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c7c:	0014849b          	addiw	s1,s1,1
    80005c80:	0b24d063          	bge	s1,s2,80005d20 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005c84:	00149793          	slli	a5,s1,0x1
    80005c88:	009787b3          	add	a5,a5,s1
    80005c8c:	00379793          	slli	a5,a5,0x3
    80005c90:	00fa07b3          	add	a5,s4,a5
    80005c94:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c98:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005c9c:	00007717          	auipc	a4,0x7
    80005ca0:	29c73703          	ld	a4,668(a4) # 8000cf38 <_ZL10waitForAll>
    80005ca4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005ca8:	02905863          	blez	s1,80005cd8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005cac:	02800513          	li	a0,40
    80005cb0:	ffffc097          	auipc	ra,0xffffc
    80005cb4:	394080e7          	jalr	916(ra) # 80002044 <_Znwm>
    80005cb8:	00050c93          	mv	s9,a0
    80005cbc:	00149c13          	slli	s8,s1,0x1
    80005cc0:	009c0c33          	add	s8,s8,s1
    80005cc4:	003c1c13          	slli	s8,s8,0x3
    80005cc8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ccc:	ffffc097          	auipc	ra,0xffffc
    80005cd0:	478080e7          	jalr	1144(ra) # 80002144 <_ZN6ThreadC1Ev>
    80005cd4:	f79ff06f          	j	80005c4c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005cd8:	02800513          	li	a0,40
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	368080e7          	jalr	872(ra) # 80002044 <_Znwm>
    80005ce4:	00050c93          	mv	s9,a0
    80005ce8:	00149c13          	slli	s8,s1,0x1
    80005cec:	009c0c33          	add	s8,s8,s1
    80005cf0:	003c1c13          	slli	s8,s8,0x3
    80005cf4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	44c080e7          	jalr	1100(ra) # 80002144 <_ZN6ThreadC1Ev>
    80005d00:	00007797          	auipc	a5,0x7
    80005d04:	07878793          	addi	a5,a5,120 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    80005d08:	00fcb023          	sd	a5,0(s9)
    80005d0c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005d10:	00349793          	slli	a5,s1,0x3
    80005d14:	00f987b3          	add	a5,s3,a5
    80005d18:	0197b023          	sd	s9,0(a5)
    80005d1c:	f4dff06f          	j	80005c68 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	48c080e7          	jalr	1164(ra) # 800021ac <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d28:	00000493          	li	s1,0
    80005d2c:	00994e63          	blt	s2,s1,80005d48 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005d30:	00007517          	auipc	a0,0x7
    80005d34:	20853503          	ld	a0,520(a0) # 8000cf38 <_ZL10waitForAll>
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	500080e7          	jalr	1280(ra) # 80002238 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d40:	0014849b          	addiw	s1,s1,1
    80005d44:	fe9ff06f          	j	80005d2c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005d48:	00000493          	li	s1,0
    80005d4c:	0080006f          	j	80005d54 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005d50:	0014849b          	addiw	s1,s1,1
    80005d54:	0324d263          	bge	s1,s2,80005d78 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005d58:	00349793          	slli	a5,s1,0x3
    80005d5c:	00f987b3          	add	a5,s3,a5
    80005d60:	0007b503          	ld	a0,0(a5)
    80005d64:	fe0506e3          	beqz	a0,80005d50 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d68:	00053783          	ld	a5,0(a0)
    80005d6c:	0087b783          	ld	a5,8(a5)
    80005d70:	000780e7          	jalr	a5
    80005d74:	fddff06f          	j	80005d50 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005d78:	000b0a63          	beqz	s6,80005d8c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005d7c:	000b3783          	ld	a5,0(s6)
    80005d80:	0087b783          	ld	a5,8(a5)
    80005d84:	000b0513          	mv	a0,s6
    80005d88:	000780e7          	jalr	a5
    delete waitForAll;
    80005d8c:	00007517          	auipc	a0,0x7
    80005d90:	1ac53503          	ld	a0,428(a0) # 8000cf38 <_ZL10waitForAll>
    80005d94:	00050863          	beqz	a0,80005da4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005d98:	00053783          	ld	a5,0(a0)
    80005d9c:	0087b783          	ld	a5,8(a5)
    80005da0:	000780e7          	jalr	a5
    delete buffer;
    80005da4:	000a8e63          	beqz	s5,80005dc0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005da8:	000a8513          	mv	a0,s5
    80005dac:	00001097          	auipc	ra,0x1
    80005db0:	8a8080e7          	jalr	-1880(ra) # 80006654 <_ZN9BufferCPPD1Ev>
    80005db4:	000a8513          	mv	a0,s5
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	2b4080e7          	jalr	692(ra) # 8000206c <_ZdlPv>
    80005dc0:	000b8113          	mv	sp,s7

}
    80005dc4:	f8040113          	addi	sp,s0,-128
    80005dc8:	07813083          	ld	ra,120(sp)
    80005dcc:	07013403          	ld	s0,112(sp)
    80005dd0:	06813483          	ld	s1,104(sp)
    80005dd4:	06013903          	ld	s2,96(sp)
    80005dd8:	05813983          	ld	s3,88(sp)
    80005ddc:	05013a03          	ld	s4,80(sp)
    80005de0:	04813a83          	ld	s5,72(sp)
    80005de4:	04013b03          	ld	s6,64(sp)
    80005de8:	03813b83          	ld	s7,56(sp)
    80005dec:	03013c03          	ld	s8,48(sp)
    80005df0:	02813c83          	ld	s9,40(sp)
    80005df4:	08010113          	addi	sp,sp,128
    80005df8:	00008067          	ret
    80005dfc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e00:	000a8513          	mv	a0,s5
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	268080e7          	jalr	616(ra) # 8000206c <_ZdlPv>
    80005e0c:	00048513          	mv	a0,s1
    80005e10:	00008097          	auipc	ra,0x8
    80005e14:	208080e7          	jalr	520(ra) # 8000e018 <_Unwind_Resume>
    80005e18:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005e1c:	00048513          	mv	a0,s1
    80005e20:	ffffc097          	auipc	ra,0xffffc
    80005e24:	24c080e7          	jalr	588(ra) # 8000206c <_ZdlPv>
    80005e28:	00090513          	mv	a0,s2
    80005e2c:	00008097          	auipc	ra,0x8
    80005e30:	1ec080e7          	jalr	492(ra) # 8000e018 <_Unwind_Resume>
    80005e34:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005e38:	000b0513          	mv	a0,s6
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	230080e7          	jalr	560(ra) # 8000206c <_ZdlPv>
    80005e44:	00048513          	mv	a0,s1
    80005e48:	00008097          	auipc	ra,0x8
    80005e4c:	1d0080e7          	jalr	464(ra) # 8000e018 <_Unwind_Resume>
    80005e50:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005e54:	000c8513          	mv	a0,s9
    80005e58:	ffffc097          	auipc	ra,0xffffc
    80005e5c:	214080e7          	jalr	532(ra) # 8000206c <_ZdlPv>
    80005e60:	00048513          	mv	a0,s1
    80005e64:	00008097          	auipc	ra,0x8
    80005e68:	1b4080e7          	jalr	436(ra) # 8000e018 <_Unwind_Resume>
    80005e6c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e70:	000c8513          	mv	a0,s9
    80005e74:	ffffc097          	auipc	ra,0xffffc
    80005e78:	1f8080e7          	jalr	504(ra) # 8000206c <_ZdlPv>
    80005e7c:	00048513          	mv	a0,s1
    80005e80:	00008097          	auipc	ra,0x8
    80005e84:	198080e7          	jalr	408(ra) # 8000e018 <_Unwind_Resume>

0000000080005e88 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e88:	ff010113          	addi	sp,sp,-16
    80005e8c:	00113423          	sd	ra,8(sp)
    80005e90:	00813023          	sd	s0,0(sp)
    80005e94:	01010413          	addi	s0,sp,16
    80005e98:	00007797          	auipc	a5,0x7
    80005e9c:	f3078793          	addi	a5,a5,-208 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    80005ea0:	00f53023          	sd	a5,0(a0)
    80005ea4:	ffffc097          	auipc	ra,0xffffc
    80005ea8:	0b0080e7          	jalr	176(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005eac:	00813083          	ld	ra,8(sp)
    80005eb0:	00013403          	ld	s0,0(sp)
    80005eb4:	01010113          	addi	sp,sp,16
    80005eb8:	00008067          	ret

0000000080005ebc <_ZN12ConsumerSyncD0Ev>:
    80005ebc:	fe010113          	addi	sp,sp,-32
    80005ec0:	00113c23          	sd	ra,24(sp)
    80005ec4:	00813823          	sd	s0,16(sp)
    80005ec8:	00913423          	sd	s1,8(sp)
    80005ecc:	02010413          	addi	s0,sp,32
    80005ed0:	00050493          	mv	s1,a0
    80005ed4:	00007797          	auipc	a5,0x7
    80005ed8:	ef478793          	addi	a5,a5,-268 # 8000cdc8 <_ZTV12ConsumerSync+0x10>
    80005edc:	00f53023          	sd	a5,0(a0)
    80005ee0:	ffffc097          	auipc	ra,0xffffc
    80005ee4:	074080e7          	jalr	116(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005ee8:	00048513          	mv	a0,s1
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	180080e7          	jalr	384(ra) # 8000206c <_ZdlPv>
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	01013403          	ld	s0,16(sp)
    80005efc:	00813483          	ld	s1,8(sp)
    80005f00:	02010113          	addi	sp,sp,32
    80005f04:	00008067          	ret

0000000080005f08 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005f08:	ff010113          	addi	sp,sp,-16
    80005f0c:	00113423          	sd	ra,8(sp)
    80005f10:	00813023          	sd	s0,0(sp)
    80005f14:	01010413          	addi	s0,sp,16
    80005f18:	00007797          	auipc	a5,0x7
    80005f1c:	e8878793          	addi	a5,a5,-376 # 8000cda0 <_ZTV12ProducerSync+0x10>
    80005f20:	00f53023          	sd	a5,0(a0)
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	030080e7          	jalr	48(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005f2c:	00813083          	ld	ra,8(sp)
    80005f30:	00013403          	ld	s0,0(sp)
    80005f34:	01010113          	addi	sp,sp,16
    80005f38:	00008067          	ret

0000000080005f3c <_ZN12ProducerSyncD0Ev>:
    80005f3c:	fe010113          	addi	sp,sp,-32
    80005f40:	00113c23          	sd	ra,24(sp)
    80005f44:	00813823          	sd	s0,16(sp)
    80005f48:	00913423          	sd	s1,8(sp)
    80005f4c:	02010413          	addi	s0,sp,32
    80005f50:	00050493          	mv	s1,a0
    80005f54:	00007797          	auipc	a5,0x7
    80005f58:	e4c78793          	addi	a5,a5,-436 # 8000cda0 <_ZTV12ProducerSync+0x10>
    80005f5c:	00f53023          	sd	a5,0(a0)
    80005f60:	ffffc097          	auipc	ra,0xffffc
    80005f64:	ff4080e7          	jalr	-12(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005f68:	00048513          	mv	a0,s1
    80005f6c:	ffffc097          	auipc	ra,0xffffc
    80005f70:	100080e7          	jalr	256(ra) # 8000206c <_ZdlPv>
    80005f74:	01813083          	ld	ra,24(sp)
    80005f78:	01013403          	ld	s0,16(sp)
    80005f7c:	00813483          	ld	s1,8(sp)
    80005f80:	02010113          	addi	sp,sp,32
    80005f84:	00008067          	ret

0000000080005f88 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f88:	ff010113          	addi	sp,sp,-16
    80005f8c:	00113423          	sd	ra,8(sp)
    80005f90:	00813023          	sd	s0,0(sp)
    80005f94:	01010413          	addi	s0,sp,16
    80005f98:	00007797          	auipc	a5,0x7
    80005f9c:	de078793          	addi	a5,a5,-544 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    80005fa0:	00f53023          	sd	a5,0(a0)
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	fb0080e7          	jalr	-80(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005fac:	00813083          	ld	ra,8(sp)
    80005fb0:	00013403          	ld	s0,0(sp)
    80005fb4:	01010113          	addi	sp,sp,16
    80005fb8:	00008067          	ret

0000000080005fbc <_ZN16ProducerKeyboardD0Ev>:
    80005fbc:	fe010113          	addi	sp,sp,-32
    80005fc0:	00113c23          	sd	ra,24(sp)
    80005fc4:	00813823          	sd	s0,16(sp)
    80005fc8:	00913423          	sd	s1,8(sp)
    80005fcc:	02010413          	addi	s0,sp,32
    80005fd0:	00050493          	mv	s1,a0
    80005fd4:	00007797          	auipc	a5,0x7
    80005fd8:	da478793          	addi	a5,a5,-604 # 8000cd78 <_ZTV16ProducerKeyboard+0x10>
    80005fdc:	00f53023          	sd	a5,0(a0)
    80005fe0:	ffffc097          	auipc	ra,0xffffc
    80005fe4:	f74080e7          	jalr	-140(ra) # 80001f54 <_ZN6ThreadD1Ev>
    80005fe8:	00048513          	mv	a0,s1
    80005fec:	ffffc097          	auipc	ra,0xffffc
    80005ff0:	080080e7          	jalr	128(ra) # 8000206c <_ZdlPv>
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	01013403          	ld	s0,16(sp)
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	02010113          	addi	sp,sp,32
    80006004:	00008067          	ret

0000000080006008 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006008:	ff010113          	addi	sp,sp,-16
    8000600c:	00113423          	sd	ra,8(sp)
    80006010:	00813023          	sd	s0,0(sp)
    80006014:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006018:	02053583          	ld	a1,32(a0)
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	7e4080e7          	jalr	2020(ra) # 80005800 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006024:	00813083          	ld	ra,8(sp)
    80006028:	00013403          	ld	s0,0(sp)
    8000602c:	01010113          	addi	sp,sp,16
    80006030:	00008067          	ret

0000000080006034 <_ZN12ProducerSync3runEv>:
    void run() override {
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00113423          	sd	ra,8(sp)
    8000603c:	00813023          	sd	s0,0(sp)
    80006040:	01010413          	addi	s0,sp,16
        producer(td);
    80006044:	02053583          	ld	a1,32(a0)
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	878080e7          	jalr	-1928(ra) # 800058c0 <_ZN12ProducerSync8producerEPv>
    }
    80006050:	00813083          	ld	ra,8(sp)
    80006054:	00013403          	ld	s0,0(sp)
    80006058:	01010113          	addi	sp,sp,16
    8000605c:	00008067          	ret

0000000080006060 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006060:	ff010113          	addi	sp,sp,-16
    80006064:	00113423          	sd	ra,8(sp)
    80006068:	00813023          	sd	s0,0(sp)
    8000606c:	01010413          	addi	s0,sp,16
        consumer(td);
    80006070:	02053583          	ld	a1,32(a0)
    80006074:	00000097          	auipc	ra,0x0
    80006078:	8e0080e7          	jalr	-1824(ra) # 80005954 <_ZN12ConsumerSync8consumerEPv>
    }
    8000607c:	00813083          	ld	ra,8(sp)
    80006080:	00013403          	ld	s0,0(sp)
    80006084:	01010113          	addi	sp,sp,16
    80006088:	00008067          	ret

000000008000608c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	02010413          	addi	s0,sp,32
    800060a0:	00050493          	mv	s1,a0
    LOCK();
    800060a4:	00100613          	li	a2,1
    800060a8:	00000593          	li	a1,0
    800060ac:	00007517          	auipc	a0,0x7
    800060b0:	e9450513          	addi	a0,a0,-364 # 8000cf40 <lockPrint>
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	168080e7          	jalr	360(ra) # 8000121c <copy_and_swap>
    800060bc:	00050863          	beqz	a0,800060cc <_Z11printStringPKc+0x40>
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	30c080e7          	jalr	780(ra) # 800013cc <_Z15thread_dispatchv>
    800060c8:	fddff06f          	j	800060a4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800060cc:	0004c503          	lbu	a0,0(s1)
    800060d0:	00050a63          	beqz	a0,800060e4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	598080e7          	jalr	1432(ra) # 8000166c <_Z4putcc>
        string++;
    800060dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800060e0:	fedff06f          	j	800060cc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800060e4:	00000613          	li	a2,0
    800060e8:	00100593          	li	a1,1
    800060ec:	00007517          	auipc	a0,0x7
    800060f0:	e5450513          	addi	a0,a0,-428 # 8000cf40 <lockPrint>
    800060f4:	ffffb097          	auipc	ra,0xffffb
    800060f8:	128080e7          	jalr	296(ra) # 8000121c <copy_and_swap>
    800060fc:	fe0514e3          	bnez	a0,800060e4 <_Z11printStringPKc+0x58>
}
    80006100:	01813083          	ld	ra,24(sp)
    80006104:	01013403          	ld	s0,16(sp)
    80006108:	00813483          	ld	s1,8(sp)
    8000610c:	02010113          	addi	sp,sp,32
    80006110:	00008067          	ret

0000000080006114 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006114:	fd010113          	addi	sp,sp,-48
    80006118:	02113423          	sd	ra,40(sp)
    8000611c:	02813023          	sd	s0,32(sp)
    80006120:	00913c23          	sd	s1,24(sp)
    80006124:	01213823          	sd	s2,16(sp)
    80006128:	01313423          	sd	s3,8(sp)
    8000612c:	01413023          	sd	s4,0(sp)
    80006130:	03010413          	addi	s0,sp,48
    80006134:	00050993          	mv	s3,a0
    80006138:	00058a13          	mv	s4,a1
    LOCK();
    8000613c:	00100613          	li	a2,1
    80006140:	00000593          	li	a1,0
    80006144:	00007517          	auipc	a0,0x7
    80006148:	dfc50513          	addi	a0,a0,-516 # 8000cf40 <lockPrint>
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	0d0080e7          	jalr	208(ra) # 8000121c <copy_and_swap>
    80006154:	00050863          	beqz	a0,80006164 <_Z9getStringPci+0x50>
    80006158:	ffffb097          	auipc	ra,0xffffb
    8000615c:	274080e7          	jalr	628(ra) # 800013cc <_Z15thread_dispatchv>
    80006160:	fddff06f          	j	8000613c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006164:	00000913          	li	s2,0
    80006168:	00090493          	mv	s1,s2
    8000616c:	0019091b          	addiw	s2,s2,1
    80006170:	03495a63          	bge	s2,s4,800061a4 <_Z9getStringPci+0x90>
        cc = getc();
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	4ac080e7          	jalr	1196(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    8000617c:	02050463          	beqz	a0,800061a4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006180:	009984b3          	add	s1,s3,s1
    80006184:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006188:	00a00793          	li	a5,10
    8000618c:	00f50a63          	beq	a0,a5,800061a0 <_Z9getStringPci+0x8c>
    80006190:	00d00793          	li	a5,13
    80006194:	fcf51ae3          	bne	a0,a5,80006168 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006198:	00090493          	mv	s1,s2
    8000619c:	0080006f          	j	800061a4 <_Z9getStringPci+0x90>
    800061a0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800061a4:	009984b3          	add	s1,s3,s1
    800061a8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800061ac:	00000613          	li	a2,0
    800061b0:	00100593          	li	a1,1
    800061b4:	00007517          	auipc	a0,0x7
    800061b8:	d8c50513          	addi	a0,a0,-628 # 8000cf40 <lockPrint>
    800061bc:	ffffb097          	auipc	ra,0xffffb
    800061c0:	060080e7          	jalr	96(ra) # 8000121c <copy_and_swap>
    800061c4:	fe0514e3          	bnez	a0,800061ac <_Z9getStringPci+0x98>
    return buf;
}
    800061c8:	00098513          	mv	a0,s3
    800061cc:	02813083          	ld	ra,40(sp)
    800061d0:	02013403          	ld	s0,32(sp)
    800061d4:	01813483          	ld	s1,24(sp)
    800061d8:	01013903          	ld	s2,16(sp)
    800061dc:	00813983          	ld	s3,8(sp)
    800061e0:	00013a03          	ld	s4,0(sp)
    800061e4:	03010113          	addi	sp,sp,48
    800061e8:	00008067          	ret

00000000800061ec <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800061ec:	ff010113          	addi	sp,sp,-16
    800061f0:	00813423          	sd	s0,8(sp)
    800061f4:	01010413          	addi	s0,sp,16
    800061f8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800061fc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006200:	0006c603          	lbu	a2,0(a3)
    80006204:	fd06071b          	addiw	a4,a2,-48
    80006208:	0ff77713          	andi	a4,a4,255
    8000620c:	00900793          	li	a5,9
    80006210:	02e7e063          	bltu	a5,a4,80006230 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006214:	0025179b          	slliw	a5,a0,0x2
    80006218:	00a787bb          	addw	a5,a5,a0
    8000621c:	0017979b          	slliw	a5,a5,0x1
    80006220:	00168693          	addi	a3,a3,1
    80006224:	00c787bb          	addw	a5,a5,a2
    80006228:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000622c:	fd5ff06f          	j	80006200 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006230:	00813403          	ld	s0,8(sp)
    80006234:	01010113          	addi	sp,sp,16
    80006238:	00008067          	ret

000000008000623c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000623c:	fc010113          	addi	sp,sp,-64
    80006240:	02113c23          	sd	ra,56(sp)
    80006244:	02813823          	sd	s0,48(sp)
    80006248:	02913423          	sd	s1,40(sp)
    8000624c:	03213023          	sd	s2,32(sp)
    80006250:	01313c23          	sd	s3,24(sp)
    80006254:	04010413          	addi	s0,sp,64
    80006258:	00050493          	mv	s1,a0
    8000625c:	00058913          	mv	s2,a1
    80006260:	00060993          	mv	s3,a2
    LOCK();
    80006264:	00100613          	li	a2,1
    80006268:	00000593          	li	a1,0
    8000626c:	00007517          	auipc	a0,0x7
    80006270:	cd450513          	addi	a0,a0,-812 # 8000cf40 <lockPrint>
    80006274:	ffffb097          	auipc	ra,0xffffb
    80006278:	fa8080e7          	jalr	-88(ra) # 8000121c <copy_and_swap>
    8000627c:	00050863          	beqz	a0,8000628c <_Z8printIntiii+0x50>
    80006280:	ffffb097          	auipc	ra,0xffffb
    80006284:	14c080e7          	jalr	332(ra) # 800013cc <_Z15thread_dispatchv>
    80006288:	fddff06f          	j	80006264 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000628c:	00098463          	beqz	s3,80006294 <_Z8printIntiii+0x58>
    80006290:	0804c463          	bltz	s1,80006318 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006294:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006298:	00000593          	li	a1,0
    }

    i = 0;
    8000629c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800062a0:	0009079b          	sext.w	a5,s2
    800062a4:	0325773b          	remuw	a4,a0,s2
    800062a8:	00048613          	mv	a2,s1
    800062ac:	0014849b          	addiw	s1,s1,1
    800062b0:	02071693          	slli	a3,a4,0x20
    800062b4:	0206d693          	srli	a3,a3,0x20
    800062b8:	00007717          	auipc	a4,0x7
    800062bc:	b2870713          	addi	a4,a4,-1240 # 8000cde0 <digits>
    800062c0:	00d70733          	add	a4,a4,a3
    800062c4:	00074683          	lbu	a3,0(a4)
    800062c8:	fd040713          	addi	a4,s0,-48
    800062cc:	00c70733          	add	a4,a4,a2
    800062d0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800062d4:	0005071b          	sext.w	a4,a0
    800062d8:	0325553b          	divuw	a0,a0,s2
    800062dc:	fcf772e3          	bgeu	a4,a5,800062a0 <_Z8printIntiii+0x64>
    if(neg)
    800062e0:	00058c63          	beqz	a1,800062f8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800062e4:	fd040793          	addi	a5,s0,-48
    800062e8:	009784b3          	add	s1,a5,s1
    800062ec:	02d00793          	li	a5,45
    800062f0:	fef48823          	sb	a5,-16(s1)
    800062f4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800062f8:	fff4849b          	addiw	s1,s1,-1
    800062fc:	0204c463          	bltz	s1,80006324 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006300:	fd040793          	addi	a5,s0,-48
    80006304:	009787b3          	add	a5,a5,s1
    80006308:	ff07c503          	lbu	a0,-16(a5)
    8000630c:	ffffb097          	auipc	ra,0xffffb
    80006310:	360080e7          	jalr	864(ra) # 8000166c <_Z4putcc>
    80006314:	fe5ff06f          	j	800062f8 <_Z8printIntiii+0xbc>
        x = -xx;
    80006318:	4090053b          	negw	a0,s1
        neg = 1;
    8000631c:	00100593          	li	a1,1
        x = -xx;
    80006320:	f7dff06f          	j	8000629c <_Z8printIntiii+0x60>

    UNLOCK();
    80006324:	00000613          	li	a2,0
    80006328:	00100593          	li	a1,1
    8000632c:	00007517          	auipc	a0,0x7
    80006330:	c1450513          	addi	a0,a0,-1004 # 8000cf40 <lockPrint>
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	ee8080e7          	jalr	-280(ra) # 8000121c <copy_and_swap>
    8000633c:	fe0514e3          	bnez	a0,80006324 <_Z8printIntiii+0xe8>
    80006340:	03813083          	ld	ra,56(sp)
    80006344:	03013403          	ld	s0,48(sp)
    80006348:	02813483          	ld	s1,40(sp)
    8000634c:	02013903          	ld	s2,32(sp)
    80006350:	01813983          	ld	s3,24(sp)
    80006354:	04010113          	addi	sp,sp,64
    80006358:	00008067          	ret

000000008000635c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000635c:	fd010113          	addi	sp,sp,-48
    80006360:	02113423          	sd	ra,40(sp)
    80006364:	02813023          	sd	s0,32(sp)
    80006368:	00913c23          	sd	s1,24(sp)
    8000636c:	01213823          	sd	s2,16(sp)
    80006370:	01313423          	sd	s3,8(sp)
    80006374:	03010413          	addi	s0,sp,48
    80006378:	00050493          	mv	s1,a0
    8000637c:	00058913          	mv	s2,a1
    80006380:	0015879b          	addiw	a5,a1,1
    80006384:	0007851b          	sext.w	a0,a5
    80006388:	00f4a023          	sw	a5,0(s1)
    8000638c:	0004a823          	sw	zero,16(s1)
    80006390:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006394:	00251513          	slli	a0,a0,0x2
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	ec0080e7          	jalr	-320(ra) # 80001258 <_Z9mem_allocm>
    800063a0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800063a4:	01000513          	li	a0,16
    800063a8:	ffffc097          	auipc	ra,0xffffc
    800063ac:	c9c080e7          	jalr	-868(ra) # 80002044 <_Znwm>
    800063b0:	00050993          	mv	s3,a0
    800063b4:	00000593          	li	a1,0
    800063b8:	ffffc097          	auipc	ra,0xffffc
    800063bc:	e44080e7          	jalr	-444(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    800063c0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800063c4:	01000513          	li	a0,16
    800063c8:	ffffc097          	auipc	ra,0xffffc
    800063cc:	c7c080e7          	jalr	-900(ra) # 80002044 <_Znwm>
    800063d0:	00050993          	mv	s3,a0
    800063d4:	00090593          	mv	a1,s2
    800063d8:	ffffc097          	auipc	ra,0xffffc
    800063dc:	e24080e7          	jalr	-476(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    800063e0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800063e4:	01000513          	li	a0,16
    800063e8:	ffffc097          	auipc	ra,0xffffc
    800063ec:	c5c080e7          	jalr	-932(ra) # 80002044 <_Znwm>
    800063f0:	00050913          	mv	s2,a0
    800063f4:	00100593          	li	a1,1
    800063f8:	ffffc097          	auipc	ra,0xffffc
    800063fc:	e04080e7          	jalr	-508(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    80006400:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006404:	01000513          	li	a0,16
    80006408:	ffffc097          	auipc	ra,0xffffc
    8000640c:	c3c080e7          	jalr	-964(ra) # 80002044 <_Znwm>
    80006410:	00050913          	mv	s2,a0
    80006414:	00100593          	li	a1,1
    80006418:	ffffc097          	auipc	ra,0xffffc
    8000641c:	de4080e7          	jalr	-540(ra) # 800021fc <_ZN9SemaphoreC1Ej>
    80006420:	0324b823          	sd	s2,48(s1)
}
    80006424:	02813083          	ld	ra,40(sp)
    80006428:	02013403          	ld	s0,32(sp)
    8000642c:	01813483          	ld	s1,24(sp)
    80006430:	01013903          	ld	s2,16(sp)
    80006434:	00813983          	ld	s3,8(sp)
    80006438:	03010113          	addi	sp,sp,48
    8000643c:	00008067          	ret
    80006440:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006444:	00098513          	mv	a0,s3
    80006448:	ffffc097          	auipc	ra,0xffffc
    8000644c:	c24080e7          	jalr	-988(ra) # 8000206c <_ZdlPv>
    80006450:	00048513          	mv	a0,s1
    80006454:	00008097          	auipc	ra,0x8
    80006458:	bc4080e7          	jalr	-1084(ra) # 8000e018 <_Unwind_Resume>
    8000645c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006460:	00098513          	mv	a0,s3
    80006464:	ffffc097          	auipc	ra,0xffffc
    80006468:	c08080e7          	jalr	-1016(ra) # 8000206c <_ZdlPv>
    8000646c:	00048513          	mv	a0,s1
    80006470:	00008097          	auipc	ra,0x8
    80006474:	ba8080e7          	jalr	-1112(ra) # 8000e018 <_Unwind_Resume>
    80006478:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000647c:	00090513          	mv	a0,s2
    80006480:	ffffc097          	auipc	ra,0xffffc
    80006484:	bec080e7          	jalr	-1044(ra) # 8000206c <_ZdlPv>
    80006488:	00048513          	mv	a0,s1
    8000648c:	00008097          	auipc	ra,0x8
    80006490:	b8c080e7          	jalr	-1140(ra) # 8000e018 <_Unwind_Resume>
    80006494:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006498:	00090513          	mv	a0,s2
    8000649c:	ffffc097          	auipc	ra,0xffffc
    800064a0:	bd0080e7          	jalr	-1072(ra) # 8000206c <_ZdlPv>
    800064a4:	00048513          	mv	a0,s1
    800064a8:	00008097          	auipc	ra,0x8
    800064ac:	b70080e7          	jalr	-1168(ra) # 8000e018 <_Unwind_Resume>

00000000800064b0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800064b0:	fe010113          	addi	sp,sp,-32
    800064b4:	00113c23          	sd	ra,24(sp)
    800064b8:	00813823          	sd	s0,16(sp)
    800064bc:	00913423          	sd	s1,8(sp)
    800064c0:	01213023          	sd	s2,0(sp)
    800064c4:	02010413          	addi	s0,sp,32
    800064c8:	00050493          	mv	s1,a0
    800064cc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800064d0:	01853503          	ld	a0,24(a0)
    800064d4:	ffffc097          	auipc	ra,0xffffc
    800064d8:	d64080e7          	jalr	-668(ra) # 80002238 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800064dc:	0304b503          	ld	a0,48(s1)
    800064e0:	ffffc097          	auipc	ra,0xffffc
    800064e4:	d58080e7          	jalr	-680(ra) # 80002238 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800064e8:	0084b783          	ld	a5,8(s1)
    800064ec:	0144a703          	lw	a4,20(s1)
    800064f0:	00271713          	slli	a4,a4,0x2
    800064f4:	00e787b3          	add	a5,a5,a4
    800064f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800064fc:	0144a783          	lw	a5,20(s1)
    80006500:	0017879b          	addiw	a5,a5,1
    80006504:	0004a703          	lw	a4,0(s1)
    80006508:	02e7e7bb          	remw	a5,a5,a4
    8000650c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006510:	0304b503          	ld	a0,48(s1)
    80006514:	ffffc097          	auipc	ra,0xffffc
    80006518:	d5c080e7          	jalr	-676(ra) # 80002270 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000651c:	0204b503          	ld	a0,32(s1)
    80006520:	ffffc097          	auipc	ra,0xffffc
    80006524:	d50080e7          	jalr	-688(ra) # 80002270 <_ZN9Semaphore6signalEv>

}
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	00813483          	ld	s1,8(sp)
    80006534:	00013903          	ld	s2,0(sp)
    80006538:	02010113          	addi	sp,sp,32
    8000653c:	00008067          	ret

0000000080006540 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006540:	fe010113          	addi	sp,sp,-32
    80006544:	00113c23          	sd	ra,24(sp)
    80006548:	00813823          	sd	s0,16(sp)
    8000654c:	00913423          	sd	s1,8(sp)
    80006550:	01213023          	sd	s2,0(sp)
    80006554:	02010413          	addi	s0,sp,32
    80006558:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000655c:	02053503          	ld	a0,32(a0)
    80006560:	ffffc097          	auipc	ra,0xffffc
    80006564:	cd8080e7          	jalr	-808(ra) # 80002238 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006568:	0284b503          	ld	a0,40(s1)
    8000656c:	ffffc097          	auipc	ra,0xffffc
    80006570:	ccc080e7          	jalr	-820(ra) # 80002238 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006574:	0084b703          	ld	a4,8(s1)
    80006578:	0104a783          	lw	a5,16(s1)
    8000657c:	00279693          	slli	a3,a5,0x2
    80006580:	00d70733          	add	a4,a4,a3
    80006584:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006588:	0017879b          	addiw	a5,a5,1
    8000658c:	0004a703          	lw	a4,0(s1)
    80006590:	02e7e7bb          	remw	a5,a5,a4
    80006594:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006598:	0284b503          	ld	a0,40(s1)
    8000659c:	ffffc097          	auipc	ra,0xffffc
    800065a0:	cd4080e7          	jalr	-812(ra) # 80002270 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800065a4:	0184b503          	ld	a0,24(s1)
    800065a8:	ffffc097          	auipc	ra,0xffffc
    800065ac:	cc8080e7          	jalr	-824(ra) # 80002270 <_ZN9Semaphore6signalEv>

    return ret;
}
    800065b0:	00090513          	mv	a0,s2
    800065b4:	01813083          	ld	ra,24(sp)
    800065b8:	01013403          	ld	s0,16(sp)
    800065bc:	00813483          	ld	s1,8(sp)
    800065c0:	00013903          	ld	s2,0(sp)
    800065c4:	02010113          	addi	sp,sp,32
    800065c8:	00008067          	ret

00000000800065cc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800065cc:	fe010113          	addi	sp,sp,-32
    800065d0:	00113c23          	sd	ra,24(sp)
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00913423          	sd	s1,8(sp)
    800065dc:	01213023          	sd	s2,0(sp)
    800065e0:	02010413          	addi	s0,sp,32
    800065e4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800065e8:	02853503          	ld	a0,40(a0)
    800065ec:	ffffc097          	auipc	ra,0xffffc
    800065f0:	c4c080e7          	jalr	-948(ra) # 80002238 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800065f4:	0304b503          	ld	a0,48(s1)
    800065f8:	ffffc097          	auipc	ra,0xffffc
    800065fc:	c40080e7          	jalr	-960(ra) # 80002238 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006600:	0144a783          	lw	a5,20(s1)
    80006604:	0104a903          	lw	s2,16(s1)
    80006608:	0327ce63          	blt	a5,s2,80006644 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000660c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006610:	0304b503          	ld	a0,48(s1)
    80006614:	ffffc097          	auipc	ra,0xffffc
    80006618:	c5c080e7          	jalr	-932(ra) # 80002270 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000661c:	0284b503          	ld	a0,40(s1)
    80006620:	ffffc097          	auipc	ra,0xffffc
    80006624:	c50080e7          	jalr	-944(ra) # 80002270 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006628:	00090513          	mv	a0,s2
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	01013403          	ld	s0,16(sp)
    80006634:	00813483          	ld	s1,8(sp)
    80006638:	00013903          	ld	s2,0(sp)
    8000663c:	02010113          	addi	sp,sp,32
    80006640:	00008067          	ret
        ret = cap - head + tail;
    80006644:	0004a703          	lw	a4,0(s1)
    80006648:	4127093b          	subw	s2,a4,s2
    8000664c:	00f9093b          	addw	s2,s2,a5
    80006650:	fc1ff06f          	j	80006610 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006654 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006654:	fe010113          	addi	sp,sp,-32
    80006658:	00113c23          	sd	ra,24(sp)
    8000665c:	00813823          	sd	s0,16(sp)
    80006660:	00913423          	sd	s1,8(sp)
    80006664:	02010413          	addi	s0,sp,32
    80006668:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000666c:	00a00513          	li	a0,10
    80006670:	ffffc097          	auipc	ra,0xffffc
    80006674:	d28080e7          	jalr	-728(ra) # 80002398 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006678:	00004517          	auipc	a0,0x4
    8000667c:	c9850513          	addi	a0,a0,-872 # 8000a310 <CONSOLE_STATUS+0x300>
    80006680:	00000097          	auipc	ra,0x0
    80006684:	a0c080e7          	jalr	-1524(ra) # 8000608c <_Z11printStringPKc>
    while (getCnt()) {
    80006688:	00048513          	mv	a0,s1
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	f40080e7          	jalr	-192(ra) # 800065cc <_ZN9BufferCPP6getCntEv>
    80006694:	02050c63          	beqz	a0,800066cc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006698:	0084b783          	ld	a5,8(s1)
    8000669c:	0104a703          	lw	a4,16(s1)
    800066a0:	00271713          	slli	a4,a4,0x2
    800066a4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800066a8:	0007c503          	lbu	a0,0(a5)
    800066ac:	ffffc097          	auipc	ra,0xffffc
    800066b0:	cec080e7          	jalr	-788(ra) # 80002398 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800066b4:	0104a783          	lw	a5,16(s1)
    800066b8:	0017879b          	addiw	a5,a5,1
    800066bc:	0004a703          	lw	a4,0(s1)
    800066c0:	02e7e7bb          	remw	a5,a5,a4
    800066c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800066c8:	fc1ff06f          	j	80006688 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800066cc:	02100513          	li	a0,33
    800066d0:	ffffc097          	auipc	ra,0xffffc
    800066d4:	cc8080e7          	jalr	-824(ra) # 80002398 <_ZN7Console4putcEc>
    Console::putc('\n');
    800066d8:	00a00513          	li	a0,10
    800066dc:	ffffc097          	auipc	ra,0xffffc
    800066e0:	cbc080e7          	jalr	-836(ra) # 80002398 <_ZN7Console4putcEc>
    mem_free(buffer);
    800066e4:	0084b503          	ld	a0,8(s1)
    800066e8:	ffffb097          	auipc	ra,0xffffb
    800066ec:	bc4080e7          	jalr	-1084(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    800066f0:	0204b503          	ld	a0,32(s1)
    800066f4:	00050863          	beqz	a0,80006704 <_ZN9BufferCPPD1Ev+0xb0>
    800066f8:	00053783          	ld	a5,0(a0)
    800066fc:	0087b783          	ld	a5,8(a5)
    80006700:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006704:	0184b503          	ld	a0,24(s1)
    80006708:	00050863          	beqz	a0,80006718 <_ZN9BufferCPPD1Ev+0xc4>
    8000670c:	00053783          	ld	a5,0(a0)
    80006710:	0087b783          	ld	a5,8(a5)
    80006714:	000780e7          	jalr	a5
    delete mutexTail;
    80006718:	0304b503          	ld	a0,48(s1)
    8000671c:	00050863          	beqz	a0,8000672c <_ZN9BufferCPPD1Ev+0xd8>
    80006720:	00053783          	ld	a5,0(a0)
    80006724:	0087b783          	ld	a5,8(a5)
    80006728:	000780e7          	jalr	a5
    delete mutexHead;
    8000672c:	0284b503          	ld	a0,40(s1)
    80006730:	00050863          	beqz	a0,80006740 <_ZN9BufferCPPD1Ev+0xec>
    80006734:	00053783          	ld	a5,0(a0)
    80006738:	0087b783          	ld	a5,8(a5)
    8000673c:	000780e7          	jalr	a5
}
    80006740:	01813083          	ld	ra,24(sp)
    80006744:	01013403          	ld	s0,16(sp)
    80006748:	00813483          	ld	s1,8(sp)
    8000674c:	02010113          	addi	sp,sp,32
    80006750:	00008067          	ret

0000000080006754 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006754:	fe010113          	addi	sp,sp,-32
    80006758:	00113c23          	sd	ra,24(sp)
    8000675c:	00813823          	sd	s0,16(sp)
    80006760:	00913423          	sd	s1,8(sp)
    80006764:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006768:	00004517          	auipc	a0,0x4
    8000676c:	bd050513          	addi	a0,a0,-1072 # 8000a338 <CONSOLE_STATUS+0x328>
    80006770:	00000097          	auipc	ra,0x0
    80006774:	91c080e7          	jalr	-1764(ra) # 8000608c <_Z11printStringPKc>
    int test = getc() - '0';
    80006778:	ffffb097          	auipc	ra,0xffffb
    8000677c:	ea8080e7          	jalr	-344(ra) # 80001620 <_Z4getcv>
    80006780:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006784:	ffffb097          	auipc	ra,0xffffb
    80006788:	e9c080e7          	jalr	-356(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000678c:	00700793          	li	a5,7
    80006790:	1097e263          	bltu	a5,s1,80006894 <_Z8userMainv+0x140>
    80006794:	00249493          	slli	s1,s1,0x2
    80006798:	00004717          	auipc	a4,0x4
    8000679c:	df870713          	addi	a4,a4,-520 # 8000a590 <CONSOLE_STATUS+0x580>
    800067a0:	00e484b3          	add	s1,s1,a4
    800067a4:	0004a783          	lw	a5,0(s1)
    800067a8:	00e787b3          	add	a5,a5,a4
    800067ac:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800067b0:	fffff097          	auipc	ra,0xfffff
    800067b4:	f54080e7          	jalr	-172(ra) # 80005704 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800067b8:	00004517          	auipc	a0,0x4
    800067bc:	ba050513          	addi	a0,a0,-1120 # 8000a358 <CONSOLE_STATUS+0x348>
    800067c0:	00000097          	auipc	ra,0x0
    800067c4:	8cc080e7          	jalr	-1844(ra) # 8000608c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800067c8:	01813083          	ld	ra,24(sp)
    800067cc:	01013403          	ld	s0,16(sp)
    800067d0:	00813483          	ld	s1,8(sp)
    800067d4:	02010113          	addi	sp,sp,32
    800067d8:	00008067          	ret
            Threads_CPP_API_test();
    800067dc:	ffffe097          	auipc	ra,0xffffe
    800067e0:	ae8080e7          	jalr	-1304(ra) # 800042c4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800067e4:	00004517          	auipc	a0,0x4
    800067e8:	bb450513          	addi	a0,a0,-1100 # 8000a398 <CONSOLE_STATUS+0x388>
    800067ec:	00000097          	auipc	ra,0x0
    800067f0:	8a0080e7          	jalr	-1888(ra) # 8000608c <_Z11printStringPKc>
            break;
    800067f4:	fd5ff06f          	j	800067c8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800067f8:	ffffd097          	auipc	ra,0xffffd
    800067fc:	320080e7          	jalr	800(ra) # 80003b18 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006800:	00004517          	auipc	a0,0x4
    80006804:	bd850513          	addi	a0,a0,-1064 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    80006808:	00000097          	auipc	ra,0x0
    8000680c:	884080e7          	jalr	-1916(ra) # 8000608c <_Z11printStringPKc>
            break;
    80006810:	fb9ff06f          	j	800067c8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	234080e7          	jalr	564(ra) # 80005a48 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000681c:	00004517          	auipc	a0,0x4
    80006820:	c0c50513          	addi	a0,a0,-1012 # 8000a428 <CONSOLE_STATUS+0x418>
    80006824:	00000097          	auipc	ra,0x0
    80006828:	868080e7          	jalr	-1944(ra) # 8000608c <_Z11printStringPKc>
            break;
    8000682c:	f9dff06f          	j	800067c8 <_Z8userMainv+0x74>
            testSleeping();
    80006830:	00000097          	auipc	ra,0x0
    80006834:	11c080e7          	jalr	284(ra) # 8000694c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006838:	00004517          	auipc	a0,0x4
    8000683c:	c4850513          	addi	a0,a0,-952 # 8000a480 <CONSOLE_STATUS+0x470>
    80006840:	00000097          	auipc	ra,0x0
    80006844:	84c080e7          	jalr	-1972(ra) # 8000608c <_Z11printStringPKc>
            break;
    80006848:	f81ff06f          	j	800067c8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000684c:	ffffe097          	auipc	ra,0xffffe
    80006850:	f38080e7          	jalr	-200(ra) # 80004784 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006854:	00004517          	auipc	a0,0x4
    80006858:	c5c50513          	addi	a0,a0,-932 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	830080e7          	jalr	-2000(ra) # 8000608c <_Z11printStringPKc>
            break;
    80006864:	f65ff06f          	j	800067c8 <_Z8userMainv+0x74>
            System_Mode_test();
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	658080e7          	jalr	1624(ra) # 80006ec0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006870:	00004517          	auipc	a0,0x4
    80006874:	c8050513          	addi	a0,a0,-896 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	814080e7          	jalr	-2028(ra) # 8000608c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006880:	00004517          	auipc	a0,0x4
    80006884:	c9050513          	addi	a0,a0,-880 # 8000a510 <CONSOLE_STATUS+0x500>
    80006888:	00000097          	auipc	ra,0x0
    8000688c:	804080e7          	jalr	-2044(ra) # 8000608c <_Z11printStringPKc>
            break;
    80006890:	f39ff06f          	j	800067c8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006894:	00004517          	auipc	a0,0x4
    80006898:	cd450513          	addi	a0,a0,-812 # 8000a568 <CONSOLE_STATUS+0x558>
    8000689c:	fffff097          	auipc	ra,0xfffff
    800068a0:	7f0080e7          	jalr	2032(ra) # 8000608c <_Z11printStringPKc>
    800068a4:	f25ff06f          	j	800067c8 <_Z8userMainv+0x74>

00000000800068a8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800068a8:	fe010113          	addi	sp,sp,-32
    800068ac:	00113c23          	sd	ra,24(sp)
    800068b0:	00813823          	sd	s0,16(sp)
    800068b4:	00913423          	sd	s1,8(sp)
    800068b8:	01213023          	sd	s2,0(sp)
    800068bc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800068c0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800068c4:	00600493          	li	s1,6
    while (--i > 0) {
    800068c8:	fff4849b          	addiw	s1,s1,-1
    800068cc:	04905463          	blez	s1,80006914 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    800068d0:	00004517          	auipc	a0,0x4
    800068d4:	ce050513          	addi	a0,a0,-800 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	7b4080e7          	jalr	1972(ra) # 8000608c <_Z11printStringPKc>
        printInt(sleep_time);
    800068e0:	00000613          	li	a2,0
    800068e4:	00a00593          	li	a1,10
    800068e8:	0009051b          	sext.w	a0,s2
    800068ec:	00000097          	auipc	ra,0x0
    800068f0:	950080e7          	jalr	-1712(ra) # 8000623c <_Z8printIntiii>
        printString(" !\n");
    800068f4:	00004517          	auipc	a0,0x4
    800068f8:	cc450513          	addi	a0,a0,-828 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	790080e7          	jalr	1936(ra) # 8000608c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006904:	00090513          	mv	a0,s2
    80006908:	ffffb097          	auipc	ra,0xffffb
    8000690c:	ccc080e7          	jalr	-820(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006910:	fb9ff06f          	j	800068c8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006914:	00a00793          	li	a5,10
    80006918:	02f95933          	divu	s2,s2,a5
    8000691c:	fff90913          	addi	s2,s2,-1
    80006920:	00006797          	auipc	a5,0x6
    80006924:	62878793          	addi	a5,a5,1576 # 8000cf48 <_ZL8finished>
    80006928:	01278933          	add	s2,a5,s2
    8000692c:	00100793          	li	a5,1
    80006930:	00f90023          	sb	a5,0(s2)
}
    80006934:	01813083          	ld	ra,24(sp)
    80006938:	01013403          	ld	s0,16(sp)
    8000693c:	00813483          	ld	s1,8(sp)
    80006940:	00013903          	ld	s2,0(sp)
    80006944:	02010113          	addi	sp,sp,32
    80006948:	00008067          	ret

000000008000694c <_Z12testSleepingv>:

void testSleeping() {
    8000694c:	fc010113          	addi	sp,sp,-64
    80006950:	02113c23          	sd	ra,56(sp)
    80006954:	02813823          	sd	s0,48(sp)
    80006958:	02913423          	sd	s1,40(sp)
    8000695c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006960:	00a00793          	li	a5,10
    80006964:	fcf43823          	sd	a5,-48(s0)
    80006968:	01400793          	li	a5,20
    8000696c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006970:	00000493          	li	s1,0
    80006974:	02c0006f          	j	800069a0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006978:	00349793          	slli	a5,s1,0x3
    8000697c:	fd040613          	addi	a2,s0,-48
    80006980:	00f60633          	add	a2,a2,a5
    80006984:	00000597          	auipc	a1,0x0
    80006988:	f2458593          	addi	a1,a1,-220 # 800068a8 <_ZL9sleepyRunPv>
    8000698c:	fc040513          	addi	a0,s0,-64
    80006990:	00f50533          	add	a0,a0,a5
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	964080e7          	jalr	-1692(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000699c:	0014849b          	addiw	s1,s1,1
    800069a0:	00100793          	li	a5,1
    800069a4:	fc97dae3          	bge	a5,s1,80006978 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800069a8:	00006797          	auipc	a5,0x6
    800069ac:	5a07c783          	lbu	a5,1440(a5) # 8000cf48 <_ZL8finished>
    800069b0:	fe078ce3          	beqz	a5,800069a8 <_Z12testSleepingv+0x5c>
    800069b4:	00006797          	auipc	a5,0x6
    800069b8:	5957c783          	lbu	a5,1429(a5) # 8000cf49 <_ZL8finished+0x1>
    800069bc:	fe0786e3          	beqz	a5,800069a8 <_Z12testSleepingv+0x5c>
}
    800069c0:	03813083          	ld	ra,56(sp)
    800069c4:	03013403          	ld	s0,48(sp)
    800069c8:	02813483          	ld	s1,40(sp)
    800069cc:	04010113          	addi	sp,sp,64
    800069d0:	00008067          	ret

00000000800069d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800069f0:	00100793          	li	a5,1
    800069f4:	02a7f863          	bgeu	a5,a0,80006a24 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800069f8:	00a00793          	li	a5,10
    800069fc:	02f577b3          	remu	a5,a0,a5
    80006a00:	02078e63          	beqz	a5,80006a3c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006a04:	fff48513          	addi	a0,s1,-1
    80006a08:	00000097          	auipc	ra,0x0
    80006a0c:	fcc080e7          	jalr	-52(ra) # 800069d4 <_ZL9fibonaccim>
    80006a10:	00050913          	mv	s2,a0
    80006a14:	ffe48513          	addi	a0,s1,-2
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	fbc080e7          	jalr	-68(ra) # 800069d4 <_ZL9fibonaccim>
    80006a20:	00a90533          	add	a0,s2,a0
}
    80006a24:	01813083          	ld	ra,24(sp)
    80006a28:	01013403          	ld	s0,16(sp)
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	00013903          	ld	s2,0(sp)
    80006a34:	02010113          	addi	sp,sp,32
    80006a38:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006a3c:	ffffb097          	auipc	ra,0xffffb
    80006a40:	990080e7          	jalr	-1648(ra) # 800013cc <_Z15thread_dispatchv>
    80006a44:	fc1ff06f          	j	80006a04 <_ZL9fibonaccim+0x30>

0000000080006a48 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006a48:	fe010113          	addi	sp,sp,-32
    80006a4c:	00113c23          	sd	ra,24(sp)
    80006a50:	00813823          	sd	s0,16(sp)
    80006a54:	00913423          	sd	s1,8(sp)
    80006a58:	01213023          	sd	s2,0(sp)
    80006a5c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006a60:	00a00493          	li	s1,10
    80006a64:	0400006f          	j	80006aa4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a68:	00004517          	auipc	a0,0x4
    80006a6c:	81050513          	addi	a0,a0,-2032 # 8000a278 <CONSOLE_STATUS+0x268>
    80006a70:	fffff097          	auipc	ra,0xfffff
    80006a74:	61c080e7          	jalr	1564(ra) # 8000608c <_Z11printStringPKc>
    80006a78:	00000613          	li	a2,0
    80006a7c:	00a00593          	li	a1,10
    80006a80:	00048513          	mv	a0,s1
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	7b8080e7          	jalr	1976(ra) # 8000623c <_Z8printIntiii>
    80006a8c:	00004517          	auipc	a0,0x4
    80006a90:	9ec50513          	addi	a0,a0,-1556 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a94:	fffff097          	auipc	ra,0xfffff
    80006a98:	5f8080e7          	jalr	1528(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006a9c:	0014849b          	addiw	s1,s1,1
    80006aa0:	0ff4f493          	andi	s1,s1,255
    80006aa4:	00c00793          	li	a5,12
    80006aa8:	fc97f0e3          	bgeu	a5,s1,80006a68 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006aac:	00003517          	auipc	a0,0x3
    80006ab0:	7d450513          	addi	a0,a0,2004 # 8000a280 <CONSOLE_STATUS+0x270>
    80006ab4:	fffff097          	auipc	ra,0xfffff
    80006ab8:	5d8080e7          	jalr	1496(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006abc:	00500313          	li	t1,5
    thread_dispatch();
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	90c080e7          	jalr	-1780(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006ac8:	01000513          	li	a0,16
    80006acc:	00000097          	auipc	ra,0x0
    80006ad0:	f08080e7          	jalr	-248(ra) # 800069d4 <_ZL9fibonaccim>
    80006ad4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006ad8:	00003517          	auipc	a0,0x3
    80006adc:	7b850513          	addi	a0,a0,1976 # 8000a290 <CONSOLE_STATUS+0x280>
    80006ae0:	fffff097          	auipc	ra,0xfffff
    80006ae4:	5ac080e7          	jalr	1452(ra) # 8000608c <_Z11printStringPKc>
    80006ae8:	00000613          	li	a2,0
    80006aec:	00a00593          	li	a1,10
    80006af0:	0009051b          	sext.w	a0,s2
    80006af4:	fffff097          	auipc	ra,0xfffff
    80006af8:	748080e7          	jalr	1864(ra) # 8000623c <_Z8printIntiii>
    80006afc:	00004517          	auipc	a0,0x4
    80006b00:	97c50513          	addi	a0,a0,-1668 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b04:	fffff097          	auipc	ra,0xfffff
    80006b08:	588080e7          	jalr	1416(ra) # 8000608c <_Z11printStringPKc>
    80006b0c:	0400006f          	j	80006b4c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b10:	00003517          	auipc	a0,0x3
    80006b14:	76850513          	addi	a0,a0,1896 # 8000a278 <CONSOLE_STATUS+0x268>
    80006b18:	fffff097          	auipc	ra,0xfffff
    80006b1c:	574080e7          	jalr	1396(ra) # 8000608c <_Z11printStringPKc>
    80006b20:	00000613          	li	a2,0
    80006b24:	00a00593          	li	a1,10
    80006b28:	00048513          	mv	a0,s1
    80006b2c:	fffff097          	auipc	ra,0xfffff
    80006b30:	710080e7          	jalr	1808(ra) # 8000623c <_Z8printIntiii>
    80006b34:	00004517          	auipc	a0,0x4
    80006b38:	94450513          	addi	a0,a0,-1724 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b3c:	fffff097          	auipc	ra,0xfffff
    80006b40:	550080e7          	jalr	1360(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006b44:	0014849b          	addiw	s1,s1,1
    80006b48:	0ff4f493          	andi	s1,s1,255
    80006b4c:	00f00793          	li	a5,15
    80006b50:	fc97f0e3          	bgeu	a5,s1,80006b10 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006b54:	00003517          	auipc	a0,0x3
    80006b58:	74c50513          	addi	a0,a0,1868 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006b5c:	fffff097          	auipc	ra,0xfffff
    80006b60:	530080e7          	jalr	1328(ra) # 8000608c <_Z11printStringPKc>
    finishedD = true;
    80006b64:	00100793          	li	a5,1
    80006b68:	00006717          	auipc	a4,0x6
    80006b6c:	3ef70123          	sb	a5,994(a4) # 8000cf4a <_ZL9finishedD>
    thread_dispatch();
    80006b70:	ffffb097          	auipc	ra,0xffffb
    80006b74:	85c080e7          	jalr	-1956(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006b78:	01813083          	ld	ra,24(sp)
    80006b7c:	01013403          	ld	s0,16(sp)
    80006b80:	00813483          	ld	s1,8(sp)
    80006b84:	00013903          	ld	s2,0(sp)
    80006b88:	02010113          	addi	sp,sp,32
    80006b8c:	00008067          	ret

0000000080006b90 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006b90:	fe010113          	addi	sp,sp,-32
    80006b94:	00113c23          	sd	ra,24(sp)
    80006b98:	00813823          	sd	s0,16(sp)
    80006b9c:	00913423          	sd	s1,8(sp)
    80006ba0:	01213023          	sd	s2,0(sp)
    80006ba4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006ba8:	00000493          	li	s1,0
    80006bac:	0400006f          	j	80006bec <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006bb0:	00003517          	auipc	a0,0x3
    80006bb4:	69850513          	addi	a0,a0,1688 # 8000a248 <CONSOLE_STATUS+0x238>
    80006bb8:	fffff097          	auipc	ra,0xfffff
    80006bbc:	4d4080e7          	jalr	1236(ra) # 8000608c <_Z11printStringPKc>
    80006bc0:	00000613          	li	a2,0
    80006bc4:	00a00593          	li	a1,10
    80006bc8:	00048513          	mv	a0,s1
    80006bcc:	fffff097          	auipc	ra,0xfffff
    80006bd0:	670080e7          	jalr	1648(ra) # 8000623c <_Z8printIntiii>
    80006bd4:	00004517          	auipc	a0,0x4
    80006bd8:	8a450513          	addi	a0,a0,-1884 # 8000a478 <CONSOLE_STATUS+0x468>
    80006bdc:	fffff097          	auipc	ra,0xfffff
    80006be0:	4b0080e7          	jalr	1200(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006be4:	0014849b          	addiw	s1,s1,1
    80006be8:	0ff4f493          	andi	s1,s1,255
    80006bec:	00200793          	li	a5,2
    80006bf0:	fc97f0e3          	bgeu	a5,s1,80006bb0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	65c50513          	addi	a0,a0,1628 # 8000a250 <CONSOLE_STATUS+0x240>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	490080e7          	jalr	1168(ra) # 8000608c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006c04:	00700313          	li	t1,7
    thread_dispatch();
    80006c08:	ffffa097          	auipc	ra,0xffffa
    80006c0c:	7c4080e7          	jalr	1988(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006c10:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006c14:	00003517          	auipc	a0,0x3
    80006c18:	64c50513          	addi	a0,a0,1612 # 8000a260 <CONSOLE_STATUS+0x250>
    80006c1c:	fffff097          	auipc	ra,0xfffff
    80006c20:	470080e7          	jalr	1136(ra) # 8000608c <_Z11printStringPKc>
    80006c24:	00000613          	li	a2,0
    80006c28:	00a00593          	li	a1,10
    80006c2c:	0009051b          	sext.w	a0,s2
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	60c080e7          	jalr	1548(ra) # 8000623c <_Z8printIntiii>
    80006c38:	00004517          	auipc	a0,0x4
    80006c3c:	84050513          	addi	a0,a0,-1984 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c40:	fffff097          	auipc	ra,0xfffff
    80006c44:	44c080e7          	jalr	1100(ra) # 8000608c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006c48:	00c00513          	li	a0,12
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	d88080e7          	jalr	-632(ra) # 800069d4 <_ZL9fibonaccim>
    80006c54:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006c58:	00003517          	auipc	a0,0x3
    80006c5c:	61050513          	addi	a0,a0,1552 # 8000a268 <CONSOLE_STATUS+0x258>
    80006c60:	fffff097          	auipc	ra,0xfffff
    80006c64:	42c080e7          	jalr	1068(ra) # 8000608c <_Z11printStringPKc>
    80006c68:	00000613          	li	a2,0
    80006c6c:	00a00593          	li	a1,10
    80006c70:	0009051b          	sext.w	a0,s2
    80006c74:	fffff097          	auipc	ra,0xfffff
    80006c78:	5c8080e7          	jalr	1480(ra) # 8000623c <_Z8printIntiii>
    80006c7c:	00003517          	auipc	a0,0x3
    80006c80:	7fc50513          	addi	a0,a0,2044 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c84:	fffff097          	auipc	ra,0xfffff
    80006c88:	408080e7          	jalr	1032(ra) # 8000608c <_Z11printStringPKc>
    80006c8c:	0400006f          	j	80006ccc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006c90:	00003517          	auipc	a0,0x3
    80006c94:	5b850513          	addi	a0,a0,1464 # 8000a248 <CONSOLE_STATUS+0x238>
    80006c98:	fffff097          	auipc	ra,0xfffff
    80006c9c:	3f4080e7          	jalr	1012(ra) # 8000608c <_Z11printStringPKc>
    80006ca0:	00000613          	li	a2,0
    80006ca4:	00a00593          	li	a1,10
    80006ca8:	00048513          	mv	a0,s1
    80006cac:	fffff097          	auipc	ra,0xfffff
    80006cb0:	590080e7          	jalr	1424(ra) # 8000623c <_Z8printIntiii>
    80006cb4:	00003517          	auipc	a0,0x3
    80006cb8:	7c450513          	addi	a0,a0,1988 # 8000a478 <CONSOLE_STATUS+0x468>
    80006cbc:	fffff097          	auipc	ra,0xfffff
    80006cc0:	3d0080e7          	jalr	976(ra) # 8000608c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006cc4:	0014849b          	addiw	s1,s1,1
    80006cc8:	0ff4f493          	andi	s1,s1,255
    80006ccc:	00500793          	li	a5,5
    80006cd0:	fc97f0e3          	bgeu	a5,s1,80006c90 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006cd4:	00003517          	auipc	a0,0x3
    80006cd8:	54c50513          	addi	a0,a0,1356 # 8000a220 <CONSOLE_STATUS+0x210>
    80006cdc:	fffff097          	auipc	ra,0xfffff
    80006ce0:	3b0080e7          	jalr	944(ra) # 8000608c <_Z11printStringPKc>
    finishedC = true;
    80006ce4:	00100793          	li	a5,1
    80006ce8:	00006717          	auipc	a4,0x6
    80006cec:	26f701a3          	sb	a5,611(a4) # 8000cf4b <_ZL9finishedC>
    thread_dispatch();
    80006cf0:	ffffa097          	auipc	ra,0xffffa
    80006cf4:	6dc080e7          	jalr	1756(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006cf8:	01813083          	ld	ra,24(sp)
    80006cfc:	01013403          	ld	s0,16(sp)
    80006d00:	00813483          	ld	s1,8(sp)
    80006d04:	00013903          	ld	s2,0(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret

0000000080006d10 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006d10:	fe010113          	addi	sp,sp,-32
    80006d14:	00113c23          	sd	ra,24(sp)
    80006d18:	00813823          	sd	s0,16(sp)
    80006d1c:	00913423          	sd	s1,8(sp)
    80006d20:	01213023          	sd	s2,0(sp)
    80006d24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006d28:	00000913          	li	s2,0
    80006d2c:	0400006f          	j	80006d6c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006d30:	ffffa097          	auipc	ra,0xffffa
    80006d34:	69c080e7          	jalr	1692(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d38:	00148493          	addi	s1,s1,1
    80006d3c:	000027b7          	lui	a5,0x2
    80006d40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d44:	0097ee63          	bltu	a5,s1,80006d60 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d48:	00000713          	li	a4,0
    80006d4c:	000077b7          	lui	a5,0x7
    80006d50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d54:	fce7eee3          	bltu	a5,a4,80006d30 <_ZL11workerBodyBPv+0x20>
    80006d58:	00170713          	addi	a4,a4,1
    80006d5c:	ff1ff06f          	j	80006d4c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006d60:	00a00793          	li	a5,10
    80006d64:	04f90663          	beq	s2,a5,80006db0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006d68:	00190913          	addi	s2,s2,1
    80006d6c:	00f00793          	li	a5,15
    80006d70:	0527e463          	bltu	a5,s2,80006db8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006d74:	00003517          	auipc	a0,0x3
    80006d78:	4bc50513          	addi	a0,a0,1212 # 8000a230 <CONSOLE_STATUS+0x220>
    80006d7c:	fffff097          	auipc	ra,0xfffff
    80006d80:	310080e7          	jalr	784(ra) # 8000608c <_Z11printStringPKc>
    80006d84:	00000613          	li	a2,0
    80006d88:	00a00593          	li	a1,10
    80006d8c:	0009051b          	sext.w	a0,s2
    80006d90:	fffff097          	auipc	ra,0xfffff
    80006d94:	4ac080e7          	jalr	1196(ra) # 8000623c <_Z8printIntiii>
    80006d98:	00003517          	auipc	a0,0x3
    80006d9c:	6e050513          	addi	a0,a0,1760 # 8000a478 <CONSOLE_STATUS+0x468>
    80006da0:	fffff097          	auipc	ra,0xfffff
    80006da4:	2ec080e7          	jalr	748(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006da8:	00000493          	li	s1,0
    80006dac:	f91ff06f          	j	80006d3c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006db0:	14102ff3          	csrr	t6,sepc
    80006db4:	fb5ff06f          	j	80006d68 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006db8:	00003517          	auipc	a0,0x3
    80006dbc:	48050513          	addi	a0,a0,1152 # 8000a238 <CONSOLE_STATUS+0x228>
    80006dc0:	fffff097          	auipc	ra,0xfffff
    80006dc4:	2cc080e7          	jalr	716(ra) # 8000608c <_Z11printStringPKc>
    finishedB = true;
    80006dc8:	00100793          	li	a5,1
    80006dcc:	00006717          	auipc	a4,0x6
    80006dd0:	18f70023          	sb	a5,384(a4) # 8000cf4c <_ZL9finishedB>
    thread_dispatch();
    80006dd4:	ffffa097          	auipc	ra,0xffffa
    80006dd8:	5f8080e7          	jalr	1528(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006ddc:	01813083          	ld	ra,24(sp)
    80006de0:	01013403          	ld	s0,16(sp)
    80006de4:	00813483          	ld	s1,8(sp)
    80006de8:	00013903          	ld	s2,0(sp)
    80006dec:	02010113          	addi	sp,sp,32
    80006df0:	00008067          	ret

0000000080006df4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006df4:	fe010113          	addi	sp,sp,-32
    80006df8:	00113c23          	sd	ra,24(sp)
    80006dfc:	00813823          	sd	s0,16(sp)
    80006e00:	00913423          	sd	s1,8(sp)
    80006e04:	01213023          	sd	s2,0(sp)
    80006e08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006e0c:	00000913          	li	s2,0
    80006e10:	0380006f          	j	80006e48 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006e14:	ffffa097          	auipc	ra,0xffffa
    80006e18:	5b8080e7          	jalr	1464(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006e1c:	00148493          	addi	s1,s1,1
    80006e20:	000027b7          	lui	a5,0x2
    80006e24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e28:	0097ee63          	bltu	a5,s1,80006e44 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e2c:	00000713          	li	a4,0
    80006e30:	000077b7          	lui	a5,0x7
    80006e34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e38:	fce7eee3          	bltu	a5,a4,80006e14 <_ZL11workerBodyAPv+0x20>
    80006e3c:	00170713          	addi	a4,a4,1
    80006e40:	ff1ff06f          	j	80006e30 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006e44:	00190913          	addi	s2,s2,1
    80006e48:	00900793          	li	a5,9
    80006e4c:	0527e063          	bltu	a5,s2,80006e8c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006e50:	00003517          	auipc	a0,0x3
    80006e54:	3c850513          	addi	a0,a0,968 # 8000a218 <CONSOLE_STATUS+0x208>
    80006e58:	fffff097          	auipc	ra,0xfffff
    80006e5c:	234080e7          	jalr	564(ra) # 8000608c <_Z11printStringPKc>
    80006e60:	00000613          	li	a2,0
    80006e64:	00a00593          	li	a1,10
    80006e68:	0009051b          	sext.w	a0,s2
    80006e6c:	fffff097          	auipc	ra,0xfffff
    80006e70:	3d0080e7          	jalr	976(ra) # 8000623c <_Z8printIntiii>
    80006e74:	00003517          	auipc	a0,0x3
    80006e78:	60450513          	addi	a0,a0,1540 # 8000a478 <CONSOLE_STATUS+0x468>
    80006e7c:	fffff097          	auipc	ra,0xfffff
    80006e80:	210080e7          	jalr	528(ra) # 8000608c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006e84:	00000493          	li	s1,0
    80006e88:	f99ff06f          	j	80006e20 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006e8c:	00003517          	auipc	a0,0x3
    80006e90:	39450513          	addi	a0,a0,916 # 8000a220 <CONSOLE_STATUS+0x210>
    80006e94:	fffff097          	auipc	ra,0xfffff
    80006e98:	1f8080e7          	jalr	504(ra) # 8000608c <_Z11printStringPKc>
    finishedA = true;
    80006e9c:	00100793          	li	a5,1
    80006ea0:	00006717          	auipc	a4,0x6
    80006ea4:	0af706a3          	sb	a5,173(a4) # 8000cf4d <_ZL9finishedA>
}
    80006ea8:	01813083          	ld	ra,24(sp)
    80006eac:	01013403          	ld	s0,16(sp)
    80006eb0:	00813483          	ld	s1,8(sp)
    80006eb4:	00013903          	ld	s2,0(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret

0000000080006ec0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006ec0:	fd010113          	addi	sp,sp,-48
    80006ec4:	02113423          	sd	ra,40(sp)
    80006ec8:	02813023          	sd	s0,32(sp)
    80006ecc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ed0:	00000613          	li	a2,0
    80006ed4:	00000597          	auipc	a1,0x0
    80006ed8:	f2058593          	addi	a1,a1,-224 # 80006df4 <_ZL11workerBodyAPv>
    80006edc:	fd040513          	addi	a0,s0,-48
    80006ee0:	ffffa097          	auipc	ra,0xffffa
    80006ee4:	418080e7          	jalr	1048(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006ee8:	00003517          	auipc	a0,0x3
    80006eec:	3c850513          	addi	a0,a0,968 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006ef0:	fffff097          	auipc	ra,0xfffff
    80006ef4:	19c080e7          	jalr	412(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ef8:	00000613          	li	a2,0
    80006efc:	00000597          	auipc	a1,0x0
    80006f00:	e1458593          	addi	a1,a1,-492 # 80006d10 <_ZL11workerBodyBPv>
    80006f04:	fd840513          	addi	a0,s0,-40
    80006f08:	ffffa097          	auipc	ra,0xffffa
    80006f0c:	3f0080e7          	jalr	1008(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006f10:	00003517          	auipc	a0,0x3
    80006f14:	3b850513          	addi	a0,a0,952 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	174080e7          	jalr	372(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006f20:	00000613          	li	a2,0
    80006f24:	00000597          	auipc	a1,0x0
    80006f28:	c6c58593          	addi	a1,a1,-916 # 80006b90 <_ZL11workerBodyCPv>
    80006f2c:	fe040513          	addi	a0,s0,-32
    80006f30:	ffffa097          	auipc	ra,0xffffa
    80006f34:	3c8080e7          	jalr	968(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006f38:	00003517          	auipc	a0,0x3
    80006f3c:	3a850513          	addi	a0,a0,936 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006f40:	fffff097          	auipc	ra,0xfffff
    80006f44:	14c080e7          	jalr	332(ra) # 8000608c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006f48:	00000613          	li	a2,0
    80006f4c:	00000597          	auipc	a1,0x0
    80006f50:	afc58593          	addi	a1,a1,-1284 # 80006a48 <_ZL11workerBodyDPv>
    80006f54:	fe840513          	addi	a0,s0,-24
    80006f58:	ffffa097          	auipc	ra,0xffffa
    80006f5c:	3a0080e7          	jalr	928(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006f60:	00003517          	auipc	a0,0x3
    80006f64:	39850513          	addi	a0,a0,920 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006f68:	fffff097          	auipc	ra,0xfffff
    80006f6c:	124080e7          	jalr	292(ra) # 8000608c <_Z11printStringPKc>
    80006f70:	00c0006f          	j	80006f7c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006f74:	ffffa097          	auipc	ra,0xffffa
    80006f78:	458080e7          	jalr	1112(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006f7c:	00006797          	auipc	a5,0x6
    80006f80:	fd17c783          	lbu	a5,-47(a5) # 8000cf4d <_ZL9finishedA>
    80006f84:	fe0788e3          	beqz	a5,80006f74 <_Z16System_Mode_testv+0xb4>
    80006f88:	00006797          	auipc	a5,0x6
    80006f8c:	fc47c783          	lbu	a5,-60(a5) # 8000cf4c <_ZL9finishedB>
    80006f90:	fe0782e3          	beqz	a5,80006f74 <_Z16System_Mode_testv+0xb4>
    80006f94:	00006797          	auipc	a5,0x6
    80006f98:	fb77c783          	lbu	a5,-73(a5) # 8000cf4b <_ZL9finishedC>
    80006f9c:	fc078ce3          	beqz	a5,80006f74 <_Z16System_Mode_testv+0xb4>
    80006fa0:	00006797          	auipc	a5,0x6
    80006fa4:	faa7c783          	lbu	a5,-86(a5) # 8000cf4a <_ZL9finishedD>
    80006fa8:	fc0786e3          	beqz	a5,80006f74 <_Z16System_Mode_testv+0xb4>
    }

}
    80006fac:	02813083          	ld	ra,40(sp)
    80006fb0:	02013403          	ld	s0,32(sp)
    80006fb4:	03010113          	addi	sp,sp,48
    80006fb8:	00008067          	ret

0000000080006fbc <start>:
    80006fbc:	ff010113          	addi	sp,sp,-16
    80006fc0:	00813423          	sd	s0,8(sp)
    80006fc4:	01010413          	addi	s0,sp,16
    80006fc8:	300027f3          	csrr	a5,mstatus
    80006fcc:	ffffe737          	lui	a4,0xffffe
    80006fd0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff064f>
    80006fd4:	00e7f7b3          	and	a5,a5,a4
    80006fd8:	00001737          	lui	a4,0x1
    80006fdc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006fe0:	00e7e7b3          	or	a5,a5,a4
    80006fe4:	30079073          	csrw	mstatus,a5
    80006fe8:	00000797          	auipc	a5,0x0
    80006fec:	16078793          	addi	a5,a5,352 # 80007148 <system_main>
    80006ff0:	34179073          	csrw	mepc,a5
    80006ff4:	00000793          	li	a5,0
    80006ff8:	18079073          	csrw	satp,a5
    80006ffc:	000107b7          	lui	a5,0x10
    80007000:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007004:	30279073          	csrw	medeleg,a5
    80007008:	30379073          	csrw	mideleg,a5
    8000700c:	104027f3          	csrr	a5,sie
    80007010:	2227e793          	ori	a5,a5,546
    80007014:	10479073          	csrw	sie,a5
    80007018:	fff00793          	li	a5,-1
    8000701c:	00a7d793          	srli	a5,a5,0xa
    80007020:	3b079073          	csrw	pmpaddr0,a5
    80007024:	00f00793          	li	a5,15
    80007028:	3a079073          	csrw	pmpcfg0,a5
    8000702c:	f14027f3          	csrr	a5,mhartid
    80007030:	0200c737          	lui	a4,0x200c
    80007034:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007038:	0007869b          	sext.w	a3,a5
    8000703c:	00269713          	slli	a4,a3,0x2
    80007040:	000f4637          	lui	a2,0xf4
    80007044:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007048:	00d70733          	add	a4,a4,a3
    8000704c:	0037979b          	slliw	a5,a5,0x3
    80007050:	020046b7          	lui	a3,0x2004
    80007054:	00d787b3          	add	a5,a5,a3
    80007058:	00c585b3          	add	a1,a1,a2
    8000705c:	00371693          	slli	a3,a4,0x3
    80007060:	00006717          	auipc	a4,0x6
    80007064:	ef070713          	addi	a4,a4,-272 # 8000cf50 <timer_scratch>
    80007068:	00b7b023          	sd	a1,0(a5)
    8000706c:	00d70733          	add	a4,a4,a3
    80007070:	00f73c23          	sd	a5,24(a4)
    80007074:	02c73023          	sd	a2,32(a4)
    80007078:	34071073          	csrw	mscratch,a4
    8000707c:	00000797          	auipc	a5,0x0
    80007080:	6e478793          	addi	a5,a5,1764 # 80007760 <timervec>
    80007084:	30579073          	csrw	mtvec,a5
    80007088:	300027f3          	csrr	a5,mstatus
    8000708c:	0087e793          	ori	a5,a5,8
    80007090:	30079073          	csrw	mstatus,a5
    80007094:	304027f3          	csrr	a5,mie
    80007098:	0807e793          	ori	a5,a5,128
    8000709c:	30479073          	csrw	mie,a5
    800070a0:	f14027f3          	csrr	a5,mhartid
    800070a4:	0007879b          	sext.w	a5,a5
    800070a8:	00078213          	mv	tp,a5
    800070ac:	30200073          	mret
    800070b0:	00813403          	ld	s0,8(sp)
    800070b4:	01010113          	addi	sp,sp,16
    800070b8:	00008067          	ret

00000000800070bc <timerinit>:
    800070bc:	ff010113          	addi	sp,sp,-16
    800070c0:	00813423          	sd	s0,8(sp)
    800070c4:	01010413          	addi	s0,sp,16
    800070c8:	f14027f3          	csrr	a5,mhartid
    800070cc:	0200c737          	lui	a4,0x200c
    800070d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070d4:	0007869b          	sext.w	a3,a5
    800070d8:	00269713          	slli	a4,a3,0x2
    800070dc:	000f4637          	lui	a2,0xf4
    800070e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070e4:	00d70733          	add	a4,a4,a3
    800070e8:	0037979b          	slliw	a5,a5,0x3
    800070ec:	020046b7          	lui	a3,0x2004
    800070f0:	00d787b3          	add	a5,a5,a3
    800070f4:	00c585b3          	add	a1,a1,a2
    800070f8:	00371693          	slli	a3,a4,0x3
    800070fc:	00006717          	auipc	a4,0x6
    80007100:	e5470713          	addi	a4,a4,-428 # 8000cf50 <timer_scratch>
    80007104:	00b7b023          	sd	a1,0(a5)
    80007108:	00d70733          	add	a4,a4,a3
    8000710c:	00f73c23          	sd	a5,24(a4)
    80007110:	02c73023          	sd	a2,32(a4)
    80007114:	34071073          	csrw	mscratch,a4
    80007118:	00000797          	auipc	a5,0x0
    8000711c:	64878793          	addi	a5,a5,1608 # 80007760 <timervec>
    80007120:	30579073          	csrw	mtvec,a5
    80007124:	300027f3          	csrr	a5,mstatus
    80007128:	0087e793          	ori	a5,a5,8
    8000712c:	30079073          	csrw	mstatus,a5
    80007130:	304027f3          	csrr	a5,mie
    80007134:	0807e793          	ori	a5,a5,128
    80007138:	30479073          	csrw	mie,a5
    8000713c:	00813403          	ld	s0,8(sp)
    80007140:	01010113          	addi	sp,sp,16
    80007144:	00008067          	ret

0000000080007148 <system_main>:
    80007148:	fe010113          	addi	sp,sp,-32
    8000714c:	00813823          	sd	s0,16(sp)
    80007150:	00913423          	sd	s1,8(sp)
    80007154:	00113c23          	sd	ra,24(sp)
    80007158:	02010413          	addi	s0,sp,32
    8000715c:	00000097          	auipc	ra,0x0
    80007160:	0c4080e7          	jalr	196(ra) # 80007220 <cpuid>
    80007164:	00006497          	auipc	s1,0x6
    80007168:	d0c48493          	addi	s1,s1,-756 # 8000ce70 <started>
    8000716c:	02050263          	beqz	a0,80007190 <system_main+0x48>
    80007170:	0004a783          	lw	a5,0(s1)
    80007174:	0007879b          	sext.w	a5,a5
    80007178:	fe078ce3          	beqz	a5,80007170 <system_main+0x28>
    8000717c:	0ff0000f          	fence
    80007180:	00003517          	auipc	a0,0x3
    80007184:	47050513          	addi	a0,a0,1136 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    80007188:	00001097          	auipc	ra,0x1
    8000718c:	a74080e7          	jalr	-1420(ra) # 80007bfc <panic>
    80007190:	00001097          	auipc	ra,0x1
    80007194:	9c8080e7          	jalr	-1592(ra) # 80007b58 <consoleinit>
    80007198:	00001097          	auipc	ra,0x1
    8000719c:	154080e7          	jalr	340(ra) # 800082ec <printfinit>
    800071a0:	00003517          	auipc	a0,0x3
    800071a4:	2d850513          	addi	a0,a0,728 # 8000a478 <CONSOLE_STATUS+0x468>
    800071a8:	00001097          	auipc	ra,0x1
    800071ac:	ab0080e7          	jalr	-1360(ra) # 80007c58 <__printf>
    800071b0:	00003517          	auipc	a0,0x3
    800071b4:	41050513          	addi	a0,a0,1040 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    800071b8:	00001097          	auipc	ra,0x1
    800071bc:	aa0080e7          	jalr	-1376(ra) # 80007c58 <__printf>
    800071c0:	00003517          	auipc	a0,0x3
    800071c4:	2b850513          	addi	a0,a0,696 # 8000a478 <CONSOLE_STATUS+0x468>
    800071c8:	00001097          	auipc	ra,0x1
    800071cc:	a90080e7          	jalr	-1392(ra) # 80007c58 <__printf>
    800071d0:	00001097          	auipc	ra,0x1
    800071d4:	4a8080e7          	jalr	1192(ra) # 80008678 <kinit>
    800071d8:	00000097          	auipc	ra,0x0
    800071dc:	148080e7          	jalr	328(ra) # 80007320 <trapinit>
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	16c080e7          	jalr	364(ra) # 8000734c <trapinithart>
    800071e8:	00000097          	auipc	ra,0x0
    800071ec:	5b8080e7          	jalr	1464(ra) # 800077a0 <plicinit>
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	5d8080e7          	jalr	1496(ra) # 800077c8 <plicinithart>
    800071f8:	00000097          	auipc	ra,0x0
    800071fc:	078080e7          	jalr	120(ra) # 80007270 <userinit>
    80007200:	0ff0000f          	fence
    80007204:	00100793          	li	a5,1
    80007208:	00003517          	auipc	a0,0x3
    8000720c:	3d050513          	addi	a0,a0,976 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80007210:	00f4a023          	sw	a5,0(s1)
    80007214:	00001097          	auipc	ra,0x1
    80007218:	a44080e7          	jalr	-1468(ra) # 80007c58 <__printf>
    8000721c:	0000006f          	j	8000721c <system_main+0xd4>

0000000080007220 <cpuid>:
    80007220:	ff010113          	addi	sp,sp,-16
    80007224:	00813423          	sd	s0,8(sp)
    80007228:	01010413          	addi	s0,sp,16
    8000722c:	00020513          	mv	a0,tp
    80007230:	00813403          	ld	s0,8(sp)
    80007234:	0005051b          	sext.w	a0,a0
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00008067          	ret

0000000080007240 <mycpu>:
    80007240:	ff010113          	addi	sp,sp,-16
    80007244:	00813423          	sd	s0,8(sp)
    80007248:	01010413          	addi	s0,sp,16
    8000724c:	00020793          	mv	a5,tp
    80007250:	00813403          	ld	s0,8(sp)
    80007254:	0007879b          	sext.w	a5,a5
    80007258:	00779793          	slli	a5,a5,0x7
    8000725c:	00007517          	auipc	a0,0x7
    80007260:	d2450513          	addi	a0,a0,-732 # 8000df80 <cpus>
    80007264:	00f50533          	add	a0,a0,a5
    80007268:	01010113          	addi	sp,sp,16
    8000726c:	00008067          	ret

0000000080007270 <userinit>:
    80007270:	ff010113          	addi	sp,sp,-16
    80007274:	00813423          	sd	s0,8(sp)
    80007278:	01010413          	addi	s0,sp,16
    8000727c:	00813403          	ld	s0,8(sp)
    80007280:	01010113          	addi	sp,sp,16
    80007284:	ffffb317          	auipc	t1,0xffffb
    80007288:	a1030067          	jr	-1520(t1) # 80001c94 <main>

000000008000728c <either_copyout>:
    8000728c:	ff010113          	addi	sp,sp,-16
    80007290:	00813023          	sd	s0,0(sp)
    80007294:	00113423          	sd	ra,8(sp)
    80007298:	01010413          	addi	s0,sp,16
    8000729c:	02051663          	bnez	a0,800072c8 <either_copyout+0x3c>
    800072a0:	00058513          	mv	a0,a1
    800072a4:	00060593          	mv	a1,a2
    800072a8:	0006861b          	sext.w	a2,a3
    800072ac:	00002097          	auipc	ra,0x2
    800072b0:	c58080e7          	jalr	-936(ra) # 80008f04 <__memmove>
    800072b4:	00813083          	ld	ra,8(sp)
    800072b8:	00013403          	ld	s0,0(sp)
    800072bc:	00000513          	li	a0,0
    800072c0:	01010113          	addi	sp,sp,16
    800072c4:	00008067          	ret
    800072c8:	00003517          	auipc	a0,0x3
    800072cc:	35050513          	addi	a0,a0,848 # 8000a618 <CONSOLE_STATUS+0x608>
    800072d0:	00001097          	auipc	ra,0x1
    800072d4:	92c080e7          	jalr	-1748(ra) # 80007bfc <panic>

00000000800072d8 <either_copyin>:
    800072d8:	ff010113          	addi	sp,sp,-16
    800072dc:	00813023          	sd	s0,0(sp)
    800072e0:	00113423          	sd	ra,8(sp)
    800072e4:	01010413          	addi	s0,sp,16
    800072e8:	02059463          	bnez	a1,80007310 <either_copyin+0x38>
    800072ec:	00060593          	mv	a1,a2
    800072f0:	0006861b          	sext.w	a2,a3
    800072f4:	00002097          	auipc	ra,0x2
    800072f8:	c10080e7          	jalr	-1008(ra) # 80008f04 <__memmove>
    800072fc:	00813083          	ld	ra,8(sp)
    80007300:	00013403          	ld	s0,0(sp)
    80007304:	00000513          	li	a0,0
    80007308:	01010113          	addi	sp,sp,16
    8000730c:	00008067          	ret
    80007310:	00003517          	auipc	a0,0x3
    80007314:	33050513          	addi	a0,a0,816 # 8000a640 <CONSOLE_STATUS+0x630>
    80007318:	00001097          	auipc	ra,0x1
    8000731c:	8e4080e7          	jalr	-1820(ra) # 80007bfc <panic>

0000000080007320 <trapinit>:
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813423          	sd	s0,8(sp)
    80007328:	01010413          	addi	s0,sp,16
    8000732c:	00813403          	ld	s0,8(sp)
    80007330:	00003597          	auipc	a1,0x3
    80007334:	33858593          	addi	a1,a1,824 # 8000a668 <CONSOLE_STATUS+0x658>
    80007338:	00007517          	auipc	a0,0x7
    8000733c:	cc850513          	addi	a0,a0,-824 # 8000e000 <tickslock>
    80007340:	01010113          	addi	sp,sp,16
    80007344:	00001317          	auipc	t1,0x1
    80007348:	5c430067          	jr	1476(t1) # 80008908 <initlock>

000000008000734c <trapinithart>:
    8000734c:	ff010113          	addi	sp,sp,-16
    80007350:	00813423          	sd	s0,8(sp)
    80007354:	01010413          	addi	s0,sp,16
    80007358:	00000797          	auipc	a5,0x0
    8000735c:	2f878793          	addi	a5,a5,760 # 80007650 <kernelvec>
    80007360:	10579073          	csrw	stvec,a5
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret

0000000080007370 <usertrap>:
    80007370:	ff010113          	addi	sp,sp,-16
    80007374:	00813423          	sd	s0,8(sp)
    80007378:	01010413          	addi	s0,sp,16
    8000737c:	00813403          	ld	s0,8(sp)
    80007380:	01010113          	addi	sp,sp,16
    80007384:	00008067          	ret

0000000080007388 <usertrapret>:
    80007388:	ff010113          	addi	sp,sp,-16
    8000738c:	00813423          	sd	s0,8(sp)
    80007390:	01010413          	addi	s0,sp,16
    80007394:	00813403          	ld	s0,8(sp)
    80007398:	01010113          	addi	sp,sp,16
    8000739c:	00008067          	ret

00000000800073a0 <kerneltrap>:
    800073a0:	fe010113          	addi	sp,sp,-32
    800073a4:	00813823          	sd	s0,16(sp)
    800073a8:	00113c23          	sd	ra,24(sp)
    800073ac:	00913423          	sd	s1,8(sp)
    800073b0:	02010413          	addi	s0,sp,32
    800073b4:	142025f3          	csrr	a1,scause
    800073b8:	100027f3          	csrr	a5,sstatus
    800073bc:	0027f793          	andi	a5,a5,2
    800073c0:	10079c63          	bnez	a5,800074d8 <kerneltrap+0x138>
    800073c4:	142027f3          	csrr	a5,scause
    800073c8:	0207ce63          	bltz	a5,80007404 <kerneltrap+0x64>
    800073cc:	00003517          	auipc	a0,0x3
    800073d0:	2e450513          	addi	a0,a0,740 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    800073d4:	00001097          	auipc	ra,0x1
    800073d8:	884080e7          	jalr	-1916(ra) # 80007c58 <__printf>
    800073dc:	141025f3          	csrr	a1,sepc
    800073e0:	14302673          	csrr	a2,stval
    800073e4:	00003517          	auipc	a0,0x3
    800073e8:	2dc50513          	addi	a0,a0,732 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    800073ec:	00001097          	auipc	ra,0x1
    800073f0:	86c080e7          	jalr	-1940(ra) # 80007c58 <__printf>
    800073f4:	00003517          	auipc	a0,0x3
    800073f8:	2e450513          	addi	a0,a0,740 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800073fc:	00001097          	auipc	ra,0x1
    80007400:	800080e7          	jalr	-2048(ra) # 80007bfc <panic>
    80007404:	0ff7f713          	andi	a4,a5,255
    80007408:	00900693          	li	a3,9
    8000740c:	04d70063          	beq	a4,a3,8000744c <kerneltrap+0xac>
    80007410:	fff00713          	li	a4,-1
    80007414:	03f71713          	slli	a4,a4,0x3f
    80007418:	00170713          	addi	a4,a4,1
    8000741c:	fae798e3          	bne	a5,a4,800073cc <kerneltrap+0x2c>
    80007420:	00000097          	auipc	ra,0x0
    80007424:	e00080e7          	jalr	-512(ra) # 80007220 <cpuid>
    80007428:	06050663          	beqz	a0,80007494 <kerneltrap+0xf4>
    8000742c:	144027f3          	csrr	a5,sip
    80007430:	ffd7f793          	andi	a5,a5,-3
    80007434:	14479073          	csrw	sip,a5
    80007438:	01813083          	ld	ra,24(sp)
    8000743c:	01013403          	ld	s0,16(sp)
    80007440:	00813483          	ld	s1,8(sp)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00008067          	ret
    8000744c:	00000097          	auipc	ra,0x0
    80007450:	3c8080e7          	jalr	968(ra) # 80007814 <plic_claim>
    80007454:	00a00793          	li	a5,10
    80007458:	00050493          	mv	s1,a0
    8000745c:	06f50863          	beq	a0,a5,800074cc <kerneltrap+0x12c>
    80007460:	fc050ce3          	beqz	a0,80007438 <kerneltrap+0x98>
    80007464:	00050593          	mv	a1,a0
    80007468:	00003517          	auipc	a0,0x3
    8000746c:	22850513          	addi	a0,a0,552 # 8000a690 <CONSOLE_STATUS+0x680>
    80007470:	00000097          	auipc	ra,0x0
    80007474:	7e8080e7          	jalr	2024(ra) # 80007c58 <__printf>
    80007478:	01013403          	ld	s0,16(sp)
    8000747c:	01813083          	ld	ra,24(sp)
    80007480:	00048513          	mv	a0,s1
    80007484:	00813483          	ld	s1,8(sp)
    80007488:	02010113          	addi	sp,sp,32
    8000748c:	00000317          	auipc	t1,0x0
    80007490:	3c030067          	jr	960(t1) # 8000784c <plic_complete>
    80007494:	00007517          	auipc	a0,0x7
    80007498:	b6c50513          	addi	a0,a0,-1172 # 8000e000 <tickslock>
    8000749c:	00001097          	auipc	ra,0x1
    800074a0:	490080e7          	jalr	1168(ra) # 8000892c <acquire>
    800074a4:	00006717          	auipc	a4,0x6
    800074a8:	9d070713          	addi	a4,a4,-1584 # 8000ce74 <ticks>
    800074ac:	00072783          	lw	a5,0(a4)
    800074b0:	00007517          	auipc	a0,0x7
    800074b4:	b5050513          	addi	a0,a0,-1200 # 8000e000 <tickslock>
    800074b8:	0017879b          	addiw	a5,a5,1
    800074bc:	00f72023          	sw	a5,0(a4)
    800074c0:	00001097          	auipc	ra,0x1
    800074c4:	538080e7          	jalr	1336(ra) # 800089f8 <release>
    800074c8:	f65ff06f          	j	8000742c <kerneltrap+0x8c>
    800074cc:	00001097          	auipc	ra,0x1
    800074d0:	094080e7          	jalr	148(ra) # 80008560 <uartintr>
    800074d4:	fa5ff06f          	j	80007478 <kerneltrap+0xd8>
    800074d8:	00003517          	auipc	a0,0x3
    800074dc:	19850513          	addi	a0,a0,408 # 8000a670 <CONSOLE_STATUS+0x660>
    800074e0:	00000097          	auipc	ra,0x0
    800074e4:	71c080e7          	jalr	1820(ra) # 80007bfc <panic>

00000000800074e8 <clockintr>:
    800074e8:	fe010113          	addi	sp,sp,-32
    800074ec:	00813823          	sd	s0,16(sp)
    800074f0:	00913423          	sd	s1,8(sp)
    800074f4:	00113c23          	sd	ra,24(sp)
    800074f8:	02010413          	addi	s0,sp,32
    800074fc:	00007497          	auipc	s1,0x7
    80007500:	b0448493          	addi	s1,s1,-1276 # 8000e000 <tickslock>
    80007504:	00048513          	mv	a0,s1
    80007508:	00001097          	auipc	ra,0x1
    8000750c:	424080e7          	jalr	1060(ra) # 8000892c <acquire>
    80007510:	00006717          	auipc	a4,0x6
    80007514:	96470713          	addi	a4,a4,-1692 # 8000ce74 <ticks>
    80007518:	00072783          	lw	a5,0(a4)
    8000751c:	01013403          	ld	s0,16(sp)
    80007520:	01813083          	ld	ra,24(sp)
    80007524:	00048513          	mv	a0,s1
    80007528:	0017879b          	addiw	a5,a5,1
    8000752c:	00813483          	ld	s1,8(sp)
    80007530:	00f72023          	sw	a5,0(a4)
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00001317          	auipc	t1,0x1
    8000753c:	4c030067          	jr	1216(t1) # 800089f8 <release>

0000000080007540 <devintr>:
    80007540:	142027f3          	csrr	a5,scause
    80007544:	00000513          	li	a0,0
    80007548:	0007c463          	bltz	a5,80007550 <devintr+0x10>
    8000754c:	00008067          	ret
    80007550:	fe010113          	addi	sp,sp,-32
    80007554:	00813823          	sd	s0,16(sp)
    80007558:	00113c23          	sd	ra,24(sp)
    8000755c:	00913423          	sd	s1,8(sp)
    80007560:	02010413          	addi	s0,sp,32
    80007564:	0ff7f713          	andi	a4,a5,255
    80007568:	00900693          	li	a3,9
    8000756c:	04d70c63          	beq	a4,a3,800075c4 <devintr+0x84>
    80007570:	fff00713          	li	a4,-1
    80007574:	03f71713          	slli	a4,a4,0x3f
    80007578:	00170713          	addi	a4,a4,1
    8000757c:	00e78c63          	beq	a5,a4,80007594 <devintr+0x54>
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	01013403          	ld	s0,16(sp)
    80007588:	00813483          	ld	s1,8(sp)
    8000758c:	02010113          	addi	sp,sp,32
    80007590:	00008067          	ret
    80007594:	00000097          	auipc	ra,0x0
    80007598:	c8c080e7          	jalr	-884(ra) # 80007220 <cpuid>
    8000759c:	06050663          	beqz	a0,80007608 <devintr+0xc8>
    800075a0:	144027f3          	csrr	a5,sip
    800075a4:	ffd7f793          	andi	a5,a5,-3
    800075a8:	14479073          	csrw	sip,a5
    800075ac:	01813083          	ld	ra,24(sp)
    800075b0:	01013403          	ld	s0,16(sp)
    800075b4:	00813483          	ld	s1,8(sp)
    800075b8:	00200513          	li	a0,2
    800075bc:	02010113          	addi	sp,sp,32
    800075c0:	00008067          	ret
    800075c4:	00000097          	auipc	ra,0x0
    800075c8:	250080e7          	jalr	592(ra) # 80007814 <plic_claim>
    800075cc:	00a00793          	li	a5,10
    800075d0:	00050493          	mv	s1,a0
    800075d4:	06f50663          	beq	a0,a5,80007640 <devintr+0x100>
    800075d8:	00100513          	li	a0,1
    800075dc:	fa0482e3          	beqz	s1,80007580 <devintr+0x40>
    800075e0:	00048593          	mv	a1,s1
    800075e4:	00003517          	auipc	a0,0x3
    800075e8:	0ac50513          	addi	a0,a0,172 # 8000a690 <CONSOLE_STATUS+0x680>
    800075ec:	00000097          	auipc	ra,0x0
    800075f0:	66c080e7          	jalr	1644(ra) # 80007c58 <__printf>
    800075f4:	00048513          	mv	a0,s1
    800075f8:	00000097          	auipc	ra,0x0
    800075fc:	254080e7          	jalr	596(ra) # 8000784c <plic_complete>
    80007600:	00100513          	li	a0,1
    80007604:	f7dff06f          	j	80007580 <devintr+0x40>
    80007608:	00007517          	auipc	a0,0x7
    8000760c:	9f850513          	addi	a0,a0,-1544 # 8000e000 <tickslock>
    80007610:	00001097          	auipc	ra,0x1
    80007614:	31c080e7          	jalr	796(ra) # 8000892c <acquire>
    80007618:	00006717          	auipc	a4,0x6
    8000761c:	85c70713          	addi	a4,a4,-1956 # 8000ce74 <ticks>
    80007620:	00072783          	lw	a5,0(a4)
    80007624:	00007517          	auipc	a0,0x7
    80007628:	9dc50513          	addi	a0,a0,-1572 # 8000e000 <tickslock>
    8000762c:	0017879b          	addiw	a5,a5,1
    80007630:	00f72023          	sw	a5,0(a4)
    80007634:	00001097          	auipc	ra,0x1
    80007638:	3c4080e7          	jalr	964(ra) # 800089f8 <release>
    8000763c:	f65ff06f          	j	800075a0 <devintr+0x60>
    80007640:	00001097          	auipc	ra,0x1
    80007644:	f20080e7          	jalr	-224(ra) # 80008560 <uartintr>
    80007648:	fadff06f          	j	800075f4 <devintr+0xb4>
    8000764c:	0000                	unimp
	...

0000000080007650 <kernelvec>:
    80007650:	f0010113          	addi	sp,sp,-256
    80007654:	00113023          	sd	ra,0(sp)
    80007658:	00213423          	sd	sp,8(sp)
    8000765c:	00313823          	sd	gp,16(sp)
    80007660:	00413c23          	sd	tp,24(sp)
    80007664:	02513023          	sd	t0,32(sp)
    80007668:	02613423          	sd	t1,40(sp)
    8000766c:	02713823          	sd	t2,48(sp)
    80007670:	02813c23          	sd	s0,56(sp)
    80007674:	04913023          	sd	s1,64(sp)
    80007678:	04a13423          	sd	a0,72(sp)
    8000767c:	04b13823          	sd	a1,80(sp)
    80007680:	04c13c23          	sd	a2,88(sp)
    80007684:	06d13023          	sd	a3,96(sp)
    80007688:	06e13423          	sd	a4,104(sp)
    8000768c:	06f13823          	sd	a5,112(sp)
    80007690:	07013c23          	sd	a6,120(sp)
    80007694:	09113023          	sd	a7,128(sp)
    80007698:	09213423          	sd	s2,136(sp)
    8000769c:	09313823          	sd	s3,144(sp)
    800076a0:	09413c23          	sd	s4,152(sp)
    800076a4:	0b513023          	sd	s5,160(sp)
    800076a8:	0b613423          	sd	s6,168(sp)
    800076ac:	0b713823          	sd	s7,176(sp)
    800076b0:	0b813c23          	sd	s8,184(sp)
    800076b4:	0d913023          	sd	s9,192(sp)
    800076b8:	0da13423          	sd	s10,200(sp)
    800076bc:	0db13823          	sd	s11,208(sp)
    800076c0:	0dc13c23          	sd	t3,216(sp)
    800076c4:	0fd13023          	sd	t4,224(sp)
    800076c8:	0fe13423          	sd	t5,232(sp)
    800076cc:	0ff13823          	sd	t6,240(sp)
    800076d0:	cd1ff0ef          	jal	ra,800073a0 <kerneltrap>
    800076d4:	00013083          	ld	ra,0(sp)
    800076d8:	00813103          	ld	sp,8(sp)
    800076dc:	01013183          	ld	gp,16(sp)
    800076e0:	02013283          	ld	t0,32(sp)
    800076e4:	02813303          	ld	t1,40(sp)
    800076e8:	03013383          	ld	t2,48(sp)
    800076ec:	03813403          	ld	s0,56(sp)
    800076f0:	04013483          	ld	s1,64(sp)
    800076f4:	04813503          	ld	a0,72(sp)
    800076f8:	05013583          	ld	a1,80(sp)
    800076fc:	05813603          	ld	a2,88(sp)
    80007700:	06013683          	ld	a3,96(sp)
    80007704:	06813703          	ld	a4,104(sp)
    80007708:	07013783          	ld	a5,112(sp)
    8000770c:	07813803          	ld	a6,120(sp)
    80007710:	08013883          	ld	a7,128(sp)
    80007714:	08813903          	ld	s2,136(sp)
    80007718:	09013983          	ld	s3,144(sp)
    8000771c:	09813a03          	ld	s4,152(sp)
    80007720:	0a013a83          	ld	s5,160(sp)
    80007724:	0a813b03          	ld	s6,168(sp)
    80007728:	0b013b83          	ld	s7,176(sp)
    8000772c:	0b813c03          	ld	s8,184(sp)
    80007730:	0c013c83          	ld	s9,192(sp)
    80007734:	0c813d03          	ld	s10,200(sp)
    80007738:	0d013d83          	ld	s11,208(sp)
    8000773c:	0d813e03          	ld	t3,216(sp)
    80007740:	0e013e83          	ld	t4,224(sp)
    80007744:	0e813f03          	ld	t5,232(sp)
    80007748:	0f013f83          	ld	t6,240(sp)
    8000774c:	10010113          	addi	sp,sp,256
    80007750:	10200073          	sret
    80007754:	00000013          	nop
    80007758:	00000013          	nop
    8000775c:	00000013          	nop

0000000080007760 <timervec>:
    80007760:	34051573          	csrrw	a0,mscratch,a0
    80007764:	00b53023          	sd	a1,0(a0)
    80007768:	00c53423          	sd	a2,8(a0)
    8000776c:	00d53823          	sd	a3,16(a0)
    80007770:	01853583          	ld	a1,24(a0)
    80007774:	02053603          	ld	a2,32(a0)
    80007778:	0005b683          	ld	a3,0(a1)
    8000777c:	00c686b3          	add	a3,a3,a2
    80007780:	00d5b023          	sd	a3,0(a1)
    80007784:	00200593          	li	a1,2
    80007788:	14459073          	csrw	sip,a1
    8000778c:	01053683          	ld	a3,16(a0)
    80007790:	00853603          	ld	a2,8(a0)
    80007794:	00053583          	ld	a1,0(a0)
    80007798:	34051573          	csrrw	a0,mscratch,a0
    8000779c:	30200073          	mret

00000000800077a0 <plicinit>:
    800077a0:	ff010113          	addi	sp,sp,-16
    800077a4:	00813423          	sd	s0,8(sp)
    800077a8:	01010413          	addi	s0,sp,16
    800077ac:	00813403          	ld	s0,8(sp)
    800077b0:	0c0007b7          	lui	a5,0xc000
    800077b4:	00100713          	li	a4,1
    800077b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800077bc:	00e7a223          	sw	a4,4(a5)
    800077c0:	01010113          	addi	sp,sp,16
    800077c4:	00008067          	ret

00000000800077c8 <plicinithart>:
    800077c8:	ff010113          	addi	sp,sp,-16
    800077cc:	00813023          	sd	s0,0(sp)
    800077d0:	00113423          	sd	ra,8(sp)
    800077d4:	01010413          	addi	s0,sp,16
    800077d8:	00000097          	auipc	ra,0x0
    800077dc:	a48080e7          	jalr	-1464(ra) # 80007220 <cpuid>
    800077e0:	0085171b          	slliw	a4,a0,0x8
    800077e4:	0c0027b7          	lui	a5,0xc002
    800077e8:	00e787b3          	add	a5,a5,a4
    800077ec:	40200713          	li	a4,1026
    800077f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800077f4:	00813083          	ld	ra,8(sp)
    800077f8:	00013403          	ld	s0,0(sp)
    800077fc:	00d5151b          	slliw	a0,a0,0xd
    80007800:	0c2017b7          	lui	a5,0xc201
    80007804:	00a78533          	add	a0,a5,a0
    80007808:	00052023          	sw	zero,0(a0)
    8000780c:	01010113          	addi	sp,sp,16
    80007810:	00008067          	ret

0000000080007814 <plic_claim>:
    80007814:	ff010113          	addi	sp,sp,-16
    80007818:	00813023          	sd	s0,0(sp)
    8000781c:	00113423          	sd	ra,8(sp)
    80007820:	01010413          	addi	s0,sp,16
    80007824:	00000097          	auipc	ra,0x0
    80007828:	9fc080e7          	jalr	-1540(ra) # 80007220 <cpuid>
    8000782c:	00813083          	ld	ra,8(sp)
    80007830:	00013403          	ld	s0,0(sp)
    80007834:	00d5151b          	slliw	a0,a0,0xd
    80007838:	0c2017b7          	lui	a5,0xc201
    8000783c:	00a78533          	add	a0,a5,a0
    80007840:	00452503          	lw	a0,4(a0)
    80007844:	01010113          	addi	sp,sp,16
    80007848:	00008067          	ret

000000008000784c <plic_complete>:
    8000784c:	fe010113          	addi	sp,sp,-32
    80007850:	00813823          	sd	s0,16(sp)
    80007854:	00913423          	sd	s1,8(sp)
    80007858:	00113c23          	sd	ra,24(sp)
    8000785c:	02010413          	addi	s0,sp,32
    80007860:	00050493          	mv	s1,a0
    80007864:	00000097          	auipc	ra,0x0
    80007868:	9bc080e7          	jalr	-1604(ra) # 80007220 <cpuid>
    8000786c:	01813083          	ld	ra,24(sp)
    80007870:	01013403          	ld	s0,16(sp)
    80007874:	00d5179b          	slliw	a5,a0,0xd
    80007878:	0c201737          	lui	a4,0xc201
    8000787c:	00f707b3          	add	a5,a4,a5
    80007880:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007884:	00813483          	ld	s1,8(sp)
    80007888:	02010113          	addi	sp,sp,32
    8000788c:	00008067          	ret

0000000080007890 <consolewrite>:
    80007890:	fb010113          	addi	sp,sp,-80
    80007894:	04813023          	sd	s0,64(sp)
    80007898:	04113423          	sd	ra,72(sp)
    8000789c:	02913c23          	sd	s1,56(sp)
    800078a0:	03213823          	sd	s2,48(sp)
    800078a4:	03313423          	sd	s3,40(sp)
    800078a8:	03413023          	sd	s4,32(sp)
    800078ac:	01513c23          	sd	s5,24(sp)
    800078b0:	05010413          	addi	s0,sp,80
    800078b4:	06c05c63          	blez	a2,8000792c <consolewrite+0x9c>
    800078b8:	00060993          	mv	s3,a2
    800078bc:	00050a13          	mv	s4,a0
    800078c0:	00058493          	mv	s1,a1
    800078c4:	00000913          	li	s2,0
    800078c8:	fff00a93          	li	s5,-1
    800078cc:	01c0006f          	j	800078e8 <consolewrite+0x58>
    800078d0:	fbf44503          	lbu	a0,-65(s0)
    800078d4:	0019091b          	addiw	s2,s2,1
    800078d8:	00148493          	addi	s1,s1,1
    800078dc:	00001097          	auipc	ra,0x1
    800078e0:	a9c080e7          	jalr	-1380(ra) # 80008378 <uartputc>
    800078e4:	03298063          	beq	s3,s2,80007904 <consolewrite+0x74>
    800078e8:	00048613          	mv	a2,s1
    800078ec:	00100693          	li	a3,1
    800078f0:	000a0593          	mv	a1,s4
    800078f4:	fbf40513          	addi	a0,s0,-65
    800078f8:	00000097          	auipc	ra,0x0
    800078fc:	9e0080e7          	jalr	-1568(ra) # 800072d8 <either_copyin>
    80007900:	fd5518e3          	bne	a0,s5,800078d0 <consolewrite+0x40>
    80007904:	04813083          	ld	ra,72(sp)
    80007908:	04013403          	ld	s0,64(sp)
    8000790c:	03813483          	ld	s1,56(sp)
    80007910:	02813983          	ld	s3,40(sp)
    80007914:	02013a03          	ld	s4,32(sp)
    80007918:	01813a83          	ld	s5,24(sp)
    8000791c:	00090513          	mv	a0,s2
    80007920:	03013903          	ld	s2,48(sp)
    80007924:	05010113          	addi	sp,sp,80
    80007928:	00008067          	ret
    8000792c:	00000913          	li	s2,0
    80007930:	fd5ff06f          	j	80007904 <consolewrite+0x74>

0000000080007934 <consoleread>:
    80007934:	f9010113          	addi	sp,sp,-112
    80007938:	06813023          	sd	s0,96(sp)
    8000793c:	04913c23          	sd	s1,88(sp)
    80007940:	05213823          	sd	s2,80(sp)
    80007944:	05313423          	sd	s3,72(sp)
    80007948:	05413023          	sd	s4,64(sp)
    8000794c:	03513c23          	sd	s5,56(sp)
    80007950:	03613823          	sd	s6,48(sp)
    80007954:	03713423          	sd	s7,40(sp)
    80007958:	03813023          	sd	s8,32(sp)
    8000795c:	06113423          	sd	ra,104(sp)
    80007960:	01913c23          	sd	s9,24(sp)
    80007964:	07010413          	addi	s0,sp,112
    80007968:	00060b93          	mv	s7,a2
    8000796c:	00050913          	mv	s2,a0
    80007970:	00058c13          	mv	s8,a1
    80007974:	00060b1b          	sext.w	s6,a2
    80007978:	00006497          	auipc	s1,0x6
    8000797c:	6b048493          	addi	s1,s1,1712 # 8000e028 <cons>
    80007980:	00400993          	li	s3,4
    80007984:	fff00a13          	li	s4,-1
    80007988:	00a00a93          	li	s5,10
    8000798c:	05705e63          	blez	s7,800079e8 <consoleread+0xb4>
    80007990:	09c4a703          	lw	a4,156(s1)
    80007994:	0984a783          	lw	a5,152(s1)
    80007998:	0007071b          	sext.w	a4,a4
    8000799c:	08e78463          	beq	a5,a4,80007a24 <consoleread+0xf0>
    800079a0:	07f7f713          	andi	a4,a5,127
    800079a4:	00e48733          	add	a4,s1,a4
    800079a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800079ac:	0017869b          	addiw	a3,a5,1
    800079b0:	08d4ac23          	sw	a3,152(s1)
    800079b4:	00070c9b          	sext.w	s9,a4
    800079b8:	0b370663          	beq	a4,s3,80007a64 <consoleread+0x130>
    800079bc:	00100693          	li	a3,1
    800079c0:	f9f40613          	addi	a2,s0,-97
    800079c4:	000c0593          	mv	a1,s8
    800079c8:	00090513          	mv	a0,s2
    800079cc:	f8e40fa3          	sb	a4,-97(s0)
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	8bc080e7          	jalr	-1860(ra) # 8000728c <either_copyout>
    800079d8:	01450863          	beq	a0,s4,800079e8 <consoleread+0xb4>
    800079dc:	001c0c13          	addi	s8,s8,1
    800079e0:	fffb8b9b          	addiw	s7,s7,-1
    800079e4:	fb5c94e3          	bne	s9,s5,8000798c <consoleread+0x58>
    800079e8:	000b851b          	sext.w	a0,s7
    800079ec:	06813083          	ld	ra,104(sp)
    800079f0:	06013403          	ld	s0,96(sp)
    800079f4:	05813483          	ld	s1,88(sp)
    800079f8:	05013903          	ld	s2,80(sp)
    800079fc:	04813983          	ld	s3,72(sp)
    80007a00:	04013a03          	ld	s4,64(sp)
    80007a04:	03813a83          	ld	s5,56(sp)
    80007a08:	02813b83          	ld	s7,40(sp)
    80007a0c:	02013c03          	ld	s8,32(sp)
    80007a10:	01813c83          	ld	s9,24(sp)
    80007a14:	40ab053b          	subw	a0,s6,a0
    80007a18:	03013b03          	ld	s6,48(sp)
    80007a1c:	07010113          	addi	sp,sp,112
    80007a20:	00008067          	ret
    80007a24:	00001097          	auipc	ra,0x1
    80007a28:	1d8080e7          	jalr	472(ra) # 80008bfc <push_on>
    80007a2c:	0984a703          	lw	a4,152(s1)
    80007a30:	09c4a783          	lw	a5,156(s1)
    80007a34:	0007879b          	sext.w	a5,a5
    80007a38:	fef70ce3          	beq	a4,a5,80007a30 <consoleread+0xfc>
    80007a3c:	00001097          	auipc	ra,0x1
    80007a40:	234080e7          	jalr	564(ra) # 80008c70 <pop_on>
    80007a44:	0984a783          	lw	a5,152(s1)
    80007a48:	07f7f713          	andi	a4,a5,127
    80007a4c:	00e48733          	add	a4,s1,a4
    80007a50:	01874703          	lbu	a4,24(a4)
    80007a54:	0017869b          	addiw	a3,a5,1
    80007a58:	08d4ac23          	sw	a3,152(s1)
    80007a5c:	00070c9b          	sext.w	s9,a4
    80007a60:	f5371ee3          	bne	a4,s3,800079bc <consoleread+0x88>
    80007a64:	000b851b          	sext.w	a0,s7
    80007a68:	f96bf2e3          	bgeu	s7,s6,800079ec <consoleread+0xb8>
    80007a6c:	08f4ac23          	sw	a5,152(s1)
    80007a70:	f7dff06f          	j	800079ec <consoleread+0xb8>

0000000080007a74 <consputc>:
    80007a74:	10000793          	li	a5,256
    80007a78:	00f50663          	beq	a0,a5,80007a84 <consputc+0x10>
    80007a7c:	00001317          	auipc	t1,0x1
    80007a80:	9f430067          	jr	-1548(t1) # 80008470 <uartputc_sync>
    80007a84:	ff010113          	addi	sp,sp,-16
    80007a88:	00113423          	sd	ra,8(sp)
    80007a8c:	00813023          	sd	s0,0(sp)
    80007a90:	01010413          	addi	s0,sp,16
    80007a94:	00800513          	li	a0,8
    80007a98:	00001097          	auipc	ra,0x1
    80007a9c:	9d8080e7          	jalr	-1576(ra) # 80008470 <uartputc_sync>
    80007aa0:	02000513          	li	a0,32
    80007aa4:	00001097          	auipc	ra,0x1
    80007aa8:	9cc080e7          	jalr	-1588(ra) # 80008470 <uartputc_sync>
    80007aac:	00013403          	ld	s0,0(sp)
    80007ab0:	00813083          	ld	ra,8(sp)
    80007ab4:	00800513          	li	a0,8
    80007ab8:	01010113          	addi	sp,sp,16
    80007abc:	00001317          	auipc	t1,0x1
    80007ac0:	9b430067          	jr	-1612(t1) # 80008470 <uartputc_sync>

0000000080007ac4 <consoleintr>:
    80007ac4:	fe010113          	addi	sp,sp,-32
    80007ac8:	00813823          	sd	s0,16(sp)
    80007acc:	00913423          	sd	s1,8(sp)
    80007ad0:	01213023          	sd	s2,0(sp)
    80007ad4:	00113c23          	sd	ra,24(sp)
    80007ad8:	02010413          	addi	s0,sp,32
    80007adc:	00006917          	auipc	s2,0x6
    80007ae0:	54c90913          	addi	s2,s2,1356 # 8000e028 <cons>
    80007ae4:	00050493          	mv	s1,a0
    80007ae8:	00090513          	mv	a0,s2
    80007aec:	00001097          	auipc	ra,0x1
    80007af0:	e40080e7          	jalr	-448(ra) # 8000892c <acquire>
    80007af4:	02048c63          	beqz	s1,80007b2c <consoleintr+0x68>
    80007af8:	0a092783          	lw	a5,160(s2)
    80007afc:	09892703          	lw	a4,152(s2)
    80007b00:	07f00693          	li	a3,127
    80007b04:	40e7873b          	subw	a4,a5,a4
    80007b08:	02e6e263          	bltu	a3,a4,80007b2c <consoleintr+0x68>
    80007b0c:	00d00713          	li	a4,13
    80007b10:	04e48063          	beq	s1,a4,80007b50 <consoleintr+0x8c>
    80007b14:	07f7f713          	andi	a4,a5,127
    80007b18:	00e90733          	add	a4,s2,a4
    80007b1c:	0017879b          	addiw	a5,a5,1
    80007b20:	0af92023          	sw	a5,160(s2)
    80007b24:	00970c23          	sb	s1,24(a4)
    80007b28:	08f92e23          	sw	a5,156(s2)
    80007b2c:	01013403          	ld	s0,16(sp)
    80007b30:	01813083          	ld	ra,24(sp)
    80007b34:	00813483          	ld	s1,8(sp)
    80007b38:	00013903          	ld	s2,0(sp)
    80007b3c:	00006517          	auipc	a0,0x6
    80007b40:	4ec50513          	addi	a0,a0,1260 # 8000e028 <cons>
    80007b44:	02010113          	addi	sp,sp,32
    80007b48:	00001317          	auipc	t1,0x1
    80007b4c:	eb030067          	jr	-336(t1) # 800089f8 <release>
    80007b50:	00a00493          	li	s1,10
    80007b54:	fc1ff06f          	j	80007b14 <consoleintr+0x50>

0000000080007b58 <consoleinit>:
    80007b58:	fe010113          	addi	sp,sp,-32
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00913423          	sd	s1,8(sp)
    80007b68:	02010413          	addi	s0,sp,32
    80007b6c:	00006497          	auipc	s1,0x6
    80007b70:	4bc48493          	addi	s1,s1,1212 # 8000e028 <cons>
    80007b74:	00048513          	mv	a0,s1
    80007b78:	00003597          	auipc	a1,0x3
    80007b7c:	b7058593          	addi	a1,a1,-1168 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007b80:	00001097          	auipc	ra,0x1
    80007b84:	d88080e7          	jalr	-632(ra) # 80008908 <initlock>
    80007b88:	00000097          	auipc	ra,0x0
    80007b8c:	7ac080e7          	jalr	1964(ra) # 80008334 <uartinit>
    80007b90:	01813083          	ld	ra,24(sp)
    80007b94:	01013403          	ld	s0,16(sp)
    80007b98:	00000797          	auipc	a5,0x0
    80007b9c:	d9c78793          	addi	a5,a5,-612 # 80007934 <consoleread>
    80007ba0:	0af4bc23          	sd	a5,184(s1)
    80007ba4:	00000797          	auipc	a5,0x0
    80007ba8:	cec78793          	addi	a5,a5,-788 # 80007890 <consolewrite>
    80007bac:	0cf4b023          	sd	a5,192(s1)
    80007bb0:	00813483          	ld	s1,8(sp)
    80007bb4:	02010113          	addi	sp,sp,32
    80007bb8:	00008067          	ret

0000000080007bbc <console_read>:
    80007bbc:	ff010113          	addi	sp,sp,-16
    80007bc0:	00813423          	sd	s0,8(sp)
    80007bc4:	01010413          	addi	s0,sp,16
    80007bc8:	00813403          	ld	s0,8(sp)
    80007bcc:	00006317          	auipc	t1,0x6
    80007bd0:	51433303          	ld	t1,1300(t1) # 8000e0e0 <devsw+0x10>
    80007bd4:	01010113          	addi	sp,sp,16
    80007bd8:	00030067          	jr	t1

0000000080007bdc <console_write>:
    80007bdc:	ff010113          	addi	sp,sp,-16
    80007be0:	00813423          	sd	s0,8(sp)
    80007be4:	01010413          	addi	s0,sp,16
    80007be8:	00813403          	ld	s0,8(sp)
    80007bec:	00006317          	auipc	t1,0x6
    80007bf0:	4fc33303          	ld	t1,1276(t1) # 8000e0e8 <devsw+0x18>
    80007bf4:	01010113          	addi	sp,sp,16
    80007bf8:	00030067          	jr	t1

0000000080007bfc <panic>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00113c23          	sd	ra,24(sp)
    80007c04:	00813823          	sd	s0,16(sp)
    80007c08:	00913423          	sd	s1,8(sp)
    80007c0c:	02010413          	addi	s0,sp,32
    80007c10:	00050493          	mv	s1,a0
    80007c14:	00003517          	auipc	a0,0x3
    80007c18:	adc50513          	addi	a0,a0,-1316 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007c1c:	00006797          	auipc	a5,0x6
    80007c20:	5607a623          	sw	zero,1388(a5) # 8000e188 <pr+0x18>
    80007c24:	00000097          	auipc	ra,0x0
    80007c28:	034080e7          	jalr	52(ra) # 80007c58 <__printf>
    80007c2c:	00048513          	mv	a0,s1
    80007c30:	00000097          	auipc	ra,0x0
    80007c34:	028080e7          	jalr	40(ra) # 80007c58 <__printf>
    80007c38:	00003517          	auipc	a0,0x3
    80007c3c:	84050513          	addi	a0,a0,-1984 # 8000a478 <CONSOLE_STATUS+0x468>
    80007c40:	00000097          	auipc	ra,0x0
    80007c44:	018080e7          	jalr	24(ra) # 80007c58 <__printf>
    80007c48:	00100793          	li	a5,1
    80007c4c:	00005717          	auipc	a4,0x5
    80007c50:	22f72623          	sw	a5,556(a4) # 8000ce78 <panicked>
    80007c54:	0000006f          	j	80007c54 <panic+0x58>

0000000080007c58 <__printf>:
    80007c58:	f3010113          	addi	sp,sp,-208
    80007c5c:	08813023          	sd	s0,128(sp)
    80007c60:	07313423          	sd	s3,104(sp)
    80007c64:	09010413          	addi	s0,sp,144
    80007c68:	05813023          	sd	s8,64(sp)
    80007c6c:	08113423          	sd	ra,136(sp)
    80007c70:	06913c23          	sd	s1,120(sp)
    80007c74:	07213823          	sd	s2,112(sp)
    80007c78:	07413023          	sd	s4,96(sp)
    80007c7c:	05513c23          	sd	s5,88(sp)
    80007c80:	05613823          	sd	s6,80(sp)
    80007c84:	05713423          	sd	s7,72(sp)
    80007c88:	03913c23          	sd	s9,56(sp)
    80007c8c:	03a13823          	sd	s10,48(sp)
    80007c90:	03b13423          	sd	s11,40(sp)
    80007c94:	00006317          	auipc	t1,0x6
    80007c98:	4dc30313          	addi	t1,t1,1244 # 8000e170 <pr>
    80007c9c:	01832c03          	lw	s8,24(t1)
    80007ca0:	00b43423          	sd	a1,8(s0)
    80007ca4:	00c43823          	sd	a2,16(s0)
    80007ca8:	00d43c23          	sd	a3,24(s0)
    80007cac:	02e43023          	sd	a4,32(s0)
    80007cb0:	02f43423          	sd	a5,40(s0)
    80007cb4:	03043823          	sd	a6,48(s0)
    80007cb8:	03143c23          	sd	a7,56(s0)
    80007cbc:	00050993          	mv	s3,a0
    80007cc0:	4a0c1663          	bnez	s8,8000816c <__printf+0x514>
    80007cc4:	60098c63          	beqz	s3,800082dc <__printf+0x684>
    80007cc8:	0009c503          	lbu	a0,0(s3)
    80007ccc:	00840793          	addi	a5,s0,8
    80007cd0:	f6f43c23          	sd	a5,-136(s0)
    80007cd4:	00000493          	li	s1,0
    80007cd8:	22050063          	beqz	a0,80007ef8 <__printf+0x2a0>
    80007cdc:	00002a37          	lui	s4,0x2
    80007ce0:	00018ab7          	lui	s5,0x18
    80007ce4:	000f4b37          	lui	s6,0xf4
    80007ce8:	00989bb7          	lui	s7,0x989
    80007cec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007cf0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007cf4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007cf8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007cfc:	00148c9b          	addiw	s9,s1,1
    80007d00:	02500793          	li	a5,37
    80007d04:	01998933          	add	s2,s3,s9
    80007d08:	38f51263          	bne	a0,a5,8000808c <__printf+0x434>
    80007d0c:	00094783          	lbu	a5,0(s2)
    80007d10:	00078c9b          	sext.w	s9,a5
    80007d14:	1e078263          	beqz	a5,80007ef8 <__printf+0x2a0>
    80007d18:	0024849b          	addiw	s1,s1,2
    80007d1c:	07000713          	li	a4,112
    80007d20:	00998933          	add	s2,s3,s1
    80007d24:	38e78a63          	beq	a5,a4,800080b8 <__printf+0x460>
    80007d28:	20f76863          	bltu	a4,a5,80007f38 <__printf+0x2e0>
    80007d2c:	42a78863          	beq	a5,a0,8000815c <__printf+0x504>
    80007d30:	06400713          	li	a4,100
    80007d34:	40e79663          	bne	a5,a4,80008140 <__printf+0x4e8>
    80007d38:	f7843783          	ld	a5,-136(s0)
    80007d3c:	0007a603          	lw	a2,0(a5)
    80007d40:	00878793          	addi	a5,a5,8
    80007d44:	f6f43c23          	sd	a5,-136(s0)
    80007d48:	42064a63          	bltz	a2,8000817c <__printf+0x524>
    80007d4c:	00a00713          	li	a4,10
    80007d50:	02e677bb          	remuw	a5,a2,a4
    80007d54:	00003d97          	auipc	s11,0x3
    80007d58:	9c4d8d93          	addi	s11,s11,-1596 # 8000a718 <digits>
    80007d5c:	00900593          	li	a1,9
    80007d60:	0006051b          	sext.w	a0,a2
    80007d64:	00000c93          	li	s9,0
    80007d68:	02079793          	slli	a5,a5,0x20
    80007d6c:	0207d793          	srli	a5,a5,0x20
    80007d70:	00fd87b3          	add	a5,s11,a5
    80007d74:	0007c783          	lbu	a5,0(a5)
    80007d78:	02e656bb          	divuw	a3,a2,a4
    80007d7c:	f8f40023          	sb	a5,-128(s0)
    80007d80:	14c5d863          	bge	a1,a2,80007ed0 <__printf+0x278>
    80007d84:	06300593          	li	a1,99
    80007d88:	00100c93          	li	s9,1
    80007d8c:	02e6f7bb          	remuw	a5,a3,a4
    80007d90:	02079793          	slli	a5,a5,0x20
    80007d94:	0207d793          	srli	a5,a5,0x20
    80007d98:	00fd87b3          	add	a5,s11,a5
    80007d9c:	0007c783          	lbu	a5,0(a5)
    80007da0:	02e6d73b          	divuw	a4,a3,a4
    80007da4:	f8f400a3          	sb	a5,-127(s0)
    80007da8:	12a5f463          	bgeu	a1,a0,80007ed0 <__printf+0x278>
    80007dac:	00a00693          	li	a3,10
    80007db0:	00900593          	li	a1,9
    80007db4:	02d777bb          	remuw	a5,a4,a3
    80007db8:	02079793          	slli	a5,a5,0x20
    80007dbc:	0207d793          	srli	a5,a5,0x20
    80007dc0:	00fd87b3          	add	a5,s11,a5
    80007dc4:	0007c503          	lbu	a0,0(a5)
    80007dc8:	02d757bb          	divuw	a5,a4,a3
    80007dcc:	f8a40123          	sb	a0,-126(s0)
    80007dd0:	48e5f263          	bgeu	a1,a4,80008254 <__printf+0x5fc>
    80007dd4:	06300513          	li	a0,99
    80007dd8:	02d7f5bb          	remuw	a1,a5,a3
    80007ddc:	02059593          	slli	a1,a1,0x20
    80007de0:	0205d593          	srli	a1,a1,0x20
    80007de4:	00bd85b3          	add	a1,s11,a1
    80007de8:	0005c583          	lbu	a1,0(a1)
    80007dec:	02d7d7bb          	divuw	a5,a5,a3
    80007df0:	f8b401a3          	sb	a1,-125(s0)
    80007df4:	48e57263          	bgeu	a0,a4,80008278 <__printf+0x620>
    80007df8:	3e700513          	li	a0,999
    80007dfc:	02d7f5bb          	remuw	a1,a5,a3
    80007e00:	02059593          	slli	a1,a1,0x20
    80007e04:	0205d593          	srli	a1,a1,0x20
    80007e08:	00bd85b3          	add	a1,s11,a1
    80007e0c:	0005c583          	lbu	a1,0(a1)
    80007e10:	02d7d7bb          	divuw	a5,a5,a3
    80007e14:	f8b40223          	sb	a1,-124(s0)
    80007e18:	46e57663          	bgeu	a0,a4,80008284 <__printf+0x62c>
    80007e1c:	02d7f5bb          	remuw	a1,a5,a3
    80007e20:	02059593          	slli	a1,a1,0x20
    80007e24:	0205d593          	srli	a1,a1,0x20
    80007e28:	00bd85b3          	add	a1,s11,a1
    80007e2c:	0005c583          	lbu	a1,0(a1)
    80007e30:	02d7d7bb          	divuw	a5,a5,a3
    80007e34:	f8b402a3          	sb	a1,-123(s0)
    80007e38:	46ea7863          	bgeu	s4,a4,800082a8 <__printf+0x650>
    80007e3c:	02d7f5bb          	remuw	a1,a5,a3
    80007e40:	02059593          	slli	a1,a1,0x20
    80007e44:	0205d593          	srli	a1,a1,0x20
    80007e48:	00bd85b3          	add	a1,s11,a1
    80007e4c:	0005c583          	lbu	a1,0(a1)
    80007e50:	02d7d7bb          	divuw	a5,a5,a3
    80007e54:	f8b40323          	sb	a1,-122(s0)
    80007e58:	3eeaf863          	bgeu	s5,a4,80008248 <__printf+0x5f0>
    80007e5c:	02d7f5bb          	remuw	a1,a5,a3
    80007e60:	02059593          	slli	a1,a1,0x20
    80007e64:	0205d593          	srli	a1,a1,0x20
    80007e68:	00bd85b3          	add	a1,s11,a1
    80007e6c:	0005c583          	lbu	a1,0(a1)
    80007e70:	02d7d7bb          	divuw	a5,a5,a3
    80007e74:	f8b403a3          	sb	a1,-121(s0)
    80007e78:	42eb7e63          	bgeu	s6,a4,800082b4 <__printf+0x65c>
    80007e7c:	02d7f5bb          	remuw	a1,a5,a3
    80007e80:	02059593          	slli	a1,a1,0x20
    80007e84:	0205d593          	srli	a1,a1,0x20
    80007e88:	00bd85b3          	add	a1,s11,a1
    80007e8c:	0005c583          	lbu	a1,0(a1)
    80007e90:	02d7d7bb          	divuw	a5,a5,a3
    80007e94:	f8b40423          	sb	a1,-120(s0)
    80007e98:	42ebfc63          	bgeu	s7,a4,800082d0 <__printf+0x678>
    80007e9c:	02079793          	slli	a5,a5,0x20
    80007ea0:	0207d793          	srli	a5,a5,0x20
    80007ea4:	00fd8db3          	add	s11,s11,a5
    80007ea8:	000dc703          	lbu	a4,0(s11)
    80007eac:	00a00793          	li	a5,10
    80007eb0:	00900c93          	li	s9,9
    80007eb4:	f8e404a3          	sb	a4,-119(s0)
    80007eb8:	00065c63          	bgez	a2,80007ed0 <__printf+0x278>
    80007ebc:	f9040713          	addi	a4,s0,-112
    80007ec0:	00f70733          	add	a4,a4,a5
    80007ec4:	02d00693          	li	a3,45
    80007ec8:	fed70823          	sb	a3,-16(a4)
    80007ecc:	00078c93          	mv	s9,a5
    80007ed0:	f8040793          	addi	a5,s0,-128
    80007ed4:	01978cb3          	add	s9,a5,s9
    80007ed8:	f7f40d13          	addi	s10,s0,-129
    80007edc:	000cc503          	lbu	a0,0(s9)
    80007ee0:	fffc8c93          	addi	s9,s9,-1
    80007ee4:	00000097          	auipc	ra,0x0
    80007ee8:	b90080e7          	jalr	-1136(ra) # 80007a74 <consputc>
    80007eec:	ffac98e3          	bne	s9,s10,80007edc <__printf+0x284>
    80007ef0:	00094503          	lbu	a0,0(s2)
    80007ef4:	e00514e3          	bnez	a0,80007cfc <__printf+0xa4>
    80007ef8:	1a0c1663          	bnez	s8,800080a4 <__printf+0x44c>
    80007efc:	08813083          	ld	ra,136(sp)
    80007f00:	08013403          	ld	s0,128(sp)
    80007f04:	07813483          	ld	s1,120(sp)
    80007f08:	07013903          	ld	s2,112(sp)
    80007f0c:	06813983          	ld	s3,104(sp)
    80007f10:	06013a03          	ld	s4,96(sp)
    80007f14:	05813a83          	ld	s5,88(sp)
    80007f18:	05013b03          	ld	s6,80(sp)
    80007f1c:	04813b83          	ld	s7,72(sp)
    80007f20:	04013c03          	ld	s8,64(sp)
    80007f24:	03813c83          	ld	s9,56(sp)
    80007f28:	03013d03          	ld	s10,48(sp)
    80007f2c:	02813d83          	ld	s11,40(sp)
    80007f30:	0d010113          	addi	sp,sp,208
    80007f34:	00008067          	ret
    80007f38:	07300713          	li	a4,115
    80007f3c:	1ce78a63          	beq	a5,a4,80008110 <__printf+0x4b8>
    80007f40:	07800713          	li	a4,120
    80007f44:	1ee79e63          	bne	a5,a4,80008140 <__printf+0x4e8>
    80007f48:	f7843783          	ld	a5,-136(s0)
    80007f4c:	0007a703          	lw	a4,0(a5)
    80007f50:	00878793          	addi	a5,a5,8
    80007f54:	f6f43c23          	sd	a5,-136(s0)
    80007f58:	28074263          	bltz	a4,800081dc <__printf+0x584>
    80007f5c:	00002d97          	auipc	s11,0x2
    80007f60:	7bcd8d93          	addi	s11,s11,1980 # 8000a718 <digits>
    80007f64:	00f77793          	andi	a5,a4,15
    80007f68:	00fd87b3          	add	a5,s11,a5
    80007f6c:	0007c683          	lbu	a3,0(a5)
    80007f70:	00f00613          	li	a2,15
    80007f74:	0007079b          	sext.w	a5,a4
    80007f78:	f8d40023          	sb	a3,-128(s0)
    80007f7c:	0047559b          	srliw	a1,a4,0x4
    80007f80:	0047569b          	srliw	a3,a4,0x4
    80007f84:	00000c93          	li	s9,0
    80007f88:	0ee65063          	bge	a2,a4,80008068 <__printf+0x410>
    80007f8c:	00f6f693          	andi	a3,a3,15
    80007f90:	00dd86b3          	add	a3,s11,a3
    80007f94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f98:	0087d79b          	srliw	a5,a5,0x8
    80007f9c:	00100c93          	li	s9,1
    80007fa0:	f8d400a3          	sb	a3,-127(s0)
    80007fa4:	0cb67263          	bgeu	a2,a1,80008068 <__printf+0x410>
    80007fa8:	00f7f693          	andi	a3,a5,15
    80007fac:	00dd86b3          	add	a3,s11,a3
    80007fb0:	0006c583          	lbu	a1,0(a3)
    80007fb4:	00f00613          	li	a2,15
    80007fb8:	0047d69b          	srliw	a3,a5,0x4
    80007fbc:	f8b40123          	sb	a1,-126(s0)
    80007fc0:	0047d593          	srli	a1,a5,0x4
    80007fc4:	28f67e63          	bgeu	a2,a5,80008260 <__printf+0x608>
    80007fc8:	00f6f693          	andi	a3,a3,15
    80007fcc:	00dd86b3          	add	a3,s11,a3
    80007fd0:	0006c503          	lbu	a0,0(a3)
    80007fd4:	0087d813          	srli	a6,a5,0x8
    80007fd8:	0087d69b          	srliw	a3,a5,0x8
    80007fdc:	f8a401a3          	sb	a0,-125(s0)
    80007fe0:	28b67663          	bgeu	a2,a1,8000826c <__printf+0x614>
    80007fe4:	00f6f693          	andi	a3,a3,15
    80007fe8:	00dd86b3          	add	a3,s11,a3
    80007fec:	0006c583          	lbu	a1,0(a3)
    80007ff0:	00c7d513          	srli	a0,a5,0xc
    80007ff4:	00c7d69b          	srliw	a3,a5,0xc
    80007ff8:	f8b40223          	sb	a1,-124(s0)
    80007ffc:	29067a63          	bgeu	a2,a6,80008290 <__printf+0x638>
    80008000:	00f6f693          	andi	a3,a3,15
    80008004:	00dd86b3          	add	a3,s11,a3
    80008008:	0006c583          	lbu	a1,0(a3)
    8000800c:	0107d813          	srli	a6,a5,0x10
    80008010:	0107d69b          	srliw	a3,a5,0x10
    80008014:	f8b402a3          	sb	a1,-123(s0)
    80008018:	28a67263          	bgeu	a2,a0,8000829c <__printf+0x644>
    8000801c:	00f6f693          	andi	a3,a3,15
    80008020:	00dd86b3          	add	a3,s11,a3
    80008024:	0006c683          	lbu	a3,0(a3)
    80008028:	0147d79b          	srliw	a5,a5,0x14
    8000802c:	f8d40323          	sb	a3,-122(s0)
    80008030:	21067663          	bgeu	a2,a6,8000823c <__printf+0x5e4>
    80008034:	02079793          	slli	a5,a5,0x20
    80008038:	0207d793          	srli	a5,a5,0x20
    8000803c:	00fd8db3          	add	s11,s11,a5
    80008040:	000dc683          	lbu	a3,0(s11)
    80008044:	00800793          	li	a5,8
    80008048:	00700c93          	li	s9,7
    8000804c:	f8d403a3          	sb	a3,-121(s0)
    80008050:	00075c63          	bgez	a4,80008068 <__printf+0x410>
    80008054:	f9040713          	addi	a4,s0,-112
    80008058:	00f70733          	add	a4,a4,a5
    8000805c:	02d00693          	li	a3,45
    80008060:	fed70823          	sb	a3,-16(a4)
    80008064:	00078c93          	mv	s9,a5
    80008068:	f8040793          	addi	a5,s0,-128
    8000806c:	01978cb3          	add	s9,a5,s9
    80008070:	f7f40d13          	addi	s10,s0,-129
    80008074:	000cc503          	lbu	a0,0(s9)
    80008078:	fffc8c93          	addi	s9,s9,-1
    8000807c:	00000097          	auipc	ra,0x0
    80008080:	9f8080e7          	jalr	-1544(ra) # 80007a74 <consputc>
    80008084:	ff9d18e3          	bne	s10,s9,80008074 <__printf+0x41c>
    80008088:	0100006f          	j	80008098 <__printf+0x440>
    8000808c:	00000097          	auipc	ra,0x0
    80008090:	9e8080e7          	jalr	-1560(ra) # 80007a74 <consputc>
    80008094:	000c8493          	mv	s1,s9
    80008098:	00094503          	lbu	a0,0(s2)
    8000809c:	c60510e3          	bnez	a0,80007cfc <__printf+0xa4>
    800080a0:	e40c0ee3          	beqz	s8,80007efc <__printf+0x2a4>
    800080a4:	00006517          	auipc	a0,0x6
    800080a8:	0cc50513          	addi	a0,a0,204 # 8000e170 <pr>
    800080ac:	00001097          	auipc	ra,0x1
    800080b0:	94c080e7          	jalr	-1716(ra) # 800089f8 <release>
    800080b4:	e49ff06f          	j	80007efc <__printf+0x2a4>
    800080b8:	f7843783          	ld	a5,-136(s0)
    800080bc:	03000513          	li	a0,48
    800080c0:	01000d13          	li	s10,16
    800080c4:	00878713          	addi	a4,a5,8
    800080c8:	0007bc83          	ld	s9,0(a5)
    800080cc:	f6e43c23          	sd	a4,-136(s0)
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	9a4080e7          	jalr	-1628(ra) # 80007a74 <consputc>
    800080d8:	07800513          	li	a0,120
    800080dc:	00000097          	auipc	ra,0x0
    800080e0:	998080e7          	jalr	-1640(ra) # 80007a74 <consputc>
    800080e4:	00002d97          	auipc	s11,0x2
    800080e8:	634d8d93          	addi	s11,s11,1588 # 8000a718 <digits>
    800080ec:	03ccd793          	srli	a5,s9,0x3c
    800080f0:	00fd87b3          	add	a5,s11,a5
    800080f4:	0007c503          	lbu	a0,0(a5)
    800080f8:	fffd0d1b          	addiw	s10,s10,-1
    800080fc:	004c9c93          	slli	s9,s9,0x4
    80008100:	00000097          	auipc	ra,0x0
    80008104:	974080e7          	jalr	-1676(ra) # 80007a74 <consputc>
    80008108:	fe0d12e3          	bnez	s10,800080ec <__printf+0x494>
    8000810c:	f8dff06f          	j	80008098 <__printf+0x440>
    80008110:	f7843783          	ld	a5,-136(s0)
    80008114:	0007bc83          	ld	s9,0(a5)
    80008118:	00878793          	addi	a5,a5,8
    8000811c:	f6f43c23          	sd	a5,-136(s0)
    80008120:	000c9a63          	bnez	s9,80008134 <__printf+0x4dc>
    80008124:	1080006f          	j	8000822c <__printf+0x5d4>
    80008128:	001c8c93          	addi	s9,s9,1
    8000812c:	00000097          	auipc	ra,0x0
    80008130:	948080e7          	jalr	-1720(ra) # 80007a74 <consputc>
    80008134:	000cc503          	lbu	a0,0(s9)
    80008138:	fe0518e3          	bnez	a0,80008128 <__printf+0x4d0>
    8000813c:	f5dff06f          	j	80008098 <__printf+0x440>
    80008140:	02500513          	li	a0,37
    80008144:	00000097          	auipc	ra,0x0
    80008148:	930080e7          	jalr	-1744(ra) # 80007a74 <consputc>
    8000814c:	000c8513          	mv	a0,s9
    80008150:	00000097          	auipc	ra,0x0
    80008154:	924080e7          	jalr	-1756(ra) # 80007a74 <consputc>
    80008158:	f41ff06f          	j	80008098 <__printf+0x440>
    8000815c:	02500513          	li	a0,37
    80008160:	00000097          	auipc	ra,0x0
    80008164:	914080e7          	jalr	-1772(ra) # 80007a74 <consputc>
    80008168:	f31ff06f          	j	80008098 <__printf+0x440>
    8000816c:	00030513          	mv	a0,t1
    80008170:	00000097          	auipc	ra,0x0
    80008174:	7bc080e7          	jalr	1980(ra) # 8000892c <acquire>
    80008178:	b4dff06f          	j	80007cc4 <__printf+0x6c>
    8000817c:	40c0053b          	negw	a0,a2
    80008180:	00a00713          	li	a4,10
    80008184:	02e576bb          	remuw	a3,a0,a4
    80008188:	00002d97          	auipc	s11,0x2
    8000818c:	590d8d93          	addi	s11,s11,1424 # 8000a718 <digits>
    80008190:	ff700593          	li	a1,-9
    80008194:	02069693          	slli	a3,a3,0x20
    80008198:	0206d693          	srli	a3,a3,0x20
    8000819c:	00dd86b3          	add	a3,s11,a3
    800081a0:	0006c683          	lbu	a3,0(a3)
    800081a4:	02e557bb          	divuw	a5,a0,a4
    800081a8:	f8d40023          	sb	a3,-128(s0)
    800081ac:	10b65e63          	bge	a2,a1,800082c8 <__printf+0x670>
    800081b0:	06300593          	li	a1,99
    800081b4:	02e7f6bb          	remuw	a3,a5,a4
    800081b8:	02069693          	slli	a3,a3,0x20
    800081bc:	0206d693          	srli	a3,a3,0x20
    800081c0:	00dd86b3          	add	a3,s11,a3
    800081c4:	0006c683          	lbu	a3,0(a3)
    800081c8:	02e7d73b          	divuw	a4,a5,a4
    800081cc:	00200793          	li	a5,2
    800081d0:	f8d400a3          	sb	a3,-127(s0)
    800081d4:	bca5ece3          	bltu	a1,a0,80007dac <__printf+0x154>
    800081d8:	ce5ff06f          	j	80007ebc <__printf+0x264>
    800081dc:	40e007bb          	negw	a5,a4
    800081e0:	00002d97          	auipc	s11,0x2
    800081e4:	538d8d93          	addi	s11,s11,1336 # 8000a718 <digits>
    800081e8:	00f7f693          	andi	a3,a5,15
    800081ec:	00dd86b3          	add	a3,s11,a3
    800081f0:	0006c583          	lbu	a1,0(a3)
    800081f4:	ff100613          	li	a2,-15
    800081f8:	0047d69b          	srliw	a3,a5,0x4
    800081fc:	f8b40023          	sb	a1,-128(s0)
    80008200:	0047d59b          	srliw	a1,a5,0x4
    80008204:	0ac75e63          	bge	a4,a2,800082c0 <__printf+0x668>
    80008208:	00f6f693          	andi	a3,a3,15
    8000820c:	00dd86b3          	add	a3,s11,a3
    80008210:	0006c603          	lbu	a2,0(a3)
    80008214:	00f00693          	li	a3,15
    80008218:	0087d79b          	srliw	a5,a5,0x8
    8000821c:	f8c400a3          	sb	a2,-127(s0)
    80008220:	d8b6e4e3          	bltu	a3,a1,80007fa8 <__printf+0x350>
    80008224:	00200793          	li	a5,2
    80008228:	e2dff06f          	j	80008054 <__printf+0x3fc>
    8000822c:	00002c97          	auipc	s9,0x2
    80008230:	4ccc8c93          	addi	s9,s9,1228 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008234:	02800513          	li	a0,40
    80008238:	ef1ff06f          	j	80008128 <__printf+0x4d0>
    8000823c:	00700793          	li	a5,7
    80008240:	00600c93          	li	s9,6
    80008244:	e0dff06f          	j	80008050 <__printf+0x3f8>
    80008248:	00700793          	li	a5,7
    8000824c:	00600c93          	li	s9,6
    80008250:	c69ff06f          	j	80007eb8 <__printf+0x260>
    80008254:	00300793          	li	a5,3
    80008258:	00200c93          	li	s9,2
    8000825c:	c5dff06f          	j	80007eb8 <__printf+0x260>
    80008260:	00300793          	li	a5,3
    80008264:	00200c93          	li	s9,2
    80008268:	de9ff06f          	j	80008050 <__printf+0x3f8>
    8000826c:	00400793          	li	a5,4
    80008270:	00300c93          	li	s9,3
    80008274:	dddff06f          	j	80008050 <__printf+0x3f8>
    80008278:	00400793          	li	a5,4
    8000827c:	00300c93          	li	s9,3
    80008280:	c39ff06f          	j	80007eb8 <__printf+0x260>
    80008284:	00500793          	li	a5,5
    80008288:	00400c93          	li	s9,4
    8000828c:	c2dff06f          	j	80007eb8 <__printf+0x260>
    80008290:	00500793          	li	a5,5
    80008294:	00400c93          	li	s9,4
    80008298:	db9ff06f          	j	80008050 <__printf+0x3f8>
    8000829c:	00600793          	li	a5,6
    800082a0:	00500c93          	li	s9,5
    800082a4:	dadff06f          	j	80008050 <__printf+0x3f8>
    800082a8:	00600793          	li	a5,6
    800082ac:	00500c93          	li	s9,5
    800082b0:	c09ff06f          	j	80007eb8 <__printf+0x260>
    800082b4:	00800793          	li	a5,8
    800082b8:	00700c93          	li	s9,7
    800082bc:	bfdff06f          	j	80007eb8 <__printf+0x260>
    800082c0:	00100793          	li	a5,1
    800082c4:	d91ff06f          	j	80008054 <__printf+0x3fc>
    800082c8:	00100793          	li	a5,1
    800082cc:	bf1ff06f          	j	80007ebc <__printf+0x264>
    800082d0:	00900793          	li	a5,9
    800082d4:	00800c93          	li	s9,8
    800082d8:	be1ff06f          	j	80007eb8 <__printf+0x260>
    800082dc:	00002517          	auipc	a0,0x2
    800082e0:	42450513          	addi	a0,a0,1060 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800082e4:	00000097          	auipc	ra,0x0
    800082e8:	918080e7          	jalr	-1768(ra) # 80007bfc <panic>

00000000800082ec <printfinit>:
    800082ec:	fe010113          	addi	sp,sp,-32
    800082f0:	00813823          	sd	s0,16(sp)
    800082f4:	00913423          	sd	s1,8(sp)
    800082f8:	00113c23          	sd	ra,24(sp)
    800082fc:	02010413          	addi	s0,sp,32
    80008300:	00006497          	auipc	s1,0x6
    80008304:	e7048493          	addi	s1,s1,-400 # 8000e170 <pr>
    80008308:	00048513          	mv	a0,s1
    8000830c:	00002597          	auipc	a1,0x2
    80008310:	40458593          	addi	a1,a1,1028 # 8000a710 <CONSOLE_STATUS+0x700>
    80008314:	00000097          	auipc	ra,0x0
    80008318:	5f4080e7          	jalr	1524(ra) # 80008908 <initlock>
    8000831c:	01813083          	ld	ra,24(sp)
    80008320:	01013403          	ld	s0,16(sp)
    80008324:	0004ac23          	sw	zero,24(s1)
    80008328:	00813483          	ld	s1,8(sp)
    8000832c:	02010113          	addi	sp,sp,32
    80008330:	00008067          	ret

0000000080008334 <uartinit>:
    80008334:	ff010113          	addi	sp,sp,-16
    80008338:	00813423          	sd	s0,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	100007b7          	lui	a5,0x10000
    80008344:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008348:	f8000713          	li	a4,-128
    8000834c:	00e781a3          	sb	a4,3(a5)
    80008350:	00300713          	li	a4,3
    80008354:	00e78023          	sb	a4,0(a5)
    80008358:	000780a3          	sb	zero,1(a5)
    8000835c:	00e781a3          	sb	a4,3(a5)
    80008360:	00700693          	li	a3,7
    80008364:	00d78123          	sb	a3,2(a5)
    80008368:	00e780a3          	sb	a4,1(a5)
    8000836c:	00813403          	ld	s0,8(sp)
    80008370:	01010113          	addi	sp,sp,16
    80008374:	00008067          	ret

0000000080008378 <uartputc>:
    80008378:	00005797          	auipc	a5,0x5
    8000837c:	b007a783          	lw	a5,-1280(a5) # 8000ce78 <panicked>
    80008380:	00078463          	beqz	a5,80008388 <uartputc+0x10>
    80008384:	0000006f          	j	80008384 <uartputc+0xc>
    80008388:	fd010113          	addi	sp,sp,-48
    8000838c:	02813023          	sd	s0,32(sp)
    80008390:	00913c23          	sd	s1,24(sp)
    80008394:	01213823          	sd	s2,16(sp)
    80008398:	01313423          	sd	s3,8(sp)
    8000839c:	02113423          	sd	ra,40(sp)
    800083a0:	03010413          	addi	s0,sp,48
    800083a4:	00005917          	auipc	s2,0x5
    800083a8:	adc90913          	addi	s2,s2,-1316 # 8000ce80 <uart_tx_r>
    800083ac:	00093783          	ld	a5,0(s2)
    800083b0:	00005497          	auipc	s1,0x5
    800083b4:	ad848493          	addi	s1,s1,-1320 # 8000ce88 <uart_tx_w>
    800083b8:	0004b703          	ld	a4,0(s1)
    800083bc:	02078693          	addi	a3,a5,32
    800083c0:	00050993          	mv	s3,a0
    800083c4:	02e69c63          	bne	a3,a4,800083fc <uartputc+0x84>
    800083c8:	00001097          	auipc	ra,0x1
    800083cc:	834080e7          	jalr	-1996(ra) # 80008bfc <push_on>
    800083d0:	00093783          	ld	a5,0(s2)
    800083d4:	0004b703          	ld	a4,0(s1)
    800083d8:	02078793          	addi	a5,a5,32
    800083dc:	00e79463          	bne	a5,a4,800083e4 <uartputc+0x6c>
    800083e0:	0000006f          	j	800083e0 <uartputc+0x68>
    800083e4:	00001097          	auipc	ra,0x1
    800083e8:	88c080e7          	jalr	-1908(ra) # 80008c70 <pop_on>
    800083ec:	00093783          	ld	a5,0(s2)
    800083f0:	0004b703          	ld	a4,0(s1)
    800083f4:	02078693          	addi	a3,a5,32
    800083f8:	fce688e3          	beq	a3,a4,800083c8 <uartputc+0x50>
    800083fc:	01f77693          	andi	a3,a4,31
    80008400:	00006597          	auipc	a1,0x6
    80008404:	d9058593          	addi	a1,a1,-624 # 8000e190 <uart_tx_buf>
    80008408:	00d586b3          	add	a3,a1,a3
    8000840c:	00170713          	addi	a4,a4,1
    80008410:	01368023          	sb	s3,0(a3)
    80008414:	00e4b023          	sd	a4,0(s1)
    80008418:	10000637          	lui	a2,0x10000
    8000841c:	02f71063          	bne	a4,a5,8000843c <uartputc+0xc4>
    80008420:	0340006f          	j	80008454 <uartputc+0xdc>
    80008424:	00074703          	lbu	a4,0(a4)
    80008428:	00f93023          	sd	a5,0(s2)
    8000842c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008430:	00093783          	ld	a5,0(s2)
    80008434:	0004b703          	ld	a4,0(s1)
    80008438:	00f70e63          	beq	a4,a5,80008454 <uartputc+0xdc>
    8000843c:	00564683          	lbu	a3,5(a2)
    80008440:	01f7f713          	andi	a4,a5,31
    80008444:	00e58733          	add	a4,a1,a4
    80008448:	0206f693          	andi	a3,a3,32
    8000844c:	00178793          	addi	a5,a5,1
    80008450:	fc069ae3          	bnez	a3,80008424 <uartputc+0xac>
    80008454:	02813083          	ld	ra,40(sp)
    80008458:	02013403          	ld	s0,32(sp)
    8000845c:	01813483          	ld	s1,24(sp)
    80008460:	01013903          	ld	s2,16(sp)
    80008464:	00813983          	ld	s3,8(sp)
    80008468:	03010113          	addi	sp,sp,48
    8000846c:	00008067          	ret

0000000080008470 <uartputc_sync>:
    80008470:	ff010113          	addi	sp,sp,-16
    80008474:	00813423          	sd	s0,8(sp)
    80008478:	01010413          	addi	s0,sp,16
    8000847c:	00005717          	auipc	a4,0x5
    80008480:	9fc72703          	lw	a4,-1540(a4) # 8000ce78 <panicked>
    80008484:	02071663          	bnez	a4,800084b0 <uartputc_sync+0x40>
    80008488:	00050793          	mv	a5,a0
    8000848c:	100006b7          	lui	a3,0x10000
    80008490:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008494:	02077713          	andi	a4,a4,32
    80008498:	fe070ce3          	beqz	a4,80008490 <uartputc_sync+0x20>
    8000849c:	0ff7f793          	andi	a5,a5,255
    800084a0:	00f68023          	sb	a5,0(a3)
    800084a4:	00813403          	ld	s0,8(sp)
    800084a8:	01010113          	addi	sp,sp,16
    800084ac:	00008067          	ret
    800084b0:	0000006f          	j	800084b0 <uartputc_sync+0x40>

00000000800084b4 <uartstart>:
    800084b4:	ff010113          	addi	sp,sp,-16
    800084b8:	00813423          	sd	s0,8(sp)
    800084bc:	01010413          	addi	s0,sp,16
    800084c0:	00005617          	auipc	a2,0x5
    800084c4:	9c060613          	addi	a2,a2,-1600 # 8000ce80 <uart_tx_r>
    800084c8:	00005517          	auipc	a0,0x5
    800084cc:	9c050513          	addi	a0,a0,-1600 # 8000ce88 <uart_tx_w>
    800084d0:	00063783          	ld	a5,0(a2)
    800084d4:	00053703          	ld	a4,0(a0)
    800084d8:	04f70263          	beq	a4,a5,8000851c <uartstart+0x68>
    800084dc:	100005b7          	lui	a1,0x10000
    800084e0:	00006817          	auipc	a6,0x6
    800084e4:	cb080813          	addi	a6,a6,-848 # 8000e190 <uart_tx_buf>
    800084e8:	01c0006f          	j	80008504 <uartstart+0x50>
    800084ec:	0006c703          	lbu	a4,0(a3)
    800084f0:	00f63023          	sd	a5,0(a2)
    800084f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084f8:	00063783          	ld	a5,0(a2)
    800084fc:	00053703          	ld	a4,0(a0)
    80008500:	00f70e63          	beq	a4,a5,8000851c <uartstart+0x68>
    80008504:	01f7f713          	andi	a4,a5,31
    80008508:	00e806b3          	add	a3,a6,a4
    8000850c:	0055c703          	lbu	a4,5(a1)
    80008510:	00178793          	addi	a5,a5,1
    80008514:	02077713          	andi	a4,a4,32
    80008518:	fc071ae3          	bnez	a4,800084ec <uartstart+0x38>
    8000851c:	00813403          	ld	s0,8(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret

0000000080008528 <uartgetc>:
    80008528:	ff010113          	addi	sp,sp,-16
    8000852c:	00813423          	sd	s0,8(sp)
    80008530:	01010413          	addi	s0,sp,16
    80008534:	10000737          	lui	a4,0x10000
    80008538:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000853c:	0017f793          	andi	a5,a5,1
    80008540:	00078c63          	beqz	a5,80008558 <uartgetc+0x30>
    80008544:	00074503          	lbu	a0,0(a4)
    80008548:	0ff57513          	andi	a0,a0,255
    8000854c:	00813403          	ld	s0,8(sp)
    80008550:	01010113          	addi	sp,sp,16
    80008554:	00008067          	ret
    80008558:	fff00513          	li	a0,-1
    8000855c:	ff1ff06f          	j	8000854c <uartgetc+0x24>

0000000080008560 <uartintr>:
    80008560:	100007b7          	lui	a5,0x10000
    80008564:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008568:	0017f793          	andi	a5,a5,1
    8000856c:	0a078463          	beqz	a5,80008614 <uartintr+0xb4>
    80008570:	fe010113          	addi	sp,sp,-32
    80008574:	00813823          	sd	s0,16(sp)
    80008578:	00913423          	sd	s1,8(sp)
    8000857c:	00113c23          	sd	ra,24(sp)
    80008580:	02010413          	addi	s0,sp,32
    80008584:	100004b7          	lui	s1,0x10000
    80008588:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000858c:	0ff57513          	andi	a0,a0,255
    80008590:	fffff097          	auipc	ra,0xfffff
    80008594:	534080e7          	jalr	1332(ra) # 80007ac4 <consoleintr>
    80008598:	0054c783          	lbu	a5,5(s1)
    8000859c:	0017f793          	andi	a5,a5,1
    800085a0:	fe0794e3          	bnez	a5,80008588 <uartintr+0x28>
    800085a4:	00005617          	auipc	a2,0x5
    800085a8:	8dc60613          	addi	a2,a2,-1828 # 8000ce80 <uart_tx_r>
    800085ac:	00005517          	auipc	a0,0x5
    800085b0:	8dc50513          	addi	a0,a0,-1828 # 8000ce88 <uart_tx_w>
    800085b4:	00063783          	ld	a5,0(a2)
    800085b8:	00053703          	ld	a4,0(a0)
    800085bc:	04f70263          	beq	a4,a5,80008600 <uartintr+0xa0>
    800085c0:	100005b7          	lui	a1,0x10000
    800085c4:	00006817          	auipc	a6,0x6
    800085c8:	bcc80813          	addi	a6,a6,-1076 # 8000e190 <uart_tx_buf>
    800085cc:	01c0006f          	j	800085e8 <uartintr+0x88>
    800085d0:	0006c703          	lbu	a4,0(a3)
    800085d4:	00f63023          	sd	a5,0(a2)
    800085d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085dc:	00063783          	ld	a5,0(a2)
    800085e0:	00053703          	ld	a4,0(a0)
    800085e4:	00f70e63          	beq	a4,a5,80008600 <uartintr+0xa0>
    800085e8:	01f7f713          	andi	a4,a5,31
    800085ec:	00e806b3          	add	a3,a6,a4
    800085f0:	0055c703          	lbu	a4,5(a1)
    800085f4:	00178793          	addi	a5,a5,1
    800085f8:	02077713          	andi	a4,a4,32
    800085fc:	fc071ae3          	bnez	a4,800085d0 <uartintr+0x70>
    80008600:	01813083          	ld	ra,24(sp)
    80008604:	01013403          	ld	s0,16(sp)
    80008608:	00813483          	ld	s1,8(sp)
    8000860c:	02010113          	addi	sp,sp,32
    80008610:	00008067          	ret
    80008614:	00005617          	auipc	a2,0x5
    80008618:	86c60613          	addi	a2,a2,-1940 # 8000ce80 <uart_tx_r>
    8000861c:	00005517          	auipc	a0,0x5
    80008620:	86c50513          	addi	a0,a0,-1940 # 8000ce88 <uart_tx_w>
    80008624:	00063783          	ld	a5,0(a2)
    80008628:	00053703          	ld	a4,0(a0)
    8000862c:	04f70263          	beq	a4,a5,80008670 <uartintr+0x110>
    80008630:	100005b7          	lui	a1,0x10000
    80008634:	00006817          	auipc	a6,0x6
    80008638:	b5c80813          	addi	a6,a6,-1188 # 8000e190 <uart_tx_buf>
    8000863c:	01c0006f          	j	80008658 <uartintr+0xf8>
    80008640:	0006c703          	lbu	a4,0(a3)
    80008644:	00f63023          	sd	a5,0(a2)
    80008648:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000864c:	00063783          	ld	a5,0(a2)
    80008650:	00053703          	ld	a4,0(a0)
    80008654:	02f70063          	beq	a4,a5,80008674 <uartintr+0x114>
    80008658:	01f7f713          	andi	a4,a5,31
    8000865c:	00e806b3          	add	a3,a6,a4
    80008660:	0055c703          	lbu	a4,5(a1)
    80008664:	00178793          	addi	a5,a5,1
    80008668:	02077713          	andi	a4,a4,32
    8000866c:	fc071ae3          	bnez	a4,80008640 <uartintr+0xe0>
    80008670:	00008067          	ret
    80008674:	00008067          	ret

0000000080008678 <kinit>:
    80008678:	fc010113          	addi	sp,sp,-64
    8000867c:	02913423          	sd	s1,40(sp)
    80008680:	fffff7b7          	lui	a5,0xfffff
    80008684:	00007497          	auipc	s1,0x7
    80008688:	b2b48493          	addi	s1,s1,-1237 # 8000f1af <end+0xfff>
    8000868c:	02813823          	sd	s0,48(sp)
    80008690:	01313c23          	sd	s3,24(sp)
    80008694:	00f4f4b3          	and	s1,s1,a5
    80008698:	02113c23          	sd	ra,56(sp)
    8000869c:	03213023          	sd	s2,32(sp)
    800086a0:	01413823          	sd	s4,16(sp)
    800086a4:	01513423          	sd	s5,8(sp)
    800086a8:	04010413          	addi	s0,sp,64
    800086ac:	000017b7          	lui	a5,0x1
    800086b0:	01100993          	li	s3,17
    800086b4:	00f487b3          	add	a5,s1,a5
    800086b8:	01b99993          	slli	s3,s3,0x1b
    800086bc:	06f9e063          	bltu	s3,a5,8000871c <kinit+0xa4>
    800086c0:	00006a97          	auipc	s5,0x6
    800086c4:	af0a8a93          	addi	s5,s5,-1296 # 8000e1b0 <end>
    800086c8:	0754ec63          	bltu	s1,s5,80008740 <kinit+0xc8>
    800086cc:	0734fa63          	bgeu	s1,s3,80008740 <kinit+0xc8>
    800086d0:	00088a37          	lui	s4,0x88
    800086d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800086d8:	00004917          	auipc	s2,0x4
    800086dc:	7b890913          	addi	s2,s2,1976 # 8000ce90 <kmem>
    800086e0:	00ca1a13          	slli	s4,s4,0xc
    800086e4:	0140006f          	j	800086f8 <kinit+0x80>
    800086e8:	000017b7          	lui	a5,0x1
    800086ec:	00f484b3          	add	s1,s1,a5
    800086f0:	0554e863          	bltu	s1,s5,80008740 <kinit+0xc8>
    800086f4:	0534f663          	bgeu	s1,s3,80008740 <kinit+0xc8>
    800086f8:	00001637          	lui	a2,0x1
    800086fc:	00100593          	li	a1,1
    80008700:	00048513          	mv	a0,s1
    80008704:	00000097          	auipc	ra,0x0
    80008708:	5e4080e7          	jalr	1508(ra) # 80008ce8 <__memset>
    8000870c:	00093783          	ld	a5,0(s2)
    80008710:	00f4b023          	sd	a5,0(s1)
    80008714:	00993023          	sd	s1,0(s2)
    80008718:	fd4498e3          	bne	s1,s4,800086e8 <kinit+0x70>
    8000871c:	03813083          	ld	ra,56(sp)
    80008720:	03013403          	ld	s0,48(sp)
    80008724:	02813483          	ld	s1,40(sp)
    80008728:	02013903          	ld	s2,32(sp)
    8000872c:	01813983          	ld	s3,24(sp)
    80008730:	01013a03          	ld	s4,16(sp)
    80008734:	00813a83          	ld	s5,8(sp)
    80008738:	04010113          	addi	sp,sp,64
    8000873c:	00008067          	ret
    80008740:	00002517          	auipc	a0,0x2
    80008744:	ff050513          	addi	a0,a0,-16 # 8000a730 <digits+0x18>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	4b4080e7          	jalr	1204(ra) # 80007bfc <panic>

0000000080008750 <freerange>:
    80008750:	fc010113          	addi	sp,sp,-64
    80008754:	000017b7          	lui	a5,0x1
    80008758:	02913423          	sd	s1,40(sp)
    8000875c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008760:	009504b3          	add	s1,a0,s1
    80008764:	fffff537          	lui	a0,0xfffff
    80008768:	02813823          	sd	s0,48(sp)
    8000876c:	02113c23          	sd	ra,56(sp)
    80008770:	03213023          	sd	s2,32(sp)
    80008774:	01313c23          	sd	s3,24(sp)
    80008778:	01413823          	sd	s4,16(sp)
    8000877c:	01513423          	sd	s5,8(sp)
    80008780:	01613023          	sd	s6,0(sp)
    80008784:	04010413          	addi	s0,sp,64
    80008788:	00a4f4b3          	and	s1,s1,a0
    8000878c:	00f487b3          	add	a5,s1,a5
    80008790:	06f5e463          	bltu	a1,a5,800087f8 <freerange+0xa8>
    80008794:	00006a97          	auipc	s5,0x6
    80008798:	a1ca8a93          	addi	s5,s5,-1508 # 8000e1b0 <end>
    8000879c:	0954e263          	bltu	s1,s5,80008820 <freerange+0xd0>
    800087a0:	01100993          	li	s3,17
    800087a4:	01b99993          	slli	s3,s3,0x1b
    800087a8:	0734fc63          	bgeu	s1,s3,80008820 <freerange+0xd0>
    800087ac:	00058a13          	mv	s4,a1
    800087b0:	00004917          	auipc	s2,0x4
    800087b4:	6e090913          	addi	s2,s2,1760 # 8000ce90 <kmem>
    800087b8:	00002b37          	lui	s6,0x2
    800087bc:	0140006f          	j	800087d0 <freerange+0x80>
    800087c0:	000017b7          	lui	a5,0x1
    800087c4:	00f484b3          	add	s1,s1,a5
    800087c8:	0554ec63          	bltu	s1,s5,80008820 <freerange+0xd0>
    800087cc:	0534fa63          	bgeu	s1,s3,80008820 <freerange+0xd0>
    800087d0:	00001637          	lui	a2,0x1
    800087d4:	00100593          	li	a1,1
    800087d8:	00048513          	mv	a0,s1
    800087dc:	00000097          	auipc	ra,0x0
    800087e0:	50c080e7          	jalr	1292(ra) # 80008ce8 <__memset>
    800087e4:	00093703          	ld	a4,0(s2)
    800087e8:	016487b3          	add	a5,s1,s6
    800087ec:	00e4b023          	sd	a4,0(s1)
    800087f0:	00993023          	sd	s1,0(s2)
    800087f4:	fcfa76e3          	bgeu	s4,a5,800087c0 <freerange+0x70>
    800087f8:	03813083          	ld	ra,56(sp)
    800087fc:	03013403          	ld	s0,48(sp)
    80008800:	02813483          	ld	s1,40(sp)
    80008804:	02013903          	ld	s2,32(sp)
    80008808:	01813983          	ld	s3,24(sp)
    8000880c:	01013a03          	ld	s4,16(sp)
    80008810:	00813a83          	ld	s5,8(sp)
    80008814:	00013b03          	ld	s6,0(sp)
    80008818:	04010113          	addi	sp,sp,64
    8000881c:	00008067          	ret
    80008820:	00002517          	auipc	a0,0x2
    80008824:	f1050513          	addi	a0,a0,-240 # 8000a730 <digits+0x18>
    80008828:	fffff097          	auipc	ra,0xfffff
    8000882c:	3d4080e7          	jalr	980(ra) # 80007bfc <panic>

0000000080008830 <kfree>:
    80008830:	fe010113          	addi	sp,sp,-32
    80008834:	00813823          	sd	s0,16(sp)
    80008838:	00113c23          	sd	ra,24(sp)
    8000883c:	00913423          	sd	s1,8(sp)
    80008840:	02010413          	addi	s0,sp,32
    80008844:	03451793          	slli	a5,a0,0x34
    80008848:	04079c63          	bnez	a5,800088a0 <kfree+0x70>
    8000884c:	00006797          	auipc	a5,0x6
    80008850:	96478793          	addi	a5,a5,-1692 # 8000e1b0 <end>
    80008854:	00050493          	mv	s1,a0
    80008858:	04f56463          	bltu	a0,a5,800088a0 <kfree+0x70>
    8000885c:	01100793          	li	a5,17
    80008860:	01b79793          	slli	a5,a5,0x1b
    80008864:	02f57e63          	bgeu	a0,a5,800088a0 <kfree+0x70>
    80008868:	00001637          	lui	a2,0x1
    8000886c:	00100593          	li	a1,1
    80008870:	00000097          	auipc	ra,0x0
    80008874:	478080e7          	jalr	1144(ra) # 80008ce8 <__memset>
    80008878:	00004797          	auipc	a5,0x4
    8000887c:	61878793          	addi	a5,a5,1560 # 8000ce90 <kmem>
    80008880:	0007b703          	ld	a4,0(a5)
    80008884:	01813083          	ld	ra,24(sp)
    80008888:	01013403          	ld	s0,16(sp)
    8000888c:	00e4b023          	sd	a4,0(s1)
    80008890:	0097b023          	sd	s1,0(a5)
    80008894:	00813483          	ld	s1,8(sp)
    80008898:	02010113          	addi	sp,sp,32
    8000889c:	00008067          	ret
    800088a0:	00002517          	auipc	a0,0x2
    800088a4:	e9050513          	addi	a0,a0,-368 # 8000a730 <digits+0x18>
    800088a8:	fffff097          	auipc	ra,0xfffff
    800088ac:	354080e7          	jalr	852(ra) # 80007bfc <panic>

00000000800088b0 <kalloc>:
    800088b0:	fe010113          	addi	sp,sp,-32
    800088b4:	00813823          	sd	s0,16(sp)
    800088b8:	00913423          	sd	s1,8(sp)
    800088bc:	00113c23          	sd	ra,24(sp)
    800088c0:	02010413          	addi	s0,sp,32
    800088c4:	00004797          	auipc	a5,0x4
    800088c8:	5cc78793          	addi	a5,a5,1484 # 8000ce90 <kmem>
    800088cc:	0007b483          	ld	s1,0(a5)
    800088d0:	02048063          	beqz	s1,800088f0 <kalloc+0x40>
    800088d4:	0004b703          	ld	a4,0(s1)
    800088d8:	00001637          	lui	a2,0x1
    800088dc:	00500593          	li	a1,5
    800088e0:	00048513          	mv	a0,s1
    800088e4:	00e7b023          	sd	a4,0(a5)
    800088e8:	00000097          	auipc	ra,0x0
    800088ec:	400080e7          	jalr	1024(ra) # 80008ce8 <__memset>
    800088f0:	01813083          	ld	ra,24(sp)
    800088f4:	01013403          	ld	s0,16(sp)
    800088f8:	00048513          	mv	a0,s1
    800088fc:	00813483          	ld	s1,8(sp)
    80008900:	02010113          	addi	sp,sp,32
    80008904:	00008067          	ret

0000000080008908 <initlock>:
    80008908:	ff010113          	addi	sp,sp,-16
    8000890c:	00813423          	sd	s0,8(sp)
    80008910:	01010413          	addi	s0,sp,16
    80008914:	00813403          	ld	s0,8(sp)
    80008918:	00b53423          	sd	a1,8(a0)
    8000891c:	00052023          	sw	zero,0(a0)
    80008920:	00053823          	sd	zero,16(a0)
    80008924:	01010113          	addi	sp,sp,16
    80008928:	00008067          	ret

000000008000892c <acquire>:
    8000892c:	fe010113          	addi	sp,sp,-32
    80008930:	00813823          	sd	s0,16(sp)
    80008934:	00913423          	sd	s1,8(sp)
    80008938:	00113c23          	sd	ra,24(sp)
    8000893c:	01213023          	sd	s2,0(sp)
    80008940:	02010413          	addi	s0,sp,32
    80008944:	00050493          	mv	s1,a0
    80008948:	10002973          	csrr	s2,sstatus
    8000894c:	100027f3          	csrr	a5,sstatus
    80008950:	ffd7f793          	andi	a5,a5,-3
    80008954:	10079073          	csrw	sstatus,a5
    80008958:	fffff097          	auipc	ra,0xfffff
    8000895c:	8e8080e7          	jalr	-1816(ra) # 80007240 <mycpu>
    80008960:	07852783          	lw	a5,120(a0)
    80008964:	06078e63          	beqz	a5,800089e0 <acquire+0xb4>
    80008968:	fffff097          	auipc	ra,0xfffff
    8000896c:	8d8080e7          	jalr	-1832(ra) # 80007240 <mycpu>
    80008970:	07852783          	lw	a5,120(a0)
    80008974:	0004a703          	lw	a4,0(s1)
    80008978:	0017879b          	addiw	a5,a5,1
    8000897c:	06f52c23          	sw	a5,120(a0)
    80008980:	04071063          	bnez	a4,800089c0 <acquire+0x94>
    80008984:	00100713          	li	a4,1
    80008988:	00070793          	mv	a5,a4
    8000898c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008990:	0007879b          	sext.w	a5,a5
    80008994:	fe079ae3          	bnez	a5,80008988 <acquire+0x5c>
    80008998:	0ff0000f          	fence
    8000899c:	fffff097          	auipc	ra,0xfffff
    800089a0:	8a4080e7          	jalr	-1884(ra) # 80007240 <mycpu>
    800089a4:	01813083          	ld	ra,24(sp)
    800089a8:	01013403          	ld	s0,16(sp)
    800089ac:	00a4b823          	sd	a0,16(s1)
    800089b0:	00013903          	ld	s2,0(sp)
    800089b4:	00813483          	ld	s1,8(sp)
    800089b8:	02010113          	addi	sp,sp,32
    800089bc:	00008067          	ret
    800089c0:	0104b903          	ld	s2,16(s1)
    800089c4:	fffff097          	auipc	ra,0xfffff
    800089c8:	87c080e7          	jalr	-1924(ra) # 80007240 <mycpu>
    800089cc:	faa91ce3          	bne	s2,a0,80008984 <acquire+0x58>
    800089d0:	00002517          	auipc	a0,0x2
    800089d4:	d6850513          	addi	a0,a0,-664 # 8000a738 <digits+0x20>
    800089d8:	fffff097          	auipc	ra,0xfffff
    800089dc:	224080e7          	jalr	548(ra) # 80007bfc <panic>
    800089e0:	00195913          	srli	s2,s2,0x1
    800089e4:	fffff097          	auipc	ra,0xfffff
    800089e8:	85c080e7          	jalr	-1956(ra) # 80007240 <mycpu>
    800089ec:	00197913          	andi	s2,s2,1
    800089f0:	07252e23          	sw	s2,124(a0)
    800089f4:	f75ff06f          	j	80008968 <acquire+0x3c>

00000000800089f8 <release>:
    800089f8:	fe010113          	addi	sp,sp,-32
    800089fc:	00813823          	sd	s0,16(sp)
    80008a00:	00113c23          	sd	ra,24(sp)
    80008a04:	00913423          	sd	s1,8(sp)
    80008a08:	01213023          	sd	s2,0(sp)
    80008a0c:	02010413          	addi	s0,sp,32
    80008a10:	00052783          	lw	a5,0(a0)
    80008a14:	00079a63          	bnez	a5,80008a28 <release+0x30>
    80008a18:	00002517          	auipc	a0,0x2
    80008a1c:	d2850513          	addi	a0,a0,-728 # 8000a740 <digits+0x28>
    80008a20:	fffff097          	auipc	ra,0xfffff
    80008a24:	1dc080e7          	jalr	476(ra) # 80007bfc <panic>
    80008a28:	01053903          	ld	s2,16(a0)
    80008a2c:	00050493          	mv	s1,a0
    80008a30:	fffff097          	auipc	ra,0xfffff
    80008a34:	810080e7          	jalr	-2032(ra) # 80007240 <mycpu>
    80008a38:	fea910e3          	bne	s2,a0,80008a18 <release+0x20>
    80008a3c:	0004b823          	sd	zero,16(s1)
    80008a40:	0ff0000f          	fence
    80008a44:	0f50000f          	fence	iorw,ow
    80008a48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008a4c:	ffffe097          	auipc	ra,0xffffe
    80008a50:	7f4080e7          	jalr	2036(ra) # 80007240 <mycpu>
    80008a54:	100027f3          	csrr	a5,sstatus
    80008a58:	0027f793          	andi	a5,a5,2
    80008a5c:	04079a63          	bnez	a5,80008ab0 <release+0xb8>
    80008a60:	07852783          	lw	a5,120(a0)
    80008a64:	02f05e63          	blez	a5,80008aa0 <release+0xa8>
    80008a68:	fff7871b          	addiw	a4,a5,-1
    80008a6c:	06e52c23          	sw	a4,120(a0)
    80008a70:	00071c63          	bnez	a4,80008a88 <release+0x90>
    80008a74:	07c52783          	lw	a5,124(a0)
    80008a78:	00078863          	beqz	a5,80008a88 <release+0x90>
    80008a7c:	100027f3          	csrr	a5,sstatus
    80008a80:	0027e793          	ori	a5,a5,2
    80008a84:	10079073          	csrw	sstatus,a5
    80008a88:	01813083          	ld	ra,24(sp)
    80008a8c:	01013403          	ld	s0,16(sp)
    80008a90:	00813483          	ld	s1,8(sp)
    80008a94:	00013903          	ld	s2,0(sp)
    80008a98:	02010113          	addi	sp,sp,32
    80008a9c:	00008067          	ret
    80008aa0:	00002517          	auipc	a0,0x2
    80008aa4:	cc050513          	addi	a0,a0,-832 # 8000a760 <digits+0x48>
    80008aa8:	fffff097          	auipc	ra,0xfffff
    80008aac:	154080e7          	jalr	340(ra) # 80007bfc <panic>
    80008ab0:	00002517          	auipc	a0,0x2
    80008ab4:	c9850513          	addi	a0,a0,-872 # 8000a748 <digits+0x30>
    80008ab8:	fffff097          	auipc	ra,0xfffff
    80008abc:	144080e7          	jalr	324(ra) # 80007bfc <panic>

0000000080008ac0 <holding>:
    80008ac0:	00052783          	lw	a5,0(a0)
    80008ac4:	00079663          	bnez	a5,80008ad0 <holding+0x10>
    80008ac8:	00000513          	li	a0,0
    80008acc:	00008067          	ret
    80008ad0:	fe010113          	addi	sp,sp,-32
    80008ad4:	00813823          	sd	s0,16(sp)
    80008ad8:	00913423          	sd	s1,8(sp)
    80008adc:	00113c23          	sd	ra,24(sp)
    80008ae0:	02010413          	addi	s0,sp,32
    80008ae4:	01053483          	ld	s1,16(a0)
    80008ae8:	ffffe097          	auipc	ra,0xffffe
    80008aec:	758080e7          	jalr	1880(ra) # 80007240 <mycpu>
    80008af0:	01813083          	ld	ra,24(sp)
    80008af4:	01013403          	ld	s0,16(sp)
    80008af8:	40a48533          	sub	a0,s1,a0
    80008afc:	00153513          	seqz	a0,a0
    80008b00:	00813483          	ld	s1,8(sp)
    80008b04:	02010113          	addi	sp,sp,32
    80008b08:	00008067          	ret

0000000080008b0c <push_off>:
    80008b0c:	fe010113          	addi	sp,sp,-32
    80008b10:	00813823          	sd	s0,16(sp)
    80008b14:	00113c23          	sd	ra,24(sp)
    80008b18:	00913423          	sd	s1,8(sp)
    80008b1c:	02010413          	addi	s0,sp,32
    80008b20:	100024f3          	csrr	s1,sstatus
    80008b24:	100027f3          	csrr	a5,sstatus
    80008b28:	ffd7f793          	andi	a5,a5,-3
    80008b2c:	10079073          	csrw	sstatus,a5
    80008b30:	ffffe097          	auipc	ra,0xffffe
    80008b34:	710080e7          	jalr	1808(ra) # 80007240 <mycpu>
    80008b38:	07852783          	lw	a5,120(a0)
    80008b3c:	02078663          	beqz	a5,80008b68 <push_off+0x5c>
    80008b40:	ffffe097          	auipc	ra,0xffffe
    80008b44:	700080e7          	jalr	1792(ra) # 80007240 <mycpu>
    80008b48:	07852783          	lw	a5,120(a0)
    80008b4c:	01813083          	ld	ra,24(sp)
    80008b50:	01013403          	ld	s0,16(sp)
    80008b54:	0017879b          	addiw	a5,a5,1
    80008b58:	06f52c23          	sw	a5,120(a0)
    80008b5c:	00813483          	ld	s1,8(sp)
    80008b60:	02010113          	addi	sp,sp,32
    80008b64:	00008067          	ret
    80008b68:	0014d493          	srli	s1,s1,0x1
    80008b6c:	ffffe097          	auipc	ra,0xffffe
    80008b70:	6d4080e7          	jalr	1748(ra) # 80007240 <mycpu>
    80008b74:	0014f493          	andi	s1,s1,1
    80008b78:	06952e23          	sw	s1,124(a0)
    80008b7c:	fc5ff06f          	j	80008b40 <push_off+0x34>

0000000080008b80 <pop_off>:
    80008b80:	ff010113          	addi	sp,sp,-16
    80008b84:	00813023          	sd	s0,0(sp)
    80008b88:	00113423          	sd	ra,8(sp)
    80008b8c:	01010413          	addi	s0,sp,16
    80008b90:	ffffe097          	auipc	ra,0xffffe
    80008b94:	6b0080e7          	jalr	1712(ra) # 80007240 <mycpu>
    80008b98:	100027f3          	csrr	a5,sstatus
    80008b9c:	0027f793          	andi	a5,a5,2
    80008ba0:	04079663          	bnez	a5,80008bec <pop_off+0x6c>
    80008ba4:	07852783          	lw	a5,120(a0)
    80008ba8:	02f05a63          	blez	a5,80008bdc <pop_off+0x5c>
    80008bac:	fff7871b          	addiw	a4,a5,-1
    80008bb0:	06e52c23          	sw	a4,120(a0)
    80008bb4:	00071c63          	bnez	a4,80008bcc <pop_off+0x4c>
    80008bb8:	07c52783          	lw	a5,124(a0)
    80008bbc:	00078863          	beqz	a5,80008bcc <pop_off+0x4c>
    80008bc0:	100027f3          	csrr	a5,sstatus
    80008bc4:	0027e793          	ori	a5,a5,2
    80008bc8:	10079073          	csrw	sstatus,a5
    80008bcc:	00813083          	ld	ra,8(sp)
    80008bd0:	00013403          	ld	s0,0(sp)
    80008bd4:	01010113          	addi	sp,sp,16
    80008bd8:	00008067          	ret
    80008bdc:	00002517          	auipc	a0,0x2
    80008be0:	b8450513          	addi	a0,a0,-1148 # 8000a760 <digits+0x48>
    80008be4:	fffff097          	auipc	ra,0xfffff
    80008be8:	018080e7          	jalr	24(ra) # 80007bfc <panic>
    80008bec:	00002517          	auipc	a0,0x2
    80008bf0:	b5c50513          	addi	a0,a0,-1188 # 8000a748 <digits+0x30>
    80008bf4:	fffff097          	auipc	ra,0xfffff
    80008bf8:	008080e7          	jalr	8(ra) # 80007bfc <panic>

0000000080008bfc <push_on>:
    80008bfc:	fe010113          	addi	sp,sp,-32
    80008c00:	00813823          	sd	s0,16(sp)
    80008c04:	00113c23          	sd	ra,24(sp)
    80008c08:	00913423          	sd	s1,8(sp)
    80008c0c:	02010413          	addi	s0,sp,32
    80008c10:	100024f3          	csrr	s1,sstatus
    80008c14:	100027f3          	csrr	a5,sstatus
    80008c18:	0027e793          	ori	a5,a5,2
    80008c1c:	10079073          	csrw	sstatus,a5
    80008c20:	ffffe097          	auipc	ra,0xffffe
    80008c24:	620080e7          	jalr	1568(ra) # 80007240 <mycpu>
    80008c28:	07852783          	lw	a5,120(a0)
    80008c2c:	02078663          	beqz	a5,80008c58 <push_on+0x5c>
    80008c30:	ffffe097          	auipc	ra,0xffffe
    80008c34:	610080e7          	jalr	1552(ra) # 80007240 <mycpu>
    80008c38:	07852783          	lw	a5,120(a0)
    80008c3c:	01813083          	ld	ra,24(sp)
    80008c40:	01013403          	ld	s0,16(sp)
    80008c44:	0017879b          	addiw	a5,a5,1
    80008c48:	06f52c23          	sw	a5,120(a0)
    80008c4c:	00813483          	ld	s1,8(sp)
    80008c50:	02010113          	addi	sp,sp,32
    80008c54:	00008067          	ret
    80008c58:	0014d493          	srli	s1,s1,0x1
    80008c5c:	ffffe097          	auipc	ra,0xffffe
    80008c60:	5e4080e7          	jalr	1508(ra) # 80007240 <mycpu>
    80008c64:	0014f493          	andi	s1,s1,1
    80008c68:	06952e23          	sw	s1,124(a0)
    80008c6c:	fc5ff06f          	j	80008c30 <push_on+0x34>

0000000080008c70 <pop_on>:
    80008c70:	ff010113          	addi	sp,sp,-16
    80008c74:	00813023          	sd	s0,0(sp)
    80008c78:	00113423          	sd	ra,8(sp)
    80008c7c:	01010413          	addi	s0,sp,16
    80008c80:	ffffe097          	auipc	ra,0xffffe
    80008c84:	5c0080e7          	jalr	1472(ra) # 80007240 <mycpu>
    80008c88:	100027f3          	csrr	a5,sstatus
    80008c8c:	0027f793          	andi	a5,a5,2
    80008c90:	04078463          	beqz	a5,80008cd8 <pop_on+0x68>
    80008c94:	07852783          	lw	a5,120(a0)
    80008c98:	02f05863          	blez	a5,80008cc8 <pop_on+0x58>
    80008c9c:	fff7879b          	addiw	a5,a5,-1
    80008ca0:	06f52c23          	sw	a5,120(a0)
    80008ca4:	07853783          	ld	a5,120(a0)
    80008ca8:	00079863          	bnez	a5,80008cb8 <pop_on+0x48>
    80008cac:	100027f3          	csrr	a5,sstatus
    80008cb0:	ffd7f793          	andi	a5,a5,-3
    80008cb4:	10079073          	csrw	sstatus,a5
    80008cb8:	00813083          	ld	ra,8(sp)
    80008cbc:	00013403          	ld	s0,0(sp)
    80008cc0:	01010113          	addi	sp,sp,16
    80008cc4:	00008067          	ret
    80008cc8:	00002517          	auipc	a0,0x2
    80008ccc:	ac050513          	addi	a0,a0,-1344 # 8000a788 <digits+0x70>
    80008cd0:	fffff097          	auipc	ra,0xfffff
    80008cd4:	f2c080e7          	jalr	-212(ra) # 80007bfc <panic>
    80008cd8:	00002517          	auipc	a0,0x2
    80008cdc:	a9050513          	addi	a0,a0,-1392 # 8000a768 <digits+0x50>
    80008ce0:	fffff097          	auipc	ra,0xfffff
    80008ce4:	f1c080e7          	jalr	-228(ra) # 80007bfc <panic>

0000000080008ce8 <__memset>:
    80008ce8:	ff010113          	addi	sp,sp,-16
    80008cec:	00813423          	sd	s0,8(sp)
    80008cf0:	01010413          	addi	s0,sp,16
    80008cf4:	1a060e63          	beqz	a2,80008eb0 <__memset+0x1c8>
    80008cf8:	40a007b3          	neg	a5,a0
    80008cfc:	0077f793          	andi	a5,a5,7
    80008d00:	00778693          	addi	a3,a5,7
    80008d04:	00b00813          	li	a6,11
    80008d08:	0ff5f593          	andi	a1,a1,255
    80008d0c:	fff6071b          	addiw	a4,a2,-1
    80008d10:	1b06e663          	bltu	a3,a6,80008ebc <__memset+0x1d4>
    80008d14:	1cd76463          	bltu	a4,a3,80008edc <__memset+0x1f4>
    80008d18:	1a078e63          	beqz	a5,80008ed4 <__memset+0x1ec>
    80008d1c:	00b50023          	sb	a1,0(a0)
    80008d20:	00100713          	li	a4,1
    80008d24:	1ae78463          	beq	a5,a4,80008ecc <__memset+0x1e4>
    80008d28:	00b500a3          	sb	a1,1(a0)
    80008d2c:	00200713          	li	a4,2
    80008d30:	1ae78a63          	beq	a5,a4,80008ee4 <__memset+0x1fc>
    80008d34:	00b50123          	sb	a1,2(a0)
    80008d38:	00300713          	li	a4,3
    80008d3c:	18e78463          	beq	a5,a4,80008ec4 <__memset+0x1dc>
    80008d40:	00b501a3          	sb	a1,3(a0)
    80008d44:	00400713          	li	a4,4
    80008d48:	1ae78263          	beq	a5,a4,80008eec <__memset+0x204>
    80008d4c:	00b50223          	sb	a1,4(a0)
    80008d50:	00500713          	li	a4,5
    80008d54:	1ae78063          	beq	a5,a4,80008ef4 <__memset+0x20c>
    80008d58:	00b502a3          	sb	a1,5(a0)
    80008d5c:	00700713          	li	a4,7
    80008d60:	18e79e63          	bne	a5,a4,80008efc <__memset+0x214>
    80008d64:	00b50323          	sb	a1,6(a0)
    80008d68:	00700e93          	li	t4,7
    80008d6c:	00859713          	slli	a4,a1,0x8
    80008d70:	00e5e733          	or	a4,a1,a4
    80008d74:	01059e13          	slli	t3,a1,0x10
    80008d78:	01c76e33          	or	t3,a4,t3
    80008d7c:	01859313          	slli	t1,a1,0x18
    80008d80:	006e6333          	or	t1,t3,t1
    80008d84:	02059893          	slli	a7,a1,0x20
    80008d88:	40f60e3b          	subw	t3,a2,a5
    80008d8c:	011368b3          	or	a7,t1,a7
    80008d90:	02859813          	slli	a6,a1,0x28
    80008d94:	0108e833          	or	a6,a7,a6
    80008d98:	03059693          	slli	a3,a1,0x30
    80008d9c:	003e589b          	srliw	a7,t3,0x3
    80008da0:	00d866b3          	or	a3,a6,a3
    80008da4:	03859713          	slli	a4,a1,0x38
    80008da8:	00389813          	slli	a6,a7,0x3
    80008dac:	00f507b3          	add	a5,a0,a5
    80008db0:	00e6e733          	or	a4,a3,a4
    80008db4:	000e089b          	sext.w	a7,t3
    80008db8:	00f806b3          	add	a3,a6,a5
    80008dbc:	00e7b023          	sd	a4,0(a5)
    80008dc0:	00878793          	addi	a5,a5,8
    80008dc4:	fed79ce3          	bne	a5,a3,80008dbc <__memset+0xd4>
    80008dc8:	ff8e7793          	andi	a5,t3,-8
    80008dcc:	0007871b          	sext.w	a4,a5
    80008dd0:	01d787bb          	addw	a5,a5,t4
    80008dd4:	0ce88e63          	beq	a7,a4,80008eb0 <__memset+0x1c8>
    80008dd8:	00f50733          	add	a4,a0,a5
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0017871b          	addiw	a4,a5,1
    80008de4:	0cc77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	0027871b          	addiw	a4,a5,2
    80008df4:	0ac77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	0037871b          	addiw	a4,a5,3
    80008e04:	0ac77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	0047871b          	addiw	a4,a5,4
    80008e14:	08c77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	0057871b          	addiw	a4,a5,5
    80008e24:	08c77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e28:	00e50733          	add	a4,a0,a4
    80008e2c:	00b70023          	sb	a1,0(a4)
    80008e30:	0067871b          	addiw	a4,a5,6
    80008e34:	06c77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e38:	00e50733          	add	a4,a0,a4
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	0077871b          	addiw	a4,a5,7
    80008e44:	06c77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e48:	00e50733          	add	a4,a0,a4
    80008e4c:	00b70023          	sb	a1,0(a4)
    80008e50:	0087871b          	addiw	a4,a5,8
    80008e54:	04c77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	0097871b          	addiw	a4,a5,9
    80008e64:	04c77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	00a7871b          	addiw	a4,a5,10
    80008e74:	02c77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e78:	00e50733          	add	a4,a0,a4
    80008e7c:	00b70023          	sb	a1,0(a4)
    80008e80:	00b7871b          	addiw	a4,a5,11
    80008e84:	02c77663          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e88:	00e50733          	add	a4,a0,a4
    80008e8c:	00b70023          	sb	a1,0(a4)
    80008e90:	00c7871b          	addiw	a4,a5,12
    80008e94:	00c77e63          	bgeu	a4,a2,80008eb0 <__memset+0x1c8>
    80008e98:	00e50733          	add	a4,a0,a4
    80008e9c:	00b70023          	sb	a1,0(a4)
    80008ea0:	00d7879b          	addiw	a5,a5,13
    80008ea4:	00c7f663          	bgeu	a5,a2,80008eb0 <__memset+0x1c8>
    80008ea8:	00f507b3          	add	a5,a0,a5
    80008eac:	00b78023          	sb	a1,0(a5)
    80008eb0:	00813403          	ld	s0,8(sp)
    80008eb4:	01010113          	addi	sp,sp,16
    80008eb8:	00008067          	ret
    80008ebc:	00b00693          	li	a3,11
    80008ec0:	e55ff06f          	j	80008d14 <__memset+0x2c>
    80008ec4:	00300e93          	li	t4,3
    80008ec8:	ea5ff06f          	j	80008d6c <__memset+0x84>
    80008ecc:	00100e93          	li	t4,1
    80008ed0:	e9dff06f          	j	80008d6c <__memset+0x84>
    80008ed4:	00000e93          	li	t4,0
    80008ed8:	e95ff06f          	j	80008d6c <__memset+0x84>
    80008edc:	00000793          	li	a5,0
    80008ee0:	ef9ff06f          	j	80008dd8 <__memset+0xf0>
    80008ee4:	00200e93          	li	t4,2
    80008ee8:	e85ff06f          	j	80008d6c <__memset+0x84>
    80008eec:	00400e93          	li	t4,4
    80008ef0:	e7dff06f          	j	80008d6c <__memset+0x84>
    80008ef4:	00500e93          	li	t4,5
    80008ef8:	e75ff06f          	j	80008d6c <__memset+0x84>
    80008efc:	00600e93          	li	t4,6
    80008f00:	e6dff06f          	j	80008d6c <__memset+0x84>

0000000080008f04 <__memmove>:
    80008f04:	ff010113          	addi	sp,sp,-16
    80008f08:	00813423          	sd	s0,8(sp)
    80008f0c:	01010413          	addi	s0,sp,16
    80008f10:	0e060863          	beqz	a2,80009000 <__memmove+0xfc>
    80008f14:	fff6069b          	addiw	a3,a2,-1
    80008f18:	0006881b          	sext.w	a6,a3
    80008f1c:	0ea5e863          	bltu	a1,a0,8000900c <__memmove+0x108>
    80008f20:	00758713          	addi	a4,a1,7
    80008f24:	00a5e7b3          	or	a5,a1,a0
    80008f28:	40a70733          	sub	a4,a4,a0
    80008f2c:	0077f793          	andi	a5,a5,7
    80008f30:	00f73713          	sltiu	a4,a4,15
    80008f34:	00174713          	xori	a4,a4,1
    80008f38:	0017b793          	seqz	a5,a5
    80008f3c:	00e7f7b3          	and	a5,a5,a4
    80008f40:	10078863          	beqz	a5,80009050 <__memmove+0x14c>
    80008f44:	00900793          	li	a5,9
    80008f48:	1107f463          	bgeu	a5,a6,80009050 <__memmove+0x14c>
    80008f4c:	0036581b          	srliw	a6,a2,0x3
    80008f50:	fff8081b          	addiw	a6,a6,-1
    80008f54:	02081813          	slli	a6,a6,0x20
    80008f58:	01d85893          	srli	a7,a6,0x1d
    80008f5c:	00858813          	addi	a6,a1,8
    80008f60:	00058793          	mv	a5,a1
    80008f64:	00050713          	mv	a4,a0
    80008f68:	01088833          	add	a6,a7,a6
    80008f6c:	0007b883          	ld	a7,0(a5)
    80008f70:	00878793          	addi	a5,a5,8
    80008f74:	00870713          	addi	a4,a4,8
    80008f78:	ff173c23          	sd	a7,-8(a4)
    80008f7c:	ff0798e3          	bne	a5,a6,80008f6c <__memmove+0x68>
    80008f80:	ff867713          	andi	a4,a2,-8
    80008f84:	02071793          	slli	a5,a4,0x20
    80008f88:	0207d793          	srli	a5,a5,0x20
    80008f8c:	00f585b3          	add	a1,a1,a5
    80008f90:	40e686bb          	subw	a3,a3,a4
    80008f94:	00f507b3          	add	a5,a0,a5
    80008f98:	06e60463          	beq	a2,a4,80009000 <__memmove+0xfc>
    80008f9c:	0005c703          	lbu	a4,0(a1)
    80008fa0:	00e78023          	sb	a4,0(a5)
    80008fa4:	04068e63          	beqz	a3,80009000 <__memmove+0xfc>
    80008fa8:	0015c603          	lbu	a2,1(a1)
    80008fac:	00100713          	li	a4,1
    80008fb0:	00c780a3          	sb	a2,1(a5)
    80008fb4:	04e68663          	beq	a3,a4,80009000 <__memmove+0xfc>
    80008fb8:	0025c603          	lbu	a2,2(a1)
    80008fbc:	00200713          	li	a4,2
    80008fc0:	00c78123          	sb	a2,2(a5)
    80008fc4:	02e68e63          	beq	a3,a4,80009000 <__memmove+0xfc>
    80008fc8:	0035c603          	lbu	a2,3(a1)
    80008fcc:	00300713          	li	a4,3
    80008fd0:	00c781a3          	sb	a2,3(a5)
    80008fd4:	02e68663          	beq	a3,a4,80009000 <__memmove+0xfc>
    80008fd8:	0045c603          	lbu	a2,4(a1)
    80008fdc:	00400713          	li	a4,4
    80008fe0:	00c78223          	sb	a2,4(a5)
    80008fe4:	00e68e63          	beq	a3,a4,80009000 <__memmove+0xfc>
    80008fe8:	0055c603          	lbu	a2,5(a1)
    80008fec:	00500713          	li	a4,5
    80008ff0:	00c782a3          	sb	a2,5(a5)
    80008ff4:	00e68663          	beq	a3,a4,80009000 <__memmove+0xfc>
    80008ff8:	0065c703          	lbu	a4,6(a1)
    80008ffc:	00e78323          	sb	a4,6(a5)
    80009000:	00813403          	ld	s0,8(sp)
    80009004:	01010113          	addi	sp,sp,16
    80009008:	00008067          	ret
    8000900c:	02061713          	slli	a4,a2,0x20
    80009010:	02075713          	srli	a4,a4,0x20
    80009014:	00e587b3          	add	a5,a1,a4
    80009018:	f0f574e3          	bgeu	a0,a5,80008f20 <__memmove+0x1c>
    8000901c:	02069613          	slli	a2,a3,0x20
    80009020:	02065613          	srli	a2,a2,0x20
    80009024:	fff64613          	not	a2,a2
    80009028:	00e50733          	add	a4,a0,a4
    8000902c:	00c78633          	add	a2,a5,a2
    80009030:	fff7c683          	lbu	a3,-1(a5)
    80009034:	fff78793          	addi	a5,a5,-1
    80009038:	fff70713          	addi	a4,a4,-1
    8000903c:	00d70023          	sb	a3,0(a4)
    80009040:	fec798e3          	bne	a5,a2,80009030 <__memmove+0x12c>
    80009044:	00813403          	ld	s0,8(sp)
    80009048:	01010113          	addi	sp,sp,16
    8000904c:	00008067          	ret
    80009050:	02069713          	slli	a4,a3,0x20
    80009054:	02075713          	srli	a4,a4,0x20
    80009058:	00170713          	addi	a4,a4,1
    8000905c:	00e50733          	add	a4,a0,a4
    80009060:	00050793          	mv	a5,a0
    80009064:	0005c683          	lbu	a3,0(a1)
    80009068:	00178793          	addi	a5,a5,1
    8000906c:	00158593          	addi	a1,a1,1
    80009070:	fed78fa3          	sb	a3,-1(a5)
    80009074:	fee798e3          	bne	a5,a4,80009064 <__memmove+0x160>
    80009078:	f89ff06f          	j	80009000 <__memmove+0xfc>
	...
