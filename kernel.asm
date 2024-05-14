
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ce013103          	ld	sp,-800(sp) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3c1060ef          	jal	ra,80006bdc <start>

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
    80001080:	435010ef          	jal	ra,80002cb4 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	4ec080e7          	jalr	1260(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    800016b8:	0000a797          	auipc	a5,0xa
    800016bc:	3b878793          	addi	a5,a5,952 # 8000ba70 <_ZTV3Sem+0x10>
    800016c0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    blocked_threads.free();
    800016c4:	00850513          	addi	a0,a0,8
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	9f0080e7          	jalr	-1552(ra) # 800030b8 <_ZN10ThreadList4freeEv>
}
    800016d0:	00813083          	ld	ra,8(sp)
    800016d4:	00013403          	ld	s0,0(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret

00000000800016e0 <_ZN3Sem5blockEv>:
void Sem::block() {
    800016e0:	fd010113          	addi	sp,sp,-48
    800016e4:	02113423          	sd	ra,40(sp)
    800016e8:	02813023          	sd	s0,32(sp)
    800016ec:	00913c23          	sd	s1,24(sp)
    800016f0:	01213823          	sd	s2,16(sp)
    800016f4:	01313423          	sd	s3,8(sp)
    800016f8:	03010413          	addi	s0,sp,48
    800016fc:	00050913          	mv	s2,a0
    TCB* old = TCB::running;
    80001700:	0000a997          	auipc	s3,0xa
    80001704:	5f89b983          	ld	s3,1528(s3) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001708:	0009b483          	ld	s1,0(s3)
    old -> set_status(TCB::BLOCKED);
    8000170c:	00200593          	li	a1,2
    80001710:	00048513          	mv	a0,s1
    80001714:	00002097          	auipc	ra,0x2
    80001718:	bf4080e7          	jalr	-1036(ra) # 80003308 <_ZN3TCB10set_statusENS_6StatusE>
    blocked_threads.push_back(old);
    8000171c:	00048593          	mv	a1,s1
    80001720:	00890513          	addi	a0,s2,8
    80001724:	00002097          	auipc	ra,0x2
    80001728:	8b0080e7          	jalr	-1872(ra) # 80002fd4 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	2fc080e7          	jalr	764(ra) # 80002a28 <_ZN9Scheduler3getEv>
    80001734:	00050593          	mv	a1,a0
    80001738:	00a9b023          	sd	a0,0(s3)
    TCB::yield(old, TCB::running);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00002097          	auipc	ra,0x2
    80001744:	a58080e7          	jalr	-1448(ra) # 80003198 <_ZN3TCB5yieldEPS_S0_>
}
    80001748:	02813083          	ld	ra,40(sp)
    8000174c:	02013403          	ld	s0,32(sp)
    80001750:	01813483          	ld	s1,24(sp)
    80001754:	01013903          	ld	s2,16(sp)
    80001758:	00813983          	ld	s3,8(sp)
    8000175c:	03010113          	addi	sp,sp,48
    80001760:	00008067          	ret

0000000080001764 <_ZN3Sem7unblockEv>:
void Sem::unblock() {
    80001764:	fe010113          	addi	sp,sp,-32
    80001768:	00113c23          	sd	ra,24(sp)
    8000176c:	00813823          	sd	s0,16(sp)
    80001770:	00913423          	sd	s1,8(sp)
    80001774:	02010413          	addi	s0,sp,32
    TCB* thread = blocked_threads.remove_first();
    80001778:	00850513          	addi	a0,a0,8
    8000177c:	00002097          	auipc	ra,0x2
    80001780:	8e8080e7          	jalr	-1816(ra) # 80003064 <_ZN10ThreadList12remove_firstEv>
    80001784:	00050493          	mv	s1,a0
    thread -> set_status(TCB::RUNNABLE);
    80001788:	00000593          	li	a1,0
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b7c080e7          	jalr	-1156(ra) # 80003308 <_ZN3TCB10set_statusENS_6StatusE>
    Scheduler::put(thread);
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	230080e7          	jalr	560(ra) # 800029c8 <_ZN9Scheduler3putEP3TCB>
}
    800017a0:	01813083          	ld	ra,24(sp)
    800017a4:	01013403          	ld	s0,16(sp)
    800017a8:	00813483          	ld	s1,8(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3Sem5closeEPS_>:
int Sem::close(Sem *handle) {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	02010413          	addi	s0,sp,32
    800017c8:	00050493          	mv	s1,a0
    if (!handle) return -1;
    800017cc:	04050663          	beqz	a0,80001818 <_ZN3Sem5closeEPS_+0x64>
    while (handle -> blocked_threads . get_first()) handle -> unblock();
    800017d0:	00848513          	addi	a0,s1,8
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	7ac080e7          	jalr	1964(ra) # 80002f80 <_ZN10ThreadList9get_firstEv>
    800017dc:	00050a63          	beqz	a0,800017f0 <_ZN3Sem5closeEPS_+0x3c>
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	f80080e7          	jalr	-128(ra) # 80001764 <_ZN3Sem7unblockEv>
    800017ec:	fe5ff06f          	j	800017d0 <_ZN3Sem5closeEPS_+0x1c>
    delete handle;
    800017f0:	0004b783          	ld	a5,0(s1)
    800017f4:	0087b783          	ld	a5,8(a5)
    800017f8:	00048513          	mv	a0,s1
    800017fc:	000780e7          	jalr	a5
    return 0;
    80001800:	00000513          	li	a0,0
}
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	02010113          	addi	sp,sp,32
    80001814:	00008067          	ret
    if (!handle) return -1;
    80001818:	fff00513          	li	a0,-1
    8000181c:	fe9ff06f          	j	80001804 <_ZN3Sem5closeEPS_+0x50>

0000000080001820 <_ZN3Sem4waitEPS_>:
    if (!handle) return -1;
    80001820:	04050663          	beqz	a0,8000186c <_ZN3Sem4waitEPS_+0x4c>
    if (--handle -> value < 0) {
    80001824:	01852783          	lw	a5,24(a0)
    80001828:	fff7879b          	addiw	a5,a5,-1
    8000182c:	00f52c23          	sw	a5,24(a0)
    80001830:	02079713          	slli	a4,a5,0x20
    80001834:	00074663          	bltz	a4,80001840 <_ZN3Sem4waitEPS_+0x20>
    return 0;
    80001838:	00000513          	li	a0,0
}
    8000183c:	00008067          	ret
int Sem::wait(Sem *handle) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16
        handle -> block();
    80001850:	00000097          	auipc	ra,0x0
    80001854:	e90080e7          	jalr	-368(ra) # 800016e0 <_ZN3Sem5blockEv>
    return 0;
    80001858:	00000513          	li	a0,0
}
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret
    if (!handle) return -1;
    8000186c:	fff00513          	li	a0,-1
    80001870:	00008067          	ret

0000000080001874 <_ZN3Sem6signalEPS_>:
    if (!handle) return -1;
    80001874:	04050663          	beqz	a0,800018c0 <_ZN3Sem6signalEPS_+0x4c>
    if (++handle -> value <= 0) handle -> unblock();
    80001878:	01852783          	lw	a5,24(a0)
    8000187c:	0017879b          	addiw	a5,a5,1
    80001880:	0007871b          	sext.w	a4,a5
    80001884:	00f52c23          	sw	a5,24(a0)
    80001888:	00e05663          	blez	a4,80001894 <_ZN3Sem6signalEPS_+0x20>
    return 0;
    8000188c:	00000513          	li	a0,0
}
    80001890:	00008067          	ret
int Sem::signal(Sem *handle) {
    80001894:	ff010113          	addi	sp,sp,-16
    80001898:	00113423          	sd	ra,8(sp)
    8000189c:	00813023          	sd	s0,0(sp)
    800018a0:	01010413          	addi	s0,sp,16
    if (++handle -> value <= 0) handle -> unblock();
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	ec0080e7          	jalr	-320(ra) # 80001764 <_ZN3Sem7unblockEv>
    return 0;
    800018ac:	00000513          	li	a0,0
}
    800018b0:	00813083          	ld	ra,8(sp)
    800018b4:	00013403          	ld	s0,0(sp)
    800018b8:	01010113          	addi	sp,sp,16
    800018bc:	00008067          	ret
    if (!handle) return -1;
    800018c0:	fff00513          	li	a0,-1
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3Sem9timedWaitEPS_m>:
int Sem::timedWait(Sem *handle, time_t) {
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00813423          	sd	s0,8(sp)
    800018d0:	01010413          	addi	s0,sp,16
}
    800018d4:	00000513          	li	a0,0
    800018d8:	00813403          	ld	s0,8(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3Sem7tryWaitEPS_>:
    if (handle -> value > 0) return wait(handle);
    800018e4:	01852783          	lw	a5,24(a0)
    800018e8:	00f04663          	bgtz	a5,800018f4 <_ZN3Sem7tryWaitEPS_+0x10>
    return 1;
    800018ec:	00100513          	li	a0,1
}
    800018f0:	00008067          	ret
int Sem::tryWait(Sem *handle) {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	00813023          	sd	s0,0(sp)
    80001900:	01010413          	addi	s0,sp,16
    if (handle -> value > 0) return wait(handle);
    80001904:	00000097          	auipc	ra,0x0
    80001908:	f1c080e7          	jalr	-228(ra) # 80001820 <_ZN3Sem4waitEPS_>
}
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00113423          	sd	ra,8(sp)
    80001924:	00813023          	sd	s0,0(sp)
    80001928:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	e2c080e7          	jalr	-468(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001934:	00001097          	auipc	ra,0x1
    80001938:	a78080e7          	jalr	-1416(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
}
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN3Sem4openEPPS_j>:
int Sem::open(Sem **handle, unsigned int init) {
    8000194c:	fe010113          	addi	sp,sp,-32
    80001950:	00113c23          	sd	ra,24(sp)
    80001954:	00813823          	sd	s0,16(sp)
    80001958:	00913423          	sd	s1,8(sp)
    8000195c:	01213023          	sd	s2,0(sp)
    80001960:	02010413          	addi	s0,sp,32
    80001964:	00050493          	mv	s1,a0
    80001968:	00058913          	mv	s2,a1
    *handle = new Sem(init);
    8000196c:	02000513          	li	a0,32
    80001970:	00000097          	auipc	ra,0x0
    80001974:	fac080e7          	jalr	-84(ra) # 8000191c <_ZN3SemnwEm>
    void operator delete(void* addr);

    virtual ~Sem ();

private:
    explicit Sem(unsigned init = 1) : value((int) init) {}
    80001978:	0000a797          	auipc	a5,0xa
    8000197c:	0f878793          	addi	a5,a5,248 # 8000ba70 <_ZTV3Sem+0x10>
    80001980:	00f53023          	sd	a5,0(a0)
#ifndef thread_list
#define thread_list

#include "thread.hpp"

class ThreadList {
    80001984:	00053423          	sd	zero,8(a0)
    80001988:	00053823          	sd	zero,16(a0)
    8000198c:	01252c23          	sw	s2,24(a0)
    80001990:	00a4b023          	sd	a0,0(s1)
    if (!(*handle)) return -1;
    80001994:	02050063          	beqz	a0,800019b4 <_ZN3Sem4openEPPS_j+0x68>
    return 0;
    80001998:	00000513          	li	a0,0
}
    8000199c:	01813083          	ld	ra,24(sp)
    800019a0:	01013403          	ld	s0,16(sp)
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	00013903          	ld	s2,0(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret
    if (!(*handle)) return -1;
    800019b4:	fff00513          	li	a0,-1
    800019b8:	fe5ff06f          	j	8000199c <_ZN3Sem4openEPPS_j+0x50>

00000000800019bc <_ZN3SemdlEPv>:

void Sem::operator delete(void *addr) {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	b4c080e7          	jalr	-1204(ra) # 80002518 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN3SemD0Ev>:
Sem::~Sem() {
    800019e4:	fe010113          	addi	sp,sp,-32
    800019e8:	00113c23          	sd	ra,24(sp)
    800019ec:	00813823          	sd	s0,16(sp)
    800019f0:	00913423          	sd	s1,8(sp)
    800019f4:	02010413          	addi	s0,sp,32
    800019f8:	00050493          	mv	s1,a0
}
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	cac080e7          	jalr	-852(ra) # 800016a8 <_ZN3SemD1Ev>
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	fb4080e7          	jalr	-76(ra) # 800019bc <_ZN3SemdlEPv>
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	01013403          	ld	s0,16(sp)
    80001a18:	00813483          	ld	s1,8(sp)
    80001a1c:	02010113          	addi	sp,sp,32
    80001a20:	00008067          	ret

0000000080001a24 <_Z19kernelConsoleOutputPv>:
}
/// kernel thread used for sending chars to console controller
void kernelConsoleOutput(void *args) {
    while (1) {
        /// Send data to Console Controller if data is ready
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a24:	0000a797          	auipc	a5,0xa
    80001a28:	2947b783          	ld	a5,660(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a2c:	0007b783          	ld	a5,0(a5)
    80001a30:	0007c783          	lbu	a5,0(a5)
    80001a34:	0207f793          	andi	a5,a5,32
    80001a38:	fe0786e3          	beqz	a5,80001a24 <_Z19kernelConsoleOutputPv>
void kernelConsoleOutput(void *args) {
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00113423          	sd	ra,8(sp)
    80001a44:	00813023          	sd	s0,0(sp)
    80001a48:	01010413          	addi	s0,sp,16
            char c = Con::getc_output();
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	3d0080e7          	jalr	976(ra) # 80001e1c <_ZN3Con11getc_outputEv>
            *(char *) CONSOLE_TX_DATA = c;
    80001a54:	0000a797          	auipc	a5,0xa
    80001a58:	27c7b783          	ld	a5,636(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	00a78023          	sb	a0,0(a5)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	2547b783          	ld	a5,596(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001a6c:	0007b783          	ld	a5,0(a5)
    80001a70:	0007c783          	lbu	a5,0(a5)
    80001a74:	0207f793          	andi	a5,a5,32
    80001a78:	fe0786e3          	beqz	a5,80001a64 <_Z19kernelConsoleOutputPv+0x40>
    80001a7c:	fd1ff06f          	j	80001a4c <_Z19kernelConsoleOutputPv+0x28>

0000000080001a80 <_Z15userMainWrapperPv>:
    char *p = s;
    while (*p != '\0') putc(*p++);
}

void userMain();
void userMainWrapper(void *args) {
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	00813023          	sd	s0,0(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    userMain();
    80001a90:	00005097          	auipc	ra,0x5
    80001a94:	8e4080e7          	jalr	-1820(ra) # 80006374 <_Z8userMainv>
}
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001aa8:	fd010113          	addi	sp,sp,-48
    80001aac:	02113423          	sd	ra,40(sp)
    80001ab0:	02813023          	sd	s0,32(sp)
    80001ab4:	00913c23          	sd	s1,24(sp)
    80001ab8:	01213823          	sd	s2,16(sp)
    80001abc:	01313423          	sd	s3,8(sp)
    80001ac0:	03010413          	addi	s0,sp,48
    80001ac4:	00050913          	mv	s2,a0
    __putc('\n');
    80001ac8:	00a00513          	li	a0,10
    80001acc:	00007097          	auipc	ra,0x7
    80001ad0:	1d0080e7          	jalr	464(ra) # 80008c9c <__putc>
    __putc('N');
    80001ad4:	04e00513          	li	a0,78
    80001ad8:	00007097          	auipc	ra,0x7
    80001adc:	1c4080e7          	jalr	452(ra) # 80008c9c <__putc>
    __putc(':');
    80001ae0:	03a00513          	li	a0,58
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	1b8080e7          	jalr	440(ra) # 80008c9c <__putc>
    __putc(' ');
    80001aec:	02000513          	li	a0,32
    80001af0:	00007097          	auipc	ra,0x7
    80001af4:	1ac080e7          	jalr	428(ra) # 80008c9c <__putc>
    if (!num) __putc('0');
    80001af8:	00090863          	beqz	s2,80001b08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001afc:	00000993          	li	s3,0
    80001b00:	00000493          	li	s1,0
    80001b04:	01c0006f          	j	80001b20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001b08:	03000513          	li	a0,48
    80001b0c:	00007097          	auipc	ra,0x7
    80001b10:	190080e7          	jalr	400(ra) # 80008c9c <__putc>
    80001b14:	fe9ff06f          	j	80001afc <_Z11printNumberm+0x54>
        num /= 10;
    80001b18:	00a00793          	li	a5,10
    80001b1c:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001b20:	02090463          	beqz	s2,80001b48 <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001b24:	00249793          	slli	a5,s1,0x2
    80001b28:	009784b3          	add	s1,a5,s1
    80001b2c:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001b30:	00a00493          	li	s1,10
    80001b34:	029974b3          	remu	s1,s2,s1
    80001b38:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001b3c:	fc049ee3          	bnez	s1,80001b18 <_Z11printNumberm+0x70>
    80001b40:	00198993          	addi	s3,s3,1
    80001b44:	fd5ff06f          	j	80001b18 <_Z11printNumberm+0x70>
    while (num2) {
    80001b48:	02048063          	beqz	s1,80001b68 <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001b4c:	00a00913          	li	s2,10
    80001b50:	0324f533          	remu	a0,s1,s2
    80001b54:	03050513          	addi	a0,a0,48
    80001b58:	00007097          	auipc	ra,0x7
    80001b5c:	144080e7          	jalr	324(ra) # 80008c9c <__putc>
        num2 /= 10;
    80001b60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001b64:	fe5ff06f          	j	80001b48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001b68:	fff98493          	addi	s1,s3,-1
    80001b6c:	00098c63          	beqz	s3,80001b84 <_Z11printNumberm+0xdc>
    80001b70:	03000513          	li	a0,48
    80001b74:	00007097          	auipc	ra,0x7
    80001b78:	128080e7          	jalr	296(ra) # 80008c9c <__putc>
    80001b7c:	00048993          	mv	s3,s1
    80001b80:	fe9ff06f          	j	80001b68 <_Z11printNumberm+0xc0>
}
    80001b84:	02813083          	ld	ra,40(sp)
    80001b88:	02013403          	ld	s0,32(sp)
    80001b8c:	01813483          	ld	s1,24(sp)
    80001b90:	01013903          	ld	s2,16(sp)
    80001b94:	00813983          	ld	s3,8(sp)
    80001b98:	03010113          	addi	sp,sp,48
    80001b9c:	00008067          	ret

0000000080001ba0 <_Z13workerForeverPv>:
void workerForever(void *args) {
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00813423          	sd	s0,8(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    while (1);
    80001bac:	0000006f          	j	80001bac <_Z13workerForeverPv+0xc>

0000000080001bb0 <_Z7workerAPv>:
void workerA(void *args) {
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	00813023          	sd	s0,0(sp)
    80001bbc:	01010413          	addi	s0,sp,16
        time_sleep(3);
    80001bc0:	00300513          	li	a0,3
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	a10080e7          	jalr	-1520(ra) # 800015d4 <_Z10time_sleepm>
        __putc('A');
    80001bcc:	04100513          	li	a0,65
    80001bd0:	00007097          	auipc	ra,0x7
    80001bd4:	0cc080e7          	jalr	204(ra) # 80008c9c <__putc>
    while (1) {
    80001bd8:	fe9ff06f          	j	80001bc0 <_Z7workerAPv+0x10>

0000000080001bdc <_Z7workerBPv>:
void workerB(void *args) {
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
        time_sleep(6);
    80001bec:	00600513          	li	a0,6
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	9e4080e7          	jalr	-1564(ra) # 800015d4 <_Z10time_sleepm>
        __putc('B');
    80001bf8:	04200513          	li	a0,66
    80001bfc:	00007097          	auipc	ra,0x7
    80001c00:	0a0080e7          	jalr	160(ra) # 80008c9c <__putc>
    while (1) {
    80001c04:	fe9ff06f          	j	80001bec <_Z7workerBPv+0x10>

0000000080001c08 <_Z13workerConsolePv>:
void workerConsole(void *args) {
    80001c08:	fd010113          	addi	sp,sp,-48
    80001c0c:	02113423          	sd	ra,40(sp)
    80001c10:	02813023          	sd	s0,32(sp)
    80001c14:	00913c23          	sd	s1,24(sp)
    80001c18:	03010413          	addi	s0,sp,48
    char s[] = "Hello world!\n";
    80001c1c:	00007797          	auipc	a5,0x7
    80001c20:	40478793          	addi	a5,a5,1028 # 80009020 <CONSOLE_STATUS+0x10>
    80001c24:	0007b703          	ld	a4,0(a5)
    80001c28:	fce43823          	sd	a4,-48(s0)
    80001c2c:	0087a703          	lw	a4,8(a5)
    80001c30:	fce42c23          	sw	a4,-40(s0)
    80001c34:	00c7d783          	lhu	a5,12(a5)
    80001c38:	fcf41e23          	sh	a5,-36(s0)
    char *p = s;
    80001c3c:	fd040493          	addi	s1,s0,-48
    while (*p != '\0') putc(*p++);
    80001c40:	0004c503          	lbu	a0,0(s1)
    80001c44:	00050a63          	beqz	a0,80001c58 <_Z13workerConsolePv+0x50>
    80001c48:	00148493          	addi	s1,s1,1
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	a20080e7          	jalr	-1504(ra) # 8000166c <_Z4putcc>
    80001c54:	fedff06f          	j	80001c40 <_Z13workerConsolePv+0x38>
}
    80001c58:	02813083          	ld	ra,40(sp)
    80001c5c:	02013403          	ld	s0,32(sp)
    80001c60:	01813483          	ld	s1,24(sp)
    80001c64:	03010113          	addi	sp,sp,48
    80001c68:	00008067          	ret

0000000080001c6c <main>:

int main() {
    80001c6c:	fb010113          	addi	sp,sp,-80
    80001c70:	04113423          	sd	ra,72(sp)
    80001c74:	04813023          	sd	s0,64(sp)
    80001c78:	05010413          	addi	s0,sp,80
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001c7c:	0000a797          	auipc	a5,0xa
    80001c80:	05c7b783          	ld	a5,92(a5) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001c84:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	af0080e7          	jalr	-1296(ra) # 80002778 <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	094080e7          	jalr	148(ra) # 80001d24 <_ZN3Con10initializeEv>

    thread_t threads[6];

    thread_create(&threads[0], nullptr, nullptr);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00000593          	li	a1,0
    80001ca0:	fc040513          	addi	a0,s0,-64
    80001ca4:	fffff097          	auipc	ra,0xfffff
    80001ca8:	654080e7          	jalr	1620(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001cac:	fc043703          	ld	a4,-64(s0)
    80001cb0:	0000a797          	auipc	a5,0xa
    80001cb4:	0487b783          	ld	a5,72(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001cb8:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001cbc:	00200793          	li	a5,2
    80001cc0:	1007a073          	csrs	sstatus,a5

    /// Enable software interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr); /// this gets blocked immediately
    80001cc4:	00000613          	li	a2,0
    80001cc8:	00000597          	auipc	a1,0x0
    80001ccc:	d5c58593          	addi	a1,a1,-676 # 80001a24 <_Z19kernelConsoleOutputPv>
    80001cd0:	fc840513          	addi	a0,s0,-56
    80001cd4:	fffff097          	auipc	ra,0xfffff
    80001cd8:	624080e7          	jalr	1572(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
//
//    while (true) thread_dispatch();

    /// Test Everything
    thread_t umain;
    thread_create(&umain, userMainWrapper, nullptr);
    80001cdc:	00000613          	li	a2,0
    80001ce0:	00000597          	auipc	a1,0x0
    80001ce4:	da058593          	addi	a1,a1,-608 # 80001a80 <_Z15userMainWrapperPv>
    80001ce8:	fb840513          	addi	a0,s0,-72
    80001cec:	fffff097          	auipc	ra,0xfffff
    80001cf0:	60c080e7          	jalr	1548(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    while (!umain -> is_finished()) thread_dispatch();
    80001cf4:	fb843503          	ld	a0,-72(s0)
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	7f8080e7          	jalr	2040(ra) # 800034f0 <_ZNK3TCB11is_finishedEv>
    80001d00:	00051863          	bnez	a0,80001d10 <main+0xa4>
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	6c8080e7          	jalr	1736(ra) # 800013cc <_Z15thread_dispatchv>
    80001d0c:	fe9ff06f          	j	80001cf4 <main+0x88>

    return 0;
    80001d10:	00000513          	li	a0,0
    80001d14:	04813083          	ld	ra,72(sp)
    80001d18:	04013403          	ld	s0,64(sp)
    80001d1c:	05010113          	addi	sp,sp,80
    80001d20:	00008067          	ret

0000000080001d24 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d24:	0000a797          	auipc	a5,0xa
    80001d28:	02c7c783          	lbu	a5,44(a5) # 8000bd50 <_ZN3Con11initializedE>
    80001d2c:	00078463          	beqz	a5,80001d34 <_ZN3Con10initializeEv+0x10>
    80001d30:	00008067          	ret
void Con::initialize() {
    80001d34:	fe010113          	addi	sp,sp,-32
    80001d38:	00113c23          	sd	ra,24(sp)
    80001d3c:	00813823          	sd	s0,16(sp)
    80001d40:	00913423          	sd	s1,8(sp)
    80001d44:	01213023          	sd	s2,0(sp)
    80001d48:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d4c:	00100793          	li	a5,1
    80001d50:	0000a717          	auipc	a4,0xa
    80001d54:	00f70023          	sb	a5,0(a4) # 8000bd50 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001d58:	21000513          	li	a0,528
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	b3c080e7          	jalr	-1220(ra) # 80002898 <_ZN13BoundedBuffernwEm>
    80001d64:	00050493          	mv	s1,a0
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	a98080e7          	jalr	-1384(ra) # 80002800 <_ZN13BoundedBufferC1Ev>
    80001d70:	0000a797          	auipc	a5,0xa
    80001d74:	fe97b423          	sd	s1,-24(a5) # 8000bd58 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001d78:	21000513          	li	a0,528
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	b1c080e7          	jalr	-1252(ra) # 80002898 <_ZN13BoundedBuffernwEm>
    80001d84:	00050493          	mv	s1,a0
    80001d88:	00001097          	auipc	ra,0x1
    80001d8c:	a78080e7          	jalr	-1416(ra) # 80002800 <_ZN13BoundedBufferC1Ev>
    80001d90:	0000a797          	auipc	a5,0xa
    80001d94:	fc97b823          	sd	s1,-48(a5) # 8000bd60 <_ZN3Con13output_bufferE>
    }
}
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	00013903          	ld	s2,0(sp)
    80001da8:	02010113          	addi	sp,sp,32
    80001dac:	00008067          	ret
    80001db0:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	b10080e7          	jalr	-1264(ra) # 800028c8 <_ZN13BoundedBufferdlEPv>
    80001dc0:	00090513          	mv	a0,s2
    80001dc4:	0000b097          	auipc	ra,0xb
    80001dc8:	104080e7          	jalr	260(ra) # 8000cec8 <_Unwind_Resume>
    80001dcc:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	af4080e7          	jalr	-1292(ra) # 800028c8 <_ZN13BoundedBufferdlEPv>
    80001ddc:	00090513          	mv	a0,s2
    80001de0:	0000b097          	auipc	ra,0xb
    80001de4:	0e8080e7          	jalr	232(ra) # 8000cec8 <_Unwind_Resume>

0000000080001de8 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    80001df8:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001dfc:	0000a517          	auipc	a0,0xa
    80001e00:	f6453503          	ld	a0,-156(a0) # 8000bd60 <_ZN3Con13output_bufferE>
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	aec080e7          	jalr	-1300(ra) # 800028f0 <_ZN13BoundedBuffer4putcEc>
}
    80001e0c:	00813083          	ld	ra,8(sp)
    80001e10:	00013403          	ld	s0,0(sp)
    80001e14:	01010113          	addi	sp,sp,16
    80001e18:	00008067          	ret

0000000080001e1c <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e2c:	0000a517          	auipc	a0,0xa
    80001e30:	f3453503          	ld	a0,-204(a0) # 8000bd60 <_ZN3Con13output_bufferE>
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	b28080e7          	jalr	-1240(ra) # 8000295c <_ZN13BoundedBuffer4getcEv>
}
    80001e3c:	00813083          	ld	ra,8(sp)
    80001e40:	00013403          	ld	s0,0(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00113423          	sd	ra,8(sp)
    80001e54:	00813023          	sd	s0,0(sp)
    80001e58:	01010413          	addi	s0,sp,16
    80001e5c:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001e60:	0000a517          	auipc	a0,0xa
    80001e64:	ef853503          	ld	a0,-264(a0) # 8000bd58 <_ZN3Con12input_bufferE>
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	a88080e7          	jalr	-1400(ra) # 800028f0 <_ZN13BoundedBuffer4putcEc>
}
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001e90:	0000a517          	auipc	a0,0xa
    80001e94:	ec853503          	ld	a0,-312(a0) # 8000bd58 <_ZN3Con12input_bufferE>
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	ac4080e7          	jalr	-1340(ra) # 8000295c <_ZN13BoundedBuffer4getcEv>
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN6ThreadD1Ev>:
    myHandle = nullptr;
    this -> body = body;
    this -> arg = arg;
}

Thread::~Thread() {
    80001eb0:	fe010113          	addi	sp,sp,-32
    80001eb4:	00113c23          	sd	ra,24(sp)
    80001eb8:	00813823          	sd	s0,16(sp)
    80001ebc:	00913423          	sd	s1,8(sp)
    80001ec0:	02010413          	addi	s0,sp,32
    80001ec4:	00050493          	mv	s1,a0
    80001ec8:	0000a797          	auipc	a5,0xa
    80001ecc:	c0078793          	addi	a5,a5,-1024 # 8000bac8 <_ZTV6Thread+0x10>
    80001ed0:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001ed4:	00853503          	ld	a0,8(a0)
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	618080e7          	jalr	1560(ra) # 800034f0 <_ZNK3TCB11is_finishedEv>
    80001ee0:	00050a63          	beqz	a0,80001ef4 <_ZN6ThreadD1Ev+0x44>
    80001ee4:	0084b503          	ld	a0,8(s1)
    80001ee8:	00050663          	beqz	a0,80001ef4 <_ZN6ThreadD1Ev+0x44>
    80001eec:	00001097          	auipc	ra,0x1
    80001ef0:	51c080e7          	jalr	1308(ra) # 80003408 <_ZN3TCBdlEPv>
}
    80001ef4:	01813083          	ld	ra,24(sp)
    80001ef8:	01013403          	ld	s0,16(sp)
    80001efc:	00813483          	ld	s1,8(sp)
    80001f00:	02010113          	addi	sp,sp,32
    80001f04:	00008067          	ret

0000000080001f08 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001f08:	0000a797          	auipc	a5,0xa
    80001f0c:	be878793          	addi	a5,a5,-1048 # 8000baf0 <_ZTV9Semaphore+0x10>
    80001f10:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001f14:	00853503          	ld	a0,8(a0)
    80001f18:	02050663          	beqz	a0,80001f44 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	52c080e7          	jalr	1324(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret
    80001f44:	00008067          	ret

0000000080001f48 <_Znwm>:
void* operator new(size_t size){
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	300080e7          	jalr	768(ra) # 80001258 <_Z9mem_allocm>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	32c080e7          	jalr	812(ra) # 800012ac <_Z8mem_freePv>
}
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001f98:	fe010113          	addi	sp,sp,-32
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00913423          	sd	s1,8(sp)
    80001fa8:	02010413          	addi	s0,sp,32
    80001fac:	00050493          	mv	s1,a0
}
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	f00080e7          	jalr	-256(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80001fb8:	00048513          	mv	a0,s1
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	fb4080e7          	jalr	-76(ra) # 80001f70 <_ZdlPv>
    80001fc4:	01813083          	ld	ra,24(sp)
    80001fc8:	01013403          	ld	s0,16(sp)
    80001fcc:	00813483          	ld	s1,8(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001fd8:	fe010113          	addi	sp,sp,-32
    80001fdc:	00113c23          	sd	ra,24(sp)
    80001fe0:	00813823          	sd	s0,16(sp)
    80001fe4:	00913423          	sd	s1,8(sp)
    80001fe8:	02010413          	addi	s0,sp,32
    80001fec:	00050493          	mv	s1,a0
}
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	f18080e7          	jalr	-232(ra) # 80001f08 <_ZN9SemaphoreD1Ev>
    80001ff8:	00048513          	mv	a0,s1
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	f74080e7          	jalr	-140(ra) # 80001f70 <_ZdlPv>
    80002004:	01813083          	ld	ra,24(sp)
    80002008:	01013403          	ld	s0,16(sp)
    8000200c:	00813483          	ld	s1,8(sp)
    80002010:	02010113          	addi	sp,sp,32
    80002014:	00008067          	ret

0000000080002018 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00813423          	sd	s0,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	0000a797          	auipc	a5,0xa
    80002028:	aa478793          	addi	a5,a5,-1372 # 8000bac8 <_ZTV6Thread+0x10>
    8000202c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002030:	00053423          	sd	zero,8(a0)
    this -> body = body;
    80002034:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    80002038:	00c53c23          	sd	a2,24(a0)
}
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN6Thread5startEv>:
int Thread::start() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80002058:	01853603          	ld	a2,24(a0)
    8000205c:	01053583          	ld	a1,16(a0)
    80002060:	00850513          	addi	a0,a0,8
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	294080e7          	jalr	660(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000207c:	ff010113          	addi	sp,sp,-16
    80002080:	00113423          	sd	ra,8(sp)
    80002084:	00813023          	sd	s0,0(sp)
    80002088:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	340080e7          	jalr	832(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002094:	00813083          	ld	ra,8(sp)
    80002098:	00013403          	ld	s0,0(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	520080e7          	jalr	1312(ra) # 800015d4 <_Z10time_sleepm>
}
    800020bc:	00813083          	ld	ra,8(sp)
    800020c0:	00013403          	ld	s0,0(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    800020d8:	0000a797          	auipc	a5,0xa
    800020dc:	9f078793          	addi	a5,a5,-1552 # 8000bac8 <_ZTV6Thread+0x10>
    800020e0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020e4:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800020e8:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800020ec:	00053c23          	sd	zero,24(a0)
}
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00113423          	sd	ra,8(sp)
    80002104:	00813023          	sd	s0,0(sp)
    80002108:	01010413          	addi	s0,sp,16
    8000210c:	0000a797          	auipc	a5,0xa
    80002110:	9e478793          	addi	a5,a5,-1564 # 8000baf0 <_ZTV9Semaphore+0x10>
    80002114:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002118:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    8000211c:	00850513          	addi	a0,a0,8
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	2e8080e7          	jalr	744(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80002128:	00813083          	ld	ra,8(sp)
    8000212c:	00013403          	ld	s0,0(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    80002138:	00853503          	ld	a0,8(a0)
    8000213c:	02050663          	beqz	a0,80002168 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    80002150:	fffff097          	auipc	ra,0xfffff
    80002154:	354080e7          	jalr	852(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    80002158:	00813083          	ld	ra,8(sp)
    8000215c:	00013403          	ld	s0,0(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret
    return -1;
    80002168:	fff00513          	li	a0,-1
}
    8000216c:	00008067          	ret

0000000080002170 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    80002170:	00853503          	ld	a0,8(a0)
    80002174:	02050663          	beqz	a0,800021a0 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00113423          	sd	ra,8(sp)
    80002180:	00813023          	sd	s0,0(sp)
    80002184:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	368080e7          	jalr	872(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret
    return -1;
    800021a0:	fff00513          	li	a0,-1
}
    800021a4:	00008067          	ret

00000000800021a8 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00113423          	sd	ra,8(sp)
    800021b0:	00813023          	sd	s0,0(sp)
    800021b4:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    800021b8:	00853503          	ld	a0,8(a0)
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	380080e7          	jalr	896(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    800021c4:	00813083          	ld	ra,8(sp)
    800021c8:	00013403          	ld	s0,0(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800021e4:	00853503          	ld	a0,8(a0)
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	3a0080e7          	jalr	928(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00813423          	sd	s0,8(sp)
    80002208:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    8000220c:	00813403          	ld	s0,8(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	01213023          	sd	s2,0(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
    80002234:	00058913          	mv	s2,a1
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	e94080e7          	jalr	-364(ra) # 800020cc <_ZN6ThreadC1Ev>
    80002240:	0000a797          	auipc	a5,0xa
    80002244:	85878793          	addi	a5,a5,-1960 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002248:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    8000224c:	0324b023          	sd	s2,32(s1)
}
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	00013903          	ld	s2,0(sp)
    80002260:	02010113          	addi	sp,sp,32
    80002264:	00008067          	ret

0000000080002268 <_ZN7Console4getcEv>:

char Console::getc() {
    80002268:	ff010113          	addi	sp,sp,-16
    8000226c:	00113423          	sd	ra,8(sp)
    80002270:	00813023          	sd	s0,0(sp)
    80002274:	01010413          	addi	s0,sp,16
    return ::getc();
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	3a8080e7          	jalr	936(ra) # 80001620 <_Z4getcv>
}
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    ::putc(c);
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	3cc080e7          	jalr	972(ra) # 8000166c <_Z4putcc>
}
    800022a8:	00813083          	ld	ra,8(sp)
    800022ac:	00013403          	ld	s0,0(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00813423          	sd	s0,8(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00009797          	auipc	a5,0x9
    800022fc:	7a078793          	addi	a5,a5,1952 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002300:	00f53023          	sd	a5,0(a0)
    80002304:	00000097          	auipc	ra,0x0
    80002308:	bac080e7          	jalr	-1108(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN14PeriodicThreadD0Ev>:
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	02010413          	addi	s0,sp,32
    80002330:	00050493          	mv	s1,a0
    80002334:	00009797          	auipc	a5,0x9
    80002338:	76478793          	addi	a5,a5,1892 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    8000233c:	00f53023          	sd	a5,0(a0)
    80002340:	00000097          	auipc	ra,0x0
    80002344:	b70080e7          	jalr	-1168(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80002348:	00048513          	mv	a0,s1
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	c24080e7          	jalr	-988(ra) # 80001f70 <_ZdlPv>
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00008067          	ret

0000000080002368 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated) {
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002374:	00853783          	ld	a5,8(a0)
    80002378:	02078463          	beqz	a5,800023a0 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x38>
    8000237c:	00b7b823          	sd	a1,16(a5)
    else freeSegHead = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    80002380:	01053783          	ld	a5,16(a0)
    80002384:	00078863          	beqz	a5,80002394 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x2c>
    80002388:	00061463          	bnez	a2,80002390 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x28>
    8000238c:	00853583          	ld	a1,8(a0)
    80002390:	00b7b423          	sd	a1,8(a5)
}
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret
    else freeSegHead = nextSeg;
    800023a0:	0000a797          	auipc	a5,0xa
    800023a4:	9cb7b423          	sd	a1,-1592(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    800023a8:	fd9ff06f          	j	80002380 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b+0x18>

00000000800023ac <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    800023ac:	fe010113          	addi	sp,sp,-32
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	00813823          	sd	s0,16(sp)
    800023b8:	00913423          	sd	s1,8(sp)
    800023bc:	01213023          	sd	s2,0(sp)
    800023c0:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    800023c4:	0e050e63          	beqz	a0,800024c0 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    800023c8:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    800023cc:	0000a497          	auipc	s1,0xa
    800023d0:	99c4b483          	ld	s1,-1636(s1) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    800023d4:	0a048e63          	beqz	s1,80002490 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if (tmp -> size < bytesToAllocate) {
    800023d8:	0004b783          	ld	a5,0(s1)
    800023dc:	0527e463          	bltu	a5,s2,80002424 <_ZN15MemoryAllocator9mem_allocEm+0x78>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    800023e0:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false);
    800023e4:	01800713          	li	a4,24
    800023e8:	04f76263          	bltu	a4,a5,8000242c <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800023ec:	00000613          	li	a2,0
    800023f0:	0104b583          	ld	a1,16(s1)
    800023f4:	00048513          	mv	a0,s1
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	f70080e7          	jalr	-144(ra) # 80002368 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    80002400:	0000a797          	auipc	a5,0xa
    80002404:	9707b783          	ld	a5,-1680(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002408:	04078863          	beqz	a5,80002458 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    8000240c:	0497fa63          	bgeu	a5,s1,80002460 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    80002410:	00078713          	mv	a4,a5
    80002414:	0107b783          	ld	a5,16(a5)
    80002418:	04078663          	beqz	a5,80002464 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    8000241c:	fe97eae3          	bltu	a5,s1,80002410 <_ZN15MemoryAllocator9mem_allocEm+0x64>
    80002420:	0440006f          	j	80002464 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
            tmp = tmp -> next;
    80002424:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    80002428:	fadff06f          	j	800023d4 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    8000242c:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    80002430:	0084b703          	ld	a4,8(s1)
    80002434:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    80002438:	0104b703          	ld	a4,16(s1)
    8000243c:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    80002440:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true);
    80002444:	00100613          	li	a2,1
    80002448:	00048513          	mv	a0,s1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	f1c080e7          	jalr	-228(ra) # 80002368 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    80002454:	fadff06f          	j	80002400 <_ZN15MemoryAllocator9mem_allocEm+0x54>
        MemSeg* tmp2 = nullptr;
    80002458:	00078713          	mv	a4,a5
    8000245c:	0080006f          	j	80002464 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002460:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002464:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    80002468:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    8000246c:	04070063          	beqz	a4,800024ac <_ZN15MemoryAllocator9mem_allocEm+0x100>
    80002470:	01073783          	ld	a5,16(a4)
    80002474:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    80002478:	02070e63          	beqz	a4,800024b4 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    8000247c:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002480:	0104b783          	ld	a5,16(s1)
    80002484:	00078463          	beqz	a5,8000248c <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002488:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    8000248c:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002490:	00048513          	mv	a0,s1
    80002494:	01813083          	ld	ra,24(sp)
    80002498:	01013403          	ld	s0,16(sp)
    8000249c:	00813483          	ld	s1,8(sp)
    800024a0:	00013903          	ld	s2,0(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    800024ac:	00070793          	mv	a5,a4
    800024b0:	fc5ff06f          	j	80002474 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
        else usedSegHead = newUsed;
    800024b4:	0000a797          	auipc	a5,0xa
    800024b8:	8a97be23          	sd	s1,-1860(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    800024bc:	fc5ff06f          	j	80002480 <_ZN15MemoryAllocator9mem_allocEm+0xd4>
    if (size <= 0) return nullptr;
    800024c0:	00000493          	li	s1,0
    800024c4:	fcdff06f          	j	80002490 <_ZN15MemoryAllocator9mem_allocEm+0xe4>

00000000800024c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    800024d4:	01053783          	ld	a5,16(a0)
    800024d8:	00078863          	beqz	a5,800024e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800024dc:	00053703          	ld	a4,0(a0)
    800024e0:	00e506b3          	add	a3,a0,a4
    800024e4:	00d78863          	beq	a5,a3,800024f4 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    800024f4:	0007b683          	ld	a3,0(a5)
    800024f8:	00d70733          	add	a4,a4,a3
    800024fc:	01870713          	addi	a4,a4,24
    80002500:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    80002504:	0107b783          	ld	a5,16(a5)
    80002508:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    8000250c:	fc078ee3          	beqz	a5,800024e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002510:	00a7b423          	sd	a0,8(a5)
}
    80002514:	fd5ff06f          	j	800024e8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

0000000080002518 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002518:	14050263          	beqz	a0,8000265c <_ZN15MemoryAllocator8mem_freeEPv+0x144>
int MemoryAllocator::mem_free(void *addr) {
    8000251c:	fd010113          	addi	sp,sp,-48
    80002520:	02113423          	sd	ra,40(sp)
    80002524:	02813023          	sd	s0,32(sp)
    80002528:	00913c23          	sd	s1,24(sp)
    8000252c:	01213823          	sd	s2,16(sp)
    80002530:	01313423          	sd	s3,8(sp)
    80002534:	03010413          	addi	s0,sp,48
    80002538:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000253c:	00009797          	auipc	a5,0x9
    80002540:	7847b783          	ld	a5,1924(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002544:	0007b783          	ld	a5,0(a5)
    80002548:	10f56e63          	bltu	a0,a5,80002664 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    8000254c:	00009797          	auipc	a5,0x9
    80002550:	7b47b783          	ld	a5,1972(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002554:	0007b783          	ld	a5,0(a5)
    80002558:	10a7ea63          	bltu	a5,a0,8000266c <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    if (!usedSegHead) return -2;
    8000255c:	0000a797          	auipc	a5,0xa
    80002560:	8147b783          	ld	a5,-2028(a5) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002564:	10078863          	beqz	a5,80002674 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    80002568:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    8000256c:	00078863          	beqz	a5,8000257c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002570:	08978e63          	beq	a5,s1,8000260c <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002574:	0107b783          	ld	a5,16(a5)
    80002578:	ff5ff06f          	j	8000256c <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    8000257c:	00000793          	li	a5,0
    if (!found) return -3;
    80002580:	0e078e63          	beqz	a5,8000267c <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    removeNode(segToFree, segToFree -> next, false);
    80002584:	00000613          	li	a2,0
    80002588:	ff893583          	ld	a1,-8(s2)
    8000258c:	00048513          	mv	a0,s1
    80002590:	00000097          	auipc	ra,0x0
    80002594:	dd8080e7          	jalr	-552(ra) # 80002368 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_b>
    if (!freeSegHead) {
    80002598:	00009797          	auipc	a5,0x9
    8000259c:	7d07b783          	ld	a5,2000(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    800025a0:	06078a63          	beqz	a5,80002614 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    else if ((char*) addr < (char*) freeSegHead) {
    800025a4:	08f4e463          	bltu	s1,a5,8000262c <_ZN15MemoryAllocator8mem_freeEPv+0x114>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    800025a8:	00078993          	mv	s3,a5
    800025ac:	0107b783          	ld	a5,16(a5)
    800025b0:	00078463          	beqz	a5,800025b8 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    800025b4:	fe97eae3          	bltu	a5,s1,800025a8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        segToFree -> prev = tmp;
    800025b8:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    800025bc:	0109b783          	ld	a5,16(s3)
    800025c0:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    800025c4:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    800025c8:	ff893783          	ld	a5,-8(s2)
    800025cc:	00078463          	beqz	a5,800025d4 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800025d0:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    800025d4:	00048513          	mv	a0,s1
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	ef0080e7          	jalr	-272(ra) # 800024c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    800025e0:	00098513          	mv	a0,s3
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	ee4080e7          	jalr	-284(ra) # 800024c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800025ec:	00000513          	li	a0,0
}
    800025f0:	02813083          	ld	ra,40(sp)
    800025f4:	02013403          	ld	s0,32(sp)
    800025f8:	01813483          	ld	s1,24(sp)
    800025fc:	01013903          	ld	s2,16(sp)
    80002600:	00813983          	ld	s3,8(sp)
    80002604:	03010113          	addi	sp,sp,48
    80002608:	00008067          	ret
            found = true;
    8000260c:	00100793          	li	a5,1
    80002610:	f71ff06f          	j	80002580 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    80002614:	00009797          	auipc	a5,0x9
    80002618:	7497ba23          	sd	s1,1876(a5) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    8000261c:	fe093c23          	sd	zero,-8(s2)
    80002620:	fe093823          	sd	zero,-16(s2)
    return 0;
    80002624:	00000513          	li	a0,0
    80002628:	fc9ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        segToFree -> prev = nullptr;
    8000262c:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    80002630:	00009797          	auipc	a5,0x9
    80002634:	73878793          	addi	a5,a5,1848 # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    80002638:	0007b703          	ld	a4,0(a5)
    8000263c:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    80002640:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    80002644:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    80002648:	00048513          	mv	a0,s1
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	e7c080e7          	jalr	-388(ra) # 800024c8 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002654:	00000513          	li	a0,0
    80002658:	f99ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    8000265c:	fff00513          	li	a0,-1
}
    80002660:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002664:	fff00513          	li	a0,-1
    80002668:	f89ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    8000266c:	fff00513          	li	a0,-1
    80002670:	f81ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!usedSegHead) return -2;
    80002674:	ffe00513          	li	a0,-2
    80002678:	f79ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    if (!found) return -3;
    8000267c:	ffd00513          	li	a0,-3
    80002680:	f71ff06f          	j	800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>

0000000080002684 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	00813823          	sd	s0,16(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	02010413          	addi	s0,sp,32
    __putc('\n');
    80002698:	00a00513          	li	a0,10
    8000269c:	00006097          	auipc	ra,0x6
    800026a0:	600080e7          	jalr	1536(ra) # 80008c9c <__putc>
    __putc('M');
    800026a4:	04d00513          	li	a0,77
    800026a8:	00006097          	auipc	ra,0x6
    800026ac:	5f4080e7          	jalr	1524(ra) # 80008c9c <__putc>
    __putc(':');
    800026b0:	03a00513          	li	a0,58
    800026b4:	00006097          	auipc	ra,0x6
    800026b8:	5e8080e7          	jalr	1512(ra) # 80008c9c <__putc>
    __putc(' ');
    800026bc:	02000513          	li	a0,32
    800026c0:	00006097          	auipc	ra,0x6
    800026c4:	5dc080e7          	jalr	1500(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800026c8:	00009497          	auipc	s1,0x9
    800026cc:	6a04b483          	ld	s1,1696(s1) # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    800026d0:	02048863          	beqz	s1,80002700 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    800026d4:	0004b503          	ld	a0,0(s1)
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	3d0080e7          	jalr	976(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    800026e0:	02000513          	li	a0,32
    800026e4:	00006097          	auipc	ra,0x6
    800026e8:	5b8080e7          	jalr	1464(ra) # 80008c9c <__putc>
        __putc('f');
    800026ec:	06600513          	li	a0,102
    800026f0:	00006097          	auipc	ra,0x6
    800026f4:	5ac080e7          	jalr	1452(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800026f8:	0104b483          	ld	s1,16(s1)
    800026fc:	fd5ff06f          	j	800026d0 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    80002700:	00900513          	li	a0,9
    80002704:	00006097          	auipc	ra,0x6
    80002708:	598080e7          	jalr	1432(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000270c:	00009497          	auipc	s1,0x9
    80002710:	6644b483          	ld	s1,1636(s1) # 8000bd70 <_ZN15MemoryAllocator11usedSegHeadE>
    80002714:	02048863          	beqz	s1,80002744 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    80002718:	0004b503          	ld	a0,0(s1)
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	38c080e7          	jalr	908(ra) # 80001aa8 <_Z11printNumberm>
        __putc(' ');
    80002724:	02000513          	li	a0,32
    80002728:	00006097          	auipc	ra,0x6
    8000272c:	574080e7          	jalr	1396(ra) # 80008c9c <__putc>
        __putc('u');
    80002730:	07500513          	li	a0,117
    80002734:	00006097          	auipc	ra,0x6
    80002738:	568080e7          	jalr	1384(ra) # 80008c9c <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    8000273c:	0104b483          	ld	s1,16(s1)
    80002740:	fd5ff06f          	j	80002714 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    80002744:	01813083          	ld	ra,24(sp)
    80002748:	01013403          	ld	s0,16(sp)
    8000274c:	00813483          	ld	s1,8(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret

0000000080002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00813423          	sd	s0,8(sp)
    80002760:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002764:	05750513          	addi	a0,a0,87
}
    80002768:	00655513          	srli	a0,a0,0x6
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret

0000000080002778 <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    80002778:	00009797          	auipc	a5,0x9
    8000277c:	6007b783          	ld	a5,1536(a5) # 8000bd78 <_ZN15MemoryAllocator8instanceE>
    80002780:	00078463          	beqz	a5,80002788 <_ZN15MemoryAllocator10initializeEv+0x10>
    80002784:	00008067          	ret
void MemoryAllocator::initialize() {
    80002788:	fe010113          	addi	sp,sp,-32
    8000278c:	00113c23          	sd	ra,24(sp)
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	5247b783          	ld	a5,1316(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027a4:	0007b783          	ld	a5,0(a5)
    800027a8:	00009497          	auipc	s1,0x9
    800027ac:	5c048493          	addi	s1,s1,1472 # 8000bd68 <_ZN15MemoryAllocator11freeSegHeadE>
    800027b0:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    800027b4:	00009717          	auipc	a4,0x9
    800027b8:	54c73703          	ld	a4,1356(a4) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x58>
    800027bc:	00073703          	ld	a4,0(a4)
    800027c0:	40f70733          	sub	a4,a4,a5
    800027c4:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    800027c8:	0004b783          	ld	a5,0(s1)
    800027cc:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    800027d0:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    800027d4:	00100513          	li	a0,1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	f80080e7          	jalr	-128(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	bcc080e7          	jalr	-1076(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
    800027e8:	00a4b823          	sd	a0,16(s1)
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    80002800:	fe010113          	addi	sp,sp,-32
    80002804:	00113c23          	sd	ra,24(sp)
    80002808:	00813823          	sd	s0,16(sp)
    8000280c:	00913423          	sd	s1,8(sp)
    80002810:	02010413          	addi	s0,sp,32
    80002814:	00050493          	mv	s1,a0
    80002818:	00052023          	sw	zero,0(a0)
    8000281c:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    80002820:	00000593          	li	a1,0
    80002824:	01050513          	addi	a0,a0,16
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	124080e7          	jalr	292(ra) # 8000194c <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    80002830:	1f400593          	li	a1,500
    80002834:	00848513          	addi	a0,s1,8
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	114080e7          	jalr	276(ra) # 8000194c <_ZN3Sem4openEPPS_j>
}
    80002840:	01813083          	ld	ra,24(sp)
    80002844:	01013403          	ld	s0,16(sp)
    80002848:	00813483          	ld	s1,8(sp)
    8000284c:	02010113          	addi	sp,sp,32
    80002850:	00008067          	ret

0000000080002854 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	00813823          	sd	s0,16(sp)
    80002860:	00913423          	sd	s1,8(sp)
    80002864:	02010413          	addi	s0,sp,32
    80002868:	00050493          	mv	s1,a0
    Sem::close(item_available);
    8000286c:	01053503          	ld	a0,16(a0)
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	f44080e7          	jalr	-188(ra) # 800017b4 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    80002878:	0084b503          	ld	a0,8(s1)
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	f38080e7          	jalr	-200(ra) # 800017b4 <_ZN3Sem5closeEPS_>
}
    80002884:	01813083          	ld	ra,24(sp)
    80002888:	01013403          	ld	s0,16(sp)
    8000288c:	00813483          	ld	s1,8(sp)
    80002890:	02010113          	addi	sp,sp,32
    80002894:	00008067          	ret

0000000080002898 <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	eb0080e7          	jalr	-336(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	afc080e7          	jalr	-1284(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	00813023          	sd	s0,0(sp)
    800028d4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	c40080e7          	jalr	-960(ra) # 80002518 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800028f0:	fe010113          	addi	sp,sp,-32
    800028f4:	00113c23          	sd	ra,24(sp)
    800028f8:	00813823          	sd	s0,16(sp)
    800028fc:	00913423          	sd	s1,8(sp)
    80002900:	01213023          	sd	s2,0(sp)
    80002904:	02010413          	addi	s0,sp,32
    80002908:	00050493          	mv	s1,a0
    8000290c:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    80002910:	00853503          	ld	a0,8(a0)
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	f0c080e7          	jalr	-244(ra) # 80001820 <_ZN3Sem4waitEPS_>
    array[tail] = c;
    8000291c:	0044a783          	lw	a5,4(s1)
    80002920:	00f48733          	add	a4,s1,a5
    80002924:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    80002928:	0017879b          	addiw	a5,a5,1
    8000292c:	1f400713          	li	a4,500
    80002930:	02e7e7bb          	remw	a5,a5,a4
    80002934:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    80002938:	0104b503          	ld	a0,16(s1)
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	f38080e7          	jalr	-200(ra) # 80001874 <_ZN3Sem6signalEPS_>
}
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	00013903          	ld	s2,0(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret

000000008000295c <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	00813823          	sd	s0,16(sp)
    80002968:	00913423          	sd	s1,8(sp)
    8000296c:	01213023          	sd	s2,0(sp)
    80002970:	02010413          	addi	s0,sp,32
    80002974:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002978:	01053503          	ld	a0,16(a0)
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	ea4080e7          	jalr	-348(ra) # 80001820 <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002984:	0004a783          	lw	a5,0(s1)
    80002988:	00f48733          	add	a4,s1,a5
    8000298c:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002990:	0017879b          	addiw	a5,a5,1
    80002994:	1f400713          	li	a4,500
    80002998:	02e7e7bb          	remw	a5,a5,a4
    8000299c:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    800029a0:	0084b503          	ld	a0,8(s1)
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	ed0080e7          	jalr	-304(ra) # 80001874 <_ZN3Sem6signalEPS_>
    return c;
}
    800029ac:	00090513          	mv	a0,s2
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	01013403          	ld	s0,16(sp)
    800029b8:	00813483          	ld	s1,8(sp)
    800029bc:	00013903          	ld	s2,0(sp)
    800029c0:	02010113          	addi	sp,sp,32
    800029c4:	00008067          	ret

00000000800029c8 <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	00050493          	mv	s1,a0
    if (tail_ready) {
    800029e0:	00009517          	auipc	a0,0x9
    800029e4:	3a053503          	ld	a0,928(a0) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    800029e8:	02050663          	beqz	a0,80002a14 <_ZN9Scheduler3putEP3TCB+0x4c>
        tail_ready -> set_next_ready(thread);
    800029ec:	00048593          	mv	a1,s1
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	88c080e7          	jalr	-1908(ra) # 8000327c <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    800029f8:	00009797          	auipc	a5,0x9
    800029fc:	3897b423          	sd	s1,904(a5) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
}
    80002a00:	01813083          	ld	ra,24(sp)
    80002a04:	01013403          	ld	s0,16(sp)
    80002a08:	00813483          	ld	s1,8(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002a14:	00009797          	auipc	a5,0x9
    80002a18:	36c78793          	addi	a5,a5,876 # 8000bd80 <_ZN9Scheduler10tail_readyE>
    80002a1c:	0097b023          	sd	s1,0(a5)
    80002a20:	0097b423          	sd	s1,8(a5)
}
    80002a24:	fddff06f          	j	80002a00 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002a28 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002a28:	fe010113          	addi	sp,sp,-32
    80002a2c:	00113c23          	sd	ra,24(sp)
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002a3c:	00009497          	auipc	s1,0x9
    80002a40:	34c4b483          	ld	s1,844(s1) # 8000bd88 <_ZN9Scheduler10head_readyE>
    80002a44:	02048663          	beqz	s1,80002a70 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	814080e7          	jalr	-2028(ra) # 80003260 <_ZNK3TCB14get_next_readyEv>
    80002a54:	00009797          	auipc	a5,0x9
    80002a58:	32a7ba23          	sd	a0,820(a5) # 8000bd88 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002a5c:	02050663          	beqz	a0,80002a88 <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002a60:	00000593          	li	a1,0
    80002a64:	00048513          	mv	a0,s1
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	814080e7          	jalr	-2028(ra) # 8000327c <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002a70:	00048513          	mv	a0,s1
    80002a74:	01813083          	ld	ra,24(sp)
    80002a78:	01013403          	ld	s0,16(sp)
    80002a7c:	00813483          	ld	s1,8(sp)
    80002a80:	02010113          	addi	sp,sp,32
    80002a84:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002a88:	00009797          	auipc	a5,0x9
    80002a8c:	2e07bc23          	sd	zero,760(a5) # 8000bd80 <_ZN9Scheduler10tail_readyE>
    80002a90:	fd1ff06f          	j	80002a60 <_ZN9Scheduler3getEv+0x38>

0000000080002a94 <_ZN9Scheduler13change_threadEv>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

void Scheduler::change_thread() {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	01213023          	sd	s2,0(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002aac:	00009917          	auipc	s2,0x9
    80002ab0:	24c93903          	ld	s2,588(s2) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ab4:	00093483          	ld	s1,0(s2)
    old -> set_status(TCB::SLEEPING);
    80002ab8:	00100593          	li	a1,1
    80002abc:	00048513          	mv	a0,s1
    80002ac0:	00001097          	auipc	ra,0x1
    80002ac4:	848080e7          	jalr	-1976(ra) # 80003308 <_ZN3TCB10set_statusENS_6StatusE>
    TCB::running = Scheduler::get();
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	f60080e7          	jalr	-160(ra) # 80002a28 <_ZN9Scheduler3getEv>
    80002ad0:	00a93023          	sd	a0,0(s2)
    if (old != TCB::running) TCB::yield(old, TCB::running);
    80002ad4:	00a48a63          	beq	s1,a0,80002ae8 <_ZN9Scheduler13change_threadEv+0x54>
    80002ad8:	00050593          	mv	a1,a0
    80002adc:	00048513          	mv	a0,s1
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	6b8080e7          	jalr	1720(ra) # 80003198 <_ZN3TCB5yieldEPS_S0_>
}
    80002ae8:	01813083          	ld	ra,24(sp)
    80002aec:	01013403          	ld	s0,16(sp)
    80002af0:	00813483          	ld	s1,8(sp)
    80002af4:	00013903          	ld	s2,0(sp)
    80002af8:	02010113          	addi	sp,sp,32
    80002afc:	00008067          	ret

0000000080002b00 <_ZN9Scheduler12put_to_sleepEm>:
int Scheduler::put_to_sleep(time_t time) {
    80002b00:	fc010113          	addi	sp,sp,-64
    80002b04:	02113c23          	sd	ra,56(sp)
    80002b08:	02813823          	sd	s0,48(sp)
    80002b0c:	02913423          	sd	s1,40(sp)
    80002b10:	03213023          	sd	s2,32(sp)
    80002b14:	01313c23          	sd	s3,24(sp)
    80002b18:	01413823          	sd	s4,16(sp)
    80002b1c:	01513423          	sd	s5,8(sp)
    80002b20:	04010413          	addi	s0,sp,64
    80002b24:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002b28:	00009797          	auipc	a5,0x9
    80002b2c:	1d07b783          	ld	a5,464(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b30:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002b34:	00009497          	auipc	s1,0x9
    80002b38:	25c4b483          	ld	s1,604(s1) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
    80002b3c:	02048e63          	beqz	s1,80002b78 <_ZN9Scheduler12put_to_sleepEm+0x78>
    time_t current_time = 0;
    80002b40:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002b44:	00000a13          	li	s4,0
    while (tmp) {
    80002b48:	0e048063          	beqz	s1,80002c28 <_ZN9Scheduler12put_to_sleepEm+0x128>
        current_time += tmp -> get_time_to_sleep();
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	79c080e7          	jalr	1948(ra) # 800032ec <_ZNK3TCB17get_time_to_sleepEv>
    80002b58:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002b5c:	0529e863          	bltu	s3,s2,80002bac <_ZN9Scheduler12put_to_sleepEm+0xac>
        tmp = tmp -> get_next_sleeping();
    80002b60:	00048513          	mv	a0,s1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	750080e7          	jalr	1872(ra) # 800032b4 <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002b6c:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002b70:	00050493          	mv	s1,a0
    while (tmp) {
    80002b74:	fd5ff06f          	j	80002b48 <_ZN9Scheduler12put_to_sleepEm+0x48>
        head_sleeping = thread;
    80002b78:	00009797          	auipc	a5,0x9
    80002b7c:	2157bc23          	sd	s5,536(a5) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002b80:	00000593          	li	a1,0
    80002b84:	000a8513          	mv	a0,s5
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	710080e7          	jalr	1808(ra) # 80003298 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002b90:	00098593          	mv	a1,s3
    80002b94:	000a8513          	mv	a0,s5
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	738080e7          	jalr	1848(ra) # 800032d0 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	ef4080e7          	jalr	-268(ra) # 80002a94 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002ba8:	0b80006f          	j	80002c60 <_ZN9Scheduler12put_to_sleepEm+0x160>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	73c080e7          	jalr	1852(ra) # 800032ec <_ZNK3TCB17get_time_to_sleepEv>
    80002bb8:	41250933          	sub	s2,a0,s2
    80002bbc:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002bc0:	00098593          	mv	a1,s3
    80002bc4:	000a8513          	mv	a0,s5
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	708080e7          	jalr	1800(ra) # 800032d0 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002bd0:	00048593          	mv	a1,s1
    80002bd4:	000a8513          	mv	a0,s5
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	6c0080e7          	jalr	1728(ra) # 80003298 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002be0:	020a0e63          	beqz	s4,80002c1c <_ZN9Scheduler12put_to_sleepEm+0x11c>
    80002be4:	000a8593          	mv	a1,s5
    80002be8:	000a0513          	mv	a0,s4
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	6ac080e7          	jalr	1708(ra) # 80003298 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	6f4080e7          	jalr	1780(ra) # 800032ec <_ZNK3TCB17get_time_to_sleepEv>
    80002c00:	413505b3          	sub	a1,a0,s3
    80002c04:	00048513          	mv	a0,s1
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	6c8080e7          	jalr	1736(ra) # 800032d0 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	e84080e7          	jalr	-380(ra) # 80002a94 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002c18:	0480006f          	j	80002c60 <_ZN9Scheduler12put_to_sleepEm+0x160>
            else head_sleeping = thread;
    80002c1c:	00009797          	auipc	a5,0x9
    80002c20:	1757ba23          	sd	s5,372(a5) # 8000bd90 <_ZN9Scheduler13head_sleepingE>
    80002c24:	fd1ff06f          	j	80002bf4 <_ZN9Scheduler12put_to_sleepEm+0xf4>
    thread -> set_time_to_sleep(time - current_time);
    80002c28:	412985b3          	sub	a1,s3,s2
    80002c2c:	000a8513          	mv	a0,s5
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	6a0080e7          	jalr	1696(ra) # 800032d0 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002c38:	000a8593          	mv	a1,s5
    80002c3c:	000a0513          	mv	a0,s4
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	658080e7          	jalr	1624(ra) # 80003298 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002c48:	00000593          	li	a1,0
    80002c4c:	000a8513          	mv	a0,s5
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	648080e7          	jalr	1608(ra) # 80003298 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	e3c080e7          	jalr	-452(ra) # 80002a94 <_ZN9Scheduler13change_threadEv>
}
    80002c60:	00000513          	li	a0,0
    80002c64:	03813083          	ld	ra,56(sp)
    80002c68:	03013403          	ld	s0,48(sp)
    80002c6c:	02813483          	ld	s1,40(sp)
    80002c70:	02013903          	ld	s2,32(sp)
    80002c74:	01813983          	ld	s3,24(sp)
    80002c78:	01013a03          	ld	s4,16(sp)
    80002c7c:	00813a83          	ld	s5,8(sp)
    80002c80:	04010113          	addi	sp,sp,64
    80002c84:	00008067          	ret

0000000080002c88 <_ZN5RiscV10popSppSpieEb>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie(bool return_to_user_mode) {
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    if (return_to_user_mode) mc_sstatus(SSTATUS_SPP);
    80002c94:	00050663          	beqz	a0,80002ca0 <_ZN5RiscV10popSppSpieEb+0x18>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002c98:	10000793          	li	a5,256
    80002c9c:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002ca0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002ca4:	10200073          	sret
}
    80002ca8:	00813403          	ld	s0,8(sp)
    80002cac:	01010113          	addi	sp,sp,16
    80002cb0:	00008067          	ret

0000000080002cb4 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002cb4:	f9010113          	addi	sp,sp,-112
    80002cb8:	06113423          	sd	ra,104(sp)
    80002cbc:	06813023          	sd	s0,96(sp)
    80002cc0:	04913c23          	sd	s1,88(sp)
    80002cc4:	05213823          	sd	s2,80(sp)
    80002cc8:	05313423          	sd	s3,72(sp)
    80002ccc:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002cd0:	00050813          	mv	a6,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002cd4:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002cd8:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002cdc:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002ce0:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002ce4:	142027f3          	csrr	a5,scause
    80002ce8:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80002cec:	f9843703          	ld	a4,-104(s0)

    uint64 scause = read_scause();

    /// interrupt caused by Timer
    if (scause == SOFTWARE_INTERRUPT) {
    80002cf0:	fff00793          	li	a5,-1
    80002cf4:	03f79793          	slli	a5,a5,0x3f
    80002cf8:	00178793          	addi	a5,a5,1
    80002cfc:	04f70263          	beq	a4,a5,80002d40 <_ZN5RiscV22handle_supervisor_trapEv+0x8c>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002d00:	fff00793          	li	a5,-1
    80002d04:	03f79793          	slli	a5,a5,0x3f
    80002d08:	00978793          	addi	a5,a5,9
    80002d0c:	0ef70863          	beq	a4,a5,80002dfc <_ZN5RiscV22handle_supervisor_trapEv+0x148>
        write_sstatus(sstatus);
        mc_sip(SIP_SEIP);
    }

    /// illegal instruction
    else if (scause == INVALID_INTERRUPT) {
    80002d10:	00200793          	li	a5,2
    80002d14:	16f70463          	beq	a4,a5,80002e7c <_ZN5RiscV22handle_supervisor_trapEv+0x1c8>
        __asm__ volatile("mv a0, %0" : : "r"(val));
        return;
    }

    /// interrupt from supervisor / user mode
    else if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002d18:	ff870713          	addi	a4,a4,-8
    80002d1c:	00100793          	li	a5,1
    80002d20:	16e7f463          	bgeu	a5,a4,80002e88 <_ZN5RiscV22handle_supervisor_trapEv+0x1d4>
        }

        write_sepc(sepc);
        write_sstatus(sstatus);
    }
    80002d24:	06813083          	ld	ra,104(sp)
    80002d28:	06013403          	ld	s0,96(sp)
    80002d2c:	05813483          	ld	s1,88(sp)
    80002d30:	05013903          	ld	s2,80(sp)
    80002d34:	04813983          	ld	s3,72(sp)
    80002d38:	07010113          	addi	sp,sp,112
    80002d3c:	00008067          	ret
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002d40:	00200793          	li	a5,2
    80002d44:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002d48:	00009797          	auipc	a5,0x9
    80002d4c:	f807b783          	ld	a5,-128(a5) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d50:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80002d54:	04048463          	beqz	s1,80002d9c <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
            --first_waiting -> time_to_sleep;
    80002d58:	0484b783          	ld	a5,72(s1)
    80002d5c:	fff78793          	addi	a5,a5,-1
    80002d60:	04f4b423          	sd	a5,72(s1)
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002d64:	02048c63          	beqz	s1,80002d9c <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
    80002d68:	0484b783          	ld	a5,72(s1)
    80002d6c:	02079863          	bnez	a5,80002d9c <_ZN5RiscV22handle_supervisor_trapEv+0xe8>
                Scheduler::put(first_waiting);
    80002d70:	00048513          	mv	a0,s1
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	c54080e7          	jalr	-940(ra) # 800029c8 <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80002d7c:	0004ac23          	sw	zero,24(s1)
                first_waiting = first_waiting -> next_sleeping;
    80002d80:	0504b783          	ld	a5,80(s1)
                tmp -> next_sleeping = nullptr;
    80002d84:	0404b823          	sd	zero,80(s1)
                Scheduler::head_sleeping = first_waiting;
    80002d88:	00009717          	auipc	a4,0x9
    80002d8c:	f4073703          	ld	a4,-192(a4) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d90:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80002d94:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep <= 0) {
    80002d98:	fcdff06f          	j	80002d64 <_ZN5RiscV22handle_supervisor_trapEv+0xb0>
        ++TCB::time_slice_counter;
    80002d9c:	00009717          	auipc	a4,0x9
    80002da0:	f4c73703          	ld	a4,-180(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002da4:	00073783          	ld	a5,0(a4)
    80002da8:	00178793          	addi	a5,a5,1
    80002dac:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80002db0:	00009717          	auipc	a4,0x9
    80002db4:	f4873703          	ld	a4,-184(a4) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002db8:	00073703          	ld	a4,0(a4)
    80002dbc:	03873703          	ld	a4,56(a4)
    80002dc0:	f6e7e2e3          	bltu	a5,a4,80002d24 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002dc4:	141027f3          	csrr	a5,sepc
    80002dc8:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002dcc:	fa843483          	ld	s1,-88(s0)
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002dd0:	100027f3          	csrr	a5,sstatus
    80002dd4:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002dd8:	fa043903          	ld	s2,-96(s0)
            TCB::time_slice_counter = 0;
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	f0c7b783          	ld	a5,-244(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002de4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	40c080e7          	jalr	1036(ra) # 800031f4 <_ZN3TCB8dispatchEv>
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002df0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002df4:	14149073          	csrw	sepc,s1
}
    80002df8:	f2dff06f          	j	80002d24 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002dfc:	141027f3          	csrr	a5,sepc
    80002e00:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002e04:	fb843983          	ld	s3,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e08:	100027f3          	csrr	a5,sstatus
    80002e0c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002e10:	fb043903          	ld	s2,-80(s0)
        int irq = plic_claim();
    80002e14:	00004097          	auipc	ra,0x4
    80002e18:	620080e7          	jalr	1568(ra) # 80007434 <plic_claim>
    80002e1c:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    80002e20:	00a00793          	li	a5,10
    80002e24:	02f50263          	beq	a0,a5,80002e48 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        plic_complete(irq);
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00004097          	auipc	ra,0x4
    80002e30:	640080e7          	jalr	1600(ra) # 8000746c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002e34:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002e38:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002e3c:	20000793          	li	a5,512
    80002e40:	1447b073          	csrc	sip,a5
}
    80002e44:	ee1ff06f          	j	80002d24 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e48:	00009797          	auipc	a5,0x9
    80002e4c:	e707b783          	ld	a5,-400(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e50:	0007b783          	ld	a5,0(a5)
    80002e54:	0007c783          	lbu	a5,0(a5)
    80002e58:	0017f793          	andi	a5,a5,1
    80002e5c:	fc0786e3          	beqz	a5,80002e28 <_ZN5RiscV22handle_supervisor_trapEv+0x174>
                char c = *(char *) CONSOLE_RX_DATA;
    80002e60:	00009797          	auipc	a5,0x9
    80002e64:	e507b783          	ld	a5,-432(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e68:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    80002e6c:	0007c503          	lbu	a0,0(a5)
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	fdc080e7          	jalr	-36(ra) # 80001e4c <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002e78:	fd1ff06f          	j	80002e48 <_ZN5RiscV22handle_supervisor_trapEv+0x194>
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002e7c:	00100793          	li	a5,1
    80002e80:	00078513          	mv	a0,a5
        return;
    80002e84:	ea1ff06f          	j	80002d24 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002e88:	141027f3          	csrr	a5,sepc
    80002e8c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002e90:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = read_sepc() + 4;
    80002e94:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002e98:	100027f3          	csrr	a5,sstatus
    80002e9c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002ea0:	fc043903          	ld	s2,-64(s0)
        switch(syscall_code) {
    80002ea4:	04200793          	li	a5,66
    80002ea8:	0307e463          	bltu	a5,a6,80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
    80002eac:	00281813          	slli	a6,a6,0x2
    80002eb0:	00006717          	auipc	a4,0x6
    80002eb4:	18070713          	addi	a4,a4,384 # 80009030 <CONSOLE_STATUS+0x20>
    80002eb8:	00e80833          	add	a6,a6,a4
    80002ebc:	00082783          	lw	a5,0(a6)
    80002ec0:	00e787b3          	add	a5,a5,a4
    80002ec4:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	4e4080e7          	jalr	1252(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002ed0:	14149073          	csrw	sepc,s1
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002ed4:	10091073          	csrw	sstatus,s2
}
    80002ed8:	e4dff06f          	j	80002d24 <_ZN5RiscV22handle_supervisor_trapEv+0x70>
                MemoryAllocator::mem_free((void *) a1);
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	63c080e7          	jalr	1596(ra) # 80002518 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002ee4:	fedff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	548080e7          	jalr	1352(ra) # 80003430 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002ef0:	fe1ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::thread_exit();
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	430080e7          	jalr	1072(ra) # 80003324 <_ZN3TCB11thread_exitEv>
                break;
    80002efc:	fd5ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                TCB::dispatch();
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	2f4080e7          	jalr	756(ra) # 800031f4 <_ZN3TCB8dispatchEv>
                break;
    80002f08:	fc9ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::open((sem_t *) a1, a2);
    80002f0c:	0005859b          	sext.w	a1,a1
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	a3c080e7          	jalr	-1476(ra) # 8000194c <_ZN3Sem4openEPPS_j>
                break;
    80002f18:	fb9ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::close((sem_t) a1);
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	898080e7          	jalr	-1896(ra) # 800017b4 <_ZN3Sem5closeEPS_>
                break;
    80002f24:	fadff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::wait((sem_t) a1);
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	8f8080e7          	jalr	-1800(ra) # 80001820 <_ZN3Sem4waitEPS_>
                break;
    80002f30:	fa1ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::signal((sem_t) a1);
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	940080e7          	jalr	-1728(ra) # 80001874 <_ZN3Sem6signalEPS_>
                break;
    80002f3c:	f95ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	988080e7          	jalr	-1656(ra) # 800018c8 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002f48:	f89ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Sem::tryWait((sem_t) a1);
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	998080e7          	jalr	-1640(ra) # 800018e4 <_ZN3Sem7tryWaitEPS_>
                break;
    80002f54:	f7dff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Scheduler::put_to_sleep((time_t) a1);
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	ba8080e7          	jalr	-1112(ra) # 80002b00 <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002f60:	f71ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::getc_input();
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	f1c080e7          	jalr	-228(ra) # 80001e80 <_ZN3Con10getc_inputEv>
                break;
    80002f6c:	f65ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>
                Con::putc_output((char) a1);
    80002f70:	0ff57513          	andi	a0,a0,255
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	e74080e7          	jalr	-396(ra) # 80001de8 <_ZN3Con11putc_outputEc>
                break;
    80002f7c:	f55ff06f          	j	80002ed0 <_ZN5RiscV22handle_supervisor_trapEv+0x21c>

0000000080002f80 <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    80002f80:	ff010113          	addi	sp,sp,-16
    80002f84:	00813423          	sd	s0,8(sp)
    80002f88:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80002f8c:	00053503          	ld	a0,0(a0)
    80002f90:	00050463          	beqz	a0,80002f98 <_ZN10ThreadList9get_firstEv+0x18>
    80002f94:	00053503          	ld	a0,0(a0)
}
    80002f98:	00813403          	ld	s0,8(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN10ThreadList4NodenwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00113423          	sd	ra,8(sp)
    80002fac:	00813023          	sd	s0,0(sp)
    80002fb0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	7a4080e7          	jalr	1956(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	3f0080e7          	jalr	1008(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
}
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	01213023          	sd	s2,0(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    80002fec:	00050493          	mv	s1,a0
    80002ff0:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80002ff4:	01000513          	li	a0,16
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	fac080e7          	jalr	-84(ra) # 80002fa4 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003000:	01253023          	sd	s2,0(a0)
    80003004:	00053423          	sd	zero,8(a0)
    80003008:	0004b783          	ld	a5,0(s1)
    8000300c:	02078463          	beqz	a5,80003034 <_ZN10ThreadList9push_backEP3TCB+0x60>
    80003010:	0084b783          	ld	a5,8(s1)
    80003014:	00a7b423          	sd	a0,8(a5)
    80003018:	00a4b423          	sd	a0,8(s1)
}
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	00813483          	ld	s1,8(sp)
    80003028:	00013903          	ld	s2,0(sp)
    8000302c:	02010113          	addi	sp,sp,32
    80003030:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    80003034:	00a4b023          	sd	a0,0(s1)
    80003038:	fe1ff06f          	j	80003018 <_ZN10ThreadList9push_backEP3TCB+0x44>

000000008000303c <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00113423          	sd	ra,8(sp)
    80003044:	00813023          	sd	s0,0(sp)
    80003048:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	4cc080e7          	jalr	1228(ra) # 80002518 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003054:	00813083          	ld	ra,8(sp)
    80003058:	00013403          	ld	s0,0(sp)
    8000305c:	01010113          	addi	sp,sp,16
    80003060:	00008067          	ret

0000000080003064 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    80003064:	fe010113          	addi	sp,sp,-32
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	00813823          	sd	s0,16(sp)
    80003070:	00913423          	sd	s1,8(sp)
    80003074:	02010413          	addi	s0,sp,32
    80003078:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000307c:	00053503          	ld	a0,0(a0)
    80003080:	02050863          	beqz	a0,800030b0 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003084:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003088:	00853703          	ld	a4,8(a0)
    8000308c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003090:	00000097          	auipc	ra,0x0
    80003094:	fac080e7          	jalr	-84(ra) # 8000303c <_ZN10ThreadList4NodedlEPv>
}
    80003098:	00048513          	mv	a0,s1
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00813483          	ld	s1,8(sp)
    800030a8:	02010113          	addi	sp,sp,32
    800030ac:	00008067          	ret
    if (!head) return nullptr;
    800030b0:	00050493          	mv	s1,a0
    800030b4:	fe5ff06f          	j	80003098 <_ZN10ThreadList12remove_firstEv+0x34>

00000000800030b8 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	02010413          	addi	s0,sp,32
    800030cc:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    800030d0:	00048513          	mv	a0,s1
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	eac080e7          	jalr	-340(ra) # 80002f80 <_ZN10ThreadList9get_firstEv>
    800030dc:	00050a63          	beqz	a0,800030f0 <_ZN10ThreadList4freeEv+0x38>
    800030e0:	00048513          	mv	a0,s1
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	f80080e7          	jalr	-128(ra) # 80003064 <_ZN10ThreadList12remove_firstEv>
    800030ec:	fe5ff06f          	j	800030d0 <_ZN10ThreadList4freeEv+0x18>
}
    800030f0:	01813083          	ld	ra,24(sp)
    800030f4:	01013403          	ld	s0,16(sp)
    800030f8:	00813483          	ld	s1,8(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret

0000000080003104 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003104:	08068463          	beqz	a3,8000318c <_ZN3TCBC1EPFvPvES0_S0_+0x88>
    80003108:	000017b7          	lui	a5,0x1
    8000310c:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    80003110:	00f687b3          	add	a5,a3,a5
    context = {
    80003114:	00000717          	auipc	a4,0x0
    80003118:	24c70713          	addi	a4,a4,588 # 80003360 <_ZN3TCB16wrapper_functionEv>
    8000311c:	00e53423          	sd	a4,8(a0)
    80003120:	00f53823          	sd	a5,16(a0)
    };
    id = cnt++;
    80003124:	00009717          	auipc	a4,0x9
    80003128:	c7470713          	addi	a4,a4,-908 # 8000bd98 <_ZN3TCB3cntE>
    8000312c:	00072783          	lw	a5,0(a4)
    80003130:	0017881b          	addiw	a6,a5,1
    80003134:	01072023          	sw	a6,0(a4)
    80003138:	00f52023          	sw	a5,0(a0)
    status = RUNNABLE;
    8000313c:	00052c23          	sw	zero,24(a0)
    this -> function_body = function_body;
    80003140:	02b53023          	sd	a1,32(a0)
    this -> arg = arg;
    80003144:	02c53423          	sd	a2,40(a0)
    this -> stack = stack;
    80003148:	02d53823          	sd	a3,48(a0)
    time_slice = DEFAULT_TIME_SLICE;
    8000314c:	00200793          	li	a5,2
    80003150:	02f53c23          	sd	a5,56(a0)
    time_to_sleep = 0;
    80003154:	04053423          	sd	zero,72(a0)
    next_ready = nullptr;
    80003158:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    8000315c:	04053823          	sd	zero,80(a0)
    if (function_body) Scheduler::put(this);
    80003160:	02058a63          	beqz	a1,80003194 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00113423          	sd	ra,8(sp)
    8000316c:	00813023          	sd	s0,0(sp)
    80003170:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    80003174:	00000097          	auipc	ra,0x0
    80003178:	854080e7          	jalr	-1964(ra) # 800029c8 <_ZN9Scheduler3putEP3TCB>
}
    8000317c:	00813083          	ld	ra,8(sp)
    80003180:	00013403          	ld	s0,0(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    8000318c:	00000793          	li	a5,0
    80003190:	f85ff06f          	j	80003114 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    80003194:	00008067          	ret

0000000080003198 <_ZN3TCB5yieldEPS_S0_>:
    else RiscV::popSppSpie(true);
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003198:	fe010113          	addi	sp,sp,-32
    8000319c:	00113c23          	sd	ra,24(sp)
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	01213023          	sd	s2,0(sp)
    800031ac:	02010413          	addi	s0,sp,32
    800031b0:	00050493          	mv	s1,a0
    800031b4:	00058913          	mv	s2,a1
    RiscV::push_registers();
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	f50080e7          	jalr	-176(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    800031c0:	01248a63          	beq	s1,s2,800031d4 <_ZN3TCB5yieldEPS_S0_+0x3c>
    800031c4:	00890593          	addi	a1,s2,8
    800031c8:	00848513          	addi	a0,s1,8
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	03c080e7          	jalr	60(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	fb4080e7          	jalr	-76(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	00013903          	ld	s2,0(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret

00000000800031f4 <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    800031f4:	fe010113          	addi	sp,sp,-32
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	00813823          	sd	s0,16(sp)
    80003200:	00913423          	sd	s1,8(sp)
    80003204:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80003208:	00009497          	auipc	s1,0x9
    8000320c:	b984b483          	ld	s1,-1128(s1) # 8000bda0 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003210:	0184a783          	lw	a5,24(s1)
    80003214:	02078e63          	beqz	a5,80003250 <_ZN3TCB8dispatchEv+0x5c>
    running = Scheduler::get();
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	810080e7          	jalr	-2032(ra) # 80002a28 <_ZN9Scheduler3getEv>
    80003220:	00050593          	mv	a1,a0
    80003224:	00009797          	auipc	a5,0x9
    80003228:	b6a7be23          	sd	a0,-1156(a5) # 8000bda0 <_ZN3TCB7runningE>
    if (old != running) yield(old, running);
    8000322c:	00a48863          	beq	s1,a0,8000323c <_ZN3TCB8dispatchEv+0x48>
    80003230:	00048513          	mv	a0,s1
    80003234:	00000097          	auipc	ra,0x0
    80003238:	f64080e7          	jalr	-156(ra) # 80003198 <_ZN3TCB5yieldEPS_S0_>
}
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	02010113          	addi	sp,sp,32
    8000324c:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    80003250:	00048513          	mv	a0,s1
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	774080e7          	jalr	1908(ra) # 800029c8 <_ZN9Scheduler3putEP3TCB>
    8000325c:	fbdff06f          	j	80003218 <_ZN3TCB8dispatchEv+0x24>

0000000080003260 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00813423          	sd	s0,8(sp)
    80003268:	01010413          	addi	s0,sp,16
    return next_ready;
}
    8000326c:	04053503          	ld	a0,64(a0)
    80003270:	00813403          	ld	s0,8(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003288:	04b53023          	sd	a1,64(a0)
}
    8000328c:	00813403          	ld	s0,8(sp)
    80003290:	01010113          	addi	sp,sp,16
    80003294:	00008067          	ret

0000000080003298 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003298:	ff010113          	addi	sp,sp,-16
    8000329c:	00813423          	sd	s0,8(sp)
    800032a0:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    800032a4:	04b53823          	sd	a1,80(a0)
}
    800032a8:	00813403          	ld	s0,8(sp)
    800032ac:	01010113          	addi	sp,sp,16
    800032b0:	00008067          	ret

00000000800032b4 <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    800032c0:	05053503          	ld	a0,80(a0)
    800032c4:	00813403          	ld	s0,8(sp)
    800032c8:	01010113          	addi	sp,sp,16
    800032cc:	00008067          	ret

00000000800032d0 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    800032d0:	ff010113          	addi	sp,sp,-16
    800032d4:	00813423          	sd	s0,8(sp)
    800032d8:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    800032dc:	04b53423          	sd	a1,72(a0)
}
    800032e0:	00813403          	ld	s0,8(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00813423          	sd	s0,8(sp)
    800032f4:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800032f8:	04853503          	ld	a0,72(a0)
    800032fc:	00813403          	ld	s0,8(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00813423          	sd	s0,8(sp)
    80003310:	01010413          	addi	s0,sp,16
    this -> status = stat;
    80003314:	00b52c23          	sw	a1,24(a0)
}
    80003318:	00813403          	ld	s0,8(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN3TCB11thread_exitEv>:
void TCB::thread_exit() {
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	00813023          	sd	s0,0(sp)
    80003330:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    80003334:	00300593          	li	a1,3
    80003338:	00009517          	auipc	a0,0x9
    8000333c:	a6853503          	ld	a0,-1432(a0) # 8000bda0 <_ZN3TCB7runningE>
    80003340:	00000097          	auipc	ra,0x0
    80003344:	fc8080e7          	jalr	-56(ra) # 80003308 <_ZN3TCB10set_statusENS_6StatusE>
    dispatch();
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	eac080e7          	jalr	-340(ra) # 800031f4 <_ZN3TCB8dispatchEv>
}
    80003350:	00813083          	ld	ra,8(sp)
    80003354:	00013403          	ld	s0,0(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00113423          	sd	ra,8(sp)
    80003368:	00813023          	sd	s0,0(sp)
    8000336c:	01010413          	addi	s0,sp,16
    if (!running -> function_body || (running -> function_body && running->function_body == kernelConsoleOutput))
    80003370:	00009797          	auipc	a5,0x9
    80003374:	a307b783          	ld	a5,-1488(a5) # 8000bda0 <_ZN3TCB7runningE>
    80003378:	0207b783          	ld	a5,32(a5)
    8000337c:	02078063          	beqz	a5,8000339c <_ZN3TCB16wrapper_functionEv+0x3c>
    80003380:	00009717          	auipc	a4,0x9
    80003384:	97073703          	ld	a4,-1680(a4) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003388:	00e78a63          	beq	a5,a4,8000339c <_ZN3TCB16wrapper_functionEv+0x3c>
    else RiscV::popSppSpie(true);
    8000338c:	00100513          	li	a0,1
    80003390:	00000097          	auipc	ra,0x0
    80003394:	8f8080e7          	jalr	-1800(ra) # 80002c88 <_ZN5RiscV10popSppSpieEb>
    80003398:	0100006f          	j	800033a8 <_ZN3TCB16wrapper_functionEv+0x48>
        RiscV::popSppSpie(false);
    8000339c:	00000513          	li	a0,0
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	8e8080e7          	jalr	-1816(ra) # 80002c88 <_ZN5RiscV10popSppSpieEb>
    if (running -> function_body) running -> function_body(running -> arg);
    800033a8:	00009717          	auipc	a4,0x9
    800033ac:	9f873703          	ld	a4,-1544(a4) # 8000bda0 <_ZN3TCB7runningE>
    800033b0:	02073783          	ld	a5,32(a4)
    800033b4:	00078663          	beqz	a5,800033c0 <_ZN3TCB16wrapper_functionEv+0x60>
    800033b8:	02873503          	ld	a0,40(a4)
    800033bc:	000780e7          	jalr	a5
    thread_exit();
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	f64080e7          	jalr	-156(ra) # 80003324 <_ZN3TCB11thread_exitEv>
}
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    800033d8:	ff010113          	addi	sp,sp,-16
    800033dc:	00113423          	sd	ra,8(sp)
    800033e0:	00813023          	sd	s0,0(sp)
    800033e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	370080e7          	jalr	880(ra) # 80002758 <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	fbc080e7          	jalr	-68(ra) # 800023ac <_ZN15MemoryAllocator9mem_allocEm>
}
    800033f8:	00813083          	ld	ra,8(sp)
    800033fc:	00013403          	ld	s0,0(sp)
    80003400:	01010113          	addi	sp,sp,16
    80003404:	00008067          	ret

0000000080003408 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00113423          	sd	ra,8(sp)
    80003410:	00813023          	sd	s0,0(sp)
    80003414:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	100080e7          	jalr	256(ra) # 80002518 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003420:	00813083          	ld	ra,8(sp)
    80003424:	00013403          	ld	s0,0(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    80003430:	fc010113          	addi	sp,sp,-64
    80003434:	02113c23          	sd	ra,56(sp)
    80003438:	02813823          	sd	s0,48(sp)
    8000343c:	02913423          	sd	s1,40(sp)
    80003440:	03213023          	sd	s2,32(sp)
    80003444:	01313c23          	sd	s3,24(sp)
    80003448:	01413823          	sd	s4,16(sp)
    8000344c:	01513423          	sd	s5,8(sp)
    80003450:	04010413          	addi	s0,sp,64
    80003454:	00050913          	mv	s2,a0
    80003458:	00058993          	mv	s3,a1
    8000345c:	00060a13          	mv	s4,a2
    80003460:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    80003464:	05800513          	li	a0,88
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	f70080e7          	jalr	-144(ra) # 800033d8 <_ZN3TCBnwEm>
    80003470:	00050493          	mv	s1,a0
    80003474:	000a8693          	mv	a3,s5
    80003478:	000a0613          	mv	a2,s4
    8000347c:	00098593          	mv	a1,s3
    80003480:	00000097          	auipc	ra,0x0
    80003484:	c84080e7          	jalr	-892(ra) # 80003104 <_ZN3TCBC1EPFvPvES0_S0_>
    80003488:	0200006f          	j	800034a8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    8000348c:	00050913          	mv	s2,a0
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	f74080e7          	jalr	-140(ra) # 80003408 <_ZN3TCBdlEPv>
    8000349c:	00090513          	mv	a0,s2
    800034a0:	0000a097          	auipc	ra,0xa
    800034a4:	a28080e7          	jalr	-1496(ra) # 8000cec8 <_Unwind_Resume>
    800034a8:	00993023          	sd	s1,0(s2)
}
    800034ac:	00000513          	li	a0,0
    800034b0:	03813083          	ld	ra,56(sp)
    800034b4:	03013403          	ld	s0,48(sp)
    800034b8:	02813483          	ld	s1,40(sp)
    800034bc:	02013903          	ld	s2,32(sp)
    800034c0:	01813983          	ld	s3,24(sp)
    800034c4:	01013a03          	ld	s4,16(sp)
    800034c8:	00813a83          	ld	s5,8(sp)
    800034cc:	04010113          	addi	sp,sp,64
    800034d0:	00008067          	ret

00000000800034d4 <_ZNK3TCB14get_time_sliceEv>:

time_t TCB::get_time_slice() const {
    800034d4:	ff010113          	addi	sp,sp,-16
    800034d8:	00813423          	sd	s0,8(sp)
    800034dc:	01010413          	addi	s0,sp,16
    return time_slice;
}
    800034e0:	03853503          	ld	a0,56(a0)
    800034e4:	00813403          	ld	s0,8(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800034fc:	01852503          	lw	a0,24(a0)
    80003500:	ffd50513          	addi	a0,a0,-3
}
    80003504:	00153513          	seqz	a0,a0
    80003508:	00813403          	ld	s0,8(sp)
    8000350c:	01010113          	addi	sp,sp,16
    80003510:	00008067          	ret

0000000080003514 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003514:	fe010113          	addi	sp,sp,-32
    80003518:	00113c23          	sd	ra,24(sp)
    8000351c:	00813823          	sd	s0,16(sp)
    80003520:	00913423          	sd	s1,8(sp)
    80003524:	01213023          	sd	s2,0(sp)
    80003528:	02010413          	addi	s0,sp,32
    8000352c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003530:	00000913          	li	s2,0
    80003534:	00c0006f          	j	80003540 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	e94080e7          	jalr	-364(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	0e0080e7          	jalr	224(ra) # 80001620 <_Z4getcv>
    80003548:	0005059b          	sext.w	a1,a0
    8000354c:	01b00793          	li	a5,27
    80003550:	02f58a63          	beq	a1,a5,80003584 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003554:	0084b503          	ld	a0,8(s1)
    80003558:	00001097          	auipc	ra,0x1
    8000355c:	66c080e7          	jalr	1644(ra) # 80004bc4 <_ZN6Buffer3putEi>
        i++;
    80003560:	0019071b          	addiw	a4,s2,1
    80003564:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003568:	0004a683          	lw	a3,0(s1)
    8000356c:	0026979b          	slliw	a5,a3,0x2
    80003570:	00d787bb          	addw	a5,a5,a3
    80003574:	0017979b          	slliw	a5,a5,0x1
    80003578:	02f767bb          	remw	a5,a4,a5
    8000357c:	fc0792e3          	bnez	a5,80003540 <_ZL16producerKeyboardPv+0x2c>
    80003580:	fb9ff06f          	j	80003538 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003584:	00100793          	li	a5,1
    80003588:	00009717          	auipc	a4,0x9
    8000358c:	82f72423          	sw	a5,-2008(a4) # 8000bdb0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003590:	02100593          	li	a1,33
    80003594:	0084b503          	ld	a0,8(s1)
    80003598:	00001097          	auipc	ra,0x1
    8000359c:	62c080e7          	jalr	1580(ra) # 80004bc4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800035a0:	0104b503          	ld	a0,16(s1)
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	f4c080e7          	jalr	-180(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	00013903          	ld	s2,0(sp)
    800035bc:	02010113          	addi	sp,sp,32
    800035c0:	00008067          	ret

00000000800035c4 <_ZL8producerPv>:

static void producer(void *arg) {
    800035c4:	fe010113          	addi	sp,sp,-32
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00813823          	sd	s0,16(sp)
    800035d0:	00913423          	sd	s1,8(sp)
    800035d4:	01213023          	sd	s2,0(sp)
    800035d8:	02010413          	addi	s0,sp,32
    800035dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035e0:	00000913          	li	s2,0
    800035e4:	00c0006f          	j	800035f0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	de4080e7          	jalr	-540(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035f0:	00008797          	auipc	a5,0x8
    800035f4:	7c07a783          	lw	a5,1984(a5) # 8000bdb0 <_ZL9threadEnd>
    800035f8:	02079e63          	bnez	a5,80003634 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035fc:	0004a583          	lw	a1,0(s1)
    80003600:	0305859b          	addiw	a1,a1,48
    80003604:	0084b503          	ld	a0,8(s1)
    80003608:	00001097          	auipc	ra,0x1
    8000360c:	5bc080e7          	jalr	1468(ra) # 80004bc4 <_ZN6Buffer3putEi>
        i++;
    80003610:	0019071b          	addiw	a4,s2,1
    80003614:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003618:	0004a683          	lw	a3,0(s1)
    8000361c:	0026979b          	slliw	a5,a3,0x2
    80003620:	00d787bb          	addw	a5,a5,a3
    80003624:	0017979b          	slliw	a5,a5,0x1
    80003628:	02f767bb          	remw	a5,a4,a5
    8000362c:	fc0792e3          	bnez	a5,800035f0 <_ZL8producerPv+0x2c>
    80003630:	fb9ff06f          	j	800035e8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003634:	0104b503          	ld	a0,16(s1)
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	eb8080e7          	jalr	-328(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003658:	fd010113          	addi	sp,sp,-48
    8000365c:	02113423          	sd	ra,40(sp)
    80003660:	02813023          	sd	s0,32(sp)
    80003664:	00913c23          	sd	s1,24(sp)
    80003668:	01213823          	sd	s2,16(sp)
    8000366c:	01313423          	sd	s3,8(sp)
    80003670:	03010413          	addi	s0,sp,48
    80003674:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003678:	00000993          	li	s3,0
    8000367c:	01c0006f          	j	80003698 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	d4c080e7          	jalr	-692(ra) # 800013cc <_Z15thread_dispatchv>
    80003688:	0500006f          	j	800036d8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000368c:	00a00513          	li	a0,10
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	fdc080e7          	jalr	-36(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    80003698:	00008797          	auipc	a5,0x8
    8000369c:	7187a783          	lw	a5,1816(a5) # 8000bdb0 <_ZL9threadEnd>
    800036a0:	06079063          	bnez	a5,80003700 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800036a4:	00893503          	ld	a0,8(s2)
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	5ac080e7          	jalr	1452(ra) # 80004c54 <_ZN6Buffer3getEv>
        i++;
    800036b0:	0019849b          	addiw	s1,s3,1
    800036b4:	0004899b          	sext.w	s3,s1
        putc(key);
    800036b8:	0ff57513          	andi	a0,a0,255
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	fb0080e7          	jalr	-80(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800036c4:	00092703          	lw	a4,0(s2)
    800036c8:	0027179b          	slliw	a5,a4,0x2
    800036cc:	00e787bb          	addw	a5,a5,a4
    800036d0:	02f4e7bb          	remw	a5,s1,a5
    800036d4:	fa0786e3          	beqz	a5,80003680 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036d8:	05000793          	li	a5,80
    800036dc:	02f4e4bb          	remw	s1,s1,a5
    800036e0:	fa049ce3          	bnez	s1,80003698 <_ZL8consumerPv+0x40>
    800036e4:	fa9ff06f          	j	8000368c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036e8:	00893503          	ld	a0,8(s2)
    800036ec:	00001097          	auipc	ra,0x1
    800036f0:	568080e7          	jalr	1384(ra) # 80004c54 <_ZN6Buffer3getEv>
        putc(key);
    800036f4:	0ff57513          	andi	a0,a0,255
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	f74080e7          	jalr	-140(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003700:	00893503          	ld	a0,8(s2)
    80003704:	00001097          	auipc	ra,0x1
    80003708:	5dc080e7          	jalr	1500(ra) # 80004ce0 <_ZN6Buffer6getCntEv>
    8000370c:	fca04ee3          	bgtz	a0,800036e8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003710:	01093503          	ld	a0,16(s2)
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	ddc080e7          	jalr	-548(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    8000371c:	02813083          	ld	ra,40(sp)
    80003720:	02013403          	ld	s0,32(sp)
    80003724:	01813483          	ld	s1,24(sp)
    80003728:	01013903          	ld	s2,16(sp)
    8000372c:	00813983          	ld	s3,8(sp)
    80003730:	03010113          	addi	sp,sp,48
    80003734:	00008067          	ret

0000000080003738 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003738:	f9010113          	addi	sp,sp,-112
    8000373c:	06113423          	sd	ra,104(sp)
    80003740:	06813023          	sd	s0,96(sp)
    80003744:	04913c23          	sd	s1,88(sp)
    80003748:	05213823          	sd	s2,80(sp)
    8000374c:	05313423          	sd	s3,72(sp)
    80003750:	05413023          	sd	s4,64(sp)
    80003754:	03513c23          	sd	s5,56(sp)
    80003758:	03613823          	sd	s6,48(sp)
    8000375c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003760:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003764:	00006517          	auipc	a0,0x6
    80003768:	9dc50513          	addi	a0,a0,-1572 # 80009140 <CONSOLE_STATUS+0x130>
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	540080e7          	jalr	1344(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    80003774:	01e00593          	li	a1,30
    80003778:	fa040493          	addi	s1,s0,-96
    8000377c:	00048513          	mv	a0,s1
    80003780:	00002097          	auipc	ra,0x2
    80003784:	5b4080e7          	jalr	1460(ra) # 80005d34 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003788:	00048513          	mv	a0,s1
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	680080e7          	jalr	1664(ra) # 80005e0c <_Z11stringToIntPKc>
    80003794:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003798:	00006517          	auipc	a0,0x6
    8000379c:	9c850513          	addi	a0,a0,-1592 # 80009160 <CONSOLE_STATUS+0x150>
    800037a0:	00002097          	auipc	ra,0x2
    800037a4:	50c080e7          	jalr	1292(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    800037a8:	01e00593          	li	a1,30
    800037ac:	00048513          	mv	a0,s1
    800037b0:	00002097          	auipc	ra,0x2
    800037b4:	584080e7          	jalr	1412(ra) # 80005d34 <_Z9getStringPci>
    n = stringToInt(input);
    800037b8:	00048513          	mv	a0,s1
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	650080e7          	jalr	1616(ra) # 80005e0c <_Z11stringToIntPKc>
    800037c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	9b850513          	addi	a0,a0,-1608 # 80009180 <CONSOLE_STATUS+0x170>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	4dc080e7          	jalr	1244(ra) # 80005cac <_Z11printStringPKc>
    800037d8:	00000613          	li	a2,0
    800037dc:	00a00593          	li	a1,10
    800037e0:	00090513          	mv	a0,s2
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	678080e7          	jalr	1656(ra) # 80005e5c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037ec:	00006517          	auipc	a0,0x6
    800037f0:	9ac50513          	addi	a0,a0,-1620 # 80009198 <CONSOLE_STATUS+0x188>
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	4b8080e7          	jalr	1208(ra) # 80005cac <_Z11printStringPKc>
    800037fc:	00000613          	li	a2,0
    80003800:	00a00593          	li	a1,10
    80003804:	00048513          	mv	a0,s1
    80003808:	00002097          	auipc	ra,0x2
    8000380c:	654080e7          	jalr	1620(ra) # 80005e5c <_Z8printIntiii>
    printString(".\n");
    80003810:	00006517          	auipc	a0,0x6
    80003814:	9a050513          	addi	a0,a0,-1632 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003818:	00002097          	auipc	ra,0x2
    8000381c:	494080e7          	jalr	1172(ra) # 80005cac <_Z11printStringPKc>
    if(threadNum > n) {
    80003820:	0324c463          	blt	s1,s2,80003848 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003824:	03205c63          	blez	s2,8000385c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003828:	03800513          	li	a0,56
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	71c080e7          	jalr	1820(ra) # 80001f48 <_Znwm>
    80003834:	00050a13          	mv	s4,a0
    80003838:	00048593          	mv	a1,s1
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	2ec080e7          	jalr	748(ra) # 80004b28 <_ZN6BufferC1Ei>
    80003844:	0300006f          	j	80003874 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003848:	00006517          	auipc	a0,0x6
    8000384c:	97050513          	addi	a0,a0,-1680 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003850:	00002097          	auipc	ra,0x2
    80003854:	45c080e7          	jalr	1116(ra) # 80005cac <_Z11printStringPKc>
        return;
    80003858:	0140006f          	j	8000386c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000385c:	00006517          	auipc	a0,0x6
    80003860:	99c50513          	addi	a0,a0,-1636 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003864:	00002097          	auipc	ra,0x2
    80003868:	448080e7          	jalr	1096(ra) # 80005cac <_Z11printStringPKc>
        return;
    8000386c:	000b0113          	mv	sp,s6
    80003870:	1500006f          	j	800039c0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003874:	00000593          	li	a1,0
    80003878:	00008517          	auipc	a0,0x8
    8000387c:	54050513          	addi	a0,a0,1344 # 8000bdb8 <_ZL10waitForAll>
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	b88080e7          	jalr	-1144(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003888:	00391793          	slli	a5,s2,0x3
    8000388c:	00f78793          	addi	a5,a5,15
    80003890:	ff07f793          	andi	a5,a5,-16
    80003894:	40f10133          	sub	sp,sp,a5
    80003898:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000389c:	0019071b          	addiw	a4,s2,1
    800038a0:	00171793          	slli	a5,a4,0x1
    800038a4:	00e787b3          	add	a5,a5,a4
    800038a8:	00379793          	slli	a5,a5,0x3
    800038ac:	00f78793          	addi	a5,a5,15
    800038b0:	ff07f793          	andi	a5,a5,-16
    800038b4:	40f10133          	sub	sp,sp,a5
    800038b8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800038bc:	00191613          	slli	a2,s2,0x1
    800038c0:	012607b3          	add	a5,a2,s2
    800038c4:	00379793          	slli	a5,a5,0x3
    800038c8:	00f987b3          	add	a5,s3,a5
    800038cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038d0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038d4:	00008717          	auipc	a4,0x8
    800038d8:	4e473703          	ld	a4,1252(a4) # 8000bdb8 <_ZL10waitForAll>
    800038dc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038e0:	00078613          	mv	a2,a5
    800038e4:	00000597          	auipc	a1,0x0
    800038e8:	d7458593          	addi	a1,a1,-652 # 80003658 <_ZL8consumerPv>
    800038ec:	f9840513          	addi	a0,s0,-104
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	a08080e7          	jalr	-1528(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038f8:	00000493          	li	s1,0
    800038fc:	0280006f          	j	80003924 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003900:	00000597          	auipc	a1,0x0
    80003904:	c1458593          	addi	a1,a1,-1004 # 80003514 <_ZL16producerKeyboardPv>
                      data + i);
    80003908:	00179613          	slli	a2,a5,0x1
    8000390c:	00f60633          	add	a2,a2,a5
    80003910:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003914:	00c98633          	add	a2,s3,a2
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	9e0080e7          	jalr	-1568(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003920:	0014849b          	addiw	s1,s1,1
    80003924:	0524d263          	bge	s1,s2,80003968 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003928:	00149793          	slli	a5,s1,0x1
    8000392c:	009787b3          	add	a5,a5,s1
    80003930:	00379793          	slli	a5,a5,0x3
    80003934:	00f987b3          	add	a5,s3,a5
    80003938:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000393c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003940:	00008717          	auipc	a4,0x8
    80003944:	47873703          	ld	a4,1144(a4) # 8000bdb8 <_ZL10waitForAll>
    80003948:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000394c:	00048793          	mv	a5,s1
    80003950:	00349513          	slli	a0,s1,0x3
    80003954:	00aa8533          	add	a0,s5,a0
    80003958:	fa9054e3          	blez	s1,80003900 <_Z22producerConsumer_C_APIv+0x1c8>
    8000395c:	00000597          	auipc	a1,0x0
    80003960:	c6858593          	addi	a1,a1,-920 # 800035c4 <_ZL8producerPv>
    80003964:	fa5ff06f          	j	80003908 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	a64080e7          	jalr	-1436(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003970:	00000493          	li	s1,0
    80003974:	00994e63          	blt	s2,s1,80003990 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003978:	00008517          	auipc	a0,0x8
    8000397c:	44053503          	ld	a0,1088(a0) # 8000bdb8 <_ZL10waitForAll>
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	b24080e7          	jalr	-1244(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003988:	0014849b          	addiw	s1,s1,1
    8000398c:	fe9ff06f          	j	80003974 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003990:	00008517          	auipc	a0,0x8
    80003994:	42853503          	ld	a0,1064(a0) # 8000bdb8 <_ZL10waitForAll>
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	ac0080e7          	jalr	-1344(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    800039a0:	000a0e63          	beqz	s4,800039bc <_Z22producerConsumer_C_APIv+0x284>
    800039a4:	000a0513          	mv	a0,s4
    800039a8:	00001097          	auipc	ra,0x1
    800039ac:	3c0080e7          	jalr	960(ra) # 80004d68 <_ZN6BufferD1Ev>
    800039b0:	000a0513          	mv	a0,s4
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	5bc080e7          	jalr	1468(ra) # 80001f70 <_ZdlPv>
    800039bc:	000b0113          	mv	sp,s6

}
    800039c0:	f9040113          	addi	sp,s0,-112
    800039c4:	06813083          	ld	ra,104(sp)
    800039c8:	06013403          	ld	s0,96(sp)
    800039cc:	05813483          	ld	s1,88(sp)
    800039d0:	05013903          	ld	s2,80(sp)
    800039d4:	04813983          	ld	s3,72(sp)
    800039d8:	04013a03          	ld	s4,64(sp)
    800039dc:	03813a83          	ld	s5,56(sp)
    800039e0:	03013b03          	ld	s6,48(sp)
    800039e4:	07010113          	addi	sp,sp,112
    800039e8:	00008067          	ret
    800039ec:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039f0:	000a0513          	mv	a0,s4
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	57c080e7          	jalr	1404(ra) # 80001f70 <_ZdlPv>
    800039fc:	00048513          	mv	a0,s1
    80003a00:	00009097          	auipc	ra,0x9
    80003a04:	4c8080e7          	jalr	1224(ra) # 8000cec8 <_Unwind_Resume>

0000000080003a08 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00113c23          	sd	ra,24(sp)
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	01213023          	sd	s2,0(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a24:	00100793          	li	a5,1
    80003a28:	02a7f863          	bgeu	a5,a0,80003a58 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a2c:	00a00793          	li	a5,10
    80003a30:	02f577b3          	remu	a5,a0,a5
    80003a34:	02078e63          	beqz	a5,80003a70 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a38:	fff48513          	addi	a0,s1,-1
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	fcc080e7          	jalr	-52(ra) # 80003a08 <_ZL9fibonaccim>
    80003a44:	00050913          	mv	s2,a0
    80003a48:	ffe48513          	addi	a0,s1,-2
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	fbc080e7          	jalr	-68(ra) # 80003a08 <_ZL9fibonaccim>
    80003a54:	00a90533          	add	a0,s2,a0
}
    80003a58:	01813083          	ld	ra,24(sp)
    80003a5c:	01013403          	ld	s0,16(sp)
    80003a60:	00813483          	ld	s1,8(sp)
    80003a64:	00013903          	ld	s2,0(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	95c080e7          	jalr	-1700(ra) # 800013cc <_Z15thread_dispatchv>
    80003a78:	fc1ff06f          	j	80003a38 <_ZL9fibonaccim+0x30>

0000000080003a7c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	01213023          	sd	s2,0(sp)
    80003a90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a94:	00000913          	li	s2,0
    80003a98:	0380006f          	j	80003ad0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	930080e7          	jalr	-1744(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003aa4:	00148493          	addi	s1,s1,1
    80003aa8:	000027b7          	lui	a5,0x2
    80003aac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ab0:	0097ee63          	bltu	a5,s1,80003acc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ab4:	00000713          	li	a4,0
    80003ab8:	000077b7          	lui	a5,0x7
    80003abc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ac0:	fce7eee3          	bltu	a5,a4,80003a9c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ac4:	00170713          	addi	a4,a4,1
    80003ac8:	ff1ff06f          	j	80003ab8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003acc:	00190913          	addi	s2,s2,1
    80003ad0:	00900793          	li	a5,9
    80003ad4:	0527e063          	bltu	a5,s2,80003b14 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ad8:	00005517          	auipc	a0,0x5
    80003adc:	75050513          	addi	a0,a0,1872 # 80009228 <CONSOLE_STATUS+0x218>
    80003ae0:	00002097          	auipc	ra,0x2
    80003ae4:	1cc080e7          	jalr	460(ra) # 80005cac <_Z11printStringPKc>
    80003ae8:	00000613          	li	a2,0
    80003aec:	00a00593          	li	a1,10
    80003af0:	0009051b          	sext.w	a0,s2
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	368080e7          	jalr	872(ra) # 80005e5c <_Z8printIntiii>
    80003afc:	00006517          	auipc	a0,0x6
    80003b00:	97c50513          	addi	a0,a0,-1668 # 80009478 <CONSOLE_STATUS+0x468>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	1a8080e7          	jalr	424(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b0c:	00000493          	li	s1,0
    80003b10:	f99ff06f          	j	80003aa8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	71c50513          	addi	a0,a0,1820 # 80009230 <CONSOLE_STATUS+0x220>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	190080e7          	jalr	400(ra) # 80005cac <_Z11printStringPKc>
    finishedA = true;
    80003b24:	00100793          	li	a5,1
    80003b28:	00008717          	auipc	a4,0x8
    80003b2c:	28f70c23          	sb	a5,664(a4) # 8000bdc0 <_ZL9finishedA>
}
    80003b30:	01813083          	ld	ra,24(sp)
    80003b34:	01013403          	ld	s0,16(sp)
    80003b38:	00813483          	ld	s1,8(sp)
    80003b3c:	00013903          	ld	s2,0(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret

0000000080003b48 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	01213023          	sd	s2,0(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b60:	00000913          	li	s2,0
    80003b64:	0380006f          	j	80003b9c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	864080e7          	jalr	-1948(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b70:	00148493          	addi	s1,s1,1
    80003b74:	000027b7          	lui	a5,0x2
    80003b78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b7c:	0097ee63          	bltu	a5,s1,80003b98 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b80:	00000713          	li	a4,0
    80003b84:	000077b7          	lui	a5,0x7
    80003b88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b8c:	fce7eee3          	bltu	a5,a4,80003b68 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b90:	00170713          	addi	a4,a4,1
    80003b94:	ff1ff06f          	j	80003b84 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b98:	00190913          	addi	s2,s2,1
    80003b9c:	00f00793          	li	a5,15
    80003ba0:	0527e063          	bltu	a5,s2,80003be0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ba4:	00005517          	auipc	a0,0x5
    80003ba8:	69c50513          	addi	a0,a0,1692 # 80009240 <CONSOLE_STATUS+0x230>
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	100080e7          	jalr	256(ra) # 80005cac <_Z11printStringPKc>
    80003bb4:	00000613          	li	a2,0
    80003bb8:	00a00593          	li	a1,10
    80003bbc:	0009051b          	sext.w	a0,s2
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	29c080e7          	jalr	668(ra) # 80005e5c <_Z8printIntiii>
    80003bc8:	00006517          	auipc	a0,0x6
    80003bcc:	8b050513          	addi	a0,a0,-1872 # 80009478 <CONSOLE_STATUS+0x468>
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	0dc080e7          	jalr	220(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bd8:	00000493          	li	s1,0
    80003bdc:	f99ff06f          	j	80003b74 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	66850513          	addi	a0,a0,1640 # 80009248 <CONSOLE_STATUS+0x238>
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	0c4080e7          	jalr	196(ra) # 80005cac <_Z11printStringPKc>
    finishedB = true;
    80003bf0:	00100793          	li	a5,1
    80003bf4:	00008717          	auipc	a4,0x8
    80003bf8:	1cf706a3          	sb	a5,461(a4) # 8000bdc1 <_ZL9finishedB>
    thread_dispatch();
    80003bfc:	ffffd097          	auipc	ra,0xffffd
    80003c00:	7d0080e7          	jalr	2000(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	00013903          	ld	s2,0(sp)
    80003c14:	02010113          	addi	sp,sp,32
    80003c18:	00008067          	ret

0000000080003c1c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00113c23          	sd	ra,24(sp)
    80003c24:	00813823          	sd	s0,16(sp)
    80003c28:	00913423          	sd	s1,8(sp)
    80003c2c:	01213023          	sd	s2,0(sp)
    80003c30:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c34:	00000493          	li	s1,0
    80003c38:	0400006f          	j	80003c78 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c3c:	00005517          	auipc	a0,0x5
    80003c40:	61c50513          	addi	a0,a0,1564 # 80009258 <CONSOLE_STATUS+0x248>
    80003c44:	00002097          	auipc	ra,0x2
    80003c48:	068080e7          	jalr	104(ra) # 80005cac <_Z11printStringPKc>
    80003c4c:	00000613          	li	a2,0
    80003c50:	00a00593          	li	a1,10
    80003c54:	00048513          	mv	a0,s1
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	204080e7          	jalr	516(ra) # 80005e5c <_Z8printIntiii>
    80003c60:	00006517          	auipc	a0,0x6
    80003c64:	81850513          	addi	a0,a0,-2024 # 80009478 <CONSOLE_STATUS+0x468>
    80003c68:	00002097          	auipc	ra,0x2
    80003c6c:	044080e7          	jalr	68(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c70:	0014849b          	addiw	s1,s1,1
    80003c74:	0ff4f493          	andi	s1,s1,255
    80003c78:	00200793          	li	a5,2
    80003c7c:	fc97f0e3          	bgeu	a5,s1,80003c3c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c80:	00005517          	auipc	a0,0x5
    80003c84:	5e050513          	addi	a0,a0,1504 # 80009260 <CONSOLE_STATUS+0x250>
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	024080e7          	jalr	36(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c90:	00700313          	li	t1,7
    thread_dispatch();
    80003c94:	ffffd097          	auipc	ra,0xffffd
    80003c98:	738080e7          	jalr	1848(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c9c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	5d050513          	addi	a0,a0,1488 # 80009270 <CONSOLE_STATUS+0x260>
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	004080e7          	jalr	4(ra) # 80005cac <_Z11printStringPKc>
    80003cb0:	00000613          	li	a2,0
    80003cb4:	00a00593          	li	a1,10
    80003cb8:	0009051b          	sext.w	a0,s2
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	1a0080e7          	jalr	416(ra) # 80005e5c <_Z8printIntiii>
    80003cc4:	00005517          	auipc	a0,0x5
    80003cc8:	7b450513          	addi	a0,a0,1972 # 80009478 <CONSOLE_STATUS+0x468>
    80003ccc:	00002097          	auipc	ra,0x2
    80003cd0:	fe0080e7          	jalr	-32(ra) # 80005cac <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003cd4:	00c00513          	li	a0,12
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	d30080e7          	jalr	-720(ra) # 80003a08 <_ZL9fibonaccim>
    80003ce0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ce4:	00005517          	auipc	a0,0x5
    80003ce8:	59450513          	addi	a0,a0,1428 # 80009278 <CONSOLE_STATUS+0x268>
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	fc0080e7          	jalr	-64(ra) # 80005cac <_Z11printStringPKc>
    80003cf4:	00000613          	li	a2,0
    80003cf8:	00a00593          	li	a1,10
    80003cfc:	0009051b          	sext.w	a0,s2
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	15c080e7          	jalr	348(ra) # 80005e5c <_Z8printIntiii>
    80003d08:	00005517          	auipc	a0,0x5
    80003d0c:	77050513          	addi	a0,a0,1904 # 80009478 <CONSOLE_STATUS+0x468>
    80003d10:	00002097          	auipc	ra,0x2
    80003d14:	f9c080e7          	jalr	-100(ra) # 80005cac <_Z11printStringPKc>
    80003d18:	0400006f          	j	80003d58 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d1c:	00005517          	auipc	a0,0x5
    80003d20:	53c50513          	addi	a0,a0,1340 # 80009258 <CONSOLE_STATUS+0x248>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	f88080e7          	jalr	-120(ra) # 80005cac <_Z11printStringPKc>
    80003d2c:	00000613          	li	a2,0
    80003d30:	00a00593          	li	a1,10
    80003d34:	00048513          	mv	a0,s1
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	124080e7          	jalr	292(ra) # 80005e5c <_Z8printIntiii>
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	73850513          	addi	a0,a0,1848 # 80009478 <CONSOLE_STATUS+0x468>
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	f64080e7          	jalr	-156(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d50:	0014849b          	addiw	s1,s1,1
    80003d54:	0ff4f493          	andi	s1,s1,255
    80003d58:	00500793          	li	a5,5
    80003d5c:	fc97f0e3          	bgeu	a5,s1,80003d1c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d60:	00005517          	auipc	a0,0x5
    80003d64:	4d050513          	addi	a0,a0,1232 # 80009230 <CONSOLE_STATUS+0x220>
    80003d68:	00002097          	auipc	ra,0x2
    80003d6c:	f44080e7          	jalr	-188(ra) # 80005cac <_Z11printStringPKc>
    finishedC = true;
    80003d70:	00100793          	li	a5,1
    80003d74:	00008717          	auipc	a4,0x8
    80003d78:	04f70723          	sb	a5,78(a4) # 8000bdc2 <_ZL9finishedC>
    thread_dispatch();
    80003d7c:	ffffd097          	auipc	ra,0xffffd
    80003d80:	650080e7          	jalr	1616(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003d84:	01813083          	ld	ra,24(sp)
    80003d88:	01013403          	ld	s0,16(sp)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	00013903          	ld	s2,0(sp)
    80003d94:	02010113          	addi	sp,sp,32
    80003d98:	00008067          	ret

0000000080003d9c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d9c:	fe010113          	addi	sp,sp,-32
    80003da0:	00113c23          	sd	ra,24(sp)
    80003da4:	00813823          	sd	s0,16(sp)
    80003da8:	00913423          	sd	s1,8(sp)
    80003dac:	01213023          	sd	s2,0(sp)
    80003db0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003db4:	00a00493          	li	s1,10
    80003db8:	0400006f          	j	80003df8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	4cc50513          	addi	a0,a0,1228 # 80009288 <CONSOLE_STATUS+0x278>
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	ee8080e7          	jalr	-280(ra) # 80005cac <_Z11printStringPKc>
    80003dcc:	00000613          	li	a2,0
    80003dd0:	00a00593          	li	a1,10
    80003dd4:	00048513          	mv	a0,s1
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	084080e7          	jalr	132(ra) # 80005e5c <_Z8printIntiii>
    80003de0:	00005517          	auipc	a0,0x5
    80003de4:	69850513          	addi	a0,a0,1688 # 80009478 <CONSOLE_STATUS+0x468>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	ec4080e7          	jalr	-316(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003df0:	0014849b          	addiw	s1,s1,1
    80003df4:	0ff4f493          	andi	s1,s1,255
    80003df8:	00c00793          	li	a5,12
    80003dfc:	fc97f0e3          	bgeu	a5,s1,80003dbc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	49050513          	addi	a0,a0,1168 # 80009290 <CONSOLE_STATUS+0x280>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	ea4080e7          	jalr	-348(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e10:	00500313          	li	t1,5
    thread_dispatch();
    80003e14:	ffffd097          	auipc	ra,0xffffd
    80003e18:	5b8080e7          	jalr	1464(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e1c:	01000513          	li	a0,16
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	be8080e7          	jalr	-1048(ra) # 80003a08 <_ZL9fibonaccim>
    80003e28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e2c:	00005517          	auipc	a0,0x5
    80003e30:	47450513          	addi	a0,a0,1140 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e34:	00002097          	auipc	ra,0x2
    80003e38:	e78080e7          	jalr	-392(ra) # 80005cac <_Z11printStringPKc>
    80003e3c:	00000613          	li	a2,0
    80003e40:	00a00593          	li	a1,10
    80003e44:	0009051b          	sext.w	a0,s2
    80003e48:	00002097          	auipc	ra,0x2
    80003e4c:	014080e7          	jalr	20(ra) # 80005e5c <_Z8printIntiii>
    80003e50:	00005517          	auipc	a0,0x5
    80003e54:	62850513          	addi	a0,a0,1576 # 80009478 <CONSOLE_STATUS+0x468>
    80003e58:	00002097          	auipc	ra,0x2
    80003e5c:	e54080e7          	jalr	-428(ra) # 80005cac <_Z11printStringPKc>
    80003e60:	0400006f          	j	80003ea0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e64:	00005517          	auipc	a0,0x5
    80003e68:	42450513          	addi	a0,a0,1060 # 80009288 <CONSOLE_STATUS+0x278>
    80003e6c:	00002097          	auipc	ra,0x2
    80003e70:	e40080e7          	jalr	-448(ra) # 80005cac <_Z11printStringPKc>
    80003e74:	00000613          	li	a2,0
    80003e78:	00a00593          	li	a1,10
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	fdc080e7          	jalr	-36(ra) # 80005e5c <_Z8printIntiii>
    80003e88:	00005517          	auipc	a0,0x5
    80003e8c:	5f050513          	addi	a0,a0,1520 # 80009478 <CONSOLE_STATUS+0x468>
    80003e90:	00002097          	auipc	ra,0x2
    80003e94:	e1c080e7          	jalr	-484(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e98:	0014849b          	addiw	s1,s1,1
    80003e9c:	0ff4f493          	andi	s1,s1,255
    80003ea0:	00f00793          	li	a5,15
    80003ea4:	fc97f0e3          	bgeu	a5,s1,80003e64 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003ea8:	00005517          	auipc	a0,0x5
    80003eac:	40850513          	addi	a0,a0,1032 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003eb0:	00002097          	auipc	ra,0x2
    80003eb4:	dfc080e7          	jalr	-516(ra) # 80005cac <_Z11printStringPKc>
    finishedD = true;
    80003eb8:	00100793          	li	a5,1
    80003ebc:	00008717          	auipc	a4,0x8
    80003ec0:	f0f703a3          	sb	a5,-249(a4) # 8000bdc3 <_ZL9finishedD>
    thread_dispatch();
    80003ec4:	ffffd097          	auipc	ra,0xffffd
    80003ec8:	508080e7          	jalr	1288(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	00013903          	ld	s2,0(sp)
    80003edc:	02010113          	addi	sp,sp,32
    80003ee0:	00008067          	ret

0000000080003ee4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ee4:	fc010113          	addi	sp,sp,-64
    80003ee8:	02113c23          	sd	ra,56(sp)
    80003eec:	02813823          	sd	s0,48(sp)
    80003ef0:	02913423          	sd	s1,40(sp)
    80003ef4:	03213023          	sd	s2,32(sp)
    80003ef8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003efc:	02000513          	li	a0,32
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	048080e7          	jalr	72(ra) # 80001f48 <_Znwm>
    80003f08:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	1c0080e7          	jalr	448(ra) # 800020cc <_ZN6ThreadC1Ev>
    80003f14:	00008797          	auipc	a5,0x8
    80003f18:	bfc78793          	addi	a5,a5,-1028 # 8000bb10 <_ZTV7WorkerA+0x10>
    80003f1c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f20:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	39c50513          	addi	a0,a0,924 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003f2c:	00002097          	auipc	ra,0x2
    80003f30:	d80080e7          	jalr	-640(ra) # 80005cac <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f34:	02000513          	li	a0,32
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	010080e7          	jalr	16(ra) # 80001f48 <_Znwm>
    80003f40:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	188080e7          	jalr	392(ra) # 800020cc <_ZN6ThreadC1Ev>
    80003f4c:	00008797          	auipc	a5,0x8
    80003f50:	bec78793          	addi	a5,a5,-1044 # 8000bb38 <_ZTV7WorkerB+0x10>
    80003f54:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f58:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f5c:	00005517          	auipc	a0,0x5
    80003f60:	37c50513          	addi	a0,a0,892 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80003f64:	00002097          	auipc	ra,0x2
    80003f68:	d48080e7          	jalr	-696(ra) # 80005cac <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f6c:	02000513          	li	a0,32
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	fd8080e7          	jalr	-40(ra) # 80001f48 <_Znwm>
    80003f78:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	150080e7          	jalr	336(ra) # 800020cc <_ZN6ThreadC1Ev>
    80003f84:	00008797          	auipc	a5,0x8
    80003f88:	bdc78793          	addi	a5,a5,-1060 # 8000bb60 <_ZTV7WorkerC+0x10>
    80003f8c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f90:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	35c50513          	addi	a0,a0,860 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	d10080e7          	jalr	-752(ra) # 80005cac <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003fa4:	02000513          	li	a0,32
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	fa0080e7          	jalr	-96(ra) # 80001f48 <_Znwm>
    80003fb0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	118080e7          	jalr	280(ra) # 800020cc <_ZN6ThreadC1Ev>
    80003fbc:	00008797          	auipc	a5,0x8
    80003fc0:	bcc78793          	addi	a5,a5,-1076 # 8000bb88 <_ZTV7WorkerD+0x10>
    80003fc4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003fc8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	33c50513          	addi	a0,a0,828 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003fd4:	00002097          	auipc	ra,0x2
    80003fd8:	cd8080e7          	jalr	-808(ra) # 80005cac <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fdc:	00000493          	li	s1,0
    80003fe0:	00300793          	li	a5,3
    80003fe4:	0297c663          	blt	a5,s1,80004010 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fe8:	00349793          	slli	a5,s1,0x3
    80003fec:	fe040713          	addi	a4,s0,-32
    80003ff0:	00f707b3          	add	a5,a4,a5
    80003ff4:	fe07b503          	ld	a0,-32(a5)
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	050080e7          	jalr	80(ra) # 80002048 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004000:	0014849b          	addiw	s1,s1,1
    80004004:	fddff06f          	j	80003fe0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	074080e7          	jalr	116(ra) # 8000207c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004010:	00008797          	auipc	a5,0x8
    80004014:	db07c783          	lbu	a5,-592(a5) # 8000bdc0 <_ZL9finishedA>
    80004018:	fe0788e3          	beqz	a5,80004008 <_Z20Threads_CPP_API_testv+0x124>
    8000401c:	00008797          	auipc	a5,0x8
    80004020:	da57c783          	lbu	a5,-603(a5) # 8000bdc1 <_ZL9finishedB>
    80004024:	fe0782e3          	beqz	a5,80004008 <_Z20Threads_CPP_API_testv+0x124>
    80004028:	00008797          	auipc	a5,0x8
    8000402c:	d9a7c783          	lbu	a5,-614(a5) # 8000bdc2 <_ZL9finishedC>
    80004030:	fc078ce3          	beqz	a5,80004008 <_Z20Threads_CPP_API_testv+0x124>
    80004034:	00008797          	auipc	a5,0x8
    80004038:	d8f7c783          	lbu	a5,-625(a5) # 8000bdc3 <_ZL9finishedD>
    8000403c:	fc0786e3          	beqz	a5,80004008 <_Z20Threads_CPP_API_testv+0x124>
    80004040:	fc040493          	addi	s1,s0,-64
    80004044:	0080006f          	j	8000404c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004048:	00848493          	addi	s1,s1,8
    8000404c:	fe040793          	addi	a5,s0,-32
    80004050:	08f48663          	beq	s1,a5,800040dc <_Z20Threads_CPP_API_testv+0x1f8>
    80004054:	0004b503          	ld	a0,0(s1)
    80004058:	fe0508e3          	beqz	a0,80004048 <_Z20Threads_CPP_API_testv+0x164>
    8000405c:	00053783          	ld	a5,0(a0)
    80004060:	0087b783          	ld	a5,8(a5)
    80004064:	000780e7          	jalr	a5
    80004068:	fe1ff06f          	j	80004048 <_Z20Threads_CPP_API_testv+0x164>
    8000406c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004070:	00048513          	mv	a0,s1
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	efc080e7          	jalr	-260(ra) # 80001f70 <_ZdlPv>
    8000407c:	00090513          	mv	a0,s2
    80004080:	00009097          	auipc	ra,0x9
    80004084:	e48080e7          	jalr	-440(ra) # 8000cec8 <_Unwind_Resume>
    80004088:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000408c:	00048513          	mv	a0,s1
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	ee0080e7          	jalr	-288(ra) # 80001f70 <_ZdlPv>
    80004098:	00090513          	mv	a0,s2
    8000409c:	00009097          	auipc	ra,0x9
    800040a0:	e2c080e7          	jalr	-468(ra) # 8000cec8 <_Unwind_Resume>
    800040a4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800040a8:	00048513          	mv	a0,s1
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	ec4080e7          	jalr	-316(ra) # 80001f70 <_ZdlPv>
    800040b4:	00090513          	mv	a0,s2
    800040b8:	00009097          	auipc	ra,0x9
    800040bc:	e10080e7          	jalr	-496(ra) # 8000cec8 <_Unwind_Resume>
    800040c0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800040c4:	00048513          	mv	a0,s1
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	ea8080e7          	jalr	-344(ra) # 80001f70 <_ZdlPv>
    800040d0:	00090513          	mv	a0,s2
    800040d4:	00009097          	auipc	ra,0x9
    800040d8:	df4080e7          	jalr	-524(ra) # 8000cec8 <_Unwind_Resume>
}
    800040dc:	03813083          	ld	ra,56(sp)
    800040e0:	03013403          	ld	s0,48(sp)
    800040e4:	02813483          	ld	s1,40(sp)
    800040e8:	02013903          	ld	s2,32(sp)
    800040ec:	04010113          	addi	sp,sp,64
    800040f0:	00008067          	ret

00000000800040f4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00113423          	sd	ra,8(sp)
    800040fc:	00813023          	sd	s0,0(sp)
    80004100:	01010413          	addi	s0,sp,16
    80004104:	00008797          	auipc	a5,0x8
    80004108:	a0c78793          	addi	a5,a5,-1524 # 8000bb10 <_ZTV7WorkerA+0x10>
    8000410c:	00f53023          	sd	a5,0(a0)
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	da0080e7          	jalr	-608(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerAD0Ev>:
    80004128:	fe010113          	addi	sp,sp,-32
    8000412c:	00113c23          	sd	ra,24(sp)
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00913423          	sd	s1,8(sp)
    80004138:	02010413          	addi	s0,sp,32
    8000413c:	00050493          	mv	s1,a0
    80004140:	00008797          	auipc	a5,0x8
    80004144:	9d078793          	addi	a5,a5,-1584 # 8000bb10 <_ZTV7WorkerA+0x10>
    80004148:	00f53023          	sd	a5,0(a0)
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	d64080e7          	jalr	-668(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004154:	00048513          	mv	a0,s1
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	e18080e7          	jalr	-488(ra) # 80001f70 <_ZdlPv>
    80004160:	01813083          	ld	ra,24(sp)
    80004164:	01013403          	ld	s0,16(sp)
    80004168:	00813483          	ld	s1,8(sp)
    8000416c:	02010113          	addi	sp,sp,32
    80004170:	00008067          	ret

0000000080004174 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00113423          	sd	ra,8(sp)
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00008797          	auipc	a5,0x8
    80004188:	9b478793          	addi	a5,a5,-1612 # 8000bb38 <_ZTV7WorkerB+0x10>
    8000418c:	00f53023          	sd	a5,0(a0)
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	d20080e7          	jalr	-736(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004198:	00813083          	ld	ra,8(sp)
    8000419c:	00013403          	ld	s0,0(sp)
    800041a0:	01010113          	addi	sp,sp,16
    800041a4:	00008067          	ret

00000000800041a8 <_ZN7WorkerBD0Ev>:
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00113c23          	sd	ra,24(sp)
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	00050493          	mv	s1,a0
    800041c0:	00008797          	auipc	a5,0x8
    800041c4:	97878793          	addi	a5,a5,-1672 # 8000bb38 <_ZTV7WorkerB+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	ce4080e7          	jalr	-796(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800041d4:	00048513          	mv	a0,s1
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	d98080e7          	jalr	-616(ra) # 80001f70 <_ZdlPv>
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	00008797          	auipc	a5,0x8
    80004208:	95c78793          	addi	a5,a5,-1700 # 8000bb60 <_ZTV7WorkerC+0x10>
    8000420c:	00f53023          	sd	a5,0(a0)
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	ca0080e7          	jalr	-864(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN7WorkerCD0Ev>:
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050493          	mv	s1,a0
    80004240:	00008797          	auipc	a5,0x8
    80004244:	92078793          	addi	a5,a5,-1760 # 8000bb60 <_ZTV7WorkerC+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	c64080e7          	jalr	-924(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004254:	00048513          	mv	a0,s1
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	d18080e7          	jalr	-744(ra) # 80001f70 <_ZdlPv>
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret

0000000080004274 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00113423          	sd	ra,8(sp)
    8000427c:	00813023          	sd	s0,0(sp)
    80004280:	01010413          	addi	s0,sp,16
    80004284:	00008797          	auipc	a5,0x8
    80004288:	90478793          	addi	a5,a5,-1788 # 8000bb88 <_ZTV7WorkerD+0x10>
    8000428c:	00f53023          	sd	a5,0(a0)
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	c20080e7          	jalr	-992(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004298:	00813083          	ld	ra,8(sp)
    8000429c:	00013403          	ld	s0,0(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7WorkerDD0Ev>:
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050493          	mv	s1,a0
    800042c0:	00008797          	auipc	a5,0x8
    800042c4:	8c878793          	addi	a5,a5,-1848 # 8000bb88 <_ZTV7WorkerD+0x10>
    800042c8:	00f53023          	sd	a5,0(a0)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	be4080e7          	jalr	-1052(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800042d4:	00048513          	mv	a0,s1
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	c98080e7          	jalr	-872(ra) # 80001f70 <_ZdlPv>
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret

00000000800042f4 <_ZN7WorkerA3runEv>:
    void run() override {
    800042f4:	ff010113          	addi	sp,sp,-16
    800042f8:	00113423          	sd	ra,8(sp)
    800042fc:	00813023          	sd	s0,0(sp)
    80004300:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004304:	00000593          	li	a1,0
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	774080e7          	jalr	1908(ra) # 80003a7c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004310:	00813083          	ld	ra,8(sp)
    80004314:	00013403          	ld	s0,0(sp)
    80004318:	01010113          	addi	sp,sp,16
    8000431c:	00008067          	ret

0000000080004320 <_ZN7WorkerB3runEv>:
    void run() override {
    80004320:	ff010113          	addi	sp,sp,-16
    80004324:	00113423          	sd	ra,8(sp)
    80004328:	00813023          	sd	s0,0(sp)
    8000432c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004330:	00000593          	li	a1,0
    80004334:	00000097          	auipc	ra,0x0
    80004338:	814080e7          	jalr	-2028(ra) # 80003b48 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000433c:	00813083          	ld	ra,8(sp)
    80004340:	00013403          	ld	s0,0(sp)
    80004344:	01010113          	addi	sp,sp,16
    80004348:	00008067          	ret

000000008000434c <_ZN7WorkerC3runEv>:
    void run() override {
    8000434c:	ff010113          	addi	sp,sp,-16
    80004350:	00113423          	sd	ra,8(sp)
    80004354:	00813023          	sd	s0,0(sp)
    80004358:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000435c:	00000593          	li	a1,0
    80004360:	00000097          	auipc	ra,0x0
    80004364:	8bc080e7          	jalr	-1860(ra) # 80003c1c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004368:	00813083          	ld	ra,8(sp)
    8000436c:	00013403          	ld	s0,0(sp)
    80004370:	01010113          	addi	sp,sp,16
    80004374:	00008067          	ret

0000000080004378 <_ZN7WorkerD3runEv>:
    void run() override {
    80004378:	ff010113          	addi	sp,sp,-16
    8000437c:	00113423          	sd	ra,8(sp)
    80004380:	00813023          	sd	s0,0(sp)
    80004384:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004388:	00000593          	li	a1,0
    8000438c:	00000097          	auipc	ra,0x0
    80004390:	a10080e7          	jalr	-1520(ra) # 80003d9c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004394:	00813083          	ld	ra,8(sp)
    80004398:	00013403          	ld	s0,0(sp)
    8000439c:	01010113          	addi	sp,sp,16
    800043a0:	00008067          	ret

00000000800043a4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800043a4:	f8010113          	addi	sp,sp,-128
    800043a8:	06113c23          	sd	ra,120(sp)
    800043ac:	06813823          	sd	s0,112(sp)
    800043b0:	06913423          	sd	s1,104(sp)
    800043b4:	07213023          	sd	s2,96(sp)
    800043b8:	05313c23          	sd	s3,88(sp)
    800043bc:	05413823          	sd	s4,80(sp)
    800043c0:	05513423          	sd	s5,72(sp)
    800043c4:	05613023          	sd	s6,64(sp)
    800043c8:	03713c23          	sd	s7,56(sp)
    800043cc:	03813823          	sd	s8,48(sp)
    800043d0:	03913423          	sd	s9,40(sp)
    800043d4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043d8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043dc:	00005517          	auipc	a0,0x5
    800043e0:	d6450513          	addi	a0,a0,-668 # 80009140 <CONSOLE_STATUS+0x130>
    800043e4:	00002097          	auipc	ra,0x2
    800043e8:	8c8080e7          	jalr	-1848(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    800043ec:	01e00593          	li	a1,30
    800043f0:	f8040493          	addi	s1,s0,-128
    800043f4:	00048513          	mv	a0,s1
    800043f8:	00002097          	auipc	ra,0x2
    800043fc:	93c080e7          	jalr	-1732(ra) # 80005d34 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004400:	00048513          	mv	a0,s1
    80004404:	00002097          	auipc	ra,0x2
    80004408:	a08080e7          	jalr	-1528(ra) # 80005e0c <_Z11stringToIntPKc>
    8000440c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004410:	00005517          	auipc	a0,0x5
    80004414:	d5050513          	addi	a0,a0,-688 # 80009160 <CONSOLE_STATUS+0x150>
    80004418:	00002097          	auipc	ra,0x2
    8000441c:	894080e7          	jalr	-1900(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    80004420:	01e00593          	li	a1,30
    80004424:	00048513          	mv	a0,s1
    80004428:	00002097          	auipc	ra,0x2
    8000442c:	90c080e7          	jalr	-1780(ra) # 80005d34 <_Z9getStringPci>
    n = stringToInt(input);
    80004430:	00048513          	mv	a0,s1
    80004434:	00002097          	auipc	ra,0x2
    80004438:	9d8080e7          	jalr	-1576(ra) # 80005e0c <_Z11stringToIntPKc>
    8000443c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004440:	00005517          	auipc	a0,0x5
    80004444:	d4050513          	addi	a0,a0,-704 # 80009180 <CONSOLE_STATUS+0x170>
    80004448:	00002097          	auipc	ra,0x2
    8000444c:	864080e7          	jalr	-1948(ra) # 80005cac <_Z11printStringPKc>
    printInt(threadNum);
    80004450:	00000613          	li	a2,0
    80004454:	00a00593          	li	a1,10
    80004458:	00098513          	mv	a0,s3
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	a00080e7          	jalr	-1536(ra) # 80005e5c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004464:	00005517          	auipc	a0,0x5
    80004468:	d3450513          	addi	a0,a0,-716 # 80009198 <CONSOLE_STATUS+0x188>
    8000446c:	00002097          	auipc	ra,0x2
    80004470:	840080e7          	jalr	-1984(ra) # 80005cac <_Z11printStringPKc>
    printInt(n);
    80004474:	00000613          	li	a2,0
    80004478:	00a00593          	li	a1,10
    8000447c:	00048513          	mv	a0,s1
    80004480:	00002097          	auipc	ra,0x2
    80004484:	9dc080e7          	jalr	-1572(ra) # 80005e5c <_Z8printIntiii>
    printString(".\n");
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	d2850513          	addi	a0,a0,-728 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004490:	00002097          	auipc	ra,0x2
    80004494:	81c080e7          	jalr	-2020(ra) # 80005cac <_Z11printStringPKc>
    if (threadNum > n) {
    80004498:	0334c463          	blt	s1,s3,800044c0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000449c:	03305c63          	blez	s3,800044d4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800044a0:	03800513          	li	a0,56
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	aa4080e7          	jalr	-1372(ra) # 80001f48 <_Znwm>
    800044ac:	00050a93          	mv	s5,a0
    800044b0:	00048593          	mv	a1,s1
    800044b4:	00002097          	auipc	ra,0x2
    800044b8:	ac8080e7          	jalr	-1336(ra) # 80005f7c <_ZN9BufferCPPC1Ei>
    800044bc:	0300006f          	j	800044ec <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	cf850513          	addi	a0,a0,-776 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	7e4080e7          	jalr	2020(ra) # 80005cac <_Z11printStringPKc>
        return;
    800044d0:	0140006f          	j	800044e4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044d4:	00005517          	auipc	a0,0x5
    800044d8:	d2450513          	addi	a0,a0,-732 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	7d0080e7          	jalr	2000(ra) # 80005cac <_Z11printStringPKc>
        return;
    800044e4:	000c0113          	mv	sp,s8
    800044e8:	2140006f          	j	800046fc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044ec:	01000513          	li	a0,16
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	a58080e7          	jalr	-1448(ra) # 80001f48 <_Znwm>
    800044f8:	00050913          	mv	s2,a0
    800044fc:	00000593          	li	a1,0
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	bfc080e7          	jalr	-1028(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    80004508:	00008797          	auipc	a5,0x8
    8000450c:	8d27b423          	sd	s2,-1848(a5) # 8000bdd0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004510:	00399793          	slli	a5,s3,0x3
    80004514:	00f78793          	addi	a5,a5,15
    80004518:	ff07f793          	andi	a5,a5,-16
    8000451c:	40f10133          	sub	sp,sp,a5
    80004520:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004524:	0019871b          	addiw	a4,s3,1
    80004528:	00171793          	slli	a5,a4,0x1
    8000452c:	00e787b3          	add	a5,a5,a4
    80004530:	00379793          	slli	a5,a5,0x3
    80004534:	00f78793          	addi	a5,a5,15
    80004538:	ff07f793          	andi	a5,a5,-16
    8000453c:	40f10133          	sub	sp,sp,a5
    80004540:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004544:	00199493          	slli	s1,s3,0x1
    80004548:	013484b3          	add	s1,s1,s3
    8000454c:	00349493          	slli	s1,s1,0x3
    80004550:	009b04b3          	add	s1,s6,s1
    80004554:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004558:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000455c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004560:	02800513          	li	a0,40
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	9e4080e7          	jalr	-1564(ra) # 80001f48 <_Znwm>
    8000456c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	b5c080e7          	jalr	-1188(ra) # 800020cc <_ZN6ThreadC1Ev>
    80004578:	00007797          	auipc	a5,0x7
    8000457c:	68878793          	addi	a5,a5,1672 # 8000bc00 <_ZTV8Consumer+0x10>
    80004580:	00fbb023          	sd	a5,0(s7)
    80004584:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004588:	000b8513          	mv	a0,s7
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	abc080e7          	jalr	-1348(ra) # 80002048 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004594:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004598:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000459c:	00008797          	auipc	a5,0x8
    800045a0:	8347b783          	ld	a5,-1996(a5) # 8000bdd0 <_ZL10waitForAll>
    800045a4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045a8:	02800513          	li	a0,40
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	99c080e7          	jalr	-1636(ra) # 80001f48 <_Znwm>
    800045b4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	b14080e7          	jalr	-1260(ra) # 800020cc <_ZN6ThreadC1Ev>
    800045c0:	00007797          	auipc	a5,0x7
    800045c4:	5f078793          	addi	a5,a5,1520 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    800045c8:	00f4b023          	sd	a5,0(s1)
    800045cc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045d0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045d4:	00048513          	mv	a0,s1
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	a70080e7          	jalr	-1424(ra) # 80002048 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045e0:	00100913          	li	s2,1
    800045e4:	0300006f          	j	80004614 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045e8:	00007797          	auipc	a5,0x7
    800045ec:	5f078793          	addi	a5,a5,1520 # 8000bbd8 <_ZTV8Producer+0x10>
    800045f0:	00fcb023          	sd	a5,0(s9)
    800045f4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045f8:	00391793          	slli	a5,s2,0x3
    800045fc:	00fa07b3          	add	a5,s4,a5
    80004600:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004604:	000c8513          	mv	a0,s9
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	a40080e7          	jalr	-1472(ra) # 80002048 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004610:	0019091b          	addiw	s2,s2,1
    80004614:	05395263          	bge	s2,s3,80004658 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004618:	00191493          	slli	s1,s2,0x1
    8000461c:	012484b3          	add	s1,s1,s2
    80004620:	00349493          	slli	s1,s1,0x3
    80004624:	009b04b3          	add	s1,s6,s1
    80004628:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000462c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004630:	00007797          	auipc	a5,0x7
    80004634:	7a07b783          	ld	a5,1952(a5) # 8000bdd0 <_ZL10waitForAll>
    80004638:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000463c:	02800513          	li	a0,40
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	908080e7          	jalr	-1784(ra) # 80001f48 <_Znwm>
    80004648:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	a80080e7          	jalr	-1408(ra) # 800020cc <_ZN6ThreadC1Ev>
    80004654:	f95ff06f          	j	800045e8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	a24080e7          	jalr	-1500(ra) # 8000207c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004660:	00000493          	li	s1,0
    80004664:	0099ce63          	blt	s3,s1,80004680 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004668:	00007517          	auipc	a0,0x7
    8000466c:	76853503          	ld	a0,1896(a0) # 8000bdd0 <_ZL10waitForAll>
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	ac8080e7          	jalr	-1336(ra) # 80002138 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004678:	0014849b          	addiw	s1,s1,1
    8000467c:	fe9ff06f          	j	80004664 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004680:	00007517          	auipc	a0,0x7
    80004684:	75053503          	ld	a0,1872(a0) # 8000bdd0 <_ZL10waitForAll>
    80004688:	00050863          	beqz	a0,80004698 <_Z20testConsumerProducerv+0x2f4>
    8000468c:	00053783          	ld	a5,0(a0)
    80004690:	0087b783          	ld	a5,8(a5)
    80004694:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004698:	00000493          	li	s1,0
    8000469c:	0080006f          	j	800046a4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800046a0:	0014849b          	addiw	s1,s1,1
    800046a4:	0334d263          	bge	s1,s3,800046c8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800046a8:	00349793          	slli	a5,s1,0x3
    800046ac:	00fa07b3          	add	a5,s4,a5
    800046b0:	0007b503          	ld	a0,0(a5)
    800046b4:	fe0506e3          	beqz	a0,800046a0 <_Z20testConsumerProducerv+0x2fc>
    800046b8:	00053783          	ld	a5,0(a0)
    800046bc:	0087b783          	ld	a5,8(a5)
    800046c0:	000780e7          	jalr	a5
    800046c4:	fddff06f          	j	800046a0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046c8:	000b8a63          	beqz	s7,800046dc <_Z20testConsumerProducerv+0x338>
    800046cc:	000bb783          	ld	a5,0(s7)
    800046d0:	0087b783          	ld	a5,8(a5)
    800046d4:	000b8513          	mv	a0,s7
    800046d8:	000780e7          	jalr	a5
    delete buffer;
    800046dc:	000a8e63          	beqz	s5,800046f8 <_Z20testConsumerProducerv+0x354>
    800046e0:	000a8513          	mv	a0,s5
    800046e4:	00002097          	auipc	ra,0x2
    800046e8:	b90080e7          	jalr	-1136(ra) # 80006274 <_ZN9BufferCPPD1Ev>
    800046ec:	000a8513          	mv	a0,s5
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	880080e7          	jalr	-1920(ra) # 80001f70 <_ZdlPv>
    800046f8:	000c0113          	mv	sp,s8
}
    800046fc:	f8040113          	addi	sp,s0,-128
    80004700:	07813083          	ld	ra,120(sp)
    80004704:	07013403          	ld	s0,112(sp)
    80004708:	06813483          	ld	s1,104(sp)
    8000470c:	06013903          	ld	s2,96(sp)
    80004710:	05813983          	ld	s3,88(sp)
    80004714:	05013a03          	ld	s4,80(sp)
    80004718:	04813a83          	ld	s5,72(sp)
    8000471c:	04013b03          	ld	s6,64(sp)
    80004720:	03813b83          	ld	s7,56(sp)
    80004724:	03013c03          	ld	s8,48(sp)
    80004728:	02813c83          	ld	s9,40(sp)
    8000472c:	08010113          	addi	sp,sp,128
    80004730:	00008067          	ret
    80004734:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004738:	000a8513          	mv	a0,s5
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	834080e7          	jalr	-1996(ra) # 80001f70 <_ZdlPv>
    80004744:	00048513          	mv	a0,s1
    80004748:	00008097          	auipc	ra,0x8
    8000474c:	780080e7          	jalr	1920(ra) # 8000cec8 <_Unwind_Resume>
    80004750:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004754:	00090513          	mv	a0,s2
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	818080e7          	jalr	-2024(ra) # 80001f70 <_ZdlPv>
    80004760:	00048513          	mv	a0,s1
    80004764:	00008097          	auipc	ra,0x8
    80004768:	764080e7          	jalr	1892(ra) # 8000cec8 <_Unwind_Resume>
    8000476c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004770:	000b8513          	mv	a0,s7
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	7fc080e7          	jalr	2044(ra) # 80001f70 <_ZdlPv>
    8000477c:	00048513          	mv	a0,s1
    80004780:	00008097          	auipc	ra,0x8
    80004784:	748080e7          	jalr	1864(ra) # 8000cec8 <_Unwind_Resume>
    80004788:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000478c:	00048513          	mv	a0,s1
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	7e0080e7          	jalr	2016(ra) # 80001f70 <_ZdlPv>
    80004798:	00090513          	mv	a0,s2
    8000479c:	00008097          	auipc	ra,0x8
    800047a0:	72c080e7          	jalr	1836(ra) # 8000cec8 <_Unwind_Resume>
    800047a4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800047a8:	000c8513          	mv	a0,s9
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	7c4080e7          	jalr	1988(ra) # 80001f70 <_ZdlPv>
    800047b4:	00048513          	mv	a0,s1
    800047b8:	00008097          	auipc	ra,0x8
    800047bc:	710080e7          	jalr	1808(ra) # 8000cec8 <_Unwind_Resume>

00000000800047c0 <_ZN8Consumer3runEv>:
    void run() override {
    800047c0:	fd010113          	addi	sp,sp,-48
    800047c4:	02113423          	sd	ra,40(sp)
    800047c8:	02813023          	sd	s0,32(sp)
    800047cc:	00913c23          	sd	s1,24(sp)
    800047d0:	01213823          	sd	s2,16(sp)
    800047d4:	01313423          	sd	s3,8(sp)
    800047d8:	03010413          	addi	s0,sp,48
    800047dc:	00050913          	mv	s2,a0
        int i = 0;
    800047e0:	00000993          	li	s3,0
    800047e4:	0100006f          	j	800047f4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047e8:	00a00513          	li	a0,10
    800047ec:	ffffe097          	auipc	ra,0xffffe
    800047f0:	aa4080e7          	jalr	-1372(ra) # 80002290 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047f4:	00007797          	auipc	a5,0x7
    800047f8:	5d47a783          	lw	a5,1492(a5) # 8000bdc8 <_ZL9threadEnd>
    800047fc:	04079a63          	bnez	a5,80004850 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004800:	02093783          	ld	a5,32(s2)
    80004804:	0087b503          	ld	a0,8(a5)
    80004808:	00002097          	auipc	ra,0x2
    8000480c:	958080e7          	jalr	-1704(ra) # 80006160 <_ZN9BufferCPP3getEv>
            i++;
    80004810:	0019849b          	addiw	s1,s3,1
    80004814:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004818:	0ff57513          	andi	a0,a0,255
    8000481c:	ffffe097          	auipc	ra,0xffffe
    80004820:	a74080e7          	jalr	-1420(ra) # 80002290 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004824:	05000793          	li	a5,80
    80004828:	02f4e4bb          	remw	s1,s1,a5
    8000482c:	fc0494e3          	bnez	s1,800047f4 <_ZN8Consumer3runEv+0x34>
    80004830:	fb9ff06f          	j	800047e8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004834:	02093783          	ld	a5,32(s2)
    80004838:	0087b503          	ld	a0,8(a5)
    8000483c:	00002097          	auipc	ra,0x2
    80004840:	924080e7          	jalr	-1756(ra) # 80006160 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004844:	0ff57513          	andi	a0,a0,255
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	a48080e7          	jalr	-1464(ra) # 80002290 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004850:	02093783          	ld	a5,32(s2)
    80004854:	0087b503          	ld	a0,8(a5)
    80004858:	00002097          	auipc	ra,0x2
    8000485c:	994080e7          	jalr	-1644(ra) # 800061ec <_ZN9BufferCPP6getCntEv>
    80004860:	fca04ae3          	bgtz	a0,80004834 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004864:	02093783          	ld	a5,32(s2)
    80004868:	0107b503          	ld	a0,16(a5)
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	904080e7          	jalr	-1788(ra) # 80002170 <_ZN9Semaphore6signalEv>
    }
    80004874:	02813083          	ld	ra,40(sp)
    80004878:	02013403          	ld	s0,32(sp)
    8000487c:	01813483          	ld	s1,24(sp)
    80004880:	01013903          	ld	s2,16(sp)
    80004884:	00813983          	ld	s3,8(sp)
    80004888:	03010113          	addi	sp,sp,48
    8000488c:	00008067          	ret

0000000080004890 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00113423          	sd	ra,8(sp)
    80004898:	00813023          	sd	s0,0(sp)
    8000489c:	01010413          	addi	s0,sp,16
    800048a0:	00007797          	auipc	a5,0x7
    800048a4:	36078793          	addi	a5,a5,864 # 8000bc00 <_ZTV8Consumer+0x10>
    800048a8:	00f53023          	sd	a5,0(a0)
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	604080e7          	jalr	1540(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800048b4:	00813083          	ld	ra,8(sp)
    800048b8:	00013403          	ld	s0,0(sp)
    800048bc:	01010113          	addi	sp,sp,16
    800048c0:	00008067          	ret

00000000800048c4 <_ZN8ConsumerD0Ev>:
    800048c4:	fe010113          	addi	sp,sp,-32
    800048c8:	00113c23          	sd	ra,24(sp)
    800048cc:	00813823          	sd	s0,16(sp)
    800048d0:	00913423          	sd	s1,8(sp)
    800048d4:	02010413          	addi	s0,sp,32
    800048d8:	00050493          	mv	s1,a0
    800048dc:	00007797          	auipc	a5,0x7
    800048e0:	32478793          	addi	a5,a5,804 # 8000bc00 <_ZTV8Consumer+0x10>
    800048e4:	00f53023          	sd	a5,0(a0)
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	5c8080e7          	jalr	1480(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800048f0:	00048513          	mv	a0,s1
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	67c080e7          	jalr	1660(ra) # 80001f70 <_ZdlPv>
    800048fc:	01813083          	ld	ra,24(sp)
    80004900:	01013403          	ld	s0,16(sp)
    80004904:	00813483          	ld	s1,8(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret

0000000080004910 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004910:	ff010113          	addi	sp,sp,-16
    80004914:	00113423          	sd	ra,8(sp)
    80004918:	00813023          	sd	s0,0(sp)
    8000491c:	01010413          	addi	s0,sp,16
    80004920:	00007797          	auipc	a5,0x7
    80004924:	29078793          	addi	a5,a5,656 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    80004928:	00f53023          	sd	a5,0(a0)
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	584080e7          	jalr	1412(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004934:	00813083          	ld	ra,8(sp)
    80004938:	00013403          	ld	s0,0(sp)
    8000493c:	01010113          	addi	sp,sp,16
    80004940:	00008067          	ret

0000000080004944 <_ZN16ProducerKeyboradD0Ev>:
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00113c23          	sd	ra,24(sp)
    8000494c:	00813823          	sd	s0,16(sp)
    80004950:	00913423          	sd	s1,8(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050493          	mv	s1,a0
    8000495c:	00007797          	auipc	a5,0x7
    80004960:	25478793          	addi	a5,a5,596 # 8000bbb0 <_ZTV16ProducerKeyborad+0x10>
    80004964:	00f53023          	sd	a5,0(a0)
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	548080e7          	jalr	1352(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80004970:	00048513          	mv	a0,s1
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	5fc080e7          	jalr	1532(ra) # 80001f70 <_ZdlPv>
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	02010113          	addi	sp,sp,32
    8000498c:	00008067          	ret

0000000080004990 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004990:	ff010113          	addi	sp,sp,-16
    80004994:	00113423          	sd	ra,8(sp)
    80004998:	00813023          	sd	s0,0(sp)
    8000499c:	01010413          	addi	s0,sp,16
    800049a0:	00007797          	auipc	a5,0x7
    800049a4:	23878793          	addi	a5,a5,568 # 8000bbd8 <_ZTV8Producer+0x10>
    800049a8:	00f53023          	sd	a5,0(a0)
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	504080e7          	jalr	1284(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800049b4:	00813083          	ld	ra,8(sp)
    800049b8:	00013403          	ld	s0,0(sp)
    800049bc:	01010113          	addi	sp,sp,16
    800049c0:	00008067          	ret

00000000800049c4 <_ZN8ProducerD0Ev>:
    800049c4:	fe010113          	addi	sp,sp,-32
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00813823          	sd	s0,16(sp)
    800049d0:	00913423          	sd	s1,8(sp)
    800049d4:	02010413          	addi	s0,sp,32
    800049d8:	00050493          	mv	s1,a0
    800049dc:	00007797          	auipc	a5,0x7
    800049e0:	1fc78793          	addi	a5,a5,508 # 8000bbd8 <_ZTV8Producer+0x10>
    800049e4:	00f53023          	sd	a5,0(a0)
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	4c8080e7          	jalr	1224(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    800049f0:	00048513          	mv	a0,s1
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	57c080e7          	jalr	1404(ra) # 80001f70 <_ZdlPv>
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	00813483          	ld	s1,8(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret

0000000080004a10 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a10:	fe010113          	addi	sp,sp,-32
    80004a14:	00113c23          	sd	ra,24(sp)
    80004a18:	00813823          	sd	s0,16(sp)
    80004a1c:	00913423          	sd	s1,8(sp)
    80004a20:	02010413          	addi	s0,sp,32
    80004a24:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	bf8080e7          	jalr	-1032(ra) # 80001620 <_Z4getcv>
    80004a30:	0005059b          	sext.w	a1,a0
    80004a34:	01b00793          	li	a5,27
    80004a38:	00f58c63          	beq	a1,a5,80004a50 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a3c:	0204b783          	ld	a5,32(s1)
    80004a40:	0087b503          	ld	a0,8(a5)
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	68c080e7          	jalr	1676(ra) # 800060d0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a4c:	fddff06f          	j	80004a28 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a50:	00100793          	li	a5,1
    80004a54:	00007717          	auipc	a4,0x7
    80004a58:	36f72a23          	sw	a5,884(a4) # 8000bdc8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a5c:	0204b783          	ld	a5,32(s1)
    80004a60:	02100593          	li	a1,33
    80004a64:	0087b503          	ld	a0,8(a5)
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	668080e7          	jalr	1640(ra) # 800060d0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a70:	0204b783          	ld	a5,32(s1)
    80004a74:	0107b503          	ld	a0,16(a5)
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	6f8080e7          	jalr	1784(ra) # 80002170 <_ZN9Semaphore6signalEv>
    }
    80004a80:	01813083          	ld	ra,24(sp)
    80004a84:	01013403          	ld	s0,16(sp)
    80004a88:	00813483          	ld	s1,8(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret

0000000080004a94 <_ZN8Producer3runEv>:
    void run() override {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00050493          	mv	s1,a0
        int i = 0;
    80004ab0:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ab4:	00007797          	auipc	a5,0x7
    80004ab8:	3147a783          	lw	a5,788(a5) # 8000bdc8 <_ZL9threadEnd>
    80004abc:	04079263          	bnez	a5,80004b00 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004ac0:	0204b783          	ld	a5,32(s1)
    80004ac4:	0007a583          	lw	a1,0(a5)
    80004ac8:	0305859b          	addiw	a1,a1,48
    80004acc:	0087b503          	ld	a0,8(a5)
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	600080e7          	jalr	1536(ra) # 800060d0 <_ZN9BufferCPP3putEi>
            i++;
    80004ad8:	0019071b          	addiw	a4,s2,1
    80004adc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ae0:	0204b783          	ld	a5,32(s1)
    80004ae4:	0007a783          	lw	a5,0(a5)
    80004ae8:	00e787bb          	addw	a5,a5,a4
    80004aec:	00500513          	li	a0,5
    80004af0:	02a7e53b          	remw	a0,a5,a0
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	5b0080e7          	jalr	1456(ra) # 800020a4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004afc:	fb9ff06f          	j	80004ab4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004b00:	0204b783          	ld	a5,32(s1)
    80004b04:	0107b503          	ld	a0,16(a5)
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	668080e7          	jalr	1640(ra) # 80002170 <_ZN9Semaphore6signalEv>
    }
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	00813483          	ld	s1,8(sp)
    80004b1c:	00013903          	ld	s2,0(sp)
    80004b20:	02010113          	addi	sp,sp,32
    80004b24:	00008067          	ret

0000000080004b28 <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b28:	fe010113          	addi	sp,sp,-32
    80004b2c:	00113c23          	sd	ra,24(sp)
    80004b30:	00813823          	sd	s0,16(sp)
    80004b34:	00913423          	sd	s1,8(sp)
    80004b38:	01213023          	sd	s2,0(sp)
    80004b3c:	02010413          	addi	s0,sp,32
    80004b40:	00050493          	mv	s1,a0
    80004b44:	00058913          	mv	s2,a1
    80004b48:	0015879b          	addiw	a5,a1,1
    80004b4c:	0007851b          	sext.w	a0,a5
    80004b50:	00f4a023          	sw	a5,0(s1)
    80004b54:	0004a823          	sw	zero,16(s1)
    80004b58:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b5c:	00251513          	slli	a0,a0,0x2
    80004b60:	ffffc097          	auipc	ra,0xffffc
    80004b64:	6f8080e7          	jalr	1784(ra) # 80001258 <_Z9mem_allocm>
    80004b68:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004b6c:	00000593          	li	a1,0
    80004b70:	02048513          	addi	a0,s1,32
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	894080e7          	jalr	-1900(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004b7c:	00090593          	mv	a1,s2
    80004b80:	01848513          	addi	a0,s1,24
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	884080e7          	jalr	-1916(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004b8c:	00100593          	li	a1,1
    80004b90:	02848513          	addi	a0,s1,40
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	874080e7          	jalr	-1932(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004b9c:	00100593          	li	a1,1
    80004ba0:	03048513          	addi	a0,s1,48
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	864080e7          	jalr	-1948(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004bac:	01813083          	ld	ra,24(sp)
    80004bb0:	01013403          	ld	s0,16(sp)
    80004bb4:	00813483          	ld	s1,8(sp)
    80004bb8:	00013903          	ld	s2,0(sp)
    80004bbc:	02010113          	addi	sp,sp,32
    80004bc0:	00008067          	ret

0000000080004bc4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004bc4:	fe010113          	addi	sp,sp,-32
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	00813823          	sd	s0,16(sp)
    80004bd0:	00913423          	sd	s1,8(sp)
    80004bd4:	01213023          	sd	s2,0(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    80004bdc:	00050493          	mv	s1,a0
    80004be0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004be4:	01853503          	ld	a0,24(a0)
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	8bc080e7          	jalr	-1860(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004bf0:	0304b503          	ld	a0,48(s1)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	8b0080e7          	jalr	-1872(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004bfc:	0084b783          	ld	a5,8(s1)
    80004c00:	0144a703          	lw	a4,20(s1)
    80004c04:	00271713          	slli	a4,a4,0x2
    80004c08:	00e787b3          	add	a5,a5,a4
    80004c0c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004c10:	0144a783          	lw	a5,20(s1)
    80004c14:	0017879b          	addiw	a5,a5,1
    80004c18:	0004a703          	lw	a4,0(s1)
    80004c1c:	02e7e7bb          	remw	a5,a5,a4
    80004c20:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004c24:	0304b503          	ld	a0,48(s1)
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	8c8080e7          	jalr	-1848(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004c30:	0204b503          	ld	a0,32(s1)
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	8bc080e7          	jalr	-1860(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	00013903          	ld	s2,0(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret

0000000080004c54 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	00813823          	sd	s0,16(sp)
    80004c60:	00913423          	sd	s1,8(sp)
    80004c64:	01213023          	sd	s2,0(sp)
    80004c68:	02010413          	addi	s0,sp,32
    80004c6c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004c70:	02053503          	ld	a0,32(a0)
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	830080e7          	jalr	-2000(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004c7c:	0284b503          	ld	a0,40(s1)
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	824080e7          	jalr	-2012(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004c88:	0084b703          	ld	a4,8(s1)
    80004c8c:	0104a783          	lw	a5,16(s1)
    80004c90:	00279693          	slli	a3,a5,0x2
    80004c94:	00d70733          	add	a4,a4,a3
    80004c98:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c9c:	0017879b          	addiw	a5,a5,1
    80004ca0:	0004a703          	lw	a4,0(s1)
    80004ca4:	02e7e7bb          	remw	a5,a5,a4
    80004ca8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004cac:	0284b503          	ld	a0,40(s1)
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	840080e7          	jalr	-1984(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004cb8:	0184b503          	ld	a0,24(s1)
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	834080e7          	jalr	-1996(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004cc4:	00090513          	mv	a0,s2
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	00813483          	ld	s1,8(sp)
    80004cd4:	00013903          	ld	s2,0(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00113c23          	sd	ra,24(sp)
    80004ce8:	00813823          	sd	s0,16(sp)
    80004cec:	00913423          	sd	s1,8(sp)
    80004cf0:	01213023          	sd	s2,0(sp)
    80004cf4:	02010413          	addi	s0,sp,32
    80004cf8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004cfc:	02853503          	ld	a0,40(a0)
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	7a4080e7          	jalr	1956(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80004d08:	0304b503          	ld	a0,48(s1)
    80004d0c:	ffffc097          	auipc	ra,0xffffc
    80004d10:	798080e7          	jalr	1944(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80004d14:	0144a783          	lw	a5,20(s1)
    80004d18:	0104a903          	lw	s2,16(s1)
    80004d1c:	0327ce63          	blt	a5,s2,80004d58 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004d20:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004d24:	0304b503          	ld	a0,48(s1)
    80004d28:	ffffc097          	auipc	ra,0xffffc
    80004d2c:	7c8080e7          	jalr	1992(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80004d30:	0284b503          	ld	a0,40(s1)
    80004d34:	ffffc097          	auipc	ra,0xffffc
    80004d38:	7bc080e7          	jalr	1980(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004d3c:	00090513          	mv	a0,s2
    80004d40:	01813083          	ld	ra,24(sp)
    80004d44:	01013403          	ld	s0,16(sp)
    80004d48:	00813483          	ld	s1,8(sp)
    80004d4c:	00013903          	ld	s2,0(sp)
    80004d50:	02010113          	addi	sp,sp,32
    80004d54:	00008067          	ret
        ret = cap - head + tail;
    80004d58:	0004a703          	lw	a4,0(s1)
    80004d5c:	4127093b          	subw	s2,a4,s2
    80004d60:	00f9093b          	addw	s2,s2,a5
    80004d64:	fc1ff06f          	j	80004d24 <_ZN6Buffer6getCntEv+0x44>

0000000080004d68 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004d68:	fe010113          	addi	sp,sp,-32
    80004d6c:	00113c23          	sd	ra,24(sp)
    80004d70:	00813823          	sd	s0,16(sp)
    80004d74:	00913423          	sd	s1,8(sp)
    80004d78:	02010413          	addi	s0,sp,32
    80004d7c:	00050493          	mv	s1,a0
    putc('\n');
    80004d80:	00a00513          	li	a0,10
    80004d84:	ffffd097          	auipc	ra,0xffffd
    80004d88:	8e8080e7          	jalr	-1816(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	59450513          	addi	a0,a0,1428 # 80009320 <CONSOLE_STATUS+0x310>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	f18080e7          	jalr	-232(ra) # 80005cac <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004d9c:	00048513          	mv	a0,s1
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	f40080e7          	jalr	-192(ra) # 80004ce0 <_ZN6Buffer6getCntEv>
    80004da8:	02a05c63          	blez	a0,80004de0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004dac:	0084b783          	ld	a5,8(s1)
    80004db0:	0104a703          	lw	a4,16(s1)
    80004db4:	00271713          	slli	a4,a4,0x2
    80004db8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004dbc:	0007c503          	lbu	a0,0(a5)
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	8ac080e7          	jalr	-1876(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    80004dc8:	0104a783          	lw	a5,16(s1)
    80004dcc:	0017879b          	addiw	a5,a5,1
    80004dd0:	0004a703          	lw	a4,0(s1)
    80004dd4:	02e7e7bb          	remw	a5,a5,a4
    80004dd8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ddc:	fc1ff06f          	j	80004d9c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004de0:	02100513          	li	a0,33
    80004de4:	ffffd097          	auipc	ra,0xffffd
    80004de8:	888080e7          	jalr	-1912(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80004dec:	00a00513          	li	a0,10
    80004df0:	ffffd097          	auipc	ra,0xffffd
    80004df4:	87c080e7          	jalr	-1924(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    80004df8:	0084b503          	ld	a0,8(s1)
    80004dfc:	ffffc097          	auipc	ra,0xffffc
    80004e00:	4b0080e7          	jalr	1200(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004e04:	0204b503          	ld	a0,32(s1)
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	650080e7          	jalr	1616(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80004e10:	0184b503          	ld	a0,24(s1)
    80004e14:	ffffc097          	auipc	ra,0xffffc
    80004e18:	644080e7          	jalr	1604(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80004e1c:	0304b503          	ld	a0,48(s1)
    80004e20:	ffffc097          	auipc	ra,0xffffc
    80004e24:	638080e7          	jalr	1592(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80004e28:	0284b503          	ld	a0,40(s1)
    80004e2c:	ffffc097          	auipc	ra,0xffffc
    80004e30:	62c080e7          	jalr	1580(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80004e34:	01813083          	ld	ra,24(sp)
    80004e38:	01013403          	ld	s0,16(sp)
    80004e3c:	00813483          	ld	s1,8(sp)
    80004e40:	02010113          	addi	sp,sp,32
    80004e44:	00008067          	ret

0000000080004e48 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004e48:	fe010113          	addi	sp,sp,-32
    80004e4c:	00113c23          	sd	ra,24(sp)
    80004e50:	00813823          	sd	s0,16(sp)
    80004e54:	00913423          	sd	s1,8(sp)
    80004e58:	01213023          	sd	s2,0(sp)
    80004e5c:	02010413          	addi	s0,sp,32
    80004e60:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004e64:	00100793          	li	a5,1
    80004e68:	02a7f863          	bgeu	a5,a0,80004e98 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004e6c:	00a00793          	li	a5,10
    80004e70:	02f577b3          	remu	a5,a0,a5
    80004e74:	02078e63          	beqz	a5,80004eb0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004e78:	fff48513          	addi	a0,s1,-1
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	fcc080e7          	jalr	-52(ra) # 80004e48 <_ZL9fibonaccim>
    80004e84:	00050913          	mv	s2,a0
    80004e88:	ffe48513          	addi	a0,s1,-2
    80004e8c:	00000097          	auipc	ra,0x0
    80004e90:	fbc080e7          	jalr	-68(ra) # 80004e48 <_ZL9fibonaccim>
    80004e94:	00a90533          	add	a0,s2,a0
}
    80004e98:	01813083          	ld	ra,24(sp)
    80004e9c:	01013403          	ld	s0,16(sp)
    80004ea0:	00813483          	ld	s1,8(sp)
    80004ea4:	00013903          	ld	s2,0(sp)
    80004ea8:	02010113          	addi	sp,sp,32
    80004eac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004eb0:	ffffc097          	auipc	ra,0xffffc
    80004eb4:	51c080e7          	jalr	1308(ra) # 800013cc <_Z15thread_dispatchv>
    80004eb8:	fc1ff06f          	j	80004e78 <_ZL9fibonaccim+0x30>

0000000080004ebc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004ebc:	fe010113          	addi	sp,sp,-32
    80004ec0:	00113c23          	sd	ra,24(sp)
    80004ec4:	00813823          	sd	s0,16(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	01213023          	sd	s2,0(sp)
    80004ed0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ed4:	00a00493          	li	s1,10
    80004ed8:	0400006f          	j	80004f18 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	3ac50513          	addi	a0,a0,940 # 80009288 <CONSOLE_STATUS+0x278>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	dc8080e7          	jalr	-568(ra) # 80005cac <_Z11printStringPKc>
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	f64080e7          	jalr	-156(ra) # 80005e5c <_Z8printIntiii>
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	57850513          	addi	a0,a0,1400 # 80009478 <CONSOLE_STATUS+0x468>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	da4080e7          	jalr	-604(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f10:	0014849b          	addiw	s1,s1,1
    80004f14:	0ff4f493          	andi	s1,s1,255
    80004f18:	00c00793          	li	a5,12
    80004f1c:	fc97f0e3          	bgeu	a5,s1,80004edc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	37050513          	addi	a0,a0,880 # 80009290 <CONSOLE_STATUS+0x280>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	d84080e7          	jalr	-636(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f30:	00500313          	li	t1,5
    thread_dispatch();
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	498080e7          	jalr	1176(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004f3c:	01000513          	li	a0,16
    80004f40:	00000097          	auipc	ra,0x0
    80004f44:	f08080e7          	jalr	-248(ra) # 80004e48 <_ZL9fibonaccim>
    80004f48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004f4c:	00004517          	auipc	a0,0x4
    80004f50:	35450513          	addi	a0,a0,852 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	d58080e7          	jalr	-680(ra) # 80005cac <_Z11printStringPKc>
    80004f5c:	00000613          	li	a2,0
    80004f60:	00a00593          	li	a1,10
    80004f64:	0009051b          	sext.w	a0,s2
    80004f68:	00001097          	auipc	ra,0x1
    80004f6c:	ef4080e7          	jalr	-268(ra) # 80005e5c <_Z8printIntiii>
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	50850513          	addi	a0,a0,1288 # 80009478 <CONSOLE_STATUS+0x468>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	d34080e7          	jalr	-716(ra) # 80005cac <_Z11printStringPKc>
    80004f80:	0400006f          	j	80004fc0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	30450513          	addi	a0,a0,772 # 80009288 <CONSOLE_STATUS+0x278>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	d20080e7          	jalr	-736(ra) # 80005cac <_Z11printStringPKc>
    80004f94:	00000613          	li	a2,0
    80004f98:	00a00593          	li	a1,10
    80004f9c:	00048513          	mv	a0,s1
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	ebc080e7          	jalr	-324(ra) # 80005e5c <_Z8printIntiii>
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	4d050513          	addi	a0,a0,1232 # 80009478 <CONSOLE_STATUS+0x468>
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	cfc080e7          	jalr	-772(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004fb8:	0014849b          	addiw	s1,s1,1
    80004fbc:	0ff4f493          	andi	s1,s1,255
    80004fc0:	00f00793          	li	a5,15
    80004fc4:	fc97f0e3          	bgeu	a5,s1,80004f84 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004fc8:	00004517          	auipc	a0,0x4
    80004fcc:	2e850513          	addi	a0,a0,744 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	cdc080e7          	jalr	-804(ra) # 80005cac <_Z11printStringPKc>
    finishedD = true;
    80004fd8:	00100793          	li	a5,1
    80004fdc:	00007717          	auipc	a4,0x7
    80004fe0:	def70e23          	sb	a5,-516(a4) # 8000bdd8 <_ZL9finishedD>
    thread_dispatch();
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	3e8080e7          	jalr	1000(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004fec:	01813083          	ld	ra,24(sp)
    80004ff0:	01013403          	ld	s0,16(sp)
    80004ff4:	00813483          	ld	s1,8(sp)
    80004ff8:	00013903          	ld	s2,0(sp)
    80004ffc:	02010113          	addi	sp,sp,32
    80005000:	00008067          	ret

0000000080005004 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005004:	fe010113          	addi	sp,sp,-32
    80005008:	00113c23          	sd	ra,24(sp)
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00913423          	sd	s1,8(sp)
    80005014:	01213023          	sd	s2,0(sp)
    80005018:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000501c:	00000493          	li	s1,0
    80005020:	0400006f          	j	80005060 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005024:	00004517          	auipc	a0,0x4
    80005028:	23450513          	addi	a0,a0,564 # 80009258 <CONSOLE_STATUS+0x248>
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	c80080e7          	jalr	-896(ra) # 80005cac <_Z11printStringPKc>
    80005034:	00000613          	li	a2,0
    80005038:	00a00593          	li	a1,10
    8000503c:	00048513          	mv	a0,s1
    80005040:	00001097          	auipc	ra,0x1
    80005044:	e1c080e7          	jalr	-484(ra) # 80005e5c <_Z8printIntiii>
    80005048:	00004517          	auipc	a0,0x4
    8000504c:	43050513          	addi	a0,a0,1072 # 80009478 <CONSOLE_STATUS+0x468>
    80005050:	00001097          	auipc	ra,0x1
    80005054:	c5c080e7          	jalr	-932(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005058:	0014849b          	addiw	s1,s1,1
    8000505c:	0ff4f493          	andi	s1,s1,255
    80005060:	00200793          	li	a5,2
    80005064:	fc97f0e3          	bgeu	a5,s1,80005024 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005068:	00004517          	auipc	a0,0x4
    8000506c:	1f850513          	addi	a0,a0,504 # 80009260 <CONSOLE_STATUS+0x250>
    80005070:	00001097          	auipc	ra,0x1
    80005074:	c3c080e7          	jalr	-964(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005078:	00700313          	li	t1,7
    thread_dispatch();
    8000507c:	ffffc097          	auipc	ra,0xffffc
    80005080:	350080e7          	jalr	848(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005084:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005088:	00004517          	auipc	a0,0x4
    8000508c:	1e850513          	addi	a0,a0,488 # 80009270 <CONSOLE_STATUS+0x260>
    80005090:	00001097          	auipc	ra,0x1
    80005094:	c1c080e7          	jalr	-996(ra) # 80005cac <_Z11printStringPKc>
    80005098:	00000613          	li	a2,0
    8000509c:	00a00593          	li	a1,10
    800050a0:	0009051b          	sext.w	a0,s2
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	db8080e7          	jalr	-584(ra) # 80005e5c <_Z8printIntiii>
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	3cc50513          	addi	a0,a0,972 # 80009478 <CONSOLE_STATUS+0x468>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	bf8080e7          	jalr	-1032(ra) # 80005cac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800050bc:	00c00513          	li	a0,12
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	d88080e7          	jalr	-632(ra) # 80004e48 <_ZL9fibonaccim>
    800050c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	1ac50513          	addi	a0,a0,428 # 80009278 <CONSOLE_STATUS+0x268>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	bd8080e7          	jalr	-1064(ra) # 80005cac <_Z11printStringPKc>
    800050dc:	00000613          	li	a2,0
    800050e0:	00a00593          	li	a1,10
    800050e4:	0009051b          	sext.w	a0,s2
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	d74080e7          	jalr	-652(ra) # 80005e5c <_Z8printIntiii>
    800050f0:	00004517          	auipc	a0,0x4
    800050f4:	38850513          	addi	a0,a0,904 # 80009478 <CONSOLE_STATUS+0x468>
    800050f8:	00001097          	auipc	ra,0x1
    800050fc:	bb4080e7          	jalr	-1100(ra) # 80005cac <_Z11printStringPKc>
    80005100:	0400006f          	j	80005140 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	15450513          	addi	a0,a0,340 # 80009258 <CONSOLE_STATUS+0x248>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	ba0080e7          	jalr	-1120(ra) # 80005cac <_Z11printStringPKc>
    80005114:	00000613          	li	a2,0
    80005118:	00a00593          	li	a1,10
    8000511c:	00048513          	mv	a0,s1
    80005120:	00001097          	auipc	ra,0x1
    80005124:	d3c080e7          	jalr	-708(ra) # 80005e5c <_Z8printIntiii>
    80005128:	00004517          	auipc	a0,0x4
    8000512c:	35050513          	addi	a0,a0,848 # 80009478 <CONSOLE_STATUS+0x468>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	b7c080e7          	jalr	-1156(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005138:	0014849b          	addiw	s1,s1,1
    8000513c:	0ff4f493          	andi	s1,s1,255
    80005140:	00500793          	li	a5,5
    80005144:	fc97f0e3          	bgeu	a5,s1,80005104 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005148:	00004517          	auipc	a0,0x4
    8000514c:	0e850513          	addi	a0,a0,232 # 80009230 <CONSOLE_STATUS+0x220>
    80005150:	00001097          	auipc	ra,0x1
    80005154:	b5c080e7          	jalr	-1188(ra) # 80005cac <_Z11printStringPKc>
    finishedC = true;
    80005158:	00100793          	li	a5,1
    8000515c:	00007717          	auipc	a4,0x7
    80005160:	c6f70ea3          	sb	a5,-899(a4) # 8000bdd9 <_ZL9finishedC>
    thread_dispatch();
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	268080e7          	jalr	616(ra) # 800013cc <_Z15thread_dispatchv>
}
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	00013903          	ld	s2,0(sp)
    8000517c:	02010113          	addi	sp,sp,32
    80005180:	00008067          	ret

0000000080005184 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005184:	fe010113          	addi	sp,sp,-32
    80005188:	00113c23          	sd	ra,24(sp)
    8000518c:	00813823          	sd	s0,16(sp)
    80005190:	00913423          	sd	s1,8(sp)
    80005194:	01213023          	sd	s2,0(sp)
    80005198:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000519c:	00000913          	li	s2,0
    800051a0:	0380006f          	j	800051d8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800051a4:	ffffc097          	auipc	ra,0xffffc
    800051a8:	228080e7          	jalr	552(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800051ac:	00148493          	addi	s1,s1,1
    800051b0:	000027b7          	lui	a5,0x2
    800051b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051b8:	0097ee63          	bltu	a5,s1,800051d4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051bc:	00000713          	li	a4,0
    800051c0:	000077b7          	lui	a5,0x7
    800051c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051c8:	fce7eee3          	bltu	a5,a4,800051a4 <_ZL11workerBodyBPv+0x20>
    800051cc:	00170713          	addi	a4,a4,1
    800051d0:	ff1ff06f          	j	800051c0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800051d4:	00190913          	addi	s2,s2,1
    800051d8:	00f00793          	li	a5,15
    800051dc:	0527e063          	bltu	a5,s2,8000521c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800051e0:	00004517          	auipc	a0,0x4
    800051e4:	06050513          	addi	a0,a0,96 # 80009240 <CONSOLE_STATUS+0x230>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	ac4080e7          	jalr	-1340(ra) # 80005cac <_Z11printStringPKc>
    800051f0:	00000613          	li	a2,0
    800051f4:	00a00593          	li	a1,10
    800051f8:	0009051b          	sext.w	a0,s2
    800051fc:	00001097          	auipc	ra,0x1
    80005200:	c60080e7          	jalr	-928(ra) # 80005e5c <_Z8printIntiii>
    80005204:	00004517          	auipc	a0,0x4
    80005208:	27450513          	addi	a0,a0,628 # 80009478 <CONSOLE_STATUS+0x468>
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	aa0080e7          	jalr	-1376(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005214:	00000493          	li	s1,0
    80005218:	f99ff06f          	j	800051b0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000521c:	00004517          	auipc	a0,0x4
    80005220:	02c50513          	addi	a0,a0,44 # 80009248 <CONSOLE_STATUS+0x238>
    80005224:	00001097          	auipc	ra,0x1
    80005228:	a88080e7          	jalr	-1400(ra) # 80005cac <_Z11printStringPKc>
    finishedB = true;
    8000522c:	00100793          	li	a5,1
    80005230:	00007717          	auipc	a4,0x7
    80005234:	baf70523          	sb	a5,-1110(a4) # 8000bdda <_ZL9finishedB>
    thread_dispatch();
    80005238:	ffffc097          	auipc	ra,0xffffc
    8000523c:	194080e7          	jalr	404(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005240:	01813083          	ld	ra,24(sp)
    80005244:	01013403          	ld	s0,16(sp)
    80005248:	00813483          	ld	s1,8(sp)
    8000524c:	00013903          	ld	s2,0(sp)
    80005250:	02010113          	addi	sp,sp,32
    80005254:	00008067          	ret

0000000080005258 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005258:	fe010113          	addi	sp,sp,-32
    8000525c:	00113c23          	sd	ra,24(sp)
    80005260:	00813823          	sd	s0,16(sp)
    80005264:	00913423          	sd	s1,8(sp)
    80005268:	01213023          	sd	s2,0(sp)
    8000526c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005270:	00000913          	li	s2,0
    80005274:	0380006f          	j	800052ac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	154080e7          	jalr	340(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005280:	00148493          	addi	s1,s1,1
    80005284:	000027b7          	lui	a5,0x2
    80005288:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000528c:	0097ee63          	bltu	a5,s1,800052a8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005290:	00000713          	li	a4,0
    80005294:	000077b7          	lui	a5,0x7
    80005298:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000529c:	fce7eee3          	bltu	a5,a4,80005278 <_ZL11workerBodyAPv+0x20>
    800052a0:	00170713          	addi	a4,a4,1
    800052a4:	ff1ff06f          	j	80005294 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800052a8:	00190913          	addi	s2,s2,1
    800052ac:	00900793          	li	a5,9
    800052b0:	0527e063          	bltu	a5,s2,800052f0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800052b4:	00004517          	auipc	a0,0x4
    800052b8:	f7450513          	addi	a0,a0,-140 # 80009228 <CONSOLE_STATUS+0x218>
    800052bc:	00001097          	auipc	ra,0x1
    800052c0:	9f0080e7          	jalr	-1552(ra) # 80005cac <_Z11printStringPKc>
    800052c4:	00000613          	li	a2,0
    800052c8:	00a00593          	li	a1,10
    800052cc:	0009051b          	sext.w	a0,s2
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	b8c080e7          	jalr	-1140(ra) # 80005e5c <_Z8printIntiii>
    800052d8:	00004517          	auipc	a0,0x4
    800052dc:	1a050513          	addi	a0,a0,416 # 80009478 <CONSOLE_STATUS+0x468>
    800052e0:	00001097          	auipc	ra,0x1
    800052e4:	9cc080e7          	jalr	-1588(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800052e8:	00000493          	li	s1,0
    800052ec:	f99ff06f          	j	80005284 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800052f0:	00004517          	auipc	a0,0x4
    800052f4:	f4050513          	addi	a0,a0,-192 # 80009230 <CONSOLE_STATUS+0x220>
    800052f8:	00001097          	auipc	ra,0x1
    800052fc:	9b4080e7          	jalr	-1612(ra) # 80005cac <_Z11printStringPKc>
    finishedA = true;
    80005300:	00100793          	li	a5,1
    80005304:	00007717          	auipc	a4,0x7
    80005308:	acf70ba3          	sb	a5,-1321(a4) # 8000bddb <_ZL9finishedA>
}
    8000530c:	01813083          	ld	ra,24(sp)
    80005310:	01013403          	ld	s0,16(sp)
    80005314:	00813483          	ld	s1,8(sp)
    80005318:	00013903          	ld	s2,0(sp)
    8000531c:	02010113          	addi	sp,sp,32
    80005320:	00008067          	ret

0000000080005324 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005324:	fd010113          	addi	sp,sp,-48
    80005328:	02113423          	sd	ra,40(sp)
    8000532c:	02813023          	sd	s0,32(sp)
    80005330:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005334:	00000613          	li	a2,0
    80005338:	00000597          	auipc	a1,0x0
    8000533c:	f2058593          	addi	a1,a1,-224 # 80005258 <_ZL11workerBodyAPv>
    80005340:	fd040513          	addi	a0,s0,-48
    80005344:	ffffc097          	auipc	ra,0xffffc
    80005348:	fb4080e7          	jalr	-76(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000534c:	00004517          	auipc	a0,0x4
    80005350:	f7450513          	addi	a0,a0,-140 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005354:	00001097          	auipc	ra,0x1
    80005358:	958080e7          	jalr	-1704(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000535c:	00000613          	li	a2,0
    80005360:	00000597          	auipc	a1,0x0
    80005364:	e2458593          	addi	a1,a1,-476 # 80005184 <_ZL11workerBodyBPv>
    80005368:	fd840513          	addi	a0,s0,-40
    8000536c:	ffffc097          	auipc	ra,0xffffc
    80005370:	f8c080e7          	jalr	-116(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005374:	00004517          	auipc	a0,0x4
    80005378:	f6450513          	addi	a0,a0,-156 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000537c:	00001097          	auipc	ra,0x1
    80005380:	930080e7          	jalr	-1744(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005384:	00000613          	li	a2,0
    80005388:	00000597          	auipc	a1,0x0
    8000538c:	c7c58593          	addi	a1,a1,-900 # 80005004 <_ZL11workerBodyCPv>
    80005390:	fe040513          	addi	a0,s0,-32
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	f64080e7          	jalr	-156(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000539c:	00004517          	auipc	a0,0x4
    800053a0:	f5450513          	addi	a0,a0,-172 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	908080e7          	jalr	-1784(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800053ac:	00000613          	li	a2,0
    800053b0:	00000597          	auipc	a1,0x0
    800053b4:	b0c58593          	addi	a1,a1,-1268 # 80004ebc <_ZL11workerBodyDPv>
    800053b8:	fe840513          	addi	a0,s0,-24
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	f3c080e7          	jalr	-196(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800053c4:	00004517          	auipc	a0,0x4
    800053c8:	f4450513          	addi	a0,a0,-188 # 80009308 <CONSOLE_STATUS+0x2f8>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	8e0080e7          	jalr	-1824(ra) # 80005cac <_Z11printStringPKc>
    800053d4:	00c0006f          	j	800053e0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	ff4080e7          	jalr	-12(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800053e0:	00007797          	auipc	a5,0x7
    800053e4:	9fb7c783          	lbu	a5,-1541(a5) # 8000bddb <_ZL9finishedA>
    800053e8:	fe0788e3          	beqz	a5,800053d8 <_Z18Threads_C_API_testv+0xb4>
    800053ec:	00007797          	auipc	a5,0x7
    800053f0:	9ee7c783          	lbu	a5,-1554(a5) # 8000bdda <_ZL9finishedB>
    800053f4:	fe0782e3          	beqz	a5,800053d8 <_Z18Threads_C_API_testv+0xb4>
    800053f8:	00007797          	auipc	a5,0x7
    800053fc:	9e17c783          	lbu	a5,-1567(a5) # 8000bdd9 <_ZL9finishedC>
    80005400:	fc078ce3          	beqz	a5,800053d8 <_Z18Threads_C_API_testv+0xb4>
    80005404:	00007797          	auipc	a5,0x7
    80005408:	9d47c783          	lbu	a5,-1580(a5) # 8000bdd8 <_ZL9finishedD>
    8000540c:	fc0786e3          	beqz	a5,800053d8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005410:	02813083          	ld	ra,40(sp)
    80005414:	02013403          	ld	s0,32(sp)
    80005418:	03010113          	addi	sp,sp,48
    8000541c:	00008067          	ret

0000000080005420 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005420:	fd010113          	addi	sp,sp,-48
    80005424:	02113423          	sd	ra,40(sp)
    80005428:	02813023          	sd	s0,32(sp)
    8000542c:	00913c23          	sd	s1,24(sp)
    80005430:	01213823          	sd	s2,16(sp)
    80005434:	01313423          	sd	s3,8(sp)
    80005438:	03010413          	addi	s0,sp,48
    8000543c:	00050993          	mv	s3,a0
    80005440:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005444:	00000913          	li	s2,0
    80005448:	00c0006f          	j	80005454 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	c30080e7          	jalr	-976(ra) # 8000207c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	1cc080e7          	jalr	460(ra) # 80001620 <_Z4getcv>
    8000545c:	0005059b          	sext.w	a1,a0
    80005460:	01b00793          	li	a5,27
    80005464:	02f58a63          	beq	a1,a5,80005498 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005468:	0084b503          	ld	a0,8(s1)
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	c64080e7          	jalr	-924(ra) # 800060d0 <_ZN9BufferCPP3putEi>
        i++;
    80005474:	0019071b          	addiw	a4,s2,1
    80005478:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000547c:	0004a683          	lw	a3,0(s1)
    80005480:	0026979b          	slliw	a5,a3,0x2
    80005484:	00d787bb          	addw	a5,a5,a3
    80005488:	0017979b          	slliw	a5,a5,0x1
    8000548c:	02f767bb          	remw	a5,a4,a5
    80005490:	fc0792e3          	bnez	a5,80005454 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005494:	fb9ff06f          	j	8000544c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005498:	00100793          	li	a5,1
    8000549c:	00007717          	auipc	a4,0x7
    800054a0:	94f72223          	sw	a5,-1724(a4) # 8000bde0 <_ZL9threadEnd>
    td->buffer->put('!');
    800054a4:	0209b783          	ld	a5,32(s3)
    800054a8:	02100593          	li	a1,33
    800054ac:	0087b503          	ld	a0,8(a5)
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	c20080e7          	jalr	-992(ra) # 800060d0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800054b8:	0104b503          	ld	a0,16(s1)
    800054bc:	ffffd097          	auipc	ra,0xffffd
    800054c0:	cb4080e7          	jalr	-844(ra) # 80002170 <_ZN9Semaphore6signalEv>
}
    800054c4:	02813083          	ld	ra,40(sp)
    800054c8:	02013403          	ld	s0,32(sp)
    800054cc:	01813483          	ld	s1,24(sp)
    800054d0:	01013903          	ld	s2,16(sp)
    800054d4:	00813983          	ld	s3,8(sp)
    800054d8:	03010113          	addi	sp,sp,48
    800054dc:	00008067          	ret

00000000800054e0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800054e0:	fe010113          	addi	sp,sp,-32
    800054e4:	00113c23          	sd	ra,24(sp)
    800054e8:	00813823          	sd	s0,16(sp)
    800054ec:	00913423          	sd	s1,8(sp)
    800054f0:	01213023          	sd	s2,0(sp)
    800054f4:	02010413          	addi	s0,sp,32
    800054f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054fc:	00000913          	li	s2,0
    80005500:	00c0006f          	j	8000550c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	b78080e7          	jalr	-1160(ra) # 8000207c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000550c:	00007797          	auipc	a5,0x7
    80005510:	8d47a783          	lw	a5,-1836(a5) # 8000bde0 <_ZL9threadEnd>
    80005514:	02079e63          	bnez	a5,80005550 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005518:	0004a583          	lw	a1,0(s1)
    8000551c:	0305859b          	addiw	a1,a1,48
    80005520:	0084b503          	ld	a0,8(s1)
    80005524:	00001097          	auipc	ra,0x1
    80005528:	bac080e7          	jalr	-1108(ra) # 800060d0 <_ZN9BufferCPP3putEi>
        i++;
    8000552c:	0019071b          	addiw	a4,s2,1
    80005530:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005534:	0004a683          	lw	a3,0(s1)
    80005538:	0026979b          	slliw	a5,a3,0x2
    8000553c:	00d787bb          	addw	a5,a5,a3
    80005540:	0017979b          	slliw	a5,a5,0x1
    80005544:	02f767bb          	remw	a5,a4,a5
    80005548:	fc0792e3          	bnez	a5,8000550c <_ZN12ProducerSync8producerEPv+0x2c>
    8000554c:	fb9ff06f          	j	80005504 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005550:	0104b503          	ld	a0,16(s1)
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	c1c080e7          	jalr	-996(ra) # 80002170 <_ZN9Semaphore6signalEv>
}
    8000555c:	01813083          	ld	ra,24(sp)
    80005560:	01013403          	ld	s0,16(sp)
    80005564:	00813483          	ld	s1,8(sp)
    80005568:	00013903          	ld	s2,0(sp)
    8000556c:	02010113          	addi	sp,sp,32
    80005570:	00008067          	ret

0000000080005574 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005574:	fd010113          	addi	sp,sp,-48
    80005578:	02113423          	sd	ra,40(sp)
    8000557c:	02813023          	sd	s0,32(sp)
    80005580:	00913c23          	sd	s1,24(sp)
    80005584:	01213823          	sd	s2,16(sp)
    80005588:	01313423          	sd	s3,8(sp)
    8000558c:	01413023          	sd	s4,0(sp)
    80005590:	03010413          	addi	s0,sp,48
    80005594:	00050993          	mv	s3,a0
    80005598:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000559c:	00000a13          	li	s4,0
    800055a0:	01c0006f          	j	800055bc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	ad8080e7          	jalr	-1320(ra) # 8000207c <_ZN6Thread8dispatchEv>
    800055ac:	0500006f          	j	800055fc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800055b0:	00a00513          	li	a0,10
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	0b8080e7          	jalr	184(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800055bc:	00007797          	auipc	a5,0x7
    800055c0:	8247a783          	lw	a5,-2012(a5) # 8000bde0 <_ZL9threadEnd>
    800055c4:	06079263          	bnez	a5,80005628 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800055c8:	00893503          	ld	a0,8(s2)
    800055cc:	00001097          	auipc	ra,0x1
    800055d0:	b94080e7          	jalr	-1132(ra) # 80006160 <_ZN9BufferCPP3getEv>
        i++;
    800055d4:	001a049b          	addiw	s1,s4,1
    800055d8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800055dc:	0ff57513          	andi	a0,a0,255
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	08c080e7          	jalr	140(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800055e8:	00092703          	lw	a4,0(s2)
    800055ec:	0027179b          	slliw	a5,a4,0x2
    800055f0:	00e787bb          	addw	a5,a5,a4
    800055f4:	02f4e7bb          	remw	a5,s1,a5
    800055f8:	fa0786e3          	beqz	a5,800055a4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800055fc:	05000793          	li	a5,80
    80005600:	02f4e4bb          	remw	s1,s1,a5
    80005604:	fa049ce3          	bnez	s1,800055bc <_ZN12ConsumerSync8consumerEPv+0x48>
    80005608:	fa9ff06f          	j	800055b0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000560c:	0209b783          	ld	a5,32(s3)
    80005610:	0087b503          	ld	a0,8(a5)
    80005614:	00001097          	auipc	ra,0x1
    80005618:	b4c080e7          	jalr	-1204(ra) # 80006160 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000561c:	0ff57513          	andi	a0,a0,255
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	c70080e7          	jalr	-912(ra) # 80002290 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005628:	0209b783          	ld	a5,32(s3)
    8000562c:	0087b503          	ld	a0,8(a5)
    80005630:	00001097          	auipc	ra,0x1
    80005634:	bbc080e7          	jalr	-1092(ra) # 800061ec <_ZN9BufferCPP6getCntEv>
    80005638:	fca04ae3          	bgtz	a0,8000560c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000563c:	01093503          	ld	a0,16(s2)
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	b30080e7          	jalr	-1232(ra) # 80002170 <_ZN9Semaphore6signalEv>
}
    80005648:	02813083          	ld	ra,40(sp)
    8000564c:	02013403          	ld	s0,32(sp)
    80005650:	01813483          	ld	s1,24(sp)
    80005654:	01013903          	ld	s2,16(sp)
    80005658:	00813983          	ld	s3,8(sp)
    8000565c:	00013a03          	ld	s4,0(sp)
    80005660:	03010113          	addi	sp,sp,48
    80005664:	00008067          	ret

0000000080005668 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005668:	f8010113          	addi	sp,sp,-128
    8000566c:	06113c23          	sd	ra,120(sp)
    80005670:	06813823          	sd	s0,112(sp)
    80005674:	06913423          	sd	s1,104(sp)
    80005678:	07213023          	sd	s2,96(sp)
    8000567c:	05313c23          	sd	s3,88(sp)
    80005680:	05413823          	sd	s4,80(sp)
    80005684:	05513423          	sd	s5,72(sp)
    80005688:	05613023          	sd	s6,64(sp)
    8000568c:	03713c23          	sd	s7,56(sp)
    80005690:	03813823          	sd	s8,48(sp)
    80005694:	03913423          	sd	s9,40(sp)
    80005698:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000569c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800056a0:	00004517          	auipc	a0,0x4
    800056a4:	aa050513          	addi	a0,a0,-1376 # 80009140 <CONSOLE_STATUS+0x130>
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	604080e7          	jalr	1540(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    800056b0:	01e00593          	li	a1,30
    800056b4:	f8040493          	addi	s1,s0,-128
    800056b8:	00048513          	mv	a0,s1
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	678080e7          	jalr	1656(ra) # 80005d34 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800056c4:	00048513          	mv	a0,s1
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	744080e7          	jalr	1860(ra) # 80005e0c <_Z11stringToIntPKc>
    800056d0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800056d4:	00004517          	auipc	a0,0x4
    800056d8:	a8c50513          	addi	a0,a0,-1396 # 80009160 <CONSOLE_STATUS+0x150>
    800056dc:	00000097          	auipc	ra,0x0
    800056e0:	5d0080e7          	jalr	1488(ra) # 80005cac <_Z11printStringPKc>
    getString(input, 30);
    800056e4:	01e00593          	li	a1,30
    800056e8:	00048513          	mv	a0,s1
    800056ec:	00000097          	auipc	ra,0x0
    800056f0:	648080e7          	jalr	1608(ra) # 80005d34 <_Z9getStringPci>
    n = stringToInt(input);
    800056f4:	00048513          	mv	a0,s1
    800056f8:	00000097          	auipc	ra,0x0
    800056fc:	714080e7          	jalr	1812(ra) # 80005e0c <_Z11stringToIntPKc>
    80005700:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005704:	00004517          	auipc	a0,0x4
    80005708:	a7c50513          	addi	a0,a0,-1412 # 80009180 <CONSOLE_STATUS+0x170>
    8000570c:	00000097          	auipc	ra,0x0
    80005710:	5a0080e7          	jalr	1440(ra) # 80005cac <_Z11printStringPKc>
    80005714:	00000613          	li	a2,0
    80005718:	00a00593          	li	a1,10
    8000571c:	00090513          	mv	a0,s2
    80005720:	00000097          	auipc	ra,0x0
    80005724:	73c080e7          	jalr	1852(ra) # 80005e5c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005728:	00004517          	auipc	a0,0x4
    8000572c:	a7050513          	addi	a0,a0,-1424 # 80009198 <CONSOLE_STATUS+0x188>
    80005730:	00000097          	auipc	ra,0x0
    80005734:	57c080e7          	jalr	1404(ra) # 80005cac <_Z11printStringPKc>
    80005738:	00000613          	li	a2,0
    8000573c:	00a00593          	li	a1,10
    80005740:	00048513          	mv	a0,s1
    80005744:	00000097          	auipc	ra,0x0
    80005748:	718080e7          	jalr	1816(ra) # 80005e5c <_Z8printIntiii>
    printString(".\n");
    8000574c:	00004517          	auipc	a0,0x4
    80005750:	a6450513          	addi	a0,a0,-1436 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80005754:	00000097          	auipc	ra,0x0
    80005758:	558080e7          	jalr	1368(ra) # 80005cac <_Z11printStringPKc>
    if(threadNum > n) {
    8000575c:	0324c463          	blt	s1,s2,80005784 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005760:	03205c63          	blez	s2,80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005764:	03800513          	li	a0,56
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	7e0080e7          	jalr	2016(ra) # 80001f48 <_Znwm>
    80005770:	00050a93          	mv	s5,a0
    80005774:	00048593          	mv	a1,s1
    80005778:	00001097          	auipc	ra,0x1
    8000577c:	804080e7          	jalr	-2044(ra) # 80005f7c <_ZN9BufferCPPC1Ei>
    80005780:	0300006f          	j	800057b0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005784:	00004517          	auipc	a0,0x4
    80005788:	a3450513          	addi	a0,a0,-1484 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000578c:	00000097          	auipc	ra,0x0
    80005790:	520080e7          	jalr	1312(ra) # 80005cac <_Z11printStringPKc>
        return;
    80005794:	0140006f          	j	800057a8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	a6050513          	addi	a0,a0,-1440 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	50c080e7          	jalr	1292(ra) # 80005cac <_Z11printStringPKc>
        return;
    800057a8:	000b8113          	mv	sp,s7
    800057ac:	2380006f          	j	800059e4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800057b0:	01000513          	li	a0,16
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	794080e7          	jalr	1940(ra) # 80001f48 <_Znwm>
    800057bc:	00050493          	mv	s1,a0
    800057c0:	00000593          	li	a1,0
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	938080e7          	jalr	-1736(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    800057cc:	00006797          	auipc	a5,0x6
    800057d0:	6097be23          	sd	s1,1564(a5) # 8000bde8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800057d4:	00391793          	slli	a5,s2,0x3
    800057d8:	00f78793          	addi	a5,a5,15
    800057dc:	ff07f793          	andi	a5,a5,-16
    800057e0:	40f10133          	sub	sp,sp,a5
    800057e4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800057e8:	0019071b          	addiw	a4,s2,1
    800057ec:	00171793          	slli	a5,a4,0x1
    800057f0:	00e787b3          	add	a5,a5,a4
    800057f4:	00379793          	slli	a5,a5,0x3
    800057f8:	00f78793          	addi	a5,a5,15
    800057fc:	ff07f793          	andi	a5,a5,-16
    80005800:	40f10133          	sub	sp,sp,a5
    80005804:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005808:	00191c13          	slli	s8,s2,0x1
    8000580c:	012c07b3          	add	a5,s8,s2
    80005810:	00379793          	slli	a5,a5,0x3
    80005814:	00fa07b3          	add	a5,s4,a5
    80005818:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000581c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005820:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005824:	02800513          	li	a0,40
    80005828:	ffffc097          	auipc	ra,0xffffc
    8000582c:	720080e7          	jalr	1824(ra) # 80001f48 <_Znwm>
    80005830:	00050b13          	mv	s6,a0
    80005834:	012c0c33          	add	s8,s8,s2
    80005838:	003c1c13          	slli	s8,s8,0x3
    8000583c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005840:	ffffd097          	auipc	ra,0xffffd
    80005844:	88c080e7          	jalr	-1908(ra) # 800020cc <_ZN6ThreadC1Ev>
    80005848:	00006797          	auipc	a5,0x6
    8000584c:	43078793          	addi	a5,a5,1072 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005850:	00fb3023          	sd	a5,0(s6)
    80005854:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005858:	000b0513          	mv	a0,s6
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	7ec080e7          	jalr	2028(ra) # 80002048 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005864:	00000493          	li	s1,0
    80005868:	0380006f          	j	800058a0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000586c:	00006797          	auipc	a5,0x6
    80005870:	3e478793          	addi	a5,a5,996 # 8000bc50 <_ZTV12ProducerSync+0x10>
    80005874:	00fcb023          	sd	a5,0(s9)
    80005878:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000587c:	00349793          	slli	a5,s1,0x3
    80005880:	00f987b3          	add	a5,s3,a5
    80005884:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005888:	00349793          	slli	a5,s1,0x3
    8000588c:	00f987b3          	add	a5,s3,a5
    80005890:	0007b503          	ld	a0,0(a5)
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	7b4080e7          	jalr	1972(ra) # 80002048 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000589c:	0014849b          	addiw	s1,s1,1
    800058a0:	0b24d063          	bge	s1,s2,80005940 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800058a4:	00149793          	slli	a5,s1,0x1
    800058a8:	009787b3          	add	a5,a5,s1
    800058ac:	00379793          	slli	a5,a5,0x3
    800058b0:	00fa07b3          	add	a5,s4,a5
    800058b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800058b8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800058bc:	00006717          	auipc	a4,0x6
    800058c0:	52c73703          	ld	a4,1324(a4) # 8000bde8 <_ZL10waitForAll>
    800058c4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800058c8:	02905863          	blez	s1,800058f8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800058cc:	02800513          	li	a0,40
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	678080e7          	jalr	1656(ra) # 80001f48 <_Znwm>
    800058d8:	00050c93          	mv	s9,a0
    800058dc:	00149c13          	slli	s8,s1,0x1
    800058e0:	009c0c33          	add	s8,s8,s1
    800058e4:	003c1c13          	slli	s8,s8,0x3
    800058e8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	7e0080e7          	jalr	2016(ra) # 800020cc <_ZN6ThreadC1Ev>
    800058f4:	f79ff06f          	j	8000586c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800058f8:	02800513          	li	a0,40
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	64c080e7          	jalr	1612(ra) # 80001f48 <_Znwm>
    80005904:	00050c93          	mv	s9,a0
    80005908:	00149c13          	slli	s8,s1,0x1
    8000590c:	009c0c33          	add	s8,s8,s1
    80005910:	003c1c13          	slli	s8,s8,0x3
    80005914:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	7b4080e7          	jalr	1972(ra) # 800020cc <_ZN6ThreadC1Ev>
    80005920:	00006797          	auipc	a5,0x6
    80005924:	30878793          	addi	a5,a5,776 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005928:	00fcb023          	sd	a5,0(s9)
    8000592c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005930:	00349793          	slli	a5,s1,0x3
    80005934:	00f987b3          	add	a5,s3,a5
    80005938:	0197b023          	sd	s9,0(a5)
    8000593c:	f4dff06f          	j	80005888 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	73c080e7          	jalr	1852(ra) # 8000207c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005948:	00000493          	li	s1,0
    8000594c:	00994e63          	blt	s2,s1,80005968 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005950:	00006517          	auipc	a0,0x6
    80005954:	49853503          	ld	a0,1176(a0) # 8000bde8 <_ZL10waitForAll>
    80005958:	ffffc097          	auipc	ra,0xffffc
    8000595c:	7e0080e7          	jalr	2016(ra) # 80002138 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005960:	0014849b          	addiw	s1,s1,1
    80005964:	fe9ff06f          	j	8000594c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005968:	00000493          	li	s1,0
    8000596c:	0080006f          	j	80005974 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005970:	0014849b          	addiw	s1,s1,1
    80005974:	0324d263          	bge	s1,s2,80005998 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005978:	00349793          	slli	a5,s1,0x3
    8000597c:	00f987b3          	add	a5,s3,a5
    80005980:	0007b503          	ld	a0,0(a5)
    80005984:	fe0506e3          	beqz	a0,80005970 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005988:	00053783          	ld	a5,0(a0)
    8000598c:	0087b783          	ld	a5,8(a5)
    80005990:	000780e7          	jalr	a5
    80005994:	fddff06f          	j	80005970 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005998:	000b0a63          	beqz	s6,800059ac <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000599c:	000b3783          	ld	a5,0(s6)
    800059a0:	0087b783          	ld	a5,8(a5)
    800059a4:	000b0513          	mv	a0,s6
    800059a8:	000780e7          	jalr	a5
    delete waitForAll;
    800059ac:	00006517          	auipc	a0,0x6
    800059b0:	43c53503          	ld	a0,1084(a0) # 8000bde8 <_ZL10waitForAll>
    800059b4:	00050863          	beqz	a0,800059c4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800059b8:	00053783          	ld	a5,0(a0)
    800059bc:	0087b783          	ld	a5,8(a5)
    800059c0:	000780e7          	jalr	a5
    delete buffer;
    800059c4:	000a8e63          	beqz	s5,800059e0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800059c8:	000a8513          	mv	a0,s5
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	8a8080e7          	jalr	-1880(ra) # 80006274 <_ZN9BufferCPPD1Ev>
    800059d4:	000a8513          	mv	a0,s5
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	598080e7          	jalr	1432(ra) # 80001f70 <_ZdlPv>
    800059e0:	000b8113          	mv	sp,s7

}
    800059e4:	f8040113          	addi	sp,s0,-128
    800059e8:	07813083          	ld	ra,120(sp)
    800059ec:	07013403          	ld	s0,112(sp)
    800059f0:	06813483          	ld	s1,104(sp)
    800059f4:	06013903          	ld	s2,96(sp)
    800059f8:	05813983          	ld	s3,88(sp)
    800059fc:	05013a03          	ld	s4,80(sp)
    80005a00:	04813a83          	ld	s5,72(sp)
    80005a04:	04013b03          	ld	s6,64(sp)
    80005a08:	03813b83          	ld	s7,56(sp)
    80005a0c:	03013c03          	ld	s8,48(sp)
    80005a10:	02813c83          	ld	s9,40(sp)
    80005a14:	08010113          	addi	sp,sp,128
    80005a18:	00008067          	ret
    80005a1c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005a20:	000a8513          	mv	a0,s5
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	54c080e7          	jalr	1356(ra) # 80001f70 <_ZdlPv>
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	00007097          	auipc	ra,0x7
    80005a34:	498080e7          	jalr	1176(ra) # 8000cec8 <_Unwind_Resume>
    80005a38:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005a3c:	00048513          	mv	a0,s1
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	530080e7          	jalr	1328(ra) # 80001f70 <_ZdlPv>
    80005a48:	00090513          	mv	a0,s2
    80005a4c:	00007097          	auipc	ra,0x7
    80005a50:	47c080e7          	jalr	1148(ra) # 8000cec8 <_Unwind_Resume>
    80005a54:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005a58:	000b0513          	mv	a0,s6
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	514080e7          	jalr	1300(ra) # 80001f70 <_ZdlPv>
    80005a64:	00048513          	mv	a0,s1
    80005a68:	00007097          	auipc	ra,0x7
    80005a6c:	460080e7          	jalr	1120(ra) # 8000cec8 <_Unwind_Resume>
    80005a70:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005a74:	000c8513          	mv	a0,s9
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	4f8080e7          	jalr	1272(ra) # 80001f70 <_ZdlPv>
    80005a80:	00048513          	mv	a0,s1
    80005a84:	00007097          	auipc	ra,0x7
    80005a88:	444080e7          	jalr	1092(ra) # 8000cec8 <_Unwind_Resume>
    80005a8c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005a90:	000c8513          	mv	a0,s9
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	4dc080e7          	jalr	1244(ra) # 80001f70 <_ZdlPv>
    80005a9c:	00048513          	mv	a0,s1
    80005aa0:	00007097          	auipc	ra,0x7
    80005aa4:	428080e7          	jalr	1064(ra) # 8000cec8 <_Unwind_Resume>

0000000080005aa8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005aa8:	ff010113          	addi	sp,sp,-16
    80005aac:	00113423          	sd	ra,8(sp)
    80005ab0:	00813023          	sd	s0,0(sp)
    80005ab4:	01010413          	addi	s0,sp,16
    80005ab8:	00006797          	auipc	a5,0x6
    80005abc:	1c078793          	addi	a5,a5,448 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005ac0:	00f53023          	sd	a5,0(a0)
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	3ec080e7          	jalr	1004(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005acc:	00813083          	ld	ra,8(sp)
    80005ad0:	00013403          	ld	s0,0(sp)
    80005ad4:	01010113          	addi	sp,sp,16
    80005ad8:	00008067          	ret

0000000080005adc <_ZN12ConsumerSyncD0Ev>:
    80005adc:	fe010113          	addi	sp,sp,-32
    80005ae0:	00113c23          	sd	ra,24(sp)
    80005ae4:	00813823          	sd	s0,16(sp)
    80005ae8:	00913423          	sd	s1,8(sp)
    80005aec:	02010413          	addi	s0,sp,32
    80005af0:	00050493          	mv	s1,a0
    80005af4:	00006797          	auipc	a5,0x6
    80005af8:	18478793          	addi	a5,a5,388 # 8000bc78 <_ZTV12ConsumerSync+0x10>
    80005afc:	00f53023          	sd	a5,0(a0)
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	3b0080e7          	jalr	944(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005b08:	00048513          	mv	a0,s1
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	464080e7          	jalr	1124(ra) # 80001f70 <_ZdlPv>
    80005b14:	01813083          	ld	ra,24(sp)
    80005b18:	01013403          	ld	s0,16(sp)
    80005b1c:	00813483          	ld	s1,8(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005b28:	ff010113          	addi	sp,sp,-16
    80005b2c:	00113423          	sd	ra,8(sp)
    80005b30:	00813023          	sd	s0,0(sp)
    80005b34:	01010413          	addi	s0,sp,16
    80005b38:	00006797          	auipc	a5,0x6
    80005b3c:	11878793          	addi	a5,a5,280 # 8000bc50 <_ZTV12ProducerSync+0x10>
    80005b40:	00f53023          	sd	a5,0(a0)
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	36c080e7          	jalr	876(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005b4c:	00813083          	ld	ra,8(sp)
    80005b50:	00013403          	ld	s0,0(sp)
    80005b54:	01010113          	addi	sp,sp,16
    80005b58:	00008067          	ret

0000000080005b5c <_ZN12ProducerSyncD0Ev>:
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	00050493          	mv	s1,a0
    80005b74:	00006797          	auipc	a5,0x6
    80005b78:	0dc78793          	addi	a5,a5,220 # 8000bc50 <_ZTV12ProducerSync+0x10>
    80005b7c:	00f53023          	sd	a5,0(a0)
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	330080e7          	jalr	816(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005b88:	00048513          	mv	a0,s1
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	3e4080e7          	jalr	996(ra) # 80001f70 <_ZdlPv>
    80005b94:	01813083          	ld	ra,24(sp)
    80005b98:	01013403          	ld	s0,16(sp)
    80005b9c:	00813483          	ld	s1,8(sp)
    80005ba0:	02010113          	addi	sp,sp,32
    80005ba4:	00008067          	ret

0000000080005ba8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005ba8:	ff010113          	addi	sp,sp,-16
    80005bac:	00113423          	sd	ra,8(sp)
    80005bb0:	00813023          	sd	s0,0(sp)
    80005bb4:	01010413          	addi	s0,sp,16
    80005bb8:	00006797          	auipc	a5,0x6
    80005bbc:	07078793          	addi	a5,a5,112 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005bc0:	00f53023          	sd	a5,0(a0)
    80005bc4:	ffffc097          	auipc	ra,0xffffc
    80005bc8:	2ec080e7          	jalr	748(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005bcc:	00813083          	ld	ra,8(sp)
    80005bd0:	00013403          	ld	s0,0(sp)
    80005bd4:	01010113          	addi	sp,sp,16
    80005bd8:	00008067          	ret

0000000080005bdc <_ZN16ProducerKeyboardD0Ev>:
    80005bdc:	fe010113          	addi	sp,sp,-32
    80005be0:	00113c23          	sd	ra,24(sp)
    80005be4:	00813823          	sd	s0,16(sp)
    80005be8:	00913423          	sd	s1,8(sp)
    80005bec:	02010413          	addi	s0,sp,32
    80005bf0:	00050493          	mv	s1,a0
    80005bf4:	00006797          	auipc	a5,0x6
    80005bf8:	03478793          	addi	a5,a5,52 # 8000bc28 <_ZTV16ProducerKeyboard+0x10>
    80005bfc:	00f53023          	sd	a5,0(a0)
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	2b0080e7          	jalr	688(ra) # 80001eb0 <_ZN6ThreadD1Ev>
    80005c08:	00048513          	mv	a0,s1
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	364080e7          	jalr	868(ra) # 80001f70 <_ZdlPv>
    80005c14:	01813083          	ld	ra,24(sp)
    80005c18:	01013403          	ld	s0,16(sp)
    80005c1c:	00813483          	ld	s1,8(sp)
    80005c20:	02010113          	addi	sp,sp,32
    80005c24:	00008067          	ret

0000000080005c28 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005c28:	ff010113          	addi	sp,sp,-16
    80005c2c:	00113423          	sd	ra,8(sp)
    80005c30:	00813023          	sd	s0,0(sp)
    80005c34:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005c38:	02053583          	ld	a1,32(a0)
    80005c3c:	fffff097          	auipc	ra,0xfffff
    80005c40:	7e4080e7          	jalr	2020(ra) # 80005420 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005c44:	00813083          	ld	ra,8(sp)
    80005c48:	00013403          	ld	s0,0(sp)
    80005c4c:	01010113          	addi	sp,sp,16
    80005c50:	00008067          	ret

0000000080005c54 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005c54:	ff010113          	addi	sp,sp,-16
    80005c58:	00113423          	sd	ra,8(sp)
    80005c5c:	00813023          	sd	s0,0(sp)
    80005c60:	01010413          	addi	s0,sp,16
        producer(td);
    80005c64:	02053583          	ld	a1,32(a0)
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	878080e7          	jalr	-1928(ra) # 800054e0 <_ZN12ProducerSync8producerEPv>
    }
    80005c70:	00813083          	ld	ra,8(sp)
    80005c74:	00013403          	ld	s0,0(sp)
    80005c78:	01010113          	addi	sp,sp,16
    80005c7c:	00008067          	ret

0000000080005c80 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005c80:	ff010113          	addi	sp,sp,-16
    80005c84:	00113423          	sd	ra,8(sp)
    80005c88:	00813023          	sd	s0,0(sp)
    80005c8c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005c90:	02053583          	ld	a1,32(a0)
    80005c94:	00000097          	auipc	ra,0x0
    80005c98:	8e0080e7          	jalr	-1824(ra) # 80005574 <_ZN12ConsumerSync8consumerEPv>
    }
    80005c9c:	00813083          	ld	ra,8(sp)
    80005ca0:	00013403          	ld	s0,0(sp)
    80005ca4:	01010113          	addi	sp,sp,16
    80005ca8:	00008067          	ret

0000000080005cac <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005cac:	fe010113          	addi	sp,sp,-32
    80005cb0:	00113c23          	sd	ra,24(sp)
    80005cb4:	00813823          	sd	s0,16(sp)
    80005cb8:	00913423          	sd	s1,8(sp)
    80005cbc:	02010413          	addi	s0,sp,32
    80005cc0:	00050493          	mv	s1,a0
    LOCK();
    80005cc4:	00100613          	li	a2,1
    80005cc8:	00000593          	li	a1,0
    80005ccc:	00006517          	auipc	a0,0x6
    80005cd0:	12450513          	addi	a0,a0,292 # 8000bdf0 <lockPrint>
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	548080e7          	jalr	1352(ra) # 8000121c <copy_and_swap>
    80005cdc:	00050863          	beqz	a0,80005cec <_Z11printStringPKc+0x40>
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	6ec080e7          	jalr	1772(ra) # 800013cc <_Z15thread_dispatchv>
    80005ce8:	fddff06f          	j	80005cc4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005cec:	0004c503          	lbu	a0,0(s1)
    80005cf0:	00050a63          	beqz	a0,80005d04 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	978080e7          	jalr	-1672(ra) # 8000166c <_Z4putcc>
        string++;
    80005cfc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005d00:	fedff06f          	j	80005cec <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005d04:	00000613          	li	a2,0
    80005d08:	00100593          	li	a1,1
    80005d0c:	00006517          	auipc	a0,0x6
    80005d10:	0e450513          	addi	a0,a0,228 # 8000bdf0 <lockPrint>
    80005d14:	ffffb097          	auipc	ra,0xffffb
    80005d18:	508080e7          	jalr	1288(ra) # 8000121c <copy_and_swap>
    80005d1c:	fe0514e3          	bnez	a0,80005d04 <_Z11printStringPKc+0x58>
}
    80005d20:	01813083          	ld	ra,24(sp)
    80005d24:	01013403          	ld	s0,16(sp)
    80005d28:	00813483          	ld	s1,8(sp)
    80005d2c:	02010113          	addi	sp,sp,32
    80005d30:	00008067          	ret

0000000080005d34 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d34:	fd010113          	addi	sp,sp,-48
    80005d38:	02113423          	sd	ra,40(sp)
    80005d3c:	02813023          	sd	s0,32(sp)
    80005d40:	00913c23          	sd	s1,24(sp)
    80005d44:	01213823          	sd	s2,16(sp)
    80005d48:	01313423          	sd	s3,8(sp)
    80005d4c:	01413023          	sd	s4,0(sp)
    80005d50:	03010413          	addi	s0,sp,48
    80005d54:	00050993          	mv	s3,a0
    80005d58:	00058a13          	mv	s4,a1
    LOCK();
    80005d5c:	00100613          	li	a2,1
    80005d60:	00000593          	li	a1,0
    80005d64:	00006517          	auipc	a0,0x6
    80005d68:	08c50513          	addi	a0,a0,140 # 8000bdf0 <lockPrint>
    80005d6c:	ffffb097          	auipc	ra,0xffffb
    80005d70:	4b0080e7          	jalr	1200(ra) # 8000121c <copy_and_swap>
    80005d74:	00050863          	beqz	a0,80005d84 <_Z9getStringPci+0x50>
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	654080e7          	jalr	1620(ra) # 800013cc <_Z15thread_dispatchv>
    80005d80:	fddff06f          	j	80005d5c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005d84:	00000913          	li	s2,0
    80005d88:	00090493          	mv	s1,s2
    80005d8c:	0019091b          	addiw	s2,s2,1
    80005d90:	03495a63          	bge	s2,s4,80005dc4 <_Z9getStringPci+0x90>
        cc = getc();
    80005d94:	ffffc097          	auipc	ra,0xffffc
    80005d98:	88c080e7          	jalr	-1908(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    80005d9c:	02050463          	beqz	a0,80005dc4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005da0:	009984b3          	add	s1,s3,s1
    80005da4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005da8:	00a00793          	li	a5,10
    80005dac:	00f50a63          	beq	a0,a5,80005dc0 <_Z9getStringPci+0x8c>
    80005db0:	00d00793          	li	a5,13
    80005db4:	fcf51ae3          	bne	a0,a5,80005d88 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005db8:	00090493          	mv	s1,s2
    80005dbc:	0080006f          	j	80005dc4 <_Z9getStringPci+0x90>
    80005dc0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005dc4:	009984b3          	add	s1,s3,s1
    80005dc8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005dcc:	00000613          	li	a2,0
    80005dd0:	00100593          	li	a1,1
    80005dd4:	00006517          	auipc	a0,0x6
    80005dd8:	01c50513          	addi	a0,a0,28 # 8000bdf0 <lockPrint>
    80005ddc:	ffffb097          	auipc	ra,0xffffb
    80005de0:	440080e7          	jalr	1088(ra) # 8000121c <copy_and_swap>
    80005de4:	fe0514e3          	bnez	a0,80005dcc <_Z9getStringPci+0x98>
    return buf;
}
    80005de8:	00098513          	mv	a0,s3
    80005dec:	02813083          	ld	ra,40(sp)
    80005df0:	02013403          	ld	s0,32(sp)
    80005df4:	01813483          	ld	s1,24(sp)
    80005df8:	01013903          	ld	s2,16(sp)
    80005dfc:	00813983          	ld	s3,8(sp)
    80005e00:	00013a03          	ld	s4,0(sp)
    80005e04:	03010113          	addi	sp,sp,48
    80005e08:	00008067          	ret

0000000080005e0c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e0c:	ff010113          	addi	sp,sp,-16
    80005e10:	00813423          	sd	s0,8(sp)
    80005e14:	01010413          	addi	s0,sp,16
    80005e18:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e1c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e20:	0006c603          	lbu	a2,0(a3)
    80005e24:	fd06071b          	addiw	a4,a2,-48
    80005e28:	0ff77713          	andi	a4,a4,255
    80005e2c:	00900793          	li	a5,9
    80005e30:	02e7e063          	bltu	a5,a4,80005e50 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e34:	0025179b          	slliw	a5,a0,0x2
    80005e38:	00a787bb          	addw	a5,a5,a0
    80005e3c:	0017979b          	slliw	a5,a5,0x1
    80005e40:	00168693          	addi	a3,a3,1
    80005e44:	00c787bb          	addw	a5,a5,a2
    80005e48:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e4c:	fd5ff06f          	j	80005e20 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e50:	00813403          	ld	s0,8(sp)
    80005e54:	01010113          	addi	sp,sp,16
    80005e58:	00008067          	ret

0000000080005e5c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e5c:	fc010113          	addi	sp,sp,-64
    80005e60:	02113c23          	sd	ra,56(sp)
    80005e64:	02813823          	sd	s0,48(sp)
    80005e68:	02913423          	sd	s1,40(sp)
    80005e6c:	03213023          	sd	s2,32(sp)
    80005e70:	01313c23          	sd	s3,24(sp)
    80005e74:	04010413          	addi	s0,sp,64
    80005e78:	00050493          	mv	s1,a0
    80005e7c:	00058913          	mv	s2,a1
    80005e80:	00060993          	mv	s3,a2
    LOCK();
    80005e84:	00100613          	li	a2,1
    80005e88:	00000593          	li	a1,0
    80005e8c:	00006517          	auipc	a0,0x6
    80005e90:	f6450513          	addi	a0,a0,-156 # 8000bdf0 <lockPrint>
    80005e94:	ffffb097          	auipc	ra,0xffffb
    80005e98:	388080e7          	jalr	904(ra) # 8000121c <copy_and_swap>
    80005e9c:	00050863          	beqz	a0,80005eac <_Z8printIntiii+0x50>
    80005ea0:	ffffb097          	auipc	ra,0xffffb
    80005ea4:	52c080e7          	jalr	1324(ra) # 800013cc <_Z15thread_dispatchv>
    80005ea8:	fddff06f          	j	80005e84 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005eac:	00098463          	beqz	s3,80005eb4 <_Z8printIntiii+0x58>
    80005eb0:	0804c463          	bltz	s1,80005f38 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005eb4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005eb8:	00000593          	li	a1,0
    }

    i = 0;
    80005ebc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ec0:	0009079b          	sext.w	a5,s2
    80005ec4:	0325773b          	remuw	a4,a0,s2
    80005ec8:	00048613          	mv	a2,s1
    80005ecc:	0014849b          	addiw	s1,s1,1
    80005ed0:	02071693          	slli	a3,a4,0x20
    80005ed4:	0206d693          	srli	a3,a3,0x20
    80005ed8:	00006717          	auipc	a4,0x6
    80005edc:	db870713          	addi	a4,a4,-584 # 8000bc90 <digits>
    80005ee0:	00d70733          	add	a4,a4,a3
    80005ee4:	00074683          	lbu	a3,0(a4)
    80005ee8:	fd040713          	addi	a4,s0,-48
    80005eec:	00c70733          	add	a4,a4,a2
    80005ef0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005ef4:	0005071b          	sext.w	a4,a0
    80005ef8:	0325553b          	divuw	a0,a0,s2
    80005efc:	fcf772e3          	bgeu	a4,a5,80005ec0 <_Z8printIntiii+0x64>
    if(neg)
    80005f00:	00058c63          	beqz	a1,80005f18 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005f04:	fd040793          	addi	a5,s0,-48
    80005f08:	009784b3          	add	s1,a5,s1
    80005f0c:	02d00793          	li	a5,45
    80005f10:	fef48823          	sb	a5,-16(s1)
    80005f14:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f18:	fff4849b          	addiw	s1,s1,-1
    80005f1c:	0204c463          	bltz	s1,80005f44 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005f20:	fd040793          	addi	a5,s0,-48
    80005f24:	009787b3          	add	a5,a5,s1
    80005f28:	ff07c503          	lbu	a0,-16(a5)
    80005f2c:	ffffb097          	auipc	ra,0xffffb
    80005f30:	740080e7          	jalr	1856(ra) # 8000166c <_Z4putcc>
    80005f34:	fe5ff06f          	j	80005f18 <_Z8printIntiii+0xbc>
        x = -xx;
    80005f38:	4090053b          	negw	a0,s1
        neg = 1;
    80005f3c:	00100593          	li	a1,1
        x = -xx;
    80005f40:	f7dff06f          	j	80005ebc <_Z8printIntiii+0x60>

    UNLOCK();
    80005f44:	00000613          	li	a2,0
    80005f48:	00100593          	li	a1,1
    80005f4c:	00006517          	auipc	a0,0x6
    80005f50:	ea450513          	addi	a0,a0,-348 # 8000bdf0 <lockPrint>
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	2c8080e7          	jalr	712(ra) # 8000121c <copy_and_swap>
    80005f5c:	fe0514e3          	bnez	a0,80005f44 <_Z8printIntiii+0xe8>
    80005f60:	03813083          	ld	ra,56(sp)
    80005f64:	03013403          	ld	s0,48(sp)
    80005f68:	02813483          	ld	s1,40(sp)
    80005f6c:	02013903          	ld	s2,32(sp)
    80005f70:	01813983          	ld	s3,24(sp)
    80005f74:	04010113          	addi	sp,sp,64
    80005f78:	00008067          	ret

0000000080005f7c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f7c:	fd010113          	addi	sp,sp,-48
    80005f80:	02113423          	sd	ra,40(sp)
    80005f84:	02813023          	sd	s0,32(sp)
    80005f88:	00913c23          	sd	s1,24(sp)
    80005f8c:	01213823          	sd	s2,16(sp)
    80005f90:	01313423          	sd	s3,8(sp)
    80005f94:	03010413          	addi	s0,sp,48
    80005f98:	00050493          	mv	s1,a0
    80005f9c:	00058913          	mv	s2,a1
    80005fa0:	0015879b          	addiw	a5,a1,1
    80005fa4:	0007851b          	sext.w	a0,a5
    80005fa8:	00f4a023          	sw	a5,0(s1)
    80005fac:	0004a823          	sw	zero,16(s1)
    80005fb0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fb4:	00251513          	slli	a0,a0,0x2
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	2a0080e7          	jalr	672(ra) # 80001258 <_Z9mem_allocm>
    80005fc0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005fc4:	01000513          	li	a0,16
    80005fc8:	ffffc097          	auipc	ra,0xffffc
    80005fcc:	f80080e7          	jalr	-128(ra) # 80001f48 <_Znwm>
    80005fd0:	00050993          	mv	s3,a0
    80005fd4:	00000593          	li	a1,0
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	124080e7          	jalr	292(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    80005fe0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005fe4:	01000513          	li	a0,16
    80005fe8:	ffffc097          	auipc	ra,0xffffc
    80005fec:	f60080e7          	jalr	-160(ra) # 80001f48 <_Znwm>
    80005ff0:	00050993          	mv	s3,a0
    80005ff4:	00090593          	mv	a1,s2
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	104080e7          	jalr	260(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    80006000:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006004:	01000513          	li	a0,16
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	f40080e7          	jalr	-192(ra) # 80001f48 <_Znwm>
    80006010:	00050913          	mv	s2,a0
    80006014:	00100593          	li	a1,1
    80006018:	ffffc097          	auipc	ra,0xffffc
    8000601c:	0e4080e7          	jalr	228(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    80006020:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006024:	01000513          	li	a0,16
    80006028:	ffffc097          	auipc	ra,0xffffc
    8000602c:	f20080e7          	jalr	-224(ra) # 80001f48 <_Znwm>
    80006030:	00050913          	mv	s2,a0
    80006034:	00100593          	li	a1,1
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	0c4080e7          	jalr	196(ra) # 800020fc <_ZN9SemaphoreC1Ej>
    80006040:	0324b823          	sd	s2,48(s1)
}
    80006044:	02813083          	ld	ra,40(sp)
    80006048:	02013403          	ld	s0,32(sp)
    8000604c:	01813483          	ld	s1,24(sp)
    80006050:	01013903          	ld	s2,16(sp)
    80006054:	00813983          	ld	s3,8(sp)
    80006058:	03010113          	addi	sp,sp,48
    8000605c:	00008067          	ret
    80006060:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006064:	00098513          	mv	a0,s3
    80006068:	ffffc097          	auipc	ra,0xffffc
    8000606c:	f08080e7          	jalr	-248(ra) # 80001f70 <_ZdlPv>
    80006070:	00048513          	mv	a0,s1
    80006074:	00007097          	auipc	ra,0x7
    80006078:	e54080e7          	jalr	-428(ra) # 8000cec8 <_Unwind_Resume>
    8000607c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006080:	00098513          	mv	a0,s3
    80006084:	ffffc097          	auipc	ra,0xffffc
    80006088:	eec080e7          	jalr	-276(ra) # 80001f70 <_ZdlPv>
    8000608c:	00048513          	mv	a0,s1
    80006090:	00007097          	auipc	ra,0x7
    80006094:	e38080e7          	jalr	-456(ra) # 8000cec8 <_Unwind_Resume>
    80006098:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000609c:	00090513          	mv	a0,s2
    800060a0:	ffffc097          	auipc	ra,0xffffc
    800060a4:	ed0080e7          	jalr	-304(ra) # 80001f70 <_ZdlPv>
    800060a8:	00048513          	mv	a0,s1
    800060ac:	00007097          	auipc	ra,0x7
    800060b0:	e1c080e7          	jalr	-484(ra) # 8000cec8 <_Unwind_Resume>
    800060b4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060b8:	00090513          	mv	a0,s2
    800060bc:	ffffc097          	auipc	ra,0xffffc
    800060c0:	eb4080e7          	jalr	-332(ra) # 80001f70 <_ZdlPv>
    800060c4:	00048513          	mv	a0,s1
    800060c8:	00007097          	auipc	ra,0x7
    800060cc:	e00080e7          	jalr	-512(ra) # 8000cec8 <_Unwind_Resume>

00000000800060d0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800060d0:	fe010113          	addi	sp,sp,-32
    800060d4:	00113c23          	sd	ra,24(sp)
    800060d8:	00813823          	sd	s0,16(sp)
    800060dc:	00913423          	sd	s1,8(sp)
    800060e0:	01213023          	sd	s2,0(sp)
    800060e4:	02010413          	addi	s0,sp,32
    800060e8:	00050493          	mv	s1,a0
    800060ec:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800060f0:	01853503          	ld	a0,24(a0)
    800060f4:	ffffc097          	auipc	ra,0xffffc
    800060f8:	044080e7          	jalr	68(ra) # 80002138 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800060fc:	0304b503          	ld	a0,48(s1)
    80006100:	ffffc097          	auipc	ra,0xffffc
    80006104:	038080e7          	jalr	56(ra) # 80002138 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006108:	0084b783          	ld	a5,8(s1)
    8000610c:	0144a703          	lw	a4,20(s1)
    80006110:	00271713          	slli	a4,a4,0x2
    80006114:	00e787b3          	add	a5,a5,a4
    80006118:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000611c:	0144a783          	lw	a5,20(s1)
    80006120:	0017879b          	addiw	a5,a5,1
    80006124:	0004a703          	lw	a4,0(s1)
    80006128:	02e7e7bb          	remw	a5,a5,a4
    8000612c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006130:	0304b503          	ld	a0,48(s1)
    80006134:	ffffc097          	auipc	ra,0xffffc
    80006138:	03c080e7          	jalr	60(ra) # 80002170 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000613c:	0204b503          	ld	a0,32(s1)
    80006140:	ffffc097          	auipc	ra,0xffffc
    80006144:	030080e7          	jalr	48(ra) # 80002170 <_ZN9Semaphore6signalEv>

}
    80006148:	01813083          	ld	ra,24(sp)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	00813483          	ld	s1,8(sp)
    80006154:	00013903          	ld	s2,0(sp)
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret

0000000080006160 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	01213023          	sd	s2,0(sp)
    80006174:	02010413          	addi	s0,sp,32
    80006178:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000617c:	02053503          	ld	a0,32(a0)
    80006180:	ffffc097          	auipc	ra,0xffffc
    80006184:	fb8080e7          	jalr	-72(ra) # 80002138 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006188:	0284b503          	ld	a0,40(s1)
    8000618c:	ffffc097          	auipc	ra,0xffffc
    80006190:	fac080e7          	jalr	-84(ra) # 80002138 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006194:	0084b703          	ld	a4,8(s1)
    80006198:	0104a783          	lw	a5,16(s1)
    8000619c:	00279693          	slli	a3,a5,0x2
    800061a0:	00d70733          	add	a4,a4,a3
    800061a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800061a8:	0017879b          	addiw	a5,a5,1
    800061ac:	0004a703          	lw	a4,0(s1)
    800061b0:	02e7e7bb          	remw	a5,a5,a4
    800061b4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061b8:	0284b503          	ld	a0,40(s1)
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	fb4080e7          	jalr	-76(ra) # 80002170 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800061c4:	0184b503          	ld	a0,24(s1)
    800061c8:	ffffc097          	auipc	ra,0xffffc
    800061cc:	fa8080e7          	jalr	-88(ra) # 80002170 <_ZN9Semaphore6signalEv>

    return ret;
}
    800061d0:	00090513          	mv	a0,s2
    800061d4:	01813083          	ld	ra,24(sp)
    800061d8:	01013403          	ld	s0,16(sp)
    800061dc:	00813483          	ld	s1,8(sp)
    800061e0:	00013903          	ld	s2,0(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00008067          	ret

00000000800061ec <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800061ec:	fe010113          	addi	sp,sp,-32
    800061f0:	00113c23          	sd	ra,24(sp)
    800061f4:	00813823          	sd	s0,16(sp)
    800061f8:	00913423          	sd	s1,8(sp)
    800061fc:	01213023          	sd	s2,0(sp)
    80006200:	02010413          	addi	s0,sp,32
    80006204:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006208:	02853503          	ld	a0,40(a0)
    8000620c:	ffffc097          	auipc	ra,0xffffc
    80006210:	f2c080e7          	jalr	-212(ra) # 80002138 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006214:	0304b503          	ld	a0,48(s1)
    80006218:	ffffc097          	auipc	ra,0xffffc
    8000621c:	f20080e7          	jalr	-224(ra) # 80002138 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006220:	0144a783          	lw	a5,20(s1)
    80006224:	0104a903          	lw	s2,16(s1)
    80006228:	0327ce63          	blt	a5,s2,80006264 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000622c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006230:	0304b503          	ld	a0,48(s1)
    80006234:	ffffc097          	auipc	ra,0xffffc
    80006238:	f3c080e7          	jalr	-196(ra) # 80002170 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000623c:	0284b503          	ld	a0,40(s1)
    80006240:	ffffc097          	auipc	ra,0xffffc
    80006244:	f30080e7          	jalr	-208(ra) # 80002170 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006248:	00090513          	mv	a0,s2
    8000624c:	01813083          	ld	ra,24(sp)
    80006250:	01013403          	ld	s0,16(sp)
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	00013903          	ld	s2,0(sp)
    8000625c:	02010113          	addi	sp,sp,32
    80006260:	00008067          	ret
        ret = cap - head + tail;
    80006264:	0004a703          	lw	a4,0(s1)
    80006268:	4127093b          	subw	s2,a4,s2
    8000626c:	00f9093b          	addw	s2,s2,a5
    80006270:	fc1ff06f          	j	80006230 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006274 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006274:	fe010113          	addi	sp,sp,-32
    80006278:	00113c23          	sd	ra,24(sp)
    8000627c:	00813823          	sd	s0,16(sp)
    80006280:	00913423          	sd	s1,8(sp)
    80006284:	02010413          	addi	s0,sp,32
    80006288:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000628c:	00a00513          	li	a0,10
    80006290:	ffffc097          	auipc	ra,0xffffc
    80006294:	000080e7          	jalr	ra # 80002290 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	08850513          	addi	a0,a0,136 # 80009320 <CONSOLE_STATUS+0x310>
    800062a0:	00000097          	auipc	ra,0x0
    800062a4:	a0c080e7          	jalr	-1524(ra) # 80005cac <_Z11printStringPKc>
    while (getCnt()) {
    800062a8:	00048513          	mv	a0,s1
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	f40080e7          	jalr	-192(ra) # 800061ec <_ZN9BufferCPP6getCntEv>
    800062b4:	02050c63          	beqz	a0,800062ec <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062b8:	0084b783          	ld	a5,8(s1)
    800062bc:	0104a703          	lw	a4,16(s1)
    800062c0:	00271713          	slli	a4,a4,0x2
    800062c4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800062c8:	0007c503          	lbu	a0,0(a5)
    800062cc:	ffffc097          	auipc	ra,0xffffc
    800062d0:	fc4080e7          	jalr	-60(ra) # 80002290 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800062d4:	0104a783          	lw	a5,16(s1)
    800062d8:	0017879b          	addiw	a5,a5,1
    800062dc:	0004a703          	lw	a4,0(s1)
    800062e0:	02e7e7bb          	remw	a5,a5,a4
    800062e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800062e8:	fc1ff06f          	j	800062a8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800062ec:	02100513          	li	a0,33
    800062f0:	ffffc097          	auipc	ra,0xffffc
    800062f4:	fa0080e7          	jalr	-96(ra) # 80002290 <_ZN7Console4putcEc>
    Console::putc('\n');
    800062f8:	00a00513          	li	a0,10
    800062fc:	ffffc097          	auipc	ra,0xffffc
    80006300:	f94080e7          	jalr	-108(ra) # 80002290 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006304:	0084b503          	ld	a0,8(s1)
    80006308:	ffffb097          	auipc	ra,0xffffb
    8000630c:	fa4080e7          	jalr	-92(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006310:	0204b503          	ld	a0,32(s1)
    80006314:	00050863          	beqz	a0,80006324 <_ZN9BufferCPPD1Ev+0xb0>
    80006318:	00053783          	ld	a5,0(a0)
    8000631c:	0087b783          	ld	a5,8(a5)
    80006320:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006324:	0184b503          	ld	a0,24(s1)
    80006328:	00050863          	beqz	a0,80006338 <_ZN9BufferCPPD1Ev+0xc4>
    8000632c:	00053783          	ld	a5,0(a0)
    80006330:	0087b783          	ld	a5,8(a5)
    80006334:	000780e7          	jalr	a5
    delete mutexTail;
    80006338:	0304b503          	ld	a0,48(s1)
    8000633c:	00050863          	beqz	a0,8000634c <_ZN9BufferCPPD1Ev+0xd8>
    80006340:	00053783          	ld	a5,0(a0)
    80006344:	0087b783          	ld	a5,8(a5)
    80006348:	000780e7          	jalr	a5
    delete mutexHead;
    8000634c:	0284b503          	ld	a0,40(s1)
    80006350:	00050863          	beqz	a0,80006360 <_ZN9BufferCPPD1Ev+0xec>
    80006354:	00053783          	ld	a5,0(a0)
    80006358:	0087b783          	ld	a5,8(a5)
    8000635c:	000780e7          	jalr	a5
}
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00813483          	ld	s1,8(sp)
    8000636c:	02010113          	addi	sp,sp,32
    80006370:	00008067          	ret

0000000080006374 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006374:	fe010113          	addi	sp,sp,-32
    80006378:	00113c23          	sd	ra,24(sp)
    8000637c:	00813823          	sd	s0,16(sp)
    80006380:	00913423          	sd	s1,8(sp)
    80006384:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	fb050513          	addi	a0,a0,-80 # 80009338 <CONSOLE_STATUS+0x328>
    80006390:	00000097          	auipc	ra,0x0
    80006394:	91c080e7          	jalr	-1764(ra) # 80005cac <_Z11printStringPKc>
    int test = getc() - '0';
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	288080e7          	jalr	648(ra) # 80001620 <_Z4getcv>
    800063a0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	27c080e7          	jalr	636(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800063ac:	00700793          	li	a5,7
    800063b0:	1097e263          	bltu	a5,s1,800064b4 <_Z8userMainv+0x140>
    800063b4:	00249493          	slli	s1,s1,0x2
    800063b8:	00003717          	auipc	a4,0x3
    800063bc:	1d870713          	addi	a4,a4,472 # 80009590 <CONSOLE_STATUS+0x580>
    800063c0:	00e484b3          	add	s1,s1,a4
    800063c4:	0004a783          	lw	a5,0(s1)
    800063c8:	00e787b3          	add	a5,a5,a4
    800063cc:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800063d0:	fffff097          	auipc	ra,0xfffff
    800063d4:	f54080e7          	jalr	-172(ra) # 80005324 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800063d8:	00003517          	auipc	a0,0x3
    800063dc:	f8050513          	addi	a0,a0,-128 # 80009358 <CONSOLE_STATUS+0x348>
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	8cc080e7          	jalr	-1844(ra) # 80005cac <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800063e8:	01813083          	ld	ra,24(sp)
    800063ec:	01013403          	ld	s0,16(sp)
    800063f0:	00813483          	ld	s1,8(sp)
    800063f4:	02010113          	addi	sp,sp,32
    800063f8:	00008067          	ret
            Threads_CPP_API_test();
    800063fc:	ffffe097          	auipc	ra,0xffffe
    80006400:	ae8080e7          	jalr	-1304(ra) # 80003ee4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006404:	00003517          	auipc	a0,0x3
    80006408:	f9450513          	addi	a0,a0,-108 # 80009398 <CONSOLE_STATUS+0x388>
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	8a0080e7          	jalr	-1888(ra) # 80005cac <_Z11printStringPKc>
            break;
    80006414:	fd5ff06f          	j	800063e8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006418:	ffffd097          	auipc	ra,0xffffd
    8000641c:	320080e7          	jalr	800(ra) # 80003738 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006420:	00003517          	auipc	a0,0x3
    80006424:	fb850513          	addi	a0,a0,-72 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006428:	00000097          	auipc	ra,0x0
    8000642c:	884080e7          	jalr	-1916(ra) # 80005cac <_Z11printStringPKc>
            break;
    80006430:	fb9ff06f          	j	800063e8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	234080e7          	jalr	564(ra) # 80005668 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000643c:	00003517          	auipc	a0,0x3
    80006440:	fec50513          	addi	a0,a0,-20 # 80009428 <CONSOLE_STATUS+0x418>
    80006444:	00000097          	auipc	ra,0x0
    80006448:	868080e7          	jalr	-1944(ra) # 80005cac <_Z11printStringPKc>
            break;
    8000644c:	f9dff06f          	j	800063e8 <_Z8userMainv+0x74>
            testSleeping();
    80006450:	00000097          	auipc	ra,0x0
    80006454:	11c080e7          	jalr	284(ra) # 8000656c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006458:	00003517          	auipc	a0,0x3
    8000645c:	02850513          	addi	a0,a0,40 # 80009480 <CONSOLE_STATUS+0x470>
    80006460:	00000097          	auipc	ra,0x0
    80006464:	84c080e7          	jalr	-1972(ra) # 80005cac <_Z11printStringPKc>
            break;
    80006468:	f81ff06f          	j	800063e8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000646c:	ffffe097          	auipc	ra,0xffffe
    80006470:	f38080e7          	jalr	-200(ra) # 800043a4 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006474:	00003517          	auipc	a0,0x3
    80006478:	03c50513          	addi	a0,a0,60 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	830080e7          	jalr	-2000(ra) # 80005cac <_Z11printStringPKc>
            break;
    80006484:	f65ff06f          	j	800063e8 <_Z8userMainv+0x74>
            System_Mode_test();
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	658080e7          	jalr	1624(ra) # 80006ae0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006490:	00003517          	auipc	a0,0x3
    80006494:	06050513          	addi	a0,a0,96 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	814080e7          	jalr	-2028(ra) # 80005cac <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	07050513          	addi	a0,a0,112 # 80009510 <CONSOLE_STATUS+0x500>
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	804080e7          	jalr	-2044(ra) # 80005cac <_Z11printStringPKc>
            break;
    800064b0:	f39ff06f          	j	800063e8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	0b450513          	addi	a0,a0,180 # 80009568 <CONSOLE_STATUS+0x558>
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	7f0080e7          	jalr	2032(ra) # 80005cac <_Z11printStringPKc>
    800064c4:	f25ff06f          	j	800063e8 <_Z8userMainv+0x74>

00000000800064c8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800064c8:	fe010113          	addi	sp,sp,-32
    800064cc:	00113c23          	sd	ra,24(sp)
    800064d0:	00813823          	sd	s0,16(sp)
    800064d4:	00913423          	sd	s1,8(sp)
    800064d8:	01213023          	sd	s2,0(sp)
    800064dc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064e0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064e4:	00600493          	li	s1,6
    while (--i > 0) {
    800064e8:	fff4849b          	addiw	s1,s1,-1
    800064ec:	04905463          	blez	s1,80006534 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800064f0:	00003517          	auipc	a0,0x3
    800064f4:	0c050513          	addi	a0,a0,192 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800064f8:	fffff097          	auipc	ra,0xfffff
    800064fc:	7b4080e7          	jalr	1972(ra) # 80005cac <_Z11printStringPKc>
        printInt(sleep_time);
    80006500:	00000613          	li	a2,0
    80006504:	00a00593          	li	a1,10
    80006508:	0009051b          	sext.w	a0,s2
    8000650c:	00000097          	auipc	ra,0x0
    80006510:	950080e7          	jalr	-1712(ra) # 80005e5c <_Z8printIntiii>
        printString(" !\n");
    80006514:	00003517          	auipc	a0,0x3
    80006518:	0a450513          	addi	a0,a0,164 # 800095b8 <CONSOLE_STATUS+0x5a8>
    8000651c:	fffff097          	auipc	ra,0xfffff
    80006520:	790080e7          	jalr	1936(ra) # 80005cac <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006524:	00090513          	mv	a0,s2
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	0ac080e7          	jalr	172(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006530:	fb9ff06f          	j	800064e8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006534:	00a00793          	li	a5,10
    80006538:	02f95933          	divu	s2,s2,a5
    8000653c:	fff90913          	addi	s2,s2,-1
    80006540:	00006797          	auipc	a5,0x6
    80006544:	8b878793          	addi	a5,a5,-1864 # 8000bdf8 <_ZL8finished>
    80006548:	01278933          	add	s2,a5,s2
    8000654c:	00100793          	li	a5,1
    80006550:	00f90023          	sb	a5,0(s2)
}
    80006554:	01813083          	ld	ra,24(sp)
    80006558:	01013403          	ld	s0,16(sp)
    8000655c:	00813483          	ld	s1,8(sp)
    80006560:	00013903          	ld	s2,0(sp)
    80006564:	02010113          	addi	sp,sp,32
    80006568:	00008067          	ret

000000008000656c <_Z12testSleepingv>:

void testSleeping() {
    8000656c:	fc010113          	addi	sp,sp,-64
    80006570:	02113c23          	sd	ra,56(sp)
    80006574:	02813823          	sd	s0,48(sp)
    80006578:	02913423          	sd	s1,40(sp)
    8000657c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006580:	00a00793          	li	a5,10
    80006584:	fcf43823          	sd	a5,-48(s0)
    80006588:	01400793          	li	a5,20
    8000658c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006590:	00000493          	li	s1,0
    80006594:	02c0006f          	j	800065c0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006598:	00349793          	slli	a5,s1,0x3
    8000659c:	fd040613          	addi	a2,s0,-48
    800065a0:	00f60633          	add	a2,a2,a5
    800065a4:	00000597          	auipc	a1,0x0
    800065a8:	f2458593          	addi	a1,a1,-220 # 800064c8 <_ZL9sleepyRunPv>
    800065ac:	fc040513          	addi	a0,s0,-64
    800065b0:	00f50533          	add	a0,a0,a5
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	d44080e7          	jalr	-700(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065bc:	0014849b          	addiw	s1,s1,1
    800065c0:	00100793          	li	a5,1
    800065c4:	fc97dae3          	bge	a5,s1,80006598 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800065c8:	00006797          	auipc	a5,0x6
    800065cc:	8307c783          	lbu	a5,-2000(a5) # 8000bdf8 <_ZL8finished>
    800065d0:	fe078ce3          	beqz	a5,800065c8 <_Z12testSleepingv+0x5c>
    800065d4:	00006797          	auipc	a5,0x6
    800065d8:	8257c783          	lbu	a5,-2011(a5) # 8000bdf9 <_ZL8finished+0x1>
    800065dc:	fe0786e3          	beqz	a5,800065c8 <_Z12testSleepingv+0x5c>
}
    800065e0:	03813083          	ld	ra,56(sp)
    800065e4:	03013403          	ld	s0,48(sp)
    800065e8:	02813483          	ld	s1,40(sp)
    800065ec:	04010113          	addi	sp,sp,64
    800065f0:	00008067          	ret

00000000800065f4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065f4:	fe010113          	addi	sp,sp,-32
    800065f8:	00113c23          	sd	ra,24(sp)
    800065fc:	00813823          	sd	s0,16(sp)
    80006600:	00913423          	sd	s1,8(sp)
    80006604:	01213023          	sd	s2,0(sp)
    80006608:	02010413          	addi	s0,sp,32
    8000660c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006610:	00100793          	li	a5,1
    80006614:	02a7f863          	bgeu	a5,a0,80006644 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006618:	00a00793          	li	a5,10
    8000661c:	02f577b3          	remu	a5,a0,a5
    80006620:	02078e63          	beqz	a5,8000665c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006624:	fff48513          	addi	a0,s1,-1
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	fcc080e7          	jalr	-52(ra) # 800065f4 <_ZL9fibonaccim>
    80006630:	00050913          	mv	s2,a0
    80006634:	ffe48513          	addi	a0,s1,-2
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	fbc080e7          	jalr	-68(ra) # 800065f4 <_ZL9fibonaccim>
    80006640:	00a90533          	add	a0,s2,a0
}
    80006644:	01813083          	ld	ra,24(sp)
    80006648:	01013403          	ld	s0,16(sp)
    8000664c:	00813483          	ld	s1,8(sp)
    80006650:	00013903          	ld	s2,0(sp)
    80006654:	02010113          	addi	sp,sp,32
    80006658:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	d70080e7          	jalr	-656(ra) # 800013cc <_Z15thread_dispatchv>
    80006664:	fc1ff06f          	j	80006624 <_ZL9fibonaccim+0x30>

0000000080006668 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00113c23          	sd	ra,24(sp)
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	01213023          	sd	s2,0(sp)
    8000667c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006680:	00a00493          	li	s1,10
    80006684:	0400006f          	j	800066c4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	c0050513          	addi	a0,a0,-1024 # 80009288 <CONSOLE_STATUS+0x278>
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	61c080e7          	jalr	1564(ra) # 80005cac <_Z11printStringPKc>
    80006698:	00000613          	li	a2,0
    8000669c:	00a00593          	li	a1,10
    800066a0:	00048513          	mv	a0,s1
    800066a4:	fffff097          	auipc	ra,0xfffff
    800066a8:	7b8080e7          	jalr	1976(ra) # 80005e5c <_Z8printIntiii>
    800066ac:	00003517          	auipc	a0,0x3
    800066b0:	dcc50513          	addi	a0,a0,-564 # 80009478 <CONSOLE_STATUS+0x468>
    800066b4:	fffff097          	auipc	ra,0xfffff
    800066b8:	5f8080e7          	jalr	1528(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 13; i++) {
    800066bc:	0014849b          	addiw	s1,s1,1
    800066c0:	0ff4f493          	andi	s1,s1,255
    800066c4:	00c00793          	li	a5,12
    800066c8:	fc97f0e3          	bgeu	a5,s1,80006688 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800066cc:	00003517          	auipc	a0,0x3
    800066d0:	bc450513          	addi	a0,a0,-1084 # 80009290 <CONSOLE_STATUS+0x280>
    800066d4:	fffff097          	auipc	ra,0xfffff
    800066d8:	5d8080e7          	jalr	1496(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066dc:	00500313          	li	t1,5
    thread_dispatch();
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	cec080e7          	jalr	-788(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066e8:	01000513          	li	a0,16
    800066ec:	00000097          	auipc	ra,0x0
    800066f0:	f08080e7          	jalr	-248(ra) # 800065f4 <_ZL9fibonaccim>
    800066f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	ba850513          	addi	a0,a0,-1112 # 800092a0 <CONSOLE_STATUS+0x290>
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	5ac080e7          	jalr	1452(ra) # 80005cac <_Z11printStringPKc>
    80006708:	00000613          	li	a2,0
    8000670c:	00a00593          	li	a1,10
    80006710:	0009051b          	sext.w	a0,s2
    80006714:	fffff097          	auipc	ra,0xfffff
    80006718:	748080e7          	jalr	1864(ra) # 80005e5c <_Z8printIntiii>
    8000671c:	00003517          	auipc	a0,0x3
    80006720:	d5c50513          	addi	a0,a0,-676 # 80009478 <CONSOLE_STATUS+0x468>
    80006724:	fffff097          	auipc	ra,0xfffff
    80006728:	588080e7          	jalr	1416(ra) # 80005cac <_Z11printStringPKc>
    8000672c:	0400006f          	j	8000676c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006730:	00003517          	auipc	a0,0x3
    80006734:	b5850513          	addi	a0,a0,-1192 # 80009288 <CONSOLE_STATUS+0x278>
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	574080e7          	jalr	1396(ra) # 80005cac <_Z11printStringPKc>
    80006740:	00000613          	li	a2,0
    80006744:	00a00593          	li	a1,10
    80006748:	00048513          	mv	a0,s1
    8000674c:	fffff097          	auipc	ra,0xfffff
    80006750:	710080e7          	jalr	1808(ra) # 80005e5c <_Z8printIntiii>
    80006754:	00003517          	auipc	a0,0x3
    80006758:	d2450513          	addi	a0,a0,-732 # 80009478 <CONSOLE_STATUS+0x468>
    8000675c:	fffff097          	auipc	ra,0xfffff
    80006760:	550080e7          	jalr	1360(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006764:	0014849b          	addiw	s1,s1,1
    80006768:	0ff4f493          	andi	s1,s1,255
    8000676c:	00f00793          	li	a5,15
    80006770:	fc97f0e3          	bgeu	a5,s1,80006730 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006774:	00003517          	auipc	a0,0x3
    80006778:	b3c50513          	addi	a0,a0,-1220 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000677c:	fffff097          	auipc	ra,0xfffff
    80006780:	530080e7          	jalr	1328(ra) # 80005cac <_Z11printStringPKc>
    finishedD = true;
    80006784:	00100793          	li	a5,1
    80006788:	00005717          	auipc	a4,0x5
    8000678c:	66f70923          	sb	a5,1650(a4) # 8000bdfa <_ZL9finishedD>
    thread_dispatch();
    80006790:	ffffb097          	auipc	ra,0xffffb
    80006794:	c3c080e7          	jalr	-964(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006798:	01813083          	ld	ra,24(sp)
    8000679c:	01013403          	ld	s0,16(sp)
    800067a0:	00813483          	ld	s1,8(sp)
    800067a4:	00013903          	ld	s2,0(sp)
    800067a8:	02010113          	addi	sp,sp,32
    800067ac:	00008067          	ret

00000000800067b0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800067b0:	fe010113          	addi	sp,sp,-32
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	00813823          	sd	s0,16(sp)
    800067bc:	00913423          	sd	s1,8(sp)
    800067c0:	01213023          	sd	s2,0(sp)
    800067c4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800067c8:	00000493          	li	s1,0
    800067cc:	0400006f          	j	8000680c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	a8850513          	addi	a0,a0,-1400 # 80009258 <CONSOLE_STATUS+0x248>
    800067d8:	fffff097          	auipc	ra,0xfffff
    800067dc:	4d4080e7          	jalr	1236(ra) # 80005cac <_Z11printStringPKc>
    800067e0:	00000613          	li	a2,0
    800067e4:	00a00593          	li	a1,10
    800067e8:	00048513          	mv	a0,s1
    800067ec:	fffff097          	auipc	ra,0xfffff
    800067f0:	670080e7          	jalr	1648(ra) # 80005e5c <_Z8printIntiii>
    800067f4:	00003517          	auipc	a0,0x3
    800067f8:	c8450513          	addi	a0,a0,-892 # 80009478 <CONSOLE_STATUS+0x468>
    800067fc:	fffff097          	auipc	ra,0xfffff
    80006800:	4b0080e7          	jalr	1200(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006804:	0014849b          	addiw	s1,s1,1
    80006808:	0ff4f493          	andi	s1,s1,255
    8000680c:	00200793          	li	a5,2
    80006810:	fc97f0e3          	bgeu	a5,s1,800067d0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006814:	00003517          	auipc	a0,0x3
    80006818:	a4c50513          	addi	a0,a0,-1460 # 80009260 <CONSOLE_STATUS+0x250>
    8000681c:	fffff097          	auipc	ra,0xfffff
    80006820:	490080e7          	jalr	1168(ra) # 80005cac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006824:	00700313          	li	t1,7
    thread_dispatch();
    80006828:	ffffb097          	auipc	ra,0xffffb
    8000682c:	ba4080e7          	jalr	-1116(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006830:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006834:	00003517          	auipc	a0,0x3
    80006838:	a3c50513          	addi	a0,a0,-1476 # 80009270 <CONSOLE_STATUS+0x260>
    8000683c:	fffff097          	auipc	ra,0xfffff
    80006840:	470080e7          	jalr	1136(ra) # 80005cac <_Z11printStringPKc>
    80006844:	00000613          	li	a2,0
    80006848:	00a00593          	li	a1,10
    8000684c:	0009051b          	sext.w	a0,s2
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	60c080e7          	jalr	1548(ra) # 80005e5c <_Z8printIntiii>
    80006858:	00003517          	auipc	a0,0x3
    8000685c:	c2050513          	addi	a0,a0,-992 # 80009478 <CONSOLE_STATUS+0x468>
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	44c080e7          	jalr	1100(ra) # 80005cac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006868:	00c00513          	li	a0,12
    8000686c:	00000097          	auipc	ra,0x0
    80006870:	d88080e7          	jalr	-632(ra) # 800065f4 <_ZL9fibonaccim>
    80006874:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006878:	00003517          	auipc	a0,0x3
    8000687c:	a0050513          	addi	a0,a0,-1536 # 80009278 <CONSOLE_STATUS+0x268>
    80006880:	fffff097          	auipc	ra,0xfffff
    80006884:	42c080e7          	jalr	1068(ra) # 80005cac <_Z11printStringPKc>
    80006888:	00000613          	li	a2,0
    8000688c:	00a00593          	li	a1,10
    80006890:	0009051b          	sext.w	a0,s2
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	5c8080e7          	jalr	1480(ra) # 80005e5c <_Z8printIntiii>
    8000689c:	00003517          	auipc	a0,0x3
    800068a0:	bdc50513          	addi	a0,a0,-1060 # 80009478 <CONSOLE_STATUS+0x468>
    800068a4:	fffff097          	auipc	ra,0xfffff
    800068a8:	408080e7          	jalr	1032(ra) # 80005cac <_Z11printStringPKc>
    800068ac:	0400006f          	j	800068ec <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	9a850513          	addi	a0,a0,-1624 # 80009258 <CONSOLE_STATUS+0x248>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	3f4080e7          	jalr	1012(ra) # 80005cac <_Z11printStringPKc>
    800068c0:	00000613          	li	a2,0
    800068c4:	00a00593          	li	a1,10
    800068c8:	00048513          	mv	a0,s1
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	590080e7          	jalr	1424(ra) # 80005e5c <_Z8printIntiii>
    800068d4:	00003517          	auipc	a0,0x3
    800068d8:	ba450513          	addi	a0,a0,-1116 # 80009478 <CONSOLE_STATUS+0x468>
    800068dc:	fffff097          	auipc	ra,0xfffff
    800068e0:	3d0080e7          	jalr	976(ra) # 80005cac <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068e4:	0014849b          	addiw	s1,s1,1
    800068e8:	0ff4f493          	andi	s1,s1,255
    800068ec:	00500793          	li	a5,5
    800068f0:	fc97f0e3          	bgeu	a5,s1,800068b0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	93c50513          	addi	a0,a0,-1732 # 80009230 <CONSOLE_STATUS+0x220>
    800068fc:	fffff097          	auipc	ra,0xfffff
    80006900:	3b0080e7          	jalr	944(ra) # 80005cac <_Z11printStringPKc>
    finishedC = true;
    80006904:	00100793          	li	a5,1
    80006908:	00005717          	auipc	a4,0x5
    8000690c:	4ef709a3          	sb	a5,1267(a4) # 8000bdfb <_ZL9finishedC>
    thread_dispatch();
    80006910:	ffffb097          	auipc	ra,0xffffb
    80006914:	abc080e7          	jalr	-1348(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006918:	01813083          	ld	ra,24(sp)
    8000691c:	01013403          	ld	s0,16(sp)
    80006920:	00813483          	ld	s1,8(sp)
    80006924:	00013903          	ld	s2,0(sp)
    80006928:	02010113          	addi	sp,sp,32
    8000692c:	00008067          	ret

0000000080006930 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006930:	fe010113          	addi	sp,sp,-32
    80006934:	00113c23          	sd	ra,24(sp)
    80006938:	00813823          	sd	s0,16(sp)
    8000693c:	00913423          	sd	s1,8(sp)
    80006940:	01213023          	sd	s2,0(sp)
    80006944:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006948:	00000913          	li	s2,0
    8000694c:	0400006f          	j	8000698c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006950:	ffffb097          	auipc	ra,0xffffb
    80006954:	a7c080e7          	jalr	-1412(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006958:	00148493          	addi	s1,s1,1
    8000695c:	000027b7          	lui	a5,0x2
    80006960:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006964:	0097ee63          	bltu	a5,s1,80006980 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006968:	00000713          	li	a4,0
    8000696c:	000077b7          	lui	a5,0x7
    80006970:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006974:	fce7eee3          	bltu	a5,a4,80006950 <_ZL11workerBodyBPv+0x20>
    80006978:	00170713          	addi	a4,a4,1
    8000697c:	ff1ff06f          	j	8000696c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006980:	00a00793          	li	a5,10
    80006984:	04f90663          	beq	s2,a5,800069d0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006988:	00190913          	addi	s2,s2,1
    8000698c:	00f00793          	li	a5,15
    80006990:	0527e463          	bltu	a5,s2,800069d8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006994:	00003517          	auipc	a0,0x3
    80006998:	8ac50513          	addi	a0,a0,-1876 # 80009240 <CONSOLE_STATUS+0x230>
    8000699c:	fffff097          	auipc	ra,0xfffff
    800069a0:	310080e7          	jalr	784(ra) # 80005cac <_Z11printStringPKc>
    800069a4:	00000613          	li	a2,0
    800069a8:	00a00593          	li	a1,10
    800069ac:	0009051b          	sext.w	a0,s2
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	4ac080e7          	jalr	1196(ra) # 80005e5c <_Z8printIntiii>
    800069b8:	00003517          	auipc	a0,0x3
    800069bc:	ac050513          	addi	a0,a0,-1344 # 80009478 <CONSOLE_STATUS+0x468>
    800069c0:	fffff097          	auipc	ra,0xfffff
    800069c4:	2ec080e7          	jalr	748(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800069c8:	00000493          	li	s1,0
    800069cc:	f91ff06f          	j	8000695c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069d0:	14102ff3          	csrr	t6,sepc
    800069d4:	fb5ff06f          	j	80006988 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069d8:	00003517          	auipc	a0,0x3
    800069dc:	87050513          	addi	a0,a0,-1936 # 80009248 <CONSOLE_STATUS+0x238>
    800069e0:	fffff097          	auipc	ra,0xfffff
    800069e4:	2cc080e7          	jalr	716(ra) # 80005cac <_Z11printStringPKc>
    finishedB = true;
    800069e8:	00100793          	li	a5,1
    800069ec:	00005717          	auipc	a4,0x5
    800069f0:	40f70823          	sb	a5,1040(a4) # 8000bdfc <_ZL9finishedB>
    thread_dispatch();
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	9d8080e7          	jalr	-1576(ra) # 800013cc <_Z15thread_dispatchv>
}
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	01013403          	ld	s0,16(sp)
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	00013903          	ld	s2,0(sp)
    80006a0c:	02010113          	addi	sp,sp,32
    80006a10:	00008067          	ret

0000000080006a14 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006a14:	fe010113          	addi	sp,sp,-32
    80006a18:	00113c23          	sd	ra,24(sp)
    80006a1c:	00813823          	sd	s0,16(sp)
    80006a20:	00913423          	sd	s1,8(sp)
    80006a24:	01213023          	sd	s2,0(sp)
    80006a28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006a2c:	00000913          	li	s2,0
    80006a30:	0380006f          	j	80006a68 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a34:	ffffb097          	auipc	ra,0xffffb
    80006a38:	998080e7          	jalr	-1640(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a3c:	00148493          	addi	s1,s1,1
    80006a40:	000027b7          	lui	a5,0x2
    80006a44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a48:	0097ee63          	bltu	a5,s1,80006a64 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a4c:	00000713          	li	a4,0
    80006a50:	000077b7          	lui	a5,0x7
    80006a54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a58:	fce7eee3          	bltu	a5,a4,80006a34 <_ZL11workerBodyAPv+0x20>
    80006a5c:	00170713          	addi	a4,a4,1
    80006a60:	ff1ff06f          	j	80006a50 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a64:	00190913          	addi	s2,s2,1
    80006a68:	00900793          	li	a5,9
    80006a6c:	0527e063          	bltu	a5,s2,80006aac <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a70:	00002517          	auipc	a0,0x2
    80006a74:	7b850513          	addi	a0,a0,1976 # 80009228 <CONSOLE_STATUS+0x218>
    80006a78:	fffff097          	auipc	ra,0xfffff
    80006a7c:	234080e7          	jalr	564(ra) # 80005cac <_Z11printStringPKc>
    80006a80:	00000613          	li	a2,0
    80006a84:	00a00593          	li	a1,10
    80006a88:	0009051b          	sext.w	a0,s2
    80006a8c:	fffff097          	auipc	ra,0xfffff
    80006a90:	3d0080e7          	jalr	976(ra) # 80005e5c <_Z8printIntiii>
    80006a94:	00003517          	auipc	a0,0x3
    80006a98:	9e450513          	addi	a0,a0,-1564 # 80009478 <CONSOLE_STATUS+0x468>
    80006a9c:	fffff097          	auipc	ra,0xfffff
    80006aa0:	210080e7          	jalr	528(ra) # 80005cac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006aa4:	00000493          	li	s1,0
    80006aa8:	f99ff06f          	j	80006a40 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006aac:	00002517          	auipc	a0,0x2
    80006ab0:	78450513          	addi	a0,a0,1924 # 80009230 <CONSOLE_STATUS+0x220>
    80006ab4:	fffff097          	auipc	ra,0xfffff
    80006ab8:	1f8080e7          	jalr	504(ra) # 80005cac <_Z11printStringPKc>
    finishedA = true;
    80006abc:	00100793          	li	a5,1
    80006ac0:	00005717          	auipc	a4,0x5
    80006ac4:	32f70ea3          	sb	a5,829(a4) # 8000bdfd <_ZL9finishedA>
}
    80006ac8:	01813083          	ld	ra,24(sp)
    80006acc:	01013403          	ld	s0,16(sp)
    80006ad0:	00813483          	ld	s1,8(sp)
    80006ad4:	00013903          	ld	s2,0(sp)
    80006ad8:	02010113          	addi	sp,sp,32
    80006adc:	00008067          	ret

0000000080006ae0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006ae0:	fd010113          	addi	sp,sp,-48
    80006ae4:	02113423          	sd	ra,40(sp)
    80006ae8:	02813023          	sd	s0,32(sp)
    80006aec:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006af0:	00000613          	li	a2,0
    80006af4:	00000597          	auipc	a1,0x0
    80006af8:	f2058593          	addi	a1,a1,-224 # 80006a14 <_ZL11workerBodyAPv>
    80006afc:	fd040513          	addi	a0,s0,-48
    80006b00:	ffffa097          	auipc	ra,0xffffa
    80006b04:	7f8080e7          	jalr	2040(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006b08:	00002517          	auipc	a0,0x2
    80006b0c:	7b850513          	addi	a0,a0,1976 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80006b10:	fffff097          	auipc	ra,0xfffff
    80006b14:	19c080e7          	jalr	412(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b18:	00000613          	li	a2,0
    80006b1c:	00000597          	auipc	a1,0x0
    80006b20:	e1458593          	addi	a1,a1,-492 # 80006930 <_ZL11workerBodyBPv>
    80006b24:	fd840513          	addi	a0,s0,-40
    80006b28:	ffffa097          	auipc	ra,0xffffa
    80006b2c:	7d0080e7          	jalr	2000(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006b30:	00002517          	auipc	a0,0x2
    80006b34:	7a850513          	addi	a0,a0,1960 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006b38:	fffff097          	auipc	ra,0xfffff
    80006b3c:	174080e7          	jalr	372(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b40:	00000613          	li	a2,0
    80006b44:	00000597          	auipc	a1,0x0
    80006b48:	c6c58593          	addi	a1,a1,-916 # 800067b0 <_ZL11workerBodyCPv>
    80006b4c:	fe040513          	addi	a0,s0,-32
    80006b50:	ffffa097          	auipc	ra,0xffffa
    80006b54:	7a8080e7          	jalr	1960(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006b58:	00002517          	auipc	a0,0x2
    80006b5c:	79850513          	addi	a0,a0,1944 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80006b60:	fffff097          	auipc	ra,0xfffff
    80006b64:	14c080e7          	jalr	332(ra) # 80005cac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b68:	00000613          	li	a2,0
    80006b6c:	00000597          	auipc	a1,0x0
    80006b70:	afc58593          	addi	a1,a1,-1284 # 80006668 <_ZL11workerBodyDPv>
    80006b74:	fe840513          	addi	a0,s0,-24
    80006b78:	ffffa097          	auipc	ra,0xffffa
    80006b7c:	780080e7          	jalr	1920(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006b80:	00002517          	auipc	a0,0x2
    80006b84:	78850513          	addi	a0,a0,1928 # 80009308 <CONSOLE_STATUS+0x2f8>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	124080e7          	jalr	292(ra) # 80005cac <_Z11printStringPKc>
    80006b90:	00c0006f          	j	80006b9c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b94:	ffffb097          	auipc	ra,0xffffb
    80006b98:	838080e7          	jalr	-1992(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b9c:	00005797          	auipc	a5,0x5
    80006ba0:	2617c783          	lbu	a5,609(a5) # 8000bdfd <_ZL9finishedA>
    80006ba4:	fe0788e3          	beqz	a5,80006b94 <_Z16System_Mode_testv+0xb4>
    80006ba8:	00005797          	auipc	a5,0x5
    80006bac:	2547c783          	lbu	a5,596(a5) # 8000bdfc <_ZL9finishedB>
    80006bb0:	fe0782e3          	beqz	a5,80006b94 <_Z16System_Mode_testv+0xb4>
    80006bb4:	00005797          	auipc	a5,0x5
    80006bb8:	2477c783          	lbu	a5,583(a5) # 8000bdfb <_ZL9finishedC>
    80006bbc:	fc078ce3          	beqz	a5,80006b94 <_Z16System_Mode_testv+0xb4>
    80006bc0:	00005797          	auipc	a5,0x5
    80006bc4:	23a7c783          	lbu	a5,570(a5) # 8000bdfa <_ZL9finishedD>
    80006bc8:	fc0786e3          	beqz	a5,80006b94 <_Z16System_Mode_testv+0xb4>
    }

}
    80006bcc:	02813083          	ld	ra,40(sp)
    80006bd0:	02013403          	ld	s0,32(sp)
    80006bd4:	03010113          	addi	sp,sp,48
    80006bd8:	00008067          	ret

0000000080006bdc <start>:
    80006bdc:	ff010113          	addi	sp,sp,-16
    80006be0:	00813423          	sd	s0,8(sp)
    80006be4:	01010413          	addi	s0,sp,16
    80006be8:	300027f3          	csrr	a5,mstatus
    80006bec:	ffffe737          	lui	a4,0xffffe
    80006bf0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff179f>
    80006bf4:	00e7f7b3          	and	a5,a5,a4
    80006bf8:	00001737          	lui	a4,0x1
    80006bfc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c00:	00e7e7b3          	or	a5,a5,a4
    80006c04:	30079073          	csrw	mstatus,a5
    80006c08:	00000797          	auipc	a5,0x0
    80006c0c:	16078793          	addi	a5,a5,352 # 80006d68 <system_main>
    80006c10:	34179073          	csrw	mepc,a5
    80006c14:	00000793          	li	a5,0
    80006c18:	18079073          	csrw	satp,a5
    80006c1c:	000107b7          	lui	a5,0x10
    80006c20:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c24:	30279073          	csrw	medeleg,a5
    80006c28:	30379073          	csrw	mideleg,a5
    80006c2c:	104027f3          	csrr	a5,sie
    80006c30:	2227e793          	ori	a5,a5,546
    80006c34:	10479073          	csrw	sie,a5
    80006c38:	fff00793          	li	a5,-1
    80006c3c:	00a7d793          	srli	a5,a5,0xa
    80006c40:	3b079073          	csrw	pmpaddr0,a5
    80006c44:	00f00793          	li	a5,15
    80006c48:	3a079073          	csrw	pmpcfg0,a5
    80006c4c:	f14027f3          	csrr	a5,mhartid
    80006c50:	0200c737          	lui	a4,0x200c
    80006c54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c58:	0007869b          	sext.w	a3,a5
    80006c5c:	00269713          	slli	a4,a3,0x2
    80006c60:	000f4637          	lui	a2,0xf4
    80006c64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c68:	00d70733          	add	a4,a4,a3
    80006c6c:	0037979b          	slliw	a5,a5,0x3
    80006c70:	020046b7          	lui	a3,0x2004
    80006c74:	00d787b3          	add	a5,a5,a3
    80006c78:	00c585b3          	add	a1,a1,a2
    80006c7c:	00371693          	slli	a3,a4,0x3
    80006c80:	00005717          	auipc	a4,0x5
    80006c84:	18070713          	addi	a4,a4,384 # 8000be00 <timer_scratch>
    80006c88:	00b7b023          	sd	a1,0(a5)
    80006c8c:	00d70733          	add	a4,a4,a3
    80006c90:	00f73c23          	sd	a5,24(a4)
    80006c94:	02c73023          	sd	a2,32(a4)
    80006c98:	34071073          	csrw	mscratch,a4
    80006c9c:	00000797          	auipc	a5,0x0
    80006ca0:	6e478793          	addi	a5,a5,1764 # 80007380 <timervec>
    80006ca4:	30579073          	csrw	mtvec,a5
    80006ca8:	300027f3          	csrr	a5,mstatus
    80006cac:	0087e793          	ori	a5,a5,8
    80006cb0:	30079073          	csrw	mstatus,a5
    80006cb4:	304027f3          	csrr	a5,mie
    80006cb8:	0807e793          	ori	a5,a5,128
    80006cbc:	30479073          	csrw	mie,a5
    80006cc0:	f14027f3          	csrr	a5,mhartid
    80006cc4:	0007879b          	sext.w	a5,a5
    80006cc8:	00078213          	mv	tp,a5
    80006ccc:	30200073          	mret
    80006cd0:	00813403          	ld	s0,8(sp)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <timerinit>:
    80006cdc:	ff010113          	addi	sp,sp,-16
    80006ce0:	00813423          	sd	s0,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	f14027f3          	csrr	a5,mhartid
    80006cec:	0200c737          	lui	a4,0x200c
    80006cf0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cf4:	0007869b          	sext.w	a3,a5
    80006cf8:	00269713          	slli	a4,a3,0x2
    80006cfc:	000f4637          	lui	a2,0xf4
    80006d00:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d04:	00d70733          	add	a4,a4,a3
    80006d08:	0037979b          	slliw	a5,a5,0x3
    80006d0c:	020046b7          	lui	a3,0x2004
    80006d10:	00d787b3          	add	a5,a5,a3
    80006d14:	00c585b3          	add	a1,a1,a2
    80006d18:	00371693          	slli	a3,a4,0x3
    80006d1c:	00005717          	auipc	a4,0x5
    80006d20:	0e470713          	addi	a4,a4,228 # 8000be00 <timer_scratch>
    80006d24:	00b7b023          	sd	a1,0(a5)
    80006d28:	00d70733          	add	a4,a4,a3
    80006d2c:	00f73c23          	sd	a5,24(a4)
    80006d30:	02c73023          	sd	a2,32(a4)
    80006d34:	34071073          	csrw	mscratch,a4
    80006d38:	00000797          	auipc	a5,0x0
    80006d3c:	64878793          	addi	a5,a5,1608 # 80007380 <timervec>
    80006d40:	30579073          	csrw	mtvec,a5
    80006d44:	300027f3          	csrr	a5,mstatus
    80006d48:	0087e793          	ori	a5,a5,8
    80006d4c:	30079073          	csrw	mstatus,a5
    80006d50:	304027f3          	csrr	a5,mie
    80006d54:	0807e793          	ori	a5,a5,128
    80006d58:	30479073          	csrw	mie,a5
    80006d5c:	00813403          	ld	s0,8(sp)
    80006d60:	01010113          	addi	sp,sp,16
    80006d64:	00008067          	ret

0000000080006d68 <system_main>:
    80006d68:	fe010113          	addi	sp,sp,-32
    80006d6c:	00813823          	sd	s0,16(sp)
    80006d70:	00913423          	sd	s1,8(sp)
    80006d74:	00113c23          	sd	ra,24(sp)
    80006d78:	02010413          	addi	s0,sp,32
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	0c4080e7          	jalr	196(ra) # 80006e40 <cpuid>
    80006d84:	00005497          	auipc	s1,0x5
    80006d88:	f9c48493          	addi	s1,s1,-100 # 8000bd20 <started>
    80006d8c:	02050263          	beqz	a0,80006db0 <system_main+0x48>
    80006d90:	0004a783          	lw	a5,0(s1)
    80006d94:	0007879b          	sext.w	a5,a5
    80006d98:	fe078ce3          	beqz	a5,80006d90 <system_main+0x28>
    80006d9c:	0ff0000f          	fence
    80006da0:	00003517          	auipc	a0,0x3
    80006da4:	85050513          	addi	a0,a0,-1968 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006da8:	00001097          	auipc	ra,0x1
    80006dac:	a74080e7          	jalr	-1420(ra) # 8000781c <panic>
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	9c8080e7          	jalr	-1592(ra) # 80007778 <consoleinit>
    80006db8:	00001097          	auipc	ra,0x1
    80006dbc:	154080e7          	jalr	340(ra) # 80007f0c <printfinit>
    80006dc0:	00002517          	auipc	a0,0x2
    80006dc4:	6b850513          	addi	a0,a0,1720 # 80009478 <CONSOLE_STATUS+0x468>
    80006dc8:	00001097          	auipc	ra,0x1
    80006dcc:	ab0080e7          	jalr	-1360(ra) # 80007878 <__printf>
    80006dd0:	00002517          	auipc	a0,0x2
    80006dd4:	7f050513          	addi	a0,a0,2032 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006dd8:	00001097          	auipc	ra,0x1
    80006ddc:	aa0080e7          	jalr	-1376(ra) # 80007878 <__printf>
    80006de0:	00002517          	auipc	a0,0x2
    80006de4:	69850513          	addi	a0,a0,1688 # 80009478 <CONSOLE_STATUS+0x468>
    80006de8:	00001097          	auipc	ra,0x1
    80006dec:	a90080e7          	jalr	-1392(ra) # 80007878 <__printf>
    80006df0:	00001097          	auipc	ra,0x1
    80006df4:	4a8080e7          	jalr	1192(ra) # 80008298 <kinit>
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	148080e7          	jalr	328(ra) # 80006f40 <trapinit>
    80006e00:	00000097          	auipc	ra,0x0
    80006e04:	16c080e7          	jalr	364(ra) # 80006f6c <trapinithart>
    80006e08:	00000097          	auipc	ra,0x0
    80006e0c:	5b8080e7          	jalr	1464(ra) # 800073c0 <plicinit>
    80006e10:	00000097          	auipc	ra,0x0
    80006e14:	5d8080e7          	jalr	1496(ra) # 800073e8 <plicinithart>
    80006e18:	00000097          	auipc	ra,0x0
    80006e1c:	078080e7          	jalr	120(ra) # 80006e90 <userinit>
    80006e20:	0ff0000f          	fence
    80006e24:	00100793          	li	a5,1
    80006e28:	00002517          	auipc	a0,0x2
    80006e2c:	7b050513          	addi	a0,a0,1968 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e30:	00f4a023          	sw	a5,0(s1)
    80006e34:	00001097          	auipc	ra,0x1
    80006e38:	a44080e7          	jalr	-1468(ra) # 80007878 <__printf>
    80006e3c:	0000006f          	j	80006e3c <system_main+0xd4>

0000000080006e40 <cpuid>:
    80006e40:	ff010113          	addi	sp,sp,-16
    80006e44:	00813423          	sd	s0,8(sp)
    80006e48:	01010413          	addi	s0,sp,16
    80006e4c:	00020513          	mv	a0,tp
    80006e50:	00813403          	ld	s0,8(sp)
    80006e54:	0005051b          	sext.w	a0,a0
    80006e58:	01010113          	addi	sp,sp,16
    80006e5c:	00008067          	ret

0000000080006e60 <mycpu>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00020793          	mv	a5,tp
    80006e70:	00813403          	ld	s0,8(sp)
    80006e74:	0007879b          	sext.w	a5,a5
    80006e78:	00779793          	slli	a5,a5,0x7
    80006e7c:	00006517          	auipc	a0,0x6
    80006e80:	fb450513          	addi	a0,a0,-76 # 8000ce30 <cpus>
    80006e84:	00f50533          	add	a0,a0,a5
    80006e88:	01010113          	addi	sp,sp,16
    80006e8c:	00008067          	ret

0000000080006e90 <userinit>:
    80006e90:	ff010113          	addi	sp,sp,-16
    80006e94:	00813423          	sd	s0,8(sp)
    80006e98:	01010413          	addi	s0,sp,16
    80006e9c:	00813403          	ld	s0,8(sp)
    80006ea0:	01010113          	addi	sp,sp,16
    80006ea4:	ffffb317          	auipc	t1,0xffffb
    80006ea8:	dc830067          	jr	-568(t1) # 80001c6c <main>

0000000080006eac <either_copyout>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813023          	sd	s0,0(sp)
    80006eb4:	00113423          	sd	ra,8(sp)
    80006eb8:	01010413          	addi	s0,sp,16
    80006ebc:	02051663          	bnez	a0,80006ee8 <either_copyout+0x3c>
    80006ec0:	00058513          	mv	a0,a1
    80006ec4:	00060593          	mv	a1,a2
    80006ec8:	0006861b          	sext.w	a2,a3
    80006ecc:	00002097          	auipc	ra,0x2
    80006ed0:	c58080e7          	jalr	-936(ra) # 80008b24 <__memmove>
    80006ed4:	00813083          	ld	ra,8(sp)
    80006ed8:	00013403          	ld	s0,0(sp)
    80006edc:	00000513          	li	a0,0
    80006ee0:	01010113          	addi	sp,sp,16
    80006ee4:	00008067          	ret
    80006ee8:	00002517          	auipc	a0,0x2
    80006eec:	73050513          	addi	a0,a0,1840 # 80009618 <CONSOLE_STATUS+0x608>
    80006ef0:	00001097          	auipc	ra,0x1
    80006ef4:	92c080e7          	jalr	-1748(ra) # 8000781c <panic>

0000000080006ef8 <either_copyin>:
    80006ef8:	ff010113          	addi	sp,sp,-16
    80006efc:	00813023          	sd	s0,0(sp)
    80006f00:	00113423          	sd	ra,8(sp)
    80006f04:	01010413          	addi	s0,sp,16
    80006f08:	02059463          	bnez	a1,80006f30 <either_copyin+0x38>
    80006f0c:	00060593          	mv	a1,a2
    80006f10:	0006861b          	sext.w	a2,a3
    80006f14:	00002097          	auipc	ra,0x2
    80006f18:	c10080e7          	jalr	-1008(ra) # 80008b24 <__memmove>
    80006f1c:	00813083          	ld	ra,8(sp)
    80006f20:	00013403          	ld	s0,0(sp)
    80006f24:	00000513          	li	a0,0
    80006f28:	01010113          	addi	sp,sp,16
    80006f2c:	00008067          	ret
    80006f30:	00002517          	auipc	a0,0x2
    80006f34:	71050513          	addi	a0,a0,1808 # 80009640 <CONSOLE_STATUS+0x630>
    80006f38:	00001097          	auipc	ra,0x1
    80006f3c:	8e4080e7          	jalr	-1820(ra) # 8000781c <panic>

0000000080006f40 <trapinit>:
    80006f40:	ff010113          	addi	sp,sp,-16
    80006f44:	00813423          	sd	s0,8(sp)
    80006f48:	01010413          	addi	s0,sp,16
    80006f4c:	00813403          	ld	s0,8(sp)
    80006f50:	00002597          	auipc	a1,0x2
    80006f54:	71858593          	addi	a1,a1,1816 # 80009668 <CONSOLE_STATUS+0x658>
    80006f58:	00006517          	auipc	a0,0x6
    80006f5c:	f5850513          	addi	a0,a0,-168 # 8000ceb0 <tickslock>
    80006f60:	01010113          	addi	sp,sp,16
    80006f64:	00001317          	auipc	t1,0x1
    80006f68:	5c430067          	jr	1476(t1) # 80008528 <initlock>

0000000080006f6c <trapinithart>:
    80006f6c:	ff010113          	addi	sp,sp,-16
    80006f70:	00813423          	sd	s0,8(sp)
    80006f74:	01010413          	addi	s0,sp,16
    80006f78:	00000797          	auipc	a5,0x0
    80006f7c:	2f878793          	addi	a5,a5,760 # 80007270 <kernelvec>
    80006f80:	10579073          	csrw	stvec,a5
    80006f84:	00813403          	ld	s0,8(sp)
    80006f88:	01010113          	addi	sp,sp,16
    80006f8c:	00008067          	ret

0000000080006f90 <usertrap>:
    80006f90:	ff010113          	addi	sp,sp,-16
    80006f94:	00813423          	sd	s0,8(sp)
    80006f98:	01010413          	addi	s0,sp,16
    80006f9c:	00813403          	ld	s0,8(sp)
    80006fa0:	01010113          	addi	sp,sp,16
    80006fa4:	00008067          	ret

0000000080006fa8 <usertrapret>:
    80006fa8:	ff010113          	addi	sp,sp,-16
    80006fac:	00813423          	sd	s0,8(sp)
    80006fb0:	01010413          	addi	s0,sp,16
    80006fb4:	00813403          	ld	s0,8(sp)
    80006fb8:	01010113          	addi	sp,sp,16
    80006fbc:	00008067          	ret

0000000080006fc0 <kerneltrap>:
    80006fc0:	fe010113          	addi	sp,sp,-32
    80006fc4:	00813823          	sd	s0,16(sp)
    80006fc8:	00113c23          	sd	ra,24(sp)
    80006fcc:	00913423          	sd	s1,8(sp)
    80006fd0:	02010413          	addi	s0,sp,32
    80006fd4:	142025f3          	csrr	a1,scause
    80006fd8:	100027f3          	csrr	a5,sstatus
    80006fdc:	0027f793          	andi	a5,a5,2
    80006fe0:	10079c63          	bnez	a5,800070f8 <kerneltrap+0x138>
    80006fe4:	142027f3          	csrr	a5,scause
    80006fe8:	0207ce63          	bltz	a5,80007024 <kerneltrap+0x64>
    80006fec:	00002517          	auipc	a0,0x2
    80006ff0:	6c450513          	addi	a0,a0,1732 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006ff4:	00001097          	auipc	ra,0x1
    80006ff8:	884080e7          	jalr	-1916(ra) # 80007878 <__printf>
    80006ffc:	141025f3          	csrr	a1,sepc
    80007000:	14302673          	csrr	a2,stval
    80007004:	00002517          	auipc	a0,0x2
    80007008:	6bc50513          	addi	a0,a0,1724 # 800096c0 <CONSOLE_STATUS+0x6b0>
    8000700c:	00001097          	auipc	ra,0x1
    80007010:	86c080e7          	jalr	-1940(ra) # 80007878 <__printf>
    80007014:	00002517          	auipc	a0,0x2
    80007018:	6c450513          	addi	a0,a0,1732 # 800096d8 <CONSOLE_STATUS+0x6c8>
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	800080e7          	jalr	-2048(ra) # 8000781c <panic>
    80007024:	0ff7f713          	andi	a4,a5,255
    80007028:	00900693          	li	a3,9
    8000702c:	04d70063          	beq	a4,a3,8000706c <kerneltrap+0xac>
    80007030:	fff00713          	li	a4,-1
    80007034:	03f71713          	slli	a4,a4,0x3f
    80007038:	00170713          	addi	a4,a4,1
    8000703c:	fae798e3          	bne	a5,a4,80006fec <kerneltrap+0x2c>
    80007040:	00000097          	auipc	ra,0x0
    80007044:	e00080e7          	jalr	-512(ra) # 80006e40 <cpuid>
    80007048:	06050663          	beqz	a0,800070b4 <kerneltrap+0xf4>
    8000704c:	144027f3          	csrr	a5,sip
    80007050:	ffd7f793          	andi	a5,a5,-3
    80007054:	14479073          	csrw	sip,a5
    80007058:	01813083          	ld	ra,24(sp)
    8000705c:	01013403          	ld	s0,16(sp)
    80007060:	00813483          	ld	s1,8(sp)
    80007064:	02010113          	addi	sp,sp,32
    80007068:	00008067          	ret
    8000706c:	00000097          	auipc	ra,0x0
    80007070:	3c8080e7          	jalr	968(ra) # 80007434 <plic_claim>
    80007074:	00a00793          	li	a5,10
    80007078:	00050493          	mv	s1,a0
    8000707c:	06f50863          	beq	a0,a5,800070ec <kerneltrap+0x12c>
    80007080:	fc050ce3          	beqz	a0,80007058 <kerneltrap+0x98>
    80007084:	00050593          	mv	a1,a0
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	60850513          	addi	a0,a0,1544 # 80009690 <CONSOLE_STATUS+0x680>
    80007090:	00000097          	auipc	ra,0x0
    80007094:	7e8080e7          	jalr	2024(ra) # 80007878 <__printf>
    80007098:	01013403          	ld	s0,16(sp)
    8000709c:	01813083          	ld	ra,24(sp)
    800070a0:	00048513          	mv	a0,s1
    800070a4:	00813483          	ld	s1,8(sp)
    800070a8:	02010113          	addi	sp,sp,32
    800070ac:	00000317          	auipc	t1,0x0
    800070b0:	3c030067          	jr	960(t1) # 8000746c <plic_complete>
    800070b4:	00006517          	auipc	a0,0x6
    800070b8:	dfc50513          	addi	a0,a0,-516 # 8000ceb0 <tickslock>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	490080e7          	jalr	1168(ra) # 8000854c <acquire>
    800070c4:	00005717          	auipc	a4,0x5
    800070c8:	c6070713          	addi	a4,a4,-928 # 8000bd24 <ticks>
    800070cc:	00072783          	lw	a5,0(a4)
    800070d0:	00006517          	auipc	a0,0x6
    800070d4:	de050513          	addi	a0,a0,-544 # 8000ceb0 <tickslock>
    800070d8:	0017879b          	addiw	a5,a5,1
    800070dc:	00f72023          	sw	a5,0(a4)
    800070e0:	00001097          	auipc	ra,0x1
    800070e4:	538080e7          	jalr	1336(ra) # 80008618 <release>
    800070e8:	f65ff06f          	j	8000704c <kerneltrap+0x8c>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	094080e7          	jalr	148(ra) # 80008180 <uartintr>
    800070f4:	fa5ff06f          	j	80007098 <kerneltrap+0xd8>
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	57850513          	addi	a0,a0,1400 # 80009670 <CONSOLE_STATUS+0x660>
    80007100:	00000097          	auipc	ra,0x0
    80007104:	71c080e7          	jalr	1820(ra) # 8000781c <panic>

0000000080007108 <clockintr>:
    80007108:	fe010113          	addi	sp,sp,-32
    8000710c:	00813823          	sd	s0,16(sp)
    80007110:	00913423          	sd	s1,8(sp)
    80007114:	00113c23          	sd	ra,24(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00006497          	auipc	s1,0x6
    80007120:	d9448493          	addi	s1,s1,-620 # 8000ceb0 <tickslock>
    80007124:	00048513          	mv	a0,s1
    80007128:	00001097          	auipc	ra,0x1
    8000712c:	424080e7          	jalr	1060(ra) # 8000854c <acquire>
    80007130:	00005717          	auipc	a4,0x5
    80007134:	bf470713          	addi	a4,a4,-1036 # 8000bd24 <ticks>
    80007138:	00072783          	lw	a5,0(a4)
    8000713c:	01013403          	ld	s0,16(sp)
    80007140:	01813083          	ld	ra,24(sp)
    80007144:	00048513          	mv	a0,s1
    80007148:	0017879b          	addiw	a5,a5,1
    8000714c:	00813483          	ld	s1,8(sp)
    80007150:	00f72023          	sw	a5,0(a4)
    80007154:	02010113          	addi	sp,sp,32
    80007158:	00001317          	auipc	t1,0x1
    8000715c:	4c030067          	jr	1216(t1) # 80008618 <release>

0000000080007160 <devintr>:
    80007160:	142027f3          	csrr	a5,scause
    80007164:	00000513          	li	a0,0
    80007168:	0007c463          	bltz	a5,80007170 <devintr+0x10>
    8000716c:	00008067          	ret
    80007170:	fe010113          	addi	sp,sp,-32
    80007174:	00813823          	sd	s0,16(sp)
    80007178:	00113c23          	sd	ra,24(sp)
    8000717c:	00913423          	sd	s1,8(sp)
    80007180:	02010413          	addi	s0,sp,32
    80007184:	0ff7f713          	andi	a4,a5,255
    80007188:	00900693          	li	a3,9
    8000718c:	04d70c63          	beq	a4,a3,800071e4 <devintr+0x84>
    80007190:	fff00713          	li	a4,-1
    80007194:	03f71713          	slli	a4,a4,0x3f
    80007198:	00170713          	addi	a4,a4,1
    8000719c:	00e78c63          	beq	a5,a4,800071b4 <devintr+0x54>
    800071a0:	01813083          	ld	ra,24(sp)
    800071a4:	01013403          	ld	s0,16(sp)
    800071a8:	00813483          	ld	s1,8(sp)
    800071ac:	02010113          	addi	sp,sp,32
    800071b0:	00008067          	ret
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	c8c080e7          	jalr	-884(ra) # 80006e40 <cpuid>
    800071bc:	06050663          	beqz	a0,80007228 <devintr+0xc8>
    800071c0:	144027f3          	csrr	a5,sip
    800071c4:	ffd7f793          	andi	a5,a5,-3
    800071c8:	14479073          	csrw	sip,a5
    800071cc:	01813083          	ld	ra,24(sp)
    800071d0:	01013403          	ld	s0,16(sp)
    800071d4:	00813483          	ld	s1,8(sp)
    800071d8:	00200513          	li	a0,2
    800071dc:	02010113          	addi	sp,sp,32
    800071e0:	00008067          	ret
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	250080e7          	jalr	592(ra) # 80007434 <plic_claim>
    800071ec:	00a00793          	li	a5,10
    800071f0:	00050493          	mv	s1,a0
    800071f4:	06f50663          	beq	a0,a5,80007260 <devintr+0x100>
    800071f8:	00100513          	li	a0,1
    800071fc:	fa0482e3          	beqz	s1,800071a0 <devintr+0x40>
    80007200:	00048593          	mv	a1,s1
    80007204:	00002517          	auipc	a0,0x2
    80007208:	48c50513          	addi	a0,a0,1164 # 80009690 <CONSOLE_STATUS+0x680>
    8000720c:	00000097          	auipc	ra,0x0
    80007210:	66c080e7          	jalr	1644(ra) # 80007878 <__printf>
    80007214:	00048513          	mv	a0,s1
    80007218:	00000097          	auipc	ra,0x0
    8000721c:	254080e7          	jalr	596(ra) # 8000746c <plic_complete>
    80007220:	00100513          	li	a0,1
    80007224:	f7dff06f          	j	800071a0 <devintr+0x40>
    80007228:	00006517          	auipc	a0,0x6
    8000722c:	c8850513          	addi	a0,a0,-888 # 8000ceb0 <tickslock>
    80007230:	00001097          	auipc	ra,0x1
    80007234:	31c080e7          	jalr	796(ra) # 8000854c <acquire>
    80007238:	00005717          	auipc	a4,0x5
    8000723c:	aec70713          	addi	a4,a4,-1300 # 8000bd24 <ticks>
    80007240:	00072783          	lw	a5,0(a4)
    80007244:	00006517          	auipc	a0,0x6
    80007248:	c6c50513          	addi	a0,a0,-916 # 8000ceb0 <tickslock>
    8000724c:	0017879b          	addiw	a5,a5,1
    80007250:	00f72023          	sw	a5,0(a4)
    80007254:	00001097          	auipc	ra,0x1
    80007258:	3c4080e7          	jalr	964(ra) # 80008618 <release>
    8000725c:	f65ff06f          	j	800071c0 <devintr+0x60>
    80007260:	00001097          	auipc	ra,0x1
    80007264:	f20080e7          	jalr	-224(ra) # 80008180 <uartintr>
    80007268:	fadff06f          	j	80007214 <devintr+0xb4>
    8000726c:	0000                	unimp
	...

0000000080007270 <kernelvec>:
    80007270:	f0010113          	addi	sp,sp,-256
    80007274:	00113023          	sd	ra,0(sp)
    80007278:	00213423          	sd	sp,8(sp)
    8000727c:	00313823          	sd	gp,16(sp)
    80007280:	00413c23          	sd	tp,24(sp)
    80007284:	02513023          	sd	t0,32(sp)
    80007288:	02613423          	sd	t1,40(sp)
    8000728c:	02713823          	sd	t2,48(sp)
    80007290:	02813c23          	sd	s0,56(sp)
    80007294:	04913023          	sd	s1,64(sp)
    80007298:	04a13423          	sd	a0,72(sp)
    8000729c:	04b13823          	sd	a1,80(sp)
    800072a0:	04c13c23          	sd	a2,88(sp)
    800072a4:	06d13023          	sd	a3,96(sp)
    800072a8:	06e13423          	sd	a4,104(sp)
    800072ac:	06f13823          	sd	a5,112(sp)
    800072b0:	07013c23          	sd	a6,120(sp)
    800072b4:	09113023          	sd	a7,128(sp)
    800072b8:	09213423          	sd	s2,136(sp)
    800072bc:	09313823          	sd	s3,144(sp)
    800072c0:	09413c23          	sd	s4,152(sp)
    800072c4:	0b513023          	sd	s5,160(sp)
    800072c8:	0b613423          	sd	s6,168(sp)
    800072cc:	0b713823          	sd	s7,176(sp)
    800072d0:	0b813c23          	sd	s8,184(sp)
    800072d4:	0d913023          	sd	s9,192(sp)
    800072d8:	0da13423          	sd	s10,200(sp)
    800072dc:	0db13823          	sd	s11,208(sp)
    800072e0:	0dc13c23          	sd	t3,216(sp)
    800072e4:	0fd13023          	sd	t4,224(sp)
    800072e8:	0fe13423          	sd	t5,232(sp)
    800072ec:	0ff13823          	sd	t6,240(sp)
    800072f0:	cd1ff0ef          	jal	ra,80006fc0 <kerneltrap>
    800072f4:	00013083          	ld	ra,0(sp)
    800072f8:	00813103          	ld	sp,8(sp)
    800072fc:	01013183          	ld	gp,16(sp)
    80007300:	02013283          	ld	t0,32(sp)
    80007304:	02813303          	ld	t1,40(sp)
    80007308:	03013383          	ld	t2,48(sp)
    8000730c:	03813403          	ld	s0,56(sp)
    80007310:	04013483          	ld	s1,64(sp)
    80007314:	04813503          	ld	a0,72(sp)
    80007318:	05013583          	ld	a1,80(sp)
    8000731c:	05813603          	ld	a2,88(sp)
    80007320:	06013683          	ld	a3,96(sp)
    80007324:	06813703          	ld	a4,104(sp)
    80007328:	07013783          	ld	a5,112(sp)
    8000732c:	07813803          	ld	a6,120(sp)
    80007330:	08013883          	ld	a7,128(sp)
    80007334:	08813903          	ld	s2,136(sp)
    80007338:	09013983          	ld	s3,144(sp)
    8000733c:	09813a03          	ld	s4,152(sp)
    80007340:	0a013a83          	ld	s5,160(sp)
    80007344:	0a813b03          	ld	s6,168(sp)
    80007348:	0b013b83          	ld	s7,176(sp)
    8000734c:	0b813c03          	ld	s8,184(sp)
    80007350:	0c013c83          	ld	s9,192(sp)
    80007354:	0c813d03          	ld	s10,200(sp)
    80007358:	0d013d83          	ld	s11,208(sp)
    8000735c:	0d813e03          	ld	t3,216(sp)
    80007360:	0e013e83          	ld	t4,224(sp)
    80007364:	0e813f03          	ld	t5,232(sp)
    80007368:	0f013f83          	ld	t6,240(sp)
    8000736c:	10010113          	addi	sp,sp,256
    80007370:	10200073          	sret
    80007374:	00000013          	nop
    80007378:	00000013          	nop
    8000737c:	00000013          	nop

0000000080007380 <timervec>:
    80007380:	34051573          	csrrw	a0,mscratch,a0
    80007384:	00b53023          	sd	a1,0(a0)
    80007388:	00c53423          	sd	a2,8(a0)
    8000738c:	00d53823          	sd	a3,16(a0)
    80007390:	01853583          	ld	a1,24(a0)
    80007394:	02053603          	ld	a2,32(a0)
    80007398:	0005b683          	ld	a3,0(a1)
    8000739c:	00c686b3          	add	a3,a3,a2
    800073a0:	00d5b023          	sd	a3,0(a1)
    800073a4:	00200593          	li	a1,2
    800073a8:	14459073          	csrw	sip,a1
    800073ac:	01053683          	ld	a3,16(a0)
    800073b0:	00853603          	ld	a2,8(a0)
    800073b4:	00053583          	ld	a1,0(a0)
    800073b8:	34051573          	csrrw	a0,mscratch,a0
    800073bc:	30200073          	mret

00000000800073c0 <plicinit>:
    800073c0:	ff010113          	addi	sp,sp,-16
    800073c4:	00813423          	sd	s0,8(sp)
    800073c8:	01010413          	addi	s0,sp,16
    800073cc:	00813403          	ld	s0,8(sp)
    800073d0:	0c0007b7          	lui	a5,0xc000
    800073d4:	00100713          	li	a4,1
    800073d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800073dc:	00e7a223          	sw	a4,4(a5)
    800073e0:	01010113          	addi	sp,sp,16
    800073e4:	00008067          	ret

00000000800073e8 <plicinithart>:
    800073e8:	ff010113          	addi	sp,sp,-16
    800073ec:	00813023          	sd	s0,0(sp)
    800073f0:	00113423          	sd	ra,8(sp)
    800073f4:	01010413          	addi	s0,sp,16
    800073f8:	00000097          	auipc	ra,0x0
    800073fc:	a48080e7          	jalr	-1464(ra) # 80006e40 <cpuid>
    80007400:	0085171b          	slliw	a4,a0,0x8
    80007404:	0c0027b7          	lui	a5,0xc002
    80007408:	00e787b3          	add	a5,a5,a4
    8000740c:	40200713          	li	a4,1026
    80007410:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007414:	00813083          	ld	ra,8(sp)
    80007418:	00013403          	ld	s0,0(sp)
    8000741c:	00d5151b          	slliw	a0,a0,0xd
    80007420:	0c2017b7          	lui	a5,0xc201
    80007424:	00a78533          	add	a0,a5,a0
    80007428:	00052023          	sw	zero,0(a0)
    8000742c:	01010113          	addi	sp,sp,16
    80007430:	00008067          	ret

0000000080007434 <plic_claim>:
    80007434:	ff010113          	addi	sp,sp,-16
    80007438:	00813023          	sd	s0,0(sp)
    8000743c:	00113423          	sd	ra,8(sp)
    80007440:	01010413          	addi	s0,sp,16
    80007444:	00000097          	auipc	ra,0x0
    80007448:	9fc080e7          	jalr	-1540(ra) # 80006e40 <cpuid>
    8000744c:	00813083          	ld	ra,8(sp)
    80007450:	00013403          	ld	s0,0(sp)
    80007454:	00d5151b          	slliw	a0,a0,0xd
    80007458:	0c2017b7          	lui	a5,0xc201
    8000745c:	00a78533          	add	a0,a5,a0
    80007460:	00452503          	lw	a0,4(a0)
    80007464:	01010113          	addi	sp,sp,16
    80007468:	00008067          	ret

000000008000746c <plic_complete>:
    8000746c:	fe010113          	addi	sp,sp,-32
    80007470:	00813823          	sd	s0,16(sp)
    80007474:	00913423          	sd	s1,8(sp)
    80007478:	00113c23          	sd	ra,24(sp)
    8000747c:	02010413          	addi	s0,sp,32
    80007480:	00050493          	mv	s1,a0
    80007484:	00000097          	auipc	ra,0x0
    80007488:	9bc080e7          	jalr	-1604(ra) # 80006e40 <cpuid>
    8000748c:	01813083          	ld	ra,24(sp)
    80007490:	01013403          	ld	s0,16(sp)
    80007494:	00d5179b          	slliw	a5,a0,0xd
    80007498:	0c201737          	lui	a4,0xc201
    8000749c:	00f707b3          	add	a5,a4,a5
    800074a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	02010113          	addi	sp,sp,32
    800074ac:	00008067          	ret

00000000800074b0 <consolewrite>:
    800074b0:	fb010113          	addi	sp,sp,-80
    800074b4:	04813023          	sd	s0,64(sp)
    800074b8:	04113423          	sd	ra,72(sp)
    800074bc:	02913c23          	sd	s1,56(sp)
    800074c0:	03213823          	sd	s2,48(sp)
    800074c4:	03313423          	sd	s3,40(sp)
    800074c8:	03413023          	sd	s4,32(sp)
    800074cc:	01513c23          	sd	s5,24(sp)
    800074d0:	05010413          	addi	s0,sp,80
    800074d4:	06c05c63          	blez	a2,8000754c <consolewrite+0x9c>
    800074d8:	00060993          	mv	s3,a2
    800074dc:	00050a13          	mv	s4,a0
    800074e0:	00058493          	mv	s1,a1
    800074e4:	00000913          	li	s2,0
    800074e8:	fff00a93          	li	s5,-1
    800074ec:	01c0006f          	j	80007508 <consolewrite+0x58>
    800074f0:	fbf44503          	lbu	a0,-65(s0)
    800074f4:	0019091b          	addiw	s2,s2,1
    800074f8:	00148493          	addi	s1,s1,1
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	a9c080e7          	jalr	-1380(ra) # 80007f98 <uartputc>
    80007504:	03298063          	beq	s3,s2,80007524 <consolewrite+0x74>
    80007508:	00048613          	mv	a2,s1
    8000750c:	00100693          	li	a3,1
    80007510:	000a0593          	mv	a1,s4
    80007514:	fbf40513          	addi	a0,s0,-65
    80007518:	00000097          	auipc	ra,0x0
    8000751c:	9e0080e7          	jalr	-1568(ra) # 80006ef8 <either_copyin>
    80007520:	fd5518e3          	bne	a0,s5,800074f0 <consolewrite+0x40>
    80007524:	04813083          	ld	ra,72(sp)
    80007528:	04013403          	ld	s0,64(sp)
    8000752c:	03813483          	ld	s1,56(sp)
    80007530:	02813983          	ld	s3,40(sp)
    80007534:	02013a03          	ld	s4,32(sp)
    80007538:	01813a83          	ld	s5,24(sp)
    8000753c:	00090513          	mv	a0,s2
    80007540:	03013903          	ld	s2,48(sp)
    80007544:	05010113          	addi	sp,sp,80
    80007548:	00008067          	ret
    8000754c:	00000913          	li	s2,0
    80007550:	fd5ff06f          	j	80007524 <consolewrite+0x74>

0000000080007554 <consoleread>:
    80007554:	f9010113          	addi	sp,sp,-112
    80007558:	06813023          	sd	s0,96(sp)
    8000755c:	04913c23          	sd	s1,88(sp)
    80007560:	05213823          	sd	s2,80(sp)
    80007564:	05313423          	sd	s3,72(sp)
    80007568:	05413023          	sd	s4,64(sp)
    8000756c:	03513c23          	sd	s5,56(sp)
    80007570:	03613823          	sd	s6,48(sp)
    80007574:	03713423          	sd	s7,40(sp)
    80007578:	03813023          	sd	s8,32(sp)
    8000757c:	06113423          	sd	ra,104(sp)
    80007580:	01913c23          	sd	s9,24(sp)
    80007584:	07010413          	addi	s0,sp,112
    80007588:	00060b93          	mv	s7,a2
    8000758c:	00050913          	mv	s2,a0
    80007590:	00058c13          	mv	s8,a1
    80007594:	00060b1b          	sext.w	s6,a2
    80007598:	00006497          	auipc	s1,0x6
    8000759c:	94048493          	addi	s1,s1,-1728 # 8000ced8 <cons>
    800075a0:	00400993          	li	s3,4
    800075a4:	fff00a13          	li	s4,-1
    800075a8:	00a00a93          	li	s5,10
    800075ac:	05705e63          	blez	s7,80007608 <consoleread+0xb4>
    800075b0:	09c4a703          	lw	a4,156(s1)
    800075b4:	0984a783          	lw	a5,152(s1)
    800075b8:	0007071b          	sext.w	a4,a4
    800075bc:	08e78463          	beq	a5,a4,80007644 <consoleread+0xf0>
    800075c0:	07f7f713          	andi	a4,a5,127
    800075c4:	00e48733          	add	a4,s1,a4
    800075c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800075cc:	0017869b          	addiw	a3,a5,1
    800075d0:	08d4ac23          	sw	a3,152(s1)
    800075d4:	00070c9b          	sext.w	s9,a4
    800075d8:	0b370663          	beq	a4,s3,80007684 <consoleread+0x130>
    800075dc:	00100693          	li	a3,1
    800075e0:	f9f40613          	addi	a2,s0,-97
    800075e4:	000c0593          	mv	a1,s8
    800075e8:	00090513          	mv	a0,s2
    800075ec:	f8e40fa3          	sb	a4,-97(s0)
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	8bc080e7          	jalr	-1860(ra) # 80006eac <either_copyout>
    800075f8:	01450863          	beq	a0,s4,80007608 <consoleread+0xb4>
    800075fc:	001c0c13          	addi	s8,s8,1
    80007600:	fffb8b9b          	addiw	s7,s7,-1
    80007604:	fb5c94e3          	bne	s9,s5,800075ac <consoleread+0x58>
    80007608:	000b851b          	sext.w	a0,s7
    8000760c:	06813083          	ld	ra,104(sp)
    80007610:	06013403          	ld	s0,96(sp)
    80007614:	05813483          	ld	s1,88(sp)
    80007618:	05013903          	ld	s2,80(sp)
    8000761c:	04813983          	ld	s3,72(sp)
    80007620:	04013a03          	ld	s4,64(sp)
    80007624:	03813a83          	ld	s5,56(sp)
    80007628:	02813b83          	ld	s7,40(sp)
    8000762c:	02013c03          	ld	s8,32(sp)
    80007630:	01813c83          	ld	s9,24(sp)
    80007634:	40ab053b          	subw	a0,s6,a0
    80007638:	03013b03          	ld	s6,48(sp)
    8000763c:	07010113          	addi	sp,sp,112
    80007640:	00008067          	ret
    80007644:	00001097          	auipc	ra,0x1
    80007648:	1d8080e7          	jalr	472(ra) # 8000881c <push_on>
    8000764c:	0984a703          	lw	a4,152(s1)
    80007650:	09c4a783          	lw	a5,156(s1)
    80007654:	0007879b          	sext.w	a5,a5
    80007658:	fef70ce3          	beq	a4,a5,80007650 <consoleread+0xfc>
    8000765c:	00001097          	auipc	ra,0x1
    80007660:	234080e7          	jalr	564(ra) # 80008890 <pop_on>
    80007664:	0984a783          	lw	a5,152(s1)
    80007668:	07f7f713          	andi	a4,a5,127
    8000766c:	00e48733          	add	a4,s1,a4
    80007670:	01874703          	lbu	a4,24(a4)
    80007674:	0017869b          	addiw	a3,a5,1
    80007678:	08d4ac23          	sw	a3,152(s1)
    8000767c:	00070c9b          	sext.w	s9,a4
    80007680:	f5371ee3          	bne	a4,s3,800075dc <consoleread+0x88>
    80007684:	000b851b          	sext.w	a0,s7
    80007688:	f96bf2e3          	bgeu	s7,s6,8000760c <consoleread+0xb8>
    8000768c:	08f4ac23          	sw	a5,152(s1)
    80007690:	f7dff06f          	j	8000760c <consoleread+0xb8>

0000000080007694 <consputc>:
    80007694:	10000793          	li	a5,256
    80007698:	00f50663          	beq	a0,a5,800076a4 <consputc+0x10>
    8000769c:	00001317          	auipc	t1,0x1
    800076a0:	9f430067          	jr	-1548(t1) # 80008090 <uartputc_sync>
    800076a4:	ff010113          	addi	sp,sp,-16
    800076a8:	00113423          	sd	ra,8(sp)
    800076ac:	00813023          	sd	s0,0(sp)
    800076b0:	01010413          	addi	s0,sp,16
    800076b4:	00800513          	li	a0,8
    800076b8:	00001097          	auipc	ra,0x1
    800076bc:	9d8080e7          	jalr	-1576(ra) # 80008090 <uartputc_sync>
    800076c0:	02000513          	li	a0,32
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	9cc080e7          	jalr	-1588(ra) # 80008090 <uartputc_sync>
    800076cc:	00013403          	ld	s0,0(sp)
    800076d0:	00813083          	ld	ra,8(sp)
    800076d4:	00800513          	li	a0,8
    800076d8:	01010113          	addi	sp,sp,16
    800076dc:	00001317          	auipc	t1,0x1
    800076e0:	9b430067          	jr	-1612(t1) # 80008090 <uartputc_sync>

00000000800076e4 <consoleintr>:
    800076e4:	fe010113          	addi	sp,sp,-32
    800076e8:	00813823          	sd	s0,16(sp)
    800076ec:	00913423          	sd	s1,8(sp)
    800076f0:	01213023          	sd	s2,0(sp)
    800076f4:	00113c23          	sd	ra,24(sp)
    800076f8:	02010413          	addi	s0,sp,32
    800076fc:	00005917          	auipc	s2,0x5
    80007700:	7dc90913          	addi	s2,s2,2012 # 8000ced8 <cons>
    80007704:	00050493          	mv	s1,a0
    80007708:	00090513          	mv	a0,s2
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	e40080e7          	jalr	-448(ra) # 8000854c <acquire>
    80007714:	02048c63          	beqz	s1,8000774c <consoleintr+0x68>
    80007718:	0a092783          	lw	a5,160(s2)
    8000771c:	09892703          	lw	a4,152(s2)
    80007720:	07f00693          	li	a3,127
    80007724:	40e7873b          	subw	a4,a5,a4
    80007728:	02e6e263          	bltu	a3,a4,8000774c <consoleintr+0x68>
    8000772c:	00d00713          	li	a4,13
    80007730:	04e48063          	beq	s1,a4,80007770 <consoleintr+0x8c>
    80007734:	07f7f713          	andi	a4,a5,127
    80007738:	00e90733          	add	a4,s2,a4
    8000773c:	0017879b          	addiw	a5,a5,1
    80007740:	0af92023          	sw	a5,160(s2)
    80007744:	00970c23          	sb	s1,24(a4)
    80007748:	08f92e23          	sw	a5,156(s2)
    8000774c:	01013403          	ld	s0,16(sp)
    80007750:	01813083          	ld	ra,24(sp)
    80007754:	00813483          	ld	s1,8(sp)
    80007758:	00013903          	ld	s2,0(sp)
    8000775c:	00005517          	auipc	a0,0x5
    80007760:	77c50513          	addi	a0,a0,1916 # 8000ced8 <cons>
    80007764:	02010113          	addi	sp,sp,32
    80007768:	00001317          	auipc	t1,0x1
    8000776c:	eb030067          	jr	-336(t1) # 80008618 <release>
    80007770:	00a00493          	li	s1,10
    80007774:	fc1ff06f          	j	80007734 <consoleintr+0x50>

0000000080007778 <consoleinit>:
    80007778:	fe010113          	addi	sp,sp,-32
    8000777c:	00113c23          	sd	ra,24(sp)
    80007780:	00813823          	sd	s0,16(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	02010413          	addi	s0,sp,32
    8000778c:	00005497          	auipc	s1,0x5
    80007790:	74c48493          	addi	s1,s1,1868 # 8000ced8 <cons>
    80007794:	00048513          	mv	a0,s1
    80007798:	00002597          	auipc	a1,0x2
    8000779c:	f5058593          	addi	a1,a1,-176 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800077a0:	00001097          	auipc	ra,0x1
    800077a4:	d88080e7          	jalr	-632(ra) # 80008528 <initlock>
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	7ac080e7          	jalr	1964(ra) # 80007f54 <uartinit>
    800077b0:	01813083          	ld	ra,24(sp)
    800077b4:	01013403          	ld	s0,16(sp)
    800077b8:	00000797          	auipc	a5,0x0
    800077bc:	d9c78793          	addi	a5,a5,-612 # 80007554 <consoleread>
    800077c0:	0af4bc23          	sd	a5,184(s1)
    800077c4:	00000797          	auipc	a5,0x0
    800077c8:	cec78793          	addi	a5,a5,-788 # 800074b0 <consolewrite>
    800077cc:	0cf4b023          	sd	a5,192(s1)
    800077d0:	00813483          	ld	s1,8(sp)
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00008067          	ret

00000000800077dc <console_read>:
    800077dc:	ff010113          	addi	sp,sp,-16
    800077e0:	00813423          	sd	s0,8(sp)
    800077e4:	01010413          	addi	s0,sp,16
    800077e8:	00813403          	ld	s0,8(sp)
    800077ec:	00005317          	auipc	t1,0x5
    800077f0:	7a433303          	ld	t1,1956(t1) # 8000cf90 <devsw+0x10>
    800077f4:	01010113          	addi	sp,sp,16
    800077f8:	00030067          	jr	t1

00000000800077fc <console_write>:
    800077fc:	ff010113          	addi	sp,sp,-16
    80007800:	00813423          	sd	s0,8(sp)
    80007804:	01010413          	addi	s0,sp,16
    80007808:	00813403          	ld	s0,8(sp)
    8000780c:	00005317          	auipc	t1,0x5
    80007810:	78c33303          	ld	t1,1932(t1) # 8000cf98 <devsw+0x18>
    80007814:	01010113          	addi	sp,sp,16
    80007818:	00030067          	jr	t1

000000008000781c <panic>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00113c23          	sd	ra,24(sp)
    80007824:	00813823          	sd	s0,16(sp)
    80007828:	00913423          	sd	s1,8(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00050493          	mv	s1,a0
    80007834:	00002517          	auipc	a0,0x2
    80007838:	ebc50513          	addi	a0,a0,-324 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000783c:	00005797          	auipc	a5,0x5
    80007840:	7e07ae23          	sw	zero,2044(a5) # 8000d038 <pr+0x18>
    80007844:	00000097          	auipc	ra,0x0
    80007848:	034080e7          	jalr	52(ra) # 80007878 <__printf>
    8000784c:	00048513          	mv	a0,s1
    80007850:	00000097          	auipc	ra,0x0
    80007854:	028080e7          	jalr	40(ra) # 80007878 <__printf>
    80007858:	00002517          	auipc	a0,0x2
    8000785c:	c2050513          	addi	a0,a0,-992 # 80009478 <CONSOLE_STATUS+0x468>
    80007860:	00000097          	auipc	ra,0x0
    80007864:	018080e7          	jalr	24(ra) # 80007878 <__printf>
    80007868:	00100793          	li	a5,1
    8000786c:	00004717          	auipc	a4,0x4
    80007870:	4af72e23          	sw	a5,1212(a4) # 8000bd28 <panicked>
    80007874:	0000006f          	j	80007874 <panic+0x58>

0000000080007878 <__printf>:
    80007878:	f3010113          	addi	sp,sp,-208
    8000787c:	08813023          	sd	s0,128(sp)
    80007880:	07313423          	sd	s3,104(sp)
    80007884:	09010413          	addi	s0,sp,144
    80007888:	05813023          	sd	s8,64(sp)
    8000788c:	08113423          	sd	ra,136(sp)
    80007890:	06913c23          	sd	s1,120(sp)
    80007894:	07213823          	sd	s2,112(sp)
    80007898:	07413023          	sd	s4,96(sp)
    8000789c:	05513c23          	sd	s5,88(sp)
    800078a0:	05613823          	sd	s6,80(sp)
    800078a4:	05713423          	sd	s7,72(sp)
    800078a8:	03913c23          	sd	s9,56(sp)
    800078ac:	03a13823          	sd	s10,48(sp)
    800078b0:	03b13423          	sd	s11,40(sp)
    800078b4:	00005317          	auipc	t1,0x5
    800078b8:	76c30313          	addi	t1,t1,1900 # 8000d020 <pr>
    800078bc:	01832c03          	lw	s8,24(t1)
    800078c0:	00b43423          	sd	a1,8(s0)
    800078c4:	00c43823          	sd	a2,16(s0)
    800078c8:	00d43c23          	sd	a3,24(s0)
    800078cc:	02e43023          	sd	a4,32(s0)
    800078d0:	02f43423          	sd	a5,40(s0)
    800078d4:	03043823          	sd	a6,48(s0)
    800078d8:	03143c23          	sd	a7,56(s0)
    800078dc:	00050993          	mv	s3,a0
    800078e0:	4a0c1663          	bnez	s8,80007d8c <__printf+0x514>
    800078e4:	60098c63          	beqz	s3,80007efc <__printf+0x684>
    800078e8:	0009c503          	lbu	a0,0(s3)
    800078ec:	00840793          	addi	a5,s0,8
    800078f0:	f6f43c23          	sd	a5,-136(s0)
    800078f4:	00000493          	li	s1,0
    800078f8:	22050063          	beqz	a0,80007b18 <__printf+0x2a0>
    800078fc:	00002a37          	lui	s4,0x2
    80007900:	00018ab7          	lui	s5,0x18
    80007904:	000f4b37          	lui	s6,0xf4
    80007908:	00989bb7          	lui	s7,0x989
    8000790c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007910:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007914:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007918:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000791c:	00148c9b          	addiw	s9,s1,1
    80007920:	02500793          	li	a5,37
    80007924:	01998933          	add	s2,s3,s9
    80007928:	38f51263          	bne	a0,a5,80007cac <__printf+0x434>
    8000792c:	00094783          	lbu	a5,0(s2)
    80007930:	00078c9b          	sext.w	s9,a5
    80007934:	1e078263          	beqz	a5,80007b18 <__printf+0x2a0>
    80007938:	0024849b          	addiw	s1,s1,2
    8000793c:	07000713          	li	a4,112
    80007940:	00998933          	add	s2,s3,s1
    80007944:	38e78a63          	beq	a5,a4,80007cd8 <__printf+0x460>
    80007948:	20f76863          	bltu	a4,a5,80007b58 <__printf+0x2e0>
    8000794c:	42a78863          	beq	a5,a0,80007d7c <__printf+0x504>
    80007950:	06400713          	li	a4,100
    80007954:	40e79663          	bne	a5,a4,80007d60 <__printf+0x4e8>
    80007958:	f7843783          	ld	a5,-136(s0)
    8000795c:	0007a603          	lw	a2,0(a5)
    80007960:	00878793          	addi	a5,a5,8
    80007964:	f6f43c23          	sd	a5,-136(s0)
    80007968:	42064a63          	bltz	a2,80007d9c <__printf+0x524>
    8000796c:	00a00713          	li	a4,10
    80007970:	02e677bb          	remuw	a5,a2,a4
    80007974:	00002d97          	auipc	s11,0x2
    80007978:	da4d8d93          	addi	s11,s11,-604 # 80009718 <digits>
    8000797c:	00900593          	li	a1,9
    80007980:	0006051b          	sext.w	a0,a2
    80007984:	00000c93          	li	s9,0
    80007988:	02079793          	slli	a5,a5,0x20
    8000798c:	0207d793          	srli	a5,a5,0x20
    80007990:	00fd87b3          	add	a5,s11,a5
    80007994:	0007c783          	lbu	a5,0(a5)
    80007998:	02e656bb          	divuw	a3,a2,a4
    8000799c:	f8f40023          	sb	a5,-128(s0)
    800079a0:	14c5d863          	bge	a1,a2,80007af0 <__printf+0x278>
    800079a4:	06300593          	li	a1,99
    800079a8:	00100c93          	li	s9,1
    800079ac:	02e6f7bb          	remuw	a5,a3,a4
    800079b0:	02079793          	slli	a5,a5,0x20
    800079b4:	0207d793          	srli	a5,a5,0x20
    800079b8:	00fd87b3          	add	a5,s11,a5
    800079bc:	0007c783          	lbu	a5,0(a5)
    800079c0:	02e6d73b          	divuw	a4,a3,a4
    800079c4:	f8f400a3          	sb	a5,-127(s0)
    800079c8:	12a5f463          	bgeu	a1,a0,80007af0 <__printf+0x278>
    800079cc:	00a00693          	li	a3,10
    800079d0:	00900593          	li	a1,9
    800079d4:	02d777bb          	remuw	a5,a4,a3
    800079d8:	02079793          	slli	a5,a5,0x20
    800079dc:	0207d793          	srli	a5,a5,0x20
    800079e0:	00fd87b3          	add	a5,s11,a5
    800079e4:	0007c503          	lbu	a0,0(a5)
    800079e8:	02d757bb          	divuw	a5,a4,a3
    800079ec:	f8a40123          	sb	a0,-126(s0)
    800079f0:	48e5f263          	bgeu	a1,a4,80007e74 <__printf+0x5fc>
    800079f4:	06300513          	li	a0,99
    800079f8:	02d7f5bb          	remuw	a1,a5,a3
    800079fc:	02059593          	slli	a1,a1,0x20
    80007a00:	0205d593          	srli	a1,a1,0x20
    80007a04:	00bd85b3          	add	a1,s11,a1
    80007a08:	0005c583          	lbu	a1,0(a1)
    80007a0c:	02d7d7bb          	divuw	a5,a5,a3
    80007a10:	f8b401a3          	sb	a1,-125(s0)
    80007a14:	48e57263          	bgeu	a0,a4,80007e98 <__printf+0x620>
    80007a18:	3e700513          	li	a0,999
    80007a1c:	02d7f5bb          	remuw	a1,a5,a3
    80007a20:	02059593          	slli	a1,a1,0x20
    80007a24:	0205d593          	srli	a1,a1,0x20
    80007a28:	00bd85b3          	add	a1,s11,a1
    80007a2c:	0005c583          	lbu	a1,0(a1)
    80007a30:	02d7d7bb          	divuw	a5,a5,a3
    80007a34:	f8b40223          	sb	a1,-124(s0)
    80007a38:	46e57663          	bgeu	a0,a4,80007ea4 <__printf+0x62c>
    80007a3c:	02d7f5bb          	remuw	a1,a5,a3
    80007a40:	02059593          	slli	a1,a1,0x20
    80007a44:	0205d593          	srli	a1,a1,0x20
    80007a48:	00bd85b3          	add	a1,s11,a1
    80007a4c:	0005c583          	lbu	a1,0(a1)
    80007a50:	02d7d7bb          	divuw	a5,a5,a3
    80007a54:	f8b402a3          	sb	a1,-123(s0)
    80007a58:	46ea7863          	bgeu	s4,a4,80007ec8 <__printf+0x650>
    80007a5c:	02d7f5bb          	remuw	a1,a5,a3
    80007a60:	02059593          	slli	a1,a1,0x20
    80007a64:	0205d593          	srli	a1,a1,0x20
    80007a68:	00bd85b3          	add	a1,s11,a1
    80007a6c:	0005c583          	lbu	a1,0(a1)
    80007a70:	02d7d7bb          	divuw	a5,a5,a3
    80007a74:	f8b40323          	sb	a1,-122(s0)
    80007a78:	3eeaf863          	bgeu	s5,a4,80007e68 <__printf+0x5f0>
    80007a7c:	02d7f5bb          	remuw	a1,a5,a3
    80007a80:	02059593          	slli	a1,a1,0x20
    80007a84:	0205d593          	srli	a1,a1,0x20
    80007a88:	00bd85b3          	add	a1,s11,a1
    80007a8c:	0005c583          	lbu	a1,0(a1)
    80007a90:	02d7d7bb          	divuw	a5,a5,a3
    80007a94:	f8b403a3          	sb	a1,-121(s0)
    80007a98:	42eb7e63          	bgeu	s6,a4,80007ed4 <__printf+0x65c>
    80007a9c:	02d7f5bb          	remuw	a1,a5,a3
    80007aa0:	02059593          	slli	a1,a1,0x20
    80007aa4:	0205d593          	srli	a1,a1,0x20
    80007aa8:	00bd85b3          	add	a1,s11,a1
    80007aac:	0005c583          	lbu	a1,0(a1)
    80007ab0:	02d7d7bb          	divuw	a5,a5,a3
    80007ab4:	f8b40423          	sb	a1,-120(s0)
    80007ab8:	42ebfc63          	bgeu	s7,a4,80007ef0 <__printf+0x678>
    80007abc:	02079793          	slli	a5,a5,0x20
    80007ac0:	0207d793          	srli	a5,a5,0x20
    80007ac4:	00fd8db3          	add	s11,s11,a5
    80007ac8:	000dc703          	lbu	a4,0(s11)
    80007acc:	00a00793          	li	a5,10
    80007ad0:	00900c93          	li	s9,9
    80007ad4:	f8e404a3          	sb	a4,-119(s0)
    80007ad8:	00065c63          	bgez	a2,80007af0 <__printf+0x278>
    80007adc:	f9040713          	addi	a4,s0,-112
    80007ae0:	00f70733          	add	a4,a4,a5
    80007ae4:	02d00693          	li	a3,45
    80007ae8:	fed70823          	sb	a3,-16(a4)
    80007aec:	00078c93          	mv	s9,a5
    80007af0:	f8040793          	addi	a5,s0,-128
    80007af4:	01978cb3          	add	s9,a5,s9
    80007af8:	f7f40d13          	addi	s10,s0,-129
    80007afc:	000cc503          	lbu	a0,0(s9)
    80007b00:	fffc8c93          	addi	s9,s9,-1
    80007b04:	00000097          	auipc	ra,0x0
    80007b08:	b90080e7          	jalr	-1136(ra) # 80007694 <consputc>
    80007b0c:	ffac98e3          	bne	s9,s10,80007afc <__printf+0x284>
    80007b10:	00094503          	lbu	a0,0(s2)
    80007b14:	e00514e3          	bnez	a0,8000791c <__printf+0xa4>
    80007b18:	1a0c1663          	bnez	s8,80007cc4 <__printf+0x44c>
    80007b1c:	08813083          	ld	ra,136(sp)
    80007b20:	08013403          	ld	s0,128(sp)
    80007b24:	07813483          	ld	s1,120(sp)
    80007b28:	07013903          	ld	s2,112(sp)
    80007b2c:	06813983          	ld	s3,104(sp)
    80007b30:	06013a03          	ld	s4,96(sp)
    80007b34:	05813a83          	ld	s5,88(sp)
    80007b38:	05013b03          	ld	s6,80(sp)
    80007b3c:	04813b83          	ld	s7,72(sp)
    80007b40:	04013c03          	ld	s8,64(sp)
    80007b44:	03813c83          	ld	s9,56(sp)
    80007b48:	03013d03          	ld	s10,48(sp)
    80007b4c:	02813d83          	ld	s11,40(sp)
    80007b50:	0d010113          	addi	sp,sp,208
    80007b54:	00008067          	ret
    80007b58:	07300713          	li	a4,115
    80007b5c:	1ce78a63          	beq	a5,a4,80007d30 <__printf+0x4b8>
    80007b60:	07800713          	li	a4,120
    80007b64:	1ee79e63          	bne	a5,a4,80007d60 <__printf+0x4e8>
    80007b68:	f7843783          	ld	a5,-136(s0)
    80007b6c:	0007a703          	lw	a4,0(a5)
    80007b70:	00878793          	addi	a5,a5,8
    80007b74:	f6f43c23          	sd	a5,-136(s0)
    80007b78:	28074263          	bltz	a4,80007dfc <__printf+0x584>
    80007b7c:	00002d97          	auipc	s11,0x2
    80007b80:	b9cd8d93          	addi	s11,s11,-1124 # 80009718 <digits>
    80007b84:	00f77793          	andi	a5,a4,15
    80007b88:	00fd87b3          	add	a5,s11,a5
    80007b8c:	0007c683          	lbu	a3,0(a5)
    80007b90:	00f00613          	li	a2,15
    80007b94:	0007079b          	sext.w	a5,a4
    80007b98:	f8d40023          	sb	a3,-128(s0)
    80007b9c:	0047559b          	srliw	a1,a4,0x4
    80007ba0:	0047569b          	srliw	a3,a4,0x4
    80007ba4:	00000c93          	li	s9,0
    80007ba8:	0ee65063          	bge	a2,a4,80007c88 <__printf+0x410>
    80007bac:	00f6f693          	andi	a3,a3,15
    80007bb0:	00dd86b3          	add	a3,s11,a3
    80007bb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007bb8:	0087d79b          	srliw	a5,a5,0x8
    80007bbc:	00100c93          	li	s9,1
    80007bc0:	f8d400a3          	sb	a3,-127(s0)
    80007bc4:	0cb67263          	bgeu	a2,a1,80007c88 <__printf+0x410>
    80007bc8:	00f7f693          	andi	a3,a5,15
    80007bcc:	00dd86b3          	add	a3,s11,a3
    80007bd0:	0006c583          	lbu	a1,0(a3)
    80007bd4:	00f00613          	li	a2,15
    80007bd8:	0047d69b          	srliw	a3,a5,0x4
    80007bdc:	f8b40123          	sb	a1,-126(s0)
    80007be0:	0047d593          	srli	a1,a5,0x4
    80007be4:	28f67e63          	bgeu	a2,a5,80007e80 <__printf+0x608>
    80007be8:	00f6f693          	andi	a3,a3,15
    80007bec:	00dd86b3          	add	a3,s11,a3
    80007bf0:	0006c503          	lbu	a0,0(a3)
    80007bf4:	0087d813          	srli	a6,a5,0x8
    80007bf8:	0087d69b          	srliw	a3,a5,0x8
    80007bfc:	f8a401a3          	sb	a0,-125(s0)
    80007c00:	28b67663          	bgeu	a2,a1,80007e8c <__printf+0x614>
    80007c04:	00f6f693          	andi	a3,a3,15
    80007c08:	00dd86b3          	add	a3,s11,a3
    80007c0c:	0006c583          	lbu	a1,0(a3)
    80007c10:	00c7d513          	srli	a0,a5,0xc
    80007c14:	00c7d69b          	srliw	a3,a5,0xc
    80007c18:	f8b40223          	sb	a1,-124(s0)
    80007c1c:	29067a63          	bgeu	a2,a6,80007eb0 <__printf+0x638>
    80007c20:	00f6f693          	andi	a3,a3,15
    80007c24:	00dd86b3          	add	a3,s11,a3
    80007c28:	0006c583          	lbu	a1,0(a3)
    80007c2c:	0107d813          	srli	a6,a5,0x10
    80007c30:	0107d69b          	srliw	a3,a5,0x10
    80007c34:	f8b402a3          	sb	a1,-123(s0)
    80007c38:	28a67263          	bgeu	a2,a0,80007ebc <__printf+0x644>
    80007c3c:	00f6f693          	andi	a3,a3,15
    80007c40:	00dd86b3          	add	a3,s11,a3
    80007c44:	0006c683          	lbu	a3,0(a3)
    80007c48:	0147d79b          	srliw	a5,a5,0x14
    80007c4c:	f8d40323          	sb	a3,-122(s0)
    80007c50:	21067663          	bgeu	a2,a6,80007e5c <__printf+0x5e4>
    80007c54:	02079793          	slli	a5,a5,0x20
    80007c58:	0207d793          	srli	a5,a5,0x20
    80007c5c:	00fd8db3          	add	s11,s11,a5
    80007c60:	000dc683          	lbu	a3,0(s11)
    80007c64:	00800793          	li	a5,8
    80007c68:	00700c93          	li	s9,7
    80007c6c:	f8d403a3          	sb	a3,-121(s0)
    80007c70:	00075c63          	bgez	a4,80007c88 <__printf+0x410>
    80007c74:	f9040713          	addi	a4,s0,-112
    80007c78:	00f70733          	add	a4,a4,a5
    80007c7c:	02d00693          	li	a3,45
    80007c80:	fed70823          	sb	a3,-16(a4)
    80007c84:	00078c93          	mv	s9,a5
    80007c88:	f8040793          	addi	a5,s0,-128
    80007c8c:	01978cb3          	add	s9,a5,s9
    80007c90:	f7f40d13          	addi	s10,s0,-129
    80007c94:	000cc503          	lbu	a0,0(s9)
    80007c98:	fffc8c93          	addi	s9,s9,-1
    80007c9c:	00000097          	auipc	ra,0x0
    80007ca0:	9f8080e7          	jalr	-1544(ra) # 80007694 <consputc>
    80007ca4:	ff9d18e3          	bne	s10,s9,80007c94 <__printf+0x41c>
    80007ca8:	0100006f          	j	80007cb8 <__printf+0x440>
    80007cac:	00000097          	auipc	ra,0x0
    80007cb0:	9e8080e7          	jalr	-1560(ra) # 80007694 <consputc>
    80007cb4:	000c8493          	mv	s1,s9
    80007cb8:	00094503          	lbu	a0,0(s2)
    80007cbc:	c60510e3          	bnez	a0,8000791c <__printf+0xa4>
    80007cc0:	e40c0ee3          	beqz	s8,80007b1c <__printf+0x2a4>
    80007cc4:	00005517          	auipc	a0,0x5
    80007cc8:	35c50513          	addi	a0,a0,860 # 8000d020 <pr>
    80007ccc:	00001097          	auipc	ra,0x1
    80007cd0:	94c080e7          	jalr	-1716(ra) # 80008618 <release>
    80007cd4:	e49ff06f          	j	80007b1c <__printf+0x2a4>
    80007cd8:	f7843783          	ld	a5,-136(s0)
    80007cdc:	03000513          	li	a0,48
    80007ce0:	01000d13          	li	s10,16
    80007ce4:	00878713          	addi	a4,a5,8
    80007ce8:	0007bc83          	ld	s9,0(a5)
    80007cec:	f6e43c23          	sd	a4,-136(s0)
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	9a4080e7          	jalr	-1628(ra) # 80007694 <consputc>
    80007cf8:	07800513          	li	a0,120
    80007cfc:	00000097          	auipc	ra,0x0
    80007d00:	998080e7          	jalr	-1640(ra) # 80007694 <consputc>
    80007d04:	00002d97          	auipc	s11,0x2
    80007d08:	a14d8d93          	addi	s11,s11,-1516 # 80009718 <digits>
    80007d0c:	03ccd793          	srli	a5,s9,0x3c
    80007d10:	00fd87b3          	add	a5,s11,a5
    80007d14:	0007c503          	lbu	a0,0(a5)
    80007d18:	fffd0d1b          	addiw	s10,s10,-1
    80007d1c:	004c9c93          	slli	s9,s9,0x4
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	974080e7          	jalr	-1676(ra) # 80007694 <consputc>
    80007d28:	fe0d12e3          	bnez	s10,80007d0c <__printf+0x494>
    80007d2c:	f8dff06f          	j	80007cb8 <__printf+0x440>
    80007d30:	f7843783          	ld	a5,-136(s0)
    80007d34:	0007bc83          	ld	s9,0(a5)
    80007d38:	00878793          	addi	a5,a5,8
    80007d3c:	f6f43c23          	sd	a5,-136(s0)
    80007d40:	000c9a63          	bnez	s9,80007d54 <__printf+0x4dc>
    80007d44:	1080006f          	j	80007e4c <__printf+0x5d4>
    80007d48:	001c8c93          	addi	s9,s9,1
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	948080e7          	jalr	-1720(ra) # 80007694 <consputc>
    80007d54:	000cc503          	lbu	a0,0(s9)
    80007d58:	fe0518e3          	bnez	a0,80007d48 <__printf+0x4d0>
    80007d5c:	f5dff06f          	j	80007cb8 <__printf+0x440>
    80007d60:	02500513          	li	a0,37
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	930080e7          	jalr	-1744(ra) # 80007694 <consputc>
    80007d6c:	000c8513          	mv	a0,s9
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	924080e7          	jalr	-1756(ra) # 80007694 <consputc>
    80007d78:	f41ff06f          	j	80007cb8 <__printf+0x440>
    80007d7c:	02500513          	li	a0,37
    80007d80:	00000097          	auipc	ra,0x0
    80007d84:	914080e7          	jalr	-1772(ra) # 80007694 <consputc>
    80007d88:	f31ff06f          	j	80007cb8 <__printf+0x440>
    80007d8c:	00030513          	mv	a0,t1
    80007d90:	00000097          	auipc	ra,0x0
    80007d94:	7bc080e7          	jalr	1980(ra) # 8000854c <acquire>
    80007d98:	b4dff06f          	j	800078e4 <__printf+0x6c>
    80007d9c:	40c0053b          	negw	a0,a2
    80007da0:	00a00713          	li	a4,10
    80007da4:	02e576bb          	remuw	a3,a0,a4
    80007da8:	00002d97          	auipc	s11,0x2
    80007dac:	970d8d93          	addi	s11,s11,-1680 # 80009718 <digits>
    80007db0:	ff700593          	li	a1,-9
    80007db4:	02069693          	slli	a3,a3,0x20
    80007db8:	0206d693          	srli	a3,a3,0x20
    80007dbc:	00dd86b3          	add	a3,s11,a3
    80007dc0:	0006c683          	lbu	a3,0(a3)
    80007dc4:	02e557bb          	divuw	a5,a0,a4
    80007dc8:	f8d40023          	sb	a3,-128(s0)
    80007dcc:	10b65e63          	bge	a2,a1,80007ee8 <__printf+0x670>
    80007dd0:	06300593          	li	a1,99
    80007dd4:	02e7f6bb          	remuw	a3,a5,a4
    80007dd8:	02069693          	slli	a3,a3,0x20
    80007ddc:	0206d693          	srli	a3,a3,0x20
    80007de0:	00dd86b3          	add	a3,s11,a3
    80007de4:	0006c683          	lbu	a3,0(a3)
    80007de8:	02e7d73b          	divuw	a4,a5,a4
    80007dec:	00200793          	li	a5,2
    80007df0:	f8d400a3          	sb	a3,-127(s0)
    80007df4:	bca5ece3          	bltu	a1,a0,800079cc <__printf+0x154>
    80007df8:	ce5ff06f          	j	80007adc <__printf+0x264>
    80007dfc:	40e007bb          	negw	a5,a4
    80007e00:	00002d97          	auipc	s11,0x2
    80007e04:	918d8d93          	addi	s11,s11,-1768 # 80009718 <digits>
    80007e08:	00f7f693          	andi	a3,a5,15
    80007e0c:	00dd86b3          	add	a3,s11,a3
    80007e10:	0006c583          	lbu	a1,0(a3)
    80007e14:	ff100613          	li	a2,-15
    80007e18:	0047d69b          	srliw	a3,a5,0x4
    80007e1c:	f8b40023          	sb	a1,-128(s0)
    80007e20:	0047d59b          	srliw	a1,a5,0x4
    80007e24:	0ac75e63          	bge	a4,a2,80007ee0 <__printf+0x668>
    80007e28:	00f6f693          	andi	a3,a3,15
    80007e2c:	00dd86b3          	add	a3,s11,a3
    80007e30:	0006c603          	lbu	a2,0(a3)
    80007e34:	00f00693          	li	a3,15
    80007e38:	0087d79b          	srliw	a5,a5,0x8
    80007e3c:	f8c400a3          	sb	a2,-127(s0)
    80007e40:	d8b6e4e3          	bltu	a3,a1,80007bc8 <__printf+0x350>
    80007e44:	00200793          	li	a5,2
    80007e48:	e2dff06f          	j	80007c74 <__printf+0x3fc>
    80007e4c:	00002c97          	auipc	s9,0x2
    80007e50:	8acc8c93          	addi	s9,s9,-1876 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007e54:	02800513          	li	a0,40
    80007e58:	ef1ff06f          	j	80007d48 <__printf+0x4d0>
    80007e5c:	00700793          	li	a5,7
    80007e60:	00600c93          	li	s9,6
    80007e64:	e0dff06f          	j	80007c70 <__printf+0x3f8>
    80007e68:	00700793          	li	a5,7
    80007e6c:	00600c93          	li	s9,6
    80007e70:	c69ff06f          	j	80007ad8 <__printf+0x260>
    80007e74:	00300793          	li	a5,3
    80007e78:	00200c93          	li	s9,2
    80007e7c:	c5dff06f          	j	80007ad8 <__printf+0x260>
    80007e80:	00300793          	li	a5,3
    80007e84:	00200c93          	li	s9,2
    80007e88:	de9ff06f          	j	80007c70 <__printf+0x3f8>
    80007e8c:	00400793          	li	a5,4
    80007e90:	00300c93          	li	s9,3
    80007e94:	dddff06f          	j	80007c70 <__printf+0x3f8>
    80007e98:	00400793          	li	a5,4
    80007e9c:	00300c93          	li	s9,3
    80007ea0:	c39ff06f          	j	80007ad8 <__printf+0x260>
    80007ea4:	00500793          	li	a5,5
    80007ea8:	00400c93          	li	s9,4
    80007eac:	c2dff06f          	j	80007ad8 <__printf+0x260>
    80007eb0:	00500793          	li	a5,5
    80007eb4:	00400c93          	li	s9,4
    80007eb8:	db9ff06f          	j	80007c70 <__printf+0x3f8>
    80007ebc:	00600793          	li	a5,6
    80007ec0:	00500c93          	li	s9,5
    80007ec4:	dadff06f          	j	80007c70 <__printf+0x3f8>
    80007ec8:	00600793          	li	a5,6
    80007ecc:	00500c93          	li	s9,5
    80007ed0:	c09ff06f          	j	80007ad8 <__printf+0x260>
    80007ed4:	00800793          	li	a5,8
    80007ed8:	00700c93          	li	s9,7
    80007edc:	bfdff06f          	j	80007ad8 <__printf+0x260>
    80007ee0:	00100793          	li	a5,1
    80007ee4:	d91ff06f          	j	80007c74 <__printf+0x3fc>
    80007ee8:	00100793          	li	a5,1
    80007eec:	bf1ff06f          	j	80007adc <__printf+0x264>
    80007ef0:	00900793          	li	a5,9
    80007ef4:	00800c93          	li	s9,8
    80007ef8:	be1ff06f          	j	80007ad8 <__printf+0x260>
    80007efc:	00002517          	auipc	a0,0x2
    80007f00:	80450513          	addi	a0,a0,-2044 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	918080e7          	jalr	-1768(ra) # 8000781c <panic>

0000000080007f0c <printfinit>:
    80007f0c:	fe010113          	addi	sp,sp,-32
    80007f10:	00813823          	sd	s0,16(sp)
    80007f14:	00913423          	sd	s1,8(sp)
    80007f18:	00113c23          	sd	ra,24(sp)
    80007f1c:	02010413          	addi	s0,sp,32
    80007f20:	00005497          	auipc	s1,0x5
    80007f24:	10048493          	addi	s1,s1,256 # 8000d020 <pr>
    80007f28:	00048513          	mv	a0,s1
    80007f2c:	00001597          	auipc	a1,0x1
    80007f30:	7e458593          	addi	a1,a1,2020 # 80009710 <CONSOLE_STATUS+0x700>
    80007f34:	00000097          	auipc	ra,0x0
    80007f38:	5f4080e7          	jalr	1524(ra) # 80008528 <initlock>
    80007f3c:	01813083          	ld	ra,24(sp)
    80007f40:	01013403          	ld	s0,16(sp)
    80007f44:	0004ac23          	sw	zero,24(s1)
    80007f48:	00813483          	ld	s1,8(sp)
    80007f4c:	02010113          	addi	sp,sp,32
    80007f50:	00008067          	ret

0000000080007f54 <uartinit>:
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00813423          	sd	s0,8(sp)
    80007f5c:	01010413          	addi	s0,sp,16
    80007f60:	100007b7          	lui	a5,0x10000
    80007f64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f68:	f8000713          	li	a4,-128
    80007f6c:	00e781a3          	sb	a4,3(a5)
    80007f70:	00300713          	li	a4,3
    80007f74:	00e78023          	sb	a4,0(a5)
    80007f78:	000780a3          	sb	zero,1(a5)
    80007f7c:	00e781a3          	sb	a4,3(a5)
    80007f80:	00700693          	li	a3,7
    80007f84:	00d78123          	sb	a3,2(a5)
    80007f88:	00e780a3          	sb	a4,1(a5)
    80007f8c:	00813403          	ld	s0,8(sp)
    80007f90:	01010113          	addi	sp,sp,16
    80007f94:	00008067          	ret

0000000080007f98 <uartputc>:
    80007f98:	00004797          	auipc	a5,0x4
    80007f9c:	d907a783          	lw	a5,-624(a5) # 8000bd28 <panicked>
    80007fa0:	00078463          	beqz	a5,80007fa8 <uartputc+0x10>
    80007fa4:	0000006f          	j	80007fa4 <uartputc+0xc>
    80007fa8:	fd010113          	addi	sp,sp,-48
    80007fac:	02813023          	sd	s0,32(sp)
    80007fb0:	00913c23          	sd	s1,24(sp)
    80007fb4:	01213823          	sd	s2,16(sp)
    80007fb8:	01313423          	sd	s3,8(sp)
    80007fbc:	02113423          	sd	ra,40(sp)
    80007fc0:	03010413          	addi	s0,sp,48
    80007fc4:	00004917          	auipc	s2,0x4
    80007fc8:	d6c90913          	addi	s2,s2,-660 # 8000bd30 <uart_tx_r>
    80007fcc:	00093783          	ld	a5,0(s2)
    80007fd0:	00004497          	auipc	s1,0x4
    80007fd4:	d6848493          	addi	s1,s1,-664 # 8000bd38 <uart_tx_w>
    80007fd8:	0004b703          	ld	a4,0(s1)
    80007fdc:	02078693          	addi	a3,a5,32
    80007fe0:	00050993          	mv	s3,a0
    80007fe4:	02e69c63          	bne	a3,a4,8000801c <uartputc+0x84>
    80007fe8:	00001097          	auipc	ra,0x1
    80007fec:	834080e7          	jalr	-1996(ra) # 8000881c <push_on>
    80007ff0:	00093783          	ld	a5,0(s2)
    80007ff4:	0004b703          	ld	a4,0(s1)
    80007ff8:	02078793          	addi	a5,a5,32
    80007ffc:	00e79463          	bne	a5,a4,80008004 <uartputc+0x6c>
    80008000:	0000006f          	j	80008000 <uartputc+0x68>
    80008004:	00001097          	auipc	ra,0x1
    80008008:	88c080e7          	jalr	-1908(ra) # 80008890 <pop_on>
    8000800c:	00093783          	ld	a5,0(s2)
    80008010:	0004b703          	ld	a4,0(s1)
    80008014:	02078693          	addi	a3,a5,32
    80008018:	fce688e3          	beq	a3,a4,80007fe8 <uartputc+0x50>
    8000801c:	01f77693          	andi	a3,a4,31
    80008020:	00005597          	auipc	a1,0x5
    80008024:	02058593          	addi	a1,a1,32 # 8000d040 <uart_tx_buf>
    80008028:	00d586b3          	add	a3,a1,a3
    8000802c:	00170713          	addi	a4,a4,1
    80008030:	01368023          	sb	s3,0(a3)
    80008034:	00e4b023          	sd	a4,0(s1)
    80008038:	10000637          	lui	a2,0x10000
    8000803c:	02f71063          	bne	a4,a5,8000805c <uartputc+0xc4>
    80008040:	0340006f          	j	80008074 <uartputc+0xdc>
    80008044:	00074703          	lbu	a4,0(a4)
    80008048:	00f93023          	sd	a5,0(s2)
    8000804c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008050:	00093783          	ld	a5,0(s2)
    80008054:	0004b703          	ld	a4,0(s1)
    80008058:	00f70e63          	beq	a4,a5,80008074 <uartputc+0xdc>
    8000805c:	00564683          	lbu	a3,5(a2)
    80008060:	01f7f713          	andi	a4,a5,31
    80008064:	00e58733          	add	a4,a1,a4
    80008068:	0206f693          	andi	a3,a3,32
    8000806c:	00178793          	addi	a5,a5,1
    80008070:	fc069ae3          	bnez	a3,80008044 <uartputc+0xac>
    80008074:	02813083          	ld	ra,40(sp)
    80008078:	02013403          	ld	s0,32(sp)
    8000807c:	01813483          	ld	s1,24(sp)
    80008080:	01013903          	ld	s2,16(sp)
    80008084:	00813983          	ld	s3,8(sp)
    80008088:	03010113          	addi	sp,sp,48
    8000808c:	00008067          	ret

0000000080008090 <uartputc_sync>:
    80008090:	ff010113          	addi	sp,sp,-16
    80008094:	00813423          	sd	s0,8(sp)
    80008098:	01010413          	addi	s0,sp,16
    8000809c:	00004717          	auipc	a4,0x4
    800080a0:	c8c72703          	lw	a4,-884(a4) # 8000bd28 <panicked>
    800080a4:	02071663          	bnez	a4,800080d0 <uartputc_sync+0x40>
    800080a8:	00050793          	mv	a5,a0
    800080ac:	100006b7          	lui	a3,0x10000
    800080b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800080b4:	02077713          	andi	a4,a4,32
    800080b8:	fe070ce3          	beqz	a4,800080b0 <uartputc_sync+0x20>
    800080bc:	0ff7f793          	andi	a5,a5,255
    800080c0:	00f68023          	sb	a5,0(a3)
    800080c4:	00813403          	ld	s0,8(sp)
    800080c8:	01010113          	addi	sp,sp,16
    800080cc:	00008067          	ret
    800080d0:	0000006f          	j	800080d0 <uartputc_sync+0x40>

00000000800080d4 <uartstart>:
    800080d4:	ff010113          	addi	sp,sp,-16
    800080d8:	00813423          	sd	s0,8(sp)
    800080dc:	01010413          	addi	s0,sp,16
    800080e0:	00004617          	auipc	a2,0x4
    800080e4:	c5060613          	addi	a2,a2,-944 # 8000bd30 <uart_tx_r>
    800080e8:	00004517          	auipc	a0,0x4
    800080ec:	c5050513          	addi	a0,a0,-944 # 8000bd38 <uart_tx_w>
    800080f0:	00063783          	ld	a5,0(a2)
    800080f4:	00053703          	ld	a4,0(a0)
    800080f8:	04f70263          	beq	a4,a5,8000813c <uartstart+0x68>
    800080fc:	100005b7          	lui	a1,0x10000
    80008100:	00005817          	auipc	a6,0x5
    80008104:	f4080813          	addi	a6,a6,-192 # 8000d040 <uart_tx_buf>
    80008108:	01c0006f          	j	80008124 <uartstart+0x50>
    8000810c:	0006c703          	lbu	a4,0(a3)
    80008110:	00f63023          	sd	a5,0(a2)
    80008114:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008118:	00063783          	ld	a5,0(a2)
    8000811c:	00053703          	ld	a4,0(a0)
    80008120:	00f70e63          	beq	a4,a5,8000813c <uartstart+0x68>
    80008124:	01f7f713          	andi	a4,a5,31
    80008128:	00e806b3          	add	a3,a6,a4
    8000812c:	0055c703          	lbu	a4,5(a1)
    80008130:	00178793          	addi	a5,a5,1
    80008134:	02077713          	andi	a4,a4,32
    80008138:	fc071ae3          	bnez	a4,8000810c <uartstart+0x38>
    8000813c:	00813403          	ld	s0,8(sp)
    80008140:	01010113          	addi	sp,sp,16
    80008144:	00008067          	ret

0000000080008148 <uartgetc>:
    80008148:	ff010113          	addi	sp,sp,-16
    8000814c:	00813423          	sd	s0,8(sp)
    80008150:	01010413          	addi	s0,sp,16
    80008154:	10000737          	lui	a4,0x10000
    80008158:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000815c:	0017f793          	andi	a5,a5,1
    80008160:	00078c63          	beqz	a5,80008178 <uartgetc+0x30>
    80008164:	00074503          	lbu	a0,0(a4)
    80008168:	0ff57513          	andi	a0,a0,255
    8000816c:	00813403          	ld	s0,8(sp)
    80008170:	01010113          	addi	sp,sp,16
    80008174:	00008067          	ret
    80008178:	fff00513          	li	a0,-1
    8000817c:	ff1ff06f          	j	8000816c <uartgetc+0x24>

0000000080008180 <uartintr>:
    80008180:	100007b7          	lui	a5,0x10000
    80008184:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008188:	0017f793          	andi	a5,a5,1
    8000818c:	0a078463          	beqz	a5,80008234 <uartintr+0xb4>
    80008190:	fe010113          	addi	sp,sp,-32
    80008194:	00813823          	sd	s0,16(sp)
    80008198:	00913423          	sd	s1,8(sp)
    8000819c:	00113c23          	sd	ra,24(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	100004b7          	lui	s1,0x10000
    800081a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800081ac:	0ff57513          	andi	a0,a0,255
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	534080e7          	jalr	1332(ra) # 800076e4 <consoleintr>
    800081b8:	0054c783          	lbu	a5,5(s1)
    800081bc:	0017f793          	andi	a5,a5,1
    800081c0:	fe0794e3          	bnez	a5,800081a8 <uartintr+0x28>
    800081c4:	00004617          	auipc	a2,0x4
    800081c8:	b6c60613          	addi	a2,a2,-1172 # 8000bd30 <uart_tx_r>
    800081cc:	00004517          	auipc	a0,0x4
    800081d0:	b6c50513          	addi	a0,a0,-1172 # 8000bd38 <uart_tx_w>
    800081d4:	00063783          	ld	a5,0(a2)
    800081d8:	00053703          	ld	a4,0(a0)
    800081dc:	04f70263          	beq	a4,a5,80008220 <uartintr+0xa0>
    800081e0:	100005b7          	lui	a1,0x10000
    800081e4:	00005817          	auipc	a6,0x5
    800081e8:	e5c80813          	addi	a6,a6,-420 # 8000d040 <uart_tx_buf>
    800081ec:	01c0006f          	j	80008208 <uartintr+0x88>
    800081f0:	0006c703          	lbu	a4,0(a3)
    800081f4:	00f63023          	sd	a5,0(a2)
    800081f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081fc:	00063783          	ld	a5,0(a2)
    80008200:	00053703          	ld	a4,0(a0)
    80008204:	00f70e63          	beq	a4,a5,80008220 <uartintr+0xa0>
    80008208:	01f7f713          	andi	a4,a5,31
    8000820c:	00e806b3          	add	a3,a6,a4
    80008210:	0055c703          	lbu	a4,5(a1)
    80008214:	00178793          	addi	a5,a5,1
    80008218:	02077713          	andi	a4,a4,32
    8000821c:	fc071ae3          	bnez	a4,800081f0 <uartintr+0x70>
    80008220:	01813083          	ld	ra,24(sp)
    80008224:	01013403          	ld	s0,16(sp)
    80008228:	00813483          	ld	s1,8(sp)
    8000822c:	02010113          	addi	sp,sp,32
    80008230:	00008067          	ret
    80008234:	00004617          	auipc	a2,0x4
    80008238:	afc60613          	addi	a2,a2,-1284 # 8000bd30 <uart_tx_r>
    8000823c:	00004517          	auipc	a0,0x4
    80008240:	afc50513          	addi	a0,a0,-1284 # 8000bd38 <uart_tx_w>
    80008244:	00063783          	ld	a5,0(a2)
    80008248:	00053703          	ld	a4,0(a0)
    8000824c:	04f70263          	beq	a4,a5,80008290 <uartintr+0x110>
    80008250:	100005b7          	lui	a1,0x10000
    80008254:	00005817          	auipc	a6,0x5
    80008258:	dec80813          	addi	a6,a6,-532 # 8000d040 <uart_tx_buf>
    8000825c:	01c0006f          	j	80008278 <uartintr+0xf8>
    80008260:	0006c703          	lbu	a4,0(a3)
    80008264:	00f63023          	sd	a5,0(a2)
    80008268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000826c:	00063783          	ld	a5,0(a2)
    80008270:	00053703          	ld	a4,0(a0)
    80008274:	02f70063          	beq	a4,a5,80008294 <uartintr+0x114>
    80008278:	01f7f713          	andi	a4,a5,31
    8000827c:	00e806b3          	add	a3,a6,a4
    80008280:	0055c703          	lbu	a4,5(a1)
    80008284:	00178793          	addi	a5,a5,1
    80008288:	02077713          	andi	a4,a4,32
    8000828c:	fc071ae3          	bnez	a4,80008260 <uartintr+0xe0>
    80008290:	00008067          	ret
    80008294:	00008067          	ret

0000000080008298 <kinit>:
    80008298:	fc010113          	addi	sp,sp,-64
    8000829c:	02913423          	sd	s1,40(sp)
    800082a0:	fffff7b7          	lui	a5,0xfffff
    800082a4:	00006497          	auipc	s1,0x6
    800082a8:	dbb48493          	addi	s1,s1,-581 # 8000e05f <end+0xfff>
    800082ac:	02813823          	sd	s0,48(sp)
    800082b0:	01313c23          	sd	s3,24(sp)
    800082b4:	00f4f4b3          	and	s1,s1,a5
    800082b8:	02113c23          	sd	ra,56(sp)
    800082bc:	03213023          	sd	s2,32(sp)
    800082c0:	01413823          	sd	s4,16(sp)
    800082c4:	01513423          	sd	s5,8(sp)
    800082c8:	04010413          	addi	s0,sp,64
    800082cc:	000017b7          	lui	a5,0x1
    800082d0:	01100993          	li	s3,17
    800082d4:	00f487b3          	add	a5,s1,a5
    800082d8:	01b99993          	slli	s3,s3,0x1b
    800082dc:	06f9e063          	bltu	s3,a5,8000833c <kinit+0xa4>
    800082e0:	00005a97          	auipc	s5,0x5
    800082e4:	d80a8a93          	addi	s5,s5,-640 # 8000d060 <end>
    800082e8:	0754ec63          	bltu	s1,s5,80008360 <kinit+0xc8>
    800082ec:	0734fa63          	bgeu	s1,s3,80008360 <kinit+0xc8>
    800082f0:	00088a37          	lui	s4,0x88
    800082f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082f8:	00004917          	auipc	s2,0x4
    800082fc:	a4890913          	addi	s2,s2,-1464 # 8000bd40 <kmem>
    80008300:	00ca1a13          	slli	s4,s4,0xc
    80008304:	0140006f          	j	80008318 <kinit+0x80>
    80008308:	000017b7          	lui	a5,0x1
    8000830c:	00f484b3          	add	s1,s1,a5
    80008310:	0554e863          	bltu	s1,s5,80008360 <kinit+0xc8>
    80008314:	0534f663          	bgeu	s1,s3,80008360 <kinit+0xc8>
    80008318:	00001637          	lui	a2,0x1
    8000831c:	00100593          	li	a1,1
    80008320:	00048513          	mv	a0,s1
    80008324:	00000097          	auipc	ra,0x0
    80008328:	5e4080e7          	jalr	1508(ra) # 80008908 <__memset>
    8000832c:	00093783          	ld	a5,0(s2)
    80008330:	00f4b023          	sd	a5,0(s1)
    80008334:	00993023          	sd	s1,0(s2)
    80008338:	fd4498e3          	bne	s1,s4,80008308 <kinit+0x70>
    8000833c:	03813083          	ld	ra,56(sp)
    80008340:	03013403          	ld	s0,48(sp)
    80008344:	02813483          	ld	s1,40(sp)
    80008348:	02013903          	ld	s2,32(sp)
    8000834c:	01813983          	ld	s3,24(sp)
    80008350:	01013a03          	ld	s4,16(sp)
    80008354:	00813a83          	ld	s5,8(sp)
    80008358:	04010113          	addi	sp,sp,64
    8000835c:	00008067          	ret
    80008360:	00001517          	auipc	a0,0x1
    80008364:	3d050513          	addi	a0,a0,976 # 80009730 <digits+0x18>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	4b4080e7          	jalr	1204(ra) # 8000781c <panic>

0000000080008370 <freerange>:
    80008370:	fc010113          	addi	sp,sp,-64
    80008374:	000017b7          	lui	a5,0x1
    80008378:	02913423          	sd	s1,40(sp)
    8000837c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008380:	009504b3          	add	s1,a0,s1
    80008384:	fffff537          	lui	a0,0xfffff
    80008388:	02813823          	sd	s0,48(sp)
    8000838c:	02113c23          	sd	ra,56(sp)
    80008390:	03213023          	sd	s2,32(sp)
    80008394:	01313c23          	sd	s3,24(sp)
    80008398:	01413823          	sd	s4,16(sp)
    8000839c:	01513423          	sd	s5,8(sp)
    800083a0:	01613023          	sd	s6,0(sp)
    800083a4:	04010413          	addi	s0,sp,64
    800083a8:	00a4f4b3          	and	s1,s1,a0
    800083ac:	00f487b3          	add	a5,s1,a5
    800083b0:	06f5e463          	bltu	a1,a5,80008418 <freerange+0xa8>
    800083b4:	00005a97          	auipc	s5,0x5
    800083b8:	caca8a93          	addi	s5,s5,-852 # 8000d060 <end>
    800083bc:	0954e263          	bltu	s1,s5,80008440 <freerange+0xd0>
    800083c0:	01100993          	li	s3,17
    800083c4:	01b99993          	slli	s3,s3,0x1b
    800083c8:	0734fc63          	bgeu	s1,s3,80008440 <freerange+0xd0>
    800083cc:	00058a13          	mv	s4,a1
    800083d0:	00004917          	auipc	s2,0x4
    800083d4:	97090913          	addi	s2,s2,-1680 # 8000bd40 <kmem>
    800083d8:	00002b37          	lui	s6,0x2
    800083dc:	0140006f          	j	800083f0 <freerange+0x80>
    800083e0:	000017b7          	lui	a5,0x1
    800083e4:	00f484b3          	add	s1,s1,a5
    800083e8:	0554ec63          	bltu	s1,s5,80008440 <freerange+0xd0>
    800083ec:	0534fa63          	bgeu	s1,s3,80008440 <freerange+0xd0>
    800083f0:	00001637          	lui	a2,0x1
    800083f4:	00100593          	li	a1,1
    800083f8:	00048513          	mv	a0,s1
    800083fc:	00000097          	auipc	ra,0x0
    80008400:	50c080e7          	jalr	1292(ra) # 80008908 <__memset>
    80008404:	00093703          	ld	a4,0(s2)
    80008408:	016487b3          	add	a5,s1,s6
    8000840c:	00e4b023          	sd	a4,0(s1)
    80008410:	00993023          	sd	s1,0(s2)
    80008414:	fcfa76e3          	bgeu	s4,a5,800083e0 <freerange+0x70>
    80008418:	03813083          	ld	ra,56(sp)
    8000841c:	03013403          	ld	s0,48(sp)
    80008420:	02813483          	ld	s1,40(sp)
    80008424:	02013903          	ld	s2,32(sp)
    80008428:	01813983          	ld	s3,24(sp)
    8000842c:	01013a03          	ld	s4,16(sp)
    80008430:	00813a83          	ld	s5,8(sp)
    80008434:	00013b03          	ld	s6,0(sp)
    80008438:	04010113          	addi	sp,sp,64
    8000843c:	00008067          	ret
    80008440:	00001517          	auipc	a0,0x1
    80008444:	2f050513          	addi	a0,a0,752 # 80009730 <digits+0x18>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	3d4080e7          	jalr	980(ra) # 8000781c <panic>

0000000080008450 <kfree>:
    80008450:	fe010113          	addi	sp,sp,-32
    80008454:	00813823          	sd	s0,16(sp)
    80008458:	00113c23          	sd	ra,24(sp)
    8000845c:	00913423          	sd	s1,8(sp)
    80008460:	02010413          	addi	s0,sp,32
    80008464:	03451793          	slli	a5,a0,0x34
    80008468:	04079c63          	bnez	a5,800084c0 <kfree+0x70>
    8000846c:	00005797          	auipc	a5,0x5
    80008470:	bf478793          	addi	a5,a5,-1036 # 8000d060 <end>
    80008474:	00050493          	mv	s1,a0
    80008478:	04f56463          	bltu	a0,a5,800084c0 <kfree+0x70>
    8000847c:	01100793          	li	a5,17
    80008480:	01b79793          	slli	a5,a5,0x1b
    80008484:	02f57e63          	bgeu	a0,a5,800084c0 <kfree+0x70>
    80008488:	00001637          	lui	a2,0x1
    8000848c:	00100593          	li	a1,1
    80008490:	00000097          	auipc	ra,0x0
    80008494:	478080e7          	jalr	1144(ra) # 80008908 <__memset>
    80008498:	00004797          	auipc	a5,0x4
    8000849c:	8a878793          	addi	a5,a5,-1880 # 8000bd40 <kmem>
    800084a0:	0007b703          	ld	a4,0(a5)
    800084a4:	01813083          	ld	ra,24(sp)
    800084a8:	01013403          	ld	s0,16(sp)
    800084ac:	00e4b023          	sd	a4,0(s1)
    800084b0:	0097b023          	sd	s1,0(a5)
    800084b4:	00813483          	ld	s1,8(sp)
    800084b8:	02010113          	addi	sp,sp,32
    800084bc:	00008067          	ret
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	27050513          	addi	a0,a0,624 # 80009730 <digits+0x18>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	354080e7          	jalr	852(ra) # 8000781c <panic>

00000000800084d0 <kalloc>:
    800084d0:	fe010113          	addi	sp,sp,-32
    800084d4:	00813823          	sd	s0,16(sp)
    800084d8:	00913423          	sd	s1,8(sp)
    800084dc:	00113c23          	sd	ra,24(sp)
    800084e0:	02010413          	addi	s0,sp,32
    800084e4:	00004797          	auipc	a5,0x4
    800084e8:	85c78793          	addi	a5,a5,-1956 # 8000bd40 <kmem>
    800084ec:	0007b483          	ld	s1,0(a5)
    800084f0:	02048063          	beqz	s1,80008510 <kalloc+0x40>
    800084f4:	0004b703          	ld	a4,0(s1)
    800084f8:	00001637          	lui	a2,0x1
    800084fc:	00500593          	li	a1,5
    80008500:	00048513          	mv	a0,s1
    80008504:	00e7b023          	sd	a4,0(a5)
    80008508:	00000097          	auipc	ra,0x0
    8000850c:	400080e7          	jalr	1024(ra) # 80008908 <__memset>
    80008510:	01813083          	ld	ra,24(sp)
    80008514:	01013403          	ld	s0,16(sp)
    80008518:	00048513          	mv	a0,s1
    8000851c:	00813483          	ld	s1,8(sp)
    80008520:	02010113          	addi	sp,sp,32
    80008524:	00008067          	ret

0000000080008528 <initlock>:
    80008528:	ff010113          	addi	sp,sp,-16
    8000852c:	00813423          	sd	s0,8(sp)
    80008530:	01010413          	addi	s0,sp,16
    80008534:	00813403          	ld	s0,8(sp)
    80008538:	00b53423          	sd	a1,8(a0)
    8000853c:	00052023          	sw	zero,0(a0)
    80008540:	00053823          	sd	zero,16(a0)
    80008544:	01010113          	addi	sp,sp,16
    80008548:	00008067          	ret

000000008000854c <acquire>:
    8000854c:	fe010113          	addi	sp,sp,-32
    80008550:	00813823          	sd	s0,16(sp)
    80008554:	00913423          	sd	s1,8(sp)
    80008558:	00113c23          	sd	ra,24(sp)
    8000855c:	01213023          	sd	s2,0(sp)
    80008560:	02010413          	addi	s0,sp,32
    80008564:	00050493          	mv	s1,a0
    80008568:	10002973          	csrr	s2,sstatus
    8000856c:	100027f3          	csrr	a5,sstatus
    80008570:	ffd7f793          	andi	a5,a5,-3
    80008574:	10079073          	csrw	sstatus,a5
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	8e8080e7          	jalr	-1816(ra) # 80006e60 <mycpu>
    80008580:	07852783          	lw	a5,120(a0)
    80008584:	06078e63          	beqz	a5,80008600 <acquire+0xb4>
    80008588:	fffff097          	auipc	ra,0xfffff
    8000858c:	8d8080e7          	jalr	-1832(ra) # 80006e60 <mycpu>
    80008590:	07852783          	lw	a5,120(a0)
    80008594:	0004a703          	lw	a4,0(s1)
    80008598:	0017879b          	addiw	a5,a5,1
    8000859c:	06f52c23          	sw	a5,120(a0)
    800085a0:	04071063          	bnez	a4,800085e0 <acquire+0x94>
    800085a4:	00100713          	li	a4,1
    800085a8:	00070793          	mv	a5,a4
    800085ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800085b0:	0007879b          	sext.w	a5,a5
    800085b4:	fe079ae3          	bnez	a5,800085a8 <acquire+0x5c>
    800085b8:	0ff0000f          	fence
    800085bc:	fffff097          	auipc	ra,0xfffff
    800085c0:	8a4080e7          	jalr	-1884(ra) # 80006e60 <mycpu>
    800085c4:	01813083          	ld	ra,24(sp)
    800085c8:	01013403          	ld	s0,16(sp)
    800085cc:	00a4b823          	sd	a0,16(s1)
    800085d0:	00013903          	ld	s2,0(sp)
    800085d4:	00813483          	ld	s1,8(sp)
    800085d8:	02010113          	addi	sp,sp,32
    800085dc:	00008067          	ret
    800085e0:	0104b903          	ld	s2,16(s1)
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	87c080e7          	jalr	-1924(ra) # 80006e60 <mycpu>
    800085ec:	faa91ce3          	bne	s2,a0,800085a4 <acquire+0x58>
    800085f0:	00001517          	auipc	a0,0x1
    800085f4:	14850513          	addi	a0,a0,328 # 80009738 <digits+0x20>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	224080e7          	jalr	548(ra) # 8000781c <panic>
    80008600:	00195913          	srli	s2,s2,0x1
    80008604:	fffff097          	auipc	ra,0xfffff
    80008608:	85c080e7          	jalr	-1956(ra) # 80006e60 <mycpu>
    8000860c:	00197913          	andi	s2,s2,1
    80008610:	07252e23          	sw	s2,124(a0)
    80008614:	f75ff06f          	j	80008588 <acquire+0x3c>

0000000080008618 <release>:
    80008618:	fe010113          	addi	sp,sp,-32
    8000861c:	00813823          	sd	s0,16(sp)
    80008620:	00113c23          	sd	ra,24(sp)
    80008624:	00913423          	sd	s1,8(sp)
    80008628:	01213023          	sd	s2,0(sp)
    8000862c:	02010413          	addi	s0,sp,32
    80008630:	00052783          	lw	a5,0(a0)
    80008634:	00079a63          	bnez	a5,80008648 <release+0x30>
    80008638:	00001517          	auipc	a0,0x1
    8000863c:	10850513          	addi	a0,a0,264 # 80009740 <digits+0x28>
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	1dc080e7          	jalr	476(ra) # 8000781c <panic>
    80008648:	01053903          	ld	s2,16(a0)
    8000864c:	00050493          	mv	s1,a0
    80008650:	fffff097          	auipc	ra,0xfffff
    80008654:	810080e7          	jalr	-2032(ra) # 80006e60 <mycpu>
    80008658:	fea910e3          	bne	s2,a0,80008638 <release+0x20>
    8000865c:	0004b823          	sd	zero,16(s1)
    80008660:	0ff0000f          	fence
    80008664:	0f50000f          	fence	iorw,ow
    80008668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000866c:	ffffe097          	auipc	ra,0xffffe
    80008670:	7f4080e7          	jalr	2036(ra) # 80006e60 <mycpu>
    80008674:	100027f3          	csrr	a5,sstatus
    80008678:	0027f793          	andi	a5,a5,2
    8000867c:	04079a63          	bnez	a5,800086d0 <release+0xb8>
    80008680:	07852783          	lw	a5,120(a0)
    80008684:	02f05e63          	blez	a5,800086c0 <release+0xa8>
    80008688:	fff7871b          	addiw	a4,a5,-1
    8000868c:	06e52c23          	sw	a4,120(a0)
    80008690:	00071c63          	bnez	a4,800086a8 <release+0x90>
    80008694:	07c52783          	lw	a5,124(a0)
    80008698:	00078863          	beqz	a5,800086a8 <release+0x90>
    8000869c:	100027f3          	csrr	a5,sstatus
    800086a0:	0027e793          	ori	a5,a5,2
    800086a4:	10079073          	csrw	sstatus,a5
    800086a8:	01813083          	ld	ra,24(sp)
    800086ac:	01013403          	ld	s0,16(sp)
    800086b0:	00813483          	ld	s1,8(sp)
    800086b4:	00013903          	ld	s2,0(sp)
    800086b8:	02010113          	addi	sp,sp,32
    800086bc:	00008067          	ret
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	0a050513          	addi	a0,a0,160 # 80009760 <digits+0x48>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	154080e7          	jalr	340(ra) # 8000781c <panic>
    800086d0:	00001517          	auipc	a0,0x1
    800086d4:	07850513          	addi	a0,a0,120 # 80009748 <digits+0x30>
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	144080e7          	jalr	324(ra) # 8000781c <panic>

00000000800086e0 <holding>:
    800086e0:	00052783          	lw	a5,0(a0)
    800086e4:	00079663          	bnez	a5,800086f0 <holding+0x10>
    800086e8:	00000513          	li	a0,0
    800086ec:	00008067          	ret
    800086f0:	fe010113          	addi	sp,sp,-32
    800086f4:	00813823          	sd	s0,16(sp)
    800086f8:	00913423          	sd	s1,8(sp)
    800086fc:	00113c23          	sd	ra,24(sp)
    80008700:	02010413          	addi	s0,sp,32
    80008704:	01053483          	ld	s1,16(a0)
    80008708:	ffffe097          	auipc	ra,0xffffe
    8000870c:	758080e7          	jalr	1880(ra) # 80006e60 <mycpu>
    80008710:	01813083          	ld	ra,24(sp)
    80008714:	01013403          	ld	s0,16(sp)
    80008718:	40a48533          	sub	a0,s1,a0
    8000871c:	00153513          	seqz	a0,a0
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	02010113          	addi	sp,sp,32
    80008728:	00008067          	ret

000000008000872c <push_off>:
    8000872c:	fe010113          	addi	sp,sp,-32
    80008730:	00813823          	sd	s0,16(sp)
    80008734:	00113c23          	sd	ra,24(sp)
    80008738:	00913423          	sd	s1,8(sp)
    8000873c:	02010413          	addi	s0,sp,32
    80008740:	100024f3          	csrr	s1,sstatus
    80008744:	100027f3          	csrr	a5,sstatus
    80008748:	ffd7f793          	andi	a5,a5,-3
    8000874c:	10079073          	csrw	sstatus,a5
    80008750:	ffffe097          	auipc	ra,0xffffe
    80008754:	710080e7          	jalr	1808(ra) # 80006e60 <mycpu>
    80008758:	07852783          	lw	a5,120(a0)
    8000875c:	02078663          	beqz	a5,80008788 <push_off+0x5c>
    80008760:	ffffe097          	auipc	ra,0xffffe
    80008764:	700080e7          	jalr	1792(ra) # 80006e60 <mycpu>
    80008768:	07852783          	lw	a5,120(a0)
    8000876c:	01813083          	ld	ra,24(sp)
    80008770:	01013403          	ld	s0,16(sp)
    80008774:	0017879b          	addiw	a5,a5,1
    80008778:	06f52c23          	sw	a5,120(a0)
    8000877c:	00813483          	ld	s1,8(sp)
    80008780:	02010113          	addi	sp,sp,32
    80008784:	00008067          	ret
    80008788:	0014d493          	srli	s1,s1,0x1
    8000878c:	ffffe097          	auipc	ra,0xffffe
    80008790:	6d4080e7          	jalr	1748(ra) # 80006e60 <mycpu>
    80008794:	0014f493          	andi	s1,s1,1
    80008798:	06952e23          	sw	s1,124(a0)
    8000879c:	fc5ff06f          	j	80008760 <push_off+0x34>

00000000800087a0 <pop_off>:
    800087a0:	ff010113          	addi	sp,sp,-16
    800087a4:	00813023          	sd	s0,0(sp)
    800087a8:	00113423          	sd	ra,8(sp)
    800087ac:	01010413          	addi	s0,sp,16
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	6b0080e7          	jalr	1712(ra) # 80006e60 <mycpu>
    800087b8:	100027f3          	csrr	a5,sstatus
    800087bc:	0027f793          	andi	a5,a5,2
    800087c0:	04079663          	bnez	a5,8000880c <pop_off+0x6c>
    800087c4:	07852783          	lw	a5,120(a0)
    800087c8:	02f05a63          	blez	a5,800087fc <pop_off+0x5c>
    800087cc:	fff7871b          	addiw	a4,a5,-1
    800087d0:	06e52c23          	sw	a4,120(a0)
    800087d4:	00071c63          	bnez	a4,800087ec <pop_off+0x4c>
    800087d8:	07c52783          	lw	a5,124(a0)
    800087dc:	00078863          	beqz	a5,800087ec <pop_off+0x4c>
    800087e0:	100027f3          	csrr	a5,sstatus
    800087e4:	0027e793          	ori	a5,a5,2
    800087e8:	10079073          	csrw	sstatus,a5
    800087ec:	00813083          	ld	ra,8(sp)
    800087f0:	00013403          	ld	s0,0(sp)
    800087f4:	01010113          	addi	sp,sp,16
    800087f8:	00008067          	ret
    800087fc:	00001517          	auipc	a0,0x1
    80008800:	f6450513          	addi	a0,a0,-156 # 80009760 <digits+0x48>
    80008804:	fffff097          	auipc	ra,0xfffff
    80008808:	018080e7          	jalr	24(ra) # 8000781c <panic>
    8000880c:	00001517          	auipc	a0,0x1
    80008810:	f3c50513          	addi	a0,a0,-196 # 80009748 <digits+0x30>
    80008814:	fffff097          	auipc	ra,0xfffff
    80008818:	008080e7          	jalr	8(ra) # 8000781c <panic>

000000008000881c <push_on>:
    8000881c:	fe010113          	addi	sp,sp,-32
    80008820:	00813823          	sd	s0,16(sp)
    80008824:	00113c23          	sd	ra,24(sp)
    80008828:	00913423          	sd	s1,8(sp)
    8000882c:	02010413          	addi	s0,sp,32
    80008830:	100024f3          	csrr	s1,sstatus
    80008834:	100027f3          	csrr	a5,sstatus
    80008838:	0027e793          	ori	a5,a5,2
    8000883c:	10079073          	csrw	sstatus,a5
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	620080e7          	jalr	1568(ra) # 80006e60 <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	02078663          	beqz	a5,80008878 <push_on+0x5c>
    80008850:	ffffe097          	auipc	ra,0xffffe
    80008854:	610080e7          	jalr	1552(ra) # 80006e60 <mycpu>
    80008858:	07852783          	lw	a5,120(a0)
    8000885c:	01813083          	ld	ra,24(sp)
    80008860:	01013403          	ld	s0,16(sp)
    80008864:	0017879b          	addiw	a5,a5,1
    80008868:	06f52c23          	sw	a5,120(a0)
    8000886c:	00813483          	ld	s1,8(sp)
    80008870:	02010113          	addi	sp,sp,32
    80008874:	00008067          	ret
    80008878:	0014d493          	srli	s1,s1,0x1
    8000887c:	ffffe097          	auipc	ra,0xffffe
    80008880:	5e4080e7          	jalr	1508(ra) # 80006e60 <mycpu>
    80008884:	0014f493          	andi	s1,s1,1
    80008888:	06952e23          	sw	s1,124(a0)
    8000888c:	fc5ff06f          	j	80008850 <push_on+0x34>

0000000080008890 <pop_on>:
    80008890:	ff010113          	addi	sp,sp,-16
    80008894:	00813023          	sd	s0,0(sp)
    80008898:	00113423          	sd	ra,8(sp)
    8000889c:	01010413          	addi	s0,sp,16
    800088a0:	ffffe097          	auipc	ra,0xffffe
    800088a4:	5c0080e7          	jalr	1472(ra) # 80006e60 <mycpu>
    800088a8:	100027f3          	csrr	a5,sstatus
    800088ac:	0027f793          	andi	a5,a5,2
    800088b0:	04078463          	beqz	a5,800088f8 <pop_on+0x68>
    800088b4:	07852783          	lw	a5,120(a0)
    800088b8:	02f05863          	blez	a5,800088e8 <pop_on+0x58>
    800088bc:	fff7879b          	addiw	a5,a5,-1
    800088c0:	06f52c23          	sw	a5,120(a0)
    800088c4:	07853783          	ld	a5,120(a0)
    800088c8:	00079863          	bnez	a5,800088d8 <pop_on+0x48>
    800088cc:	100027f3          	csrr	a5,sstatus
    800088d0:	ffd7f793          	andi	a5,a5,-3
    800088d4:	10079073          	csrw	sstatus,a5
    800088d8:	00813083          	ld	ra,8(sp)
    800088dc:	00013403          	ld	s0,0(sp)
    800088e0:	01010113          	addi	sp,sp,16
    800088e4:	00008067          	ret
    800088e8:	00001517          	auipc	a0,0x1
    800088ec:	ea050513          	addi	a0,a0,-352 # 80009788 <digits+0x70>
    800088f0:	fffff097          	auipc	ra,0xfffff
    800088f4:	f2c080e7          	jalr	-212(ra) # 8000781c <panic>
    800088f8:	00001517          	auipc	a0,0x1
    800088fc:	e7050513          	addi	a0,a0,-400 # 80009768 <digits+0x50>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	f1c080e7          	jalr	-228(ra) # 8000781c <panic>

0000000080008908 <__memset>:
    80008908:	ff010113          	addi	sp,sp,-16
    8000890c:	00813423          	sd	s0,8(sp)
    80008910:	01010413          	addi	s0,sp,16
    80008914:	1a060e63          	beqz	a2,80008ad0 <__memset+0x1c8>
    80008918:	40a007b3          	neg	a5,a0
    8000891c:	0077f793          	andi	a5,a5,7
    80008920:	00778693          	addi	a3,a5,7
    80008924:	00b00813          	li	a6,11
    80008928:	0ff5f593          	andi	a1,a1,255
    8000892c:	fff6071b          	addiw	a4,a2,-1
    80008930:	1b06e663          	bltu	a3,a6,80008adc <__memset+0x1d4>
    80008934:	1cd76463          	bltu	a4,a3,80008afc <__memset+0x1f4>
    80008938:	1a078e63          	beqz	a5,80008af4 <__memset+0x1ec>
    8000893c:	00b50023          	sb	a1,0(a0)
    80008940:	00100713          	li	a4,1
    80008944:	1ae78463          	beq	a5,a4,80008aec <__memset+0x1e4>
    80008948:	00b500a3          	sb	a1,1(a0)
    8000894c:	00200713          	li	a4,2
    80008950:	1ae78a63          	beq	a5,a4,80008b04 <__memset+0x1fc>
    80008954:	00b50123          	sb	a1,2(a0)
    80008958:	00300713          	li	a4,3
    8000895c:	18e78463          	beq	a5,a4,80008ae4 <__memset+0x1dc>
    80008960:	00b501a3          	sb	a1,3(a0)
    80008964:	00400713          	li	a4,4
    80008968:	1ae78263          	beq	a5,a4,80008b0c <__memset+0x204>
    8000896c:	00b50223          	sb	a1,4(a0)
    80008970:	00500713          	li	a4,5
    80008974:	1ae78063          	beq	a5,a4,80008b14 <__memset+0x20c>
    80008978:	00b502a3          	sb	a1,5(a0)
    8000897c:	00700713          	li	a4,7
    80008980:	18e79e63          	bne	a5,a4,80008b1c <__memset+0x214>
    80008984:	00b50323          	sb	a1,6(a0)
    80008988:	00700e93          	li	t4,7
    8000898c:	00859713          	slli	a4,a1,0x8
    80008990:	00e5e733          	or	a4,a1,a4
    80008994:	01059e13          	slli	t3,a1,0x10
    80008998:	01c76e33          	or	t3,a4,t3
    8000899c:	01859313          	slli	t1,a1,0x18
    800089a0:	006e6333          	or	t1,t3,t1
    800089a4:	02059893          	slli	a7,a1,0x20
    800089a8:	40f60e3b          	subw	t3,a2,a5
    800089ac:	011368b3          	or	a7,t1,a7
    800089b0:	02859813          	slli	a6,a1,0x28
    800089b4:	0108e833          	or	a6,a7,a6
    800089b8:	03059693          	slli	a3,a1,0x30
    800089bc:	003e589b          	srliw	a7,t3,0x3
    800089c0:	00d866b3          	or	a3,a6,a3
    800089c4:	03859713          	slli	a4,a1,0x38
    800089c8:	00389813          	slli	a6,a7,0x3
    800089cc:	00f507b3          	add	a5,a0,a5
    800089d0:	00e6e733          	or	a4,a3,a4
    800089d4:	000e089b          	sext.w	a7,t3
    800089d8:	00f806b3          	add	a3,a6,a5
    800089dc:	00e7b023          	sd	a4,0(a5)
    800089e0:	00878793          	addi	a5,a5,8
    800089e4:	fed79ce3          	bne	a5,a3,800089dc <__memset+0xd4>
    800089e8:	ff8e7793          	andi	a5,t3,-8
    800089ec:	0007871b          	sext.w	a4,a5
    800089f0:	01d787bb          	addw	a5,a5,t4
    800089f4:	0ce88e63          	beq	a7,a4,80008ad0 <__memset+0x1c8>
    800089f8:	00f50733          	add	a4,a0,a5
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0017871b          	addiw	a4,a5,1
    80008a04:	0cc77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0027871b          	addiw	a4,a5,2
    80008a14:	0ac77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0037871b          	addiw	a4,a5,3
    80008a24:	0ac77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0047871b          	addiw	a4,a5,4
    80008a34:	08c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	0057871b          	addiw	a4,a5,5
    80008a44:	08c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	0067871b          	addiw	a4,a5,6
    80008a54:	06c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	0077871b          	addiw	a4,a5,7
    80008a64:	06c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0087871b          	addiw	a4,a5,8
    80008a74:	04c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0097871b          	addiw	a4,a5,9
    80008a84:	04c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	00a7871b          	addiw	a4,a5,10
    80008a94:	02c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	00b7871b          	addiw	a4,a5,11
    80008aa4:	02c77663          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	00c7871b          	addiw	a4,a5,12
    80008ab4:	00c77e63          	bgeu	a4,a2,80008ad0 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	00d7879b          	addiw	a5,a5,13
    80008ac4:	00c7f663          	bgeu	a5,a2,80008ad0 <__memset+0x1c8>
    80008ac8:	00f507b3          	add	a5,a0,a5
    80008acc:	00b78023          	sb	a1,0(a5)
    80008ad0:	00813403          	ld	s0,8(sp)
    80008ad4:	01010113          	addi	sp,sp,16
    80008ad8:	00008067          	ret
    80008adc:	00b00693          	li	a3,11
    80008ae0:	e55ff06f          	j	80008934 <__memset+0x2c>
    80008ae4:	00300e93          	li	t4,3
    80008ae8:	ea5ff06f          	j	8000898c <__memset+0x84>
    80008aec:	00100e93          	li	t4,1
    80008af0:	e9dff06f          	j	8000898c <__memset+0x84>
    80008af4:	00000e93          	li	t4,0
    80008af8:	e95ff06f          	j	8000898c <__memset+0x84>
    80008afc:	00000793          	li	a5,0
    80008b00:	ef9ff06f          	j	800089f8 <__memset+0xf0>
    80008b04:	00200e93          	li	t4,2
    80008b08:	e85ff06f          	j	8000898c <__memset+0x84>
    80008b0c:	00400e93          	li	t4,4
    80008b10:	e7dff06f          	j	8000898c <__memset+0x84>
    80008b14:	00500e93          	li	t4,5
    80008b18:	e75ff06f          	j	8000898c <__memset+0x84>
    80008b1c:	00600e93          	li	t4,6
    80008b20:	e6dff06f          	j	8000898c <__memset+0x84>

0000000080008b24 <__memmove>:
    80008b24:	ff010113          	addi	sp,sp,-16
    80008b28:	00813423          	sd	s0,8(sp)
    80008b2c:	01010413          	addi	s0,sp,16
    80008b30:	0e060863          	beqz	a2,80008c20 <__memmove+0xfc>
    80008b34:	fff6069b          	addiw	a3,a2,-1
    80008b38:	0006881b          	sext.w	a6,a3
    80008b3c:	0ea5e863          	bltu	a1,a0,80008c2c <__memmove+0x108>
    80008b40:	00758713          	addi	a4,a1,7
    80008b44:	00a5e7b3          	or	a5,a1,a0
    80008b48:	40a70733          	sub	a4,a4,a0
    80008b4c:	0077f793          	andi	a5,a5,7
    80008b50:	00f73713          	sltiu	a4,a4,15
    80008b54:	00174713          	xori	a4,a4,1
    80008b58:	0017b793          	seqz	a5,a5
    80008b5c:	00e7f7b3          	and	a5,a5,a4
    80008b60:	10078863          	beqz	a5,80008c70 <__memmove+0x14c>
    80008b64:	00900793          	li	a5,9
    80008b68:	1107f463          	bgeu	a5,a6,80008c70 <__memmove+0x14c>
    80008b6c:	0036581b          	srliw	a6,a2,0x3
    80008b70:	fff8081b          	addiw	a6,a6,-1
    80008b74:	02081813          	slli	a6,a6,0x20
    80008b78:	01d85893          	srli	a7,a6,0x1d
    80008b7c:	00858813          	addi	a6,a1,8
    80008b80:	00058793          	mv	a5,a1
    80008b84:	00050713          	mv	a4,a0
    80008b88:	01088833          	add	a6,a7,a6
    80008b8c:	0007b883          	ld	a7,0(a5)
    80008b90:	00878793          	addi	a5,a5,8
    80008b94:	00870713          	addi	a4,a4,8
    80008b98:	ff173c23          	sd	a7,-8(a4)
    80008b9c:	ff0798e3          	bne	a5,a6,80008b8c <__memmove+0x68>
    80008ba0:	ff867713          	andi	a4,a2,-8
    80008ba4:	02071793          	slli	a5,a4,0x20
    80008ba8:	0207d793          	srli	a5,a5,0x20
    80008bac:	00f585b3          	add	a1,a1,a5
    80008bb0:	40e686bb          	subw	a3,a3,a4
    80008bb4:	00f507b3          	add	a5,a0,a5
    80008bb8:	06e60463          	beq	a2,a4,80008c20 <__memmove+0xfc>
    80008bbc:	0005c703          	lbu	a4,0(a1)
    80008bc0:	00e78023          	sb	a4,0(a5)
    80008bc4:	04068e63          	beqz	a3,80008c20 <__memmove+0xfc>
    80008bc8:	0015c603          	lbu	a2,1(a1)
    80008bcc:	00100713          	li	a4,1
    80008bd0:	00c780a3          	sb	a2,1(a5)
    80008bd4:	04e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008bd8:	0025c603          	lbu	a2,2(a1)
    80008bdc:	00200713          	li	a4,2
    80008be0:	00c78123          	sb	a2,2(a5)
    80008be4:	02e68e63          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008be8:	0035c603          	lbu	a2,3(a1)
    80008bec:	00300713          	li	a4,3
    80008bf0:	00c781a3          	sb	a2,3(a5)
    80008bf4:	02e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008bf8:	0045c603          	lbu	a2,4(a1)
    80008bfc:	00400713          	li	a4,4
    80008c00:	00c78223          	sb	a2,4(a5)
    80008c04:	00e68e63          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008c08:	0055c603          	lbu	a2,5(a1)
    80008c0c:	00500713          	li	a4,5
    80008c10:	00c782a3          	sb	a2,5(a5)
    80008c14:	00e68663          	beq	a3,a4,80008c20 <__memmove+0xfc>
    80008c18:	0065c703          	lbu	a4,6(a1)
    80008c1c:	00e78323          	sb	a4,6(a5)
    80008c20:	00813403          	ld	s0,8(sp)
    80008c24:	01010113          	addi	sp,sp,16
    80008c28:	00008067          	ret
    80008c2c:	02061713          	slli	a4,a2,0x20
    80008c30:	02075713          	srli	a4,a4,0x20
    80008c34:	00e587b3          	add	a5,a1,a4
    80008c38:	f0f574e3          	bgeu	a0,a5,80008b40 <__memmove+0x1c>
    80008c3c:	02069613          	slli	a2,a3,0x20
    80008c40:	02065613          	srli	a2,a2,0x20
    80008c44:	fff64613          	not	a2,a2
    80008c48:	00e50733          	add	a4,a0,a4
    80008c4c:	00c78633          	add	a2,a5,a2
    80008c50:	fff7c683          	lbu	a3,-1(a5)
    80008c54:	fff78793          	addi	a5,a5,-1
    80008c58:	fff70713          	addi	a4,a4,-1
    80008c5c:	00d70023          	sb	a3,0(a4)
    80008c60:	fec798e3          	bne	a5,a2,80008c50 <__memmove+0x12c>
    80008c64:	00813403          	ld	s0,8(sp)
    80008c68:	01010113          	addi	sp,sp,16
    80008c6c:	00008067          	ret
    80008c70:	02069713          	slli	a4,a3,0x20
    80008c74:	02075713          	srli	a4,a4,0x20
    80008c78:	00170713          	addi	a4,a4,1
    80008c7c:	00e50733          	add	a4,a0,a4
    80008c80:	00050793          	mv	a5,a0
    80008c84:	0005c683          	lbu	a3,0(a1)
    80008c88:	00178793          	addi	a5,a5,1
    80008c8c:	00158593          	addi	a1,a1,1
    80008c90:	fed78fa3          	sb	a3,-1(a5)
    80008c94:	fee798e3          	bne	a5,a4,80008c84 <__memmove+0x160>
    80008c98:	f89ff06f          	j	80008c20 <__memmove+0xfc>

0000000080008c9c <__putc>:
    80008c9c:	fe010113          	addi	sp,sp,-32
    80008ca0:	00813823          	sd	s0,16(sp)
    80008ca4:	00113c23          	sd	ra,24(sp)
    80008ca8:	02010413          	addi	s0,sp,32
    80008cac:	00050793          	mv	a5,a0
    80008cb0:	fef40593          	addi	a1,s0,-17
    80008cb4:	00100613          	li	a2,1
    80008cb8:	00000513          	li	a0,0
    80008cbc:	fef407a3          	sb	a5,-17(s0)
    80008cc0:	fffff097          	auipc	ra,0xfffff
    80008cc4:	b3c080e7          	jalr	-1220(ra) # 800077fc <console_write>
    80008cc8:	01813083          	ld	ra,24(sp)
    80008ccc:	01013403          	ld	s0,16(sp)
    80008cd0:	02010113          	addi	sp,sp,32
    80008cd4:	00008067          	ret

0000000080008cd8 <__getc>:
    80008cd8:	fe010113          	addi	sp,sp,-32
    80008cdc:	00813823          	sd	s0,16(sp)
    80008ce0:	00113c23          	sd	ra,24(sp)
    80008ce4:	02010413          	addi	s0,sp,32
    80008ce8:	fe840593          	addi	a1,s0,-24
    80008cec:	00100613          	li	a2,1
    80008cf0:	00000513          	li	a0,0
    80008cf4:	fffff097          	auipc	ra,0xfffff
    80008cf8:	ae8080e7          	jalr	-1304(ra) # 800077dc <console_read>
    80008cfc:	fe844503          	lbu	a0,-24(s0)
    80008d00:	01813083          	ld	ra,24(sp)
    80008d04:	01013403          	ld	s0,16(sp)
    80008d08:	02010113          	addi	sp,sp,32
    80008d0c:	00008067          	ret

0000000080008d10 <console_handler>:
    80008d10:	fe010113          	addi	sp,sp,-32
    80008d14:	00813823          	sd	s0,16(sp)
    80008d18:	00113c23          	sd	ra,24(sp)
    80008d1c:	00913423          	sd	s1,8(sp)
    80008d20:	02010413          	addi	s0,sp,32
    80008d24:	14202773          	csrr	a4,scause
    80008d28:	100027f3          	csrr	a5,sstatus
    80008d2c:	0027f793          	andi	a5,a5,2
    80008d30:	06079e63          	bnez	a5,80008dac <console_handler+0x9c>
    80008d34:	00074c63          	bltz	a4,80008d4c <console_handler+0x3c>
    80008d38:	01813083          	ld	ra,24(sp)
    80008d3c:	01013403          	ld	s0,16(sp)
    80008d40:	00813483          	ld	s1,8(sp)
    80008d44:	02010113          	addi	sp,sp,32
    80008d48:	00008067          	ret
    80008d4c:	0ff77713          	andi	a4,a4,255
    80008d50:	00900793          	li	a5,9
    80008d54:	fef712e3          	bne	a4,a5,80008d38 <console_handler+0x28>
    80008d58:	ffffe097          	auipc	ra,0xffffe
    80008d5c:	6dc080e7          	jalr	1756(ra) # 80007434 <plic_claim>
    80008d60:	00a00793          	li	a5,10
    80008d64:	00050493          	mv	s1,a0
    80008d68:	02f50c63          	beq	a0,a5,80008da0 <console_handler+0x90>
    80008d6c:	fc0506e3          	beqz	a0,80008d38 <console_handler+0x28>
    80008d70:	00050593          	mv	a1,a0
    80008d74:	00001517          	auipc	a0,0x1
    80008d78:	91c50513          	addi	a0,a0,-1764 # 80009690 <CONSOLE_STATUS+0x680>
    80008d7c:	fffff097          	auipc	ra,0xfffff
    80008d80:	afc080e7          	jalr	-1284(ra) # 80007878 <__printf>
    80008d84:	01013403          	ld	s0,16(sp)
    80008d88:	01813083          	ld	ra,24(sp)
    80008d8c:	00048513          	mv	a0,s1
    80008d90:	00813483          	ld	s1,8(sp)
    80008d94:	02010113          	addi	sp,sp,32
    80008d98:	ffffe317          	auipc	t1,0xffffe
    80008d9c:	6d430067          	jr	1748(t1) # 8000746c <plic_complete>
    80008da0:	fffff097          	auipc	ra,0xfffff
    80008da4:	3e0080e7          	jalr	992(ra) # 80008180 <uartintr>
    80008da8:	fddff06f          	j	80008d84 <console_handler+0x74>
    80008dac:	00001517          	auipc	a0,0x1
    80008db0:	9e450513          	addi	a0,a0,-1564 # 80009790 <digits+0x78>
    80008db4:	fffff097          	auipc	ra,0xfffff
    80008db8:	a68080e7          	jalr	-1432(ra) # 8000781c <panic>
	...
