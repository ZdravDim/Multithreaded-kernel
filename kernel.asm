
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
    8000001c:	6f5060ef          	jal	ra,80006f10 <start>

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
    80001080:	5c1010ef          	jal	ra,80002e40 <_ZN5RiscV22handle_supervisor_trapEv>

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
    80001270:	5a0080e7          	jalr	1440(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
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
    800016d4:	c78080e7          	jalr	-904(ra) # 80003348 <_ZN10ThreadList4freeEv>
    delete blocked_threads;
    800016d8:	0084b503          	ld	a0,8(s1)
    800016dc:	00050663          	beqz	a0,800016e8 <_ZN3SemD1Ev+0x40>
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	b2c080e7          	jalr	-1236(ra) # 8000320c <_ZN10ThreadListdlEPv>
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
    8000172c:	ab4080e7          	jalr	-1356(ra) # 800031dc <_ZN10ThreadListnwEm>
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
    8000178c:	adc080e7          	jalr	-1316(ra) # 80003264 <_ZN10ThreadList9push_backEP3TCB>
    TCB::running = Scheduler::get();
    80001790:	00001097          	auipc	ra,0x1
    80001794:	35c080e7          	jalr	860(ra) # 80002aec <_ZN9Scheduler3getEv>
    80001798:	00050593          	mv	a1,a0
    8000179c:	00a93023          	sd	a0,0(s2)
    TCB::yield(old, TCB::running);
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00002097          	auipc	ra,0x2
    800017a8:	c8c080e7          	jalr	-884(ra) # 80003430 <_ZN3TCB5yieldEPS_S0_>
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
    800017e0:	b18080e7          	jalr	-1256(ra) # 800032f4 <_ZN10ThreadList12remove_firstEv>
    800017e4:	00050493          	mv	s1,a0
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    800017e8:	04854783          	lbu	a5,72(a0)
    800017ec:	02079c63          	bnez	a5,80001824 <_ZN3Sem7unblockEv+0x60>
    thread -> clear_from_timed_wait(false);
    800017f0:	00000593          	li	a1,0
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	ff0080e7          	jalr	-16(ra) # 800037e8 <_ZN3TCB21clear_from_timed_waitEb>
    thread -> status = TCB::RUNNABLE;
    80001800:	0204a023          	sw	zero,32(s1)
    Scheduler::put(thread);
    80001804:	00048513          	mv	a0,s1
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	274080e7          	jalr	628(ra) # 80002a7c <_ZN9Scheduler3putEP3TCB>
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret
    if (thread -> timed_wait) Scheduler::remove_from_sleep(thread);
    80001824:	00001097          	auipc	ra,0x1
    80001828:	334080e7          	jalr	820(ra) # 80002b58 <_ZN9Scheduler17remove_from_sleepEP3TCB>
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
    80001854:	8fc080e7          	jalr	-1796(ra) # 8000314c <_ZN10ThreadList9get_firstEv>
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
    8000197c:	2e4080e7          	jalr	740(ra) # 80002c5c <_ZN9Scheduler12put_to_sleepEm>
    int status = wait(handle);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	f18080e7          	jalr	-232(ra) # 8000189c <_ZN3Sem4waitEPS_>
    8000198c:	00050493          	mv	s1,a0
    Scheduler::remove_from_sleep(thread);
    80001990:	00090513          	mv	a0,s2
    80001994:	00001097          	auipc	ra,0x1
    80001998:	1c4080e7          	jalr	452(ra) # 80002b58 <_ZN9Scheduler17remove_from_sleepEP3TCB>
    thread -> clear_from_timed_wait(false);
    8000199c:	00000593          	li	a1,0
    800019a0:	00090513          	mv	a0,s2
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	e44080e7          	jalr	-444(ra) # 800037e8 <_ZN3TCB21clear_from_timed_waitEb>
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
    80001a14:	dfc080e7          	jalr	-516(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	a30080e7          	jalr	-1488(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001a44:	b7c080e7          	jalr	-1156(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001ae0:	51c080e7          	jalr	1308(ra) # 8000dff8 <_Unwind_Resume>

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
    while (zero_count--) __putc('0');
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
    80001b3c:	330080e7          	jalr	816(ra) # 80001e68 <_ZN3Con11getc_outputEv>
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

0000000080001b74 <_Z7workerAPv>:
}

sem_t sem;

[[noreturn]] void workerA(void*) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    while (true) {
        sem_timedwait(sem, 10);
    80001b84:	00a00593          	li	a1,10
    80001b88:	0000b517          	auipc	a0,0xb
    80001b8c:	2e853503          	ld	a0,744(a0) # 8000ce70 <sem>
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	9ac080e7          	jalr	-1620(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
        putc('A');
    80001b98:	04100513          	li	a0,65
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	ad0080e7          	jalr	-1328(ra) # 8000166c <_Z4putcc>
    while (true) {
    80001ba4:	fe1ff06f          	j	80001b84 <_Z7workerAPv+0x10>

0000000080001ba8 <_Z11printNumberm>:
void printNumber(uint64 num) {
    80001ba8:	fd010113          	addi	sp,sp,-48
    80001bac:	02113423          	sd	ra,40(sp)
    80001bb0:	02813023          	sd	s0,32(sp)
    80001bb4:	00913c23          	sd	s1,24(sp)
    80001bb8:	01213823          	sd	s2,16(sp)
    80001bbc:	01313423          	sd	s3,8(sp)
    80001bc0:	03010413          	addi	s0,sp,48
    80001bc4:	00050913          	mv	s2,a0
    __putc('\n');
    80001bc8:	00a00513          	li	a0,10
    80001bcc:	00007097          	auipc	ra,0x7
    80001bd0:	400080e7          	jalr	1024(ra) # 80008fcc <__putc>
    __putc('N');
    80001bd4:	04e00513          	li	a0,78
    80001bd8:	00007097          	auipc	ra,0x7
    80001bdc:	3f4080e7          	jalr	1012(ra) # 80008fcc <__putc>
    __putc(':');
    80001be0:	03a00513          	li	a0,58
    80001be4:	00007097          	auipc	ra,0x7
    80001be8:	3e8080e7          	jalr	1000(ra) # 80008fcc <__putc>
    __putc(' ');
    80001bec:	02000513          	li	a0,32
    80001bf0:	00007097          	auipc	ra,0x7
    80001bf4:	3dc080e7          	jalr	988(ra) # 80008fcc <__putc>
    if (!num) __putc('0');
    80001bf8:	00090863          	beqz	s2,80001c08 <_Z11printNumberm+0x60>
    uint64 num2 = 0, zero_count = 0;
    80001bfc:	00000993          	li	s3,0
    80001c00:	00000493          	li	s1,0
    80001c04:	01c0006f          	j	80001c20 <_Z11printNumberm+0x78>
    if (!num) __putc('0');
    80001c08:	03000513          	li	a0,48
    80001c0c:	00007097          	auipc	ra,0x7
    80001c10:	3c0080e7          	jalr	960(ra) # 80008fcc <__putc>
    80001c14:	fe9ff06f          	j	80001bfc <_Z11printNumberm+0x54>
        num /= 10;
    80001c18:	00a00793          	li	a5,10
    80001c1c:	02f95933          	divu	s2,s2,a5
    while (num) {
    80001c20:	02090463          	beqz	s2,80001c48 <_Z11printNumberm+0xa0>
        num2 *= 10;
    80001c24:	00249793          	slli	a5,s1,0x2
    80001c28:	009784b3          	add	s1,a5,s1
    80001c2c:	00149793          	slli	a5,s1,0x1
        num2 += num % 10;
    80001c30:	00a00493          	li	s1,10
    80001c34:	029974b3          	remu	s1,s2,s1
    80001c38:	00f484b3          	add	s1,s1,a5
        if (!num2) ++zero_count;
    80001c3c:	fc049ee3          	bnez	s1,80001c18 <_Z11printNumberm+0x70>
    80001c40:	00198993          	addi	s3,s3,1
    80001c44:	fd5ff06f          	j	80001c18 <_Z11printNumberm+0x70>
    while (num2) {
    80001c48:	02048063          	beqz	s1,80001c68 <_Z11printNumberm+0xc0>
        __putc(num2 % 10 + '0');
    80001c4c:	00a00913          	li	s2,10
    80001c50:	0324f533          	remu	a0,s1,s2
    80001c54:	03050513          	addi	a0,a0,48
    80001c58:	00007097          	auipc	ra,0x7
    80001c5c:	374080e7          	jalr	884(ra) # 80008fcc <__putc>
        num2 /= 10;
    80001c60:	0324d4b3          	divu	s1,s1,s2
    while (num2) {
    80001c64:	fe5ff06f          	j	80001c48 <_Z11printNumberm+0xa0>
    while (zero_count--) __putc('0');
    80001c68:	fff98493          	addi	s1,s3,-1
    80001c6c:	00098c63          	beqz	s3,80001c84 <_Z11printNumberm+0xdc>
    80001c70:	03000513          	li	a0,48
    80001c74:	00007097          	auipc	ra,0x7
    80001c78:	358080e7          	jalr	856(ra) # 80008fcc <__putc>
    80001c7c:	00048993          	mv	s3,s1
    80001c80:	fe9ff06f          	j	80001c68 <_Z11printNumberm+0xc0>
}
    80001c84:	02813083          	ld	ra,40(sp)
    80001c88:	02013403          	ld	s0,32(sp)
    80001c8c:	01813483          	ld	s1,24(sp)
    80001c90:	01013903          	ld	s2,16(sp)
    80001c94:	00813983          	ld	s3,8(sp)
    80001c98:	03010113          	addi	sp,sp,48
    80001c9c:	00008067          	ret

0000000080001ca0 <_Z15userMainWrapperPv>:
    }
}

void userMain();
void userMainWrapper(void *args) {
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
    userMain();
    80001cb0:	00005097          	auipc	ra,0x5
    80001cb4:	9f8080e7          	jalr	-1544(ra) # 800066a8 <_Z8userMainv>
}
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <main>:

int main() {
    80001cc8:	fd010113          	addi	sp,sp,-48
    80001ccc:	02113423          	sd	ra,40(sp)
    80001cd0:	02813023          	sd	s0,32(sp)
    80001cd4:	03010413          	addi	s0,sp,48
    /// Set interrupt routine handler
    RiscV::write_stvec((uint64) &RiscV::handle_interrupt);
    80001cd8:	0000b797          	auipc	a5,0xb
    80001cdc:	1207b783          	ld	a5,288(a5) # 8000cdf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void RiscV::write_stvec(uint64 val) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(val));
    80001ce0:	10579073          	csrw	stvec,a5
    /// Initialization
    MemoryAllocator::initialize();
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	b48080e7          	jalr	-1208(ra) # 8000282c <_ZN15MemoryAllocator10initializeEv>
    Con::initialize();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	084080e7          	jalr	132(ra) # 80001d70 <_ZN3Con10initializeEv>

    thread_t threads[4];

    thread_create(&threads[0], nullptr, nullptr);
    80001cf4:	00000613          	li	a2,0
    80001cf8:	00000593          	li	a1,0
    80001cfc:	fd040513          	addi	a0,s0,-48
    80001d00:	fffff097          	auipc	ra,0xfffff
    80001d04:	5f8080e7          	jalr	1528(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001d08:	fd043703          	ld	a4,-48(s0)
    80001d0c:	0000b797          	auipc	a5,0xb
    80001d10:	10c7b783          	ld	a5,268(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d14:	00e7b023          	sd	a4,0(a5)
inline void RiscV::write_sip(uint64 val) {
    __asm__ volatile ("csrw sip, %0" : : "r"(val));
}

inline void RiscV::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %0" : : "r"(mask));
    80001d18:	00200793          	li	a5,2
    80001d1c:	1007a073          	csrs	sstatus,a5

    /// Enable external interrupts
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    thread_create(&threads[1], kernelConsoleOutput, nullptr);
    80001d20:	00000613          	li	a2,0
    80001d24:	00000597          	auipc	a1,0x0
    80001d28:	e0058593          	addi	a1,a1,-512 # 80001b24 <_Z19kernelConsoleOutputPv>
    80001d2c:	fd840513          	addi	a0,s0,-40
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	5c8080e7          	jalr	1480(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], workerA, nullptr);
    80001d38:	00000613          	li	a2,0
    80001d3c:	00000597          	auipc	a1,0x0
    80001d40:	e3858593          	addi	a1,a1,-456 # 80001b74 <_Z7workerAPv>
    80001d44:	fe040513          	addi	a0,s0,-32
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	5b0080e7          	jalr	1456(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>

    sem_open(&sem, 1);
    80001d50:	00100593          	li	a1,1
    80001d54:	0000b517          	auipc	a0,0xb
    80001d58:	11c50513          	addi	a0,a0,284 # 8000ce70 <sem>
    80001d5c:	fffff097          	auipc	ra,0xfffff
    80001d60:	6ac080e7          	jalr	1708(ra) # 80001408 <_Z8sem_openPP3Semj>

    /// Test Everything
//    thread_create(&threads[2], userMainWrapper, nullptr);
    while (true) thread_dispatch();
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	668080e7          	jalr	1640(ra) # 800013cc <_Z15thread_dispatchv>
    80001d6c:	ff9ff06f          	j	80001d64 <main+0x9c>

0000000080001d70 <_ZN3Con10initializeEv>:
bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
    80001d70:	0000b797          	auipc	a5,0xb
    80001d74:	1087c783          	lbu	a5,264(a5) # 8000ce78 <_ZN3Con11initializedE>
    80001d78:	00078463          	beqz	a5,80001d80 <_ZN3Con10initializeEv+0x10>
    80001d7c:	00008067          	ret
void Con::initialize() {
    80001d80:	fe010113          	addi	sp,sp,-32
    80001d84:	00113c23          	sd	ra,24(sp)
    80001d88:	00813823          	sd	s0,16(sp)
    80001d8c:	00913423          	sd	s1,8(sp)
    80001d90:	01213023          	sd	s2,0(sp)
    80001d94:	02010413          	addi	s0,sp,32
        initialized = true;
    80001d98:	00100793          	li	a5,1
    80001d9c:	0000b717          	auipc	a4,0xb
    80001da0:	0cf70e23          	sb	a5,220(a4) # 8000ce78 <_ZN3Con11initializedE>
        input_buffer = new BoundedBuffer();
    80001da4:	21000513          	li	a0,528
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	ba4080e7          	jalr	-1116(ra) # 8000294c <_ZN13BoundedBuffernwEm>
    80001db0:	00050493          	mv	s1,a0
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	b00080e7          	jalr	-1280(ra) # 800028b4 <_ZN13BoundedBufferC1Ev>
    80001dbc:	0000b797          	auipc	a5,0xb
    80001dc0:	0c97b223          	sd	s1,196(a5) # 8000ce80 <_ZN3Con12input_bufferE>
        output_buffer = new BoundedBuffer();
    80001dc4:	21000513          	li	a0,528
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	b84080e7          	jalr	-1148(ra) # 8000294c <_ZN13BoundedBuffernwEm>
    80001dd0:	00050493          	mv	s1,a0
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	ae0080e7          	jalr	-1312(ra) # 800028b4 <_ZN13BoundedBufferC1Ev>
    80001ddc:	0000b797          	auipc	a5,0xb
    80001de0:	0a97b623          	sd	s1,172(a5) # 8000ce88 <_ZN3Con13output_bufferE>
    }
}
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	00013903          	ld	s2,0(sp)
    80001df4:	02010113          	addi	sp,sp,32
    80001df8:	00008067          	ret
    80001dfc:	00050913          	mv	s2,a0
        input_buffer = new BoundedBuffer();
    80001e00:	00048513          	mv	a0,s1
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	b78080e7          	jalr	-1160(ra) # 8000297c <_ZN13BoundedBufferdlEPv>
    80001e0c:	00090513          	mv	a0,s2
    80001e10:	0000c097          	auipc	ra,0xc
    80001e14:	1e8080e7          	jalr	488(ra) # 8000dff8 <_Unwind_Resume>
    80001e18:	00050913          	mv	s2,a0
        output_buffer = new BoundedBuffer();
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	b5c080e7          	jalr	-1188(ra) # 8000297c <_ZN13BoundedBufferdlEPv>
    80001e28:	00090513          	mv	a0,s2
    80001e2c:	0000c097          	auipc	ra,0xc
    80001e30:	1cc080e7          	jalr	460(ra) # 8000dff8 <_Unwind_Resume>

0000000080001e34 <_ZN3Con11putc_outputEc>:

void Con::putc_output(char c) {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    80001e44:	00050593          	mv	a1,a0
    output_buffer -> putc(c);
    80001e48:	0000b517          	auipc	a0,0xb
    80001e4c:	04053503          	ld	a0,64(a0) # 8000ce88 <_ZN3Con13output_bufferE>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	b54080e7          	jalr	-1196(ra) # 800029a4 <_ZN13BoundedBuffer4putcEc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN3Con11getc_outputEv>:

char Con::getc_output() {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    return output_buffer -> getc();
    80001e78:	0000b517          	auipc	a0,0xb
    80001e7c:	01053503          	ld	a0,16(a0) # 8000ce88 <_ZN3Con13output_bufferE>
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	b90080e7          	jalr	-1136(ra) # 80002a10 <_ZN13BoundedBuffer4getcEv>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN3Con10putc_inputEc>:

void Con::putc_input(char c) {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    80001ea8:	00050593          	mv	a1,a0
    input_buffer -> putc(c);
    80001eac:	0000b517          	auipc	a0,0xb
    80001eb0:	fd453503          	ld	a0,-44(a0) # 8000ce80 <_ZN3Con12input_bufferE>
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	af0080e7          	jalr	-1296(ra) # 800029a4 <_ZN13BoundedBuffer4putcEc>
}
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN3Con10getc_inputEv>:

char Con::getc_input() {
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    return input_buffer -> getc();
    80001edc:	0000b517          	auipc	a0,0xb
    80001ee0:	fa453503          	ld	a0,-92(a0) # 8000ce80 <_ZN3Con12input_bufferE>
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	b2c080e7          	jalr	-1236(ra) # 80002a10 <_ZN13BoundedBuffer4getcEv>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN6Thread12start_helperEPv>:

Thread::~Thread() {
    if (myHandle -> is_finished()) delete myHandle;
}

void Thread::start_helper(void *args) {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	00813023          	sd	s0,0(sp)
    80001f08:	01010413          	addi	s0,sp,16
    auto* thread = (Thread*) args;
    if (!thread -> body) thread -> run();
    80001f0c:	01053783          	ld	a5,16(a0)
    80001f10:	00078c63          	beqz	a5,80001f28 <_ZN6Thread12start_helperEPv+0x2c>
    else thread -> body(args);
    80001f14:	000780e7          	jalr	a5
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret
    if (!thread -> body) thread -> run();
    80001f28:	00053783          	ld	a5,0(a0)
    80001f2c:	0107b783          	ld	a5,16(a5)
    80001f30:	000780e7          	jalr	a5
    80001f34:	fe5ff06f          	j	80001f18 <_ZN6Thread12start_helperEPv+0x1c>

0000000080001f38 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	02010413          	addi	s0,sp,32
    80001f4c:	00050493          	mv	s1,a0
    80001f50:	0000b797          	auipc	a5,0xb
    80001f54:	c9878793          	addi	a5,a5,-872 # 8000cbe8 <_ZTV6Thread+0x10>
    80001f58:	00f53023          	sd	a5,0(a0)
    if (myHandle -> is_finished()) delete myHandle;
    80001f5c:	00853503          	ld	a0,8(a0)
    80001f60:	00002097          	auipc	ra,0x2
    80001f64:	864080e7          	jalr	-1948(ra) # 800037c4 <_ZNK3TCB11is_finishedEv>
    80001f68:	00050a63          	beqz	a0,80001f7c <_ZN6ThreadD1Ev+0x44>
    80001f6c:	0084b503          	ld	a0,8(s1)
    80001f70:	00050663          	beqz	a0,80001f7c <_ZN6ThreadD1Ev+0x44>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	72c080e7          	jalr	1836(ra) # 800036a0 <_ZN3TCBdlEPv>
}
    80001f7c:	01813083          	ld	ra,24(sp)
    80001f80:	01013403          	ld	s0,16(sp)
    80001f84:	00813483          	ld	s1,8(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001f90:	0000b797          	auipc	a5,0xb
    80001f94:	c8078793          	addi	a5,a5,-896 # 8000cc10 <_ZTV9Semaphore+0x10>
    80001f98:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    80001f9c:	00853503          	ld	a0,8(a0)
    80001fa0:	02050663          	beqz	a0,80001fcc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	4a4080e7          	jalr	1188(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret
    80001fcc:	00008067          	ret

0000000080001fd0 <_Znwm>:
void* operator new(size_t size){
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	278080e7          	jalr	632(ra) # 80001258 <_Z9mem_allocm>
}
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZdlPv>:
void operator delete(void* p) noexcept {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00113423          	sd	ra,8(sp)
    80002000:	00813023          	sd	s0,0(sp)
    80002004:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002008:	fffff097          	auipc	ra,0xfffff
    8000200c:	2a4080e7          	jalr	676(ra) # 800012ac <_Z8mem_freePv>
}
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00013403          	ld	s0,0(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002020:	fe010113          	addi	sp,sp,-32
    80002024:	00113c23          	sd	ra,24(sp)
    80002028:	00813823          	sd	s0,16(sp)
    8000202c:	00913423          	sd	s1,8(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	00050493          	mv	s1,a0
}
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	f00080e7          	jalr	-256(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80002040:	00048513          	mv	a0,s1
    80002044:	00000097          	auipc	ra,0x0
    80002048:	fb4080e7          	jalr	-76(ra) # 80001ff8 <_ZdlPv>
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	02010113          	addi	sp,sp,32
    8000205c:	00008067          	ret

0000000080002060 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002060:	fe010113          	addi	sp,sp,-32
    80002064:	00113c23          	sd	ra,24(sp)
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00913423          	sd	s1,8(sp)
    80002070:	02010413          	addi	s0,sp,32
    80002074:	00050493          	mv	s1,a0
}
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f18080e7          	jalr	-232(ra) # 80001f90 <_ZN9SemaphoreD1Ev>
    80002080:	00048513          	mv	a0,s1
    80002084:	00000097          	auipc	ra,0x0
    80002088:	f74080e7          	jalr	-140(ra) # 80001ff8 <_ZdlPv>
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	02010113          	addi	sp,sp,32
    8000209c:	00008067          	ret

00000000800020a0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	0000b797          	auipc	a5,0xb
    800020b0:	b3c78793          	addi	a5,a5,-1220 # 8000cbe8 <_ZTV6Thread+0x10>
    800020b4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020b8:	00053423          	sd	zero,8(a0)
    this -> body = body;
    800020bc:	00b53823          	sd	a1,16(a0)
    this -> arg = arg;
    800020c0:	00c53c23          	sd	a2,24(a0)
}
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00813423          	sd	s0,8(sp)
    800020d8:	01010413          	addi	s0,sp,16
    800020dc:	0000b797          	auipc	a5,0xb
    800020e0:	b0c78793          	addi	a5,a5,-1268 # 8000cbe8 <_ZTV6Thread+0x10>
    800020e4:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800020e8:	00053423          	sd	zero,8(a0)
    body = nullptr;
    800020ec:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    800020f0:	00053c23          	sd	zero,24(a0)
}
    800020f4:	00813403          	ld	s0,8(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <_ZN6Thread5startEv>:
int Thread::start() {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, start_helper, this);
    80002110:	00050613          	mv	a2,a0
    80002114:	00000597          	auipc	a1,0x0
    80002118:	de858593          	addi	a1,a1,-536 # 80001efc <_ZN6Thread12start_helperEPv>
    8000211c:	00850513          	addi	a0,a0,8
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	1d8080e7          	jalr	472(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002128:	00813083          	ld	ra,8(sp)
    8000212c:	00013403          	ld	s0,0(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	00813023          	sd	s0,0(sp)
    80002144:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	284080e7          	jalr	644(ra) # 800013cc <_Z15thread_dispatchv>
}
    80002150:	00813083          	ld	ra,8(sp)
    80002154:	00013403          	ld	s0,0(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00113423          	sd	ra,8(sp)
    80002168:	00813023          	sd	s0,0(sp)
    8000216c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	464080e7          	jalr	1124(ra) # 800015d4 <_Z10time_sleepm>
}
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    80002198:	0000b797          	auipc	a5,0xb
    8000219c:	a7878793          	addi	a5,a5,-1416 # 8000cc10 <_ZTV9Semaphore+0x10>
    800021a0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800021a4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800021a8:	00850513          	addi	a0,a0,8
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	25c080e7          	jalr	604(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    800021c4:	00853503          	ld	a0,8(a0)
    800021c8:	02050663          	beqz	a0,800021f4 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_wait(myHandle);
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	2c8080e7          	jalr	712(ra) # 800014a4 <_Z8sem_waitP3Sem>
    return -1;
}
    800021e4:	00813083          	ld	ra,8(sp)
    800021e8:	00013403          	ld	s0,0(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret
    return -1;
    800021f4:	fff00513          	li	a0,-1
}
    800021f8:	00008067          	ret

00000000800021fc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    800021fc:	00853503          	ld	a0,8(a0)
    80002200:	02050663          	beqz	a0,8000222c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00113423          	sd	ra,8(sp)
    8000220c:	00813023          	sd	s0,0(sp)
    80002210:	01010413          	addi	s0,sp,16
    if (myHandle) return sem_signal(myHandle);
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	2dc080e7          	jalr	732(ra) # 800014f0 <_Z10sem_signalP3Sem>
    return -1;
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret
    return -1;
    8000222c:	fff00513          	li	a0,-1
}
    80002230:	00008067          	ret

0000000080002234 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00113423          	sd	ra,8(sp)
    8000223c:	00813023          	sd	s0,0(sp)
    80002240:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80002244:	00853503          	ld	a0,8(a0)
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	2f4080e7          	jalr	756(ra) # 8000153c <_Z13sem_timedwaitP3Semm>
}
    80002250:	00813083          	ld	ra,8(sp)
    80002254:	00013403          	ld	s0,0(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00113423          	sd	ra,8(sp)
    80002268:	00813023          	sd	s0,0(sp)
    8000226c:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002270:	00853503          	ld	a0,8(a0)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	314080e7          	jalr	788(ra) # 80001588 <_Z11sem_trywaitP3Sem>
}
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    /// TODO terminate
}
    80002298:	00813403          	ld	s0,8(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	01213023          	sd	s2,0(sp)
    800022b8:	02010413          	addi	s0,sp,32
    800022bc:	00050493          	mv	s1,a0
    800022c0:	00058913          	mv	s2,a1
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	e0c080e7          	jalr	-500(ra) # 800020d0 <_ZN6ThreadC1Ev>
    800022cc:	0000b797          	auipc	a5,0xb
    800022d0:	8ec78793          	addi	a5,a5,-1812 # 8000cbb8 <_ZTV14PeriodicThread+0x10>
    800022d4:	00f4b023          	sd	a5,0(s1)
    this -> period = period;
    800022d8:	0324b023          	sd	s2,32(s1)
}
    800022dc:	01813083          	ld	ra,24(sp)
    800022e0:	01013403          	ld	s0,16(sp)
    800022e4:	00813483          	ld	s1,8(sp)
    800022e8:	00013903          	ld	s2,0(sp)
    800022ec:	02010113          	addi	sp,sp,32
    800022f0:	00008067          	ret

00000000800022f4 <_ZN7Console4getcEv>:

char Console::getc() {
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00113423          	sd	ra,8(sp)
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	01010413          	addi	s0,sp,16
    return ::getc();
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	31c080e7          	jalr	796(ra) # 80001620 <_Z4getcv>
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	340080e7          	jalr	832(ra) # 8000166c <_Z4putcc>
}
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    80002384:	0000b797          	auipc	a5,0xb
    80002388:	83478793          	addi	a5,a5,-1996 # 8000cbb8 <_ZTV14PeriodicThread+0x10>
    8000238c:	00f53023          	sd	a5,0(a0)
    80002390:	00000097          	auipc	ra,0x0
    80002394:	ba8080e7          	jalr	-1112(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret

00000000800023a8 <_ZN14PeriodicThreadD0Ev>:
    800023a8:	fe010113          	addi	sp,sp,-32
    800023ac:	00113c23          	sd	ra,24(sp)
    800023b0:	00813823          	sd	s0,16(sp)
    800023b4:	00913423          	sd	s1,8(sp)
    800023b8:	02010413          	addi	s0,sp,32
    800023bc:	00050493          	mv	s1,a0
    800023c0:	0000a797          	auipc	a5,0xa
    800023c4:	7f878793          	addi	a5,a5,2040 # 8000cbb8 <_ZTV14PeriodicThread+0x10>
    800023c8:	00f53023          	sd	a5,0(a0)
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	b6c080e7          	jalr	-1172(ra) # 80001f38 <_ZN6ThreadD1Ev>
    800023d4:	00048513          	mv	a0,s1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	c20080e7          	jalr	-992(ra) # 80001ff8 <_ZdlPv>
    800023e0:	01813083          	ld	ra,24(sp)
    800023e4:	01013403          	ld	s0,16(sp)
    800023e8:	00813483          	ld	s1,8(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret

00000000800023f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>:
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    }
}

/// helper function for removing element from linked list
void MemoryAllocator::removeNode(MemSeg *toRemove, MemSeg *nextSeg, bool newIsCreated, bool free_list) {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    if (toRemove -> prev) toRemove -> prev -> next = nextSeg;
    80002400:	00853783          	ld	a5,8(a0)
    80002404:	02078463          	beqz	a5,8000242c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x38>
    80002408:	00b7b823          	sd	a1,16(a5)
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    if (toRemove -> next) toRemove -> next -> prev = (newIsCreated) ? nextSeg : toRemove -> prev;
    8000240c:	01053783          	ld	a5,16(a0)
    80002410:	00078863          	beqz	a5,80002420 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x2c>
    80002414:	00061463          	bnez	a2,8000241c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x28>
    80002418:	00853583          	ld	a1,8(a0)
    8000241c:	00b7b423          	sd	a1,8(a5)
}
    80002420:	00813403          	ld	s0,8(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret
    else (free_list ? freeSegHead : usedSegHead) = nextSeg;
    8000242c:	00068863          	beqz	a3,8000243c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x48>
    80002430:	0000b797          	auipc	a5,0xb
    80002434:	a6b7b023          	sd	a1,-1440(a5) # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    80002438:	fd5ff06f          	j	8000240c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>
    8000243c:	0000b797          	auipc	a5,0xb
    80002440:	a4b7be23          	sd	a1,-1444(a5) # 8000ce98 <_ZN15MemoryAllocator11usedSegHeadE>
    80002444:	fc9ff06f          	j	8000240c <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb+0x18>

0000000080002448 <_ZN15MemoryAllocator9mem_allocEm>:

/// allocate `size` blocks
void *MemoryAllocator::mem_alloc(size_t size) {
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	01213023          	sd	s2,0(sp)
    8000245c:	02010413          	addi	s0,sp,32
    if (size <= 0) return nullptr;
    80002460:	10050263          	beqz	a0,80002564 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
    size_t bytesToAllocate = size * MEM_BLOCK_SIZE;
    80002464:	00651913          	slli	s2,a0,0x6
    MemSeg *tmp = freeSegHead;
    80002468:	0000b497          	auipc	s1,0xb
    8000246c:	a284b483          	ld	s1,-1496(s1) # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    while (tmp) {
    80002470:	0c048263          	beqz	s1,80002534 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if (tmp -> size < bytesToAllocate) {
    80002474:	0004b783          	ld	a5,0(s1)
    80002478:	0527e663          	bltu	a5,s2,800024c4 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            tmp = tmp -> next;
            continue;
        }
        /// update free memory list
        size_t remaining = tmp -> size - bytesToAllocate;
    8000247c:	412787b3          	sub	a5,a5,s2
        if (remaining <= sizeof(MemSeg)) removeNode(tmp, tmp->next, false, true);
    80002480:	01800713          	li	a4,24
    80002484:	04f76463          	bltu	a4,a5,800024cc <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002488:	00100693          	li	a3,1
    8000248c:	00000613          	li	a2,0
    80002490:	0104b583          	ld	a1,16(s1)
    80002494:	00048513          	mv	a0,s1
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	f5c080e7          	jalr	-164(ra) # 800023f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
        }

        /// update used memory list
        /// insert segment after tmp2
        MemSeg* tmp2 = nullptr;
        if (usedSegHead && (char*) tmp > (char*) usedSegHead)
    800024a0:	0000b797          	auipc	a5,0xb
    800024a4:	9f87b783          	ld	a5,-1544(a5) # 8000ce98 <_ZN15MemoryAllocator11usedSegHeadE>
    800024a8:	04078a63          	beqz	a5,800024fc <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800024ac:	0497fc63          	bgeu	a5,s1,80002504 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
            for (tmp2 = usedSegHead; tmp2 -> next && (char*) tmp > (char*) (tmp2 -> next); tmp2 = tmp2 -> next);
    800024b0:	00078713          	mv	a4,a5
    800024b4:	0107b783          	ld	a5,16(a5)
    800024b8:	04078863          	beqz	a5,80002508 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800024bc:	fe97eae3          	bltu	a5,s1,800024b0 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    800024c0:	0480006f          	j	80002508 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
            tmp = tmp -> next;
    800024c4:	0104b483          	ld	s1,16(s1)
    while (tmp) {
    800024c8:	fa9ff06f          	j	80002470 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            MemSeg* newFree = (MemSeg*) ((char*) tmp + bytesToAllocate);
    800024cc:	012485b3          	add	a1,s1,s2
            newFree -> prev = tmp -> prev;
    800024d0:	0084b703          	ld	a4,8(s1)
    800024d4:	00e5b423          	sd	a4,8(a1)
            newFree -> next = tmp -> next;
    800024d8:	0104b703          	ld	a4,16(s1)
    800024dc:	00e5b823          	sd	a4,16(a1)
            newFree -> size = remaining;
    800024e0:	00f5b023          	sd	a5,0(a1)
            removeNode(tmp, newFree, true, true);
    800024e4:	00100693          	li	a3,1
    800024e8:	00100613          	li	a2,1
    800024ec:	00048513          	mv	a0,s1
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	f04080e7          	jalr	-252(ra) # 800023f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    800024f8:	fa9ff06f          	j	800024a0 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        MemSeg* tmp2 = nullptr;
    800024fc:	00078713          	mv	a4,a5
    80002500:	0080006f          	j	80002508 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002504:	00000713          	li	a4,0
        MemSeg* newUsed = (MemSeg*) tmp;
        newUsed -> size = bytesToAllocate;
    80002508:	0124b023          	sd	s2,0(s1)
        newUsed -> prev = tmp2;
    8000250c:	00e4b423          	sd	a4,8(s1)
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002510:	04070063          	beqz	a4,80002550 <_ZN15MemoryAllocator9mem_allocEm+0x108>
    80002514:	01073783          	ld	a5,16(a4)
    80002518:	00f4b823          	sd	a5,16(s1)
        if (tmp2) tmp2 -> next = newUsed;
    8000251c:	02070e63          	beqz	a4,80002558 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    80002520:	00973823          	sd	s1,16(a4)
        else usedSegHead = newUsed;
        if (newUsed -> next) newUsed -> next -> prev = newUsed;
    80002524:	0104b783          	ld	a5,16(s1)
    80002528:	00078463          	beqz	a5,80002530 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    8000252c:	0097b423          	sd	s1,8(a5)
        return (void*) ((char*)tmp + sizeof(MemSeg));
    80002530:	01848493          	addi	s1,s1,24
    }
    return nullptr;
}
    80002534:	00048513          	mv	a0,s1
    80002538:	01813083          	ld	ra,24(sp)
    8000253c:	01013403          	ld	s0,16(sp)
    80002540:	00813483          	ld	s1,8(sp)
    80002544:	00013903          	ld	s2,0(sp)
    80002548:	02010113          	addi	sp,sp,32
    8000254c:	00008067          	ret
        newUsed -> next = (tmp2) ? tmp2 -> next : nullptr;
    80002550:	00070793          	mv	a5,a4
    80002554:	fc5ff06f          	j	80002518 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        else usedSegHead = newUsed;
    80002558:	0000b797          	auipc	a5,0xb
    8000255c:	9497b023          	sd	s1,-1728(a5) # 8000ce98 <_ZN15MemoryAllocator11usedSegHeadE>
    80002560:	fc5ff06f          	j	80002524 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
    if (size <= 0) return nullptr;
    80002564:	00000493          	li	s1,0
    80002568:	fcdff06f          	j	80002534 <_ZN15MemoryAllocator9mem_allocEm+0xec>

000000008000256c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>:
    }
    return 0;
}

/// join free segment with next if possible
void MemoryAllocator::tryToJoin(MemSeg *seg) {
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00813423          	sd	s0,8(sp)
    80002574:	01010413          	addi	s0,sp,16
    if (seg -> next && (char*) seg + seg -> size == (char*) seg -> next) {
    80002578:	01053783          	ld	a5,16(a0)
    8000257c:	00078863          	beqz	a5,8000258c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    80002580:	00053703          	ld	a4,0(a0)
    80002584:	00e506b3          	add	a3,a0,a4
    80002588:	00d78863          	beq	a5,a3,80002598 <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x2c>
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
        seg -> next = seg -> next -> next;
        if (seg -> next) seg -> next -> prev = seg;
    }
}
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret
        seg -> size += sizeof(MemSeg) + seg -> next -> size;
    80002598:	0007b683          	ld	a3,0(a5)
    8000259c:	00d70733          	add	a4,a4,a3
    800025a0:	01870713          	addi	a4,a4,24
    800025a4:	00e53023          	sd	a4,0(a0)
        seg -> next = seg -> next -> next;
    800025a8:	0107b783          	ld	a5,16(a5)
    800025ac:	00f53823          	sd	a5,16(a0)
        if (seg -> next) seg -> next -> prev = seg;
    800025b0:	fc078ee3          	beqz	a5,8000258c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>
    800025b4:	00a7b423          	sd	a0,8(a5)
}
    800025b8:	fd5ff06f          	j	8000258c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE+0x20>

00000000800025bc <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025bc:	14050a63          	beqz	a0,80002710 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
int MemoryAllocator::mem_free(void *addr) {
    800025c0:	fd010113          	addi	sp,sp,-48
    800025c4:	02113423          	sd	ra,40(sp)
    800025c8:	02813023          	sd	s0,32(sp)
    800025cc:	00913c23          	sd	s1,24(sp)
    800025d0:	01213823          	sd	s2,16(sp)
    800025d4:	01313423          	sd	s3,8(sp)
    800025d8:	03010413          	addi	s0,sp,48
    800025dc:	00050913          	mv	s2,a0
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    800025e0:	0000b797          	auipc	a5,0xb
    800025e4:	8007b783          	ld	a5,-2048(a5) # 8000cde0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025e8:	0007b783          	ld	a5,0(a5)
    800025ec:	12f56663          	bltu	a0,a5,80002718 <_ZN15MemoryAllocator8mem_freeEPv+0x15c>
    800025f0:	0000b797          	auipc	a5,0xb
    800025f4:	8307b783          	ld	a5,-2000(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x58>
    800025f8:	0007b783          	ld	a5,0(a5)
    800025fc:	12a7e263          	bltu	a5,a0,80002720 <_ZN15MemoryAllocator8mem_freeEPv+0x164>
    if (!usedSegHead) return -2;
    80002600:	0000b797          	auipc	a5,0xb
    80002604:	8987b783          	ld	a5,-1896(a5) # 8000ce98 <_ZN15MemoryAllocator11usedSegHeadE>
    80002608:	12078063          	beqz	a5,80002728 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    addr = (void*) ((char*) addr - sizeof(MemSeg));
    8000260c:	fe850493          	addi	s1,a0,-24
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002610:	00078863          	beqz	a5,80002620 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if (tmp == segToFree) {
    80002614:	0a978663          	beq	a5,s1,800026c0 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for (MemSeg *tmp = usedSegHead; tmp; tmp = tmp -> next)
    80002618:	0107b783          	ld	a5,16(a5)
    8000261c:	ff5ff06f          	j	80002610 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
    bool found = false;
    80002620:	00000793          	li	a5,0
    if (!found) return -3;
    80002624:	10078663          	beqz	a5,80002730 <_ZN15MemoryAllocator8mem_freeEPv+0x174>
    removeNode(segToFree, segToFree -> next, false, false);
    80002628:	00000693          	li	a3,0
    8000262c:	00000613          	li	a2,0
    80002630:	ff893583          	ld	a1,-8(s2)
    80002634:	00048513          	mv	a0,s1
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	dbc080e7          	jalr	-580(ra) # 800023f4 <_ZN15MemoryAllocator10removeNodeEPNS_6MemSegES1_bb>
    segToFree -> size += sizeof(MemSeg);
    80002640:	fe893783          	ld	a5,-24(s2)
    80002644:	01878793          	addi	a5,a5,24
    80002648:	fef93423          	sd	a5,-24(s2)
    if (!freeSegHead) {
    8000264c:	0000b797          	auipc	a5,0xb
    80002650:	8447b783          	ld	a5,-1980(a5) # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    80002654:	06078a63          	beqz	a5,800026c8 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    else if ((char*) addr < (char*) freeSegHead) {
    80002658:	08f4e463          	bltu	s1,a5,800026e0 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (tmp = freeSegHead; tmp -> next && (char*) (tmp -> next) < (char*) segToFree; tmp = tmp -> next);
    8000265c:	00078993          	mv	s3,a5
    80002660:	0107b783          	ld	a5,16(a5)
    80002664:	00078463          	beqz	a5,8000266c <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
    80002668:	fe97eae3          	bltu	a5,s1,8000265c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
        segToFree -> prev = tmp;
    8000266c:	ff393823          	sd	s3,-16(s2)
        segToFree -> next = tmp -> next;
    80002670:	0109b783          	ld	a5,16(s3)
    80002674:	fef93c23          	sd	a5,-8(s2)
        tmp -> next = segToFree;
    80002678:	0099b823          	sd	s1,16(s3)
        if (segToFree -> next) segToFree -> next -> prev = segToFree;
    8000267c:	ff893783          	ld	a5,-8(s2)
    80002680:	00078463          	beqz	a5,80002688 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    80002684:	0097b423          	sd	s1,8(a5)
        tryToJoin(segToFree);
    80002688:	00048513          	mv	a0,s1
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	ee0080e7          	jalr	-288(ra) # 8000256c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
        tryToJoin(tmp);
    80002694:	00098513          	mv	a0,s3
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	ed4080e7          	jalr	-300(ra) # 8000256c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    800026a0:	00000513          	li	a0,0
}
    800026a4:	02813083          	ld	ra,40(sp)
    800026a8:	02013403          	ld	s0,32(sp)
    800026ac:	01813483          	ld	s1,24(sp)
    800026b0:	01013903          	ld	s2,16(sp)
    800026b4:	00813983          	ld	s3,8(sp)
    800026b8:	03010113          	addi	sp,sp,48
    800026bc:	00008067          	ret
            found = true;
    800026c0:	00100793          	li	a5,1
    800026c4:	f61ff06f          	j	80002624 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        freeSegHead = segToFree;
    800026c8:	0000a797          	auipc	a5,0xa
    800026cc:	7c97b423          	sd	s1,1992(a5) # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
        segToFree -> prev = segToFree -> next = nullptr;
    800026d0:	fe093c23          	sd	zero,-8(s2)
    800026d4:	fe093823          	sd	zero,-16(s2)
    return 0;
    800026d8:	00000513          	li	a0,0
    800026dc:	fc9ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        segToFree -> prev = nullptr;
    800026e0:	fe093823          	sd	zero,-16(s2)
        segToFree -> next = freeSegHead;
    800026e4:	0000a797          	auipc	a5,0xa
    800026e8:	7ac78793          	addi	a5,a5,1964 # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    800026ec:	0007b703          	ld	a4,0(a5)
    800026f0:	fee93c23          	sd	a4,-8(s2)
        freeSegHead -> prev = segToFree;
    800026f4:	00973423          	sd	s1,8(a4)
        freeSegHead = segToFree;
    800026f8:	0097b023          	sd	s1,0(a5)
        tryToJoin(segToFree);
    800026fc:	00048513          	mv	a0,s1
    80002700:	00000097          	auipc	ra,0x0
    80002704:	e6c080e7          	jalr	-404(ra) # 8000256c <_ZN15MemoryAllocator9tryToJoinEPNS_6MemSegE>
    return 0;
    80002708:	00000513          	li	a0,0
    8000270c:	f99ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002710:	fff00513          	li	a0,-1
}
    80002714:	00008067          	ret
    if (!addr || addr < HEAP_START_ADDR || addr > HEAP_END_ADDR) return -1;
    80002718:	fff00513          	li	a0,-1
    8000271c:	f89ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    80002720:	fff00513          	li	a0,-1
    80002724:	f81ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!usedSegHead) return -2;
    80002728:	ffe00513          	li	a0,-2
    8000272c:	f79ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!found) return -3;
    80002730:	ffd00513          	li	a0,-3
    80002734:	f71ff06f          	j	800026a4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>

0000000080002738 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	02010413          	addi	s0,sp,32
    __putc('\n');
    8000274c:	00a00513          	li	a0,10
    80002750:	00007097          	auipc	ra,0x7
    80002754:	87c080e7          	jalr	-1924(ra) # 80008fcc <__putc>
    __putc('M');
    80002758:	04d00513          	li	a0,77
    8000275c:	00007097          	auipc	ra,0x7
    80002760:	870080e7          	jalr	-1936(ra) # 80008fcc <__putc>
    __putc(':');
    80002764:	03a00513          	li	a0,58
    80002768:	00007097          	auipc	ra,0x7
    8000276c:	864080e7          	jalr	-1948(ra) # 80008fcc <__putc>
    __putc(' ');
    80002770:	02000513          	li	a0,32
    80002774:	00007097          	auipc	ra,0x7
    80002778:	858080e7          	jalr	-1960(ra) # 80008fcc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    8000277c:	0000a497          	auipc	s1,0xa
    80002780:	7144b483          	ld	s1,1812(s1) # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    80002784:	02048863          	beqz	s1,800027b4 <_ZN15MemoryAllocator5printEv+0x7c>
        printNumber(tmp -> size);
    80002788:	0004b503          	ld	a0,0(s1)
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	41c080e7          	jalr	1052(ra) # 80001ba8 <_Z11printNumberm>
        __putc(' ');
    80002794:	02000513          	li	a0,32
    80002798:	00007097          	auipc	ra,0x7
    8000279c:	834080e7          	jalr	-1996(ra) # 80008fcc <__putc>
        __putc('f');
    800027a0:	06600513          	li	a0,102
    800027a4:	00007097          	auipc	ra,0x7
    800027a8:	828080e7          	jalr	-2008(ra) # 80008fcc <__putc>
    for (MemSeg* tmp = freeSegHead; tmp; tmp = tmp -> next) {
    800027ac:	0104b483          	ld	s1,16(s1)
    800027b0:	fd5ff06f          	j	80002784 <_ZN15MemoryAllocator5printEv+0x4c>
    }
    __putc('\t');
    800027b4:	00900513          	li	a0,9
    800027b8:	00007097          	auipc	ra,0x7
    800027bc:	814080e7          	jalr	-2028(ra) # 80008fcc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027c0:	0000a497          	auipc	s1,0xa
    800027c4:	6d84b483          	ld	s1,1752(s1) # 8000ce98 <_ZN15MemoryAllocator11usedSegHeadE>
    800027c8:	02048863          	beqz	s1,800027f8 <_ZN15MemoryAllocator5printEv+0xc0>
        printNumber(tmp -> size);
    800027cc:	0004b503          	ld	a0,0(s1)
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	3d8080e7          	jalr	984(ra) # 80001ba8 <_Z11printNumberm>
        __putc(' ');
    800027d8:	02000513          	li	a0,32
    800027dc:	00006097          	auipc	ra,0x6
    800027e0:	7f0080e7          	jalr	2032(ra) # 80008fcc <__putc>
        __putc('u');
    800027e4:	07500513          	li	a0,117
    800027e8:	00006097          	auipc	ra,0x6
    800027ec:	7e4080e7          	jalr	2020(ra) # 80008fcc <__putc>
    for (MemSeg* tmp = usedSegHead; tmp; tmp = tmp -> next) {
    800027f0:	0104b483          	ld	s1,16(s1)
    800027f4:	fd5ff06f          	j	800027c8 <_ZN15MemoryAllocator5printEv+0x90>
    }
}
    800027f8:	01813083          	ld	ra,24(sp)
    800027fc:	01013403          	ld	s0,16(sp)
    80002800:	00813483          	ld	s1,8(sp)
    80002804:	02010113          	addi	sp,sp,32
    80002808:	00008067          	ret

000000008000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>:

size_t MemoryAllocator::get_number_of_blocks(size_t size) {
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00813423          	sd	s0,8(sp)
    80002814:	01010413          	addi	s0,sp,16
    return (size + sizeof(MemoryAllocator::MemSeg) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002818:	05750513          	addi	a0,a0,87
}
    8000281c:	00655513          	srli	a0,a0,0x6
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN15MemoryAllocator10initializeEv>:
    if (!instance) {
    8000282c:	0000a797          	auipc	a5,0xa
    80002830:	6747b783          	ld	a5,1652(a5) # 8000cea0 <_ZN15MemoryAllocator8instanceE>
    80002834:	00078463          	beqz	a5,8000283c <_ZN15MemoryAllocator10initializeEv+0x10>
    80002838:	00008067          	ret
void MemoryAllocator::initialize() {
    8000283c:	fe010113          	addi	sp,sp,-32
    80002840:	00113c23          	sd	ra,24(sp)
    80002844:	00813823          	sd	s0,16(sp)
    80002848:	00913423          	sd	s1,8(sp)
    8000284c:	02010413          	addi	s0,sp,32
        freeSegHead = (MemSeg*) HEAP_START_ADDR;
    80002850:	0000a797          	auipc	a5,0xa
    80002854:	5907b783          	ld	a5,1424(a5) # 8000cde0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002858:	0007b783          	ld	a5,0(a5)
    8000285c:	0000a497          	auipc	s1,0xa
    80002860:	63448493          	addi	s1,s1,1588 # 8000ce90 <_ZN15MemoryAllocator11freeSegHeadE>
    80002864:	00f4b023          	sd	a5,0(s1)
        freeSegHead -> size = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002868:	0000a717          	auipc	a4,0xa
    8000286c:	5b873703          	ld	a4,1464(a4) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002870:	00073703          	ld	a4,0(a4)
    80002874:	40f70733          	sub	a4,a4,a5
    80002878:	00e7b023          	sd	a4,0(a5)
        freeSegHead -> prev = nullptr;
    8000287c:	0004b783          	ld	a5,0(s1)
    80002880:	0007b423          	sd	zero,8(a5)
        freeSegHead -> next = nullptr;
    80002884:	0007b823          	sd	zero,16(a5)
        instance = (MemoryAllocator*) MemoryAllocator::mem_alloc(get_number_of_blocks(sizeof(MemoryAllocator)));
    80002888:	00100513          	li	a0,1
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	f80080e7          	jalr	-128(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002894:	00000097          	auipc	ra,0x0
    80002898:	bb4080e7          	jalr	-1100(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
    8000289c:	00a4b823          	sd	a0,16(s1)
}
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret

00000000800028b4 <_ZN13BoundedBufferC1Ev>:
#include "../h/bounded_bufffer.hpp"

BoundedBuffer::BoundedBuffer() {
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	02010413          	addi	s0,sp,32
    800028c8:	00050493          	mv	s1,a0
    800028cc:	00052023          	sw	zero,0(a0)
    800028d0:	00052223          	sw	zero,4(a0)
    Sem::open(&item_available, 0);
    800028d4:	00000593          	li	a1,0
    800028d8:	01050513          	addi	a0,a0,16
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	17c080e7          	jalr	380(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
    Sem::open(&space_available, CAPACITY);
    800028e4:	1f400593          	li	a1,500
    800028e8:	00848513          	addi	a0,s1,8
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	16c080e7          	jalr	364(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
}
    800028f4:	01813083          	ld	ra,24(sp)
    800028f8:	01013403          	ld	s0,16(sp)
    800028fc:	00813483          	ld	s1,8(sp)
    80002900:	02010113          	addi	sp,sp,32
    80002904:	00008067          	ret

0000000080002908 <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00050493          	mv	s1,a0
    Sem::close(item_available);
    80002920:	01053503          	ld	a0,16(a0)
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	f0c080e7          	jalr	-244(ra) # 80001830 <_ZN3Sem5closeEPS_>
    Sem::close(space_available);
    8000292c:	0084b503          	ld	a0,8(s1)
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	f00080e7          	jalr	-256(ra) # 80001830 <_ZN3Sem5closeEPS_>
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <_ZN13BoundedBuffernwEm>:

void *BoundedBuffer::operator new(size_t size) {
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00113423          	sd	ra,8(sp)
    80002954:	00813023          	sd	s0,0(sp)
    80002958:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	eb0080e7          	jalr	-336(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	ae4080e7          	jalr	-1308(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN13BoundedBufferdlEPv>:

void BoundedBuffer::operator delete(void *addr) {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	00813023          	sd	s0,0(sp)
    80002988:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	c30080e7          	jalr	-976(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002994:	00813083          	ld	ra,8(sp)
    80002998:	00013403          	ld	s0,0(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret

00000000800029a4 <_ZN13BoundedBuffer4putcEc>:

void BoundedBuffer::putc(char c) {
    800029a4:	fe010113          	addi	sp,sp,-32
    800029a8:	00113c23          	sd	ra,24(sp)
    800029ac:	00813823          	sd	s0,16(sp)
    800029b0:	00913423          	sd	s1,8(sp)
    800029b4:	01213023          	sd	s2,0(sp)
    800029b8:	02010413          	addi	s0,sp,32
    800029bc:	00050493          	mv	s1,a0
    800029c0:	00058913          	mv	s2,a1
    Sem::wait(space_available);
    800029c4:	00853503          	ld	a0,8(a0)
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	ed4080e7          	jalr	-300(ra) # 8000189c <_ZN3Sem4waitEPS_>
    array[tail] = c;
    800029d0:	0044a783          	lw	a5,4(s1)
    800029d4:	00f48733          	add	a4,s1,a5
    800029d8:	01270c23          	sb	s2,24(a4)
    tail = (tail + 1) % CAPACITY;
    800029dc:	0017879b          	addiw	a5,a5,1
    800029e0:	1f400713          	li	a4,500
    800029e4:	02e7e7bb          	remw	a5,a5,a4
    800029e8:	00f4a223          	sw	a5,4(s1)
    Sem::signal(item_available);
    800029ec:	0104b503          	ld	a0,16(s1)
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	f00080e7          	jalr	-256(ra) # 800018f0 <_ZN3Sem6signalEPS_>
}
    800029f8:	01813083          	ld	ra,24(sp)
    800029fc:	01013403          	ld	s0,16(sp)
    80002a00:	00813483          	ld	s1,8(sp)
    80002a04:	00013903          	ld	s2,0(sp)
    80002a08:	02010113          	addi	sp,sp,32
    80002a0c:	00008067          	ret

0000000080002a10 <_ZN13BoundedBuffer4getcEv>:

char BoundedBuffer::getc() {
    80002a10:	fe010113          	addi	sp,sp,-32
    80002a14:	00113c23          	sd	ra,24(sp)
    80002a18:	00813823          	sd	s0,16(sp)
    80002a1c:	00913423          	sd	s1,8(sp)
    80002a20:	01213023          	sd	s2,0(sp)
    80002a24:	02010413          	addi	s0,sp,32
    80002a28:	00050493          	mv	s1,a0
    Sem::wait(item_available);
    80002a2c:	01053503          	ld	a0,16(a0)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	e6c080e7          	jalr	-404(ra) # 8000189c <_ZN3Sem4waitEPS_>
    char c = array[head];
    80002a38:	0004a783          	lw	a5,0(s1)
    80002a3c:	00f48733          	add	a4,s1,a5
    80002a40:	01874903          	lbu	s2,24(a4)
    head = (head + 1) % CAPACITY;
    80002a44:	0017879b          	addiw	a5,a5,1
    80002a48:	1f400713          	li	a4,500
    80002a4c:	02e7e7bb          	remw	a5,a5,a4
    80002a50:	00f4a023          	sw	a5,0(s1)
    Sem::signal(space_available);
    80002a54:	0084b503          	ld	a0,8(s1)
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	e98080e7          	jalr	-360(ra) # 800018f0 <_ZN3Sem6signalEPS_>
    return c;
}
    80002a60:	00090513          	mv	a0,s2
    80002a64:	01813083          	ld	ra,24(sp)
    80002a68:	01013403          	ld	s0,16(sp)
    80002a6c:	00813483          	ld	s1,8(sp)
    80002a70:	00013903          	ld	s2,0(sp)
    80002a74:	02010113          	addi	sp,sp,32
    80002a78:	00008067          	ret

0000000080002a7c <_ZN9Scheduler3putEP3TCB>:

TCB* Scheduler::head_ready = nullptr;
TCB* Scheduler::tail_ready = nullptr;
TCB* Scheduler::head_sleeping = nullptr;

void Scheduler::put(TCB *thread) {
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    if (tail_ready) {
    80002a94:	0000a517          	auipc	a0,0xa
    80002a98:	41453503          	ld	a0,1044(a0) # 8000cea8 <_ZN9Scheduler10tail_readyE>
    80002a9c:	02050e63          	beqz	a0,80002ad8 <_ZN9Scheduler3putEP3TCB+0x5c>
        tail_ready -> set_next_ready(thread);
    80002aa0:	00048593          	mv	a1,s1
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	a90080e7          	jalr	-1392(ra) # 80003534 <_ZN3TCB14set_next_readyEPS_>
        tail_ready = thread;
    80002aac:	0000a797          	auipc	a5,0xa
    80002ab0:	3e97be23          	sd	s1,1020(a5) # 8000cea8 <_ZN9Scheduler10tail_readyE>
    }
    else head_ready = tail_ready = thread;
    thread -> set_next_ready(nullptr);
    80002ab4:	00000593          	li	a1,0
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	a78080e7          	jalr	-1416(ra) # 80003534 <_ZN3TCB14set_next_readyEPS_>
}
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	02010113          	addi	sp,sp,32
    80002ad4:	00008067          	ret
    else head_ready = tail_ready = thread;
    80002ad8:	0000a797          	auipc	a5,0xa
    80002adc:	3d078793          	addi	a5,a5,976 # 8000cea8 <_ZN9Scheduler10tail_readyE>
    80002ae0:	0097b023          	sd	s1,0(a5)
    80002ae4:	0097b423          	sd	s1,8(a5)
    80002ae8:	fcdff06f          	j	80002ab4 <_ZN9Scheduler3putEP3TCB+0x38>

0000000080002aec <_ZN9Scheduler3getEv>:

TCB* Scheduler::get() {
    80002aec:	fe010113          	addi	sp,sp,-32
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00913423          	sd	s1,8(sp)
    80002afc:	02010413          	addi	s0,sp,32
    if (!head_ready) return nullptr;
    80002b00:	0000a497          	auipc	s1,0xa
    80002b04:	3b04b483          	ld	s1,944(s1) # 8000ceb0 <_ZN9Scheduler10head_readyE>
    80002b08:	02048663          	beqz	s1,80002b34 <_ZN9Scheduler3getEv+0x48>
    TCB *tmp = head_ready;
    head_ready = head_ready -> get_next_ready();
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	00001097          	auipc	ra,0x1
    80002b14:	a08080e7          	jalr	-1528(ra) # 80003518 <_ZNK3TCB14get_next_readyEv>
    80002b18:	0000a797          	auipc	a5,0xa
    80002b1c:	38a7bc23          	sd	a0,920(a5) # 8000ceb0 <_ZN9Scheduler10head_readyE>
    if (!head_ready) tail_ready = nullptr;
    80002b20:	02050663          	beqz	a0,80002b4c <_ZN9Scheduler3getEv+0x60>
    tmp -> set_next_ready(nullptr);
    80002b24:	00000593          	li	a1,0
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	a08080e7          	jalr	-1528(ra) # 80003534 <_ZN3TCB14set_next_readyEPS_>
    return tmp;
}
    80002b34:	00048513          	mv	a0,s1
    80002b38:	01813083          	ld	ra,24(sp)
    80002b3c:	01013403          	ld	s0,16(sp)
    80002b40:	00813483          	ld	s1,8(sp)
    80002b44:	02010113          	addi	sp,sp,32
    80002b48:	00008067          	ret
    if (!head_ready) tail_ready = nullptr;
    80002b4c:	0000a797          	auipc	a5,0xa
    80002b50:	3407be23          	sd	zero,860(a5) # 8000cea8 <_ZN9Scheduler10tail_readyE>
    80002b54:	fd1ff06f          	j	80002b24 <_ZN9Scheduler3getEv+0x38>

0000000080002b58 <_ZN9Scheduler17remove_from_sleepEP3TCB>:
    thread -> set_next_sleeping(nullptr);
    change_thread();
    return 0;
}

int Scheduler::remove_from_sleep(TCB *thread) {
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00813423          	sd	s0,8(sp)
    80002b60:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    80002b64:	06050863          	beqz	a0,80002bd4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x7c>
    TCB *prev = nullptr, *tmp = head_sleeping;
    80002b68:	0000a797          	auipc	a5,0xa
    80002b6c:	3507b783          	ld	a5,848(a5) # 8000ceb8 <_ZN9Scheduler13head_sleepingE>
    80002b70:	00000713          	li	a4,0
    while (tmp && tmp != thread) {
    80002b74:	00078a63          	beqz	a5,80002b88 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
    80002b78:	00a78863          	beq	a5,a0,80002b88 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x30>
        prev = tmp;
    80002b7c:	00078713          	mv	a4,a5
        tmp = tmp -> next_sleeping;
    80002b80:	0587b783          	ld	a5,88(a5)
    while (tmp && tmp != thread) {
    80002b84:	ff1ff06f          	j	80002b74 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x1c>
    }
    if (!tmp) return -2;
    80002b88:	04078a63          	beqz	a5,80002bdc <_ZN9Scheduler17remove_from_sleepEP3TCB+0x84>
    if (prev) prev -> next_sleeping = tmp -> next_sleeping;
    80002b8c:	02070c63          	beqz	a4,80002bc4 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x6c>
    80002b90:	0587b683          	ld	a3,88(a5)
    80002b94:	04d73c23          	sd	a3,88(a4)
    else head_sleeping = tmp -> next_sleeping;
    if (tmp -> next_sleeping) tmp -> next_sleeping -> time_to_sleep += tmp -> time_to_sleep;
    80002b98:	0587b703          	ld	a4,88(a5)
    80002b9c:	00070a63          	beqz	a4,80002bb0 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x58>
    80002ba0:	0507b603          	ld	a2,80(a5)
    80002ba4:	05073683          	ld	a3,80(a4)
    80002ba8:	00c686b3          	add	a3,a3,a2
    80002bac:	04d73823          	sd	a3,80(a4)
    tmp -> next_sleeping = nullptr;
    80002bb0:	0407bc23          	sd	zero,88(a5)
    return 0;
    80002bb4:	00000513          	li	a0,0
}
    80002bb8:	00813403          	ld	s0,8(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret
    else head_sleeping = tmp -> next_sleeping;
    80002bc4:	0587b703          	ld	a4,88(a5)
    80002bc8:	0000a697          	auipc	a3,0xa
    80002bcc:	2ee6b823          	sd	a4,752(a3) # 8000ceb8 <_ZN9Scheduler13head_sleepingE>
    80002bd0:	fc9ff06f          	j	80002b98 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x40>
    if (!thread) return -1;
    80002bd4:	fff00513          	li	a0,-1
    80002bd8:	fe1ff06f          	j	80002bb8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>
    if (!tmp) return -2;
    80002bdc:	ffe00513          	li	a0,-2
    80002be0:	fd9ff06f          	j	80002bb8 <_ZN9Scheduler17remove_from_sleepEP3TCB+0x60>

0000000080002be4 <_ZN9Scheduler13change_threadEv>:

void Scheduler::change_thread() {
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80002bf8:	0000a797          	auipc	a5,0xa
    80002bfc:	2207b783          	ld	a5,544(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c00:	0007b483          	ld	s1,0(a5)
    old -> set_status(TCB::SLEEPING);
    80002c04:	00100593          	li	a1,1
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	9b4080e7          	jalr	-1612(ra) # 800035c0 <_ZN3TCB10set_statusENS_6StatusE>
    if (!old-> timed_wait) {
    80002c14:	0484c783          	lbu	a5,72(s1)
    80002c18:	00078c63          	beqz	a5,80002c30 <_ZN9Scheduler13change_threadEv+0x4c>
        TCB::running = Scheduler::get();
        if (old != TCB::running) TCB::yield(old, TCB::running);
    }
}
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	00813483          	ld	s1,8(sp)
    80002c28:	02010113          	addi	sp,sp,32
    80002c2c:	00008067          	ret
        TCB::running = Scheduler::get();
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	ebc080e7          	jalr	-324(ra) # 80002aec <_ZN9Scheduler3getEv>
    80002c38:	00050593          	mv	a1,a0
    80002c3c:	0000a797          	auipc	a5,0xa
    80002c40:	1dc7b783          	ld	a5,476(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c44:	00a7b023          	sd	a0,0(a5)
        if (old != TCB::running) TCB::yield(old, TCB::running);
    80002c48:	fca48ae3          	beq	s1,a0,80002c1c <_ZN9Scheduler13change_threadEv+0x38>
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	7e0080e7          	jalr	2016(ra) # 80003430 <_ZN3TCB5yieldEPS_S0_>
}
    80002c58:	fc5ff06f          	j	80002c1c <_ZN9Scheduler13change_threadEv+0x38>

0000000080002c5c <_ZN9Scheduler12put_to_sleepEm>:
    if (!time) return -1;
    80002c5c:	18050a63          	beqz	a0,80002df0 <_ZN9Scheduler12put_to_sleepEm+0x194>
int Scheduler::put_to_sleep(time_t time) {
    80002c60:	fc010113          	addi	sp,sp,-64
    80002c64:	02113c23          	sd	ra,56(sp)
    80002c68:	02813823          	sd	s0,48(sp)
    80002c6c:	02913423          	sd	s1,40(sp)
    80002c70:	03213023          	sd	s2,32(sp)
    80002c74:	01313c23          	sd	s3,24(sp)
    80002c78:	01413823          	sd	s4,16(sp)
    80002c7c:	01513423          	sd	s5,8(sp)
    80002c80:	04010413          	addi	s0,sp,64
    80002c84:	00050993          	mv	s3,a0
    TCB* thread = TCB::running;
    80002c88:	0000a797          	auipc	a5,0xa
    80002c8c:	1907b783          	ld	a5,400(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c90:	0007ba83          	ld	s5,0(a5)
    if (!head_sleeping) {
    80002c94:	0000a497          	auipc	s1,0xa
    80002c98:	2244b483          	ld	s1,548(s1) # 8000ceb8 <_ZN9Scheduler13head_sleepingE>
    80002c9c:	02048e63          	beqz	s1,80002cd8 <_ZN9Scheduler12put_to_sleepEm+0x7c>
    time_t current_time = 0;
    80002ca0:	00000913          	li	s2,0
    TCB* tmp = head_sleeping, *prev = nullptr;
    80002ca4:	00000a13          	li	s4,0
    while (tmp) {
    80002ca8:	0e048463          	beqz	s1,80002d90 <_ZN9Scheduler12put_to_sleepEm+0x134>
        current_time += tmp -> get_time_to_sleep();
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	8f4080e7          	jalr	-1804(ra) # 800035a4 <_ZNK3TCB17get_time_to_sleepEv>
    80002cb8:	00a90933          	add	s2,s2,a0
        if (current_time > time) {
    80002cbc:	0529ea63          	bltu	s3,s2,80002d10 <_ZN9Scheduler12put_to_sleepEm+0xb4>
        tmp = tmp -> get_next_sleeping();
    80002cc0:	00048513          	mv	a0,s1
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	8a8080e7          	jalr	-1880(ra) # 8000356c <_ZNK3TCB17get_next_sleepingEv>
        prev = tmp;
    80002ccc:	00048a13          	mv	s4,s1
        tmp = tmp -> get_next_sleeping();
    80002cd0:	00050493          	mv	s1,a0
    while (tmp) {
    80002cd4:	fd5ff06f          	j	80002ca8 <_ZN9Scheduler12put_to_sleepEm+0x4c>
        head_sleeping = thread;
    80002cd8:	0000a797          	auipc	a5,0xa
    80002cdc:	1f57b023          	sd	s5,480(a5) # 8000ceb8 <_ZN9Scheduler13head_sleepingE>
        thread -> set_next_sleeping(nullptr);
    80002ce0:	00000593          	li	a1,0
    80002ce4:	000a8513          	mv	a0,s5
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	868080e7          	jalr	-1944(ra) # 80003550 <_ZN3TCB17set_next_sleepingEPS_>
        thread -> set_time_to_sleep(time);
    80002cf0:	00098593          	mv	a1,s3
    80002cf4:	000a8513          	mv	a0,s5
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	890080e7          	jalr	-1904(ra) # 80003588 <_ZN3TCB17set_time_to_sleepEm>
        change_thread();
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	ee4080e7          	jalr	-284(ra) # 80002be4 <_ZN9Scheduler13change_threadEv>
        return 0;
    80002d08:	00000513          	li	a0,0
    80002d0c:	0c00006f          	j	80002dcc <_ZN9Scheduler12put_to_sleepEm+0x170>
            time_t new_time = time - (current_time - tmp -> get_time_to_sleep());
    80002d10:	00048513          	mv	a0,s1
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	890080e7          	jalr	-1904(ra) # 800035a4 <_ZNK3TCB17get_time_to_sleepEv>
    80002d1c:	41250933          	sub	s2,a0,s2
    80002d20:	013909b3          	add	s3,s2,s3
            thread -> set_time_to_sleep(new_time);
    80002d24:	00098593          	mv	a1,s3
    80002d28:	000a8513          	mv	a0,s5
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	85c080e7          	jalr	-1956(ra) # 80003588 <_ZN3TCB17set_time_to_sleepEm>
            thread -> set_next_sleeping(tmp);
    80002d34:	00048593          	mv	a1,s1
    80002d38:	000a8513          	mv	a0,s5
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	814080e7          	jalr	-2028(ra) # 80003550 <_ZN3TCB17set_next_sleepingEPS_>
            if (prev) prev -> set_next_sleeping(thread);
    80002d44:	040a0063          	beqz	s4,80002d84 <_ZN9Scheduler12put_to_sleepEm+0x128>
    80002d48:	000a8593          	mv	a1,s5
    80002d4c:	000a0513          	mv	a0,s4
    80002d50:	00001097          	auipc	ra,0x1
    80002d54:	800080e7          	jalr	-2048(ra) # 80003550 <_ZN3TCB17set_next_sleepingEPS_>
            tmp -> set_time_to_sleep(tmp -> get_time_to_sleep() - new_time);
    80002d58:	00048513          	mv	a0,s1
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	848080e7          	jalr	-1976(ra) # 800035a4 <_ZNK3TCB17get_time_to_sleepEv>
    80002d64:	413505b3          	sub	a1,a0,s3
    80002d68:	00048513          	mv	a0,s1
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	81c080e7          	jalr	-2020(ra) # 80003588 <_ZN3TCB17set_time_to_sleepEm>
            change_thread();
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	e70080e7          	jalr	-400(ra) # 80002be4 <_ZN9Scheduler13change_threadEv>
            return 0;
    80002d7c:	00000513          	li	a0,0
    80002d80:	04c0006f          	j	80002dcc <_ZN9Scheduler12put_to_sleepEm+0x170>
            else head_sleeping = thread;
    80002d84:	0000a797          	auipc	a5,0xa
    80002d88:	1357ba23          	sd	s5,308(a5) # 8000ceb8 <_ZN9Scheduler13head_sleepingE>
    80002d8c:	fcdff06f          	j	80002d58 <_ZN9Scheduler12put_to_sleepEm+0xfc>
    thread -> set_time_to_sleep(time - current_time);
    80002d90:	412985b3          	sub	a1,s3,s2
    80002d94:	000a8513          	mv	a0,s5
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	7f0080e7          	jalr	2032(ra) # 80003588 <_ZN3TCB17set_time_to_sleepEm>
    prev -> set_next_sleeping(thread);
    80002da0:	000a8593          	mv	a1,s5
    80002da4:	000a0513          	mv	a0,s4
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	7a8080e7          	jalr	1960(ra) # 80003550 <_ZN3TCB17set_next_sleepingEPS_>
    thread -> set_next_sleeping(nullptr);
    80002db0:	00000593          	li	a1,0
    80002db4:	000a8513          	mv	a0,s5
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	798080e7          	jalr	1944(ra) # 80003550 <_ZN3TCB17set_next_sleepingEPS_>
    change_thread();
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	e24080e7          	jalr	-476(ra) # 80002be4 <_ZN9Scheduler13change_threadEv>
    return 0;
    80002dc8:	00000513          	li	a0,0
}
    80002dcc:	03813083          	ld	ra,56(sp)
    80002dd0:	03013403          	ld	s0,48(sp)
    80002dd4:	02813483          	ld	s1,40(sp)
    80002dd8:	02013903          	ld	s2,32(sp)
    80002ddc:	01813983          	ld	s3,24(sp)
    80002de0:	01013a03          	ld	s4,16(sp)
    80002de4:	00813a83          	ld	s5,8(sp)
    80002de8:	04010113          	addi	sp,sp,64
    80002dec:	00008067          	ret
    if (!time) return -1;
    80002df0:	fff00513          	li	a0,-1
}
    80002df4:	00008067          	ret

0000000080002df8 <_ZN5RiscV10popSppSpieEv>:
    SUPERVISOR_INTERRUPT = 0x0000000000000009UL,
};

/// used in thread wrapper function when initializing thread because thread stack is empty
/// pc = (sepc = ra)
void RiscV::popSppSpie() {
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00813423          	sd	s0,8(sp)
    80002e00:	01010413          	addi	s0,sp,16
    /// conditionally return to User mode
    if (TCB::running -> function_body && TCB::running->function_body != kernelConsoleOutput) mc_sstatus(SSTATUS_SPP);
    80002e04:	0000a797          	auipc	a5,0xa
    80002e08:	0147b783          	ld	a5,20(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e0c:	0007b783          	ld	a5,0(a5)
    80002e10:	0287b783          	ld	a5,40(a5)
    80002e14:	00078c63          	beqz	a5,80002e2c <_ZN5RiscV10popSppSpieEv+0x34>
    80002e18:	0000a717          	auipc	a4,0xa
    80002e1c:	ff873703          	ld	a4,-8(a4) # 8000ce10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e20:	00e78663          	beq	a5,a4,80002e2c <_ZN5RiscV10popSppSpieEv+0x34>
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %0" : : "r"(mask));
    80002e24:	10000793          	li	a5,256
    80002e28:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80002e2c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002e30:	10200073          	sret
}
    80002e34:	00813403          	ld	s0,8(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret

0000000080002e40 <_ZN5RiscV22handle_supervisor_trapEv>:

/// interrupt handler
void RiscV::handle_supervisor_trap() {
    80002e40:	f9010113          	addi	sp,sp,-112
    80002e44:	06113423          	sd	ra,104(sp)
    80002e48:	06813023          	sd	s0,96(sp)
    80002e4c:	04913c23          	sd	s1,88(sp)
    80002e50:	05213823          	sd	s2,80(sp)
    80002e54:	05313423          	sd	s3,72(sp)
    80002e58:	07010413          	addi	s0,sp,112
    /// read values from registers
    uint64 syscall_code, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(syscall_code));
    80002e5c:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    80002e60:	00058513          	mv	a0,a1
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    80002e64:	00060593          	mv	a1,a2
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    80002e68:	00068613          	mv	a2,a3
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002e6c:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %0, scause" : "=r"(scause));
    80002e70:	14202773          	csrr	a4,scause
    80002e74:	f8e43c23          	sd	a4,-104(s0)
    return scause;
    80002e78:	f9843703          	ld	a4,-104(s0)

    /// read scause register value
    uint64 scause = read_scause();

    /// interrupt from supervisor / user mode
    if (scause == USER_INTERRUPT || scause == SUPERVISOR_INTERRUPT) {
    80002e7c:	ff870893          	addi	a7,a4,-8
    80002e80:	00100813          	li	a6,1
    80002e84:	07187063          	bgeu	a6,a7,80002ee4 <_ZN5RiscV22handle_supervisor_trapEv+0xa4>
        write_sepc(sepc);
        write_sstatus(sstatus);
    }

    /// interrupt caused by Timer
    else if (scause == SOFTWARE_INTERRUPT) {
    80002e88:	fff00793          	li	a5,-1
    80002e8c:	03f79793          	slli	a5,a5,0x3f
    80002e90:	00178793          	addi	a5,a5,1
    80002e94:	16f70063          	beq	a4,a5,80002ff4 <_ZN5RiscV22handle_supervisor_trapEv+0x1b4>
            write_sepc(sepc);
        }
    }

    /// External interrupt (Console)
    else if (scause == HARDWARE_INTERRUPT) {
    80002e98:	fff00793          	li	a5,-1
    80002e9c:	03f79793          	slli	a5,a5,0x3f
    80002ea0:	00978793          	addi	a5,a5,9
    80002ea4:	22f70463          	beq	a4,a5,800030cc <_ZN5RiscV22handle_supervisor_trapEv+0x28c>
        mc_sip(SIP_SEIP);
    }

    /// Illegal instruction / Bad memory access
    else {
        printNumber(scause);
    80002ea8:	00070513          	mv	a0,a4
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	cfc080e7          	jalr	-772(ra) # 80001ba8 <_Z11printNumberm>
        __putc('!');
    80002eb4:	02100513          	li	a0,33
    80002eb8:	00006097          	auipc	ra,0x6
    80002ebc:	114080e7          	jalr	276(ra) # 80008fcc <__putc>
        __putc('?');
    80002ec0:	03f00513          	li	a0,63
    80002ec4:	00006097          	auipc	ra,0x6
    80002ec8:	108080e7          	jalr	264(ra) # 80008fcc <__putc>
        __putc('!');
    80002ecc:	02100513          	li	a0,33
    80002ed0:	00006097          	auipc	ra,0x6
    80002ed4:	0fc080e7          	jalr	252(ra) # 80008fcc <__putc>
        uint64 val = 1;
        __asm__ volatile("mv a0, %0" : : "r"(val));
    80002ed8:	00100793          	li	a5,1
    80002edc:	00078513          	mv	a0,a5
    }
    80002ee0:	0540006f          	j	80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80002ee4:	14102773          	csrr	a4,sepc
    80002ee8:	fae43423          	sd	a4,-88(s0)
    return sepc;
    80002eec:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = read_sepc() + 4;
    80002ef0:	00448493          	addi	s1,s1,4
}

inline uint64 RiscV::read_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80002ef4:	10002773          	csrr	a4,sstatus
    80002ef8:	fae43023          	sd	a4,-96(s0)
    return sstatus;
    80002efc:	fa043903          	ld	s2,-96(s0)
        switch(syscall_code) {
    80002f00:	04200713          	li	a4,66
    80002f04:	02f76463          	bltu	a4,a5,80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    80002f08:	00279793          	slli	a5,a5,0x2
    80002f0c:	00007717          	auipc	a4,0x7
    80002f10:	11470713          	addi	a4,a4,276 # 8000a020 <CONSOLE_STATUS+0x10>
    80002f14:	00e787b3          	add	a5,a5,a4
    80002f18:	0007a783          	lw	a5,0(a5)
    80002f1c:	00e787b3          	add	a5,a5,a4
    80002f20:	00078067          	jr	a5
                MemoryAllocator::mem_alloc((size_t) a1);
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	524080e7          	jalr	1316(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80002f2c:	14149073          	csrw	sepc,s1
}

inline void RiscV::write_sstatus(uint64 val) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80002f30:	10091073          	csrw	sstatus,s2
    80002f34:	06813083          	ld	ra,104(sp)
    80002f38:	06013403          	ld	s0,96(sp)
    80002f3c:	05813483          	ld	s1,88(sp)
    80002f40:	05013903          	ld	s2,80(sp)
    80002f44:	04813983          	ld	s3,72(sp)
    80002f48:	07010113          	addi	sp,sp,112
    80002f4c:	00008067          	ret
                MemoryAllocator::mem_free((void *) a1);
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	66c080e7          	jalr	1644(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80002f58:	fd5ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_create((thread_t *) a1, (void (*)(void *)) a2, (void *) a3, (void *) a4);
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	76c080e7          	jalr	1900(ra) # 800036c8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>
                break;
    80002f64:	fc9ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::thread_exit();
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	674080e7          	jalr	1652(ra) # 800035dc <_ZN3TCB11thread_exitEv>
                break;
    80002f70:	fbdff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                TCB::dispatch();
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	518080e7          	jalr	1304(ra) # 8000348c <_ZN3TCB8dispatchEv>
                break;
    80002f7c:	fb1ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::open((sem_t *) a1, a2);
    80002f80:	0005859b          	sext.w	a1,a1
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	ad4080e7          	jalr	-1324(ra) # 80001a58 <_ZN3Sem4openEPPS_j>
                break;
    80002f8c:	fa1ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::close((sem_t) a1);
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	8a0080e7          	jalr	-1888(ra) # 80001830 <_ZN3Sem5closeEPS_>
                break;
    80002f98:	f95ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::wait((sem_t) a1);
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	900080e7          	jalr	-1792(ra) # 8000189c <_ZN3Sem4waitEPS_>
                break;
    80002fa4:	f89ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::signal((sem_t) a1);
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	948080e7          	jalr	-1720(ra) # 800018f0 <_ZN3Sem6signalEPS_>
                break;
    80002fb0:	f7dff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::timedWait((sem_t) a1, (time_t) a2);
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	990080e7          	jalr	-1648(ra) # 80001944 <_ZN3Sem9timedWaitEPS_m>
                break;
    80002fbc:	f71ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Sem::tryWait((sem_t) a1);
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	a08080e7          	jalr	-1528(ra) # 800019c8 <_ZN3Sem7tryWaitEPS_>
                break;
    80002fc8:	f65ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Scheduler::put_to_sleep((time_t) a1);
    80002fcc:	00000097          	auipc	ra,0x0
    80002fd0:	c90080e7          	jalr	-880(ra) # 80002c5c <_ZN9Scheduler12put_to_sleepEm>
                break;
    80002fd4:	f59ff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::getc_input();
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	ef4080e7          	jalr	-268(ra) # 80001ecc <_ZN3Con10getc_inputEv>
                break;
    80002fe0:	f4dff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
                Con::putc_output((char) a1);
    80002fe4:	0ff57513          	andi	a0,a0,255
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	e4c080e7          	jalr	-436(ra) # 80001e34 <_ZN3Con11putc_outputEc>
                break;
    80002ff0:	f3dff06f          	j	80002f2c <_ZN5RiscV22handle_supervisor_trapEv+0xec>
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    80002ff4:	00200793          	li	a5,2
    80002ff8:	1447b073          	csrc	sip,a5
        TCB* first_waiting = Scheduler::head_sleeping;
    80002ffc:	0000a797          	auipc	a5,0xa
    80003000:	dec7b783          	ld	a5,-532(a5) # 8000cde8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003004:	0007b483          	ld	s1,0(a5)
        if (first_waiting) {
    80003008:	06048263          	beqz	s1,8000306c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
            --first_waiting -> time_to_sleep;
    8000300c:	0504b783          	ld	a5,80(s1)
    80003010:	fff78793          	addi	a5,a5,-1
    80003014:	04f4b823          	sd	a5,80(s1)
    80003018:	03c0006f          	j	80003054 <_ZN5RiscV22handle_supervisor_trapEv+0x214>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    8000301c:	00100593          	li	a1,1
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	7c4080e7          	jalr	1988(ra) # 800037e8 <_ZN3TCB21clear_from_timed_waitEb>
                Scheduler::put(first_waiting);
    8000302c:	00048513          	mv	a0,s1
    80003030:	00000097          	auipc	ra,0x0
    80003034:	a4c080e7          	jalr	-1460(ra) # 80002a7c <_ZN9Scheduler3putEP3TCB>
                first_waiting -> status = TCB::RUNNABLE;
    80003038:	0204a023          	sw	zero,32(s1)
                first_waiting = first_waiting -> next_sleeping;
    8000303c:	0584b783          	ld	a5,88(s1)
                tmp -> next_sleeping = nullptr;
    80003040:	0404bc23          	sd	zero,88(s1)
                Scheduler::head_sleeping = first_waiting;
    80003044:	0000a717          	auipc	a4,0xa
    80003048:	da473703          	ld	a4,-604(a4) # 8000cde8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000304c:	00f73023          	sd	a5,0(a4)
                first_waiting = first_waiting -> next_sleeping;
    80003050:	00078493          	mv	s1,a5
            while (first_waiting && first_waiting -> time_to_sleep == 0) {
    80003054:	00048c63          	beqz	s1,8000306c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
    80003058:	0504b783          	ld	a5,80(s1)
    8000305c:	00079863          	bnez	a5,8000306c <_ZN5RiscV22handle_supervisor_trapEv+0x22c>
                if (first_waiting -> timed_wait) first_waiting -> clear_from_timed_wait(true);
    80003060:	0484c783          	lbu	a5,72(s1)
    80003064:	fc0784e3          	beqz	a5,8000302c <_ZN5RiscV22handle_supervisor_trapEv+0x1ec>
    80003068:	fb5ff06f          	j	8000301c <_ZN5RiscV22handle_supervisor_trapEv+0x1dc>
        ++TCB::time_slice_counter;
    8000306c:	0000a717          	auipc	a4,0xa
    80003070:	d9c73703          	ld	a4,-612(a4) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003074:	00073783          	ld	a5,0(a4)
    80003078:	00178793          	addi	a5,a5,1
    8000307c:	00f73023          	sd	a5,0(a4)
        if (TCB::time_slice_counter >= TCB::running -> time_slice) {
    80003080:	0000a717          	auipc	a4,0xa
    80003084:	d9873703          	ld	a4,-616(a4) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003088:	00073703          	ld	a4,0(a4)
    8000308c:	00073703          	ld	a4,0(a4)
    80003090:	eae7e2e3          	bltu	a5,a4,80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    80003094:	141027f3          	csrr	a5,sepc
    80003098:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000309c:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800030a0:	100027f3          	csrr	a5,sstatus
    800030a4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800030a8:	fb043903          	ld	s2,-80(s0)
            TCB::time_slice_counter = 0;
    800030ac:	0000a797          	auipc	a5,0xa
    800030b0:	d5c7b783          	ld	a5,-676(a5) # 8000ce08 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030b4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800030b8:	00000097          	auipc	ra,0x0
    800030bc:	3d4080e7          	jalr	980(ra) # 8000348c <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    800030c0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    800030c4:	14149073          	csrw	sepc,s1
}
    800030c8:	e6dff06f          	j	80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
    __asm__ volatile ("csrr %0, sepc" : "=r"(sepc));
    800030cc:	141027f3          	csrr	a5,sepc
    800030d0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800030d4:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800030d8:	100027f3          	csrr	a5,sstatus
    800030dc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800030e0:	fc043903          	ld	s2,-64(s0)
        int irq = plic_claim();
    800030e4:	00004097          	auipc	ra,0x4
    800030e8:	680080e7          	jalr	1664(ra) # 80007764 <plic_claim>
    800030ec:	00050493          	mv	s1,a0
        if (irq == CONSOLE_IRQ) {
    800030f0:	00a00793          	li	a5,10
    800030f4:	02f50263          	beq	a0,a5,80003118 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>
        plic_complete(irq);
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00004097          	auipc	ra,0x4
    80003100:	6a0080e7          	jalr	1696(ra) # 8000779c <plic_complete>
    __asm__ volatile ("csrw sepc, %0" : : "r"(val));
    80003104:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrw sstatus, %0" : : "r"(val));
    80003108:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrc sip, %0" : : "r"(mask));
    8000310c:	20000793          	li	a5,512
    80003110:	1447b073          	csrc	sip,a5
}
    80003114:	e21ff06f          	j	80002f34 <_ZN5RiscV22handle_supervisor_trapEv+0xf4>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003118:	0000a797          	auipc	a5,0xa
    8000311c:	cc07b783          	ld	a5,-832(a5) # 8000cdd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003120:	0007b783          	ld	a5,0(a5)
    80003124:	0007c783          	lbu	a5,0(a5)
    80003128:	0017f793          	andi	a5,a5,1
    8000312c:	fc0786e3          	beqz	a5,800030f8 <_ZN5RiscV22handle_supervisor_trapEv+0x2b8>
                char c = *(char *) CONSOLE_RX_DATA;
    80003130:	0000a797          	auipc	a5,0xa
    80003134:	ca07b783          	ld	a5,-864(a5) # 8000cdd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003138:	0007b783          	ld	a5,0(a5)
                Con::putc_input(c);
    8000313c:	0007c503          	lbu	a0,0(a5)
    80003140:	fffff097          	auipc	ra,0xfffff
    80003144:	d58080e7          	jalr	-680(ra) # 80001e98 <_ZN3Con10putc_inputEc>
            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80003148:	fd1ff06f          	j	80003118 <_ZN5RiscV22handle_supervisor_trapEv+0x2d8>

000000008000314c <_ZN10ThreadList9get_firstEv>:

void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

TCB *ThreadList::get_first() {
    8000314c:	ff010113          	addi	sp,sp,-16
    80003150:	00813423          	sd	s0,8(sp)
    80003154:	01010413          	addi	s0,sp,16
    return (head ? head -> data : nullptr);
    80003158:	00053503          	ld	a0,0(a0)
    8000315c:	00050463          	beqz	a0,80003164 <_ZN10ThreadList9get_firstEv+0x18>
    80003160:	00053503          	ld	a0,0(a0)
}
    80003164:	00813403          	ld	s0,8(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret

0000000080003170 <_ZN10ThreadList6removeEP3TCB>:
    tmp -> next = nullptr;
    delete tmp;
    return thread;
}

int ThreadList::remove(TCB *thread) {
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00813423          	sd	s0,8(sp)
    80003178:	01010413          	addi	s0,sp,16
    if (!thread) return -1;
    8000317c:	04058863          	beqz	a1,800031cc <_ZN10ThreadList6removeEP3TCB+0x5c>
    Node *tmp = head, *prev = nullptr;
    80003180:	00053783          	ld	a5,0(a0)
    80003184:	00000693          	li	a3,0
    while (tmp && tmp -> data != thread) {
    80003188:	00078c63          	beqz	a5,800031a0 <_ZN10ThreadList6removeEP3TCB+0x30>
    8000318c:	0007b703          	ld	a4,0(a5)
    80003190:	00b70863          	beq	a4,a1,800031a0 <_ZN10ThreadList6removeEP3TCB+0x30>
        prev = tmp;
    80003194:	00078693          	mv	a3,a5
        tmp = tmp -> next;
    80003198:	0087b783          	ld	a5,8(a5)
    while (tmp && tmp -> data != thread) {
    8000319c:	fedff06f          	j	80003188 <_ZN10ThreadList6removeEP3TCB+0x18>
    }
    if (!tmp) return -2;
    800031a0:	02078a63          	beqz	a5,800031d4 <_ZN10ThreadList6removeEP3TCB+0x64>
    if (prev) prev -> next = tmp -> next;
    800031a4:	00068e63          	beqz	a3,800031c0 <_ZN10ThreadList6removeEP3TCB+0x50>
    800031a8:	0087b783          	ld	a5,8(a5)
    800031ac:	00f6b423          	sd	a5,8(a3)
    else head = tmp;
    return 0;
    800031b0:	00000513          	li	a0,0
}
    800031b4:	00813403          	ld	s0,8(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret
    else head = tmp;
    800031c0:	00f53023          	sd	a5,0(a0)
    return 0;
    800031c4:	00000513          	li	a0,0
    800031c8:	fedff06f          	j	800031b4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!thread) return -1;
    800031cc:	fff00513          	li	a0,-1
    800031d0:	fe5ff06f          	j	800031b4 <_ZN10ThreadList6removeEP3TCB+0x44>
    if (!tmp) return -2;
    800031d4:	ffe00513          	li	a0,-2
    800031d8:	fddff06f          	j	800031b4 <_ZN10ThreadList6removeEP3TCB+0x44>

00000000800031dc <_ZN10ThreadListnwEm>:

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00113423          	sd	ra,8(sp)
    800031e4:	00813023          	sd	s0,0(sp)
    800031e8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	620080e7          	jalr	1568(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	254080e7          	jalr	596(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_ZN10ThreadListdlEPv>:

void ThreadList::operator delete(void *addr) {
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00113423          	sd	ra,8(sp)
    80003214:	00813023          	sd	s0,0(sp)
    80003218:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	3a0080e7          	jalr	928(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
}
    80003224:	00813083          	ld	ra,8(sp)
    80003228:	00013403          	ld	s0,0(sp)
    8000322c:	01010113          	addi	sp,sp,16
    80003230:	00008067          	ret

0000000080003234 <_ZN10ThreadList4NodenwEm>:

void *ThreadList::Node::operator new(size_t size) {
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00113423          	sd	ra,8(sp)
    8000323c:	00813023          	sd	s0,0(sp)
    80003240:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	5c8080e7          	jalr	1480(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	1fc080e7          	jalr	508(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003254:	00813083          	ld	ra,8(sp)
    80003258:	00013403          	ld	s0,0(sp)
    8000325c:	01010113          	addi	sp,sp,16
    80003260:	00008067          	ret

0000000080003264 <_ZN10ThreadList9push_backEP3TCB>:
void ThreadList::push_back(TCB *thread) {
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	01213023          	sd	s2,0(sp)
    80003278:	02010413          	addi	s0,sp,32
    8000327c:	00050493          	mv	s1,a0
    80003280:	00058913          	mv	s2,a1
    tail = (head ? tail -> next : head) = new Node(thread);
    80003284:	01000513          	li	a0,16
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	fac080e7          	jalr	-84(ra) # 80003234 <_ZN10ThreadList4NodenwEm>
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    80003290:	01253023          	sd	s2,0(a0)
    80003294:	00053423          	sd	zero,8(a0)
    80003298:	0004b783          	ld	a5,0(s1)
    8000329c:	02078463          	beqz	a5,800032c4 <_ZN10ThreadList9push_backEP3TCB+0x60>
    800032a0:	0084b783          	ld	a5,8(s1)
    800032a4:	00a7b423          	sd	a0,8(a5)
    800032a8:	00a4b423          	sd	a0,8(s1)
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
    tail = (head ? tail -> next : head) = new Node(thread);
    800032c4:	00a4b023          	sd	a0,0(s1)
    800032c8:	fe1ff06f          	j	800032a8 <_ZN10ThreadList9push_backEP3TCB+0x44>

00000000800032cc <_ZN10ThreadList4NodedlEPv>:

void ThreadList::Node::operator delete(void *addr) {
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00113423          	sd	ra,8(sp)
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	2e0080e7          	jalr	736(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <_ZN10ThreadList12remove_firstEv>:
TCB *ThreadList::remove_first() {
    800032f4:	fe010113          	addi	sp,sp,-32
    800032f8:	00113c23          	sd	ra,24(sp)
    800032fc:	00813823          	sd	s0,16(sp)
    80003300:	00913423          	sd	s1,8(sp)
    80003304:	02010413          	addi	s0,sp,32
    80003308:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000330c:	00053503          	ld	a0,0(a0)
    80003310:	02050863          	beqz	a0,80003340 <_ZN10ThreadList12remove_firstEv+0x4c>
    TCB* thread = tmp -> data;
    80003314:	00053483          	ld	s1,0(a0)
    head = head -> next;
    80003318:	00853703          	ld	a4,8(a0)
    8000331c:	00e7b023          	sd	a4,0(a5)
    delete tmp;
    80003320:	00000097          	auipc	ra,0x0
    80003324:	fac080e7          	jalr	-84(ra) # 800032cc <_ZN10ThreadList4NodedlEPv>
}
    80003328:	00048513          	mv	a0,s1
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret
    if (!head) return nullptr;
    80003340:	00050493          	mv	s1,a0
    80003344:	fe5ff06f          	j	80003328 <_ZN10ThreadList12remove_firstEv+0x34>

0000000080003348 <_ZN10ThreadList4freeEv>:
void ThreadList::free() {
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	02010413          	addi	s0,sp,32
    8000335c:	00050493          	mv	s1,a0
    while (get_first()) remove_first();
    80003360:	00048513          	mv	a0,s1
    80003364:	00000097          	auipc	ra,0x0
    80003368:	de8080e7          	jalr	-536(ra) # 8000314c <_ZN10ThreadList9get_firstEv>
    8000336c:	00050a63          	beqz	a0,80003380 <_ZN10ThreadList4freeEv+0x38>
    80003370:	00048513          	mv	a0,s1
    80003374:	00000097          	auipc	ra,0x0
    80003378:	f80080e7          	jalr	-128(ra) # 800032f4 <_ZN10ThreadList12remove_firstEv>
    8000337c:	fe5ff06f          	j	80003360 <_ZN10ThreadList4freeEv+0x18>
}
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00813483          	ld	s1,8(sp)
    8000338c:	02010113          	addi	sp,sp,32
    80003390:	00008067          	ret

0000000080003394 <_ZN3TCBC1EPFvPvES0_S0_>:

TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    context = {
            (uint64) wrapper_function,
            /// stack starts from max address, rises to lower locations
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003394:	08068863          	beqz	a3,80003424 <_ZN3TCBC1EPFvPvES0_S0_+0x90>
    80003398:	000017b7          	lui	a5,0x1
    8000339c:	fff78793          	addi	a5,a5,-1 # fff <_entry-0x7ffff001>
    800033a0:	00f687b3          	add	a5,a3,a5
    context = {
    800033a4:	00000717          	auipc	a4,0x0
    800033a8:	28470713          	addi	a4,a4,644 # 80003628 <_ZN3TCB16wrapper_functionEv>
    800033ac:	00e53823          	sd	a4,16(a0)
    800033b0:	00f53c23          	sd	a5,24(a0)
    };
    id = cnt++;
    800033b4:	0000a717          	auipc	a4,0xa
    800033b8:	b0c70713          	addi	a4,a4,-1268 # 8000cec0 <_ZN3TCB3cntE>
    800033bc:	00072783          	lw	a5,0(a4)
    800033c0:	0017881b          	addiw	a6,a5,1
    800033c4:	01072023          	sw	a6,0(a4)
    800033c8:	00f52423          	sw	a5,8(a0)
    time_slice = DEFAULT_TIME_SLICE;
    800033cc:	00200793          	li	a5,2
    800033d0:	00f53023          	sd	a5,0(a0)
    status = RUNNABLE;
    800033d4:	02052023          	sw	zero,32(a0)
    this -> function_body = function_body;
    800033d8:	02b53423          	sd	a1,40(a0)
    this -> arg = arg;
    800033dc:	02c53823          	sd	a2,48(a0)
    this -> stack = stack;
    800033e0:	02d53c23          	sd	a3,56(a0)
    timed_wait = false;
    800033e4:	04050423          	sb	zero,72(a0)
    time_to_sleep = 0;
    800033e8:	04053823          	sd	zero,80(a0)
    next_ready = nullptr;
    800033ec:	04053023          	sd	zero,64(a0)
    next_sleeping = nullptr;
    800033f0:	04053c23          	sd	zero,88(a0)
    sem = nullptr;
    800033f4:	06053023          	sd	zero,96(a0)
    if (function_body) Scheduler::put(this);
    800033f8:	02058a63          	beqz	a1,8000342c <_ZN3TCBC1EPFvPvES0_S0_+0x98>
TCB::TCB(void (*function_body)(void *), void *arg, void *stack) {
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00113423          	sd	ra,8(sp)
    80003404:	00813023          	sd	s0,0(sp)
    80003408:	01010413          	addi	s0,sp,16
    if (function_body) Scheduler::put(this);
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	670080e7          	jalr	1648(ra) # 80002a7c <_ZN9Scheduler3putEP3TCB>
}
    80003414:	00813083          	ld	ra,8(sp)
    80003418:	00013403          	ld	s0,0(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret
            (uint64) (stack ? (uint64) stack + DEFAULT_STACK_SIZE - 1 : 0)
    80003424:	00000793          	li	a5,0
    80003428:	f7dff06f          	j	800033a4 <_ZN3TCBC1EPFvPvES0_S0_+0x10>
    8000342c:	00008067          	ret

0000000080003430 <_ZN3TCB5yieldEPS_S0_>:
    RiscV::popSppSpie();
    if (running -> function_body) running -> function_body(running -> arg);
    thread_exit();
}

void TCB::yield(TCB *old_running, TCB *new_running) {
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	01213023          	sd	s2,0(sp)
    80003444:	02010413          	addi	s0,sp,32
    80003448:	00050493          	mv	s1,a0
    8000344c:	00058913          	mv	s2,a1
    RiscV::push_registers();
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	cb8080e7          	jalr	-840(ra) # 80001108 <_ZN5RiscV14push_registersEv>
    if (old_running != new_running) context_switch(&old_running -> context, &new_running -> context);
    80003458:	01248a63          	beq	s1,s2,8000346c <_ZN3TCB5yieldEPS_S0_+0x3c>
    8000345c:	01090593          	addi	a1,s2,16
    80003460:	01048513          	addi	a0,s1,16
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	da4080e7          	jalr	-604(ra) # 80001208 <_ZN3TCB14context_switchEPNS_7ContextES1_>
    RiscV::pop_registers();
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	d1c080e7          	jalr	-740(ra) # 80001188 <_ZN5RiscV13pop_registersEv>
}
    80003474:	01813083          	ld	ra,24(sp)
    80003478:	01013403          	ld	s0,16(sp)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	00013903          	ld	s2,0(sp)
    80003484:	02010113          	addi	sp,sp,32
    80003488:	00008067          	ret

000000008000348c <_ZN3TCB8dispatchEv>:

void TCB::dispatch() {
    8000348c:	fe010113          	addi	sp,sp,-32
    80003490:	00113c23          	sd	ra,24(sp)
    80003494:	00813823          	sd	s0,16(sp)
    80003498:	00913423          	sd	s1,8(sp)
    8000349c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800034a0:	0000a497          	auipc	s1,0xa
    800034a4:	a284b483          	ld	s1,-1496(s1) # 8000cec8 <_ZN3TCB7runningE>
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800034a8:	0204a783          	lw	a5,32(s1)
    800034ac:	04078663          	beqz	a5,800034f8 <_ZN3TCB8dispatchEv+0x6c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    800034b0:	00300713          	li	a4,3
    800034b4:	04e78a63          	beq	a5,a4,80003508 <_ZN3TCB8dispatchEv+0x7c>
    running = Scheduler::get();
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	634080e7          	jalr	1588(ra) # 80002aec <_ZN9Scheduler3getEv>
    800034c0:	00050593          	mv	a1,a0
    800034c4:	0000a797          	auipc	a5,0xa
    800034c8:	9fc78793          	addi	a5,a5,-1540 # 8000cec0 <_ZN3TCB3cntE>
    800034cc:	00a7b423          	sd	a0,8(a5)
    time_slice_counter = 0;
    800034d0:	0007b823          	sd	zero,16(a5)
    if (old != running) yield(old, running);
    800034d4:	00a48863          	beq	s1,a0,800034e4 <_ZN3TCB8dispatchEv+0x58>
    800034d8:	00048513          	mv	a0,s1
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	f54080e7          	jalr	-172(ra) # 80003430 <_ZN3TCB5yieldEPS_S0_>
}
    800034e4:	01813083          	ld	ra,24(sp)
    800034e8:	01013403          	ld	s0,16(sp)
    800034ec:	00813483          	ld	s1,8(sp)
    800034f0:	02010113          	addi	sp,sp,32
    800034f4:	00008067          	ret
    if (old -> status == RUNNABLE) Scheduler::put(old);
    800034f8:	00048513          	mv	a0,s1
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	580080e7          	jalr	1408(ra) # 80002a7c <_ZN9Scheduler3putEP3TCB>
    80003504:	fb5ff06f          	j	800034b8 <_ZN3TCB8dispatchEv+0x2c>
    else if (old -> status == FINISHED) MemoryAllocator::mem_free(old -> stack);
    80003508:	0384b503          	ld	a0,56(s1)
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	0b0080e7          	jalr	176(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
    80003514:	fa5ff06f          	j	800034b8 <_ZN3TCB8dispatchEv+0x2c>

0000000080003518 <_ZNK3TCB14get_next_readyEv>:

TCB *TCB::get_next_ready() const {
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813423          	sd	s0,8(sp)
    80003520:	01010413          	addi	s0,sp,16
    return next_ready;
}
    80003524:	04053503          	ld	a0,64(a0)
    80003528:	00813403          	ld	s0,8(sp)
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret

0000000080003534 <_ZN3TCB14set_next_readyEPS_>:

void TCB::set_next_ready(TCB *next) {
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00813423          	sd	s0,8(sp)
    8000353c:	01010413          	addi	s0,sp,16
    next_ready = next;
    80003540:	04b53023          	sd	a1,64(a0)
}
    80003544:	00813403          	ld	s0,8(sp)
    80003548:	01010113          	addi	sp,sp,16
    8000354c:	00008067          	ret

0000000080003550 <_ZN3TCB17set_next_sleepingEPS_>:

void TCB::set_next_sleeping(TCB *next) {
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    next_sleeping = next;
    8000355c:	04b53c23          	sd	a1,88(a0)
}
    80003560:	00813403          	ld	s0,8(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret

000000008000356c <_ZNK3TCB17get_next_sleepingEv>:

TCB* TCB::get_next_sleeping() const {
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00813423          	sd	s0,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    return next_sleeping;
}
    80003578:	05853503          	ld	a0,88(a0)
    8000357c:	00813403          	ld	s0,8(sp)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret

0000000080003588 <_ZN3TCB17set_time_to_sleepEm>:

void TCB::set_time_to_sleep(time_t time) {
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813423          	sd	s0,8(sp)
    80003590:	01010413          	addi	s0,sp,16
    time_to_sleep = time;
    80003594:	04b53823          	sd	a1,80(a0)
}
    80003598:	00813403          	ld	s0,8(sp)
    8000359c:	01010113          	addi	sp,sp,16
    800035a0:	00008067          	ret

00000000800035a4 <_ZNK3TCB17get_time_to_sleepEv>:

time_t TCB::get_time_to_sleep() const {
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00813423          	sd	s0,8(sp)
    800035ac:	01010413          	addi	s0,sp,16
    return time_to_sleep;
}
    800035b0:	05053503          	ld	a0,80(a0)
    800035b4:	00813403          	ld	s0,8(sp)
    800035b8:	01010113          	addi	sp,sp,16
    800035bc:	00008067          	ret

00000000800035c0 <_ZN3TCB10set_statusENS_6StatusE>:

void TCB::set_status(TCB::Status stat) {
    800035c0:	ff010113          	addi	sp,sp,-16
    800035c4:	00813423          	sd	s0,8(sp)
    800035c8:	01010413          	addi	s0,sp,16
    this -> status = stat;
    800035cc:	02b52023          	sw	a1,32(a0)
}
    800035d0:	00813403          	ld	s0,8(sp)
    800035d4:	01010113          	addi	sp,sp,16
    800035d8:	00008067          	ret

00000000800035dc <_ZN3TCB11thread_exitEv>:
    if (!running) return -1;
    800035dc:	0000a517          	auipc	a0,0xa
    800035e0:	8ec53503          	ld	a0,-1812(a0) # 8000cec8 <_ZN3TCB7runningE>
    800035e4:	02050e63          	beqz	a0,80003620 <_ZN3TCB11thread_exitEv+0x44>
int TCB::thread_exit() {
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00113423          	sd	ra,8(sp)
    800035f0:	00813023          	sd	s0,0(sp)
    800035f4:	01010413          	addi	s0,sp,16
    running -> set_status(Status::FINISHED);
    800035f8:	00300593          	li	a1,3
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	fc4080e7          	jalr	-60(ra) # 800035c0 <_ZN3TCB10set_statusENS_6StatusE>
    thread_dispatch();
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	dc8080e7          	jalr	-568(ra) # 800013cc <_Z15thread_dispatchv>
    return 0;
    8000360c:	00000513          	li	a0,0
}
    80003610:	00813083          	ld	ra,8(sp)
    80003614:	00013403          	ld	s0,0(sp)
    80003618:	01010113          	addi	sp,sp,16
    8000361c:	00008067          	ret
    if (!running) return -1;
    80003620:	fff00513          	li	a0,-1
}
    80003624:	00008067          	ret

0000000080003628 <_ZN3TCB16wrapper_functionEv>:
void TCB::wrapper_function() {
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	00813023          	sd	s0,0(sp)
    80003634:	01010413          	addi	s0,sp,16
    RiscV::popSppSpie();
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	7c0080e7          	jalr	1984(ra) # 80002df8 <_ZN5RiscV10popSppSpieEv>
    if (running -> function_body) running -> function_body(running -> arg);
    80003640:	0000a717          	auipc	a4,0xa
    80003644:	88873703          	ld	a4,-1912(a4) # 8000cec8 <_ZN3TCB7runningE>
    80003648:	02873783          	ld	a5,40(a4)
    8000364c:	00078663          	beqz	a5,80003658 <_ZN3TCB16wrapper_functionEv+0x30>
    80003650:	03073503          	ld	a0,48(a4)
    80003654:	000780e7          	jalr	a5
    thread_exit();
    80003658:	00000097          	auipc	ra,0x0
    8000365c:	f84080e7          	jalr	-124(ra) # 800035dc <_ZN3TCB11thread_exitEv>
}
    80003660:	00813083          	ld	ra,8(sp)
    80003664:	00013403          	ld	s0,0(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00113423          	sd	ra,8(sp)
    80003678:	00813023          	sd	s0,0(sp)
    8000367c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    80003680:	fffff097          	auipc	ra,0xfffff
    80003684:	18c080e7          	jalr	396(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	dc0080e7          	jalr	-576(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003690:	00813083          	ld	ra,8(sp)
    80003694:	00013403          	ld	s0,0(sp)
    80003698:	01010113          	addi	sp,sp,16
    8000369c:	00008067          	ret

00000000800036a0 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *addr) {
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00113423          	sd	ra,8(sp)
    800036a8:	00813023          	sd	s0,0(sp)
    800036ac:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	f0c080e7          	jalr	-244(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800036b8:	00813083          	ld	ra,8(sp)
    800036bc:	00013403          	ld	s0,0(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret

00000000800036c8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_>:
int TCB::thread_create(thread_t *handle, void(*start_routine)(void *), void *arg, void *stack_begin_address) {
    800036c8:	fc010113          	addi	sp,sp,-64
    800036cc:	02113c23          	sd	ra,56(sp)
    800036d0:	02813823          	sd	s0,48(sp)
    800036d4:	02913423          	sd	s1,40(sp)
    800036d8:	03213023          	sd	s2,32(sp)
    800036dc:	01313c23          	sd	s3,24(sp)
    800036e0:	01413823          	sd	s4,16(sp)
    800036e4:	01513423          	sd	s5,8(sp)
    800036e8:	04010413          	addi	s0,sp,64
    800036ec:	00050913          	mv	s2,a0
    800036f0:	00058993          	mv	s3,a1
    800036f4:	00060a13          	mv	s4,a2
    800036f8:	00068a93          	mv	s5,a3
    *handle = new TCB(start_routine, arg, stack_begin_address);
    800036fc:	06800513          	li	a0,104
    80003700:	00000097          	auipc	ra,0x0
    80003704:	f70080e7          	jalr	-144(ra) # 80003670 <_ZN3TCBnwEm>
    80003708:	00050493          	mv	s1,a0
    8000370c:	000a8693          	mv	a3,s5
    80003710:	000a0613          	mv	a2,s4
    80003714:	00098593          	mv	a1,s3
    80003718:	00000097          	auipc	ra,0x0
    8000371c:	c7c080e7          	jalr	-900(ra) # 80003394 <_ZN3TCBC1EPFvPvES0_S0_>
    80003720:	0200006f          	j	80003740 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_+0x78>
    80003724:	00050913          	mv	s2,a0
    80003728:	00048513          	mv	a0,s1
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	f74080e7          	jalr	-140(ra) # 800036a0 <_ZN3TCBdlEPv>
    80003734:	00090513          	mv	a0,s2
    80003738:	0000b097          	auipc	ra,0xb
    8000373c:	8c0080e7          	jalr	-1856(ra) # 8000dff8 <_Unwind_Resume>
    80003740:	00993023          	sd	s1,0(s2)
}
    80003744:	00000513          	li	a0,0
    80003748:	03813083          	ld	ra,56(sp)
    8000374c:	03013403          	ld	s0,48(sp)
    80003750:	02813483          	ld	s1,40(sp)
    80003754:	02013903          	ld	s2,32(sp)
    80003758:	01813983          	ld	s3,24(sp)
    8000375c:	01013a03          	ld	s4,16(sp)
    80003760:	00813a83          	ld	s5,8(sp)
    80003764:	04010113          	addi	sp,sp,64
    80003768:	00008067          	ret

000000008000376c <_ZN3TCBnaEm>:

void *TCB::operator new[](size_t size) {
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00113423          	sd	ra,8(sp)
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	090080e7          	jalr	144(ra) # 8000280c <_ZN15MemoryAllocator20get_number_of_blocksEm>
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	cc4080e7          	jalr	-828(ra) # 80002448 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN3TCBdaEPv>:

void TCB::operator delete[](void *addr) {
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00113423          	sd	ra,8(sp)
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(addr);
    800037ac:	fffff097          	auipc	ra,0xfffff
    800037b0:	e10080e7          	jalr	-496(ra) # 800025bc <_ZN15MemoryAllocator8mem_freeEPv>
}
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZNK3TCB11is_finishedEv>:

bool TCB::is_finished() const {
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00813423          	sd	s0,8(sp)
    800037cc:	01010413          	addi	s0,sp,16
    return status == FINISHED;
    800037d0:	02052503          	lw	a0,32(a0)
    800037d4:	ffd50513          	addi	a0,a0,-3
}
    800037d8:	00153513          	seqz	a0,a0
    800037dc:	00813403          	ld	s0,8(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <_ZN3TCB21clear_from_timed_waitEb>:

void TCB::clear_from_timed_wait(bool removed_from_timer) {
    800037e8:	fe010113          	addi	sp,sp,-32
    800037ec:	00113c23          	sd	ra,24(sp)
    800037f0:	00813823          	sd	s0,16(sp)
    800037f4:	00913423          	sd	s1,8(sp)
    800037f8:	02010413          	addi	s0,sp,32
    800037fc:	00050493          	mv	s1,a0
    if (removed_from_timer) {
    80003800:	02059063          	bnez	a1,80003820 <_ZN3TCB21clear_from_timed_waitEb+0x38>
        sem -> blocked_threads -> remove(this);
        ++sem -> value;
    }
    timed_wait = false;
    80003804:	04048423          	sb	zero,72(s1)
    sem = nullptr;
    80003808:	0604b023          	sd	zero,96(s1)
}
    8000380c:	01813083          	ld	ra,24(sp)
    80003810:	01013403          	ld	s0,16(sp)
    80003814:	00813483          	ld	s1,8(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
        sem -> blocked_threads -> remove(this);
    80003820:	06053783          	ld	a5,96(a0)
    80003824:	00050593          	mv	a1,a0
    80003828:	0087b503          	ld	a0,8(a5)
    8000382c:	00000097          	auipc	ra,0x0
    80003830:	944080e7          	jalr	-1724(ra) # 80003170 <_ZN10ThreadList6removeEP3TCB>
        ++sem -> value;
    80003834:	0604b703          	ld	a4,96(s1)
    80003838:	01072783          	lw	a5,16(a4)
    8000383c:	0017879b          	addiw	a5,a5,1
    80003840:	00f72823          	sw	a5,16(a4)
    80003844:	fc1ff06f          	j	80003804 <_ZN3TCB21clear_from_timed_waitEb+0x1c>

0000000080003848 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00113c23          	sd	ra,24(sp)
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	00913423          	sd	s1,8(sp)
    80003858:	01213023          	sd	s2,0(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003864:	00000913          	li	s2,0
    80003868:	00c0006f          	j	80003874 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	b60080e7          	jalr	-1184(ra) # 800013cc <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	dac080e7          	jalr	-596(ra) # 80001620 <_Z4getcv>
    8000387c:	0005059b          	sext.w	a1,a0
    80003880:	01b00793          	li	a5,27
    80003884:	02f58a63          	beq	a1,a5,800038b8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003888:	0084b503          	ld	a0,8(s1)
    8000388c:	00001097          	auipc	ra,0x1
    80003890:	66c080e7          	jalr	1644(ra) # 80004ef8 <_ZN6Buffer3putEi>
        i++;
    80003894:	0019071b          	addiw	a4,s2,1
    80003898:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000389c:	0004a683          	lw	a3,0(s1)
    800038a0:	0026979b          	slliw	a5,a3,0x2
    800038a4:	00d787bb          	addw	a5,a5,a3
    800038a8:	0017979b          	slliw	a5,a5,0x1
    800038ac:	02f767bb          	remw	a5,a4,a5
    800038b0:	fc0792e3          	bnez	a5,80003874 <_ZL16producerKeyboardPv+0x2c>
    800038b4:	fb9ff06f          	j	8000386c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800038b8:	00100793          	li	a5,1
    800038bc:	00009717          	auipc	a4,0x9
    800038c0:	60f72e23          	sw	a5,1564(a4) # 8000ced8 <_ZL9threadEnd>
    data->buffer->put('!');
    800038c4:	02100593          	li	a1,33
    800038c8:	0084b503          	ld	a0,8(s1)
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	62c080e7          	jalr	1580(ra) # 80004ef8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800038d4:	0104b503          	ld	a0,16(s1)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	c18080e7          	jalr	-1000(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	00813483          	ld	s1,8(sp)
    800038ec:	00013903          	ld	s2,0(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret

00000000800038f8 <_ZL8producerPv>:

static void producer(void *arg) {
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	01213023          	sd	s2,0(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003914:	00000913          	li	s2,0
    80003918:	00c0006f          	j	80003924 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	ab0080e7          	jalr	-1360(ra) # 800013cc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003924:	00009797          	auipc	a5,0x9
    80003928:	5b47a783          	lw	a5,1460(a5) # 8000ced8 <_ZL9threadEnd>
    8000392c:	02079e63          	bnez	a5,80003968 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003930:	0004a583          	lw	a1,0(s1)
    80003934:	0305859b          	addiw	a1,a1,48
    80003938:	0084b503          	ld	a0,8(s1)
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	5bc080e7          	jalr	1468(ra) # 80004ef8 <_ZN6Buffer3putEi>
        i++;
    80003944:	0019071b          	addiw	a4,s2,1
    80003948:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000394c:	0004a683          	lw	a3,0(s1)
    80003950:	0026979b          	slliw	a5,a3,0x2
    80003954:	00d787bb          	addw	a5,a5,a3
    80003958:	0017979b          	slliw	a5,a5,0x1
    8000395c:	02f767bb          	remw	a5,a4,a5
    80003960:	fc0792e3          	bnez	a5,80003924 <_ZL8producerPv+0x2c>
    80003964:	fb9ff06f          	j	8000391c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003968:	0104b503          	ld	a0,16(s1)
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	b84080e7          	jalr	-1148(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	00013903          	ld	s2,0(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000398c:	fd010113          	addi	sp,sp,-48
    80003990:	02113423          	sd	ra,40(sp)
    80003994:	02813023          	sd	s0,32(sp)
    80003998:	00913c23          	sd	s1,24(sp)
    8000399c:	01213823          	sd	s2,16(sp)
    800039a0:	01313423          	sd	s3,8(sp)
    800039a4:	03010413          	addi	s0,sp,48
    800039a8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039ac:	00000993          	li	s3,0
    800039b0:	01c0006f          	j	800039cc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	a18080e7          	jalr	-1512(ra) # 800013cc <_Z15thread_dispatchv>
    800039bc:	0500006f          	j	80003a0c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800039c0:	00a00513          	li	a0,10
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	ca8080e7          	jalr	-856(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800039cc:	00009797          	auipc	a5,0x9
    800039d0:	50c7a783          	lw	a5,1292(a5) # 8000ced8 <_ZL9threadEnd>
    800039d4:	06079063          	bnez	a5,80003a34 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800039d8:	00893503          	ld	a0,8(s2)
    800039dc:	00001097          	auipc	ra,0x1
    800039e0:	5ac080e7          	jalr	1452(ra) # 80004f88 <_ZN6Buffer3getEv>
        i++;
    800039e4:	0019849b          	addiw	s1,s3,1
    800039e8:	0004899b          	sext.w	s3,s1
        putc(key);
    800039ec:	0ff57513          	andi	a0,a0,255
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	c7c080e7          	jalr	-900(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800039f8:	00092703          	lw	a4,0(s2)
    800039fc:	0027179b          	slliw	a5,a4,0x2
    80003a00:	00e787bb          	addw	a5,a5,a4
    80003a04:	02f4e7bb          	remw	a5,s1,a5
    80003a08:	fa0786e3          	beqz	a5,800039b4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a0c:	05000793          	li	a5,80
    80003a10:	02f4e4bb          	remw	s1,s1,a5
    80003a14:	fa049ce3          	bnez	s1,800039cc <_ZL8consumerPv+0x40>
    80003a18:	fa9ff06f          	j	800039c0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a1c:	00893503          	ld	a0,8(s2)
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	568080e7          	jalr	1384(ra) # 80004f88 <_ZN6Buffer3getEv>
        putc(key);
    80003a28:	0ff57513          	andi	a0,a0,255
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	c40080e7          	jalr	-960(ra) # 8000166c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003a34:	00893503          	ld	a0,8(s2)
    80003a38:	00001097          	auipc	ra,0x1
    80003a3c:	5dc080e7          	jalr	1500(ra) # 80005014 <_ZN6Buffer6getCntEv>
    80003a40:	fca04ee3          	bgtz	a0,80003a1c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003a44:	01093503          	ld	a0,16(s2)
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	aa8080e7          	jalr	-1368(ra) # 800014f0 <_Z10sem_signalP3Sem>
}
    80003a50:	02813083          	ld	ra,40(sp)
    80003a54:	02013403          	ld	s0,32(sp)
    80003a58:	01813483          	ld	s1,24(sp)
    80003a5c:	01013903          	ld	s2,16(sp)
    80003a60:	00813983          	ld	s3,8(sp)
    80003a64:	03010113          	addi	sp,sp,48
    80003a68:	00008067          	ret

0000000080003a6c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a6c:	f9010113          	addi	sp,sp,-112
    80003a70:	06113423          	sd	ra,104(sp)
    80003a74:	06813023          	sd	s0,96(sp)
    80003a78:	04913c23          	sd	s1,88(sp)
    80003a7c:	05213823          	sd	s2,80(sp)
    80003a80:	05313423          	sd	s3,72(sp)
    80003a84:	05413023          	sd	s4,64(sp)
    80003a88:	03513c23          	sd	s5,56(sp)
    80003a8c:	03613823          	sd	s6,48(sp)
    80003a90:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a94:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a98:	00006517          	auipc	a0,0x6
    80003a9c:	69850513          	addi	a0,a0,1688 # 8000a130 <CONSOLE_STATUS+0x120>
    80003aa0:	00002097          	auipc	ra,0x2
    80003aa4:	540080e7          	jalr	1344(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    80003aa8:	01e00593          	li	a1,30
    80003aac:	fa040493          	addi	s1,s0,-96
    80003ab0:	00048513          	mv	a0,s1
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	5b4080e7          	jalr	1460(ra) # 80006068 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	680080e7          	jalr	1664(ra) # 80006140 <_Z11stringToIntPKc>
    80003ac8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003acc:	00006517          	auipc	a0,0x6
    80003ad0:	68450513          	addi	a0,a0,1668 # 8000a150 <CONSOLE_STATUS+0x140>
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	50c080e7          	jalr	1292(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    80003adc:	01e00593          	li	a1,30
    80003ae0:	00048513          	mv	a0,s1
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	584080e7          	jalr	1412(ra) # 80006068 <_Z9getStringPci>
    n = stringToInt(input);
    80003aec:	00048513          	mv	a0,s1
    80003af0:	00002097          	auipc	ra,0x2
    80003af4:	650080e7          	jalr	1616(ra) # 80006140 <_Z11stringToIntPKc>
    80003af8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003afc:	00006517          	auipc	a0,0x6
    80003b00:	67450513          	addi	a0,a0,1652 # 8000a170 <CONSOLE_STATUS+0x160>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	4dc080e7          	jalr	1244(ra) # 80005fe0 <_Z11printStringPKc>
    80003b0c:	00000613          	li	a2,0
    80003b10:	00a00593          	li	a1,10
    80003b14:	00090513          	mv	a0,s2
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	678080e7          	jalr	1656(ra) # 80006190 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b20:	00006517          	auipc	a0,0x6
    80003b24:	66850513          	addi	a0,a0,1640 # 8000a188 <CONSOLE_STATUS+0x178>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	4b8080e7          	jalr	1208(ra) # 80005fe0 <_Z11printStringPKc>
    80003b30:	00000613          	li	a2,0
    80003b34:	00a00593          	li	a1,10
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	654080e7          	jalr	1620(ra) # 80006190 <_Z8printIntiii>
    printString(".\n");
    80003b44:	00006517          	auipc	a0,0x6
    80003b48:	65c50513          	addi	a0,a0,1628 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	494080e7          	jalr	1172(ra) # 80005fe0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003b54:	0324c463          	blt	s1,s2,80003b7c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003b58:	03205c63          	blez	s2,80003b90 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003b5c:	03800513          	li	a0,56
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	470080e7          	jalr	1136(ra) # 80001fd0 <_Znwm>
    80003b68:	00050a13          	mv	s4,a0
    80003b6c:	00048593          	mv	a1,s1
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	2ec080e7          	jalr	748(ra) # 80004e5c <_ZN6BufferC1Ei>
    80003b78:	0300006f          	j	80003ba8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b7c:	00006517          	auipc	a0,0x6
    80003b80:	62c50513          	addi	a0,a0,1580 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	45c080e7          	jalr	1116(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80003b8c:	0140006f          	j	80003ba0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b90:	00006517          	auipc	a0,0x6
    80003b94:	65850513          	addi	a0,a0,1624 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	448080e7          	jalr	1096(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80003ba0:	000b0113          	mv	sp,s6
    80003ba4:	1500006f          	j	80003cf4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003ba8:	00000593          	li	a1,0
    80003bac:	00009517          	auipc	a0,0x9
    80003bb0:	33450513          	addi	a0,a0,820 # 8000cee0 <_ZL10waitForAll>
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	854080e7          	jalr	-1964(ra) # 80001408 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80003bbc:	00391793          	slli	a5,s2,0x3
    80003bc0:	00f78793          	addi	a5,a5,15
    80003bc4:	ff07f793          	andi	a5,a5,-16
    80003bc8:	40f10133          	sub	sp,sp,a5
    80003bcc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003bd0:	0019071b          	addiw	a4,s2,1
    80003bd4:	00171793          	slli	a5,a4,0x1
    80003bd8:	00e787b3          	add	a5,a5,a4
    80003bdc:	00379793          	slli	a5,a5,0x3
    80003be0:	00f78793          	addi	a5,a5,15
    80003be4:	ff07f793          	andi	a5,a5,-16
    80003be8:	40f10133          	sub	sp,sp,a5
    80003bec:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003bf0:	00191613          	slli	a2,s2,0x1
    80003bf4:	012607b3          	add	a5,a2,s2
    80003bf8:	00379793          	slli	a5,a5,0x3
    80003bfc:	00f987b3          	add	a5,s3,a5
    80003c00:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c04:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c08:	00009717          	auipc	a4,0x9
    80003c0c:	2d873703          	ld	a4,728(a4) # 8000cee0 <_ZL10waitForAll>
    80003c10:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c14:	00078613          	mv	a2,a5
    80003c18:	00000597          	auipc	a1,0x0
    80003c1c:	d7458593          	addi	a1,a1,-652 # 8000398c <_ZL8consumerPv>
    80003c20:	f9840513          	addi	a0,s0,-104
    80003c24:	ffffd097          	auipc	ra,0xffffd
    80003c28:	6d4080e7          	jalr	1748(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c2c:	00000493          	li	s1,0
    80003c30:	0280006f          	j	80003c58 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003c34:	00000597          	auipc	a1,0x0
    80003c38:	c1458593          	addi	a1,a1,-1004 # 80003848 <_ZL16producerKeyboardPv>
                      data + i);
    80003c3c:	00179613          	slli	a2,a5,0x1
    80003c40:	00f60633          	add	a2,a2,a5
    80003c44:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003c48:	00c98633          	add	a2,s3,a2
    80003c4c:	ffffd097          	auipc	ra,0xffffd
    80003c50:	6ac080e7          	jalr	1708(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003c54:	0014849b          	addiw	s1,s1,1
    80003c58:	0524d263          	bge	s1,s2,80003c9c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003c5c:	00149793          	slli	a5,s1,0x1
    80003c60:	009787b3          	add	a5,a5,s1
    80003c64:	00379793          	slli	a5,a5,0x3
    80003c68:	00f987b3          	add	a5,s3,a5
    80003c6c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c70:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c74:	00009717          	auipc	a4,0x9
    80003c78:	26c73703          	ld	a4,620(a4) # 8000cee0 <_ZL10waitForAll>
    80003c7c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c80:	00048793          	mv	a5,s1
    80003c84:	00349513          	slli	a0,s1,0x3
    80003c88:	00aa8533          	add	a0,s5,a0
    80003c8c:	fa9054e3          	blez	s1,80003c34 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c90:	00000597          	auipc	a1,0x0
    80003c94:	c6858593          	addi	a1,a1,-920 # 800038f8 <_ZL8producerPv>
    80003c98:	fa5ff06f          	j	80003c3c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c9c:	ffffd097          	auipc	ra,0xffffd
    80003ca0:	730080e7          	jalr	1840(ra) # 800013cc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003ca4:	00000493          	li	s1,0
    80003ca8:	00994e63          	blt	s2,s1,80003cc4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003cac:	00009517          	auipc	a0,0x9
    80003cb0:	23453503          	ld	a0,564(a0) # 8000cee0 <_ZL10waitForAll>
    80003cb4:	ffffd097          	auipc	ra,0xffffd
    80003cb8:	7f0080e7          	jalr	2032(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80003cbc:	0014849b          	addiw	s1,s1,1
    80003cc0:	fe9ff06f          	j	80003ca8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003cc4:	00009517          	auipc	a0,0x9
    80003cc8:	21c53503          	ld	a0,540(a0) # 8000cee0 <_ZL10waitForAll>
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	78c080e7          	jalr	1932(ra) # 80001458 <_Z9sem_closeP3Sem>
    delete buffer;
    80003cd4:	000a0e63          	beqz	s4,80003cf0 <_Z22producerConsumer_C_APIv+0x284>
    80003cd8:	000a0513          	mv	a0,s4
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	3c0080e7          	jalr	960(ra) # 8000509c <_ZN6BufferD1Ev>
    80003ce4:	000a0513          	mv	a0,s4
    80003ce8:	ffffe097          	auipc	ra,0xffffe
    80003cec:	310080e7          	jalr	784(ra) # 80001ff8 <_ZdlPv>
    80003cf0:	000b0113          	mv	sp,s6

}
    80003cf4:	f9040113          	addi	sp,s0,-112
    80003cf8:	06813083          	ld	ra,104(sp)
    80003cfc:	06013403          	ld	s0,96(sp)
    80003d00:	05813483          	ld	s1,88(sp)
    80003d04:	05013903          	ld	s2,80(sp)
    80003d08:	04813983          	ld	s3,72(sp)
    80003d0c:	04013a03          	ld	s4,64(sp)
    80003d10:	03813a83          	ld	s5,56(sp)
    80003d14:	03013b03          	ld	s6,48(sp)
    80003d18:	07010113          	addi	sp,sp,112
    80003d1c:	00008067          	ret
    80003d20:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d24:	000a0513          	mv	a0,s4
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	2d0080e7          	jalr	720(ra) # 80001ff8 <_ZdlPv>
    80003d30:	00048513          	mv	a0,s1
    80003d34:	0000a097          	auipc	ra,0xa
    80003d38:	2c4080e7          	jalr	708(ra) # 8000dff8 <_Unwind_Resume>

0000000080003d3c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	01213023          	sd	s2,0(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d58:	00100793          	li	a5,1
    80003d5c:	02a7f863          	bgeu	a5,a0,80003d8c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d60:	00a00793          	li	a5,10
    80003d64:	02f577b3          	remu	a5,a0,a5
    80003d68:	02078e63          	beqz	a5,80003da4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d6c:	fff48513          	addi	a0,s1,-1
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	fcc080e7          	jalr	-52(ra) # 80003d3c <_ZL9fibonaccim>
    80003d78:	00050913          	mv	s2,a0
    80003d7c:	ffe48513          	addi	a0,s1,-2
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	fbc080e7          	jalr	-68(ra) # 80003d3c <_ZL9fibonaccim>
    80003d88:	00a90533          	add	a0,s2,a0
}
    80003d8c:	01813083          	ld	ra,24(sp)
    80003d90:	01013403          	ld	s0,16(sp)
    80003d94:	00813483          	ld	s1,8(sp)
    80003d98:	00013903          	ld	s2,0(sp)
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	628080e7          	jalr	1576(ra) # 800013cc <_Z15thread_dispatchv>
    80003dac:	fc1ff06f          	j	80003d6c <_ZL9fibonaccim+0x30>

0000000080003db0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	01213023          	sd	s2,0(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dc8:	00000913          	li	s2,0
    80003dcc:	0380006f          	j	80003e04 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003dd0:	ffffd097          	auipc	ra,0xffffd
    80003dd4:	5fc080e7          	jalr	1532(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003dd8:	00148493          	addi	s1,s1,1
    80003ddc:	000027b7          	lui	a5,0x2
    80003de0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003de4:	0097ee63          	bltu	a5,s1,80003e00 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003de8:	00000713          	li	a4,0
    80003dec:	000077b7          	lui	a5,0x7
    80003df0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003df4:	fce7eee3          	bltu	a5,a4,80003dd0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003df8:	00170713          	addi	a4,a4,1
    80003dfc:	ff1ff06f          	j	80003dec <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e00:	00190913          	addi	s2,s2,1
    80003e04:	00900793          	li	a5,9
    80003e08:	0527e063          	bltu	a5,s2,80003e48 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e0c:	00006517          	auipc	a0,0x6
    80003e10:	40c50513          	addi	a0,a0,1036 # 8000a218 <CONSOLE_STATUS+0x208>
    80003e14:	00002097          	auipc	ra,0x2
    80003e18:	1cc080e7          	jalr	460(ra) # 80005fe0 <_Z11printStringPKc>
    80003e1c:	00000613          	li	a2,0
    80003e20:	00a00593          	li	a1,10
    80003e24:	0009051b          	sext.w	a0,s2
    80003e28:	00002097          	auipc	ra,0x2
    80003e2c:	368080e7          	jalr	872(ra) # 80006190 <_Z8printIntiii>
    80003e30:	00006517          	auipc	a0,0x6
    80003e34:	64850513          	addi	a0,a0,1608 # 8000a478 <CONSOLE_STATUS+0x468>
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	1a8080e7          	jalr	424(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e40:	00000493          	li	s1,0
    80003e44:	f99ff06f          	j	80003ddc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e48:	00006517          	auipc	a0,0x6
    80003e4c:	3d850513          	addi	a0,a0,984 # 8000a220 <CONSOLE_STATUS+0x210>
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	190080e7          	jalr	400(ra) # 80005fe0 <_Z11printStringPKc>
    finishedA = true;
    80003e58:	00100793          	li	a5,1
    80003e5c:	00009717          	auipc	a4,0x9
    80003e60:	08f70623          	sb	a5,140(a4) # 8000cee8 <_ZL9finishedA>
}
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00813483          	ld	s1,8(sp)
    80003e70:	00013903          	ld	s2,0(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00113c23          	sd	ra,24(sp)
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	01213023          	sd	s2,0(sp)
    80003e90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e94:	00000913          	li	s2,0
    80003e98:	0380006f          	j	80003ed0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e9c:	ffffd097          	auipc	ra,0xffffd
    80003ea0:	530080e7          	jalr	1328(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ea4:	00148493          	addi	s1,s1,1
    80003ea8:	000027b7          	lui	a5,0x2
    80003eac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003eb0:	0097ee63          	bltu	a5,s1,80003ecc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003eb4:	00000713          	li	a4,0
    80003eb8:	000077b7          	lui	a5,0x7
    80003ebc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ec0:	fce7eee3          	bltu	a5,a4,80003e9c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003ec4:	00170713          	addi	a4,a4,1
    80003ec8:	ff1ff06f          	j	80003eb8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ecc:	00190913          	addi	s2,s2,1
    80003ed0:	00f00793          	li	a5,15
    80003ed4:	0527e063          	bltu	a5,s2,80003f14 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ed8:	00006517          	auipc	a0,0x6
    80003edc:	35850513          	addi	a0,a0,856 # 8000a230 <CONSOLE_STATUS+0x220>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	100080e7          	jalr	256(ra) # 80005fe0 <_Z11printStringPKc>
    80003ee8:	00000613          	li	a2,0
    80003eec:	00a00593          	li	a1,10
    80003ef0:	0009051b          	sext.w	a0,s2
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	29c080e7          	jalr	668(ra) # 80006190 <_Z8printIntiii>
    80003efc:	00006517          	auipc	a0,0x6
    80003f00:	57c50513          	addi	a0,a0,1404 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	0dc080e7          	jalr	220(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	f99ff06f          	j	80003ea8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f14:	00006517          	auipc	a0,0x6
    80003f18:	32450513          	addi	a0,a0,804 # 8000a238 <CONSOLE_STATUS+0x228>
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	0c4080e7          	jalr	196(ra) # 80005fe0 <_Z11printStringPKc>
    finishedB = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00009717          	auipc	a4,0x9
    80003f2c:	fcf700a3          	sb	a5,-63(a4) # 8000cee9 <_ZL9finishedB>
    thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	49c080e7          	jalr	1180(ra) # 800013cc <_Z15thread_dispatchv>
}
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret

0000000080003f50 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f50:	fe010113          	addi	sp,sp,-32
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00813823          	sd	s0,16(sp)
    80003f5c:	00913423          	sd	s1,8(sp)
    80003f60:	01213023          	sd	s2,0(sp)
    80003f64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f68:	00000493          	li	s1,0
    80003f6c:	0400006f          	j	80003fac <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f70:	00006517          	auipc	a0,0x6
    80003f74:	2d850513          	addi	a0,a0,728 # 8000a248 <CONSOLE_STATUS+0x238>
    80003f78:	00002097          	auipc	ra,0x2
    80003f7c:	068080e7          	jalr	104(ra) # 80005fe0 <_Z11printStringPKc>
    80003f80:	00000613          	li	a2,0
    80003f84:	00a00593          	li	a1,10
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	204080e7          	jalr	516(ra) # 80006190 <_Z8printIntiii>
    80003f94:	00006517          	auipc	a0,0x6
    80003f98:	4e450513          	addi	a0,a0,1252 # 8000a478 <CONSOLE_STATUS+0x468>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	044080e7          	jalr	68(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fa4:	0014849b          	addiw	s1,s1,1
    80003fa8:	0ff4f493          	andi	s1,s1,255
    80003fac:	00200793          	li	a5,2
    80003fb0:	fc97f0e3          	bgeu	a5,s1,80003f70 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003fb4:	00006517          	auipc	a0,0x6
    80003fb8:	29c50513          	addi	a0,a0,668 # 8000a250 <CONSOLE_STATUS+0x240>
    80003fbc:	00002097          	auipc	ra,0x2
    80003fc0:	024080e7          	jalr	36(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fc4:	00700313          	li	t1,7
    thread_dispatch();
    80003fc8:	ffffd097          	auipc	ra,0xffffd
    80003fcc:	404080e7          	jalr	1028(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fd0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003fd4:	00006517          	auipc	a0,0x6
    80003fd8:	28c50513          	addi	a0,a0,652 # 8000a260 <CONSOLE_STATUS+0x250>
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	004080e7          	jalr	4(ra) # 80005fe0 <_Z11printStringPKc>
    80003fe4:	00000613          	li	a2,0
    80003fe8:	00a00593          	li	a1,10
    80003fec:	0009051b          	sext.w	a0,s2
    80003ff0:	00002097          	auipc	ra,0x2
    80003ff4:	1a0080e7          	jalr	416(ra) # 80006190 <_Z8printIntiii>
    80003ff8:	00006517          	auipc	a0,0x6
    80003ffc:	48050513          	addi	a0,a0,1152 # 8000a478 <CONSOLE_STATUS+0x468>
    80004000:	00002097          	auipc	ra,0x2
    80004004:	fe0080e7          	jalr	-32(ra) # 80005fe0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004008:	00c00513          	li	a0,12
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	d30080e7          	jalr	-720(ra) # 80003d3c <_ZL9fibonaccim>
    80004014:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004018:	00006517          	auipc	a0,0x6
    8000401c:	25050513          	addi	a0,a0,592 # 8000a268 <CONSOLE_STATUS+0x258>
    80004020:	00002097          	auipc	ra,0x2
    80004024:	fc0080e7          	jalr	-64(ra) # 80005fe0 <_Z11printStringPKc>
    80004028:	00000613          	li	a2,0
    8000402c:	00a00593          	li	a1,10
    80004030:	0009051b          	sext.w	a0,s2
    80004034:	00002097          	auipc	ra,0x2
    80004038:	15c080e7          	jalr	348(ra) # 80006190 <_Z8printIntiii>
    8000403c:	00006517          	auipc	a0,0x6
    80004040:	43c50513          	addi	a0,a0,1084 # 8000a478 <CONSOLE_STATUS+0x468>
    80004044:	00002097          	auipc	ra,0x2
    80004048:	f9c080e7          	jalr	-100(ra) # 80005fe0 <_Z11printStringPKc>
    8000404c:	0400006f          	j	8000408c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004050:	00006517          	auipc	a0,0x6
    80004054:	1f850513          	addi	a0,a0,504 # 8000a248 <CONSOLE_STATUS+0x238>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	f88080e7          	jalr	-120(ra) # 80005fe0 <_Z11printStringPKc>
    80004060:	00000613          	li	a2,0
    80004064:	00a00593          	li	a1,10
    80004068:	00048513          	mv	a0,s1
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	124080e7          	jalr	292(ra) # 80006190 <_Z8printIntiii>
    80004074:	00006517          	auipc	a0,0x6
    80004078:	40450513          	addi	a0,a0,1028 # 8000a478 <CONSOLE_STATUS+0x468>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	f64080e7          	jalr	-156(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004084:	0014849b          	addiw	s1,s1,1
    80004088:	0ff4f493          	andi	s1,s1,255
    8000408c:	00500793          	li	a5,5
    80004090:	fc97f0e3          	bgeu	a5,s1,80004050 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004094:	00006517          	auipc	a0,0x6
    80004098:	18c50513          	addi	a0,a0,396 # 8000a220 <CONSOLE_STATUS+0x210>
    8000409c:	00002097          	auipc	ra,0x2
    800040a0:	f44080e7          	jalr	-188(ra) # 80005fe0 <_Z11printStringPKc>
    finishedC = true;
    800040a4:	00100793          	li	a5,1
    800040a8:	00009717          	auipc	a4,0x9
    800040ac:	e4f70123          	sb	a5,-446(a4) # 8000ceea <_ZL9finishedC>
    thread_dispatch();
    800040b0:	ffffd097          	auipc	ra,0xffffd
    800040b4:	31c080e7          	jalr	796(ra) # 800013cc <_Z15thread_dispatchv>
}
    800040b8:	01813083          	ld	ra,24(sp)
    800040bc:	01013403          	ld	s0,16(sp)
    800040c0:	00813483          	ld	s1,8(sp)
    800040c4:	00013903          	ld	s2,0(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret

00000000800040d0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	01213023          	sd	s2,0(sp)
    800040e4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800040e8:	00a00493          	li	s1,10
    800040ec:	0400006f          	j	8000412c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040f0:	00006517          	auipc	a0,0x6
    800040f4:	18850513          	addi	a0,a0,392 # 8000a278 <CONSOLE_STATUS+0x268>
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	ee8080e7          	jalr	-280(ra) # 80005fe0 <_Z11printStringPKc>
    80004100:	00000613          	li	a2,0
    80004104:	00a00593          	li	a1,10
    80004108:	00048513          	mv	a0,s1
    8000410c:	00002097          	auipc	ra,0x2
    80004110:	084080e7          	jalr	132(ra) # 80006190 <_Z8printIntiii>
    80004114:	00006517          	auipc	a0,0x6
    80004118:	36450513          	addi	a0,a0,868 # 8000a478 <CONSOLE_STATUS+0x468>
    8000411c:	00002097          	auipc	ra,0x2
    80004120:	ec4080e7          	jalr	-316(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004124:	0014849b          	addiw	s1,s1,1
    80004128:	0ff4f493          	andi	s1,s1,255
    8000412c:	00c00793          	li	a5,12
    80004130:	fc97f0e3          	bgeu	a5,s1,800040f0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004134:	00006517          	auipc	a0,0x6
    80004138:	14c50513          	addi	a0,a0,332 # 8000a280 <CONSOLE_STATUS+0x270>
    8000413c:	00002097          	auipc	ra,0x2
    80004140:	ea4080e7          	jalr	-348(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004144:	00500313          	li	t1,5
    thread_dispatch();
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	284080e7          	jalr	644(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004150:	01000513          	li	a0,16
    80004154:	00000097          	auipc	ra,0x0
    80004158:	be8080e7          	jalr	-1048(ra) # 80003d3c <_ZL9fibonaccim>
    8000415c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004160:	00006517          	auipc	a0,0x6
    80004164:	13050513          	addi	a0,a0,304 # 8000a290 <CONSOLE_STATUS+0x280>
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	e78080e7          	jalr	-392(ra) # 80005fe0 <_Z11printStringPKc>
    80004170:	00000613          	li	a2,0
    80004174:	00a00593          	li	a1,10
    80004178:	0009051b          	sext.w	a0,s2
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	014080e7          	jalr	20(ra) # 80006190 <_Z8printIntiii>
    80004184:	00006517          	auipc	a0,0x6
    80004188:	2f450513          	addi	a0,a0,756 # 8000a478 <CONSOLE_STATUS+0x468>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	e54080e7          	jalr	-428(ra) # 80005fe0 <_Z11printStringPKc>
    80004194:	0400006f          	j	800041d4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004198:	00006517          	auipc	a0,0x6
    8000419c:	0e050513          	addi	a0,a0,224 # 8000a278 <CONSOLE_STATUS+0x268>
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	e40080e7          	jalr	-448(ra) # 80005fe0 <_Z11printStringPKc>
    800041a8:	00000613          	li	a2,0
    800041ac:	00a00593          	li	a1,10
    800041b0:	00048513          	mv	a0,s1
    800041b4:	00002097          	auipc	ra,0x2
    800041b8:	fdc080e7          	jalr	-36(ra) # 80006190 <_Z8printIntiii>
    800041bc:	00006517          	auipc	a0,0x6
    800041c0:	2bc50513          	addi	a0,a0,700 # 8000a478 <CONSOLE_STATUS+0x468>
    800041c4:	00002097          	auipc	ra,0x2
    800041c8:	e1c080e7          	jalr	-484(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041cc:	0014849b          	addiw	s1,s1,1
    800041d0:	0ff4f493          	andi	s1,s1,255
    800041d4:	00f00793          	li	a5,15
    800041d8:	fc97f0e3          	bgeu	a5,s1,80004198 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800041dc:	00006517          	auipc	a0,0x6
    800041e0:	0c450513          	addi	a0,a0,196 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800041e4:	00002097          	auipc	ra,0x2
    800041e8:	dfc080e7          	jalr	-516(ra) # 80005fe0 <_Z11printStringPKc>
    finishedD = true;
    800041ec:	00100793          	li	a5,1
    800041f0:	00009717          	auipc	a4,0x9
    800041f4:	cef70da3          	sb	a5,-773(a4) # 8000ceeb <_ZL9finishedD>
    thread_dispatch();
    800041f8:	ffffd097          	auipc	ra,0xffffd
    800041fc:	1d4080e7          	jalr	468(ra) # 800013cc <_Z15thread_dispatchv>
}
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	00013903          	ld	s2,0(sp)
    80004210:	02010113          	addi	sp,sp,32
    80004214:	00008067          	ret

0000000080004218 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004218:	fc010113          	addi	sp,sp,-64
    8000421c:	02113c23          	sd	ra,56(sp)
    80004220:	02813823          	sd	s0,48(sp)
    80004224:	02913423          	sd	s1,40(sp)
    80004228:	03213023          	sd	s2,32(sp)
    8000422c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004230:	02000513          	li	a0,32
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	d9c080e7          	jalr	-612(ra) # 80001fd0 <_Znwm>
    8000423c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	e90080e7          	jalr	-368(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80004248:	00009797          	auipc	a5,0x9
    8000424c:	9e878793          	addi	a5,a5,-1560 # 8000cc30 <_ZTV7WorkerA+0x10>
    80004250:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004254:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004258:	00006517          	auipc	a0,0x6
    8000425c:	05850513          	addi	a0,a0,88 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004260:	00002097          	auipc	ra,0x2
    80004264:	d80080e7          	jalr	-640(ra) # 80005fe0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004268:	02000513          	li	a0,32
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	d64080e7          	jalr	-668(ra) # 80001fd0 <_Znwm>
    80004274:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	e58080e7          	jalr	-424(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80004280:	00009797          	auipc	a5,0x9
    80004284:	9d878793          	addi	a5,a5,-1576 # 8000cc58 <_ZTV7WorkerB+0x10>
    80004288:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000428c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004290:	00006517          	auipc	a0,0x6
    80004294:	03850513          	addi	a0,a0,56 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004298:	00002097          	auipc	ra,0x2
    8000429c:	d48080e7          	jalr	-696(ra) # 80005fe0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042a0:	02000513          	li	a0,32
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	d2c080e7          	jalr	-724(ra) # 80001fd0 <_Znwm>
    800042ac:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	e20080e7          	jalr	-480(ra) # 800020d0 <_ZN6ThreadC1Ev>
    800042b8:	00009797          	auipc	a5,0x9
    800042bc:	9c878793          	addi	a5,a5,-1592 # 8000cc80 <_ZTV7WorkerC+0x10>
    800042c0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800042c4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042c8:	00006517          	auipc	a0,0x6
    800042cc:	01850513          	addi	a0,a0,24 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	d10080e7          	jalr	-752(ra) # 80005fe0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800042d8:	02000513          	li	a0,32
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	cf4080e7          	jalr	-780(ra) # 80001fd0 <_Znwm>
    800042e4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	de8080e7          	jalr	-536(ra) # 800020d0 <_ZN6ThreadC1Ev>
    800042f0:	00009797          	auipc	a5,0x9
    800042f4:	9b878793          	addi	a5,a5,-1608 # 8000cca8 <_ZTV7WorkerD+0x10>
    800042f8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800042fc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004300:	00006517          	auipc	a0,0x6
    80004304:	ff850513          	addi	a0,a0,-8 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	cd8080e7          	jalr	-808(ra) # 80005fe0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004310:	00000493          	li	s1,0
    80004314:	00300793          	li	a5,3
    80004318:	0297c663          	blt	a5,s1,80004344 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000431c:	00349793          	slli	a5,s1,0x3
    80004320:	fe040713          	addi	a4,s0,-32
    80004324:	00f707b3          	add	a5,a4,a5
    80004328:	fe07b503          	ld	a0,-32(a5)
    8000432c:	ffffe097          	auipc	ra,0xffffe
    80004330:	dd4080e7          	jalr	-556(ra) # 80002100 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004334:	0014849b          	addiw	s1,s1,1
    80004338:	fddff06f          	j	80004314 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	dfc080e7          	jalr	-516(ra) # 80002138 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004344:	00009797          	auipc	a5,0x9
    80004348:	ba47c783          	lbu	a5,-1116(a5) # 8000cee8 <_ZL9finishedA>
    8000434c:	fe0788e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    80004350:	00009797          	auipc	a5,0x9
    80004354:	b997c783          	lbu	a5,-1127(a5) # 8000cee9 <_ZL9finishedB>
    80004358:	fe0782e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    8000435c:	00009797          	auipc	a5,0x9
    80004360:	b8e7c783          	lbu	a5,-1138(a5) # 8000ceea <_ZL9finishedC>
    80004364:	fc078ce3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    80004368:	00009797          	auipc	a5,0x9
    8000436c:	b837c783          	lbu	a5,-1149(a5) # 8000ceeb <_ZL9finishedD>
    80004370:	fc0786e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    80004374:	fc040493          	addi	s1,s0,-64
    80004378:	0080006f          	j	80004380 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000437c:	00848493          	addi	s1,s1,8
    80004380:	fe040793          	addi	a5,s0,-32
    80004384:	08f48663          	beq	s1,a5,80004410 <_Z20Threads_CPP_API_testv+0x1f8>
    80004388:	0004b503          	ld	a0,0(s1)
    8000438c:	fe0508e3          	beqz	a0,8000437c <_Z20Threads_CPP_API_testv+0x164>
    80004390:	00053783          	ld	a5,0(a0)
    80004394:	0087b783          	ld	a5,8(a5)
    80004398:	000780e7          	jalr	a5
    8000439c:	fe1ff06f          	j	8000437c <_Z20Threads_CPP_API_testv+0x164>
    800043a0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043a4:	00048513          	mv	a0,s1
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	c50080e7          	jalr	-944(ra) # 80001ff8 <_ZdlPv>
    800043b0:	00090513          	mv	a0,s2
    800043b4:	0000a097          	auipc	ra,0xa
    800043b8:	c44080e7          	jalr	-956(ra) # 8000dff8 <_Unwind_Resume>
    800043bc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800043c0:	00048513          	mv	a0,s1
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	c34080e7          	jalr	-972(ra) # 80001ff8 <_ZdlPv>
    800043cc:	00090513          	mv	a0,s2
    800043d0:	0000a097          	auipc	ra,0xa
    800043d4:	c28080e7          	jalr	-984(ra) # 8000dff8 <_Unwind_Resume>
    800043d8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800043dc:	00048513          	mv	a0,s1
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	c18080e7          	jalr	-1000(ra) # 80001ff8 <_ZdlPv>
    800043e8:	00090513          	mv	a0,s2
    800043ec:	0000a097          	auipc	ra,0xa
    800043f0:	c0c080e7          	jalr	-1012(ra) # 8000dff8 <_Unwind_Resume>
    800043f4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800043f8:	00048513          	mv	a0,s1
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	bfc080e7          	jalr	-1028(ra) # 80001ff8 <_ZdlPv>
    80004404:	00090513          	mv	a0,s2
    80004408:	0000a097          	auipc	ra,0xa
    8000440c:	bf0080e7          	jalr	-1040(ra) # 8000dff8 <_Unwind_Resume>
}
    80004410:	03813083          	ld	ra,56(sp)
    80004414:	03013403          	ld	s0,48(sp)
    80004418:	02813483          	ld	s1,40(sp)
    8000441c:	02013903          	ld	s2,32(sp)
    80004420:	04010113          	addi	sp,sp,64
    80004424:	00008067          	ret

0000000080004428 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00113423          	sd	ra,8(sp)
    80004430:	00813023          	sd	s0,0(sp)
    80004434:	01010413          	addi	s0,sp,16
    80004438:	00008797          	auipc	a5,0x8
    8000443c:	7f878793          	addi	a5,a5,2040 # 8000cc30 <_ZTV7WorkerA+0x10>
    80004440:	00f53023          	sd	a5,0(a0)
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	af4080e7          	jalr	-1292(ra) # 80001f38 <_ZN6ThreadD1Ev>
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN7WorkerAD0Ev>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00113c23          	sd	ra,24(sp)
    80004464:	00813823          	sd	s0,16(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	00050493          	mv	s1,a0
    80004474:	00008797          	auipc	a5,0x8
    80004478:	7bc78793          	addi	a5,a5,1980 # 8000cc30 <_ZTV7WorkerA+0x10>
    8000447c:	00f53023          	sd	a5,0(a0)
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	ab8080e7          	jalr	-1352(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004488:	00048513          	mv	a0,s1
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	b6c080e7          	jalr	-1172(ra) # 80001ff8 <_ZdlPv>
    80004494:	01813083          	ld	ra,24(sp)
    80004498:	01013403          	ld	s0,16(sp)
    8000449c:	00813483          	ld	s1,8(sp)
    800044a0:	02010113          	addi	sp,sp,32
    800044a4:	00008067          	ret

00000000800044a8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00113423          	sd	ra,8(sp)
    800044b0:	00813023          	sd	s0,0(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00008797          	auipc	a5,0x8
    800044bc:	7a078793          	addi	a5,a5,1952 # 8000cc58 <_ZTV7WorkerB+0x10>
    800044c0:	00f53023          	sd	a5,0(a0)
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	a74080e7          	jalr	-1420(ra) # 80001f38 <_ZN6ThreadD1Ev>
    800044cc:	00813083          	ld	ra,8(sp)
    800044d0:	00013403          	ld	s0,0(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret

00000000800044dc <_ZN7WorkerBD0Ev>:
    800044dc:	fe010113          	addi	sp,sp,-32
    800044e0:	00113c23          	sd	ra,24(sp)
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00913423          	sd	s1,8(sp)
    800044ec:	02010413          	addi	s0,sp,32
    800044f0:	00050493          	mv	s1,a0
    800044f4:	00008797          	auipc	a5,0x8
    800044f8:	76478793          	addi	a5,a5,1892 # 8000cc58 <_ZTV7WorkerB+0x10>
    800044fc:	00f53023          	sd	a5,0(a0)
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	a38080e7          	jalr	-1480(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004508:	00048513          	mv	a0,s1
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	aec080e7          	jalr	-1300(ra) # 80001ff8 <_ZdlPv>
    80004514:	01813083          	ld	ra,24(sp)
    80004518:	01013403          	ld	s0,16(sp)
    8000451c:	00813483          	ld	s1,8(sp)
    80004520:	02010113          	addi	sp,sp,32
    80004524:	00008067          	ret

0000000080004528 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00113423          	sd	ra,8(sp)
    80004530:	00813023          	sd	s0,0(sp)
    80004534:	01010413          	addi	s0,sp,16
    80004538:	00008797          	auipc	a5,0x8
    8000453c:	74878793          	addi	a5,a5,1864 # 8000cc80 <_ZTV7WorkerC+0x10>
    80004540:	00f53023          	sd	a5,0(a0)
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	9f4080e7          	jalr	-1548(ra) # 80001f38 <_ZN6ThreadD1Ev>
    8000454c:	00813083          	ld	ra,8(sp)
    80004550:	00013403          	ld	s0,0(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret

000000008000455c <_ZN7WorkerCD0Ev>:
    8000455c:	fe010113          	addi	sp,sp,-32
    80004560:	00113c23          	sd	ra,24(sp)
    80004564:	00813823          	sd	s0,16(sp)
    80004568:	00913423          	sd	s1,8(sp)
    8000456c:	02010413          	addi	s0,sp,32
    80004570:	00050493          	mv	s1,a0
    80004574:	00008797          	auipc	a5,0x8
    80004578:	70c78793          	addi	a5,a5,1804 # 8000cc80 <_ZTV7WorkerC+0x10>
    8000457c:	00f53023          	sd	a5,0(a0)
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	9b8080e7          	jalr	-1608(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004588:	00048513          	mv	a0,s1
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	a6c080e7          	jalr	-1428(ra) # 80001ff8 <_ZdlPv>
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret

00000000800045a8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00113423          	sd	ra,8(sp)
    800045b0:	00813023          	sd	s0,0(sp)
    800045b4:	01010413          	addi	s0,sp,16
    800045b8:	00008797          	auipc	a5,0x8
    800045bc:	6f078793          	addi	a5,a5,1776 # 8000cca8 <_ZTV7WorkerD+0x10>
    800045c0:	00f53023          	sd	a5,0(a0)
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	974080e7          	jalr	-1676(ra) # 80001f38 <_ZN6ThreadD1Ev>
    800045cc:	00813083          	ld	ra,8(sp)
    800045d0:	00013403          	ld	s0,0(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <_ZN7WorkerDD0Ev>:
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	02010413          	addi	s0,sp,32
    800045f0:	00050493          	mv	s1,a0
    800045f4:	00008797          	auipc	a5,0x8
    800045f8:	6b478793          	addi	a5,a5,1716 # 8000cca8 <_ZTV7WorkerD+0x10>
    800045fc:	00f53023          	sd	a5,0(a0)
    80004600:	ffffe097          	auipc	ra,0xffffe
    80004604:	938080e7          	jalr	-1736(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004608:	00048513          	mv	a0,s1
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	9ec080e7          	jalr	-1556(ra) # 80001ff8 <_ZdlPv>
    80004614:	01813083          	ld	ra,24(sp)
    80004618:	01013403          	ld	s0,16(sp)
    8000461c:	00813483          	ld	s1,8(sp)
    80004620:	02010113          	addi	sp,sp,32
    80004624:	00008067          	ret

0000000080004628 <_ZN7WorkerA3runEv>:
    void run() override {
    80004628:	ff010113          	addi	sp,sp,-16
    8000462c:	00113423          	sd	ra,8(sp)
    80004630:	00813023          	sd	s0,0(sp)
    80004634:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004638:	00000593          	li	a1,0
    8000463c:	fffff097          	auipc	ra,0xfffff
    80004640:	774080e7          	jalr	1908(ra) # 80003db0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004644:	00813083          	ld	ra,8(sp)
    80004648:	00013403          	ld	s0,0(sp)
    8000464c:	01010113          	addi	sp,sp,16
    80004650:	00008067          	ret

0000000080004654 <_ZN7WorkerB3runEv>:
    void run() override {
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00113423          	sd	ra,8(sp)
    8000465c:	00813023          	sd	s0,0(sp)
    80004660:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004664:	00000593          	li	a1,0
    80004668:	00000097          	auipc	ra,0x0
    8000466c:	814080e7          	jalr	-2028(ra) # 80003e7c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004670:	00813083          	ld	ra,8(sp)
    80004674:	00013403          	ld	s0,0(sp)
    80004678:	01010113          	addi	sp,sp,16
    8000467c:	00008067          	ret

0000000080004680 <_ZN7WorkerC3runEv>:
    void run() override {
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00113423          	sd	ra,8(sp)
    80004688:	00813023          	sd	s0,0(sp)
    8000468c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004690:	00000593          	li	a1,0
    80004694:	00000097          	auipc	ra,0x0
    80004698:	8bc080e7          	jalr	-1860(ra) # 80003f50 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000469c:	00813083          	ld	ra,8(sp)
    800046a0:	00013403          	ld	s0,0(sp)
    800046a4:	01010113          	addi	sp,sp,16
    800046a8:	00008067          	ret

00000000800046ac <_ZN7WorkerD3runEv>:
    void run() override {
    800046ac:	ff010113          	addi	sp,sp,-16
    800046b0:	00113423          	sd	ra,8(sp)
    800046b4:	00813023          	sd	s0,0(sp)
    800046b8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800046bc:	00000593          	li	a1,0
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	a10080e7          	jalr	-1520(ra) # 800040d0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800046c8:	00813083          	ld	ra,8(sp)
    800046cc:	00013403          	ld	s0,0(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret

00000000800046d8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800046d8:	f8010113          	addi	sp,sp,-128
    800046dc:	06113c23          	sd	ra,120(sp)
    800046e0:	06813823          	sd	s0,112(sp)
    800046e4:	06913423          	sd	s1,104(sp)
    800046e8:	07213023          	sd	s2,96(sp)
    800046ec:	05313c23          	sd	s3,88(sp)
    800046f0:	05413823          	sd	s4,80(sp)
    800046f4:	05513423          	sd	s5,72(sp)
    800046f8:	05613023          	sd	s6,64(sp)
    800046fc:	03713c23          	sd	s7,56(sp)
    80004700:	03813823          	sd	s8,48(sp)
    80004704:	03913423          	sd	s9,40(sp)
    80004708:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000470c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004710:	00006517          	auipc	a0,0x6
    80004714:	a2050513          	addi	a0,a0,-1504 # 8000a130 <CONSOLE_STATUS+0x120>
    80004718:	00002097          	auipc	ra,0x2
    8000471c:	8c8080e7          	jalr	-1848(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    80004720:	01e00593          	li	a1,30
    80004724:	f8040493          	addi	s1,s0,-128
    80004728:	00048513          	mv	a0,s1
    8000472c:	00002097          	auipc	ra,0x2
    80004730:	93c080e7          	jalr	-1732(ra) # 80006068 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004734:	00048513          	mv	a0,s1
    80004738:	00002097          	auipc	ra,0x2
    8000473c:	a08080e7          	jalr	-1528(ra) # 80006140 <_Z11stringToIntPKc>
    80004740:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004744:	00006517          	auipc	a0,0x6
    80004748:	a0c50513          	addi	a0,a0,-1524 # 8000a150 <CONSOLE_STATUS+0x140>
    8000474c:	00002097          	auipc	ra,0x2
    80004750:	894080e7          	jalr	-1900(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    80004754:	01e00593          	li	a1,30
    80004758:	00048513          	mv	a0,s1
    8000475c:	00002097          	auipc	ra,0x2
    80004760:	90c080e7          	jalr	-1780(ra) # 80006068 <_Z9getStringPci>
    n = stringToInt(input);
    80004764:	00048513          	mv	a0,s1
    80004768:	00002097          	auipc	ra,0x2
    8000476c:	9d8080e7          	jalr	-1576(ra) # 80006140 <_Z11stringToIntPKc>
    80004770:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004774:	00006517          	auipc	a0,0x6
    80004778:	9fc50513          	addi	a0,a0,-1540 # 8000a170 <CONSOLE_STATUS+0x160>
    8000477c:	00002097          	auipc	ra,0x2
    80004780:	864080e7          	jalr	-1948(ra) # 80005fe0 <_Z11printStringPKc>
    printInt(threadNum);
    80004784:	00000613          	li	a2,0
    80004788:	00a00593          	li	a1,10
    8000478c:	00098513          	mv	a0,s3
    80004790:	00002097          	auipc	ra,0x2
    80004794:	a00080e7          	jalr	-1536(ra) # 80006190 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004798:	00006517          	auipc	a0,0x6
    8000479c:	9f050513          	addi	a0,a0,-1552 # 8000a188 <CONSOLE_STATUS+0x178>
    800047a0:	00002097          	auipc	ra,0x2
    800047a4:	840080e7          	jalr	-1984(ra) # 80005fe0 <_Z11printStringPKc>
    printInt(n);
    800047a8:	00000613          	li	a2,0
    800047ac:	00a00593          	li	a1,10
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00002097          	auipc	ra,0x2
    800047b8:	9dc080e7          	jalr	-1572(ra) # 80006190 <_Z8printIntiii>
    printString(".\n");
    800047bc:	00006517          	auipc	a0,0x6
    800047c0:	9e450513          	addi	a0,a0,-1564 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800047c4:	00002097          	auipc	ra,0x2
    800047c8:	81c080e7          	jalr	-2020(ra) # 80005fe0 <_Z11printStringPKc>
    if (threadNum > n) {
    800047cc:	0334c463          	blt	s1,s3,800047f4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800047d0:	03305c63          	blez	s3,80004808 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800047d4:	03800513          	li	a0,56
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	7f8080e7          	jalr	2040(ra) # 80001fd0 <_Znwm>
    800047e0:	00050a93          	mv	s5,a0
    800047e4:	00048593          	mv	a1,s1
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	ac8080e7          	jalr	-1336(ra) # 800062b0 <_ZN9BufferCPPC1Ei>
    800047f0:	0300006f          	j	80004820 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800047f4:	00006517          	auipc	a0,0x6
    800047f8:	9b450513          	addi	a0,a0,-1612 # 8000a1a8 <CONSOLE_STATUS+0x198>
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	7e4080e7          	jalr	2020(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80004804:	0140006f          	j	80004818 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004808:	00006517          	auipc	a0,0x6
    8000480c:	9e050513          	addi	a0,a0,-1568 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	7d0080e7          	jalr	2000(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80004818:	000c0113          	mv	sp,s8
    8000481c:	2140006f          	j	80004a30 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004820:	01000513          	li	a0,16
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	7ac080e7          	jalr	1964(ra) # 80001fd0 <_Znwm>
    8000482c:	00050913          	mv	s2,a0
    80004830:	00000593          	li	a1,0
    80004834:	ffffe097          	auipc	ra,0xffffe
    80004838:	954080e7          	jalr	-1708(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    8000483c:	00008797          	auipc	a5,0x8
    80004840:	6b27be23          	sd	s2,1724(a5) # 8000cef8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004844:	00399793          	slli	a5,s3,0x3
    80004848:	00f78793          	addi	a5,a5,15
    8000484c:	ff07f793          	andi	a5,a5,-16
    80004850:	40f10133          	sub	sp,sp,a5
    80004854:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004858:	0019871b          	addiw	a4,s3,1
    8000485c:	00171793          	slli	a5,a4,0x1
    80004860:	00e787b3          	add	a5,a5,a4
    80004864:	00379793          	slli	a5,a5,0x3
    80004868:	00f78793          	addi	a5,a5,15
    8000486c:	ff07f793          	andi	a5,a5,-16
    80004870:	40f10133          	sub	sp,sp,a5
    80004874:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004878:	00199493          	slli	s1,s3,0x1
    8000487c:	013484b3          	add	s1,s1,s3
    80004880:	00349493          	slli	s1,s1,0x3
    80004884:	009b04b3          	add	s1,s6,s1
    80004888:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000488c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004890:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004894:	02800513          	li	a0,40
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	738080e7          	jalr	1848(ra) # 80001fd0 <_Znwm>
    800048a0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800048a4:	ffffe097          	auipc	ra,0xffffe
    800048a8:	82c080e7          	jalr	-2004(ra) # 800020d0 <_ZN6ThreadC1Ev>
    800048ac:	00008797          	auipc	a5,0x8
    800048b0:	47478793          	addi	a5,a5,1140 # 8000cd20 <_ZTV8Consumer+0x10>
    800048b4:	00fbb023          	sd	a5,0(s7)
    800048b8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800048bc:	000b8513          	mv	a0,s7
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	840080e7          	jalr	-1984(ra) # 80002100 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800048c8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800048cc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800048d0:	00008797          	auipc	a5,0x8
    800048d4:	6287b783          	ld	a5,1576(a5) # 8000cef8 <_ZL10waitForAll>
    800048d8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048dc:	02800513          	li	a0,40
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	6f0080e7          	jalr	1776(ra) # 80001fd0 <_Znwm>
    800048e8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	7e4080e7          	jalr	2020(ra) # 800020d0 <_ZN6ThreadC1Ev>
    800048f4:	00008797          	auipc	a5,0x8
    800048f8:	3dc78793          	addi	a5,a5,988 # 8000ccd0 <_ZTV16ProducerKeyborad+0x10>
    800048fc:	00f4b023          	sd	a5,0(s1)
    80004900:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004904:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004908:	00048513          	mv	a0,s1
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	7f4080e7          	jalr	2036(ra) # 80002100 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004914:	00100913          	li	s2,1
    80004918:	0300006f          	j	80004948 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000491c:	00008797          	auipc	a5,0x8
    80004920:	3dc78793          	addi	a5,a5,988 # 8000ccf8 <_ZTV8Producer+0x10>
    80004924:	00fcb023          	sd	a5,0(s9)
    80004928:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000492c:	00391793          	slli	a5,s2,0x3
    80004930:	00fa07b3          	add	a5,s4,a5
    80004934:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004938:	000c8513          	mv	a0,s9
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	7c4080e7          	jalr	1988(ra) # 80002100 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004944:	0019091b          	addiw	s2,s2,1
    80004948:	05395263          	bge	s2,s3,8000498c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000494c:	00191493          	slli	s1,s2,0x1
    80004950:	012484b3          	add	s1,s1,s2
    80004954:	00349493          	slli	s1,s1,0x3
    80004958:	009b04b3          	add	s1,s6,s1
    8000495c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004960:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004964:	00008797          	auipc	a5,0x8
    80004968:	5947b783          	ld	a5,1428(a5) # 8000cef8 <_ZL10waitForAll>
    8000496c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004970:	02800513          	li	a0,40
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	65c080e7          	jalr	1628(ra) # 80001fd0 <_Znwm>
    8000497c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	750080e7          	jalr	1872(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80004988:	f95ff06f          	j	8000491c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	7ac080e7          	jalr	1964(ra) # 80002138 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004994:	00000493          	li	s1,0
    80004998:	0099ce63          	blt	s3,s1,800049b4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000499c:	00008517          	auipc	a0,0x8
    800049a0:	55c53503          	ld	a0,1372(a0) # 8000cef8 <_ZL10waitForAll>
    800049a4:	ffffe097          	auipc	ra,0xffffe
    800049a8:	820080e7          	jalr	-2016(ra) # 800021c4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800049ac:	0014849b          	addiw	s1,s1,1
    800049b0:	fe9ff06f          	j	80004998 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800049b4:	00008517          	auipc	a0,0x8
    800049b8:	54453503          	ld	a0,1348(a0) # 8000cef8 <_ZL10waitForAll>
    800049bc:	00050863          	beqz	a0,800049cc <_Z20testConsumerProducerv+0x2f4>
    800049c0:	00053783          	ld	a5,0(a0)
    800049c4:	0087b783          	ld	a5,8(a5)
    800049c8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800049cc:	00000493          	li	s1,0
    800049d0:	0080006f          	j	800049d8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800049d4:	0014849b          	addiw	s1,s1,1
    800049d8:	0334d263          	bge	s1,s3,800049fc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800049dc:	00349793          	slli	a5,s1,0x3
    800049e0:	00fa07b3          	add	a5,s4,a5
    800049e4:	0007b503          	ld	a0,0(a5)
    800049e8:	fe0506e3          	beqz	a0,800049d4 <_Z20testConsumerProducerv+0x2fc>
    800049ec:	00053783          	ld	a5,0(a0)
    800049f0:	0087b783          	ld	a5,8(a5)
    800049f4:	000780e7          	jalr	a5
    800049f8:	fddff06f          	j	800049d4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800049fc:	000b8a63          	beqz	s7,80004a10 <_Z20testConsumerProducerv+0x338>
    80004a00:	000bb783          	ld	a5,0(s7)
    80004a04:	0087b783          	ld	a5,8(a5)
    80004a08:	000b8513          	mv	a0,s7
    80004a0c:	000780e7          	jalr	a5
    delete buffer;
    80004a10:	000a8e63          	beqz	s5,80004a2c <_Z20testConsumerProducerv+0x354>
    80004a14:	000a8513          	mv	a0,s5
    80004a18:	00002097          	auipc	ra,0x2
    80004a1c:	b90080e7          	jalr	-1136(ra) # 800065a8 <_ZN9BufferCPPD1Ev>
    80004a20:	000a8513          	mv	a0,s5
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	5d4080e7          	jalr	1492(ra) # 80001ff8 <_ZdlPv>
    80004a2c:	000c0113          	mv	sp,s8
}
    80004a30:	f8040113          	addi	sp,s0,-128
    80004a34:	07813083          	ld	ra,120(sp)
    80004a38:	07013403          	ld	s0,112(sp)
    80004a3c:	06813483          	ld	s1,104(sp)
    80004a40:	06013903          	ld	s2,96(sp)
    80004a44:	05813983          	ld	s3,88(sp)
    80004a48:	05013a03          	ld	s4,80(sp)
    80004a4c:	04813a83          	ld	s5,72(sp)
    80004a50:	04013b03          	ld	s6,64(sp)
    80004a54:	03813b83          	ld	s7,56(sp)
    80004a58:	03013c03          	ld	s8,48(sp)
    80004a5c:	02813c83          	ld	s9,40(sp)
    80004a60:	08010113          	addi	sp,sp,128
    80004a64:	00008067          	ret
    80004a68:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a6c:	000a8513          	mv	a0,s5
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	588080e7          	jalr	1416(ra) # 80001ff8 <_ZdlPv>
    80004a78:	00048513          	mv	a0,s1
    80004a7c:	00009097          	auipc	ra,0x9
    80004a80:	57c080e7          	jalr	1404(ra) # 8000dff8 <_Unwind_Resume>
    80004a84:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004a88:	00090513          	mv	a0,s2
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	56c080e7          	jalr	1388(ra) # 80001ff8 <_ZdlPv>
    80004a94:	00048513          	mv	a0,s1
    80004a98:	00009097          	auipc	ra,0x9
    80004a9c:	560080e7          	jalr	1376(ra) # 8000dff8 <_Unwind_Resume>
    80004aa0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004aa4:	000b8513          	mv	a0,s7
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	550080e7          	jalr	1360(ra) # 80001ff8 <_ZdlPv>
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	00009097          	auipc	ra,0x9
    80004ab8:	544080e7          	jalr	1348(ra) # 8000dff8 <_Unwind_Resume>
    80004abc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	534080e7          	jalr	1332(ra) # 80001ff8 <_ZdlPv>
    80004acc:	00090513          	mv	a0,s2
    80004ad0:	00009097          	auipc	ra,0x9
    80004ad4:	528080e7          	jalr	1320(ra) # 8000dff8 <_Unwind_Resume>
    80004ad8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004adc:	000c8513          	mv	a0,s9
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	518080e7          	jalr	1304(ra) # 80001ff8 <_ZdlPv>
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	00009097          	auipc	ra,0x9
    80004af0:	50c080e7          	jalr	1292(ra) # 8000dff8 <_Unwind_Resume>

0000000080004af4 <_ZN8Consumer3runEv>:
    void run() override {
    80004af4:	fd010113          	addi	sp,sp,-48
    80004af8:	02113423          	sd	ra,40(sp)
    80004afc:	02813023          	sd	s0,32(sp)
    80004b00:	00913c23          	sd	s1,24(sp)
    80004b04:	01213823          	sd	s2,16(sp)
    80004b08:	01313423          	sd	s3,8(sp)
    80004b0c:	03010413          	addi	s0,sp,48
    80004b10:	00050913          	mv	s2,a0
        int i = 0;
    80004b14:	00000993          	li	s3,0
    80004b18:	0100006f          	j	80004b28 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b1c:	00a00513          	li	a0,10
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	7fc080e7          	jalr	2044(ra) # 8000231c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004b28:	00008797          	auipc	a5,0x8
    80004b2c:	3c87a783          	lw	a5,968(a5) # 8000cef0 <_ZL9threadEnd>
    80004b30:	04079a63          	bnez	a5,80004b84 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004b34:	02093783          	ld	a5,32(s2)
    80004b38:	0087b503          	ld	a0,8(a5)
    80004b3c:	00002097          	auipc	ra,0x2
    80004b40:	958080e7          	jalr	-1704(ra) # 80006494 <_ZN9BufferCPP3getEv>
            i++;
    80004b44:	0019849b          	addiw	s1,s3,1
    80004b48:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004b4c:	0ff57513          	andi	a0,a0,255
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	7cc080e7          	jalr	1996(ra) # 8000231c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004b58:	05000793          	li	a5,80
    80004b5c:	02f4e4bb          	remw	s1,s1,a5
    80004b60:	fc0494e3          	bnez	s1,80004b28 <_ZN8Consumer3runEv+0x34>
    80004b64:	fb9ff06f          	j	80004b1c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004b68:	02093783          	ld	a5,32(s2)
    80004b6c:	0087b503          	ld	a0,8(a5)
    80004b70:	00002097          	auipc	ra,0x2
    80004b74:	924080e7          	jalr	-1756(ra) # 80006494 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004b78:	0ff57513          	andi	a0,a0,255
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	7a0080e7          	jalr	1952(ra) # 8000231c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004b84:	02093783          	ld	a5,32(s2)
    80004b88:	0087b503          	ld	a0,8(a5)
    80004b8c:	00002097          	auipc	ra,0x2
    80004b90:	994080e7          	jalr	-1644(ra) # 80006520 <_ZN9BufferCPP6getCntEv>
    80004b94:	fca04ae3          	bgtz	a0,80004b68 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004b98:	02093783          	ld	a5,32(s2)
    80004b9c:	0107b503          	ld	a0,16(a5)
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	65c080e7          	jalr	1628(ra) # 800021fc <_ZN9Semaphore6signalEv>
    }
    80004ba8:	02813083          	ld	ra,40(sp)
    80004bac:	02013403          	ld	s0,32(sp)
    80004bb0:	01813483          	ld	s1,24(sp)
    80004bb4:	01013903          	ld	s2,16(sp)
    80004bb8:	00813983          	ld	s3,8(sp)
    80004bbc:	03010113          	addi	sp,sp,48
    80004bc0:	00008067          	ret

0000000080004bc4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004bc4:	ff010113          	addi	sp,sp,-16
    80004bc8:	00113423          	sd	ra,8(sp)
    80004bcc:	00813023          	sd	s0,0(sp)
    80004bd0:	01010413          	addi	s0,sp,16
    80004bd4:	00008797          	auipc	a5,0x8
    80004bd8:	14c78793          	addi	a5,a5,332 # 8000cd20 <_ZTV8Consumer+0x10>
    80004bdc:	00f53023          	sd	a5,0(a0)
    80004be0:	ffffd097          	auipc	ra,0xffffd
    80004be4:	358080e7          	jalr	856(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004be8:	00813083          	ld	ra,8(sp)
    80004bec:	00013403          	ld	s0,0(sp)
    80004bf0:	01010113          	addi	sp,sp,16
    80004bf4:	00008067          	ret

0000000080004bf8 <_ZN8ConsumerD0Ev>:
    80004bf8:	fe010113          	addi	sp,sp,-32
    80004bfc:	00113c23          	sd	ra,24(sp)
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00913423          	sd	s1,8(sp)
    80004c08:	02010413          	addi	s0,sp,32
    80004c0c:	00050493          	mv	s1,a0
    80004c10:	00008797          	auipc	a5,0x8
    80004c14:	11078793          	addi	a5,a5,272 # 8000cd20 <_ZTV8Consumer+0x10>
    80004c18:	00f53023          	sd	a5,0(a0)
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	31c080e7          	jalr	796(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004c24:	00048513          	mv	a0,s1
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	3d0080e7          	jalr	976(ra) # 80001ff8 <_ZdlPv>
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	02010113          	addi	sp,sp,32
    80004c40:	00008067          	ret

0000000080004c44 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004c44:	ff010113          	addi	sp,sp,-16
    80004c48:	00113423          	sd	ra,8(sp)
    80004c4c:	00813023          	sd	s0,0(sp)
    80004c50:	01010413          	addi	s0,sp,16
    80004c54:	00008797          	auipc	a5,0x8
    80004c58:	07c78793          	addi	a5,a5,124 # 8000ccd0 <_ZTV16ProducerKeyborad+0x10>
    80004c5c:	00f53023          	sd	a5,0(a0)
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	2d8080e7          	jalr	728(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004c68:	00813083          	ld	ra,8(sp)
    80004c6c:	00013403          	ld	s0,0(sp)
    80004c70:	01010113          	addi	sp,sp,16
    80004c74:	00008067          	ret

0000000080004c78 <_ZN16ProducerKeyboradD0Ev>:
    80004c78:	fe010113          	addi	sp,sp,-32
    80004c7c:	00113c23          	sd	ra,24(sp)
    80004c80:	00813823          	sd	s0,16(sp)
    80004c84:	00913423          	sd	s1,8(sp)
    80004c88:	02010413          	addi	s0,sp,32
    80004c8c:	00050493          	mv	s1,a0
    80004c90:	00008797          	auipc	a5,0x8
    80004c94:	04078793          	addi	a5,a5,64 # 8000ccd0 <_ZTV16ProducerKeyborad+0x10>
    80004c98:	00f53023          	sd	a5,0(a0)
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	29c080e7          	jalr	668(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004ca4:	00048513          	mv	a0,s1
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	350080e7          	jalr	848(ra) # 80001ff8 <_ZdlPv>
    80004cb0:	01813083          	ld	ra,24(sp)
    80004cb4:	01013403          	ld	s0,16(sp)
    80004cb8:	00813483          	ld	s1,8(sp)
    80004cbc:	02010113          	addi	sp,sp,32
    80004cc0:	00008067          	ret

0000000080004cc4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004cc4:	ff010113          	addi	sp,sp,-16
    80004cc8:	00113423          	sd	ra,8(sp)
    80004ccc:	00813023          	sd	s0,0(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    80004cd4:	00008797          	auipc	a5,0x8
    80004cd8:	02478793          	addi	a5,a5,36 # 8000ccf8 <_ZTV8Producer+0x10>
    80004cdc:	00f53023          	sd	a5,0(a0)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	258080e7          	jalr	600(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004ce8:	00813083          	ld	ra,8(sp)
    80004cec:	00013403          	ld	s0,0(sp)
    80004cf0:	01010113          	addi	sp,sp,16
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZN8ProducerD0Ev>:
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	02010413          	addi	s0,sp,32
    80004d0c:	00050493          	mv	s1,a0
    80004d10:	00008797          	auipc	a5,0x8
    80004d14:	fe878793          	addi	a5,a5,-24 # 8000ccf8 <_ZTV8Producer+0x10>
    80004d18:	00f53023          	sd	a5,0(a0)
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	21c080e7          	jalr	540(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80004d24:	00048513          	mv	a0,s1
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	2d0080e7          	jalr	720(ra) # 80001ff8 <_ZdlPv>
    80004d30:	01813083          	ld	ra,24(sp)
    80004d34:	01013403          	ld	s0,16(sp)
    80004d38:	00813483          	ld	s1,8(sp)
    80004d3c:	02010113          	addi	sp,sp,32
    80004d40:	00008067          	ret

0000000080004d44 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	02010413          	addi	s0,sp,32
    80004d58:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	8c4080e7          	jalr	-1852(ra) # 80001620 <_Z4getcv>
    80004d64:	0005059b          	sext.w	a1,a0
    80004d68:	01b00793          	li	a5,27
    80004d6c:	00f58c63          	beq	a1,a5,80004d84 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004d70:	0204b783          	ld	a5,32(s1)
    80004d74:	0087b503          	ld	a0,8(a5)
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	68c080e7          	jalr	1676(ra) # 80006404 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004d80:	fddff06f          	j	80004d5c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004d84:	00100793          	li	a5,1
    80004d88:	00008717          	auipc	a4,0x8
    80004d8c:	16f72423          	sw	a5,360(a4) # 8000cef0 <_ZL9threadEnd>
        td->buffer->put('!');
    80004d90:	0204b783          	ld	a5,32(s1)
    80004d94:	02100593          	li	a1,33
    80004d98:	0087b503          	ld	a0,8(a5)
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	668080e7          	jalr	1640(ra) # 80006404 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004da4:	0204b783          	ld	a5,32(s1)
    80004da8:	0107b503          	ld	a0,16(a5)
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	450080e7          	jalr	1104(ra) # 800021fc <_ZN9Semaphore6signalEv>
    }
    80004db4:	01813083          	ld	ra,24(sp)
    80004db8:	01013403          	ld	s0,16(sp)
    80004dbc:	00813483          	ld	s1,8(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZN8Producer3runEv>:
    void run() override {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    80004de0:	00050493          	mv	s1,a0
        int i = 0;
    80004de4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004de8:	00008797          	auipc	a5,0x8
    80004dec:	1087a783          	lw	a5,264(a5) # 8000cef0 <_ZL9threadEnd>
    80004df0:	04079263          	bnez	a5,80004e34 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004df4:	0204b783          	ld	a5,32(s1)
    80004df8:	0007a583          	lw	a1,0(a5)
    80004dfc:	0305859b          	addiw	a1,a1,48
    80004e00:	0087b503          	ld	a0,8(a5)
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	600080e7          	jalr	1536(ra) # 80006404 <_ZN9BufferCPP3putEi>
            i++;
    80004e0c:	0019071b          	addiw	a4,s2,1
    80004e10:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e14:	0204b783          	ld	a5,32(s1)
    80004e18:	0007a783          	lw	a5,0(a5)
    80004e1c:	00e787bb          	addw	a5,a5,a4
    80004e20:	00500513          	li	a0,5
    80004e24:	02a7e53b          	remw	a0,a5,a0
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	338080e7          	jalr	824(ra) # 80002160 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004e30:	fb9ff06f          	j	80004de8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004e34:	0204b783          	ld	a5,32(s1)
    80004e38:	0107b503          	ld	a0,16(a5)
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	3c0080e7          	jalr	960(ra) # 800021fc <_ZN9Semaphore6signalEv>
    }
    80004e44:	01813083          	ld	ra,24(sp)
    80004e48:	01013403          	ld	s0,16(sp)
    80004e4c:	00813483          	ld	s1,8(sp)
    80004e50:	00013903          	ld	s2,0(sp)
    80004e54:	02010113          	addi	sp,sp,32
    80004e58:	00008067          	ret

0000000080004e5c <_ZN6BufferC1Ei>:
#include "bounded_buffer.hpp"


Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004e5c:	fe010113          	addi	sp,sp,-32
    80004e60:	00113c23          	sd	ra,24(sp)
    80004e64:	00813823          	sd	s0,16(sp)
    80004e68:	00913423          	sd	s1,8(sp)
    80004e6c:	01213023          	sd	s2,0(sp)
    80004e70:	02010413          	addi	s0,sp,32
    80004e74:	00050493          	mv	s1,a0
    80004e78:	00058913          	mv	s2,a1
    80004e7c:	0015879b          	addiw	a5,a1,1
    80004e80:	0007851b          	sext.w	a0,a5
    80004e84:	00f4a023          	sw	a5,0(s1)
    80004e88:	0004a823          	sw	zero,16(s1)
    80004e8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004e90:	00251513          	slli	a0,a0,0x2
    80004e94:	ffffc097          	auipc	ra,0xffffc
    80004e98:	3c4080e7          	jalr	964(ra) # 80001258 <_Z9mem_allocm>
    80004e9c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004ea0:	00000593          	li	a1,0
    80004ea4:	02048513          	addi	a0,s1,32
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	560080e7          	jalr	1376(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004eb0:	00090593          	mv	a1,s2
    80004eb4:	01848513          	addi	a0,s1,24
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	550080e7          	jalr	1360(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004ec0:	00100593          	li	a1,1
    80004ec4:	02848513          	addi	a0,s1,40
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	540080e7          	jalr	1344(ra) # 80001408 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004ed0:	00100593          	li	a1,1
    80004ed4:	03048513          	addi	a0,s1,48
    80004ed8:	ffffc097          	auipc	ra,0xffffc
    80004edc:	530080e7          	jalr	1328(ra) # 80001408 <_Z8sem_openPP3Semj>
}
    80004ee0:	01813083          	ld	ra,24(sp)
    80004ee4:	01013403          	ld	s0,16(sp)
    80004ee8:	00813483          	ld	s1,8(sp)
    80004eec:	00013903          	ld	s2,0(sp)
    80004ef0:	02010113          	addi	sp,sp,32
    80004ef4:	00008067          	ret

0000000080004ef8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004ef8:	fe010113          	addi	sp,sp,-32
    80004efc:	00113c23          	sd	ra,24(sp)
    80004f00:	00813823          	sd	s0,16(sp)
    80004f04:	00913423          	sd	s1,8(sp)
    80004f08:	01213023          	sd	s2,0(sp)
    80004f0c:	02010413          	addi	s0,sp,32
    80004f10:	00050493          	mv	s1,a0
    80004f14:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004f18:	01853503          	ld	a0,24(a0)
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	588080e7          	jalr	1416(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004f24:	0304b503          	ld	a0,48(s1)
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	57c080e7          	jalr	1404(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004f30:	0084b783          	ld	a5,8(s1)
    80004f34:	0144a703          	lw	a4,20(s1)
    80004f38:	00271713          	slli	a4,a4,0x2
    80004f3c:	00e787b3          	add	a5,a5,a4
    80004f40:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004f44:	0144a783          	lw	a5,20(s1)
    80004f48:	0017879b          	addiw	a5,a5,1
    80004f4c:	0004a703          	lw	a4,0(s1)
    80004f50:	02e7e7bb          	remw	a5,a5,a4
    80004f54:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004f58:	0304b503          	ld	a0,48(s1)
    80004f5c:	ffffc097          	auipc	ra,0xffffc
    80004f60:	594080e7          	jalr	1428(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004f64:	0204b503          	ld	a0,32(s1)
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	588080e7          	jalr	1416(ra) # 800014f0 <_Z10sem_signalP3Sem>

}
    80004f70:	01813083          	ld	ra,24(sp)
    80004f74:	01013403          	ld	s0,16(sp)
    80004f78:	00813483          	ld	s1,8(sp)
    80004f7c:	00013903          	ld	s2,0(sp)
    80004f80:	02010113          	addi	sp,sp,32
    80004f84:	00008067          	ret

0000000080004f88 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004f88:	fe010113          	addi	sp,sp,-32
    80004f8c:	00113c23          	sd	ra,24(sp)
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00913423          	sd	s1,8(sp)
    80004f98:	01213023          	sd	s2,0(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    80004fa0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004fa4:	02053503          	ld	a0,32(a0)
    80004fa8:	ffffc097          	auipc	ra,0xffffc
    80004fac:	4fc080e7          	jalr	1276(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80004fb0:	0284b503          	ld	a0,40(s1)
    80004fb4:	ffffc097          	auipc	ra,0xffffc
    80004fb8:	4f0080e7          	jalr	1264(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80004fbc:	0084b703          	ld	a4,8(s1)
    80004fc0:	0104a783          	lw	a5,16(s1)
    80004fc4:	00279693          	slli	a3,a5,0x2
    80004fc8:	00d70733          	add	a4,a4,a3
    80004fcc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004fd0:	0017879b          	addiw	a5,a5,1
    80004fd4:	0004a703          	lw	a4,0(s1)
    80004fd8:	02e7e7bb          	remw	a5,a5,a4
    80004fdc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004fe0:	0284b503          	ld	a0,40(s1)
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	50c080e7          	jalr	1292(ra) # 800014f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80004fec:	0184b503          	ld	a0,24(s1)
    80004ff0:	ffffc097          	auipc	ra,0xffffc
    80004ff4:	500080e7          	jalr	1280(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80004ff8:	00090513          	mv	a0,s2
    80004ffc:	01813083          	ld	ra,24(sp)
    80005000:	01013403          	ld	s0,16(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	00013903          	ld	s2,0(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005014:	fe010113          	addi	sp,sp,-32
    80005018:	00113c23          	sd	ra,24(sp)
    8000501c:	00813823          	sd	s0,16(sp)
    80005020:	00913423          	sd	s1,8(sp)
    80005024:	01213023          	sd	s2,0(sp)
    80005028:	02010413          	addi	s0,sp,32
    8000502c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005030:	02853503          	ld	a0,40(a0)
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	470080e7          	jalr	1136(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    8000503c:	0304b503          	ld	a0,48(s1)
    80005040:	ffffc097          	auipc	ra,0xffffc
    80005044:	464080e7          	jalr	1124(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005048:	0144a783          	lw	a5,20(s1)
    8000504c:	0104a903          	lw	s2,16(s1)
    80005050:	0327ce63          	blt	a5,s2,8000508c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005054:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005058:	0304b503          	ld	a0,48(s1)
    8000505c:	ffffc097          	auipc	ra,0xffffc
    80005060:	494080e7          	jalr	1172(ra) # 800014f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005064:	0284b503          	ld	a0,40(s1)
    80005068:	ffffc097          	auipc	ra,0xffffc
    8000506c:	488080e7          	jalr	1160(ra) # 800014f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005070:	00090513          	mv	a0,s2
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	00013903          	ld	s2,0(sp)
    80005084:	02010113          	addi	sp,sp,32
    80005088:	00008067          	ret
        ret = cap - head + tail;
    8000508c:	0004a703          	lw	a4,0(s1)
    80005090:	4127093b          	subw	s2,a4,s2
    80005094:	00f9093b          	addw	s2,s2,a5
    80005098:	fc1ff06f          	j	80005058 <_ZN6Buffer6getCntEv+0x44>

000000008000509c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000509c:	fe010113          	addi	sp,sp,-32
    800050a0:	00113c23          	sd	ra,24(sp)
    800050a4:	00813823          	sd	s0,16(sp)
    800050a8:	00913423          	sd	s1,8(sp)
    800050ac:	02010413          	addi	s0,sp,32
    800050b0:	00050493          	mv	s1,a0
    putc('\n');
    800050b4:	00a00513          	li	a0,10
    800050b8:	ffffc097          	auipc	ra,0xffffc
    800050bc:	5b4080e7          	jalr	1460(ra) # 8000166c <_Z4putcc>
    printString("Buffer deleted!\n");
    800050c0:	00005517          	auipc	a0,0x5
    800050c4:	25050513          	addi	a0,a0,592 # 8000a310 <CONSOLE_STATUS+0x300>
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	f18080e7          	jalr	-232(ra) # 80005fe0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800050d0:	00048513          	mv	a0,s1
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	f40080e7          	jalr	-192(ra) # 80005014 <_ZN6Buffer6getCntEv>
    800050dc:	02a05c63          	blez	a0,80005114 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800050e0:	0084b783          	ld	a5,8(s1)
    800050e4:	0104a703          	lw	a4,16(s1)
    800050e8:	00271713          	slli	a4,a4,0x2
    800050ec:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800050f0:	0007c503          	lbu	a0,0(a5)
    800050f4:	ffffc097          	auipc	ra,0xffffc
    800050f8:	578080e7          	jalr	1400(ra) # 8000166c <_Z4putcc>
        head = (head + 1) % cap;
    800050fc:	0104a783          	lw	a5,16(s1)
    80005100:	0017879b          	addiw	a5,a5,1
    80005104:	0004a703          	lw	a4,0(s1)
    80005108:	02e7e7bb          	remw	a5,a5,a4
    8000510c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005110:	fc1ff06f          	j	800050d0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005114:	02100513          	li	a0,33
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	554080e7          	jalr	1364(ra) # 8000166c <_Z4putcc>
    putc('\n');
    80005120:	00a00513          	li	a0,10
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	548080e7          	jalr	1352(ra) # 8000166c <_Z4putcc>
    mem_free(buffer);
    8000512c:	0084b503          	ld	a0,8(s1)
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	17c080e7          	jalr	380(ra) # 800012ac <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005138:	0204b503          	ld	a0,32(s1)
    8000513c:	ffffc097          	auipc	ra,0xffffc
    80005140:	31c080e7          	jalr	796(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005144:	0184b503          	ld	a0,24(s1)
    80005148:	ffffc097          	auipc	ra,0xffffc
    8000514c:	310080e7          	jalr	784(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005150:	0304b503          	ld	a0,48(s1)
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	304080e7          	jalr	772(ra) # 80001458 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    8000515c:	0284b503          	ld	a0,40(s1)
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	2f8080e7          	jalr	760(ra) # 80001458 <_Z9sem_closeP3Sem>
}
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret

000000008000517c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000517c:	fe010113          	addi	sp,sp,-32
    80005180:	00113c23          	sd	ra,24(sp)
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00913423          	sd	s1,8(sp)
    8000518c:	01213023          	sd	s2,0(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005198:	00100793          	li	a5,1
    8000519c:	02a7f863          	bgeu	a5,a0,800051cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800051a0:	00a00793          	li	a5,10
    800051a4:	02f577b3          	remu	a5,a0,a5
    800051a8:	02078e63          	beqz	a5,800051e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800051ac:	fff48513          	addi	a0,s1,-1
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	fcc080e7          	jalr	-52(ra) # 8000517c <_ZL9fibonaccim>
    800051b8:	00050913          	mv	s2,a0
    800051bc:	ffe48513          	addi	a0,s1,-2
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	fbc080e7          	jalr	-68(ra) # 8000517c <_ZL9fibonaccim>
    800051c8:	00a90533          	add	a0,s2,a0
}
    800051cc:	01813083          	ld	ra,24(sp)
    800051d0:	01013403          	ld	s0,16(sp)
    800051d4:	00813483          	ld	s1,8(sp)
    800051d8:	00013903          	ld	s2,0(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800051e4:	ffffc097          	auipc	ra,0xffffc
    800051e8:	1e8080e7          	jalr	488(ra) # 800013cc <_Z15thread_dispatchv>
    800051ec:	fc1ff06f          	j	800051ac <_ZL9fibonaccim+0x30>

00000000800051f0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800051f0:	fe010113          	addi	sp,sp,-32
    800051f4:	00113c23          	sd	ra,24(sp)
    800051f8:	00813823          	sd	s0,16(sp)
    800051fc:	00913423          	sd	s1,8(sp)
    80005200:	01213023          	sd	s2,0(sp)
    80005204:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005208:	00a00493          	li	s1,10
    8000520c:	0400006f          	j	8000524c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005210:	00005517          	auipc	a0,0x5
    80005214:	06850513          	addi	a0,a0,104 # 8000a278 <CONSOLE_STATUS+0x268>
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	dc8080e7          	jalr	-568(ra) # 80005fe0 <_Z11printStringPKc>
    80005220:	00000613          	li	a2,0
    80005224:	00a00593          	li	a1,10
    80005228:	00048513          	mv	a0,s1
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	f64080e7          	jalr	-156(ra) # 80006190 <_Z8printIntiii>
    80005234:	00005517          	auipc	a0,0x5
    80005238:	24450513          	addi	a0,a0,580 # 8000a478 <CONSOLE_STATUS+0x468>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	da4080e7          	jalr	-604(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005244:	0014849b          	addiw	s1,s1,1
    80005248:	0ff4f493          	andi	s1,s1,255
    8000524c:	00c00793          	li	a5,12
    80005250:	fc97f0e3          	bgeu	a5,s1,80005210 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005254:	00005517          	auipc	a0,0x5
    80005258:	02c50513          	addi	a0,a0,44 # 8000a280 <CONSOLE_STATUS+0x270>
    8000525c:	00001097          	auipc	ra,0x1
    80005260:	d84080e7          	jalr	-636(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005264:	00500313          	li	t1,5
    thread_dispatch();
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	164080e7          	jalr	356(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005270:	01000513          	li	a0,16
    80005274:	00000097          	auipc	ra,0x0
    80005278:	f08080e7          	jalr	-248(ra) # 8000517c <_ZL9fibonaccim>
    8000527c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005280:	00005517          	auipc	a0,0x5
    80005284:	01050513          	addi	a0,a0,16 # 8000a290 <CONSOLE_STATUS+0x280>
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	d58080e7          	jalr	-680(ra) # 80005fe0 <_Z11printStringPKc>
    80005290:	00000613          	li	a2,0
    80005294:	00a00593          	li	a1,10
    80005298:	0009051b          	sext.w	a0,s2
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	ef4080e7          	jalr	-268(ra) # 80006190 <_Z8printIntiii>
    800052a4:	00005517          	auipc	a0,0x5
    800052a8:	1d450513          	addi	a0,a0,468 # 8000a478 <CONSOLE_STATUS+0x468>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	d34080e7          	jalr	-716(ra) # 80005fe0 <_Z11printStringPKc>
    800052b4:	0400006f          	j	800052f4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052b8:	00005517          	auipc	a0,0x5
    800052bc:	fc050513          	addi	a0,a0,-64 # 8000a278 <CONSOLE_STATUS+0x268>
    800052c0:	00001097          	auipc	ra,0x1
    800052c4:	d20080e7          	jalr	-736(ra) # 80005fe0 <_Z11printStringPKc>
    800052c8:	00000613          	li	a2,0
    800052cc:	00a00593          	li	a1,10
    800052d0:	00048513          	mv	a0,s1
    800052d4:	00001097          	auipc	ra,0x1
    800052d8:	ebc080e7          	jalr	-324(ra) # 80006190 <_Z8printIntiii>
    800052dc:	00005517          	auipc	a0,0x5
    800052e0:	19c50513          	addi	a0,a0,412 # 8000a478 <CONSOLE_STATUS+0x468>
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	cfc080e7          	jalr	-772(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800052ec:	0014849b          	addiw	s1,s1,1
    800052f0:	0ff4f493          	andi	s1,s1,255
    800052f4:	00f00793          	li	a5,15
    800052f8:	fc97f0e3          	bgeu	a5,s1,800052b8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800052fc:	00005517          	auipc	a0,0x5
    80005300:	fa450513          	addi	a0,a0,-92 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005304:	00001097          	auipc	ra,0x1
    80005308:	cdc080e7          	jalr	-804(ra) # 80005fe0 <_Z11printStringPKc>
    finishedD = true;
    8000530c:	00100793          	li	a5,1
    80005310:	00008717          	auipc	a4,0x8
    80005314:	bef70823          	sb	a5,-1040(a4) # 8000cf00 <_ZL9finishedD>
    thread_dispatch();
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	0b4080e7          	jalr	180(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005320:	01813083          	ld	ra,24(sp)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	00813483          	ld	s1,8(sp)
    8000532c:	00013903          	ld	s2,0(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005350:	00000493          	li	s1,0
    80005354:	0400006f          	j	80005394 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005358:	00005517          	auipc	a0,0x5
    8000535c:	ef050513          	addi	a0,a0,-272 # 8000a248 <CONSOLE_STATUS+0x238>
    80005360:	00001097          	auipc	ra,0x1
    80005364:	c80080e7          	jalr	-896(ra) # 80005fe0 <_Z11printStringPKc>
    80005368:	00000613          	li	a2,0
    8000536c:	00a00593          	li	a1,10
    80005370:	00048513          	mv	a0,s1
    80005374:	00001097          	auipc	ra,0x1
    80005378:	e1c080e7          	jalr	-484(ra) # 80006190 <_Z8printIntiii>
    8000537c:	00005517          	auipc	a0,0x5
    80005380:	0fc50513          	addi	a0,a0,252 # 8000a478 <CONSOLE_STATUS+0x468>
    80005384:	00001097          	auipc	ra,0x1
    80005388:	c5c080e7          	jalr	-932(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000538c:	0014849b          	addiw	s1,s1,1
    80005390:	0ff4f493          	andi	s1,s1,255
    80005394:	00200793          	li	a5,2
    80005398:	fc97f0e3          	bgeu	a5,s1,80005358 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000539c:	00005517          	auipc	a0,0x5
    800053a0:	eb450513          	addi	a0,a0,-332 # 8000a250 <CONSOLE_STATUS+0x240>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	c3c080e7          	jalr	-964(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053ac:	00700313          	li	t1,7
    thread_dispatch();
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	01c080e7          	jalr	28(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800053b8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800053bc:	00005517          	auipc	a0,0x5
    800053c0:	ea450513          	addi	a0,a0,-348 # 8000a260 <CONSOLE_STATUS+0x250>
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	c1c080e7          	jalr	-996(ra) # 80005fe0 <_Z11printStringPKc>
    800053cc:	00000613          	li	a2,0
    800053d0:	00a00593          	li	a1,10
    800053d4:	0009051b          	sext.w	a0,s2
    800053d8:	00001097          	auipc	ra,0x1
    800053dc:	db8080e7          	jalr	-584(ra) # 80006190 <_Z8printIntiii>
    800053e0:	00005517          	auipc	a0,0x5
    800053e4:	09850513          	addi	a0,a0,152 # 8000a478 <CONSOLE_STATUS+0x468>
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	bf8080e7          	jalr	-1032(ra) # 80005fe0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800053f0:	00c00513          	li	a0,12
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	d88080e7          	jalr	-632(ra) # 8000517c <_ZL9fibonaccim>
    800053fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005400:	00005517          	auipc	a0,0x5
    80005404:	e6850513          	addi	a0,a0,-408 # 8000a268 <CONSOLE_STATUS+0x258>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	bd8080e7          	jalr	-1064(ra) # 80005fe0 <_Z11printStringPKc>
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	0009051b          	sext.w	a0,s2
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	d74080e7          	jalr	-652(ra) # 80006190 <_Z8printIntiii>
    80005424:	00005517          	auipc	a0,0x5
    80005428:	05450513          	addi	a0,a0,84 # 8000a478 <CONSOLE_STATUS+0x468>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	bb4080e7          	jalr	-1100(ra) # 80005fe0 <_Z11printStringPKc>
    80005434:	0400006f          	j	80005474 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005438:	00005517          	auipc	a0,0x5
    8000543c:	e1050513          	addi	a0,a0,-496 # 8000a248 <CONSOLE_STATUS+0x238>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	ba0080e7          	jalr	-1120(ra) # 80005fe0 <_Z11printStringPKc>
    80005448:	00000613          	li	a2,0
    8000544c:	00a00593          	li	a1,10
    80005450:	00048513          	mv	a0,s1
    80005454:	00001097          	auipc	ra,0x1
    80005458:	d3c080e7          	jalr	-708(ra) # 80006190 <_Z8printIntiii>
    8000545c:	00005517          	auipc	a0,0x5
    80005460:	01c50513          	addi	a0,a0,28 # 8000a478 <CONSOLE_STATUS+0x468>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	b7c080e7          	jalr	-1156(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000546c:	0014849b          	addiw	s1,s1,1
    80005470:	0ff4f493          	andi	s1,s1,255
    80005474:	00500793          	li	a5,5
    80005478:	fc97f0e3          	bgeu	a5,s1,80005438 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000547c:	00005517          	auipc	a0,0x5
    80005480:	eac50513          	addi	a0,a0,-340 # 8000a328 <CONSOLE_STATUS+0x318>
    80005484:	00001097          	auipc	ra,0x1
    80005488:	b5c080e7          	jalr	-1188(ra) # 80005fe0 <_Z11printStringPKc>
    finishedC = true;
    8000548c:	00100793          	li	a5,1
    80005490:	00008717          	auipc	a4,0x8
    80005494:	a6f708a3          	sb	a5,-1423(a4) # 8000cf01 <_ZL9finishedC>
    thread_dispatch();
    80005498:	ffffc097          	auipc	ra,0xffffc
    8000549c:	f34080e7          	jalr	-204(ra) # 800013cc <_Z15thread_dispatchv>
}
    800054a0:	01813083          	ld	ra,24(sp)
    800054a4:	01013403          	ld	s0,16(sp)
    800054a8:	00813483          	ld	s1,8(sp)
    800054ac:	00013903          	ld	s2,0(sp)
    800054b0:	02010113          	addi	sp,sp,32
    800054b4:	00008067          	ret

00000000800054b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800054b8:	fe010113          	addi	sp,sp,-32
    800054bc:	00113c23          	sd	ra,24(sp)
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00913423          	sd	s1,8(sp)
    800054c8:	01213023          	sd	s2,0(sp)
    800054cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800054d0:	00000913          	li	s2,0
    800054d4:	0380006f          	j	8000550c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	ef4080e7          	jalr	-268(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800054e0:	00148493          	addi	s1,s1,1
    800054e4:	000027b7          	lui	a5,0x2
    800054e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800054ec:	0097ee63          	bltu	a5,s1,80005508 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800054f0:	00000713          	li	a4,0
    800054f4:	000077b7          	lui	a5,0x7
    800054f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800054fc:	fce7eee3          	bltu	a5,a4,800054d8 <_ZL11workerBodyBPv+0x20>
    80005500:	00170713          	addi	a4,a4,1
    80005504:	ff1ff06f          	j	800054f4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005508:	00190913          	addi	s2,s2,1
    8000550c:	00f00793          	li	a5,15
    80005510:	0527e063          	bltu	a5,s2,80005550 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005514:	00005517          	auipc	a0,0x5
    80005518:	d1c50513          	addi	a0,a0,-740 # 8000a230 <CONSOLE_STATUS+0x220>
    8000551c:	00001097          	auipc	ra,0x1
    80005520:	ac4080e7          	jalr	-1340(ra) # 80005fe0 <_Z11printStringPKc>
    80005524:	00000613          	li	a2,0
    80005528:	00a00593          	li	a1,10
    8000552c:	0009051b          	sext.w	a0,s2
    80005530:	00001097          	auipc	ra,0x1
    80005534:	c60080e7          	jalr	-928(ra) # 80006190 <_Z8printIntiii>
    80005538:	00005517          	auipc	a0,0x5
    8000553c:	f4050513          	addi	a0,a0,-192 # 8000a478 <CONSOLE_STATUS+0x468>
    80005540:	00001097          	auipc	ra,0x1
    80005544:	aa0080e7          	jalr	-1376(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005548:	00000493          	li	s1,0
    8000554c:	f99ff06f          	j	800054e4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005550:	00005517          	auipc	a0,0x5
    80005554:	ce850513          	addi	a0,a0,-792 # 8000a238 <CONSOLE_STATUS+0x228>
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	a88080e7          	jalr	-1400(ra) # 80005fe0 <_Z11printStringPKc>
    finishedB = true;
    80005560:	00100793          	li	a5,1
    80005564:	00008717          	auipc	a4,0x8
    80005568:	98f70f23          	sb	a5,-1634(a4) # 8000cf02 <_ZL9finishedB>
    thread_dispatch();
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	e60080e7          	jalr	-416(ra) # 800013cc <_Z15thread_dispatchv>
}
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00813483          	ld	s1,8(sp)
    80005580:	00013903          	ld	s2,0(sp)
    80005584:	02010113          	addi	sp,sp,32
    80005588:	00008067          	ret

000000008000558c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000558c:	fe010113          	addi	sp,sp,-32
    80005590:	00113c23          	sd	ra,24(sp)
    80005594:	00813823          	sd	s0,16(sp)
    80005598:	00913423          	sd	s1,8(sp)
    8000559c:	01213023          	sd	s2,0(sp)
    800055a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055a4:	00000913          	li	s2,0
    800055a8:	0380006f          	j	800055e0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	e20080e7          	jalr	-480(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055b4:	00148493          	addi	s1,s1,1
    800055b8:	000027b7          	lui	a5,0x2
    800055bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055c0:	0097ee63          	bltu	a5,s1,800055dc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055c4:	00000713          	li	a4,0
    800055c8:	000077b7          	lui	a5,0x7
    800055cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055d0:	fce7eee3          	bltu	a5,a4,800055ac <_ZL11workerBodyAPv+0x20>
    800055d4:	00170713          	addi	a4,a4,1
    800055d8:	ff1ff06f          	j	800055c8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800055dc:	00190913          	addi	s2,s2,1
    800055e0:	00900793          	li	a5,9
    800055e4:	0527e063          	bltu	a5,s2,80005624 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800055e8:	00005517          	auipc	a0,0x5
    800055ec:	c3050513          	addi	a0,a0,-976 # 8000a218 <CONSOLE_STATUS+0x208>
    800055f0:	00001097          	auipc	ra,0x1
    800055f4:	9f0080e7          	jalr	-1552(ra) # 80005fe0 <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	0009051b          	sext.w	a0,s2
    80005604:	00001097          	auipc	ra,0x1
    80005608:	b8c080e7          	jalr	-1140(ra) # 80006190 <_Z8printIntiii>
    8000560c:	00005517          	auipc	a0,0x5
    80005610:	e6c50513          	addi	a0,a0,-404 # 8000a478 <CONSOLE_STATUS+0x468>
    80005614:	00001097          	auipc	ra,0x1
    80005618:	9cc080e7          	jalr	-1588(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000561c:	00000493          	li	s1,0
    80005620:	f99ff06f          	j	800055b8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005624:	00005517          	auipc	a0,0x5
    80005628:	bfc50513          	addi	a0,a0,-1028 # 8000a220 <CONSOLE_STATUS+0x210>
    8000562c:	00001097          	auipc	ra,0x1
    80005630:	9b4080e7          	jalr	-1612(ra) # 80005fe0 <_Z11printStringPKc>
    finishedA = true;
    80005634:	00100793          	li	a5,1
    80005638:	00008717          	auipc	a4,0x8
    8000563c:	8cf705a3          	sb	a5,-1845(a4) # 8000cf03 <_ZL9finishedA>
}
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	00013903          	ld	s2,0(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005658:	fd010113          	addi	sp,sp,-48
    8000565c:	02113423          	sd	ra,40(sp)
    80005660:	02813023          	sd	s0,32(sp)
    80005664:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005668:	00000613          	li	a2,0
    8000566c:	00000597          	auipc	a1,0x0
    80005670:	f2058593          	addi	a1,a1,-224 # 8000558c <_ZL11workerBodyAPv>
    80005674:	fd040513          	addi	a0,s0,-48
    80005678:	ffffc097          	auipc	ra,0xffffc
    8000567c:	c80080e7          	jalr	-896(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005680:	00005517          	auipc	a0,0x5
    80005684:	c3050513          	addi	a0,a0,-976 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	958080e7          	jalr	-1704(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005690:	00000613          	li	a2,0
    80005694:	00000597          	auipc	a1,0x0
    80005698:	e2458593          	addi	a1,a1,-476 # 800054b8 <_ZL11workerBodyBPv>
    8000569c:	fd840513          	addi	a0,s0,-40
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	c58080e7          	jalr	-936(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800056a8:	00005517          	auipc	a0,0x5
    800056ac:	c2050513          	addi	a0,a0,-992 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	930080e7          	jalr	-1744(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800056b8:	00000613          	li	a2,0
    800056bc:	00000597          	auipc	a1,0x0
    800056c0:	c7c58593          	addi	a1,a1,-900 # 80005338 <_ZL11workerBodyCPv>
    800056c4:	fe040513          	addi	a0,s0,-32
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	c30080e7          	jalr	-976(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800056d0:	00005517          	auipc	a0,0x5
    800056d4:	c1050513          	addi	a0,a0,-1008 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	908080e7          	jalr	-1784(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800056e0:	00000613          	li	a2,0
    800056e4:	00000597          	auipc	a1,0x0
    800056e8:	b0c58593          	addi	a1,a1,-1268 # 800051f0 <_ZL11workerBodyDPv>
    800056ec:	fe840513          	addi	a0,s0,-24
    800056f0:	ffffc097          	auipc	ra,0xffffc
    800056f4:	c08080e7          	jalr	-1016(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800056f8:	00005517          	auipc	a0,0x5
    800056fc:	c0050513          	addi	a0,a0,-1024 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005700:	00001097          	auipc	ra,0x1
    80005704:	8e0080e7          	jalr	-1824(ra) # 80005fe0 <_Z11printStringPKc>
    80005708:	00c0006f          	j	80005714 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	cc0080e7          	jalr	-832(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005714:	00007797          	auipc	a5,0x7
    80005718:	7ef7c783          	lbu	a5,2031(a5) # 8000cf03 <_ZL9finishedA>
    8000571c:	fe0788e3          	beqz	a5,8000570c <_Z18Threads_C_API_testv+0xb4>
    80005720:	00007797          	auipc	a5,0x7
    80005724:	7e27c783          	lbu	a5,2018(a5) # 8000cf02 <_ZL9finishedB>
    80005728:	fe0782e3          	beqz	a5,8000570c <_Z18Threads_C_API_testv+0xb4>
    8000572c:	00007797          	auipc	a5,0x7
    80005730:	7d57c783          	lbu	a5,2005(a5) # 8000cf01 <_ZL9finishedC>
    80005734:	fc078ce3          	beqz	a5,8000570c <_Z18Threads_C_API_testv+0xb4>
    80005738:	00007797          	auipc	a5,0x7
    8000573c:	7c87c783          	lbu	a5,1992(a5) # 8000cf00 <_ZL9finishedD>
    80005740:	fc0786e3          	beqz	a5,8000570c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005744:	02813083          	ld	ra,40(sp)
    80005748:	02013403          	ld	s0,32(sp)
    8000574c:	03010113          	addi	sp,sp,48
    80005750:	00008067          	ret

0000000080005754 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005754:	fd010113          	addi	sp,sp,-48
    80005758:	02113423          	sd	ra,40(sp)
    8000575c:	02813023          	sd	s0,32(sp)
    80005760:	00913c23          	sd	s1,24(sp)
    80005764:	01213823          	sd	s2,16(sp)
    80005768:	01313423          	sd	s3,8(sp)
    8000576c:	03010413          	addi	s0,sp,48
    80005770:	00050993          	mv	s3,a0
    80005774:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005778:	00000913          	li	s2,0
    8000577c:	00c0006f          	j	80005788 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	9b8080e7          	jalr	-1608(ra) # 80002138 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	e98080e7          	jalr	-360(ra) # 80001620 <_Z4getcv>
    80005790:	0005059b          	sext.w	a1,a0
    80005794:	01b00793          	li	a5,27
    80005798:	02f58a63          	beq	a1,a5,800057cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000579c:	0084b503          	ld	a0,8(s1)
    800057a0:	00001097          	auipc	ra,0x1
    800057a4:	c64080e7          	jalr	-924(ra) # 80006404 <_ZN9BufferCPP3putEi>
        i++;
    800057a8:	0019071b          	addiw	a4,s2,1
    800057ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800057b0:	0004a683          	lw	a3,0(s1)
    800057b4:	0026979b          	slliw	a5,a3,0x2
    800057b8:	00d787bb          	addw	a5,a5,a3
    800057bc:	0017979b          	slliw	a5,a5,0x1
    800057c0:	02f767bb          	remw	a5,a4,a5
    800057c4:	fc0792e3          	bnez	a5,80005788 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800057c8:	fb9ff06f          	j	80005780 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800057cc:	00100793          	li	a5,1
    800057d0:	00007717          	auipc	a4,0x7
    800057d4:	72f72c23          	sw	a5,1848(a4) # 8000cf08 <_ZL9threadEnd>
    td->buffer->put('!');
    800057d8:	0209b783          	ld	a5,32(s3)
    800057dc:	02100593          	li	a1,33
    800057e0:	0087b503          	ld	a0,8(a5)
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	c20080e7          	jalr	-992(ra) # 80006404 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800057ec:	0104b503          	ld	a0,16(s1)
    800057f0:	ffffd097          	auipc	ra,0xffffd
    800057f4:	a0c080e7          	jalr	-1524(ra) # 800021fc <_ZN9Semaphore6signalEv>
}
    800057f8:	02813083          	ld	ra,40(sp)
    800057fc:	02013403          	ld	s0,32(sp)
    80005800:	01813483          	ld	s1,24(sp)
    80005804:	01013903          	ld	s2,16(sp)
    80005808:	00813983          	ld	s3,8(sp)
    8000580c:	03010113          	addi	sp,sp,48
    80005810:	00008067          	ret

0000000080005814 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005814:	fe010113          	addi	sp,sp,-32
    80005818:	00113c23          	sd	ra,24(sp)
    8000581c:	00813823          	sd	s0,16(sp)
    80005820:	00913423          	sd	s1,8(sp)
    80005824:	01213023          	sd	s2,0(sp)
    80005828:	02010413          	addi	s0,sp,32
    8000582c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005830:	00000913          	li	s2,0
    80005834:	00c0006f          	j	80005840 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	900080e7          	jalr	-1792(ra) # 80002138 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005840:	00007797          	auipc	a5,0x7
    80005844:	6c87a783          	lw	a5,1736(a5) # 8000cf08 <_ZL9threadEnd>
    80005848:	02079e63          	bnez	a5,80005884 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000584c:	0004a583          	lw	a1,0(s1)
    80005850:	0305859b          	addiw	a1,a1,48
    80005854:	0084b503          	ld	a0,8(s1)
    80005858:	00001097          	auipc	ra,0x1
    8000585c:	bac080e7          	jalr	-1108(ra) # 80006404 <_ZN9BufferCPP3putEi>
        i++;
    80005860:	0019071b          	addiw	a4,s2,1
    80005864:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005868:	0004a683          	lw	a3,0(s1)
    8000586c:	0026979b          	slliw	a5,a3,0x2
    80005870:	00d787bb          	addw	a5,a5,a3
    80005874:	0017979b          	slliw	a5,a5,0x1
    80005878:	02f767bb          	remw	a5,a4,a5
    8000587c:	fc0792e3          	bnez	a5,80005840 <_ZN12ProducerSync8producerEPv+0x2c>
    80005880:	fb9ff06f          	j	80005838 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005884:	0104b503          	ld	a0,16(s1)
    80005888:	ffffd097          	auipc	ra,0xffffd
    8000588c:	974080e7          	jalr	-1676(ra) # 800021fc <_ZN9Semaphore6signalEv>
}
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	01013403          	ld	s0,16(sp)
    80005898:	00813483          	ld	s1,8(sp)
    8000589c:	00013903          	ld	s2,0(sp)
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret

00000000800058a8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800058a8:	fd010113          	addi	sp,sp,-48
    800058ac:	02113423          	sd	ra,40(sp)
    800058b0:	02813023          	sd	s0,32(sp)
    800058b4:	00913c23          	sd	s1,24(sp)
    800058b8:	01213823          	sd	s2,16(sp)
    800058bc:	01313423          	sd	s3,8(sp)
    800058c0:	01413023          	sd	s4,0(sp)
    800058c4:	03010413          	addi	s0,sp,48
    800058c8:	00050993          	mv	s3,a0
    800058cc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058d0:	00000a13          	li	s4,0
    800058d4:	01c0006f          	j	800058f0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800058d8:	ffffd097          	auipc	ra,0xffffd
    800058dc:	860080e7          	jalr	-1952(ra) # 80002138 <_ZN6Thread8dispatchEv>
    800058e0:	0500006f          	j	80005930 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800058e4:	00a00513          	li	a0,10
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	d84080e7          	jalr	-636(ra) # 8000166c <_Z4putcc>
    while (!threadEnd) {
    800058f0:	00007797          	auipc	a5,0x7
    800058f4:	6187a783          	lw	a5,1560(a5) # 8000cf08 <_ZL9threadEnd>
    800058f8:	06079263          	bnez	a5,8000595c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800058fc:	00893503          	ld	a0,8(s2)
    80005900:	00001097          	auipc	ra,0x1
    80005904:	b94080e7          	jalr	-1132(ra) # 80006494 <_ZN9BufferCPP3getEv>
        i++;
    80005908:	001a049b          	addiw	s1,s4,1
    8000590c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005910:	0ff57513          	andi	a0,a0,255
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	d58080e7          	jalr	-680(ra) # 8000166c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000591c:	00092703          	lw	a4,0(s2)
    80005920:	0027179b          	slliw	a5,a4,0x2
    80005924:	00e787bb          	addw	a5,a5,a4
    80005928:	02f4e7bb          	remw	a5,s1,a5
    8000592c:	fa0786e3          	beqz	a5,800058d8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005930:	05000793          	li	a5,80
    80005934:	02f4e4bb          	remw	s1,s1,a5
    80005938:	fa049ce3          	bnez	s1,800058f0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000593c:	fa9ff06f          	j	800058e4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005940:	0209b783          	ld	a5,32(s3)
    80005944:	0087b503          	ld	a0,8(a5)
    80005948:	00001097          	auipc	ra,0x1
    8000594c:	b4c080e7          	jalr	-1204(ra) # 80006494 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005950:	0ff57513          	andi	a0,a0,255
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	9c8080e7          	jalr	-1592(ra) # 8000231c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000595c:	0209b783          	ld	a5,32(s3)
    80005960:	0087b503          	ld	a0,8(a5)
    80005964:	00001097          	auipc	ra,0x1
    80005968:	bbc080e7          	jalr	-1092(ra) # 80006520 <_ZN9BufferCPP6getCntEv>
    8000596c:	fca04ae3          	bgtz	a0,80005940 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005970:	01093503          	ld	a0,16(s2)
    80005974:	ffffd097          	auipc	ra,0xffffd
    80005978:	888080e7          	jalr	-1912(ra) # 800021fc <_ZN9Semaphore6signalEv>
}
    8000597c:	02813083          	ld	ra,40(sp)
    80005980:	02013403          	ld	s0,32(sp)
    80005984:	01813483          	ld	s1,24(sp)
    80005988:	01013903          	ld	s2,16(sp)
    8000598c:	00813983          	ld	s3,8(sp)
    80005990:	00013a03          	ld	s4,0(sp)
    80005994:	03010113          	addi	sp,sp,48
    80005998:	00008067          	ret

000000008000599c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000599c:	f8010113          	addi	sp,sp,-128
    800059a0:	06113c23          	sd	ra,120(sp)
    800059a4:	06813823          	sd	s0,112(sp)
    800059a8:	06913423          	sd	s1,104(sp)
    800059ac:	07213023          	sd	s2,96(sp)
    800059b0:	05313c23          	sd	s3,88(sp)
    800059b4:	05413823          	sd	s4,80(sp)
    800059b8:	05513423          	sd	s5,72(sp)
    800059bc:	05613023          	sd	s6,64(sp)
    800059c0:	03713c23          	sd	s7,56(sp)
    800059c4:	03813823          	sd	s8,48(sp)
    800059c8:	03913423          	sd	s9,40(sp)
    800059cc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800059d0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800059d4:	00004517          	auipc	a0,0x4
    800059d8:	75c50513          	addi	a0,a0,1884 # 8000a130 <CONSOLE_STATUS+0x120>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	604080e7          	jalr	1540(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    800059e4:	01e00593          	li	a1,30
    800059e8:	f8040493          	addi	s1,s0,-128
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	678080e7          	jalr	1656(ra) # 80006068 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800059f8:	00048513          	mv	a0,s1
    800059fc:	00000097          	auipc	ra,0x0
    80005a00:	744080e7          	jalr	1860(ra) # 80006140 <_Z11stringToIntPKc>
    80005a04:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	74850513          	addi	a0,a0,1864 # 8000a150 <CONSOLE_STATUS+0x140>
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	5d0080e7          	jalr	1488(ra) # 80005fe0 <_Z11printStringPKc>
    getString(input, 30);
    80005a18:	01e00593          	li	a1,30
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	648080e7          	jalr	1608(ra) # 80006068 <_Z9getStringPci>
    n = stringToInt(input);
    80005a28:	00048513          	mv	a0,s1
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	714080e7          	jalr	1812(ra) # 80006140 <_Z11stringToIntPKc>
    80005a34:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	73850513          	addi	a0,a0,1848 # 8000a170 <CONSOLE_STATUS+0x160>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	5a0080e7          	jalr	1440(ra) # 80005fe0 <_Z11printStringPKc>
    80005a48:	00000613          	li	a2,0
    80005a4c:	00a00593          	li	a1,10
    80005a50:	00090513          	mv	a0,s2
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	73c080e7          	jalr	1852(ra) # 80006190 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005a5c:	00004517          	auipc	a0,0x4
    80005a60:	72c50513          	addi	a0,a0,1836 # 8000a188 <CONSOLE_STATUS+0x178>
    80005a64:	00000097          	auipc	ra,0x0
    80005a68:	57c080e7          	jalr	1404(ra) # 80005fe0 <_Z11printStringPKc>
    80005a6c:	00000613          	li	a2,0
    80005a70:	00a00593          	li	a1,10
    80005a74:	00048513          	mv	a0,s1
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	718080e7          	jalr	1816(ra) # 80006190 <_Z8printIntiii>
    printString(".\n");
    80005a80:	00004517          	auipc	a0,0x4
    80005a84:	72050513          	addi	a0,a0,1824 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	558080e7          	jalr	1368(ra) # 80005fe0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005a90:	0324c463          	blt	s1,s2,80005ab8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005a94:	03205c63          	blez	s2,80005acc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005a98:	03800513          	li	a0,56
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	534080e7          	jalr	1332(ra) # 80001fd0 <_Znwm>
    80005aa4:	00050a93          	mv	s5,a0
    80005aa8:	00048593          	mv	a1,s1
    80005aac:	00001097          	auipc	ra,0x1
    80005ab0:	804080e7          	jalr	-2044(ra) # 800062b0 <_ZN9BufferCPPC1Ei>
    80005ab4:	0300006f          	j	80005ae4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005ab8:	00004517          	auipc	a0,0x4
    80005abc:	6f050513          	addi	a0,a0,1776 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	520080e7          	jalr	1312(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80005ac8:	0140006f          	j	80005adc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005acc:	00004517          	auipc	a0,0x4
    80005ad0:	71c50513          	addi	a0,a0,1820 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	50c080e7          	jalr	1292(ra) # 80005fe0 <_Z11printStringPKc>
        return;
    80005adc:	000b8113          	mv	sp,s7
    80005ae0:	2380006f          	j	80005d18 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005ae4:	01000513          	li	a0,16
    80005ae8:	ffffc097          	auipc	ra,0xffffc
    80005aec:	4e8080e7          	jalr	1256(ra) # 80001fd0 <_Znwm>
    80005af0:	00050493          	mv	s1,a0
    80005af4:	00000593          	li	a1,0
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	690080e7          	jalr	1680(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    80005b00:	00007797          	auipc	a5,0x7
    80005b04:	4097b823          	sd	s1,1040(a5) # 8000cf10 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005b08:	00391793          	slli	a5,s2,0x3
    80005b0c:	00f78793          	addi	a5,a5,15
    80005b10:	ff07f793          	andi	a5,a5,-16
    80005b14:	40f10133          	sub	sp,sp,a5
    80005b18:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005b1c:	0019071b          	addiw	a4,s2,1
    80005b20:	00171793          	slli	a5,a4,0x1
    80005b24:	00e787b3          	add	a5,a5,a4
    80005b28:	00379793          	slli	a5,a5,0x3
    80005b2c:	00f78793          	addi	a5,a5,15
    80005b30:	ff07f793          	andi	a5,a5,-16
    80005b34:	40f10133          	sub	sp,sp,a5
    80005b38:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005b3c:	00191c13          	slli	s8,s2,0x1
    80005b40:	012c07b3          	add	a5,s8,s2
    80005b44:	00379793          	slli	a5,a5,0x3
    80005b48:	00fa07b3          	add	a5,s4,a5
    80005b4c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005b50:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005b54:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005b58:	02800513          	li	a0,40
    80005b5c:	ffffc097          	auipc	ra,0xffffc
    80005b60:	474080e7          	jalr	1140(ra) # 80001fd0 <_Znwm>
    80005b64:	00050b13          	mv	s6,a0
    80005b68:	012c0c33          	add	s8,s8,s2
    80005b6c:	003c1c13          	slli	s8,s8,0x3
    80005b70:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	55c080e7          	jalr	1372(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80005b7c:	00007797          	auipc	a5,0x7
    80005b80:	21c78793          	addi	a5,a5,540 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005b84:	00fb3023          	sd	a5,0(s6)
    80005b88:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005b8c:	000b0513          	mv	a0,s6
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	570080e7          	jalr	1392(ra) # 80002100 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005b98:	00000493          	li	s1,0
    80005b9c:	0380006f          	j	80005bd4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ba0:	00007797          	auipc	a5,0x7
    80005ba4:	1d078793          	addi	a5,a5,464 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005ba8:	00fcb023          	sd	a5,0(s9)
    80005bac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005bb0:	00349793          	slli	a5,s1,0x3
    80005bb4:	00f987b3          	add	a5,s3,a5
    80005bb8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005bbc:	00349793          	slli	a5,s1,0x3
    80005bc0:	00f987b3          	add	a5,s3,a5
    80005bc4:	0007b503          	ld	a0,0(a5)
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	538080e7          	jalr	1336(ra) # 80002100 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005bd0:	0014849b          	addiw	s1,s1,1
    80005bd4:	0b24d063          	bge	s1,s2,80005c74 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005bd8:	00149793          	slli	a5,s1,0x1
    80005bdc:	009787b3          	add	a5,a5,s1
    80005be0:	00379793          	slli	a5,a5,0x3
    80005be4:	00fa07b3          	add	a5,s4,a5
    80005be8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005bec:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005bf0:	00007717          	auipc	a4,0x7
    80005bf4:	32073703          	ld	a4,800(a4) # 8000cf10 <_ZL10waitForAll>
    80005bf8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005bfc:	02905863          	blez	s1,80005c2c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005c00:	02800513          	li	a0,40
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	3cc080e7          	jalr	972(ra) # 80001fd0 <_Znwm>
    80005c0c:	00050c93          	mv	s9,a0
    80005c10:	00149c13          	slli	s8,s1,0x1
    80005c14:	009c0c33          	add	s8,s8,s1
    80005c18:	003c1c13          	slli	s8,s8,0x3
    80005c1c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	4b0080e7          	jalr	1200(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80005c28:	f79ff06f          	j	80005ba0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005c2c:	02800513          	li	a0,40
    80005c30:	ffffc097          	auipc	ra,0xffffc
    80005c34:	3a0080e7          	jalr	928(ra) # 80001fd0 <_Znwm>
    80005c38:	00050c93          	mv	s9,a0
    80005c3c:	00149c13          	slli	s8,s1,0x1
    80005c40:	009c0c33          	add	s8,s8,s1
    80005c44:	003c1c13          	slli	s8,s8,0x3
    80005c48:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	484080e7          	jalr	1156(ra) # 800020d0 <_ZN6ThreadC1Ev>
    80005c54:	00007797          	auipc	a5,0x7
    80005c58:	0f478793          	addi	a5,a5,244 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005c5c:	00fcb023          	sd	a5,0(s9)
    80005c60:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005c64:	00349793          	slli	a5,s1,0x3
    80005c68:	00f987b3          	add	a5,s3,a5
    80005c6c:	0197b023          	sd	s9,0(a5)
    80005c70:	f4dff06f          	j	80005bbc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005c74:	ffffc097          	auipc	ra,0xffffc
    80005c78:	4c4080e7          	jalr	1220(ra) # 80002138 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c7c:	00000493          	li	s1,0
    80005c80:	00994e63          	blt	s2,s1,80005c9c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005c84:	00007517          	auipc	a0,0x7
    80005c88:	28c53503          	ld	a0,652(a0) # 8000cf10 <_ZL10waitForAll>
    80005c8c:	ffffc097          	auipc	ra,0xffffc
    80005c90:	538080e7          	jalr	1336(ra) # 800021c4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c94:	0014849b          	addiw	s1,s1,1
    80005c98:	fe9ff06f          	j	80005c80 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005c9c:	00000493          	li	s1,0
    80005ca0:	0080006f          	j	80005ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005ca4:	0014849b          	addiw	s1,s1,1
    80005ca8:	0324d263          	bge	s1,s2,80005ccc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005cac:	00349793          	slli	a5,s1,0x3
    80005cb0:	00f987b3          	add	a5,s3,a5
    80005cb4:	0007b503          	ld	a0,0(a5)
    80005cb8:	fe0506e3          	beqz	a0,80005ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005cbc:	00053783          	ld	a5,0(a0)
    80005cc0:	0087b783          	ld	a5,8(a5)
    80005cc4:	000780e7          	jalr	a5
    80005cc8:	fddff06f          	j	80005ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005ccc:	000b0a63          	beqz	s6,80005ce0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005cd0:	000b3783          	ld	a5,0(s6)
    80005cd4:	0087b783          	ld	a5,8(a5)
    80005cd8:	000b0513          	mv	a0,s6
    80005cdc:	000780e7          	jalr	a5
    delete waitForAll;
    80005ce0:	00007517          	auipc	a0,0x7
    80005ce4:	23053503          	ld	a0,560(a0) # 8000cf10 <_ZL10waitForAll>
    80005ce8:	00050863          	beqz	a0,80005cf8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005cec:	00053783          	ld	a5,0(a0)
    80005cf0:	0087b783          	ld	a5,8(a5)
    80005cf4:	000780e7          	jalr	a5
    delete buffer;
    80005cf8:	000a8e63          	beqz	s5,80005d14 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005cfc:	000a8513          	mv	a0,s5
    80005d00:	00001097          	auipc	ra,0x1
    80005d04:	8a8080e7          	jalr	-1880(ra) # 800065a8 <_ZN9BufferCPPD1Ev>
    80005d08:	000a8513          	mv	a0,s5
    80005d0c:	ffffc097          	auipc	ra,0xffffc
    80005d10:	2ec080e7          	jalr	748(ra) # 80001ff8 <_ZdlPv>
    80005d14:	000b8113          	mv	sp,s7

}
    80005d18:	f8040113          	addi	sp,s0,-128
    80005d1c:	07813083          	ld	ra,120(sp)
    80005d20:	07013403          	ld	s0,112(sp)
    80005d24:	06813483          	ld	s1,104(sp)
    80005d28:	06013903          	ld	s2,96(sp)
    80005d2c:	05813983          	ld	s3,88(sp)
    80005d30:	05013a03          	ld	s4,80(sp)
    80005d34:	04813a83          	ld	s5,72(sp)
    80005d38:	04013b03          	ld	s6,64(sp)
    80005d3c:	03813b83          	ld	s7,56(sp)
    80005d40:	03013c03          	ld	s8,48(sp)
    80005d44:	02813c83          	ld	s9,40(sp)
    80005d48:	08010113          	addi	sp,sp,128
    80005d4c:	00008067          	ret
    80005d50:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005d54:	000a8513          	mv	a0,s5
    80005d58:	ffffc097          	auipc	ra,0xffffc
    80005d5c:	2a0080e7          	jalr	672(ra) # 80001ff8 <_ZdlPv>
    80005d60:	00048513          	mv	a0,s1
    80005d64:	00008097          	auipc	ra,0x8
    80005d68:	294080e7          	jalr	660(ra) # 8000dff8 <_Unwind_Resume>
    80005d6c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005d70:	00048513          	mv	a0,s1
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	284080e7          	jalr	644(ra) # 80001ff8 <_ZdlPv>
    80005d7c:	00090513          	mv	a0,s2
    80005d80:	00008097          	auipc	ra,0x8
    80005d84:	278080e7          	jalr	632(ra) # 8000dff8 <_Unwind_Resume>
    80005d88:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005d8c:	000b0513          	mv	a0,s6
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	268080e7          	jalr	616(ra) # 80001ff8 <_ZdlPv>
    80005d98:	00048513          	mv	a0,s1
    80005d9c:	00008097          	auipc	ra,0x8
    80005da0:	25c080e7          	jalr	604(ra) # 8000dff8 <_Unwind_Resume>
    80005da4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005da8:	000c8513          	mv	a0,s9
    80005dac:	ffffc097          	auipc	ra,0xffffc
    80005db0:	24c080e7          	jalr	588(ra) # 80001ff8 <_ZdlPv>
    80005db4:	00048513          	mv	a0,s1
    80005db8:	00008097          	auipc	ra,0x8
    80005dbc:	240080e7          	jalr	576(ra) # 8000dff8 <_Unwind_Resume>
    80005dc0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005dc4:	000c8513          	mv	a0,s9
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	230080e7          	jalr	560(ra) # 80001ff8 <_ZdlPv>
    80005dd0:	00048513          	mv	a0,s1
    80005dd4:	00008097          	auipc	ra,0x8
    80005dd8:	224080e7          	jalr	548(ra) # 8000dff8 <_Unwind_Resume>

0000000080005ddc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005ddc:	ff010113          	addi	sp,sp,-16
    80005de0:	00113423          	sd	ra,8(sp)
    80005de4:	00813023          	sd	s0,0(sp)
    80005de8:	01010413          	addi	s0,sp,16
    80005dec:	00007797          	auipc	a5,0x7
    80005df0:	fac78793          	addi	a5,a5,-84 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005df4:	00f53023          	sd	a5,0(a0)
    80005df8:	ffffc097          	auipc	ra,0xffffc
    80005dfc:	140080e7          	jalr	320(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005e00:	00813083          	ld	ra,8(sp)
    80005e04:	00013403          	ld	s0,0(sp)
    80005e08:	01010113          	addi	sp,sp,16
    80005e0c:	00008067          	ret

0000000080005e10 <_ZN12ConsumerSyncD0Ev>:
    80005e10:	fe010113          	addi	sp,sp,-32
    80005e14:	00113c23          	sd	ra,24(sp)
    80005e18:	00813823          	sd	s0,16(sp)
    80005e1c:	00913423          	sd	s1,8(sp)
    80005e20:	02010413          	addi	s0,sp,32
    80005e24:	00050493          	mv	s1,a0
    80005e28:	00007797          	auipc	a5,0x7
    80005e2c:	f7078793          	addi	a5,a5,-144 # 8000cd98 <_ZTV12ConsumerSync+0x10>
    80005e30:	00f53023          	sd	a5,0(a0)
    80005e34:	ffffc097          	auipc	ra,0xffffc
    80005e38:	104080e7          	jalr	260(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005e3c:	00048513          	mv	a0,s1
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	1b8080e7          	jalr	440(ra) # 80001ff8 <_ZdlPv>
    80005e48:	01813083          	ld	ra,24(sp)
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	00813483          	ld	s1,8(sp)
    80005e54:	02010113          	addi	sp,sp,32
    80005e58:	00008067          	ret

0000000080005e5c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005e5c:	ff010113          	addi	sp,sp,-16
    80005e60:	00113423          	sd	ra,8(sp)
    80005e64:	00813023          	sd	s0,0(sp)
    80005e68:	01010413          	addi	s0,sp,16
    80005e6c:	00007797          	auipc	a5,0x7
    80005e70:	f0478793          	addi	a5,a5,-252 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005e74:	00f53023          	sd	a5,0(a0)
    80005e78:	ffffc097          	auipc	ra,0xffffc
    80005e7c:	0c0080e7          	jalr	192(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005e80:	00813083          	ld	ra,8(sp)
    80005e84:	00013403          	ld	s0,0(sp)
    80005e88:	01010113          	addi	sp,sp,16
    80005e8c:	00008067          	ret

0000000080005e90 <_ZN12ProducerSyncD0Ev>:
    80005e90:	fe010113          	addi	sp,sp,-32
    80005e94:	00113c23          	sd	ra,24(sp)
    80005e98:	00813823          	sd	s0,16(sp)
    80005e9c:	00913423          	sd	s1,8(sp)
    80005ea0:	02010413          	addi	s0,sp,32
    80005ea4:	00050493          	mv	s1,a0
    80005ea8:	00007797          	auipc	a5,0x7
    80005eac:	ec878793          	addi	a5,a5,-312 # 8000cd70 <_ZTV12ProducerSync+0x10>
    80005eb0:	00f53023          	sd	a5,0(a0)
    80005eb4:	ffffc097          	auipc	ra,0xffffc
    80005eb8:	084080e7          	jalr	132(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005ebc:	00048513          	mv	a0,s1
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	138080e7          	jalr	312(ra) # 80001ff8 <_ZdlPv>
    80005ec8:	01813083          	ld	ra,24(sp)
    80005ecc:	01013403          	ld	s0,16(sp)
    80005ed0:	00813483          	ld	s1,8(sp)
    80005ed4:	02010113          	addi	sp,sp,32
    80005ed8:	00008067          	ret

0000000080005edc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005edc:	ff010113          	addi	sp,sp,-16
    80005ee0:	00113423          	sd	ra,8(sp)
    80005ee4:	00813023          	sd	s0,0(sp)
    80005ee8:	01010413          	addi	s0,sp,16
    80005eec:	00007797          	auipc	a5,0x7
    80005ef0:	e5c78793          	addi	a5,a5,-420 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005ef4:	00f53023          	sd	a5,0(a0)
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	040080e7          	jalr	64(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005f00:	00813083          	ld	ra,8(sp)
    80005f04:	00013403          	ld	s0,0(sp)
    80005f08:	01010113          	addi	sp,sp,16
    80005f0c:	00008067          	ret

0000000080005f10 <_ZN16ProducerKeyboardD0Ev>:
    80005f10:	fe010113          	addi	sp,sp,-32
    80005f14:	00113c23          	sd	ra,24(sp)
    80005f18:	00813823          	sd	s0,16(sp)
    80005f1c:	00913423          	sd	s1,8(sp)
    80005f20:	02010413          	addi	s0,sp,32
    80005f24:	00050493          	mv	s1,a0
    80005f28:	00007797          	auipc	a5,0x7
    80005f2c:	e2078793          	addi	a5,a5,-480 # 8000cd48 <_ZTV16ProducerKeyboard+0x10>
    80005f30:	00f53023          	sd	a5,0(a0)
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	004080e7          	jalr	4(ra) # 80001f38 <_ZN6ThreadD1Ev>
    80005f3c:	00048513          	mv	a0,s1
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	0b8080e7          	jalr	184(ra) # 80001ff8 <_ZdlPv>
    80005f48:	01813083          	ld	ra,24(sp)
    80005f4c:	01013403          	ld	s0,16(sp)
    80005f50:	00813483          	ld	s1,8(sp)
    80005f54:	02010113          	addi	sp,sp,32
    80005f58:	00008067          	ret

0000000080005f5c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005f5c:	ff010113          	addi	sp,sp,-16
    80005f60:	00113423          	sd	ra,8(sp)
    80005f64:	00813023          	sd	s0,0(sp)
    80005f68:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005f6c:	02053583          	ld	a1,32(a0)
    80005f70:	fffff097          	auipc	ra,0xfffff
    80005f74:	7e4080e7          	jalr	2020(ra) # 80005754 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005f78:	00813083          	ld	ra,8(sp)
    80005f7c:	00013403          	ld	s0,0(sp)
    80005f80:	01010113          	addi	sp,sp,16
    80005f84:	00008067          	ret

0000000080005f88 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005f88:	ff010113          	addi	sp,sp,-16
    80005f8c:	00113423          	sd	ra,8(sp)
    80005f90:	00813023          	sd	s0,0(sp)
    80005f94:	01010413          	addi	s0,sp,16
        producer(td);
    80005f98:	02053583          	ld	a1,32(a0)
    80005f9c:	00000097          	auipc	ra,0x0
    80005fa0:	878080e7          	jalr	-1928(ra) # 80005814 <_ZN12ProducerSync8producerEPv>
    }
    80005fa4:	00813083          	ld	ra,8(sp)
    80005fa8:	00013403          	ld	s0,0(sp)
    80005fac:	01010113          	addi	sp,sp,16
    80005fb0:	00008067          	ret

0000000080005fb4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005fb4:	ff010113          	addi	sp,sp,-16
    80005fb8:	00113423          	sd	ra,8(sp)
    80005fbc:	00813023          	sd	s0,0(sp)
    80005fc0:	01010413          	addi	s0,sp,16
        consumer(td);
    80005fc4:	02053583          	ld	a1,32(a0)
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	8e0080e7          	jalr	-1824(ra) # 800058a8 <_ZN12ConsumerSync8consumerEPv>
    }
    80005fd0:	00813083          	ld	ra,8(sp)
    80005fd4:	00013403          	ld	s0,0(sp)
    80005fd8:	01010113          	addi	sp,sp,16
    80005fdc:	00008067          	ret

0000000080005fe0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005fe0:	fe010113          	addi	sp,sp,-32
    80005fe4:	00113c23          	sd	ra,24(sp)
    80005fe8:	00813823          	sd	s0,16(sp)
    80005fec:	00913423          	sd	s1,8(sp)
    80005ff0:	02010413          	addi	s0,sp,32
    80005ff4:	00050493          	mv	s1,a0
    LOCK();
    80005ff8:	00100613          	li	a2,1
    80005ffc:	00000593          	li	a1,0
    80006000:	00007517          	auipc	a0,0x7
    80006004:	f1850513          	addi	a0,a0,-232 # 8000cf18 <lockPrint>
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	214080e7          	jalr	532(ra) # 8000121c <copy_and_swap>
    80006010:	00050863          	beqz	a0,80006020 <_Z11printStringPKc+0x40>
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	3b8080e7          	jalr	952(ra) # 800013cc <_Z15thread_dispatchv>
    8000601c:	fddff06f          	j	80005ff8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006020:	0004c503          	lbu	a0,0(s1)
    80006024:	00050a63          	beqz	a0,80006038 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	644080e7          	jalr	1604(ra) # 8000166c <_Z4putcc>
        string++;
    80006030:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006034:	fedff06f          	j	80006020 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006038:	00000613          	li	a2,0
    8000603c:	00100593          	li	a1,1
    80006040:	00007517          	auipc	a0,0x7
    80006044:	ed850513          	addi	a0,a0,-296 # 8000cf18 <lockPrint>
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	1d4080e7          	jalr	468(ra) # 8000121c <copy_and_swap>
    80006050:	fe0514e3          	bnez	a0,80006038 <_Z11printStringPKc+0x58>
}
    80006054:	01813083          	ld	ra,24(sp)
    80006058:	01013403          	ld	s0,16(sp)
    8000605c:	00813483          	ld	s1,8(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret

0000000080006068 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006068:	fd010113          	addi	sp,sp,-48
    8000606c:	02113423          	sd	ra,40(sp)
    80006070:	02813023          	sd	s0,32(sp)
    80006074:	00913c23          	sd	s1,24(sp)
    80006078:	01213823          	sd	s2,16(sp)
    8000607c:	01313423          	sd	s3,8(sp)
    80006080:	01413023          	sd	s4,0(sp)
    80006084:	03010413          	addi	s0,sp,48
    80006088:	00050993          	mv	s3,a0
    8000608c:	00058a13          	mv	s4,a1
    LOCK();
    80006090:	00100613          	li	a2,1
    80006094:	00000593          	li	a1,0
    80006098:	00007517          	auipc	a0,0x7
    8000609c:	e8050513          	addi	a0,a0,-384 # 8000cf18 <lockPrint>
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	17c080e7          	jalr	380(ra) # 8000121c <copy_and_swap>
    800060a8:	00050863          	beqz	a0,800060b8 <_Z9getStringPci+0x50>
    800060ac:	ffffb097          	auipc	ra,0xffffb
    800060b0:	320080e7          	jalr	800(ra) # 800013cc <_Z15thread_dispatchv>
    800060b4:	fddff06f          	j	80006090 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800060b8:	00000913          	li	s2,0
    800060bc:	00090493          	mv	s1,s2
    800060c0:	0019091b          	addiw	s2,s2,1
    800060c4:	03495a63          	bge	s2,s4,800060f8 <_Z9getStringPci+0x90>
        cc = getc();
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	558080e7          	jalr	1368(ra) # 80001620 <_Z4getcv>
        if(cc < 1)
    800060d0:	02050463          	beqz	a0,800060f8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800060d4:	009984b3          	add	s1,s3,s1
    800060d8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800060dc:	00a00793          	li	a5,10
    800060e0:	00f50a63          	beq	a0,a5,800060f4 <_Z9getStringPci+0x8c>
    800060e4:	00d00793          	li	a5,13
    800060e8:	fcf51ae3          	bne	a0,a5,800060bc <_Z9getStringPci+0x54>
        buf[i++] = c;
    800060ec:	00090493          	mv	s1,s2
    800060f0:	0080006f          	j	800060f8 <_Z9getStringPci+0x90>
    800060f4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800060f8:	009984b3          	add	s1,s3,s1
    800060fc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006100:	00000613          	li	a2,0
    80006104:	00100593          	li	a1,1
    80006108:	00007517          	auipc	a0,0x7
    8000610c:	e1050513          	addi	a0,a0,-496 # 8000cf18 <lockPrint>
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	10c080e7          	jalr	268(ra) # 8000121c <copy_and_swap>
    80006118:	fe0514e3          	bnez	a0,80006100 <_Z9getStringPci+0x98>
    return buf;
}
    8000611c:	00098513          	mv	a0,s3
    80006120:	02813083          	ld	ra,40(sp)
    80006124:	02013403          	ld	s0,32(sp)
    80006128:	01813483          	ld	s1,24(sp)
    8000612c:	01013903          	ld	s2,16(sp)
    80006130:	00813983          	ld	s3,8(sp)
    80006134:	00013a03          	ld	s4,0(sp)
    80006138:	03010113          	addi	sp,sp,48
    8000613c:	00008067          	ret

0000000080006140 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006140:	ff010113          	addi	sp,sp,-16
    80006144:	00813423          	sd	s0,8(sp)
    80006148:	01010413          	addi	s0,sp,16
    8000614c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006150:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006154:	0006c603          	lbu	a2,0(a3)
    80006158:	fd06071b          	addiw	a4,a2,-48
    8000615c:	0ff77713          	andi	a4,a4,255
    80006160:	00900793          	li	a5,9
    80006164:	02e7e063          	bltu	a5,a4,80006184 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006168:	0025179b          	slliw	a5,a0,0x2
    8000616c:	00a787bb          	addw	a5,a5,a0
    80006170:	0017979b          	slliw	a5,a5,0x1
    80006174:	00168693          	addi	a3,a3,1
    80006178:	00c787bb          	addw	a5,a5,a2
    8000617c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006180:	fd5ff06f          	j	80006154 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006184:	00813403          	ld	s0,8(sp)
    80006188:	01010113          	addi	sp,sp,16
    8000618c:	00008067          	ret

0000000080006190 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006190:	fc010113          	addi	sp,sp,-64
    80006194:	02113c23          	sd	ra,56(sp)
    80006198:	02813823          	sd	s0,48(sp)
    8000619c:	02913423          	sd	s1,40(sp)
    800061a0:	03213023          	sd	s2,32(sp)
    800061a4:	01313c23          	sd	s3,24(sp)
    800061a8:	04010413          	addi	s0,sp,64
    800061ac:	00050493          	mv	s1,a0
    800061b0:	00058913          	mv	s2,a1
    800061b4:	00060993          	mv	s3,a2
    LOCK();
    800061b8:	00100613          	li	a2,1
    800061bc:	00000593          	li	a1,0
    800061c0:	00007517          	auipc	a0,0x7
    800061c4:	d5850513          	addi	a0,a0,-680 # 8000cf18 <lockPrint>
    800061c8:	ffffb097          	auipc	ra,0xffffb
    800061cc:	054080e7          	jalr	84(ra) # 8000121c <copy_and_swap>
    800061d0:	00050863          	beqz	a0,800061e0 <_Z8printIntiii+0x50>
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	1f8080e7          	jalr	504(ra) # 800013cc <_Z15thread_dispatchv>
    800061dc:	fddff06f          	j	800061b8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800061e0:	00098463          	beqz	s3,800061e8 <_Z8printIntiii+0x58>
    800061e4:	0804c463          	bltz	s1,8000626c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800061e8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800061ec:	00000593          	li	a1,0
    }

    i = 0;
    800061f0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800061f4:	0009079b          	sext.w	a5,s2
    800061f8:	0325773b          	remuw	a4,a0,s2
    800061fc:	00048613          	mv	a2,s1
    80006200:	0014849b          	addiw	s1,s1,1
    80006204:	02071693          	slli	a3,a4,0x20
    80006208:	0206d693          	srli	a3,a3,0x20
    8000620c:	00007717          	auipc	a4,0x7
    80006210:	ba470713          	addi	a4,a4,-1116 # 8000cdb0 <digits>
    80006214:	00d70733          	add	a4,a4,a3
    80006218:	00074683          	lbu	a3,0(a4)
    8000621c:	fd040713          	addi	a4,s0,-48
    80006220:	00c70733          	add	a4,a4,a2
    80006224:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006228:	0005071b          	sext.w	a4,a0
    8000622c:	0325553b          	divuw	a0,a0,s2
    80006230:	fcf772e3          	bgeu	a4,a5,800061f4 <_Z8printIntiii+0x64>
    if(neg)
    80006234:	00058c63          	beqz	a1,8000624c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006238:	fd040793          	addi	a5,s0,-48
    8000623c:	009784b3          	add	s1,a5,s1
    80006240:	02d00793          	li	a5,45
    80006244:	fef48823          	sb	a5,-16(s1)
    80006248:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000624c:	fff4849b          	addiw	s1,s1,-1
    80006250:	0204c463          	bltz	s1,80006278 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006254:	fd040793          	addi	a5,s0,-48
    80006258:	009787b3          	add	a5,a5,s1
    8000625c:	ff07c503          	lbu	a0,-16(a5)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	40c080e7          	jalr	1036(ra) # 8000166c <_Z4putcc>
    80006268:	fe5ff06f          	j	8000624c <_Z8printIntiii+0xbc>
        x = -xx;
    8000626c:	4090053b          	negw	a0,s1
        neg = 1;
    80006270:	00100593          	li	a1,1
        x = -xx;
    80006274:	f7dff06f          	j	800061f0 <_Z8printIntiii+0x60>

    UNLOCK();
    80006278:	00000613          	li	a2,0
    8000627c:	00100593          	li	a1,1
    80006280:	00007517          	auipc	a0,0x7
    80006284:	c9850513          	addi	a0,a0,-872 # 8000cf18 <lockPrint>
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	f94080e7          	jalr	-108(ra) # 8000121c <copy_and_swap>
    80006290:	fe0514e3          	bnez	a0,80006278 <_Z8printIntiii+0xe8>
    80006294:	03813083          	ld	ra,56(sp)
    80006298:	03013403          	ld	s0,48(sp)
    8000629c:	02813483          	ld	s1,40(sp)
    800062a0:	02013903          	ld	s2,32(sp)
    800062a4:	01813983          	ld	s3,24(sp)
    800062a8:	04010113          	addi	sp,sp,64
    800062ac:	00008067          	ret

00000000800062b0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062b0:	fd010113          	addi	sp,sp,-48
    800062b4:	02113423          	sd	ra,40(sp)
    800062b8:	02813023          	sd	s0,32(sp)
    800062bc:	00913c23          	sd	s1,24(sp)
    800062c0:	01213823          	sd	s2,16(sp)
    800062c4:	01313423          	sd	s3,8(sp)
    800062c8:	03010413          	addi	s0,sp,48
    800062cc:	00050493          	mv	s1,a0
    800062d0:	00058913          	mv	s2,a1
    800062d4:	0015879b          	addiw	a5,a1,1
    800062d8:	0007851b          	sext.w	a0,a5
    800062dc:	00f4a023          	sw	a5,0(s1)
    800062e0:	0004a823          	sw	zero,16(s1)
    800062e4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800062e8:	00251513          	slli	a0,a0,0x2
    800062ec:	ffffb097          	auipc	ra,0xffffb
    800062f0:	f6c080e7          	jalr	-148(ra) # 80001258 <_Z9mem_allocm>
    800062f4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800062f8:	01000513          	li	a0,16
    800062fc:	ffffc097          	auipc	ra,0xffffc
    80006300:	cd4080e7          	jalr	-812(ra) # 80001fd0 <_Znwm>
    80006304:	00050993          	mv	s3,a0
    80006308:	00000593          	li	a1,0
    8000630c:	ffffc097          	auipc	ra,0xffffc
    80006310:	e7c080e7          	jalr	-388(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    80006314:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006318:	01000513          	li	a0,16
    8000631c:	ffffc097          	auipc	ra,0xffffc
    80006320:	cb4080e7          	jalr	-844(ra) # 80001fd0 <_Znwm>
    80006324:	00050993          	mv	s3,a0
    80006328:	00090593          	mv	a1,s2
    8000632c:	ffffc097          	auipc	ra,0xffffc
    80006330:	e5c080e7          	jalr	-420(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    80006334:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006338:	01000513          	li	a0,16
    8000633c:	ffffc097          	auipc	ra,0xffffc
    80006340:	c94080e7          	jalr	-876(ra) # 80001fd0 <_Znwm>
    80006344:	00050913          	mv	s2,a0
    80006348:	00100593          	li	a1,1
    8000634c:	ffffc097          	auipc	ra,0xffffc
    80006350:	e3c080e7          	jalr	-452(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    80006354:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006358:	01000513          	li	a0,16
    8000635c:	ffffc097          	auipc	ra,0xffffc
    80006360:	c74080e7          	jalr	-908(ra) # 80001fd0 <_Znwm>
    80006364:	00050913          	mv	s2,a0
    80006368:	00100593          	li	a1,1
    8000636c:	ffffc097          	auipc	ra,0xffffc
    80006370:	e1c080e7          	jalr	-484(ra) # 80002188 <_ZN9SemaphoreC1Ej>
    80006374:	0324b823          	sd	s2,48(s1)
}
    80006378:	02813083          	ld	ra,40(sp)
    8000637c:	02013403          	ld	s0,32(sp)
    80006380:	01813483          	ld	s1,24(sp)
    80006384:	01013903          	ld	s2,16(sp)
    80006388:	00813983          	ld	s3,8(sp)
    8000638c:	03010113          	addi	sp,sp,48
    80006390:	00008067          	ret
    80006394:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006398:	00098513          	mv	a0,s3
    8000639c:	ffffc097          	auipc	ra,0xffffc
    800063a0:	c5c080e7          	jalr	-932(ra) # 80001ff8 <_ZdlPv>
    800063a4:	00048513          	mv	a0,s1
    800063a8:	00008097          	auipc	ra,0x8
    800063ac:	c50080e7          	jalr	-944(ra) # 8000dff8 <_Unwind_Resume>
    800063b0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800063b4:	00098513          	mv	a0,s3
    800063b8:	ffffc097          	auipc	ra,0xffffc
    800063bc:	c40080e7          	jalr	-960(ra) # 80001ff8 <_ZdlPv>
    800063c0:	00048513          	mv	a0,s1
    800063c4:	00008097          	auipc	ra,0x8
    800063c8:	c34080e7          	jalr	-972(ra) # 8000dff8 <_Unwind_Resume>
    800063cc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800063d0:	00090513          	mv	a0,s2
    800063d4:	ffffc097          	auipc	ra,0xffffc
    800063d8:	c24080e7          	jalr	-988(ra) # 80001ff8 <_ZdlPv>
    800063dc:	00048513          	mv	a0,s1
    800063e0:	00008097          	auipc	ra,0x8
    800063e4:	c18080e7          	jalr	-1000(ra) # 8000dff8 <_Unwind_Resume>
    800063e8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800063ec:	00090513          	mv	a0,s2
    800063f0:	ffffc097          	auipc	ra,0xffffc
    800063f4:	c08080e7          	jalr	-1016(ra) # 80001ff8 <_ZdlPv>
    800063f8:	00048513          	mv	a0,s1
    800063fc:	00008097          	auipc	ra,0x8
    80006400:	bfc080e7          	jalr	-1028(ra) # 8000dff8 <_Unwind_Resume>

0000000080006404 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	01213023          	sd	s2,0(sp)
    80006418:	02010413          	addi	s0,sp,32
    8000641c:	00050493          	mv	s1,a0
    80006420:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006424:	01853503          	ld	a0,24(a0)
    80006428:	ffffc097          	auipc	ra,0xffffc
    8000642c:	d9c080e7          	jalr	-612(ra) # 800021c4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006430:	0304b503          	ld	a0,48(s1)
    80006434:	ffffc097          	auipc	ra,0xffffc
    80006438:	d90080e7          	jalr	-624(ra) # 800021c4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000643c:	0084b783          	ld	a5,8(s1)
    80006440:	0144a703          	lw	a4,20(s1)
    80006444:	00271713          	slli	a4,a4,0x2
    80006448:	00e787b3          	add	a5,a5,a4
    8000644c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006450:	0144a783          	lw	a5,20(s1)
    80006454:	0017879b          	addiw	a5,a5,1
    80006458:	0004a703          	lw	a4,0(s1)
    8000645c:	02e7e7bb          	remw	a5,a5,a4
    80006460:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006464:	0304b503          	ld	a0,48(s1)
    80006468:	ffffc097          	auipc	ra,0xffffc
    8000646c:	d94080e7          	jalr	-620(ra) # 800021fc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006470:	0204b503          	ld	a0,32(s1)
    80006474:	ffffc097          	auipc	ra,0xffffc
    80006478:	d88080e7          	jalr	-632(ra) # 800021fc <_ZN9Semaphore6signalEv>

}
    8000647c:	01813083          	ld	ra,24(sp)
    80006480:	01013403          	ld	s0,16(sp)
    80006484:	00813483          	ld	s1,8(sp)
    80006488:	00013903          	ld	s2,0(sp)
    8000648c:	02010113          	addi	sp,sp,32
    80006490:	00008067          	ret

0000000080006494 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006494:	fe010113          	addi	sp,sp,-32
    80006498:	00113c23          	sd	ra,24(sp)
    8000649c:	00813823          	sd	s0,16(sp)
    800064a0:	00913423          	sd	s1,8(sp)
    800064a4:	01213023          	sd	s2,0(sp)
    800064a8:	02010413          	addi	s0,sp,32
    800064ac:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800064b0:	02053503          	ld	a0,32(a0)
    800064b4:	ffffc097          	auipc	ra,0xffffc
    800064b8:	d10080e7          	jalr	-752(ra) # 800021c4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800064bc:	0284b503          	ld	a0,40(s1)
    800064c0:	ffffc097          	auipc	ra,0xffffc
    800064c4:	d04080e7          	jalr	-764(ra) # 800021c4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800064c8:	0084b703          	ld	a4,8(s1)
    800064cc:	0104a783          	lw	a5,16(s1)
    800064d0:	00279693          	slli	a3,a5,0x2
    800064d4:	00d70733          	add	a4,a4,a3
    800064d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800064dc:	0017879b          	addiw	a5,a5,1
    800064e0:	0004a703          	lw	a4,0(s1)
    800064e4:	02e7e7bb          	remw	a5,a5,a4
    800064e8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800064ec:	0284b503          	ld	a0,40(s1)
    800064f0:	ffffc097          	auipc	ra,0xffffc
    800064f4:	d0c080e7          	jalr	-756(ra) # 800021fc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800064f8:	0184b503          	ld	a0,24(s1)
    800064fc:	ffffc097          	auipc	ra,0xffffc
    80006500:	d00080e7          	jalr	-768(ra) # 800021fc <_ZN9Semaphore6signalEv>

    return ret;
}
    80006504:	00090513          	mv	a0,s2
    80006508:	01813083          	ld	ra,24(sp)
    8000650c:	01013403          	ld	s0,16(sp)
    80006510:	00813483          	ld	s1,8(sp)
    80006514:	00013903          	ld	s2,0(sp)
    80006518:	02010113          	addi	sp,sp,32
    8000651c:	00008067          	ret

0000000080006520 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006520:	fe010113          	addi	sp,sp,-32
    80006524:	00113c23          	sd	ra,24(sp)
    80006528:	00813823          	sd	s0,16(sp)
    8000652c:	00913423          	sd	s1,8(sp)
    80006530:	01213023          	sd	s2,0(sp)
    80006534:	02010413          	addi	s0,sp,32
    80006538:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000653c:	02853503          	ld	a0,40(a0)
    80006540:	ffffc097          	auipc	ra,0xffffc
    80006544:	c84080e7          	jalr	-892(ra) # 800021c4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006548:	0304b503          	ld	a0,48(s1)
    8000654c:	ffffc097          	auipc	ra,0xffffc
    80006550:	c78080e7          	jalr	-904(ra) # 800021c4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006554:	0144a783          	lw	a5,20(s1)
    80006558:	0104a903          	lw	s2,16(s1)
    8000655c:	0327ce63          	blt	a5,s2,80006598 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006560:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006564:	0304b503          	ld	a0,48(s1)
    80006568:	ffffc097          	auipc	ra,0xffffc
    8000656c:	c94080e7          	jalr	-876(ra) # 800021fc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006570:	0284b503          	ld	a0,40(s1)
    80006574:	ffffc097          	auipc	ra,0xffffc
    80006578:	c88080e7          	jalr	-888(ra) # 800021fc <_ZN9Semaphore6signalEv>

    return ret;
}
    8000657c:	00090513          	mv	a0,s2
    80006580:	01813083          	ld	ra,24(sp)
    80006584:	01013403          	ld	s0,16(sp)
    80006588:	00813483          	ld	s1,8(sp)
    8000658c:	00013903          	ld	s2,0(sp)
    80006590:	02010113          	addi	sp,sp,32
    80006594:	00008067          	ret
        ret = cap - head + tail;
    80006598:	0004a703          	lw	a4,0(s1)
    8000659c:	4127093b          	subw	s2,a4,s2
    800065a0:	00f9093b          	addw	s2,s2,a5
    800065a4:	fc1ff06f          	j	80006564 <_ZN9BufferCPP6getCntEv+0x44>

00000000800065a8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800065a8:	fe010113          	addi	sp,sp,-32
    800065ac:	00113c23          	sd	ra,24(sp)
    800065b0:	00813823          	sd	s0,16(sp)
    800065b4:	00913423          	sd	s1,8(sp)
    800065b8:	02010413          	addi	s0,sp,32
    800065bc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800065c0:	00a00513          	li	a0,10
    800065c4:	ffffc097          	auipc	ra,0xffffc
    800065c8:	d58080e7          	jalr	-680(ra) # 8000231c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800065cc:	00004517          	auipc	a0,0x4
    800065d0:	d4450513          	addi	a0,a0,-700 # 8000a310 <CONSOLE_STATUS+0x300>
    800065d4:	00000097          	auipc	ra,0x0
    800065d8:	a0c080e7          	jalr	-1524(ra) # 80005fe0 <_Z11printStringPKc>
    while (getCnt()) {
    800065dc:	00048513          	mv	a0,s1
    800065e0:	00000097          	auipc	ra,0x0
    800065e4:	f40080e7          	jalr	-192(ra) # 80006520 <_ZN9BufferCPP6getCntEv>
    800065e8:	02050c63          	beqz	a0,80006620 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800065ec:	0084b783          	ld	a5,8(s1)
    800065f0:	0104a703          	lw	a4,16(s1)
    800065f4:	00271713          	slli	a4,a4,0x2
    800065f8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800065fc:	0007c503          	lbu	a0,0(a5)
    80006600:	ffffc097          	auipc	ra,0xffffc
    80006604:	d1c080e7          	jalr	-740(ra) # 8000231c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006608:	0104a783          	lw	a5,16(s1)
    8000660c:	0017879b          	addiw	a5,a5,1
    80006610:	0004a703          	lw	a4,0(s1)
    80006614:	02e7e7bb          	remw	a5,a5,a4
    80006618:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000661c:	fc1ff06f          	j	800065dc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006620:	02100513          	li	a0,33
    80006624:	ffffc097          	auipc	ra,0xffffc
    80006628:	cf8080e7          	jalr	-776(ra) # 8000231c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000662c:	00a00513          	li	a0,10
    80006630:	ffffc097          	auipc	ra,0xffffc
    80006634:	cec080e7          	jalr	-788(ra) # 8000231c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006638:	0084b503          	ld	a0,8(s1)
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	c70080e7          	jalr	-912(ra) # 800012ac <_Z8mem_freePv>
    delete itemAvailable;
    80006644:	0204b503          	ld	a0,32(s1)
    80006648:	00050863          	beqz	a0,80006658 <_ZN9BufferCPPD1Ev+0xb0>
    8000664c:	00053783          	ld	a5,0(a0)
    80006650:	0087b783          	ld	a5,8(a5)
    80006654:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006658:	0184b503          	ld	a0,24(s1)
    8000665c:	00050863          	beqz	a0,8000666c <_ZN9BufferCPPD1Ev+0xc4>
    80006660:	00053783          	ld	a5,0(a0)
    80006664:	0087b783          	ld	a5,8(a5)
    80006668:	000780e7          	jalr	a5
    delete mutexTail;
    8000666c:	0304b503          	ld	a0,48(s1)
    80006670:	00050863          	beqz	a0,80006680 <_ZN9BufferCPPD1Ev+0xd8>
    80006674:	00053783          	ld	a5,0(a0)
    80006678:	0087b783          	ld	a5,8(a5)
    8000667c:	000780e7          	jalr	a5
    delete mutexHead;
    80006680:	0284b503          	ld	a0,40(s1)
    80006684:	00050863          	beqz	a0,80006694 <_ZN9BufferCPPD1Ev+0xec>
    80006688:	00053783          	ld	a5,0(a0)
    8000668c:	0087b783          	ld	a5,8(a5)
    80006690:	000780e7          	jalr	a5
}
    80006694:	01813083          	ld	ra,24(sp)
    80006698:	01013403          	ld	s0,16(sp)
    8000669c:	00813483          	ld	s1,8(sp)
    800066a0:	02010113          	addi	sp,sp,32
    800066a4:	00008067          	ret

00000000800066a8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800066a8:	fe010113          	addi	sp,sp,-32
    800066ac:	00113c23          	sd	ra,24(sp)
    800066b0:	00813823          	sd	s0,16(sp)
    800066b4:	00913423          	sd	s1,8(sp)
    800066b8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800066bc:	00004517          	auipc	a0,0x4
    800066c0:	c7c50513          	addi	a0,a0,-900 # 8000a338 <CONSOLE_STATUS+0x328>
    800066c4:	00000097          	auipc	ra,0x0
    800066c8:	91c080e7          	jalr	-1764(ra) # 80005fe0 <_Z11printStringPKc>
    int test = getc() - '0';
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	f54080e7          	jalr	-172(ra) # 80001620 <_Z4getcv>
    800066d4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	f48080e7          	jalr	-184(ra) # 80001620 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800066e0:	00700793          	li	a5,7
    800066e4:	1097e263          	bltu	a5,s1,800067e8 <_Z8userMainv+0x140>
    800066e8:	00249493          	slli	s1,s1,0x2
    800066ec:	00004717          	auipc	a4,0x4
    800066f0:	ea470713          	addi	a4,a4,-348 # 8000a590 <CONSOLE_STATUS+0x580>
    800066f4:	00e484b3          	add	s1,s1,a4
    800066f8:	0004a783          	lw	a5,0(s1)
    800066fc:	00e787b3          	add	a5,a5,a4
    80006700:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006704:	fffff097          	auipc	ra,0xfffff
    80006708:	f54080e7          	jalr	-172(ra) # 80005658 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000670c:	00004517          	auipc	a0,0x4
    80006710:	c4c50513          	addi	a0,a0,-948 # 8000a358 <CONSOLE_STATUS+0x348>
    80006714:	00000097          	auipc	ra,0x0
    80006718:	8cc080e7          	jalr	-1844(ra) # 80005fe0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	02010113          	addi	sp,sp,32
    8000672c:	00008067          	ret
            Threads_CPP_API_test();
    80006730:	ffffe097          	auipc	ra,0xffffe
    80006734:	ae8080e7          	jalr	-1304(ra) # 80004218 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80006738:	00004517          	auipc	a0,0x4
    8000673c:	c6050513          	addi	a0,a0,-928 # 8000a398 <CONSOLE_STATUS+0x388>
    80006740:	00000097          	auipc	ra,0x0
    80006744:	8a0080e7          	jalr	-1888(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    80006748:	fd5ff06f          	j	8000671c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000674c:	ffffd097          	auipc	ra,0xffffd
    80006750:	320080e7          	jalr	800(ra) # 80003a6c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006754:	00004517          	auipc	a0,0x4
    80006758:	c8450513          	addi	a0,a0,-892 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    8000675c:	00000097          	auipc	ra,0x0
    80006760:	884080e7          	jalr	-1916(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    80006764:	fb9ff06f          	j	8000671c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006768:	fffff097          	auipc	ra,0xfffff
    8000676c:	234080e7          	jalr	564(ra) # 8000599c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006770:	00004517          	auipc	a0,0x4
    80006774:	cb850513          	addi	a0,a0,-840 # 8000a428 <CONSOLE_STATUS+0x418>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	868080e7          	jalr	-1944(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    80006780:	f9dff06f          	j	8000671c <_Z8userMainv+0x74>
            testSleeping();
    80006784:	00000097          	auipc	ra,0x0
    80006788:	11c080e7          	jalr	284(ra) # 800068a0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000678c:	00004517          	auipc	a0,0x4
    80006790:	cf450513          	addi	a0,a0,-780 # 8000a480 <CONSOLE_STATUS+0x470>
    80006794:	00000097          	auipc	ra,0x0
    80006798:	84c080e7          	jalr	-1972(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    8000679c:	f81ff06f          	j	8000671c <_Z8userMainv+0x74>
            testConsumerProducer();
    800067a0:	ffffe097          	auipc	ra,0xffffe
    800067a4:	f38080e7          	jalr	-200(ra) # 800046d8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800067a8:	00004517          	auipc	a0,0x4
    800067ac:	d0850513          	addi	a0,a0,-760 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    800067b0:	00000097          	auipc	ra,0x0
    800067b4:	830080e7          	jalr	-2000(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    800067b8:	f65ff06f          	j	8000671c <_Z8userMainv+0x74>
            System_Mode_test();
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	658080e7          	jalr	1624(ra) # 80006e14 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800067c4:	00004517          	auipc	a0,0x4
    800067c8:	d2c50513          	addi	a0,a0,-724 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    800067cc:	00000097          	auipc	ra,0x0
    800067d0:	814080e7          	jalr	-2028(ra) # 80005fe0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800067d4:	00004517          	auipc	a0,0x4
    800067d8:	d3c50513          	addi	a0,a0,-708 # 8000a510 <CONSOLE_STATUS+0x500>
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	804080e7          	jalr	-2044(ra) # 80005fe0 <_Z11printStringPKc>
            break;
    800067e4:	f39ff06f          	j	8000671c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800067e8:	00004517          	auipc	a0,0x4
    800067ec:	d8050513          	addi	a0,a0,-640 # 8000a568 <CONSOLE_STATUS+0x558>
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	7f0080e7          	jalr	2032(ra) # 80005fe0 <_Z11printStringPKc>
    800067f8:	f25ff06f          	j	8000671c <_Z8userMainv+0x74>

00000000800067fc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800067fc:	fe010113          	addi	sp,sp,-32
    80006800:	00113c23          	sd	ra,24(sp)
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	01213023          	sd	s2,0(sp)
    80006810:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006814:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006818:	00600493          	li	s1,6
    while (--i > 0) {
    8000681c:	fff4849b          	addiw	s1,s1,-1
    80006820:	04905463          	blez	s1,80006868 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    80006824:	00004517          	auipc	a0,0x4
    80006828:	d8c50513          	addi	a0,a0,-628 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	7b4080e7          	jalr	1972(ra) # 80005fe0 <_Z11printStringPKc>
        printInt(sleep_time);
    80006834:	00000613          	li	a2,0
    80006838:	00a00593          	li	a1,10
    8000683c:	0009051b          	sext.w	a0,s2
    80006840:	00000097          	auipc	ra,0x0
    80006844:	950080e7          	jalr	-1712(ra) # 80006190 <_Z8printIntiii>
        printString(" !\n");
    80006848:	00004517          	auipc	a0,0x4
    8000684c:	d7050513          	addi	a0,a0,-656 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	790080e7          	jalr	1936(ra) # 80005fe0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006858:	00090513          	mv	a0,s2
    8000685c:	ffffb097          	auipc	ra,0xffffb
    80006860:	d78080e7          	jalr	-648(ra) # 800015d4 <_Z10time_sleepm>
    while (--i > 0) {
    80006864:	fb9ff06f          	j	8000681c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006868:	00a00793          	li	a5,10
    8000686c:	02f95933          	divu	s2,s2,a5
    80006870:	fff90913          	addi	s2,s2,-1
    80006874:	00006797          	auipc	a5,0x6
    80006878:	6ac78793          	addi	a5,a5,1708 # 8000cf20 <_ZL8finished>
    8000687c:	01278933          	add	s2,a5,s2
    80006880:	00100793          	li	a5,1
    80006884:	00f90023          	sb	a5,0(s2)
}
    80006888:	01813083          	ld	ra,24(sp)
    8000688c:	01013403          	ld	s0,16(sp)
    80006890:	00813483          	ld	s1,8(sp)
    80006894:	00013903          	ld	s2,0(sp)
    80006898:	02010113          	addi	sp,sp,32
    8000689c:	00008067          	ret

00000000800068a0 <_Z12testSleepingv>:

void testSleeping() {
    800068a0:	fc010113          	addi	sp,sp,-64
    800068a4:	02113c23          	sd	ra,56(sp)
    800068a8:	02813823          	sd	s0,48(sp)
    800068ac:	02913423          	sd	s1,40(sp)
    800068b0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800068b4:	00a00793          	li	a5,10
    800068b8:	fcf43823          	sd	a5,-48(s0)
    800068bc:	01400793          	li	a5,20
    800068c0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800068c4:	00000493          	li	s1,0
    800068c8:	02c0006f          	j	800068f4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800068cc:	00349793          	slli	a5,s1,0x3
    800068d0:	fd040613          	addi	a2,s0,-48
    800068d4:	00f60633          	add	a2,a2,a5
    800068d8:	00000597          	auipc	a1,0x0
    800068dc:	f2458593          	addi	a1,a1,-220 # 800067fc <_ZL9sleepyRunPv>
    800068e0:	fc040513          	addi	a0,s0,-64
    800068e4:	00f50533          	add	a0,a0,a5
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	a10080e7          	jalr	-1520(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800068f0:	0014849b          	addiw	s1,s1,1
    800068f4:	00100793          	li	a5,1
    800068f8:	fc97dae3          	bge	a5,s1,800068cc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800068fc:	00006797          	auipc	a5,0x6
    80006900:	6247c783          	lbu	a5,1572(a5) # 8000cf20 <_ZL8finished>
    80006904:	fe078ce3          	beqz	a5,800068fc <_Z12testSleepingv+0x5c>
    80006908:	00006797          	auipc	a5,0x6
    8000690c:	6197c783          	lbu	a5,1561(a5) # 8000cf21 <_ZL8finished+0x1>
    80006910:	fe0786e3          	beqz	a5,800068fc <_Z12testSleepingv+0x5c>
}
    80006914:	03813083          	ld	ra,56(sp)
    80006918:	03013403          	ld	s0,48(sp)
    8000691c:	02813483          	ld	s1,40(sp)
    80006920:	04010113          	addi	sp,sp,64
    80006924:	00008067          	ret

0000000080006928 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006928:	fe010113          	addi	sp,sp,-32
    8000692c:	00113c23          	sd	ra,24(sp)
    80006930:	00813823          	sd	s0,16(sp)
    80006934:	00913423          	sd	s1,8(sp)
    80006938:	01213023          	sd	s2,0(sp)
    8000693c:	02010413          	addi	s0,sp,32
    80006940:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006944:	00100793          	li	a5,1
    80006948:	02a7f863          	bgeu	a5,a0,80006978 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000694c:	00a00793          	li	a5,10
    80006950:	02f577b3          	remu	a5,a0,a5
    80006954:	02078e63          	beqz	a5,80006990 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006958:	fff48513          	addi	a0,s1,-1
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	fcc080e7          	jalr	-52(ra) # 80006928 <_ZL9fibonaccim>
    80006964:	00050913          	mv	s2,a0
    80006968:	ffe48513          	addi	a0,s1,-2
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	fbc080e7          	jalr	-68(ra) # 80006928 <_ZL9fibonaccim>
    80006974:	00a90533          	add	a0,s2,a0
}
    80006978:	01813083          	ld	ra,24(sp)
    8000697c:	01013403          	ld	s0,16(sp)
    80006980:	00813483          	ld	s1,8(sp)
    80006984:	00013903          	ld	s2,0(sp)
    80006988:	02010113          	addi	sp,sp,32
    8000698c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006990:	ffffb097          	auipc	ra,0xffffb
    80006994:	a3c080e7          	jalr	-1476(ra) # 800013cc <_Z15thread_dispatchv>
    80006998:	fc1ff06f          	j	80006958 <_ZL9fibonaccim+0x30>

000000008000699c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000699c:	fe010113          	addi	sp,sp,-32
    800069a0:	00113c23          	sd	ra,24(sp)
    800069a4:	00813823          	sd	s0,16(sp)
    800069a8:	00913423          	sd	s1,8(sp)
    800069ac:	01213023          	sd	s2,0(sp)
    800069b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800069b4:	00a00493          	li	s1,10
    800069b8:	0400006f          	j	800069f8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800069bc:	00004517          	auipc	a0,0x4
    800069c0:	8bc50513          	addi	a0,a0,-1860 # 8000a278 <CONSOLE_STATUS+0x268>
    800069c4:	fffff097          	auipc	ra,0xfffff
    800069c8:	61c080e7          	jalr	1564(ra) # 80005fe0 <_Z11printStringPKc>
    800069cc:	00000613          	li	a2,0
    800069d0:	00a00593          	li	a1,10
    800069d4:	00048513          	mv	a0,s1
    800069d8:	fffff097          	auipc	ra,0xfffff
    800069dc:	7b8080e7          	jalr	1976(ra) # 80006190 <_Z8printIntiii>
    800069e0:	00004517          	auipc	a0,0x4
    800069e4:	a9850513          	addi	a0,a0,-1384 # 8000a478 <CONSOLE_STATUS+0x468>
    800069e8:	fffff097          	auipc	ra,0xfffff
    800069ec:	5f8080e7          	jalr	1528(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800069f0:	0014849b          	addiw	s1,s1,1
    800069f4:	0ff4f493          	andi	s1,s1,255
    800069f8:	00c00793          	li	a5,12
    800069fc:	fc97f0e3          	bgeu	a5,s1,800069bc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006a00:	00004517          	auipc	a0,0x4
    80006a04:	88050513          	addi	a0,a0,-1920 # 8000a280 <CONSOLE_STATUS+0x270>
    80006a08:	fffff097          	auipc	ra,0xfffff
    80006a0c:	5d8080e7          	jalr	1496(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006a10:	00500313          	li	t1,5
    thread_dispatch();
    80006a14:	ffffb097          	auipc	ra,0xffffb
    80006a18:	9b8080e7          	jalr	-1608(ra) # 800013cc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006a1c:	01000513          	li	a0,16
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	f08080e7          	jalr	-248(ra) # 80006928 <_ZL9fibonaccim>
    80006a28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006a2c:	00004517          	auipc	a0,0x4
    80006a30:	86450513          	addi	a0,a0,-1948 # 8000a290 <CONSOLE_STATUS+0x280>
    80006a34:	fffff097          	auipc	ra,0xfffff
    80006a38:	5ac080e7          	jalr	1452(ra) # 80005fe0 <_Z11printStringPKc>
    80006a3c:	00000613          	li	a2,0
    80006a40:	00a00593          	li	a1,10
    80006a44:	0009051b          	sext.w	a0,s2
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	748080e7          	jalr	1864(ra) # 80006190 <_Z8printIntiii>
    80006a50:	00004517          	auipc	a0,0x4
    80006a54:	a2850513          	addi	a0,a0,-1496 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	588080e7          	jalr	1416(ra) # 80005fe0 <_Z11printStringPKc>
    80006a60:	0400006f          	j	80006aa0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a64:	00004517          	auipc	a0,0x4
    80006a68:	81450513          	addi	a0,a0,-2028 # 8000a278 <CONSOLE_STATUS+0x268>
    80006a6c:	fffff097          	auipc	ra,0xfffff
    80006a70:	574080e7          	jalr	1396(ra) # 80005fe0 <_Z11printStringPKc>
    80006a74:	00000613          	li	a2,0
    80006a78:	00a00593          	li	a1,10
    80006a7c:	00048513          	mv	a0,s1
    80006a80:	fffff097          	auipc	ra,0xfffff
    80006a84:	710080e7          	jalr	1808(ra) # 80006190 <_Z8printIntiii>
    80006a88:	00004517          	auipc	a0,0x4
    80006a8c:	9f050513          	addi	a0,a0,-1552 # 8000a478 <CONSOLE_STATUS+0x468>
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	550080e7          	jalr	1360(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006a98:	0014849b          	addiw	s1,s1,1
    80006a9c:	0ff4f493          	andi	s1,s1,255
    80006aa0:	00f00793          	li	a5,15
    80006aa4:	fc97f0e3          	bgeu	a5,s1,80006a64 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006aa8:	00003517          	auipc	a0,0x3
    80006aac:	7f850513          	addi	a0,a0,2040 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006ab0:	fffff097          	auipc	ra,0xfffff
    80006ab4:	530080e7          	jalr	1328(ra) # 80005fe0 <_Z11printStringPKc>
    finishedD = true;
    80006ab8:	00100793          	li	a5,1
    80006abc:	00006717          	auipc	a4,0x6
    80006ac0:	46f70323          	sb	a5,1126(a4) # 8000cf22 <_ZL9finishedD>
    thread_dispatch();
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	908080e7          	jalr	-1784(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006acc:	01813083          	ld	ra,24(sp)
    80006ad0:	01013403          	ld	s0,16(sp)
    80006ad4:	00813483          	ld	s1,8(sp)
    80006ad8:	00013903          	ld	s2,0(sp)
    80006adc:	02010113          	addi	sp,sp,32
    80006ae0:	00008067          	ret

0000000080006ae4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006ae4:	fe010113          	addi	sp,sp,-32
    80006ae8:	00113c23          	sd	ra,24(sp)
    80006aec:	00813823          	sd	s0,16(sp)
    80006af0:	00913423          	sd	s1,8(sp)
    80006af4:	01213023          	sd	s2,0(sp)
    80006af8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006afc:	00000493          	li	s1,0
    80006b00:	0400006f          	j	80006b40 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006b04:	00003517          	auipc	a0,0x3
    80006b08:	74450513          	addi	a0,a0,1860 # 8000a248 <CONSOLE_STATUS+0x238>
    80006b0c:	fffff097          	auipc	ra,0xfffff
    80006b10:	4d4080e7          	jalr	1236(ra) # 80005fe0 <_Z11printStringPKc>
    80006b14:	00000613          	li	a2,0
    80006b18:	00a00593          	li	a1,10
    80006b1c:	00048513          	mv	a0,s1
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	670080e7          	jalr	1648(ra) # 80006190 <_Z8printIntiii>
    80006b28:	00004517          	auipc	a0,0x4
    80006b2c:	95050513          	addi	a0,a0,-1712 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	4b0080e7          	jalr	1200(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006b38:	0014849b          	addiw	s1,s1,1
    80006b3c:	0ff4f493          	andi	s1,s1,255
    80006b40:	00200793          	li	a5,2
    80006b44:	fc97f0e3          	bgeu	a5,s1,80006b04 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006b48:	00003517          	auipc	a0,0x3
    80006b4c:	70850513          	addi	a0,a0,1800 # 8000a250 <CONSOLE_STATUS+0x240>
    80006b50:	fffff097          	auipc	ra,0xfffff
    80006b54:	490080e7          	jalr	1168(ra) # 80005fe0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006b58:	00700313          	li	t1,7
    thread_dispatch();
    80006b5c:	ffffb097          	auipc	ra,0xffffb
    80006b60:	870080e7          	jalr	-1936(ra) # 800013cc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006b64:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006b68:	00003517          	auipc	a0,0x3
    80006b6c:	6f850513          	addi	a0,a0,1784 # 8000a260 <CONSOLE_STATUS+0x250>
    80006b70:	fffff097          	auipc	ra,0xfffff
    80006b74:	470080e7          	jalr	1136(ra) # 80005fe0 <_Z11printStringPKc>
    80006b78:	00000613          	li	a2,0
    80006b7c:	00a00593          	li	a1,10
    80006b80:	0009051b          	sext.w	a0,s2
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	60c080e7          	jalr	1548(ra) # 80006190 <_Z8printIntiii>
    80006b8c:	00004517          	auipc	a0,0x4
    80006b90:	8ec50513          	addi	a0,a0,-1812 # 8000a478 <CONSOLE_STATUS+0x468>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	44c080e7          	jalr	1100(ra) # 80005fe0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006b9c:	00c00513          	li	a0,12
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	d88080e7          	jalr	-632(ra) # 80006928 <_ZL9fibonaccim>
    80006ba8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006bac:	00003517          	auipc	a0,0x3
    80006bb0:	6bc50513          	addi	a0,a0,1724 # 8000a268 <CONSOLE_STATUS+0x258>
    80006bb4:	fffff097          	auipc	ra,0xfffff
    80006bb8:	42c080e7          	jalr	1068(ra) # 80005fe0 <_Z11printStringPKc>
    80006bbc:	00000613          	li	a2,0
    80006bc0:	00a00593          	li	a1,10
    80006bc4:	0009051b          	sext.w	a0,s2
    80006bc8:	fffff097          	auipc	ra,0xfffff
    80006bcc:	5c8080e7          	jalr	1480(ra) # 80006190 <_Z8printIntiii>
    80006bd0:	00004517          	auipc	a0,0x4
    80006bd4:	8a850513          	addi	a0,a0,-1880 # 8000a478 <CONSOLE_STATUS+0x468>
    80006bd8:	fffff097          	auipc	ra,0xfffff
    80006bdc:	408080e7          	jalr	1032(ra) # 80005fe0 <_Z11printStringPKc>
    80006be0:	0400006f          	j	80006c20 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	66450513          	addi	a0,a0,1636 # 8000a248 <CONSOLE_STATUS+0x238>
    80006bec:	fffff097          	auipc	ra,0xfffff
    80006bf0:	3f4080e7          	jalr	1012(ra) # 80005fe0 <_Z11printStringPKc>
    80006bf4:	00000613          	li	a2,0
    80006bf8:	00a00593          	li	a1,10
    80006bfc:	00048513          	mv	a0,s1
    80006c00:	fffff097          	auipc	ra,0xfffff
    80006c04:	590080e7          	jalr	1424(ra) # 80006190 <_Z8printIntiii>
    80006c08:	00004517          	auipc	a0,0x4
    80006c0c:	87050513          	addi	a0,a0,-1936 # 8000a478 <CONSOLE_STATUS+0x468>
    80006c10:	fffff097          	auipc	ra,0xfffff
    80006c14:	3d0080e7          	jalr	976(ra) # 80005fe0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006c18:	0014849b          	addiw	s1,s1,1
    80006c1c:	0ff4f493          	andi	s1,s1,255
    80006c20:	00500793          	li	a5,5
    80006c24:	fc97f0e3          	bgeu	a5,s1,80006be4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006c28:	00003517          	auipc	a0,0x3
    80006c2c:	5f850513          	addi	a0,a0,1528 # 8000a220 <CONSOLE_STATUS+0x210>
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	3b0080e7          	jalr	944(ra) # 80005fe0 <_Z11printStringPKc>
    finishedC = true;
    80006c38:	00100793          	li	a5,1
    80006c3c:	00006717          	auipc	a4,0x6
    80006c40:	2ef703a3          	sb	a5,743(a4) # 8000cf23 <_ZL9finishedC>
    thread_dispatch();
    80006c44:	ffffa097          	auipc	ra,0xffffa
    80006c48:	788080e7          	jalr	1928(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006c4c:	01813083          	ld	ra,24(sp)
    80006c50:	01013403          	ld	s0,16(sp)
    80006c54:	00813483          	ld	s1,8(sp)
    80006c58:	00013903          	ld	s2,0(sp)
    80006c5c:	02010113          	addi	sp,sp,32
    80006c60:	00008067          	ret

0000000080006c64 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006c64:	fe010113          	addi	sp,sp,-32
    80006c68:	00113c23          	sd	ra,24(sp)
    80006c6c:	00813823          	sd	s0,16(sp)
    80006c70:	00913423          	sd	s1,8(sp)
    80006c74:	01213023          	sd	s2,0(sp)
    80006c78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006c7c:	00000913          	li	s2,0
    80006c80:	0400006f          	j	80006cc0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	748080e7          	jalr	1864(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c8c:	00148493          	addi	s1,s1,1
    80006c90:	000027b7          	lui	a5,0x2
    80006c94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c98:	0097ee63          	bltu	a5,s1,80006cb4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c9c:	00000713          	li	a4,0
    80006ca0:	000077b7          	lui	a5,0x7
    80006ca4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ca8:	fce7eee3          	bltu	a5,a4,80006c84 <_ZL11workerBodyBPv+0x20>
    80006cac:	00170713          	addi	a4,a4,1
    80006cb0:	ff1ff06f          	j	80006ca0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006cb4:	00a00793          	li	a5,10
    80006cb8:	04f90663          	beq	s2,a5,80006d04 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006cbc:	00190913          	addi	s2,s2,1
    80006cc0:	00f00793          	li	a5,15
    80006cc4:	0527e463          	bltu	a5,s2,80006d0c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006cc8:	00003517          	auipc	a0,0x3
    80006ccc:	56850513          	addi	a0,a0,1384 # 8000a230 <CONSOLE_STATUS+0x220>
    80006cd0:	fffff097          	auipc	ra,0xfffff
    80006cd4:	310080e7          	jalr	784(ra) # 80005fe0 <_Z11printStringPKc>
    80006cd8:	00000613          	li	a2,0
    80006cdc:	00a00593          	li	a1,10
    80006ce0:	0009051b          	sext.w	a0,s2
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	4ac080e7          	jalr	1196(ra) # 80006190 <_Z8printIntiii>
    80006cec:	00003517          	auipc	a0,0x3
    80006cf0:	78c50513          	addi	a0,a0,1932 # 8000a478 <CONSOLE_STATUS+0x468>
    80006cf4:	fffff097          	auipc	ra,0xfffff
    80006cf8:	2ec080e7          	jalr	748(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006cfc:	00000493          	li	s1,0
    80006d00:	f91ff06f          	j	80006c90 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006d04:	14102ff3          	csrr	t6,sepc
    80006d08:	fb5ff06f          	j	80006cbc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006d0c:	00003517          	auipc	a0,0x3
    80006d10:	52c50513          	addi	a0,a0,1324 # 8000a238 <CONSOLE_STATUS+0x228>
    80006d14:	fffff097          	auipc	ra,0xfffff
    80006d18:	2cc080e7          	jalr	716(ra) # 80005fe0 <_Z11printStringPKc>
    finishedB = true;
    80006d1c:	00100793          	li	a5,1
    80006d20:	00006717          	auipc	a4,0x6
    80006d24:	20f70223          	sb	a5,516(a4) # 8000cf24 <_ZL9finishedB>
    thread_dispatch();
    80006d28:	ffffa097          	auipc	ra,0xffffa
    80006d2c:	6a4080e7          	jalr	1700(ra) # 800013cc <_Z15thread_dispatchv>
}
    80006d30:	01813083          	ld	ra,24(sp)
    80006d34:	01013403          	ld	s0,16(sp)
    80006d38:	00813483          	ld	s1,8(sp)
    80006d3c:	00013903          	ld	s2,0(sp)
    80006d40:	02010113          	addi	sp,sp,32
    80006d44:	00008067          	ret

0000000080006d48 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006d48:	fe010113          	addi	sp,sp,-32
    80006d4c:	00113c23          	sd	ra,24(sp)
    80006d50:	00813823          	sd	s0,16(sp)
    80006d54:	00913423          	sd	s1,8(sp)
    80006d58:	01213023          	sd	s2,0(sp)
    80006d5c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006d60:	00000913          	li	s2,0
    80006d64:	0380006f          	j	80006d9c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006d68:	ffffa097          	auipc	ra,0xffffa
    80006d6c:	664080e7          	jalr	1636(ra) # 800013cc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d70:	00148493          	addi	s1,s1,1
    80006d74:	000027b7          	lui	a5,0x2
    80006d78:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d7c:	0097ee63          	bltu	a5,s1,80006d98 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d80:	00000713          	li	a4,0
    80006d84:	000077b7          	lui	a5,0x7
    80006d88:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d8c:	fce7eee3          	bltu	a5,a4,80006d68 <_ZL11workerBodyAPv+0x20>
    80006d90:	00170713          	addi	a4,a4,1
    80006d94:	ff1ff06f          	j	80006d84 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006d98:	00190913          	addi	s2,s2,1
    80006d9c:	00900793          	li	a5,9
    80006da0:	0527e063          	bltu	a5,s2,80006de0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006da4:	00003517          	auipc	a0,0x3
    80006da8:	47450513          	addi	a0,a0,1140 # 8000a218 <CONSOLE_STATUS+0x208>
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	234080e7          	jalr	564(ra) # 80005fe0 <_Z11printStringPKc>
    80006db4:	00000613          	li	a2,0
    80006db8:	00a00593          	li	a1,10
    80006dbc:	0009051b          	sext.w	a0,s2
    80006dc0:	fffff097          	auipc	ra,0xfffff
    80006dc4:	3d0080e7          	jalr	976(ra) # 80006190 <_Z8printIntiii>
    80006dc8:	00003517          	auipc	a0,0x3
    80006dcc:	6b050513          	addi	a0,a0,1712 # 8000a478 <CONSOLE_STATUS+0x468>
    80006dd0:	fffff097          	auipc	ra,0xfffff
    80006dd4:	210080e7          	jalr	528(ra) # 80005fe0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006dd8:	00000493          	li	s1,0
    80006ddc:	f99ff06f          	j	80006d74 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006de0:	00003517          	auipc	a0,0x3
    80006de4:	44050513          	addi	a0,a0,1088 # 8000a220 <CONSOLE_STATUS+0x210>
    80006de8:	fffff097          	auipc	ra,0xfffff
    80006dec:	1f8080e7          	jalr	504(ra) # 80005fe0 <_Z11printStringPKc>
    finishedA = true;
    80006df0:	00100793          	li	a5,1
    80006df4:	00006717          	auipc	a4,0x6
    80006df8:	12f708a3          	sb	a5,305(a4) # 8000cf25 <_ZL9finishedA>
}
    80006dfc:	01813083          	ld	ra,24(sp)
    80006e00:	01013403          	ld	s0,16(sp)
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	00013903          	ld	s2,0(sp)
    80006e0c:	02010113          	addi	sp,sp,32
    80006e10:	00008067          	ret

0000000080006e14 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006e14:	fd010113          	addi	sp,sp,-48
    80006e18:	02113423          	sd	ra,40(sp)
    80006e1c:	02813023          	sd	s0,32(sp)
    80006e20:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006e24:	00000613          	li	a2,0
    80006e28:	00000597          	auipc	a1,0x0
    80006e2c:	f2058593          	addi	a1,a1,-224 # 80006d48 <_ZL11workerBodyAPv>
    80006e30:	fd040513          	addi	a0,s0,-48
    80006e34:	ffffa097          	auipc	ra,0xffffa
    80006e38:	4c4080e7          	jalr	1220(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006e3c:	00003517          	auipc	a0,0x3
    80006e40:	47450513          	addi	a0,a0,1140 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006e44:	fffff097          	auipc	ra,0xfffff
    80006e48:	19c080e7          	jalr	412(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006e4c:	00000613          	li	a2,0
    80006e50:	00000597          	auipc	a1,0x0
    80006e54:	e1458593          	addi	a1,a1,-492 # 80006c64 <_ZL11workerBodyBPv>
    80006e58:	fd840513          	addi	a0,s0,-40
    80006e5c:	ffffa097          	auipc	ra,0xffffa
    80006e60:	49c080e7          	jalr	1180(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006e64:	00003517          	auipc	a0,0x3
    80006e68:	46450513          	addi	a0,a0,1124 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006e6c:	fffff097          	auipc	ra,0xfffff
    80006e70:	174080e7          	jalr	372(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006e74:	00000613          	li	a2,0
    80006e78:	00000597          	auipc	a1,0x0
    80006e7c:	c6c58593          	addi	a1,a1,-916 # 80006ae4 <_ZL11workerBodyCPv>
    80006e80:	fe040513          	addi	a0,s0,-32
    80006e84:	ffffa097          	auipc	ra,0xffffa
    80006e88:	474080e7          	jalr	1140(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006e8c:	00003517          	auipc	a0,0x3
    80006e90:	45450513          	addi	a0,a0,1108 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006e94:	fffff097          	auipc	ra,0xfffff
    80006e98:	14c080e7          	jalr	332(ra) # 80005fe0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006e9c:	00000613          	li	a2,0
    80006ea0:	00000597          	auipc	a1,0x0
    80006ea4:	afc58593          	addi	a1,a1,-1284 # 8000699c <_ZL11workerBodyDPv>
    80006ea8:	fe840513          	addi	a0,s0,-24
    80006eac:	ffffa097          	auipc	ra,0xffffa
    80006eb0:	44c080e7          	jalr	1100(ra) # 800012f8 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006eb4:	00003517          	auipc	a0,0x3
    80006eb8:	44450513          	addi	a0,a0,1092 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006ebc:	fffff097          	auipc	ra,0xfffff
    80006ec0:	124080e7          	jalr	292(ra) # 80005fe0 <_Z11printStringPKc>
    80006ec4:	00c0006f          	j	80006ed0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006ec8:	ffffa097          	auipc	ra,0xffffa
    80006ecc:	504080e7          	jalr	1284(ra) # 800013cc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006ed0:	00006797          	auipc	a5,0x6
    80006ed4:	0557c783          	lbu	a5,85(a5) # 8000cf25 <_ZL9finishedA>
    80006ed8:	fe0788e3          	beqz	a5,80006ec8 <_Z16System_Mode_testv+0xb4>
    80006edc:	00006797          	auipc	a5,0x6
    80006ee0:	0487c783          	lbu	a5,72(a5) # 8000cf24 <_ZL9finishedB>
    80006ee4:	fe0782e3          	beqz	a5,80006ec8 <_Z16System_Mode_testv+0xb4>
    80006ee8:	00006797          	auipc	a5,0x6
    80006eec:	03b7c783          	lbu	a5,59(a5) # 8000cf23 <_ZL9finishedC>
    80006ef0:	fc078ce3          	beqz	a5,80006ec8 <_Z16System_Mode_testv+0xb4>
    80006ef4:	00006797          	auipc	a5,0x6
    80006ef8:	02e7c783          	lbu	a5,46(a5) # 8000cf22 <_ZL9finishedD>
    80006efc:	fc0786e3          	beqz	a5,80006ec8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006f00:	02813083          	ld	ra,40(sp)
    80006f04:	02013403          	ld	s0,32(sp)
    80006f08:	03010113          	addi	sp,sp,48
    80006f0c:	00008067          	ret

0000000080006f10 <start>:
    80006f10:	ff010113          	addi	sp,sp,-16
    80006f14:	00813423          	sd	s0,8(sp)
    80006f18:	01010413          	addi	s0,sp,16
    80006f1c:	300027f3          	csrr	a5,mstatus
    80006f20:	ffffe737          	lui	a4,0xffffe
    80006f24:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff066f>
    80006f28:	00e7f7b3          	and	a5,a5,a4
    80006f2c:	00001737          	lui	a4,0x1
    80006f30:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f34:	00e7e7b3          	or	a5,a5,a4
    80006f38:	30079073          	csrw	mstatus,a5
    80006f3c:	00000797          	auipc	a5,0x0
    80006f40:	16078793          	addi	a5,a5,352 # 8000709c <system_main>
    80006f44:	34179073          	csrw	mepc,a5
    80006f48:	00000793          	li	a5,0
    80006f4c:	18079073          	csrw	satp,a5
    80006f50:	000107b7          	lui	a5,0x10
    80006f54:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f58:	30279073          	csrw	medeleg,a5
    80006f5c:	30379073          	csrw	mideleg,a5
    80006f60:	104027f3          	csrr	a5,sie
    80006f64:	2227e793          	ori	a5,a5,546
    80006f68:	10479073          	csrw	sie,a5
    80006f6c:	fff00793          	li	a5,-1
    80006f70:	00a7d793          	srli	a5,a5,0xa
    80006f74:	3b079073          	csrw	pmpaddr0,a5
    80006f78:	00f00793          	li	a5,15
    80006f7c:	3a079073          	csrw	pmpcfg0,a5
    80006f80:	f14027f3          	csrr	a5,mhartid
    80006f84:	0200c737          	lui	a4,0x200c
    80006f88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f8c:	0007869b          	sext.w	a3,a5
    80006f90:	00269713          	slli	a4,a3,0x2
    80006f94:	000f4637          	lui	a2,0xf4
    80006f98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f9c:	00d70733          	add	a4,a4,a3
    80006fa0:	0037979b          	slliw	a5,a5,0x3
    80006fa4:	020046b7          	lui	a3,0x2004
    80006fa8:	00d787b3          	add	a5,a5,a3
    80006fac:	00c585b3          	add	a1,a1,a2
    80006fb0:	00371693          	slli	a3,a4,0x3
    80006fb4:	00006717          	auipc	a4,0x6
    80006fb8:	f7c70713          	addi	a4,a4,-132 # 8000cf30 <timer_scratch>
    80006fbc:	00b7b023          	sd	a1,0(a5)
    80006fc0:	00d70733          	add	a4,a4,a3
    80006fc4:	00f73c23          	sd	a5,24(a4)
    80006fc8:	02c73023          	sd	a2,32(a4)
    80006fcc:	34071073          	csrw	mscratch,a4
    80006fd0:	00000797          	auipc	a5,0x0
    80006fd4:	6e078793          	addi	a5,a5,1760 # 800076b0 <timervec>
    80006fd8:	30579073          	csrw	mtvec,a5
    80006fdc:	300027f3          	csrr	a5,mstatus
    80006fe0:	0087e793          	ori	a5,a5,8
    80006fe4:	30079073          	csrw	mstatus,a5
    80006fe8:	304027f3          	csrr	a5,mie
    80006fec:	0807e793          	ori	a5,a5,128
    80006ff0:	30479073          	csrw	mie,a5
    80006ff4:	f14027f3          	csrr	a5,mhartid
    80006ff8:	0007879b          	sext.w	a5,a5
    80006ffc:	00078213          	mv	tp,a5
    80007000:	30200073          	mret
    80007004:	00813403          	ld	s0,8(sp)
    80007008:	01010113          	addi	sp,sp,16
    8000700c:	00008067          	ret

0000000080007010 <timerinit>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813423          	sd	s0,8(sp)
    80007018:	01010413          	addi	s0,sp,16
    8000701c:	f14027f3          	csrr	a5,mhartid
    80007020:	0200c737          	lui	a4,0x200c
    80007024:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007028:	0007869b          	sext.w	a3,a5
    8000702c:	00269713          	slli	a4,a3,0x2
    80007030:	000f4637          	lui	a2,0xf4
    80007034:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007038:	00d70733          	add	a4,a4,a3
    8000703c:	0037979b          	slliw	a5,a5,0x3
    80007040:	020046b7          	lui	a3,0x2004
    80007044:	00d787b3          	add	a5,a5,a3
    80007048:	00c585b3          	add	a1,a1,a2
    8000704c:	00371693          	slli	a3,a4,0x3
    80007050:	00006717          	auipc	a4,0x6
    80007054:	ee070713          	addi	a4,a4,-288 # 8000cf30 <timer_scratch>
    80007058:	00b7b023          	sd	a1,0(a5)
    8000705c:	00d70733          	add	a4,a4,a3
    80007060:	00f73c23          	sd	a5,24(a4)
    80007064:	02c73023          	sd	a2,32(a4)
    80007068:	34071073          	csrw	mscratch,a4
    8000706c:	00000797          	auipc	a5,0x0
    80007070:	64478793          	addi	a5,a5,1604 # 800076b0 <timervec>
    80007074:	30579073          	csrw	mtvec,a5
    80007078:	300027f3          	csrr	a5,mstatus
    8000707c:	0087e793          	ori	a5,a5,8
    80007080:	30079073          	csrw	mstatus,a5
    80007084:	304027f3          	csrr	a5,mie
    80007088:	0807e793          	ori	a5,a5,128
    8000708c:	30479073          	csrw	mie,a5
    80007090:	00813403          	ld	s0,8(sp)
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00008067          	ret

000000008000709c <system_main>:
    8000709c:	fe010113          	addi	sp,sp,-32
    800070a0:	00813823          	sd	s0,16(sp)
    800070a4:	00913423          	sd	s1,8(sp)
    800070a8:	00113c23          	sd	ra,24(sp)
    800070ac:	02010413          	addi	s0,sp,32
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	0c4080e7          	jalr	196(ra) # 80007174 <cpuid>
    800070b8:	00006497          	auipc	s1,0x6
    800070bc:	d8848493          	addi	s1,s1,-632 # 8000ce40 <started>
    800070c0:	02050263          	beqz	a0,800070e4 <system_main+0x48>
    800070c4:	0004a783          	lw	a5,0(s1)
    800070c8:	0007879b          	sext.w	a5,a5
    800070cc:	fe078ce3          	beqz	a5,800070c4 <system_main+0x28>
    800070d0:	0ff0000f          	fence
    800070d4:	00003517          	auipc	a0,0x3
    800070d8:	51c50513          	addi	a0,a0,1308 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	a70080e7          	jalr	-1424(ra) # 80007b4c <panic>
    800070e4:	00001097          	auipc	ra,0x1
    800070e8:	9c4080e7          	jalr	-1596(ra) # 80007aa8 <consoleinit>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	150080e7          	jalr	336(ra) # 8000823c <printfinit>
    800070f4:	00003517          	auipc	a0,0x3
    800070f8:	38450513          	addi	a0,a0,900 # 8000a478 <CONSOLE_STATUS+0x468>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	aac080e7          	jalr	-1364(ra) # 80007ba8 <__printf>
    80007104:	00003517          	auipc	a0,0x3
    80007108:	4bc50513          	addi	a0,a0,1212 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    8000710c:	00001097          	auipc	ra,0x1
    80007110:	a9c080e7          	jalr	-1380(ra) # 80007ba8 <__printf>
    80007114:	00003517          	auipc	a0,0x3
    80007118:	36450513          	addi	a0,a0,868 # 8000a478 <CONSOLE_STATUS+0x468>
    8000711c:	00001097          	auipc	ra,0x1
    80007120:	a8c080e7          	jalr	-1396(ra) # 80007ba8 <__printf>
    80007124:	00001097          	auipc	ra,0x1
    80007128:	4a4080e7          	jalr	1188(ra) # 800085c8 <kinit>
    8000712c:	00000097          	auipc	ra,0x0
    80007130:	148080e7          	jalr	328(ra) # 80007274 <trapinit>
    80007134:	00000097          	auipc	ra,0x0
    80007138:	16c080e7          	jalr	364(ra) # 800072a0 <trapinithart>
    8000713c:	00000097          	auipc	ra,0x0
    80007140:	5b4080e7          	jalr	1460(ra) # 800076f0 <plicinit>
    80007144:	00000097          	auipc	ra,0x0
    80007148:	5d4080e7          	jalr	1492(ra) # 80007718 <plicinithart>
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	078080e7          	jalr	120(ra) # 800071c4 <userinit>
    80007154:	0ff0000f          	fence
    80007158:	00100793          	li	a5,1
    8000715c:	00003517          	auipc	a0,0x3
    80007160:	47c50513          	addi	a0,a0,1148 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80007164:	00f4a023          	sw	a5,0(s1)
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	a40080e7          	jalr	-1472(ra) # 80007ba8 <__printf>
    80007170:	0000006f          	j	80007170 <system_main+0xd4>

0000000080007174 <cpuid>:
    80007174:	ff010113          	addi	sp,sp,-16
    80007178:	00813423          	sd	s0,8(sp)
    8000717c:	01010413          	addi	s0,sp,16
    80007180:	00020513          	mv	a0,tp
    80007184:	00813403          	ld	s0,8(sp)
    80007188:	0005051b          	sext.w	a0,a0
    8000718c:	01010113          	addi	sp,sp,16
    80007190:	00008067          	ret

0000000080007194 <mycpu>:
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00813423          	sd	s0,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	00020793          	mv	a5,tp
    800071a4:	00813403          	ld	s0,8(sp)
    800071a8:	0007879b          	sext.w	a5,a5
    800071ac:	00779793          	slli	a5,a5,0x7
    800071b0:	00007517          	auipc	a0,0x7
    800071b4:	db050513          	addi	a0,a0,-592 # 8000df60 <cpus>
    800071b8:	00f50533          	add	a0,a0,a5
    800071bc:	01010113          	addi	sp,sp,16
    800071c0:	00008067          	ret

00000000800071c4 <userinit>:
    800071c4:	ff010113          	addi	sp,sp,-16
    800071c8:	00813423          	sd	s0,8(sp)
    800071cc:	01010413          	addi	s0,sp,16
    800071d0:	00813403          	ld	s0,8(sp)
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	ffffb317          	auipc	t1,0xffffb
    800071dc:	af030067          	jr	-1296(t1) # 80001cc8 <main>

00000000800071e0 <either_copyout>:
    800071e0:	ff010113          	addi	sp,sp,-16
    800071e4:	00813023          	sd	s0,0(sp)
    800071e8:	00113423          	sd	ra,8(sp)
    800071ec:	01010413          	addi	s0,sp,16
    800071f0:	02051663          	bnez	a0,8000721c <either_copyout+0x3c>
    800071f4:	00058513          	mv	a0,a1
    800071f8:	00060593          	mv	a1,a2
    800071fc:	0006861b          	sext.w	a2,a3
    80007200:	00002097          	auipc	ra,0x2
    80007204:	c54080e7          	jalr	-940(ra) # 80008e54 <__memmove>
    80007208:	00813083          	ld	ra,8(sp)
    8000720c:	00013403          	ld	s0,0(sp)
    80007210:	00000513          	li	a0,0
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00008067          	ret
    8000721c:	00003517          	auipc	a0,0x3
    80007220:	3fc50513          	addi	a0,a0,1020 # 8000a618 <CONSOLE_STATUS+0x608>
    80007224:	00001097          	auipc	ra,0x1
    80007228:	928080e7          	jalr	-1752(ra) # 80007b4c <panic>

000000008000722c <either_copyin>:
    8000722c:	ff010113          	addi	sp,sp,-16
    80007230:	00813023          	sd	s0,0(sp)
    80007234:	00113423          	sd	ra,8(sp)
    80007238:	01010413          	addi	s0,sp,16
    8000723c:	02059463          	bnez	a1,80007264 <either_copyin+0x38>
    80007240:	00060593          	mv	a1,a2
    80007244:	0006861b          	sext.w	a2,a3
    80007248:	00002097          	auipc	ra,0x2
    8000724c:	c0c080e7          	jalr	-1012(ra) # 80008e54 <__memmove>
    80007250:	00813083          	ld	ra,8(sp)
    80007254:	00013403          	ld	s0,0(sp)
    80007258:	00000513          	li	a0,0
    8000725c:	01010113          	addi	sp,sp,16
    80007260:	00008067          	ret
    80007264:	00003517          	auipc	a0,0x3
    80007268:	3dc50513          	addi	a0,a0,988 # 8000a640 <CONSOLE_STATUS+0x630>
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	8e0080e7          	jalr	-1824(ra) # 80007b4c <panic>

0000000080007274 <trapinit>:
    80007274:	ff010113          	addi	sp,sp,-16
    80007278:	00813423          	sd	s0,8(sp)
    8000727c:	01010413          	addi	s0,sp,16
    80007280:	00813403          	ld	s0,8(sp)
    80007284:	00003597          	auipc	a1,0x3
    80007288:	3e458593          	addi	a1,a1,996 # 8000a668 <CONSOLE_STATUS+0x658>
    8000728c:	00007517          	auipc	a0,0x7
    80007290:	d5450513          	addi	a0,a0,-684 # 8000dfe0 <tickslock>
    80007294:	01010113          	addi	sp,sp,16
    80007298:	00001317          	auipc	t1,0x1
    8000729c:	5c030067          	jr	1472(t1) # 80008858 <initlock>

00000000800072a0 <trapinithart>:
    800072a0:	ff010113          	addi	sp,sp,-16
    800072a4:	00813423          	sd	s0,8(sp)
    800072a8:	01010413          	addi	s0,sp,16
    800072ac:	00000797          	auipc	a5,0x0
    800072b0:	2f478793          	addi	a5,a5,756 # 800075a0 <kernelvec>
    800072b4:	10579073          	csrw	stvec,a5
    800072b8:	00813403          	ld	s0,8(sp)
    800072bc:	01010113          	addi	sp,sp,16
    800072c0:	00008067          	ret

00000000800072c4 <usertrap>:
    800072c4:	ff010113          	addi	sp,sp,-16
    800072c8:	00813423          	sd	s0,8(sp)
    800072cc:	01010413          	addi	s0,sp,16
    800072d0:	00813403          	ld	s0,8(sp)
    800072d4:	01010113          	addi	sp,sp,16
    800072d8:	00008067          	ret

00000000800072dc <usertrapret>:
    800072dc:	ff010113          	addi	sp,sp,-16
    800072e0:	00813423          	sd	s0,8(sp)
    800072e4:	01010413          	addi	s0,sp,16
    800072e8:	00813403          	ld	s0,8(sp)
    800072ec:	01010113          	addi	sp,sp,16
    800072f0:	00008067          	ret

00000000800072f4 <kerneltrap>:
    800072f4:	fe010113          	addi	sp,sp,-32
    800072f8:	00813823          	sd	s0,16(sp)
    800072fc:	00113c23          	sd	ra,24(sp)
    80007300:	00913423          	sd	s1,8(sp)
    80007304:	02010413          	addi	s0,sp,32
    80007308:	142025f3          	csrr	a1,scause
    8000730c:	100027f3          	csrr	a5,sstatus
    80007310:	0027f793          	andi	a5,a5,2
    80007314:	10079c63          	bnez	a5,8000742c <kerneltrap+0x138>
    80007318:	142027f3          	csrr	a5,scause
    8000731c:	0207ce63          	bltz	a5,80007358 <kerneltrap+0x64>
    80007320:	00003517          	auipc	a0,0x3
    80007324:	39050513          	addi	a0,a0,912 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80007328:	00001097          	auipc	ra,0x1
    8000732c:	880080e7          	jalr	-1920(ra) # 80007ba8 <__printf>
    80007330:	141025f3          	csrr	a1,sepc
    80007334:	14302673          	csrr	a2,stval
    80007338:	00003517          	auipc	a0,0x3
    8000733c:	38850513          	addi	a0,a0,904 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80007340:	00001097          	auipc	ra,0x1
    80007344:	868080e7          	jalr	-1944(ra) # 80007ba8 <__printf>
    80007348:	00003517          	auipc	a0,0x3
    8000734c:	39050513          	addi	a0,a0,912 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    80007350:	00000097          	auipc	ra,0x0
    80007354:	7fc080e7          	jalr	2044(ra) # 80007b4c <panic>
    80007358:	0ff7f713          	andi	a4,a5,255
    8000735c:	00900693          	li	a3,9
    80007360:	04d70063          	beq	a4,a3,800073a0 <kerneltrap+0xac>
    80007364:	fff00713          	li	a4,-1
    80007368:	03f71713          	slli	a4,a4,0x3f
    8000736c:	00170713          	addi	a4,a4,1
    80007370:	fae798e3          	bne	a5,a4,80007320 <kerneltrap+0x2c>
    80007374:	00000097          	auipc	ra,0x0
    80007378:	e00080e7          	jalr	-512(ra) # 80007174 <cpuid>
    8000737c:	06050663          	beqz	a0,800073e8 <kerneltrap+0xf4>
    80007380:	144027f3          	csrr	a5,sip
    80007384:	ffd7f793          	andi	a5,a5,-3
    80007388:	14479073          	csrw	sip,a5
    8000738c:	01813083          	ld	ra,24(sp)
    80007390:	01013403          	ld	s0,16(sp)
    80007394:	00813483          	ld	s1,8(sp)
    80007398:	02010113          	addi	sp,sp,32
    8000739c:	00008067          	ret
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	3c4080e7          	jalr	964(ra) # 80007764 <plic_claim>
    800073a8:	00a00793          	li	a5,10
    800073ac:	00050493          	mv	s1,a0
    800073b0:	06f50863          	beq	a0,a5,80007420 <kerneltrap+0x12c>
    800073b4:	fc050ce3          	beqz	a0,8000738c <kerneltrap+0x98>
    800073b8:	00050593          	mv	a1,a0
    800073bc:	00003517          	auipc	a0,0x3
    800073c0:	2d450513          	addi	a0,a0,724 # 8000a690 <CONSOLE_STATUS+0x680>
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	7e4080e7          	jalr	2020(ra) # 80007ba8 <__printf>
    800073cc:	01013403          	ld	s0,16(sp)
    800073d0:	01813083          	ld	ra,24(sp)
    800073d4:	00048513          	mv	a0,s1
    800073d8:	00813483          	ld	s1,8(sp)
    800073dc:	02010113          	addi	sp,sp,32
    800073e0:	00000317          	auipc	t1,0x0
    800073e4:	3bc30067          	jr	956(t1) # 8000779c <plic_complete>
    800073e8:	00007517          	auipc	a0,0x7
    800073ec:	bf850513          	addi	a0,a0,-1032 # 8000dfe0 <tickslock>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	48c080e7          	jalr	1164(ra) # 8000887c <acquire>
    800073f8:	00006717          	auipc	a4,0x6
    800073fc:	a4c70713          	addi	a4,a4,-1460 # 8000ce44 <ticks>
    80007400:	00072783          	lw	a5,0(a4)
    80007404:	00007517          	auipc	a0,0x7
    80007408:	bdc50513          	addi	a0,a0,-1060 # 8000dfe0 <tickslock>
    8000740c:	0017879b          	addiw	a5,a5,1
    80007410:	00f72023          	sw	a5,0(a4)
    80007414:	00001097          	auipc	ra,0x1
    80007418:	534080e7          	jalr	1332(ra) # 80008948 <release>
    8000741c:	f65ff06f          	j	80007380 <kerneltrap+0x8c>
    80007420:	00001097          	auipc	ra,0x1
    80007424:	090080e7          	jalr	144(ra) # 800084b0 <uartintr>
    80007428:	fa5ff06f          	j	800073cc <kerneltrap+0xd8>
    8000742c:	00003517          	auipc	a0,0x3
    80007430:	24450513          	addi	a0,a0,580 # 8000a670 <CONSOLE_STATUS+0x660>
    80007434:	00000097          	auipc	ra,0x0
    80007438:	718080e7          	jalr	1816(ra) # 80007b4c <panic>

000000008000743c <clockintr>:
    8000743c:	fe010113          	addi	sp,sp,-32
    80007440:	00813823          	sd	s0,16(sp)
    80007444:	00913423          	sd	s1,8(sp)
    80007448:	00113c23          	sd	ra,24(sp)
    8000744c:	02010413          	addi	s0,sp,32
    80007450:	00007497          	auipc	s1,0x7
    80007454:	b9048493          	addi	s1,s1,-1136 # 8000dfe0 <tickslock>
    80007458:	00048513          	mv	a0,s1
    8000745c:	00001097          	auipc	ra,0x1
    80007460:	420080e7          	jalr	1056(ra) # 8000887c <acquire>
    80007464:	00006717          	auipc	a4,0x6
    80007468:	9e070713          	addi	a4,a4,-1568 # 8000ce44 <ticks>
    8000746c:	00072783          	lw	a5,0(a4)
    80007470:	01013403          	ld	s0,16(sp)
    80007474:	01813083          	ld	ra,24(sp)
    80007478:	00048513          	mv	a0,s1
    8000747c:	0017879b          	addiw	a5,a5,1
    80007480:	00813483          	ld	s1,8(sp)
    80007484:	00f72023          	sw	a5,0(a4)
    80007488:	02010113          	addi	sp,sp,32
    8000748c:	00001317          	auipc	t1,0x1
    80007490:	4bc30067          	jr	1212(t1) # 80008948 <release>

0000000080007494 <devintr>:
    80007494:	142027f3          	csrr	a5,scause
    80007498:	00000513          	li	a0,0
    8000749c:	0007c463          	bltz	a5,800074a4 <devintr+0x10>
    800074a0:	00008067          	ret
    800074a4:	fe010113          	addi	sp,sp,-32
    800074a8:	00813823          	sd	s0,16(sp)
    800074ac:	00113c23          	sd	ra,24(sp)
    800074b0:	00913423          	sd	s1,8(sp)
    800074b4:	02010413          	addi	s0,sp,32
    800074b8:	0ff7f713          	andi	a4,a5,255
    800074bc:	00900693          	li	a3,9
    800074c0:	04d70c63          	beq	a4,a3,80007518 <devintr+0x84>
    800074c4:	fff00713          	li	a4,-1
    800074c8:	03f71713          	slli	a4,a4,0x3f
    800074cc:	00170713          	addi	a4,a4,1
    800074d0:	00e78c63          	beq	a5,a4,800074e8 <devintr+0x54>
    800074d4:	01813083          	ld	ra,24(sp)
    800074d8:	01013403          	ld	s0,16(sp)
    800074dc:	00813483          	ld	s1,8(sp)
    800074e0:	02010113          	addi	sp,sp,32
    800074e4:	00008067          	ret
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	c8c080e7          	jalr	-884(ra) # 80007174 <cpuid>
    800074f0:	06050663          	beqz	a0,8000755c <devintr+0xc8>
    800074f4:	144027f3          	csrr	a5,sip
    800074f8:	ffd7f793          	andi	a5,a5,-3
    800074fc:	14479073          	csrw	sip,a5
    80007500:	01813083          	ld	ra,24(sp)
    80007504:	01013403          	ld	s0,16(sp)
    80007508:	00813483          	ld	s1,8(sp)
    8000750c:	00200513          	li	a0,2
    80007510:	02010113          	addi	sp,sp,32
    80007514:	00008067          	ret
    80007518:	00000097          	auipc	ra,0x0
    8000751c:	24c080e7          	jalr	588(ra) # 80007764 <plic_claim>
    80007520:	00a00793          	li	a5,10
    80007524:	00050493          	mv	s1,a0
    80007528:	06f50663          	beq	a0,a5,80007594 <devintr+0x100>
    8000752c:	00100513          	li	a0,1
    80007530:	fa0482e3          	beqz	s1,800074d4 <devintr+0x40>
    80007534:	00048593          	mv	a1,s1
    80007538:	00003517          	auipc	a0,0x3
    8000753c:	15850513          	addi	a0,a0,344 # 8000a690 <CONSOLE_STATUS+0x680>
    80007540:	00000097          	auipc	ra,0x0
    80007544:	668080e7          	jalr	1640(ra) # 80007ba8 <__printf>
    80007548:	00048513          	mv	a0,s1
    8000754c:	00000097          	auipc	ra,0x0
    80007550:	250080e7          	jalr	592(ra) # 8000779c <plic_complete>
    80007554:	00100513          	li	a0,1
    80007558:	f7dff06f          	j	800074d4 <devintr+0x40>
    8000755c:	00007517          	auipc	a0,0x7
    80007560:	a8450513          	addi	a0,a0,-1404 # 8000dfe0 <tickslock>
    80007564:	00001097          	auipc	ra,0x1
    80007568:	318080e7          	jalr	792(ra) # 8000887c <acquire>
    8000756c:	00006717          	auipc	a4,0x6
    80007570:	8d870713          	addi	a4,a4,-1832 # 8000ce44 <ticks>
    80007574:	00072783          	lw	a5,0(a4)
    80007578:	00007517          	auipc	a0,0x7
    8000757c:	a6850513          	addi	a0,a0,-1432 # 8000dfe0 <tickslock>
    80007580:	0017879b          	addiw	a5,a5,1
    80007584:	00f72023          	sw	a5,0(a4)
    80007588:	00001097          	auipc	ra,0x1
    8000758c:	3c0080e7          	jalr	960(ra) # 80008948 <release>
    80007590:	f65ff06f          	j	800074f4 <devintr+0x60>
    80007594:	00001097          	auipc	ra,0x1
    80007598:	f1c080e7          	jalr	-228(ra) # 800084b0 <uartintr>
    8000759c:	fadff06f          	j	80007548 <devintr+0xb4>

00000000800075a0 <kernelvec>:
    800075a0:	f0010113          	addi	sp,sp,-256
    800075a4:	00113023          	sd	ra,0(sp)
    800075a8:	00213423          	sd	sp,8(sp)
    800075ac:	00313823          	sd	gp,16(sp)
    800075b0:	00413c23          	sd	tp,24(sp)
    800075b4:	02513023          	sd	t0,32(sp)
    800075b8:	02613423          	sd	t1,40(sp)
    800075bc:	02713823          	sd	t2,48(sp)
    800075c0:	02813c23          	sd	s0,56(sp)
    800075c4:	04913023          	sd	s1,64(sp)
    800075c8:	04a13423          	sd	a0,72(sp)
    800075cc:	04b13823          	sd	a1,80(sp)
    800075d0:	04c13c23          	sd	a2,88(sp)
    800075d4:	06d13023          	sd	a3,96(sp)
    800075d8:	06e13423          	sd	a4,104(sp)
    800075dc:	06f13823          	sd	a5,112(sp)
    800075e0:	07013c23          	sd	a6,120(sp)
    800075e4:	09113023          	sd	a7,128(sp)
    800075e8:	09213423          	sd	s2,136(sp)
    800075ec:	09313823          	sd	s3,144(sp)
    800075f0:	09413c23          	sd	s4,152(sp)
    800075f4:	0b513023          	sd	s5,160(sp)
    800075f8:	0b613423          	sd	s6,168(sp)
    800075fc:	0b713823          	sd	s7,176(sp)
    80007600:	0b813c23          	sd	s8,184(sp)
    80007604:	0d913023          	sd	s9,192(sp)
    80007608:	0da13423          	sd	s10,200(sp)
    8000760c:	0db13823          	sd	s11,208(sp)
    80007610:	0dc13c23          	sd	t3,216(sp)
    80007614:	0fd13023          	sd	t4,224(sp)
    80007618:	0fe13423          	sd	t5,232(sp)
    8000761c:	0ff13823          	sd	t6,240(sp)
    80007620:	cd5ff0ef          	jal	ra,800072f4 <kerneltrap>
    80007624:	00013083          	ld	ra,0(sp)
    80007628:	00813103          	ld	sp,8(sp)
    8000762c:	01013183          	ld	gp,16(sp)
    80007630:	02013283          	ld	t0,32(sp)
    80007634:	02813303          	ld	t1,40(sp)
    80007638:	03013383          	ld	t2,48(sp)
    8000763c:	03813403          	ld	s0,56(sp)
    80007640:	04013483          	ld	s1,64(sp)
    80007644:	04813503          	ld	a0,72(sp)
    80007648:	05013583          	ld	a1,80(sp)
    8000764c:	05813603          	ld	a2,88(sp)
    80007650:	06013683          	ld	a3,96(sp)
    80007654:	06813703          	ld	a4,104(sp)
    80007658:	07013783          	ld	a5,112(sp)
    8000765c:	07813803          	ld	a6,120(sp)
    80007660:	08013883          	ld	a7,128(sp)
    80007664:	08813903          	ld	s2,136(sp)
    80007668:	09013983          	ld	s3,144(sp)
    8000766c:	09813a03          	ld	s4,152(sp)
    80007670:	0a013a83          	ld	s5,160(sp)
    80007674:	0a813b03          	ld	s6,168(sp)
    80007678:	0b013b83          	ld	s7,176(sp)
    8000767c:	0b813c03          	ld	s8,184(sp)
    80007680:	0c013c83          	ld	s9,192(sp)
    80007684:	0c813d03          	ld	s10,200(sp)
    80007688:	0d013d83          	ld	s11,208(sp)
    8000768c:	0d813e03          	ld	t3,216(sp)
    80007690:	0e013e83          	ld	t4,224(sp)
    80007694:	0e813f03          	ld	t5,232(sp)
    80007698:	0f013f83          	ld	t6,240(sp)
    8000769c:	10010113          	addi	sp,sp,256
    800076a0:	10200073          	sret
    800076a4:	00000013          	nop
    800076a8:	00000013          	nop
    800076ac:	00000013          	nop

00000000800076b0 <timervec>:
    800076b0:	34051573          	csrrw	a0,mscratch,a0
    800076b4:	00b53023          	sd	a1,0(a0)
    800076b8:	00c53423          	sd	a2,8(a0)
    800076bc:	00d53823          	sd	a3,16(a0)
    800076c0:	01853583          	ld	a1,24(a0)
    800076c4:	02053603          	ld	a2,32(a0)
    800076c8:	0005b683          	ld	a3,0(a1)
    800076cc:	00c686b3          	add	a3,a3,a2
    800076d0:	00d5b023          	sd	a3,0(a1)
    800076d4:	00200593          	li	a1,2
    800076d8:	14459073          	csrw	sip,a1
    800076dc:	01053683          	ld	a3,16(a0)
    800076e0:	00853603          	ld	a2,8(a0)
    800076e4:	00053583          	ld	a1,0(a0)
    800076e8:	34051573          	csrrw	a0,mscratch,a0
    800076ec:	30200073          	mret

00000000800076f0 <plicinit>:
    800076f0:	ff010113          	addi	sp,sp,-16
    800076f4:	00813423          	sd	s0,8(sp)
    800076f8:	01010413          	addi	s0,sp,16
    800076fc:	00813403          	ld	s0,8(sp)
    80007700:	0c0007b7          	lui	a5,0xc000
    80007704:	00100713          	li	a4,1
    80007708:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000770c:	00e7a223          	sw	a4,4(a5)
    80007710:	01010113          	addi	sp,sp,16
    80007714:	00008067          	ret

0000000080007718 <plicinithart>:
    80007718:	ff010113          	addi	sp,sp,-16
    8000771c:	00813023          	sd	s0,0(sp)
    80007720:	00113423          	sd	ra,8(sp)
    80007724:	01010413          	addi	s0,sp,16
    80007728:	00000097          	auipc	ra,0x0
    8000772c:	a4c080e7          	jalr	-1460(ra) # 80007174 <cpuid>
    80007730:	0085171b          	slliw	a4,a0,0x8
    80007734:	0c0027b7          	lui	a5,0xc002
    80007738:	00e787b3          	add	a5,a5,a4
    8000773c:	40200713          	li	a4,1026
    80007740:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007744:	00813083          	ld	ra,8(sp)
    80007748:	00013403          	ld	s0,0(sp)
    8000774c:	00d5151b          	slliw	a0,a0,0xd
    80007750:	0c2017b7          	lui	a5,0xc201
    80007754:	00a78533          	add	a0,a5,a0
    80007758:	00052023          	sw	zero,0(a0)
    8000775c:	01010113          	addi	sp,sp,16
    80007760:	00008067          	ret

0000000080007764 <plic_claim>:
    80007764:	ff010113          	addi	sp,sp,-16
    80007768:	00813023          	sd	s0,0(sp)
    8000776c:	00113423          	sd	ra,8(sp)
    80007770:	01010413          	addi	s0,sp,16
    80007774:	00000097          	auipc	ra,0x0
    80007778:	a00080e7          	jalr	-1536(ra) # 80007174 <cpuid>
    8000777c:	00813083          	ld	ra,8(sp)
    80007780:	00013403          	ld	s0,0(sp)
    80007784:	00d5151b          	slliw	a0,a0,0xd
    80007788:	0c2017b7          	lui	a5,0xc201
    8000778c:	00a78533          	add	a0,a5,a0
    80007790:	00452503          	lw	a0,4(a0)
    80007794:	01010113          	addi	sp,sp,16
    80007798:	00008067          	ret

000000008000779c <plic_complete>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00913423          	sd	s1,8(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	02010413          	addi	s0,sp,32
    800077b0:	00050493          	mv	s1,a0
    800077b4:	00000097          	auipc	ra,0x0
    800077b8:	9c0080e7          	jalr	-1600(ra) # 80007174 <cpuid>
    800077bc:	01813083          	ld	ra,24(sp)
    800077c0:	01013403          	ld	s0,16(sp)
    800077c4:	00d5179b          	slliw	a5,a0,0xd
    800077c8:	0c201737          	lui	a4,0xc201
    800077cc:	00f707b3          	add	a5,a4,a5
    800077d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800077d4:	00813483          	ld	s1,8(sp)
    800077d8:	02010113          	addi	sp,sp,32
    800077dc:	00008067          	ret

00000000800077e0 <consolewrite>:
    800077e0:	fb010113          	addi	sp,sp,-80
    800077e4:	04813023          	sd	s0,64(sp)
    800077e8:	04113423          	sd	ra,72(sp)
    800077ec:	02913c23          	sd	s1,56(sp)
    800077f0:	03213823          	sd	s2,48(sp)
    800077f4:	03313423          	sd	s3,40(sp)
    800077f8:	03413023          	sd	s4,32(sp)
    800077fc:	01513c23          	sd	s5,24(sp)
    80007800:	05010413          	addi	s0,sp,80
    80007804:	06c05c63          	blez	a2,8000787c <consolewrite+0x9c>
    80007808:	00060993          	mv	s3,a2
    8000780c:	00050a13          	mv	s4,a0
    80007810:	00058493          	mv	s1,a1
    80007814:	00000913          	li	s2,0
    80007818:	fff00a93          	li	s5,-1
    8000781c:	01c0006f          	j	80007838 <consolewrite+0x58>
    80007820:	fbf44503          	lbu	a0,-65(s0)
    80007824:	0019091b          	addiw	s2,s2,1
    80007828:	00148493          	addi	s1,s1,1
    8000782c:	00001097          	auipc	ra,0x1
    80007830:	a9c080e7          	jalr	-1380(ra) # 800082c8 <uartputc>
    80007834:	03298063          	beq	s3,s2,80007854 <consolewrite+0x74>
    80007838:	00048613          	mv	a2,s1
    8000783c:	00100693          	li	a3,1
    80007840:	000a0593          	mv	a1,s4
    80007844:	fbf40513          	addi	a0,s0,-65
    80007848:	00000097          	auipc	ra,0x0
    8000784c:	9e4080e7          	jalr	-1564(ra) # 8000722c <either_copyin>
    80007850:	fd5518e3          	bne	a0,s5,80007820 <consolewrite+0x40>
    80007854:	04813083          	ld	ra,72(sp)
    80007858:	04013403          	ld	s0,64(sp)
    8000785c:	03813483          	ld	s1,56(sp)
    80007860:	02813983          	ld	s3,40(sp)
    80007864:	02013a03          	ld	s4,32(sp)
    80007868:	01813a83          	ld	s5,24(sp)
    8000786c:	00090513          	mv	a0,s2
    80007870:	03013903          	ld	s2,48(sp)
    80007874:	05010113          	addi	sp,sp,80
    80007878:	00008067          	ret
    8000787c:	00000913          	li	s2,0
    80007880:	fd5ff06f          	j	80007854 <consolewrite+0x74>

0000000080007884 <consoleread>:
    80007884:	f9010113          	addi	sp,sp,-112
    80007888:	06813023          	sd	s0,96(sp)
    8000788c:	04913c23          	sd	s1,88(sp)
    80007890:	05213823          	sd	s2,80(sp)
    80007894:	05313423          	sd	s3,72(sp)
    80007898:	05413023          	sd	s4,64(sp)
    8000789c:	03513c23          	sd	s5,56(sp)
    800078a0:	03613823          	sd	s6,48(sp)
    800078a4:	03713423          	sd	s7,40(sp)
    800078a8:	03813023          	sd	s8,32(sp)
    800078ac:	06113423          	sd	ra,104(sp)
    800078b0:	01913c23          	sd	s9,24(sp)
    800078b4:	07010413          	addi	s0,sp,112
    800078b8:	00060b93          	mv	s7,a2
    800078bc:	00050913          	mv	s2,a0
    800078c0:	00058c13          	mv	s8,a1
    800078c4:	00060b1b          	sext.w	s6,a2
    800078c8:	00006497          	auipc	s1,0x6
    800078cc:	74048493          	addi	s1,s1,1856 # 8000e008 <cons>
    800078d0:	00400993          	li	s3,4
    800078d4:	fff00a13          	li	s4,-1
    800078d8:	00a00a93          	li	s5,10
    800078dc:	05705e63          	blez	s7,80007938 <consoleread+0xb4>
    800078e0:	09c4a703          	lw	a4,156(s1)
    800078e4:	0984a783          	lw	a5,152(s1)
    800078e8:	0007071b          	sext.w	a4,a4
    800078ec:	08e78463          	beq	a5,a4,80007974 <consoleread+0xf0>
    800078f0:	07f7f713          	andi	a4,a5,127
    800078f4:	00e48733          	add	a4,s1,a4
    800078f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800078fc:	0017869b          	addiw	a3,a5,1
    80007900:	08d4ac23          	sw	a3,152(s1)
    80007904:	00070c9b          	sext.w	s9,a4
    80007908:	0b370663          	beq	a4,s3,800079b4 <consoleread+0x130>
    8000790c:	00100693          	li	a3,1
    80007910:	f9f40613          	addi	a2,s0,-97
    80007914:	000c0593          	mv	a1,s8
    80007918:	00090513          	mv	a0,s2
    8000791c:	f8e40fa3          	sb	a4,-97(s0)
    80007920:	00000097          	auipc	ra,0x0
    80007924:	8c0080e7          	jalr	-1856(ra) # 800071e0 <either_copyout>
    80007928:	01450863          	beq	a0,s4,80007938 <consoleread+0xb4>
    8000792c:	001c0c13          	addi	s8,s8,1
    80007930:	fffb8b9b          	addiw	s7,s7,-1
    80007934:	fb5c94e3          	bne	s9,s5,800078dc <consoleread+0x58>
    80007938:	000b851b          	sext.w	a0,s7
    8000793c:	06813083          	ld	ra,104(sp)
    80007940:	06013403          	ld	s0,96(sp)
    80007944:	05813483          	ld	s1,88(sp)
    80007948:	05013903          	ld	s2,80(sp)
    8000794c:	04813983          	ld	s3,72(sp)
    80007950:	04013a03          	ld	s4,64(sp)
    80007954:	03813a83          	ld	s5,56(sp)
    80007958:	02813b83          	ld	s7,40(sp)
    8000795c:	02013c03          	ld	s8,32(sp)
    80007960:	01813c83          	ld	s9,24(sp)
    80007964:	40ab053b          	subw	a0,s6,a0
    80007968:	03013b03          	ld	s6,48(sp)
    8000796c:	07010113          	addi	sp,sp,112
    80007970:	00008067          	ret
    80007974:	00001097          	auipc	ra,0x1
    80007978:	1d8080e7          	jalr	472(ra) # 80008b4c <push_on>
    8000797c:	0984a703          	lw	a4,152(s1)
    80007980:	09c4a783          	lw	a5,156(s1)
    80007984:	0007879b          	sext.w	a5,a5
    80007988:	fef70ce3          	beq	a4,a5,80007980 <consoleread+0xfc>
    8000798c:	00001097          	auipc	ra,0x1
    80007990:	234080e7          	jalr	564(ra) # 80008bc0 <pop_on>
    80007994:	0984a783          	lw	a5,152(s1)
    80007998:	07f7f713          	andi	a4,a5,127
    8000799c:	00e48733          	add	a4,s1,a4
    800079a0:	01874703          	lbu	a4,24(a4)
    800079a4:	0017869b          	addiw	a3,a5,1
    800079a8:	08d4ac23          	sw	a3,152(s1)
    800079ac:	00070c9b          	sext.w	s9,a4
    800079b0:	f5371ee3          	bne	a4,s3,8000790c <consoleread+0x88>
    800079b4:	000b851b          	sext.w	a0,s7
    800079b8:	f96bf2e3          	bgeu	s7,s6,8000793c <consoleread+0xb8>
    800079bc:	08f4ac23          	sw	a5,152(s1)
    800079c0:	f7dff06f          	j	8000793c <consoleread+0xb8>

00000000800079c4 <consputc>:
    800079c4:	10000793          	li	a5,256
    800079c8:	00f50663          	beq	a0,a5,800079d4 <consputc+0x10>
    800079cc:	00001317          	auipc	t1,0x1
    800079d0:	9f430067          	jr	-1548(t1) # 800083c0 <uartputc_sync>
    800079d4:	ff010113          	addi	sp,sp,-16
    800079d8:	00113423          	sd	ra,8(sp)
    800079dc:	00813023          	sd	s0,0(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	00800513          	li	a0,8
    800079e8:	00001097          	auipc	ra,0x1
    800079ec:	9d8080e7          	jalr	-1576(ra) # 800083c0 <uartputc_sync>
    800079f0:	02000513          	li	a0,32
    800079f4:	00001097          	auipc	ra,0x1
    800079f8:	9cc080e7          	jalr	-1588(ra) # 800083c0 <uartputc_sync>
    800079fc:	00013403          	ld	s0,0(sp)
    80007a00:	00813083          	ld	ra,8(sp)
    80007a04:	00800513          	li	a0,8
    80007a08:	01010113          	addi	sp,sp,16
    80007a0c:	00001317          	auipc	t1,0x1
    80007a10:	9b430067          	jr	-1612(t1) # 800083c0 <uartputc_sync>

0000000080007a14 <consoleintr>:
    80007a14:	fe010113          	addi	sp,sp,-32
    80007a18:	00813823          	sd	s0,16(sp)
    80007a1c:	00913423          	sd	s1,8(sp)
    80007a20:	01213023          	sd	s2,0(sp)
    80007a24:	00113c23          	sd	ra,24(sp)
    80007a28:	02010413          	addi	s0,sp,32
    80007a2c:	00006917          	auipc	s2,0x6
    80007a30:	5dc90913          	addi	s2,s2,1500 # 8000e008 <cons>
    80007a34:	00050493          	mv	s1,a0
    80007a38:	00090513          	mv	a0,s2
    80007a3c:	00001097          	auipc	ra,0x1
    80007a40:	e40080e7          	jalr	-448(ra) # 8000887c <acquire>
    80007a44:	02048c63          	beqz	s1,80007a7c <consoleintr+0x68>
    80007a48:	0a092783          	lw	a5,160(s2)
    80007a4c:	09892703          	lw	a4,152(s2)
    80007a50:	07f00693          	li	a3,127
    80007a54:	40e7873b          	subw	a4,a5,a4
    80007a58:	02e6e263          	bltu	a3,a4,80007a7c <consoleintr+0x68>
    80007a5c:	00d00713          	li	a4,13
    80007a60:	04e48063          	beq	s1,a4,80007aa0 <consoleintr+0x8c>
    80007a64:	07f7f713          	andi	a4,a5,127
    80007a68:	00e90733          	add	a4,s2,a4
    80007a6c:	0017879b          	addiw	a5,a5,1
    80007a70:	0af92023          	sw	a5,160(s2)
    80007a74:	00970c23          	sb	s1,24(a4)
    80007a78:	08f92e23          	sw	a5,156(s2)
    80007a7c:	01013403          	ld	s0,16(sp)
    80007a80:	01813083          	ld	ra,24(sp)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	00013903          	ld	s2,0(sp)
    80007a8c:	00006517          	auipc	a0,0x6
    80007a90:	57c50513          	addi	a0,a0,1404 # 8000e008 <cons>
    80007a94:	02010113          	addi	sp,sp,32
    80007a98:	00001317          	auipc	t1,0x1
    80007a9c:	eb030067          	jr	-336(t1) # 80008948 <release>
    80007aa0:	00a00493          	li	s1,10
    80007aa4:	fc1ff06f          	j	80007a64 <consoleintr+0x50>

0000000080007aa8 <consoleinit>:
    80007aa8:	fe010113          	addi	sp,sp,-32
    80007aac:	00113c23          	sd	ra,24(sp)
    80007ab0:	00813823          	sd	s0,16(sp)
    80007ab4:	00913423          	sd	s1,8(sp)
    80007ab8:	02010413          	addi	s0,sp,32
    80007abc:	00006497          	auipc	s1,0x6
    80007ac0:	54c48493          	addi	s1,s1,1356 # 8000e008 <cons>
    80007ac4:	00048513          	mv	a0,s1
    80007ac8:	00003597          	auipc	a1,0x3
    80007acc:	c2058593          	addi	a1,a1,-992 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007ad0:	00001097          	auipc	ra,0x1
    80007ad4:	d88080e7          	jalr	-632(ra) # 80008858 <initlock>
    80007ad8:	00000097          	auipc	ra,0x0
    80007adc:	7ac080e7          	jalr	1964(ra) # 80008284 <uartinit>
    80007ae0:	01813083          	ld	ra,24(sp)
    80007ae4:	01013403          	ld	s0,16(sp)
    80007ae8:	00000797          	auipc	a5,0x0
    80007aec:	d9c78793          	addi	a5,a5,-612 # 80007884 <consoleread>
    80007af0:	0af4bc23          	sd	a5,184(s1)
    80007af4:	00000797          	auipc	a5,0x0
    80007af8:	cec78793          	addi	a5,a5,-788 # 800077e0 <consolewrite>
    80007afc:	0cf4b023          	sd	a5,192(s1)
    80007b00:	00813483          	ld	s1,8(sp)
    80007b04:	02010113          	addi	sp,sp,32
    80007b08:	00008067          	ret

0000000080007b0c <console_read>:
    80007b0c:	ff010113          	addi	sp,sp,-16
    80007b10:	00813423          	sd	s0,8(sp)
    80007b14:	01010413          	addi	s0,sp,16
    80007b18:	00813403          	ld	s0,8(sp)
    80007b1c:	00006317          	auipc	t1,0x6
    80007b20:	5a433303          	ld	t1,1444(t1) # 8000e0c0 <devsw+0x10>
    80007b24:	01010113          	addi	sp,sp,16
    80007b28:	00030067          	jr	t1

0000000080007b2c <console_write>:
    80007b2c:	ff010113          	addi	sp,sp,-16
    80007b30:	00813423          	sd	s0,8(sp)
    80007b34:	01010413          	addi	s0,sp,16
    80007b38:	00813403          	ld	s0,8(sp)
    80007b3c:	00006317          	auipc	t1,0x6
    80007b40:	58c33303          	ld	t1,1420(t1) # 8000e0c8 <devsw+0x18>
    80007b44:	01010113          	addi	sp,sp,16
    80007b48:	00030067          	jr	t1

0000000080007b4c <panic>:
    80007b4c:	fe010113          	addi	sp,sp,-32
    80007b50:	00113c23          	sd	ra,24(sp)
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	02010413          	addi	s0,sp,32
    80007b60:	00050493          	mv	s1,a0
    80007b64:	00003517          	auipc	a0,0x3
    80007b68:	b8c50513          	addi	a0,a0,-1140 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007b6c:	00006797          	auipc	a5,0x6
    80007b70:	5e07ae23          	sw	zero,1532(a5) # 8000e168 <pr+0x18>
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	034080e7          	jalr	52(ra) # 80007ba8 <__printf>
    80007b7c:	00048513          	mv	a0,s1
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	028080e7          	jalr	40(ra) # 80007ba8 <__printf>
    80007b88:	00003517          	auipc	a0,0x3
    80007b8c:	8f050513          	addi	a0,a0,-1808 # 8000a478 <CONSOLE_STATUS+0x468>
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	018080e7          	jalr	24(ra) # 80007ba8 <__printf>
    80007b98:	00100793          	li	a5,1
    80007b9c:	00005717          	auipc	a4,0x5
    80007ba0:	2af72623          	sw	a5,684(a4) # 8000ce48 <panicked>
    80007ba4:	0000006f          	j	80007ba4 <panic+0x58>

0000000080007ba8 <__printf>:
    80007ba8:	f3010113          	addi	sp,sp,-208
    80007bac:	08813023          	sd	s0,128(sp)
    80007bb0:	07313423          	sd	s3,104(sp)
    80007bb4:	09010413          	addi	s0,sp,144
    80007bb8:	05813023          	sd	s8,64(sp)
    80007bbc:	08113423          	sd	ra,136(sp)
    80007bc0:	06913c23          	sd	s1,120(sp)
    80007bc4:	07213823          	sd	s2,112(sp)
    80007bc8:	07413023          	sd	s4,96(sp)
    80007bcc:	05513c23          	sd	s5,88(sp)
    80007bd0:	05613823          	sd	s6,80(sp)
    80007bd4:	05713423          	sd	s7,72(sp)
    80007bd8:	03913c23          	sd	s9,56(sp)
    80007bdc:	03a13823          	sd	s10,48(sp)
    80007be0:	03b13423          	sd	s11,40(sp)
    80007be4:	00006317          	auipc	t1,0x6
    80007be8:	56c30313          	addi	t1,t1,1388 # 8000e150 <pr>
    80007bec:	01832c03          	lw	s8,24(t1)
    80007bf0:	00b43423          	sd	a1,8(s0)
    80007bf4:	00c43823          	sd	a2,16(s0)
    80007bf8:	00d43c23          	sd	a3,24(s0)
    80007bfc:	02e43023          	sd	a4,32(s0)
    80007c00:	02f43423          	sd	a5,40(s0)
    80007c04:	03043823          	sd	a6,48(s0)
    80007c08:	03143c23          	sd	a7,56(s0)
    80007c0c:	00050993          	mv	s3,a0
    80007c10:	4a0c1663          	bnez	s8,800080bc <__printf+0x514>
    80007c14:	60098c63          	beqz	s3,8000822c <__printf+0x684>
    80007c18:	0009c503          	lbu	a0,0(s3)
    80007c1c:	00840793          	addi	a5,s0,8
    80007c20:	f6f43c23          	sd	a5,-136(s0)
    80007c24:	00000493          	li	s1,0
    80007c28:	22050063          	beqz	a0,80007e48 <__printf+0x2a0>
    80007c2c:	00002a37          	lui	s4,0x2
    80007c30:	00018ab7          	lui	s5,0x18
    80007c34:	000f4b37          	lui	s6,0xf4
    80007c38:	00989bb7          	lui	s7,0x989
    80007c3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c4c:	00148c9b          	addiw	s9,s1,1
    80007c50:	02500793          	li	a5,37
    80007c54:	01998933          	add	s2,s3,s9
    80007c58:	38f51263          	bne	a0,a5,80007fdc <__printf+0x434>
    80007c5c:	00094783          	lbu	a5,0(s2)
    80007c60:	00078c9b          	sext.w	s9,a5
    80007c64:	1e078263          	beqz	a5,80007e48 <__printf+0x2a0>
    80007c68:	0024849b          	addiw	s1,s1,2
    80007c6c:	07000713          	li	a4,112
    80007c70:	00998933          	add	s2,s3,s1
    80007c74:	38e78a63          	beq	a5,a4,80008008 <__printf+0x460>
    80007c78:	20f76863          	bltu	a4,a5,80007e88 <__printf+0x2e0>
    80007c7c:	42a78863          	beq	a5,a0,800080ac <__printf+0x504>
    80007c80:	06400713          	li	a4,100
    80007c84:	40e79663          	bne	a5,a4,80008090 <__printf+0x4e8>
    80007c88:	f7843783          	ld	a5,-136(s0)
    80007c8c:	0007a603          	lw	a2,0(a5)
    80007c90:	00878793          	addi	a5,a5,8
    80007c94:	f6f43c23          	sd	a5,-136(s0)
    80007c98:	42064a63          	bltz	a2,800080cc <__printf+0x524>
    80007c9c:	00a00713          	li	a4,10
    80007ca0:	02e677bb          	remuw	a5,a2,a4
    80007ca4:	00003d97          	auipc	s11,0x3
    80007ca8:	a74d8d93          	addi	s11,s11,-1420 # 8000a718 <digits>
    80007cac:	00900593          	li	a1,9
    80007cb0:	0006051b          	sext.w	a0,a2
    80007cb4:	00000c93          	li	s9,0
    80007cb8:	02079793          	slli	a5,a5,0x20
    80007cbc:	0207d793          	srli	a5,a5,0x20
    80007cc0:	00fd87b3          	add	a5,s11,a5
    80007cc4:	0007c783          	lbu	a5,0(a5)
    80007cc8:	02e656bb          	divuw	a3,a2,a4
    80007ccc:	f8f40023          	sb	a5,-128(s0)
    80007cd0:	14c5d863          	bge	a1,a2,80007e20 <__printf+0x278>
    80007cd4:	06300593          	li	a1,99
    80007cd8:	00100c93          	li	s9,1
    80007cdc:	02e6f7bb          	remuw	a5,a3,a4
    80007ce0:	02079793          	slli	a5,a5,0x20
    80007ce4:	0207d793          	srli	a5,a5,0x20
    80007ce8:	00fd87b3          	add	a5,s11,a5
    80007cec:	0007c783          	lbu	a5,0(a5)
    80007cf0:	02e6d73b          	divuw	a4,a3,a4
    80007cf4:	f8f400a3          	sb	a5,-127(s0)
    80007cf8:	12a5f463          	bgeu	a1,a0,80007e20 <__printf+0x278>
    80007cfc:	00a00693          	li	a3,10
    80007d00:	00900593          	li	a1,9
    80007d04:	02d777bb          	remuw	a5,a4,a3
    80007d08:	02079793          	slli	a5,a5,0x20
    80007d0c:	0207d793          	srli	a5,a5,0x20
    80007d10:	00fd87b3          	add	a5,s11,a5
    80007d14:	0007c503          	lbu	a0,0(a5)
    80007d18:	02d757bb          	divuw	a5,a4,a3
    80007d1c:	f8a40123          	sb	a0,-126(s0)
    80007d20:	48e5f263          	bgeu	a1,a4,800081a4 <__printf+0x5fc>
    80007d24:	06300513          	li	a0,99
    80007d28:	02d7f5bb          	remuw	a1,a5,a3
    80007d2c:	02059593          	slli	a1,a1,0x20
    80007d30:	0205d593          	srli	a1,a1,0x20
    80007d34:	00bd85b3          	add	a1,s11,a1
    80007d38:	0005c583          	lbu	a1,0(a1)
    80007d3c:	02d7d7bb          	divuw	a5,a5,a3
    80007d40:	f8b401a3          	sb	a1,-125(s0)
    80007d44:	48e57263          	bgeu	a0,a4,800081c8 <__printf+0x620>
    80007d48:	3e700513          	li	a0,999
    80007d4c:	02d7f5bb          	remuw	a1,a5,a3
    80007d50:	02059593          	slli	a1,a1,0x20
    80007d54:	0205d593          	srli	a1,a1,0x20
    80007d58:	00bd85b3          	add	a1,s11,a1
    80007d5c:	0005c583          	lbu	a1,0(a1)
    80007d60:	02d7d7bb          	divuw	a5,a5,a3
    80007d64:	f8b40223          	sb	a1,-124(s0)
    80007d68:	46e57663          	bgeu	a0,a4,800081d4 <__printf+0x62c>
    80007d6c:	02d7f5bb          	remuw	a1,a5,a3
    80007d70:	02059593          	slli	a1,a1,0x20
    80007d74:	0205d593          	srli	a1,a1,0x20
    80007d78:	00bd85b3          	add	a1,s11,a1
    80007d7c:	0005c583          	lbu	a1,0(a1)
    80007d80:	02d7d7bb          	divuw	a5,a5,a3
    80007d84:	f8b402a3          	sb	a1,-123(s0)
    80007d88:	46ea7863          	bgeu	s4,a4,800081f8 <__printf+0x650>
    80007d8c:	02d7f5bb          	remuw	a1,a5,a3
    80007d90:	02059593          	slli	a1,a1,0x20
    80007d94:	0205d593          	srli	a1,a1,0x20
    80007d98:	00bd85b3          	add	a1,s11,a1
    80007d9c:	0005c583          	lbu	a1,0(a1)
    80007da0:	02d7d7bb          	divuw	a5,a5,a3
    80007da4:	f8b40323          	sb	a1,-122(s0)
    80007da8:	3eeaf863          	bgeu	s5,a4,80008198 <__printf+0x5f0>
    80007dac:	02d7f5bb          	remuw	a1,a5,a3
    80007db0:	02059593          	slli	a1,a1,0x20
    80007db4:	0205d593          	srli	a1,a1,0x20
    80007db8:	00bd85b3          	add	a1,s11,a1
    80007dbc:	0005c583          	lbu	a1,0(a1)
    80007dc0:	02d7d7bb          	divuw	a5,a5,a3
    80007dc4:	f8b403a3          	sb	a1,-121(s0)
    80007dc8:	42eb7e63          	bgeu	s6,a4,80008204 <__printf+0x65c>
    80007dcc:	02d7f5bb          	remuw	a1,a5,a3
    80007dd0:	02059593          	slli	a1,a1,0x20
    80007dd4:	0205d593          	srli	a1,a1,0x20
    80007dd8:	00bd85b3          	add	a1,s11,a1
    80007ddc:	0005c583          	lbu	a1,0(a1)
    80007de0:	02d7d7bb          	divuw	a5,a5,a3
    80007de4:	f8b40423          	sb	a1,-120(s0)
    80007de8:	42ebfc63          	bgeu	s7,a4,80008220 <__printf+0x678>
    80007dec:	02079793          	slli	a5,a5,0x20
    80007df0:	0207d793          	srli	a5,a5,0x20
    80007df4:	00fd8db3          	add	s11,s11,a5
    80007df8:	000dc703          	lbu	a4,0(s11)
    80007dfc:	00a00793          	li	a5,10
    80007e00:	00900c93          	li	s9,9
    80007e04:	f8e404a3          	sb	a4,-119(s0)
    80007e08:	00065c63          	bgez	a2,80007e20 <__printf+0x278>
    80007e0c:	f9040713          	addi	a4,s0,-112
    80007e10:	00f70733          	add	a4,a4,a5
    80007e14:	02d00693          	li	a3,45
    80007e18:	fed70823          	sb	a3,-16(a4)
    80007e1c:	00078c93          	mv	s9,a5
    80007e20:	f8040793          	addi	a5,s0,-128
    80007e24:	01978cb3          	add	s9,a5,s9
    80007e28:	f7f40d13          	addi	s10,s0,-129
    80007e2c:	000cc503          	lbu	a0,0(s9)
    80007e30:	fffc8c93          	addi	s9,s9,-1
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	b90080e7          	jalr	-1136(ra) # 800079c4 <consputc>
    80007e3c:	ffac98e3          	bne	s9,s10,80007e2c <__printf+0x284>
    80007e40:	00094503          	lbu	a0,0(s2)
    80007e44:	e00514e3          	bnez	a0,80007c4c <__printf+0xa4>
    80007e48:	1a0c1663          	bnez	s8,80007ff4 <__printf+0x44c>
    80007e4c:	08813083          	ld	ra,136(sp)
    80007e50:	08013403          	ld	s0,128(sp)
    80007e54:	07813483          	ld	s1,120(sp)
    80007e58:	07013903          	ld	s2,112(sp)
    80007e5c:	06813983          	ld	s3,104(sp)
    80007e60:	06013a03          	ld	s4,96(sp)
    80007e64:	05813a83          	ld	s5,88(sp)
    80007e68:	05013b03          	ld	s6,80(sp)
    80007e6c:	04813b83          	ld	s7,72(sp)
    80007e70:	04013c03          	ld	s8,64(sp)
    80007e74:	03813c83          	ld	s9,56(sp)
    80007e78:	03013d03          	ld	s10,48(sp)
    80007e7c:	02813d83          	ld	s11,40(sp)
    80007e80:	0d010113          	addi	sp,sp,208
    80007e84:	00008067          	ret
    80007e88:	07300713          	li	a4,115
    80007e8c:	1ce78a63          	beq	a5,a4,80008060 <__printf+0x4b8>
    80007e90:	07800713          	li	a4,120
    80007e94:	1ee79e63          	bne	a5,a4,80008090 <__printf+0x4e8>
    80007e98:	f7843783          	ld	a5,-136(s0)
    80007e9c:	0007a703          	lw	a4,0(a5)
    80007ea0:	00878793          	addi	a5,a5,8
    80007ea4:	f6f43c23          	sd	a5,-136(s0)
    80007ea8:	28074263          	bltz	a4,8000812c <__printf+0x584>
    80007eac:	00003d97          	auipc	s11,0x3
    80007eb0:	86cd8d93          	addi	s11,s11,-1940 # 8000a718 <digits>
    80007eb4:	00f77793          	andi	a5,a4,15
    80007eb8:	00fd87b3          	add	a5,s11,a5
    80007ebc:	0007c683          	lbu	a3,0(a5)
    80007ec0:	00f00613          	li	a2,15
    80007ec4:	0007079b          	sext.w	a5,a4
    80007ec8:	f8d40023          	sb	a3,-128(s0)
    80007ecc:	0047559b          	srliw	a1,a4,0x4
    80007ed0:	0047569b          	srliw	a3,a4,0x4
    80007ed4:	00000c93          	li	s9,0
    80007ed8:	0ee65063          	bge	a2,a4,80007fb8 <__printf+0x410>
    80007edc:	00f6f693          	andi	a3,a3,15
    80007ee0:	00dd86b3          	add	a3,s11,a3
    80007ee4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ee8:	0087d79b          	srliw	a5,a5,0x8
    80007eec:	00100c93          	li	s9,1
    80007ef0:	f8d400a3          	sb	a3,-127(s0)
    80007ef4:	0cb67263          	bgeu	a2,a1,80007fb8 <__printf+0x410>
    80007ef8:	00f7f693          	andi	a3,a5,15
    80007efc:	00dd86b3          	add	a3,s11,a3
    80007f00:	0006c583          	lbu	a1,0(a3)
    80007f04:	00f00613          	li	a2,15
    80007f08:	0047d69b          	srliw	a3,a5,0x4
    80007f0c:	f8b40123          	sb	a1,-126(s0)
    80007f10:	0047d593          	srli	a1,a5,0x4
    80007f14:	28f67e63          	bgeu	a2,a5,800081b0 <__printf+0x608>
    80007f18:	00f6f693          	andi	a3,a3,15
    80007f1c:	00dd86b3          	add	a3,s11,a3
    80007f20:	0006c503          	lbu	a0,0(a3)
    80007f24:	0087d813          	srli	a6,a5,0x8
    80007f28:	0087d69b          	srliw	a3,a5,0x8
    80007f2c:	f8a401a3          	sb	a0,-125(s0)
    80007f30:	28b67663          	bgeu	a2,a1,800081bc <__printf+0x614>
    80007f34:	00f6f693          	andi	a3,a3,15
    80007f38:	00dd86b3          	add	a3,s11,a3
    80007f3c:	0006c583          	lbu	a1,0(a3)
    80007f40:	00c7d513          	srli	a0,a5,0xc
    80007f44:	00c7d69b          	srliw	a3,a5,0xc
    80007f48:	f8b40223          	sb	a1,-124(s0)
    80007f4c:	29067a63          	bgeu	a2,a6,800081e0 <__printf+0x638>
    80007f50:	00f6f693          	andi	a3,a3,15
    80007f54:	00dd86b3          	add	a3,s11,a3
    80007f58:	0006c583          	lbu	a1,0(a3)
    80007f5c:	0107d813          	srli	a6,a5,0x10
    80007f60:	0107d69b          	srliw	a3,a5,0x10
    80007f64:	f8b402a3          	sb	a1,-123(s0)
    80007f68:	28a67263          	bgeu	a2,a0,800081ec <__printf+0x644>
    80007f6c:	00f6f693          	andi	a3,a3,15
    80007f70:	00dd86b3          	add	a3,s11,a3
    80007f74:	0006c683          	lbu	a3,0(a3)
    80007f78:	0147d79b          	srliw	a5,a5,0x14
    80007f7c:	f8d40323          	sb	a3,-122(s0)
    80007f80:	21067663          	bgeu	a2,a6,8000818c <__printf+0x5e4>
    80007f84:	02079793          	slli	a5,a5,0x20
    80007f88:	0207d793          	srli	a5,a5,0x20
    80007f8c:	00fd8db3          	add	s11,s11,a5
    80007f90:	000dc683          	lbu	a3,0(s11)
    80007f94:	00800793          	li	a5,8
    80007f98:	00700c93          	li	s9,7
    80007f9c:	f8d403a3          	sb	a3,-121(s0)
    80007fa0:	00075c63          	bgez	a4,80007fb8 <__printf+0x410>
    80007fa4:	f9040713          	addi	a4,s0,-112
    80007fa8:	00f70733          	add	a4,a4,a5
    80007fac:	02d00693          	li	a3,45
    80007fb0:	fed70823          	sb	a3,-16(a4)
    80007fb4:	00078c93          	mv	s9,a5
    80007fb8:	f8040793          	addi	a5,s0,-128
    80007fbc:	01978cb3          	add	s9,a5,s9
    80007fc0:	f7f40d13          	addi	s10,s0,-129
    80007fc4:	000cc503          	lbu	a0,0(s9)
    80007fc8:	fffc8c93          	addi	s9,s9,-1
    80007fcc:	00000097          	auipc	ra,0x0
    80007fd0:	9f8080e7          	jalr	-1544(ra) # 800079c4 <consputc>
    80007fd4:	ff9d18e3          	bne	s10,s9,80007fc4 <__printf+0x41c>
    80007fd8:	0100006f          	j	80007fe8 <__printf+0x440>
    80007fdc:	00000097          	auipc	ra,0x0
    80007fe0:	9e8080e7          	jalr	-1560(ra) # 800079c4 <consputc>
    80007fe4:	000c8493          	mv	s1,s9
    80007fe8:	00094503          	lbu	a0,0(s2)
    80007fec:	c60510e3          	bnez	a0,80007c4c <__printf+0xa4>
    80007ff0:	e40c0ee3          	beqz	s8,80007e4c <__printf+0x2a4>
    80007ff4:	00006517          	auipc	a0,0x6
    80007ff8:	15c50513          	addi	a0,a0,348 # 8000e150 <pr>
    80007ffc:	00001097          	auipc	ra,0x1
    80008000:	94c080e7          	jalr	-1716(ra) # 80008948 <release>
    80008004:	e49ff06f          	j	80007e4c <__printf+0x2a4>
    80008008:	f7843783          	ld	a5,-136(s0)
    8000800c:	03000513          	li	a0,48
    80008010:	01000d13          	li	s10,16
    80008014:	00878713          	addi	a4,a5,8
    80008018:	0007bc83          	ld	s9,0(a5)
    8000801c:	f6e43c23          	sd	a4,-136(s0)
    80008020:	00000097          	auipc	ra,0x0
    80008024:	9a4080e7          	jalr	-1628(ra) # 800079c4 <consputc>
    80008028:	07800513          	li	a0,120
    8000802c:	00000097          	auipc	ra,0x0
    80008030:	998080e7          	jalr	-1640(ra) # 800079c4 <consputc>
    80008034:	00002d97          	auipc	s11,0x2
    80008038:	6e4d8d93          	addi	s11,s11,1764 # 8000a718 <digits>
    8000803c:	03ccd793          	srli	a5,s9,0x3c
    80008040:	00fd87b3          	add	a5,s11,a5
    80008044:	0007c503          	lbu	a0,0(a5)
    80008048:	fffd0d1b          	addiw	s10,s10,-1
    8000804c:	004c9c93          	slli	s9,s9,0x4
    80008050:	00000097          	auipc	ra,0x0
    80008054:	974080e7          	jalr	-1676(ra) # 800079c4 <consputc>
    80008058:	fe0d12e3          	bnez	s10,8000803c <__printf+0x494>
    8000805c:	f8dff06f          	j	80007fe8 <__printf+0x440>
    80008060:	f7843783          	ld	a5,-136(s0)
    80008064:	0007bc83          	ld	s9,0(a5)
    80008068:	00878793          	addi	a5,a5,8
    8000806c:	f6f43c23          	sd	a5,-136(s0)
    80008070:	000c9a63          	bnez	s9,80008084 <__printf+0x4dc>
    80008074:	1080006f          	j	8000817c <__printf+0x5d4>
    80008078:	001c8c93          	addi	s9,s9,1
    8000807c:	00000097          	auipc	ra,0x0
    80008080:	948080e7          	jalr	-1720(ra) # 800079c4 <consputc>
    80008084:	000cc503          	lbu	a0,0(s9)
    80008088:	fe0518e3          	bnez	a0,80008078 <__printf+0x4d0>
    8000808c:	f5dff06f          	j	80007fe8 <__printf+0x440>
    80008090:	02500513          	li	a0,37
    80008094:	00000097          	auipc	ra,0x0
    80008098:	930080e7          	jalr	-1744(ra) # 800079c4 <consputc>
    8000809c:	000c8513          	mv	a0,s9
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	924080e7          	jalr	-1756(ra) # 800079c4 <consputc>
    800080a8:	f41ff06f          	j	80007fe8 <__printf+0x440>
    800080ac:	02500513          	li	a0,37
    800080b0:	00000097          	auipc	ra,0x0
    800080b4:	914080e7          	jalr	-1772(ra) # 800079c4 <consputc>
    800080b8:	f31ff06f          	j	80007fe8 <__printf+0x440>
    800080bc:	00030513          	mv	a0,t1
    800080c0:	00000097          	auipc	ra,0x0
    800080c4:	7bc080e7          	jalr	1980(ra) # 8000887c <acquire>
    800080c8:	b4dff06f          	j	80007c14 <__printf+0x6c>
    800080cc:	40c0053b          	negw	a0,a2
    800080d0:	00a00713          	li	a4,10
    800080d4:	02e576bb          	remuw	a3,a0,a4
    800080d8:	00002d97          	auipc	s11,0x2
    800080dc:	640d8d93          	addi	s11,s11,1600 # 8000a718 <digits>
    800080e0:	ff700593          	li	a1,-9
    800080e4:	02069693          	slli	a3,a3,0x20
    800080e8:	0206d693          	srli	a3,a3,0x20
    800080ec:	00dd86b3          	add	a3,s11,a3
    800080f0:	0006c683          	lbu	a3,0(a3)
    800080f4:	02e557bb          	divuw	a5,a0,a4
    800080f8:	f8d40023          	sb	a3,-128(s0)
    800080fc:	10b65e63          	bge	a2,a1,80008218 <__printf+0x670>
    80008100:	06300593          	li	a1,99
    80008104:	02e7f6bb          	remuw	a3,a5,a4
    80008108:	02069693          	slli	a3,a3,0x20
    8000810c:	0206d693          	srli	a3,a3,0x20
    80008110:	00dd86b3          	add	a3,s11,a3
    80008114:	0006c683          	lbu	a3,0(a3)
    80008118:	02e7d73b          	divuw	a4,a5,a4
    8000811c:	00200793          	li	a5,2
    80008120:	f8d400a3          	sb	a3,-127(s0)
    80008124:	bca5ece3          	bltu	a1,a0,80007cfc <__printf+0x154>
    80008128:	ce5ff06f          	j	80007e0c <__printf+0x264>
    8000812c:	40e007bb          	negw	a5,a4
    80008130:	00002d97          	auipc	s11,0x2
    80008134:	5e8d8d93          	addi	s11,s11,1512 # 8000a718 <digits>
    80008138:	00f7f693          	andi	a3,a5,15
    8000813c:	00dd86b3          	add	a3,s11,a3
    80008140:	0006c583          	lbu	a1,0(a3)
    80008144:	ff100613          	li	a2,-15
    80008148:	0047d69b          	srliw	a3,a5,0x4
    8000814c:	f8b40023          	sb	a1,-128(s0)
    80008150:	0047d59b          	srliw	a1,a5,0x4
    80008154:	0ac75e63          	bge	a4,a2,80008210 <__printf+0x668>
    80008158:	00f6f693          	andi	a3,a3,15
    8000815c:	00dd86b3          	add	a3,s11,a3
    80008160:	0006c603          	lbu	a2,0(a3)
    80008164:	00f00693          	li	a3,15
    80008168:	0087d79b          	srliw	a5,a5,0x8
    8000816c:	f8c400a3          	sb	a2,-127(s0)
    80008170:	d8b6e4e3          	bltu	a3,a1,80007ef8 <__printf+0x350>
    80008174:	00200793          	li	a5,2
    80008178:	e2dff06f          	j	80007fa4 <__printf+0x3fc>
    8000817c:	00002c97          	auipc	s9,0x2
    80008180:	57cc8c93          	addi	s9,s9,1404 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80008184:	02800513          	li	a0,40
    80008188:	ef1ff06f          	j	80008078 <__printf+0x4d0>
    8000818c:	00700793          	li	a5,7
    80008190:	00600c93          	li	s9,6
    80008194:	e0dff06f          	j	80007fa0 <__printf+0x3f8>
    80008198:	00700793          	li	a5,7
    8000819c:	00600c93          	li	s9,6
    800081a0:	c69ff06f          	j	80007e08 <__printf+0x260>
    800081a4:	00300793          	li	a5,3
    800081a8:	00200c93          	li	s9,2
    800081ac:	c5dff06f          	j	80007e08 <__printf+0x260>
    800081b0:	00300793          	li	a5,3
    800081b4:	00200c93          	li	s9,2
    800081b8:	de9ff06f          	j	80007fa0 <__printf+0x3f8>
    800081bc:	00400793          	li	a5,4
    800081c0:	00300c93          	li	s9,3
    800081c4:	dddff06f          	j	80007fa0 <__printf+0x3f8>
    800081c8:	00400793          	li	a5,4
    800081cc:	00300c93          	li	s9,3
    800081d0:	c39ff06f          	j	80007e08 <__printf+0x260>
    800081d4:	00500793          	li	a5,5
    800081d8:	00400c93          	li	s9,4
    800081dc:	c2dff06f          	j	80007e08 <__printf+0x260>
    800081e0:	00500793          	li	a5,5
    800081e4:	00400c93          	li	s9,4
    800081e8:	db9ff06f          	j	80007fa0 <__printf+0x3f8>
    800081ec:	00600793          	li	a5,6
    800081f0:	00500c93          	li	s9,5
    800081f4:	dadff06f          	j	80007fa0 <__printf+0x3f8>
    800081f8:	00600793          	li	a5,6
    800081fc:	00500c93          	li	s9,5
    80008200:	c09ff06f          	j	80007e08 <__printf+0x260>
    80008204:	00800793          	li	a5,8
    80008208:	00700c93          	li	s9,7
    8000820c:	bfdff06f          	j	80007e08 <__printf+0x260>
    80008210:	00100793          	li	a5,1
    80008214:	d91ff06f          	j	80007fa4 <__printf+0x3fc>
    80008218:	00100793          	li	a5,1
    8000821c:	bf1ff06f          	j	80007e0c <__printf+0x264>
    80008220:	00900793          	li	a5,9
    80008224:	00800c93          	li	s9,8
    80008228:	be1ff06f          	j	80007e08 <__printf+0x260>
    8000822c:	00002517          	auipc	a0,0x2
    80008230:	4d450513          	addi	a0,a0,1236 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80008234:	00000097          	auipc	ra,0x0
    80008238:	918080e7          	jalr	-1768(ra) # 80007b4c <panic>

000000008000823c <printfinit>:
    8000823c:	fe010113          	addi	sp,sp,-32
    80008240:	00813823          	sd	s0,16(sp)
    80008244:	00913423          	sd	s1,8(sp)
    80008248:	00113c23          	sd	ra,24(sp)
    8000824c:	02010413          	addi	s0,sp,32
    80008250:	00006497          	auipc	s1,0x6
    80008254:	f0048493          	addi	s1,s1,-256 # 8000e150 <pr>
    80008258:	00048513          	mv	a0,s1
    8000825c:	00002597          	auipc	a1,0x2
    80008260:	4b458593          	addi	a1,a1,1204 # 8000a710 <CONSOLE_STATUS+0x700>
    80008264:	00000097          	auipc	ra,0x0
    80008268:	5f4080e7          	jalr	1524(ra) # 80008858 <initlock>
    8000826c:	01813083          	ld	ra,24(sp)
    80008270:	01013403          	ld	s0,16(sp)
    80008274:	0004ac23          	sw	zero,24(s1)
    80008278:	00813483          	ld	s1,8(sp)
    8000827c:	02010113          	addi	sp,sp,32
    80008280:	00008067          	ret

0000000080008284 <uartinit>:
    80008284:	ff010113          	addi	sp,sp,-16
    80008288:	00813423          	sd	s0,8(sp)
    8000828c:	01010413          	addi	s0,sp,16
    80008290:	100007b7          	lui	a5,0x10000
    80008294:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008298:	f8000713          	li	a4,-128
    8000829c:	00e781a3          	sb	a4,3(a5)
    800082a0:	00300713          	li	a4,3
    800082a4:	00e78023          	sb	a4,0(a5)
    800082a8:	000780a3          	sb	zero,1(a5)
    800082ac:	00e781a3          	sb	a4,3(a5)
    800082b0:	00700693          	li	a3,7
    800082b4:	00d78123          	sb	a3,2(a5)
    800082b8:	00e780a3          	sb	a4,1(a5)
    800082bc:	00813403          	ld	s0,8(sp)
    800082c0:	01010113          	addi	sp,sp,16
    800082c4:	00008067          	ret

00000000800082c8 <uartputc>:
    800082c8:	00005797          	auipc	a5,0x5
    800082cc:	b807a783          	lw	a5,-1152(a5) # 8000ce48 <panicked>
    800082d0:	00078463          	beqz	a5,800082d8 <uartputc+0x10>
    800082d4:	0000006f          	j	800082d4 <uartputc+0xc>
    800082d8:	fd010113          	addi	sp,sp,-48
    800082dc:	02813023          	sd	s0,32(sp)
    800082e0:	00913c23          	sd	s1,24(sp)
    800082e4:	01213823          	sd	s2,16(sp)
    800082e8:	01313423          	sd	s3,8(sp)
    800082ec:	02113423          	sd	ra,40(sp)
    800082f0:	03010413          	addi	s0,sp,48
    800082f4:	00005917          	auipc	s2,0x5
    800082f8:	b5c90913          	addi	s2,s2,-1188 # 8000ce50 <uart_tx_r>
    800082fc:	00093783          	ld	a5,0(s2)
    80008300:	00005497          	auipc	s1,0x5
    80008304:	b5848493          	addi	s1,s1,-1192 # 8000ce58 <uart_tx_w>
    80008308:	0004b703          	ld	a4,0(s1)
    8000830c:	02078693          	addi	a3,a5,32
    80008310:	00050993          	mv	s3,a0
    80008314:	02e69c63          	bne	a3,a4,8000834c <uartputc+0x84>
    80008318:	00001097          	auipc	ra,0x1
    8000831c:	834080e7          	jalr	-1996(ra) # 80008b4c <push_on>
    80008320:	00093783          	ld	a5,0(s2)
    80008324:	0004b703          	ld	a4,0(s1)
    80008328:	02078793          	addi	a5,a5,32
    8000832c:	00e79463          	bne	a5,a4,80008334 <uartputc+0x6c>
    80008330:	0000006f          	j	80008330 <uartputc+0x68>
    80008334:	00001097          	auipc	ra,0x1
    80008338:	88c080e7          	jalr	-1908(ra) # 80008bc0 <pop_on>
    8000833c:	00093783          	ld	a5,0(s2)
    80008340:	0004b703          	ld	a4,0(s1)
    80008344:	02078693          	addi	a3,a5,32
    80008348:	fce688e3          	beq	a3,a4,80008318 <uartputc+0x50>
    8000834c:	01f77693          	andi	a3,a4,31
    80008350:	00006597          	auipc	a1,0x6
    80008354:	e2058593          	addi	a1,a1,-480 # 8000e170 <uart_tx_buf>
    80008358:	00d586b3          	add	a3,a1,a3
    8000835c:	00170713          	addi	a4,a4,1
    80008360:	01368023          	sb	s3,0(a3)
    80008364:	00e4b023          	sd	a4,0(s1)
    80008368:	10000637          	lui	a2,0x10000
    8000836c:	02f71063          	bne	a4,a5,8000838c <uartputc+0xc4>
    80008370:	0340006f          	j	800083a4 <uartputc+0xdc>
    80008374:	00074703          	lbu	a4,0(a4)
    80008378:	00f93023          	sd	a5,0(s2)
    8000837c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008380:	00093783          	ld	a5,0(s2)
    80008384:	0004b703          	ld	a4,0(s1)
    80008388:	00f70e63          	beq	a4,a5,800083a4 <uartputc+0xdc>
    8000838c:	00564683          	lbu	a3,5(a2)
    80008390:	01f7f713          	andi	a4,a5,31
    80008394:	00e58733          	add	a4,a1,a4
    80008398:	0206f693          	andi	a3,a3,32
    8000839c:	00178793          	addi	a5,a5,1
    800083a0:	fc069ae3          	bnez	a3,80008374 <uartputc+0xac>
    800083a4:	02813083          	ld	ra,40(sp)
    800083a8:	02013403          	ld	s0,32(sp)
    800083ac:	01813483          	ld	s1,24(sp)
    800083b0:	01013903          	ld	s2,16(sp)
    800083b4:	00813983          	ld	s3,8(sp)
    800083b8:	03010113          	addi	sp,sp,48
    800083bc:	00008067          	ret

00000000800083c0 <uartputc_sync>:
    800083c0:	ff010113          	addi	sp,sp,-16
    800083c4:	00813423          	sd	s0,8(sp)
    800083c8:	01010413          	addi	s0,sp,16
    800083cc:	00005717          	auipc	a4,0x5
    800083d0:	a7c72703          	lw	a4,-1412(a4) # 8000ce48 <panicked>
    800083d4:	02071663          	bnez	a4,80008400 <uartputc_sync+0x40>
    800083d8:	00050793          	mv	a5,a0
    800083dc:	100006b7          	lui	a3,0x10000
    800083e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800083e4:	02077713          	andi	a4,a4,32
    800083e8:	fe070ce3          	beqz	a4,800083e0 <uartputc_sync+0x20>
    800083ec:	0ff7f793          	andi	a5,a5,255
    800083f0:	00f68023          	sb	a5,0(a3)
    800083f4:	00813403          	ld	s0,8(sp)
    800083f8:	01010113          	addi	sp,sp,16
    800083fc:	00008067          	ret
    80008400:	0000006f          	j	80008400 <uartputc_sync+0x40>

0000000080008404 <uartstart>:
    80008404:	ff010113          	addi	sp,sp,-16
    80008408:	00813423          	sd	s0,8(sp)
    8000840c:	01010413          	addi	s0,sp,16
    80008410:	00005617          	auipc	a2,0x5
    80008414:	a4060613          	addi	a2,a2,-1472 # 8000ce50 <uart_tx_r>
    80008418:	00005517          	auipc	a0,0x5
    8000841c:	a4050513          	addi	a0,a0,-1472 # 8000ce58 <uart_tx_w>
    80008420:	00063783          	ld	a5,0(a2)
    80008424:	00053703          	ld	a4,0(a0)
    80008428:	04f70263          	beq	a4,a5,8000846c <uartstart+0x68>
    8000842c:	100005b7          	lui	a1,0x10000
    80008430:	00006817          	auipc	a6,0x6
    80008434:	d4080813          	addi	a6,a6,-704 # 8000e170 <uart_tx_buf>
    80008438:	01c0006f          	j	80008454 <uartstart+0x50>
    8000843c:	0006c703          	lbu	a4,0(a3)
    80008440:	00f63023          	sd	a5,0(a2)
    80008444:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008448:	00063783          	ld	a5,0(a2)
    8000844c:	00053703          	ld	a4,0(a0)
    80008450:	00f70e63          	beq	a4,a5,8000846c <uartstart+0x68>
    80008454:	01f7f713          	andi	a4,a5,31
    80008458:	00e806b3          	add	a3,a6,a4
    8000845c:	0055c703          	lbu	a4,5(a1)
    80008460:	00178793          	addi	a5,a5,1
    80008464:	02077713          	andi	a4,a4,32
    80008468:	fc071ae3          	bnez	a4,8000843c <uartstart+0x38>
    8000846c:	00813403          	ld	s0,8(sp)
    80008470:	01010113          	addi	sp,sp,16
    80008474:	00008067          	ret

0000000080008478 <uartgetc>:
    80008478:	ff010113          	addi	sp,sp,-16
    8000847c:	00813423          	sd	s0,8(sp)
    80008480:	01010413          	addi	s0,sp,16
    80008484:	10000737          	lui	a4,0x10000
    80008488:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000848c:	0017f793          	andi	a5,a5,1
    80008490:	00078c63          	beqz	a5,800084a8 <uartgetc+0x30>
    80008494:	00074503          	lbu	a0,0(a4)
    80008498:	0ff57513          	andi	a0,a0,255
    8000849c:	00813403          	ld	s0,8(sp)
    800084a0:	01010113          	addi	sp,sp,16
    800084a4:	00008067          	ret
    800084a8:	fff00513          	li	a0,-1
    800084ac:	ff1ff06f          	j	8000849c <uartgetc+0x24>

00000000800084b0 <uartintr>:
    800084b0:	100007b7          	lui	a5,0x10000
    800084b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800084b8:	0017f793          	andi	a5,a5,1
    800084bc:	0a078463          	beqz	a5,80008564 <uartintr+0xb4>
    800084c0:	fe010113          	addi	sp,sp,-32
    800084c4:	00813823          	sd	s0,16(sp)
    800084c8:	00913423          	sd	s1,8(sp)
    800084cc:	00113c23          	sd	ra,24(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	100004b7          	lui	s1,0x10000
    800084d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800084dc:	0ff57513          	andi	a0,a0,255
    800084e0:	fffff097          	auipc	ra,0xfffff
    800084e4:	534080e7          	jalr	1332(ra) # 80007a14 <consoleintr>
    800084e8:	0054c783          	lbu	a5,5(s1)
    800084ec:	0017f793          	andi	a5,a5,1
    800084f0:	fe0794e3          	bnez	a5,800084d8 <uartintr+0x28>
    800084f4:	00005617          	auipc	a2,0x5
    800084f8:	95c60613          	addi	a2,a2,-1700 # 8000ce50 <uart_tx_r>
    800084fc:	00005517          	auipc	a0,0x5
    80008500:	95c50513          	addi	a0,a0,-1700 # 8000ce58 <uart_tx_w>
    80008504:	00063783          	ld	a5,0(a2)
    80008508:	00053703          	ld	a4,0(a0)
    8000850c:	04f70263          	beq	a4,a5,80008550 <uartintr+0xa0>
    80008510:	100005b7          	lui	a1,0x10000
    80008514:	00006817          	auipc	a6,0x6
    80008518:	c5c80813          	addi	a6,a6,-932 # 8000e170 <uart_tx_buf>
    8000851c:	01c0006f          	j	80008538 <uartintr+0x88>
    80008520:	0006c703          	lbu	a4,0(a3)
    80008524:	00f63023          	sd	a5,0(a2)
    80008528:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000852c:	00063783          	ld	a5,0(a2)
    80008530:	00053703          	ld	a4,0(a0)
    80008534:	00f70e63          	beq	a4,a5,80008550 <uartintr+0xa0>
    80008538:	01f7f713          	andi	a4,a5,31
    8000853c:	00e806b3          	add	a3,a6,a4
    80008540:	0055c703          	lbu	a4,5(a1)
    80008544:	00178793          	addi	a5,a5,1
    80008548:	02077713          	andi	a4,a4,32
    8000854c:	fc071ae3          	bnez	a4,80008520 <uartintr+0x70>
    80008550:	01813083          	ld	ra,24(sp)
    80008554:	01013403          	ld	s0,16(sp)
    80008558:	00813483          	ld	s1,8(sp)
    8000855c:	02010113          	addi	sp,sp,32
    80008560:	00008067          	ret
    80008564:	00005617          	auipc	a2,0x5
    80008568:	8ec60613          	addi	a2,a2,-1812 # 8000ce50 <uart_tx_r>
    8000856c:	00005517          	auipc	a0,0x5
    80008570:	8ec50513          	addi	a0,a0,-1812 # 8000ce58 <uart_tx_w>
    80008574:	00063783          	ld	a5,0(a2)
    80008578:	00053703          	ld	a4,0(a0)
    8000857c:	04f70263          	beq	a4,a5,800085c0 <uartintr+0x110>
    80008580:	100005b7          	lui	a1,0x10000
    80008584:	00006817          	auipc	a6,0x6
    80008588:	bec80813          	addi	a6,a6,-1044 # 8000e170 <uart_tx_buf>
    8000858c:	01c0006f          	j	800085a8 <uartintr+0xf8>
    80008590:	0006c703          	lbu	a4,0(a3)
    80008594:	00f63023          	sd	a5,0(a2)
    80008598:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000859c:	00063783          	ld	a5,0(a2)
    800085a0:	00053703          	ld	a4,0(a0)
    800085a4:	02f70063          	beq	a4,a5,800085c4 <uartintr+0x114>
    800085a8:	01f7f713          	andi	a4,a5,31
    800085ac:	00e806b3          	add	a3,a6,a4
    800085b0:	0055c703          	lbu	a4,5(a1)
    800085b4:	00178793          	addi	a5,a5,1
    800085b8:	02077713          	andi	a4,a4,32
    800085bc:	fc071ae3          	bnez	a4,80008590 <uartintr+0xe0>
    800085c0:	00008067          	ret
    800085c4:	00008067          	ret

00000000800085c8 <kinit>:
    800085c8:	fc010113          	addi	sp,sp,-64
    800085cc:	02913423          	sd	s1,40(sp)
    800085d0:	fffff7b7          	lui	a5,0xfffff
    800085d4:	00007497          	auipc	s1,0x7
    800085d8:	bbb48493          	addi	s1,s1,-1093 # 8000f18f <end+0xfff>
    800085dc:	02813823          	sd	s0,48(sp)
    800085e0:	01313c23          	sd	s3,24(sp)
    800085e4:	00f4f4b3          	and	s1,s1,a5
    800085e8:	02113c23          	sd	ra,56(sp)
    800085ec:	03213023          	sd	s2,32(sp)
    800085f0:	01413823          	sd	s4,16(sp)
    800085f4:	01513423          	sd	s5,8(sp)
    800085f8:	04010413          	addi	s0,sp,64
    800085fc:	000017b7          	lui	a5,0x1
    80008600:	01100993          	li	s3,17
    80008604:	00f487b3          	add	a5,s1,a5
    80008608:	01b99993          	slli	s3,s3,0x1b
    8000860c:	06f9e063          	bltu	s3,a5,8000866c <kinit+0xa4>
    80008610:	00006a97          	auipc	s5,0x6
    80008614:	b80a8a93          	addi	s5,s5,-1152 # 8000e190 <end>
    80008618:	0754ec63          	bltu	s1,s5,80008690 <kinit+0xc8>
    8000861c:	0734fa63          	bgeu	s1,s3,80008690 <kinit+0xc8>
    80008620:	00088a37          	lui	s4,0x88
    80008624:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008628:	00005917          	auipc	s2,0x5
    8000862c:	83890913          	addi	s2,s2,-1992 # 8000ce60 <kmem>
    80008630:	00ca1a13          	slli	s4,s4,0xc
    80008634:	0140006f          	j	80008648 <kinit+0x80>
    80008638:	000017b7          	lui	a5,0x1
    8000863c:	00f484b3          	add	s1,s1,a5
    80008640:	0554e863          	bltu	s1,s5,80008690 <kinit+0xc8>
    80008644:	0534f663          	bgeu	s1,s3,80008690 <kinit+0xc8>
    80008648:	00001637          	lui	a2,0x1
    8000864c:	00100593          	li	a1,1
    80008650:	00048513          	mv	a0,s1
    80008654:	00000097          	auipc	ra,0x0
    80008658:	5e4080e7          	jalr	1508(ra) # 80008c38 <__memset>
    8000865c:	00093783          	ld	a5,0(s2)
    80008660:	00f4b023          	sd	a5,0(s1)
    80008664:	00993023          	sd	s1,0(s2)
    80008668:	fd4498e3          	bne	s1,s4,80008638 <kinit+0x70>
    8000866c:	03813083          	ld	ra,56(sp)
    80008670:	03013403          	ld	s0,48(sp)
    80008674:	02813483          	ld	s1,40(sp)
    80008678:	02013903          	ld	s2,32(sp)
    8000867c:	01813983          	ld	s3,24(sp)
    80008680:	01013a03          	ld	s4,16(sp)
    80008684:	00813a83          	ld	s5,8(sp)
    80008688:	04010113          	addi	sp,sp,64
    8000868c:	00008067          	ret
    80008690:	00002517          	auipc	a0,0x2
    80008694:	0a050513          	addi	a0,a0,160 # 8000a730 <digits+0x18>
    80008698:	fffff097          	auipc	ra,0xfffff
    8000869c:	4b4080e7          	jalr	1204(ra) # 80007b4c <panic>

00000000800086a0 <freerange>:
    800086a0:	fc010113          	addi	sp,sp,-64
    800086a4:	000017b7          	lui	a5,0x1
    800086a8:	02913423          	sd	s1,40(sp)
    800086ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800086b0:	009504b3          	add	s1,a0,s1
    800086b4:	fffff537          	lui	a0,0xfffff
    800086b8:	02813823          	sd	s0,48(sp)
    800086bc:	02113c23          	sd	ra,56(sp)
    800086c0:	03213023          	sd	s2,32(sp)
    800086c4:	01313c23          	sd	s3,24(sp)
    800086c8:	01413823          	sd	s4,16(sp)
    800086cc:	01513423          	sd	s5,8(sp)
    800086d0:	01613023          	sd	s6,0(sp)
    800086d4:	04010413          	addi	s0,sp,64
    800086d8:	00a4f4b3          	and	s1,s1,a0
    800086dc:	00f487b3          	add	a5,s1,a5
    800086e0:	06f5e463          	bltu	a1,a5,80008748 <freerange+0xa8>
    800086e4:	00006a97          	auipc	s5,0x6
    800086e8:	aaca8a93          	addi	s5,s5,-1364 # 8000e190 <end>
    800086ec:	0954e263          	bltu	s1,s5,80008770 <freerange+0xd0>
    800086f0:	01100993          	li	s3,17
    800086f4:	01b99993          	slli	s3,s3,0x1b
    800086f8:	0734fc63          	bgeu	s1,s3,80008770 <freerange+0xd0>
    800086fc:	00058a13          	mv	s4,a1
    80008700:	00004917          	auipc	s2,0x4
    80008704:	76090913          	addi	s2,s2,1888 # 8000ce60 <kmem>
    80008708:	00002b37          	lui	s6,0x2
    8000870c:	0140006f          	j	80008720 <freerange+0x80>
    80008710:	000017b7          	lui	a5,0x1
    80008714:	00f484b3          	add	s1,s1,a5
    80008718:	0554ec63          	bltu	s1,s5,80008770 <freerange+0xd0>
    8000871c:	0534fa63          	bgeu	s1,s3,80008770 <freerange+0xd0>
    80008720:	00001637          	lui	a2,0x1
    80008724:	00100593          	li	a1,1
    80008728:	00048513          	mv	a0,s1
    8000872c:	00000097          	auipc	ra,0x0
    80008730:	50c080e7          	jalr	1292(ra) # 80008c38 <__memset>
    80008734:	00093703          	ld	a4,0(s2)
    80008738:	016487b3          	add	a5,s1,s6
    8000873c:	00e4b023          	sd	a4,0(s1)
    80008740:	00993023          	sd	s1,0(s2)
    80008744:	fcfa76e3          	bgeu	s4,a5,80008710 <freerange+0x70>
    80008748:	03813083          	ld	ra,56(sp)
    8000874c:	03013403          	ld	s0,48(sp)
    80008750:	02813483          	ld	s1,40(sp)
    80008754:	02013903          	ld	s2,32(sp)
    80008758:	01813983          	ld	s3,24(sp)
    8000875c:	01013a03          	ld	s4,16(sp)
    80008760:	00813a83          	ld	s5,8(sp)
    80008764:	00013b03          	ld	s6,0(sp)
    80008768:	04010113          	addi	sp,sp,64
    8000876c:	00008067          	ret
    80008770:	00002517          	auipc	a0,0x2
    80008774:	fc050513          	addi	a0,a0,-64 # 8000a730 <digits+0x18>
    80008778:	fffff097          	auipc	ra,0xfffff
    8000877c:	3d4080e7          	jalr	980(ra) # 80007b4c <panic>

0000000080008780 <kfree>:
    80008780:	fe010113          	addi	sp,sp,-32
    80008784:	00813823          	sd	s0,16(sp)
    80008788:	00113c23          	sd	ra,24(sp)
    8000878c:	00913423          	sd	s1,8(sp)
    80008790:	02010413          	addi	s0,sp,32
    80008794:	03451793          	slli	a5,a0,0x34
    80008798:	04079c63          	bnez	a5,800087f0 <kfree+0x70>
    8000879c:	00006797          	auipc	a5,0x6
    800087a0:	9f478793          	addi	a5,a5,-1548 # 8000e190 <end>
    800087a4:	00050493          	mv	s1,a0
    800087a8:	04f56463          	bltu	a0,a5,800087f0 <kfree+0x70>
    800087ac:	01100793          	li	a5,17
    800087b0:	01b79793          	slli	a5,a5,0x1b
    800087b4:	02f57e63          	bgeu	a0,a5,800087f0 <kfree+0x70>
    800087b8:	00001637          	lui	a2,0x1
    800087bc:	00100593          	li	a1,1
    800087c0:	00000097          	auipc	ra,0x0
    800087c4:	478080e7          	jalr	1144(ra) # 80008c38 <__memset>
    800087c8:	00004797          	auipc	a5,0x4
    800087cc:	69878793          	addi	a5,a5,1688 # 8000ce60 <kmem>
    800087d0:	0007b703          	ld	a4,0(a5)
    800087d4:	01813083          	ld	ra,24(sp)
    800087d8:	01013403          	ld	s0,16(sp)
    800087dc:	00e4b023          	sd	a4,0(s1)
    800087e0:	0097b023          	sd	s1,0(a5)
    800087e4:	00813483          	ld	s1,8(sp)
    800087e8:	02010113          	addi	sp,sp,32
    800087ec:	00008067          	ret
    800087f0:	00002517          	auipc	a0,0x2
    800087f4:	f4050513          	addi	a0,a0,-192 # 8000a730 <digits+0x18>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	354080e7          	jalr	852(ra) # 80007b4c <panic>

0000000080008800 <kalloc>:
    80008800:	fe010113          	addi	sp,sp,-32
    80008804:	00813823          	sd	s0,16(sp)
    80008808:	00913423          	sd	s1,8(sp)
    8000880c:	00113c23          	sd	ra,24(sp)
    80008810:	02010413          	addi	s0,sp,32
    80008814:	00004797          	auipc	a5,0x4
    80008818:	64c78793          	addi	a5,a5,1612 # 8000ce60 <kmem>
    8000881c:	0007b483          	ld	s1,0(a5)
    80008820:	02048063          	beqz	s1,80008840 <kalloc+0x40>
    80008824:	0004b703          	ld	a4,0(s1)
    80008828:	00001637          	lui	a2,0x1
    8000882c:	00500593          	li	a1,5
    80008830:	00048513          	mv	a0,s1
    80008834:	00e7b023          	sd	a4,0(a5)
    80008838:	00000097          	auipc	ra,0x0
    8000883c:	400080e7          	jalr	1024(ra) # 80008c38 <__memset>
    80008840:	01813083          	ld	ra,24(sp)
    80008844:	01013403          	ld	s0,16(sp)
    80008848:	00048513          	mv	a0,s1
    8000884c:	00813483          	ld	s1,8(sp)
    80008850:	02010113          	addi	sp,sp,32
    80008854:	00008067          	ret

0000000080008858 <initlock>:
    80008858:	ff010113          	addi	sp,sp,-16
    8000885c:	00813423          	sd	s0,8(sp)
    80008860:	01010413          	addi	s0,sp,16
    80008864:	00813403          	ld	s0,8(sp)
    80008868:	00b53423          	sd	a1,8(a0)
    8000886c:	00052023          	sw	zero,0(a0)
    80008870:	00053823          	sd	zero,16(a0)
    80008874:	01010113          	addi	sp,sp,16
    80008878:	00008067          	ret

000000008000887c <acquire>:
    8000887c:	fe010113          	addi	sp,sp,-32
    80008880:	00813823          	sd	s0,16(sp)
    80008884:	00913423          	sd	s1,8(sp)
    80008888:	00113c23          	sd	ra,24(sp)
    8000888c:	01213023          	sd	s2,0(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	00050493          	mv	s1,a0
    80008898:	10002973          	csrr	s2,sstatus
    8000889c:	100027f3          	csrr	a5,sstatus
    800088a0:	ffd7f793          	andi	a5,a5,-3
    800088a4:	10079073          	csrw	sstatus,a5
    800088a8:	fffff097          	auipc	ra,0xfffff
    800088ac:	8ec080e7          	jalr	-1812(ra) # 80007194 <mycpu>
    800088b0:	07852783          	lw	a5,120(a0)
    800088b4:	06078e63          	beqz	a5,80008930 <acquire+0xb4>
    800088b8:	fffff097          	auipc	ra,0xfffff
    800088bc:	8dc080e7          	jalr	-1828(ra) # 80007194 <mycpu>
    800088c0:	07852783          	lw	a5,120(a0)
    800088c4:	0004a703          	lw	a4,0(s1)
    800088c8:	0017879b          	addiw	a5,a5,1
    800088cc:	06f52c23          	sw	a5,120(a0)
    800088d0:	04071063          	bnez	a4,80008910 <acquire+0x94>
    800088d4:	00100713          	li	a4,1
    800088d8:	00070793          	mv	a5,a4
    800088dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800088e0:	0007879b          	sext.w	a5,a5
    800088e4:	fe079ae3          	bnez	a5,800088d8 <acquire+0x5c>
    800088e8:	0ff0000f          	fence
    800088ec:	fffff097          	auipc	ra,0xfffff
    800088f0:	8a8080e7          	jalr	-1880(ra) # 80007194 <mycpu>
    800088f4:	01813083          	ld	ra,24(sp)
    800088f8:	01013403          	ld	s0,16(sp)
    800088fc:	00a4b823          	sd	a0,16(s1)
    80008900:	00013903          	ld	s2,0(sp)
    80008904:	00813483          	ld	s1,8(sp)
    80008908:	02010113          	addi	sp,sp,32
    8000890c:	00008067          	ret
    80008910:	0104b903          	ld	s2,16(s1)
    80008914:	fffff097          	auipc	ra,0xfffff
    80008918:	880080e7          	jalr	-1920(ra) # 80007194 <mycpu>
    8000891c:	faa91ce3          	bne	s2,a0,800088d4 <acquire+0x58>
    80008920:	00002517          	auipc	a0,0x2
    80008924:	e1850513          	addi	a0,a0,-488 # 8000a738 <digits+0x20>
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	224080e7          	jalr	548(ra) # 80007b4c <panic>
    80008930:	00195913          	srli	s2,s2,0x1
    80008934:	fffff097          	auipc	ra,0xfffff
    80008938:	860080e7          	jalr	-1952(ra) # 80007194 <mycpu>
    8000893c:	00197913          	andi	s2,s2,1
    80008940:	07252e23          	sw	s2,124(a0)
    80008944:	f75ff06f          	j	800088b8 <acquire+0x3c>

0000000080008948 <release>:
    80008948:	fe010113          	addi	sp,sp,-32
    8000894c:	00813823          	sd	s0,16(sp)
    80008950:	00113c23          	sd	ra,24(sp)
    80008954:	00913423          	sd	s1,8(sp)
    80008958:	01213023          	sd	s2,0(sp)
    8000895c:	02010413          	addi	s0,sp,32
    80008960:	00052783          	lw	a5,0(a0)
    80008964:	00079a63          	bnez	a5,80008978 <release+0x30>
    80008968:	00002517          	auipc	a0,0x2
    8000896c:	dd850513          	addi	a0,a0,-552 # 8000a740 <digits+0x28>
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	1dc080e7          	jalr	476(ra) # 80007b4c <panic>
    80008978:	01053903          	ld	s2,16(a0)
    8000897c:	00050493          	mv	s1,a0
    80008980:	fffff097          	auipc	ra,0xfffff
    80008984:	814080e7          	jalr	-2028(ra) # 80007194 <mycpu>
    80008988:	fea910e3          	bne	s2,a0,80008968 <release+0x20>
    8000898c:	0004b823          	sd	zero,16(s1)
    80008990:	0ff0000f          	fence
    80008994:	0f50000f          	fence	iorw,ow
    80008998:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000899c:	ffffe097          	auipc	ra,0xffffe
    800089a0:	7f8080e7          	jalr	2040(ra) # 80007194 <mycpu>
    800089a4:	100027f3          	csrr	a5,sstatus
    800089a8:	0027f793          	andi	a5,a5,2
    800089ac:	04079a63          	bnez	a5,80008a00 <release+0xb8>
    800089b0:	07852783          	lw	a5,120(a0)
    800089b4:	02f05e63          	blez	a5,800089f0 <release+0xa8>
    800089b8:	fff7871b          	addiw	a4,a5,-1
    800089bc:	06e52c23          	sw	a4,120(a0)
    800089c0:	00071c63          	bnez	a4,800089d8 <release+0x90>
    800089c4:	07c52783          	lw	a5,124(a0)
    800089c8:	00078863          	beqz	a5,800089d8 <release+0x90>
    800089cc:	100027f3          	csrr	a5,sstatus
    800089d0:	0027e793          	ori	a5,a5,2
    800089d4:	10079073          	csrw	sstatus,a5
    800089d8:	01813083          	ld	ra,24(sp)
    800089dc:	01013403          	ld	s0,16(sp)
    800089e0:	00813483          	ld	s1,8(sp)
    800089e4:	00013903          	ld	s2,0(sp)
    800089e8:	02010113          	addi	sp,sp,32
    800089ec:	00008067          	ret
    800089f0:	00002517          	auipc	a0,0x2
    800089f4:	d7050513          	addi	a0,a0,-656 # 8000a760 <digits+0x48>
    800089f8:	fffff097          	auipc	ra,0xfffff
    800089fc:	154080e7          	jalr	340(ra) # 80007b4c <panic>
    80008a00:	00002517          	auipc	a0,0x2
    80008a04:	d4850513          	addi	a0,a0,-696 # 8000a748 <digits+0x30>
    80008a08:	fffff097          	auipc	ra,0xfffff
    80008a0c:	144080e7          	jalr	324(ra) # 80007b4c <panic>

0000000080008a10 <holding>:
    80008a10:	00052783          	lw	a5,0(a0)
    80008a14:	00079663          	bnez	a5,80008a20 <holding+0x10>
    80008a18:	00000513          	li	a0,0
    80008a1c:	00008067          	ret
    80008a20:	fe010113          	addi	sp,sp,-32
    80008a24:	00813823          	sd	s0,16(sp)
    80008a28:	00913423          	sd	s1,8(sp)
    80008a2c:	00113c23          	sd	ra,24(sp)
    80008a30:	02010413          	addi	s0,sp,32
    80008a34:	01053483          	ld	s1,16(a0)
    80008a38:	ffffe097          	auipc	ra,0xffffe
    80008a3c:	75c080e7          	jalr	1884(ra) # 80007194 <mycpu>
    80008a40:	01813083          	ld	ra,24(sp)
    80008a44:	01013403          	ld	s0,16(sp)
    80008a48:	40a48533          	sub	a0,s1,a0
    80008a4c:	00153513          	seqz	a0,a0
    80008a50:	00813483          	ld	s1,8(sp)
    80008a54:	02010113          	addi	sp,sp,32
    80008a58:	00008067          	ret

0000000080008a5c <push_off>:
    80008a5c:	fe010113          	addi	sp,sp,-32
    80008a60:	00813823          	sd	s0,16(sp)
    80008a64:	00113c23          	sd	ra,24(sp)
    80008a68:	00913423          	sd	s1,8(sp)
    80008a6c:	02010413          	addi	s0,sp,32
    80008a70:	100024f3          	csrr	s1,sstatus
    80008a74:	100027f3          	csrr	a5,sstatus
    80008a78:	ffd7f793          	andi	a5,a5,-3
    80008a7c:	10079073          	csrw	sstatus,a5
    80008a80:	ffffe097          	auipc	ra,0xffffe
    80008a84:	714080e7          	jalr	1812(ra) # 80007194 <mycpu>
    80008a88:	07852783          	lw	a5,120(a0)
    80008a8c:	02078663          	beqz	a5,80008ab8 <push_off+0x5c>
    80008a90:	ffffe097          	auipc	ra,0xffffe
    80008a94:	704080e7          	jalr	1796(ra) # 80007194 <mycpu>
    80008a98:	07852783          	lw	a5,120(a0)
    80008a9c:	01813083          	ld	ra,24(sp)
    80008aa0:	01013403          	ld	s0,16(sp)
    80008aa4:	0017879b          	addiw	a5,a5,1
    80008aa8:	06f52c23          	sw	a5,120(a0)
    80008aac:	00813483          	ld	s1,8(sp)
    80008ab0:	02010113          	addi	sp,sp,32
    80008ab4:	00008067          	ret
    80008ab8:	0014d493          	srli	s1,s1,0x1
    80008abc:	ffffe097          	auipc	ra,0xffffe
    80008ac0:	6d8080e7          	jalr	1752(ra) # 80007194 <mycpu>
    80008ac4:	0014f493          	andi	s1,s1,1
    80008ac8:	06952e23          	sw	s1,124(a0)
    80008acc:	fc5ff06f          	j	80008a90 <push_off+0x34>

0000000080008ad0 <pop_off>:
    80008ad0:	ff010113          	addi	sp,sp,-16
    80008ad4:	00813023          	sd	s0,0(sp)
    80008ad8:	00113423          	sd	ra,8(sp)
    80008adc:	01010413          	addi	s0,sp,16
    80008ae0:	ffffe097          	auipc	ra,0xffffe
    80008ae4:	6b4080e7          	jalr	1716(ra) # 80007194 <mycpu>
    80008ae8:	100027f3          	csrr	a5,sstatus
    80008aec:	0027f793          	andi	a5,a5,2
    80008af0:	04079663          	bnez	a5,80008b3c <pop_off+0x6c>
    80008af4:	07852783          	lw	a5,120(a0)
    80008af8:	02f05a63          	blez	a5,80008b2c <pop_off+0x5c>
    80008afc:	fff7871b          	addiw	a4,a5,-1
    80008b00:	06e52c23          	sw	a4,120(a0)
    80008b04:	00071c63          	bnez	a4,80008b1c <pop_off+0x4c>
    80008b08:	07c52783          	lw	a5,124(a0)
    80008b0c:	00078863          	beqz	a5,80008b1c <pop_off+0x4c>
    80008b10:	100027f3          	csrr	a5,sstatus
    80008b14:	0027e793          	ori	a5,a5,2
    80008b18:	10079073          	csrw	sstatus,a5
    80008b1c:	00813083          	ld	ra,8(sp)
    80008b20:	00013403          	ld	s0,0(sp)
    80008b24:	01010113          	addi	sp,sp,16
    80008b28:	00008067          	ret
    80008b2c:	00002517          	auipc	a0,0x2
    80008b30:	c3450513          	addi	a0,a0,-972 # 8000a760 <digits+0x48>
    80008b34:	fffff097          	auipc	ra,0xfffff
    80008b38:	018080e7          	jalr	24(ra) # 80007b4c <panic>
    80008b3c:	00002517          	auipc	a0,0x2
    80008b40:	c0c50513          	addi	a0,a0,-1012 # 8000a748 <digits+0x30>
    80008b44:	fffff097          	auipc	ra,0xfffff
    80008b48:	008080e7          	jalr	8(ra) # 80007b4c <panic>

0000000080008b4c <push_on>:
    80008b4c:	fe010113          	addi	sp,sp,-32
    80008b50:	00813823          	sd	s0,16(sp)
    80008b54:	00113c23          	sd	ra,24(sp)
    80008b58:	00913423          	sd	s1,8(sp)
    80008b5c:	02010413          	addi	s0,sp,32
    80008b60:	100024f3          	csrr	s1,sstatus
    80008b64:	100027f3          	csrr	a5,sstatus
    80008b68:	0027e793          	ori	a5,a5,2
    80008b6c:	10079073          	csrw	sstatus,a5
    80008b70:	ffffe097          	auipc	ra,0xffffe
    80008b74:	624080e7          	jalr	1572(ra) # 80007194 <mycpu>
    80008b78:	07852783          	lw	a5,120(a0)
    80008b7c:	02078663          	beqz	a5,80008ba8 <push_on+0x5c>
    80008b80:	ffffe097          	auipc	ra,0xffffe
    80008b84:	614080e7          	jalr	1556(ra) # 80007194 <mycpu>
    80008b88:	07852783          	lw	a5,120(a0)
    80008b8c:	01813083          	ld	ra,24(sp)
    80008b90:	01013403          	ld	s0,16(sp)
    80008b94:	0017879b          	addiw	a5,a5,1
    80008b98:	06f52c23          	sw	a5,120(a0)
    80008b9c:	00813483          	ld	s1,8(sp)
    80008ba0:	02010113          	addi	sp,sp,32
    80008ba4:	00008067          	ret
    80008ba8:	0014d493          	srli	s1,s1,0x1
    80008bac:	ffffe097          	auipc	ra,0xffffe
    80008bb0:	5e8080e7          	jalr	1512(ra) # 80007194 <mycpu>
    80008bb4:	0014f493          	andi	s1,s1,1
    80008bb8:	06952e23          	sw	s1,124(a0)
    80008bbc:	fc5ff06f          	j	80008b80 <push_on+0x34>

0000000080008bc0 <pop_on>:
    80008bc0:	ff010113          	addi	sp,sp,-16
    80008bc4:	00813023          	sd	s0,0(sp)
    80008bc8:	00113423          	sd	ra,8(sp)
    80008bcc:	01010413          	addi	s0,sp,16
    80008bd0:	ffffe097          	auipc	ra,0xffffe
    80008bd4:	5c4080e7          	jalr	1476(ra) # 80007194 <mycpu>
    80008bd8:	100027f3          	csrr	a5,sstatus
    80008bdc:	0027f793          	andi	a5,a5,2
    80008be0:	04078463          	beqz	a5,80008c28 <pop_on+0x68>
    80008be4:	07852783          	lw	a5,120(a0)
    80008be8:	02f05863          	blez	a5,80008c18 <pop_on+0x58>
    80008bec:	fff7879b          	addiw	a5,a5,-1
    80008bf0:	06f52c23          	sw	a5,120(a0)
    80008bf4:	07853783          	ld	a5,120(a0)
    80008bf8:	00079863          	bnez	a5,80008c08 <pop_on+0x48>
    80008bfc:	100027f3          	csrr	a5,sstatus
    80008c00:	ffd7f793          	andi	a5,a5,-3
    80008c04:	10079073          	csrw	sstatus,a5
    80008c08:	00813083          	ld	ra,8(sp)
    80008c0c:	00013403          	ld	s0,0(sp)
    80008c10:	01010113          	addi	sp,sp,16
    80008c14:	00008067          	ret
    80008c18:	00002517          	auipc	a0,0x2
    80008c1c:	b7050513          	addi	a0,a0,-1168 # 8000a788 <digits+0x70>
    80008c20:	fffff097          	auipc	ra,0xfffff
    80008c24:	f2c080e7          	jalr	-212(ra) # 80007b4c <panic>
    80008c28:	00002517          	auipc	a0,0x2
    80008c2c:	b4050513          	addi	a0,a0,-1216 # 8000a768 <digits+0x50>
    80008c30:	fffff097          	auipc	ra,0xfffff
    80008c34:	f1c080e7          	jalr	-228(ra) # 80007b4c <panic>

0000000080008c38 <__memset>:
    80008c38:	ff010113          	addi	sp,sp,-16
    80008c3c:	00813423          	sd	s0,8(sp)
    80008c40:	01010413          	addi	s0,sp,16
    80008c44:	1a060e63          	beqz	a2,80008e00 <__memset+0x1c8>
    80008c48:	40a007b3          	neg	a5,a0
    80008c4c:	0077f793          	andi	a5,a5,7
    80008c50:	00778693          	addi	a3,a5,7
    80008c54:	00b00813          	li	a6,11
    80008c58:	0ff5f593          	andi	a1,a1,255
    80008c5c:	fff6071b          	addiw	a4,a2,-1
    80008c60:	1b06e663          	bltu	a3,a6,80008e0c <__memset+0x1d4>
    80008c64:	1cd76463          	bltu	a4,a3,80008e2c <__memset+0x1f4>
    80008c68:	1a078e63          	beqz	a5,80008e24 <__memset+0x1ec>
    80008c6c:	00b50023          	sb	a1,0(a0)
    80008c70:	00100713          	li	a4,1
    80008c74:	1ae78463          	beq	a5,a4,80008e1c <__memset+0x1e4>
    80008c78:	00b500a3          	sb	a1,1(a0)
    80008c7c:	00200713          	li	a4,2
    80008c80:	1ae78a63          	beq	a5,a4,80008e34 <__memset+0x1fc>
    80008c84:	00b50123          	sb	a1,2(a0)
    80008c88:	00300713          	li	a4,3
    80008c8c:	18e78463          	beq	a5,a4,80008e14 <__memset+0x1dc>
    80008c90:	00b501a3          	sb	a1,3(a0)
    80008c94:	00400713          	li	a4,4
    80008c98:	1ae78263          	beq	a5,a4,80008e3c <__memset+0x204>
    80008c9c:	00b50223          	sb	a1,4(a0)
    80008ca0:	00500713          	li	a4,5
    80008ca4:	1ae78063          	beq	a5,a4,80008e44 <__memset+0x20c>
    80008ca8:	00b502a3          	sb	a1,5(a0)
    80008cac:	00700713          	li	a4,7
    80008cb0:	18e79e63          	bne	a5,a4,80008e4c <__memset+0x214>
    80008cb4:	00b50323          	sb	a1,6(a0)
    80008cb8:	00700e93          	li	t4,7
    80008cbc:	00859713          	slli	a4,a1,0x8
    80008cc0:	00e5e733          	or	a4,a1,a4
    80008cc4:	01059e13          	slli	t3,a1,0x10
    80008cc8:	01c76e33          	or	t3,a4,t3
    80008ccc:	01859313          	slli	t1,a1,0x18
    80008cd0:	006e6333          	or	t1,t3,t1
    80008cd4:	02059893          	slli	a7,a1,0x20
    80008cd8:	40f60e3b          	subw	t3,a2,a5
    80008cdc:	011368b3          	or	a7,t1,a7
    80008ce0:	02859813          	slli	a6,a1,0x28
    80008ce4:	0108e833          	or	a6,a7,a6
    80008ce8:	03059693          	slli	a3,a1,0x30
    80008cec:	003e589b          	srliw	a7,t3,0x3
    80008cf0:	00d866b3          	or	a3,a6,a3
    80008cf4:	03859713          	slli	a4,a1,0x38
    80008cf8:	00389813          	slli	a6,a7,0x3
    80008cfc:	00f507b3          	add	a5,a0,a5
    80008d00:	00e6e733          	or	a4,a3,a4
    80008d04:	000e089b          	sext.w	a7,t3
    80008d08:	00f806b3          	add	a3,a6,a5
    80008d0c:	00e7b023          	sd	a4,0(a5)
    80008d10:	00878793          	addi	a5,a5,8
    80008d14:	fed79ce3          	bne	a5,a3,80008d0c <__memset+0xd4>
    80008d18:	ff8e7793          	andi	a5,t3,-8
    80008d1c:	0007871b          	sext.w	a4,a5
    80008d20:	01d787bb          	addw	a5,a5,t4
    80008d24:	0ce88e63          	beq	a7,a4,80008e00 <__memset+0x1c8>
    80008d28:	00f50733          	add	a4,a0,a5
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0017871b          	addiw	a4,a5,1
    80008d34:	0cc77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0027871b          	addiw	a4,a5,2
    80008d44:	0ac77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0037871b          	addiw	a4,a5,3
    80008d54:	0ac77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0047871b          	addiw	a4,a5,4
    80008d64:	08c77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0057871b          	addiw	a4,a5,5
    80008d74:	08c77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0067871b          	addiw	a4,a5,6
    80008d84:	06c77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	0077871b          	addiw	a4,a5,7
    80008d94:	06c77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	0087871b          	addiw	a4,a5,8
    80008da4:	04c77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0097871b          	addiw	a4,a5,9
    80008db4:	04c77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	00a7871b          	addiw	a4,a5,10
    80008dc4:	02c77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	00b7871b          	addiw	a4,a5,11
    80008dd4:	02c77663          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	00c7871b          	addiw	a4,a5,12
    80008de4:	00c77e63          	bgeu	a4,a2,80008e00 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	00d7879b          	addiw	a5,a5,13
    80008df4:	00c7f663          	bgeu	a5,a2,80008e00 <__memset+0x1c8>
    80008df8:	00f507b3          	add	a5,a0,a5
    80008dfc:	00b78023          	sb	a1,0(a5)
    80008e00:	00813403          	ld	s0,8(sp)
    80008e04:	01010113          	addi	sp,sp,16
    80008e08:	00008067          	ret
    80008e0c:	00b00693          	li	a3,11
    80008e10:	e55ff06f          	j	80008c64 <__memset+0x2c>
    80008e14:	00300e93          	li	t4,3
    80008e18:	ea5ff06f          	j	80008cbc <__memset+0x84>
    80008e1c:	00100e93          	li	t4,1
    80008e20:	e9dff06f          	j	80008cbc <__memset+0x84>
    80008e24:	00000e93          	li	t4,0
    80008e28:	e95ff06f          	j	80008cbc <__memset+0x84>
    80008e2c:	00000793          	li	a5,0
    80008e30:	ef9ff06f          	j	80008d28 <__memset+0xf0>
    80008e34:	00200e93          	li	t4,2
    80008e38:	e85ff06f          	j	80008cbc <__memset+0x84>
    80008e3c:	00400e93          	li	t4,4
    80008e40:	e7dff06f          	j	80008cbc <__memset+0x84>
    80008e44:	00500e93          	li	t4,5
    80008e48:	e75ff06f          	j	80008cbc <__memset+0x84>
    80008e4c:	00600e93          	li	t4,6
    80008e50:	e6dff06f          	j	80008cbc <__memset+0x84>

0000000080008e54 <__memmove>:
    80008e54:	ff010113          	addi	sp,sp,-16
    80008e58:	00813423          	sd	s0,8(sp)
    80008e5c:	01010413          	addi	s0,sp,16
    80008e60:	0e060863          	beqz	a2,80008f50 <__memmove+0xfc>
    80008e64:	fff6069b          	addiw	a3,a2,-1
    80008e68:	0006881b          	sext.w	a6,a3
    80008e6c:	0ea5e863          	bltu	a1,a0,80008f5c <__memmove+0x108>
    80008e70:	00758713          	addi	a4,a1,7
    80008e74:	00a5e7b3          	or	a5,a1,a0
    80008e78:	40a70733          	sub	a4,a4,a0
    80008e7c:	0077f793          	andi	a5,a5,7
    80008e80:	00f73713          	sltiu	a4,a4,15
    80008e84:	00174713          	xori	a4,a4,1
    80008e88:	0017b793          	seqz	a5,a5
    80008e8c:	00e7f7b3          	and	a5,a5,a4
    80008e90:	10078863          	beqz	a5,80008fa0 <__memmove+0x14c>
    80008e94:	00900793          	li	a5,9
    80008e98:	1107f463          	bgeu	a5,a6,80008fa0 <__memmove+0x14c>
    80008e9c:	0036581b          	srliw	a6,a2,0x3
    80008ea0:	fff8081b          	addiw	a6,a6,-1
    80008ea4:	02081813          	slli	a6,a6,0x20
    80008ea8:	01d85893          	srli	a7,a6,0x1d
    80008eac:	00858813          	addi	a6,a1,8
    80008eb0:	00058793          	mv	a5,a1
    80008eb4:	00050713          	mv	a4,a0
    80008eb8:	01088833          	add	a6,a7,a6
    80008ebc:	0007b883          	ld	a7,0(a5)
    80008ec0:	00878793          	addi	a5,a5,8
    80008ec4:	00870713          	addi	a4,a4,8
    80008ec8:	ff173c23          	sd	a7,-8(a4)
    80008ecc:	ff0798e3          	bne	a5,a6,80008ebc <__memmove+0x68>
    80008ed0:	ff867713          	andi	a4,a2,-8
    80008ed4:	02071793          	slli	a5,a4,0x20
    80008ed8:	0207d793          	srli	a5,a5,0x20
    80008edc:	00f585b3          	add	a1,a1,a5
    80008ee0:	40e686bb          	subw	a3,a3,a4
    80008ee4:	00f507b3          	add	a5,a0,a5
    80008ee8:	06e60463          	beq	a2,a4,80008f50 <__memmove+0xfc>
    80008eec:	0005c703          	lbu	a4,0(a1)
    80008ef0:	00e78023          	sb	a4,0(a5)
    80008ef4:	04068e63          	beqz	a3,80008f50 <__memmove+0xfc>
    80008ef8:	0015c603          	lbu	a2,1(a1)
    80008efc:	00100713          	li	a4,1
    80008f00:	00c780a3          	sb	a2,1(a5)
    80008f04:	04e68663          	beq	a3,a4,80008f50 <__memmove+0xfc>
    80008f08:	0025c603          	lbu	a2,2(a1)
    80008f0c:	00200713          	li	a4,2
    80008f10:	00c78123          	sb	a2,2(a5)
    80008f14:	02e68e63          	beq	a3,a4,80008f50 <__memmove+0xfc>
    80008f18:	0035c603          	lbu	a2,3(a1)
    80008f1c:	00300713          	li	a4,3
    80008f20:	00c781a3          	sb	a2,3(a5)
    80008f24:	02e68663          	beq	a3,a4,80008f50 <__memmove+0xfc>
    80008f28:	0045c603          	lbu	a2,4(a1)
    80008f2c:	00400713          	li	a4,4
    80008f30:	00c78223          	sb	a2,4(a5)
    80008f34:	00e68e63          	beq	a3,a4,80008f50 <__memmove+0xfc>
    80008f38:	0055c603          	lbu	a2,5(a1)
    80008f3c:	00500713          	li	a4,5
    80008f40:	00c782a3          	sb	a2,5(a5)
    80008f44:	00e68663          	beq	a3,a4,80008f50 <__memmove+0xfc>
    80008f48:	0065c703          	lbu	a4,6(a1)
    80008f4c:	00e78323          	sb	a4,6(a5)
    80008f50:	00813403          	ld	s0,8(sp)
    80008f54:	01010113          	addi	sp,sp,16
    80008f58:	00008067          	ret
    80008f5c:	02061713          	slli	a4,a2,0x20
    80008f60:	02075713          	srli	a4,a4,0x20
    80008f64:	00e587b3          	add	a5,a1,a4
    80008f68:	f0f574e3          	bgeu	a0,a5,80008e70 <__memmove+0x1c>
    80008f6c:	02069613          	slli	a2,a3,0x20
    80008f70:	02065613          	srli	a2,a2,0x20
    80008f74:	fff64613          	not	a2,a2
    80008f78:	00e50733          	add	a4,a0,a4
    80008f7c:	00c78633          	add	a2,a5,a2
    80008f80:	fff7c683          	lbu	a3,-1(a5)
    80008f84:	fff78793          	addi	a5,a5,-1
    80008f88:	fff70713          	addi	a4,a4,-1
    80008f8c:	00d70023          	sb	a3,0(a4)
    80008f90:	fec798e3          	bne	a5,a2,80008f80 <__memmove+0x12c>
    80008f94:	00813403          	ld	s0,8(sp)
    80008f98:	01010113          	addi	sp,sp,16
    80008f9c:	00008067          	ret
    80008fa0:	02069713          	slli	a4,a3,0x20
    80008fa4:	02075713          	srli	a4,a4,0x20
    80008fa8:	00170713          	addi	a4,a4,1
    80008fac:	00e50733          	add	a4,a0,a4
    80008fb0:	00050793          	mv	a5,a0
    80008fb4:	0005c683          	lbu	a3,0(a1)
    80008fb8:	00178793          	addi	a5,a5,1
    80008fbc:	00158593          	addi	a1,a1,1
    80008fc0:	fed78fa3          	sb	a3,-1(a5)
    80008fc4:	fee798e3          	bne	a5,a4,80008fb4 <__memmove+0x160>
    80008fc8:	f89ff06f          	j	80008f50 <__memmove+0xfc>

0000000080008fcc <__putc>:
    80008fcc:	fe010113          	addi	sp,sp,-32
    80008fd0:	00813823          	sd	s0,16(sp)
    80008fd4:	00113c23          	sd	ra,24(sp)
    80008fd8:	02010413          	addi	s0,sp,32
    80008fdc:	00050793          	mv	a5,a0
    80008fe0:	fef40593          	addi	a1,s0,-17
    80008fe4:	00100613          	li	a2,1
    80008fe8:	00000513          	li	a0,0
    80008fec:	fef407a3          	sb	a5,-17(s0)
    80008ff0:	fffff097          	auipc	ra,0xfffff
    80008ff4:	b3c080e7          	jalr	-1220(ra) # 80007b2c <console_write>
    80008ff8:	01813083          	ld	ra,24(sp)
    80008ffc:	01013403          	ld	s0,16(sp)
    80009000:	02010113          	addi	sp,sp,32
    80009004:	00008067          	ret

0000000080009008 <__getc>:
    80009008:	fe010113          	addi	sp,sp,-32
    8000900c:	00813823          	sd	s0,16(sp)
    80009010:	00113c23          	sd	ra,24(sp)
    80009014:	02010413          	addi	s0,sp,32
    80009018:	fe840593          	addi	a1,s0,-24
    8000901c:	00100613          	li	a2,1
    80009020:	00000513          	li	a0,0
    80009024:	fffff097          	auipc	ra,0xfffff
    80009028:	ae8080e7          	jalr	-1304(ra) # 80007b0c <console_read>
    8000902c:	fe844503          	lbu	a0,-24(s0)
    80009030:	01813083          	ld	ra,24(sp)
    80009034:	01013403          	ld	s0,16(sp)
    80009038:	02010113          	addi	sp,sp,32
    8000903c:	00008067          	ret

0000000080009040 <console_handler>:
    80009040:	fe010113          	addi	sp,sp,-32
    80009044:	00813823          	sd	s0,16(sp)
    80009048:	00113c23          	sd	ra,24(sp)
    8000904c:	00913423          	sd	s1,8(sp)
    80009050:	02010413          	addi	s0,sp,32
    80009054:	14202773          	csrr	a4,scause
    80009058:	100027f3          	csrr	a5,sstatus
    8000905c:	0027f793          	andi	a5,a5,2
    80009060:	06079e63          	bnez	a5,800090dc <console_handler+0x9c>
    80009064:	00074c63          	bltz	a4,8000907c <console_handler+0x3c>
    80009068:	01813083          	ld	ra,24(sp)
    8000906c:	01013403          	ld	s0,16(sp)
    80009070:	00813483          	ld	s1,8(sp)
    80009074:	02010113          	addi	sp,sp,32
    80009078:	00008067          	ret
    8000907c:	0ff77713          	andi	a4,a4,255
    80009080:	00900793          	li	a5,9
    80009084:	fef712e3          	bne	a4,a5,80009068 <console_handler+0x28>
    80009088:	ffffe097          	auipc	ra,0xffffe
    8000908c:	6dc080e7          	jalr	1756(ra) # 80007764 <plic_claim>
    80009090:	00a00793          	li	a5,10
    80009094:	00050493          	mv	s1,a0
    80009098:	02f50c63          	beq	a0,a5,800090d0 <console_handler+0x90>
    8000909c:	fc0506e3          	beqz	a0,80009068 <console_handler+0x28>
    800090a0:	00050593          	mv	a1,a0
    800090a4:	00001517          	auipc	a0,0x1
    800090a8:	5ec50513          	addi	a0,a0,1516 # 8000a690 <CONSOLE_STATUS+0x680>
    800090ac:	fffff097          	auipc	ra,0xfffff
    800090b0:	afc080e7          	jalr	-1284(ra) # 80007ba8 <__printf>
    800090b4:	01013403          	ld	s0,16(sp)
    800090b8:	01813083          	ld	ra,24(sp)
    800090bc:	00048513          	mv	a0,s1
    800090c0:	00813483          	ld	s1,8(sp)
    800090c4:	02010113          	addi	sp,sp,32
    800090c8:	ffffe317          	auipc	t1,0xffffe
    800090cc:	6d430067          	jr	1748(t1) # 8000779c <plic_complete>
    800090d0:	fffff097          	auipc	ra,0xfffff
    800090d4:	3e0080e7          	jalr	992(ra) # 800084b0 <uartintr>
    800090d8:	fddff06f          	j	800090b4 <console_handler+0x74>
    800090dc:	00001517          	auipc	a0,0x1
    800090e0:	6b450513          	addi	a0,a0,1716 # 8000a790 <digits+0x78>
    800090e4:	fffff097          	auipc	ra,0xfffff
    800090e8:	a68080e7          	jalr	-1432(ra) # 80007b4c <panic>
	...
